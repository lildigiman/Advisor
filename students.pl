/*
 * students.pl - The "database" representing student information
 *
 * Author:	Curtis Moran moran_curtis@roberts.edu
 * Date:	12/02/12
 * Version:	0.1.0
 */

/*
 * Classes a Student has Taken
 * (concept stolen from Randall, koutnik_george@roberts.edu)
 * creditFor(student, class, grade).
 * Note: the third atom, grade, currently is inactive
 */
creditFor(curtis, csc140, 'A').
creditFor(curtis, csc145, 'A').
creditFor(curtis, csc180, 'A').
creditFor(curtis, csc190, 'A').
creditFor(curtis, csc198, 'A').
creditFor(curtis, csc240, 'A').
creditFor(curtis, csc245, 'A').
creditFor(curtis, csc250, 'A').
creditFor(curtis, csc311, 'A').

creditFor(hubert, csc140, 'A').
creditFor(hubert, csc180, 'A').
creditFor(hubert, csc190, 'A').

creditFor(don, csc140, 'A').
creditFor(don, csc145, 'A').
creditFor(don, csc180, 'A').
creditFor(don, csc190, 'A').
creditFor(don, csc198, 'A').
creditFor(don, csc240, 'A').
creditFor(don, csc245, 'A').
creditFor(don, csc250, 'A').
creditFor(don, csc311, 'A').
creditFor(don, csc312, 'A').
creditFor(don, csc320, 'A').
creditFor(don, csc345, 'A').
creditFor(don, csc398, 'A').
creditFor(don, csc402, 'A').
creditFor(don, csc403, 'A').

/*
 * Classes a student is currently enrolled in and taking
 * taking(student, class).
 */
taking(curtis, csc312).

taking(bob, csc140, 'A').

/*
 * How many credits a studet has available for the next semester
 * openCredit(Student, OpenCredit).
 */
:- dynamic(openCredit/2).
openCredit(curtis, 6).
openCredit(bob, 3).
openCredit(don, 5).
