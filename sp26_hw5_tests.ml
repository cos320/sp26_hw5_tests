(** See the project instructions for more details about test case requirements.

    Add your test case to this list.

    Each test case is a commented triple of the form:

    (* TEAM: Steve Zdancewic and Awesome T. Assistant
       Description: <description>
    *)
    (<filename>,<stdin>,<expected_stdout>)

    - include the names of your team members in a comment above the test
      along with a brief <description> of what Oat features are exercised

    - <filename> should name an *.oat file that appears in this directory
      It should should declare the standard oat entry point:

      int program(int argc, string[] argv)

    - <stdin> should be the string passed as the command-line arguments
      to the executable generaged by compiling <filename> with
      the following sequence of commands:

      ./oatc <filename> bin/runtime.c
      ./a.out <stdin>

    - <expected_stdout> is the string representing the expected result
      obtained by running the compiled <filename> on <stdin> and then
      concatenating the status code (0-255) returned by the call.

    You can use the command line to compile and run such tests like this:

    > ./oatc sp26_hw5_tests/regalloctest3.oat bin/runtime.c
    > ./a.out
    > echo $?
    0

    These test cases will be run twice:
     - once for "correctness" using the pass_all_executed_oat_file test harness
     - once for "quality" using the quality_oat test harness
     See test/gradedtest.ml for more details and examples
*)
let student_tests : (string * string * string) list = [
    ("regalloctest3.oat", "", "0");

    (* Team: Ben Aepli and Vedant Badoni
       Description: structs, arrays, constant propagation,
       bitwise operations, loops.
    *)
    ("cuckoo.oat", "", "Checksum: 9223372036854775784\n0");

    (* TEAM: yanda-hw5 (Daniel Yang)
       Description: Kalman filter covariance prediction step
       global arrays, arithmetic, bitwise operation, loops
    *)
    ("test_yanda.oat", "", "0");

    (* TEAM: Isaac Badipe and Ayush Jain
      Description: Bloom Filter
      arithmetic, bitwise operation, loops, structs, arrays
    *)
    ("bloom_filter.oat", "", "Success\n0");
    (* TEAM: Colin Baird, Jishnu Roychoudhury
       arrays, function calls, constant propagation, bitwise operations, 
       loops, conditionals
    *)
    ("colin-jishnu.oat", "", "Checksum: -580962\n0");

    (* TEAM: hitagu-hw5 (Hita Gupta)
       Description: O(n^2) longest increasing subsequence via DP.
       arrays, nested loops, arithmetic.
    *)
    ("lis_length.oat", "", "0");
]
