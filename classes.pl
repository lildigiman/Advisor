/*
 * classes.pl
 *
 * Author:	Curtis Moran moran_curtis@roberts.edu
 * Date:	12/02/12
 * Version:	0.1.0
 */

/*
 * CLASSES FACTS
 * class(number, name, credits)
 */
class(csc101, 'Introduction to Computers & Applications', 2).
class(csc130, 'Intro to MIS', 3).
class(csc140, 'Intro to CS', 3).
class(csc145, 'Intro to OOP', 3).
class(csc180, 'C/C++ Programming', 1).
class(csc198, 'Intro to Computer Professions', 1).
class(csc201, 'HCI: Issues and Methods', 3).
class(csc207, 'Applied Technologies', 2).
class(csc215, 'Web Design I', 3).
class(csc245, 'Data Structures', 3).
class(csc250, 'Computer Organization and Architecture', 3).
class(csc306, 'Information Security', 3).
class(csc310, 'Database Management Systems', 3).
class(csc311, 'Sequential & Parallel Algorithms', 3).
class(csc312, 'Artificial Intelligence', 3).
class(csc320, 'Special Topics: Computer Science', 3).
class(csc345, 'Software Engineering', 3). %Alt Years
class(csc398, 'Intro to Research in Computer Sciences', 1). %Alt Years
class(csc402, 'Operating Systems', 3).
class(csc403, 'Programming Languages', 3).
class(csc404, 'Computer Networks & Distributed Systems', 3).
class(csc406, 'Computer Forensics', 3).
class(csc411, 'Computer Graphics', 3).
class(csc449, 'Internship Preparation', 1).
class(csc450, 'Computer Science Internship', 3).
class(csc495, 'Independent Study', 3).
class(csc498, 'Senior Project', 3).

/*
 * PREREQUISITES
 * prereq(prereq, for this class)
 */
prereq(csc101, []).
prereq(csc130, []).
prereq(csc140, []).
prereq(csc145, [csc140]).
prereq(csc180, [csc140]).
prereq(csc198, [csc140]).
prereq(csc201, [csc130, csc140]).
prereq(csc201, [csc145]).
prereq(csc207, [csc101]).
prereq(csc245, [csc145]).
prereq(csc250, [csc145]).
prereq(csc306, [csc140]).
prereq(csc310, [csc245]).
prereq(csc311, [csc245]).
prereq(csc312, [csc245]).
prereq(csc345, [csc245]).
prereq(csc398, [csc245, csc250]).
prereq(csc402, [csc250]).
prereq(csc403, [csc245]).
prereq(csc404, [csc145, csc250]).
prereq(csc406, [csc101, csc140, csc250]).
prereq(csc411, [csc245, csc250]).
prereq(csc449, []). % FIXME: I haven't got prereqs for csc449-498
prereq(csc450, []).
prereq(csc495, []).
prereq(csc498, []).

/*
 * REQUIRED CS CLASSES
 */
required(csc140).
required(csc145).
required(csc198).
required(csc245).
required(csc250).
required(csc311).
required(csc345).
required(csc398).

/*
 * ELECTIVE CS CLASSES
 */
elective(csc306).
elective(csc310).
elective(csc312).
elective(csc402).
elective(csc403).
elective(csc404).
elective(csc406).
elective(csc411).

/*
 * When the class is offered
 * TODO: make those that are offered multiple years and semesters applicable
 */
offered(csc101, fall, odd).
offered(csc130, spring, odd). %
offered(csc140, fall, even).
offered(csc145, fall, even).
offered(csc180, spring, even).
offered(csc198, fall, even).
offered(csc201, fall, even).
offered(csc207, spring, even).
offered(csc215, fall, odd).
offered(csc245, spring, odd). %
offered(csc250, fall, odd).
offered(csc306, spring, even).
offered(csc310, fall, odd).
offered(csc311, fall, even).
offered(csc312, spring, even).
offered(csc320, fall, even).
offered(csc345, fall, even).
offered(csc398, fall, fall).
offered(csc402, fall, even).
offered(csc403, fall, even).
offered(csc404, spring, odd). %
offered(csc406, fall, even).
offered(csc411, spring, odd). %
offered(csc449, fall, even).
offered(csc450, spring, odd). %
offered(csc495, fall, even).
offered(csc498, fall, fall). offered(csc498, fall, odd).
/* One possible way to fix multiple offers ^^ */

