begin_hunk_0
@.str.231 = private unnamed_addr constant [54 x i8] c"auxiliary test code (environments or event listeners)\00", align 1
@_ZTVN7testing8UnitTestE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7testing8UnitTestE, ptr @_ZN7testing8UnitTestD1Ev, ptr @_ZN7testing8UnitTestD0Ev] }, align 8
@_ZTVN7testing8internal12UnitTestImplE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7testing8internal12UnitTestImplE, ptr @_ZN7testing8internal12UnitTestImplD1Ev, ptr @_ZN7testing8internal12UnitTestImplD0Ev] }, align 8
@.str.232 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.233 = private unnamed_addr constant [51 x i8] c"WARNING: unrecognized output format \22%s\22 ignored.\0A\00", align 1
@.str.234 = private unnamed_addr constant [54 x i8] c"WARNING: unrecognized streaming target \22%s\22 ignored.\0A\00", align 1
@_ZN7testingL20kDeathTestCaseFilterE = internal constant [24 x i8] c"*DeathTest:*DeathTest/*\00", align 16
end_hunk_0
begin_hunk_1
@_ZN7testing8internalL14kListTestsFlagE = internal constant [11 x i8] c"list_tests\00", align 1
@.str.252 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.254 = private constant [17 x i8] c"death_test_style\00", align 16
@.str.256 = private constant [20 x i8] c"death_test_use_fork\00", align 16
@.str.258 = private unnamed_addr constant [11 x i8] c"threadsafe\00", align 1
@_ZN7testing8internalL26g_in_fast_death_test_childE = internal unnamed_addr global i1 false, align 1
@_ZTVN7testing8internal9DeathTestE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN7testing8internal9DeathTestE, ptr @_ZN7testing8internal9DeathTestD2Ev, ptr @_ZN7testing8internal9DeathTestD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.259 = private unnamed_addr constant [62 x i8] c"Cannot run a death test outside of a TEST or TEST_F construct\00", align 1
end_hunk_1
begin_hunk_2
@.str.288 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.289 = private unnamed_addr constant [19 x i8] c"Death test count (\00", align 1
@.str.290 = private unnamed_addr constant [38 x i8] c") somehow exceeded expected maximum (\00", align 1
@.str.291 = private constant [5 x i8] c"fast\00", align 1
@.str.292 = private unnamed_addr constant [27 x i8] c"Unknown death test style \22\00", align 1
@.str.293 = private unnamed_addr constant [14 x i8] c"\22 encountered\00", align 1
@.str.294 = private unnamed_addr constant [43 x i8] c"Bad --gtest_internal_run_death_test flag: \00", align 1
end_hunk_2
begin_hunk_3
@.str.434 = private unnamed_addr constant [47 x i8] c"Condition begin <= end && end <= size failed. \00", align 1
@.str.435 = private unnamed_addr constant [30 x i8] c"Invalid shuffle range finish \00", align 1
@.str.436 = private unnamed_addr constant [21 x i8] c": must be in range [\00", align 1
@.str.437 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.438 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.439 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.440 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@_ZN7testing8internalL24kColorEncodedHelpMessageE = internal constant [2464 x i8] c"This program contains tests written using Google Test. You can use the\0Afollowing command line flags to control its behavior:\0A\0ATest Selection:\0A  @G--gtest_list_tests@D\0A      List the names of all tests instead of running them. The name of\0A      TEST(Foo, Bar) is \22Foo.Bar\22.\0A  @G--gtest_filter=@YPOSTIVE_PATTERNS[@G-@YNEGATIVE_PATTERNS]@D\0A      Run only the tests whose name matches one of the positive patterns but\0A      none of the negative patterns. '?' matches any single character; '*'\0A      matches any substring; ':' separates two patterns.\0A  @G--gtest_also_run_disabled_tests@D\0A      Run all disabled tests too.\0A\0ATest Execution:\0A  @G--gtest_repeat=@Y[COUNT]@D\0A      Run the tests repeatedly; use a negative count to repeat forever.\0A  @G--gtest_shuffle@D\0A      Randomize tests' orders on every iteration.\0A  @G--gtest_random_seed=@Y[NUMBER]@D\0A      Random number seed to use for shuffling test orders (between 1 and\0A      99999, or 0 to use a seed based on the current time).\0A\0ATest Output:\0A  @G--gtest_color=@Y(@Gyes@Y|@Gno@Y|@Gauto@Y)@D\0A      Enable/disable colored output. The default is @Gauto@D.\0A  -@G-gtest_print_time=0@D\0A      Don't print the elapsed time of each test.\0A  @G--gtest_output=xml@Y[@G:@YDIRECTORY_PATH@G/@Y|@G:@YFILE_PATH]@D\0A      Generate an XML report in the given directory or with the given file\0A      name. @YFILE_PATH@D defaults to @Gtest_details.xml@D.\0A  @G--gtest_stream_result_to=@YHOST@G:@YPORT@D\0A      Stream test results to the given server.\0A\0AAssertion Behavior:\0A  @G--gtest_death_test_style=@Y(@Gfast@Y|@Gthreadsafe@Y)@D\0A      Set the default death test style.\0A  @G--gtest_break_on_failure@D\0A      Turn assertion failures into debugger break-points.\0A  @G--gtest_throw_on_failure@D\0A      Turn assertion failures into C++ exceptions.\0A  @G--gtest_catch_exceptions=0@D\0A      Do not report exceptions as test failures. Instead, allow them\0A      to crash the program or throw a pop-up (on Windows).\0A\0AExcept for @G--gtest_list_tests@D, you can alternatively set the corresponding\0Aenvironment variable of a flag (all letters in upper-case). For example, to\0Adisable colored text output, you can either specify @G--gtest_color=no@D or set\0Athe @GGTEST_COLOR@D environment variable to @Gno@D.\0A\0AFor more information, please read the Google Test documentation at\0A@Ghttps://github.com/google/googletest/@D. If you find a bug in Google Test\0A(not one in your own code or tests), please report it to\0A@G<googletestframework@@googlegroups.com>@D.\0A\00", align 16
@.str.442 = private unnamed_addr constant [16 x i8] c"gtest_internal_\00", align 1
@.str.443 = private unnamed_addr constant [7 x i8] c"gtest-\00", align 1
end_hunk_3
begin_hunk_4
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.c, ptr noundef nonnull dereferenceable(10) @.str.216, i64 10)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread15

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_4
begin_hunk_5
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.c, ptr noundef nonnull dereferenceable(3) @.str.232, i64 3)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_5
begin_hunk_6
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = load ptr, ptr %2, align 8, !tbaa !7
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.u, ptr noundef nonnull dereferenceable(6) @.str.437, i64 6)
  %i.v = icmp eq i32 %bcmp.i, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !7      ; 3 uses
  %bcmp.i24 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.w, ptr noundef nonnull dereferenceable(2) @.str.438, i64 2)
  %i.x = icmp eq i32 %bcmp.i24, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %bcmp.i26 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.w, ptr noundef nonnull dereferenceable(2) @.str.439, i64 2)
  %i.y = icmp eq i32 %bcmp.i26, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
  %bcmp.i28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.w, ptr noundef nonnull dereferenceable(2) @.str.440, i64 2)
  %i.z = icmp eq i32 %bcmp.i28, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35
