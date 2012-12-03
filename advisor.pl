/*
 * advisor.pl
 *
 * Author:	Curtis Moran moran_curtis@roberts.edu
 * Date:	12/02/12
 * Version:	0.1.0
 */

/*
 * The main function to call to return the list of classes a student may enroll
 * in next semester
 */
suggestedClasses(Student) :-
	% reload the database every time we re-run the assessment	
	reloadDB,
	% Print everything out nice and pretty
	print('\nThe following classes fit into '),
	print(Student), 
	print('\'s credit hours for next semester:\n\n'),
	print('Class \t Credit \t Title\n'),
	findall(Class, getClasses(Student, Class), List).
	

/*
 * Returns a list of optimal classes for the Student to take this semester
 */
getClasses(Student, Class) :-
	% Grab the classes the student still needs
	needClass(Student, Class),
	% Figure out if it will be offered next semester
	nextSemester(Semester, YearOE),
	offered(Class, Semester, YearOE),
	% Make sure student has room credit-wise
	hasRoom(Student, Class),
	addToCredit(Student, Class),
	% Get the atom values to print them out
	class(Class, StrName, Credit),
	%FIXME: Should be a println function, eh?
	print(Class), print('\t'), print(Credit), print('\t\t'), print(StrName), print('\n').

/*
 * Find classes that the student needs to graduate
 */
needClass(Student, Class) :-
	% Get a class
	class(Class, _, _),
	% Make sure student has not taken it yet
	\+ hasClass(Student, Class),
	% Make sure student meets the prereqs
	meetsPrereqs(Student, Class).

	% TODO: Is either required or an elective

/*
 * See if the student has credit for a Class
 */
hasClass(Student, Class) :-
	(taking(Student, Class); creditFor(Student, Class, _)).

/*
 * See if the student meets the prerequisites for a class
 */
meetsPrereqs(Student, Class) :-
	prereq(Class, Prereqs),
	% For every Prereq inside Prereqs, make sure it is a class not taken yet
	\+ (member(Prereq, Prereqs), \+ hasClass(Student, Prereq)).

/*
 * Makes sure the student has room
 * TODO: Make it calculate an optimul number of credits based on GPA
 */
hasRoom(Student, Class) :-
	openCredit(Student, OpenCredit),
	class(Class, _, ClassCredit),
	OpenCredit >= ClassCredit.

/*
 * Decrease open credit hours as specified class credit for a student
 */
addToCredit(Student, Class) :-
	openCredit(Student, OpenCredit),
	class(Class, _, ClassCredit),
	(OpenCredit >= ClassCredit ->
		retract(openCredit(Student, OpenCredit)),
		AfterAdd is OpenCredit - ClassCredit,
		asserta(openCredit(Student, AfterAdd))).

/*
 * Reload the Database to remove all memory-only predicates
 */
reloadDB :-
	consult('students.pl'),
	consult('classes.pl'),
	consult('semester.pl').