end_hunk_6
begin_hunk_7
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load ptr, ptr %3, align 8, !tbaa !7
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.ag, ptr noundef nonnull dereferenceable(6) @.str.437, i64 6)
  %i.ah = icmp eq i32 %bcmp.i, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %bcmp.i24 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.ai, ptr noundef nonnull dereferenceable(2) @.str.438, i64 2)
  %i.aj = icmp eq i32 %bcmp.i24, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %bcmp.i26 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.ai, ptr noundef nonnull dereferenceable(2) @.str.439, i64 2)
  %i.ak = icmp eq i32 %bcmp.i26, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
  %bcmp.i28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.ai, ptr noundef nonnull dereferenceable(2) @.str.440, i64 2)
  %i.al = icmp eq i32 %bcmp.i28, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35
end_hunk_7
begin_hunk_8
  br i1 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !7
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.c, ptr noundef nonnull dereferenceable(10) @.str.258, i64 10)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_8
begin_hunk_9

bb.ap:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.hf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 8), align 8, !tbaa !16 ; 4 uses
  %.pre = load ptr, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !7 ; 3 uses
  switch i64 %i.hf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread131 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99: ; preds = %bb.ap
  %bcmp.i98 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %.pre, ptr noundef nonnull dereferenceable(10) @.str.258, i64 10)
  %i.hg = icmp eq i32 %bcmp.i98, 0
  br i1 %i.hg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread131

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99
end_hunk_9
begin_hunk_10
  br label %common.resume

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102: ; preds = %bb.ap
  %bcmp.i101 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %.pre, ptr noundef nonnull dereferenceable(4) @.str.291, i64 4)
  %i.hq = icmp eq i32 %bcmp.i101, 0
  br i1 %i.hq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread131

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102
end_hunk_10
begin_hunk_11
  %i.ci = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN7testing8internal7g_argvsB5cxx11E, ptr nonnull @__dso_handle) #56 ; 0 uses
  store ptr @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E, ptr @_ZN7testing8internal23kTestTypeIdInGoogleTestE, align 8, !tbaa !1863
  %i.cj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN7testing8internal23kTestTypeIdInGoogleTestE) ; 0 uses
  call void @_ZN7testing8internal18StringFromGTestEnvB5cxx11EPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.291)
  %i.ck = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, ptr nonnull @__dso_handle) #56 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #56
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.256)
end_hunk_11
