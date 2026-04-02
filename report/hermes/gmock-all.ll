begin_hunk_0
@_ZZN7testing8internal18GetFailureReporterEvE16failure_reporter = internal global ptr null, align 8
@_ZGVZN7testing8internal18GetFailureReporterEvE16failure_reporter = internal global i64 0, align 8
@_ZN7testing19FLAGS_gmock_verboseB5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN7testing8internalL11g_log_mutexE = internal global %"class.testing::internal::MutexBase" zeroinitializer, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"\0AGMOCK WARNING:\00", align 1
end_hunk_0
begin_hunk_1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %1 = load i32, ptr %i.b, align 1
  %2 = icmp ne i32 %1, 1868983913
  %3 = zext i1 %2 to i32
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
end_hunk_1
begin_hunk_2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2: ; preds = %bb.a
  %i.e = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7 ; 2 uses
  %4 = load i32, ptr %i.e, align 1
  %5 = xor i32 %4, 1869771365
  %6 = getelementptr i8, ptr %i.e, i64 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %8, 114
  %10 = or i32 %5, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %bcmp.i1.fr = freeze i32 %12
  %i.f = icmp ne i32 %bcmp.i1.fr, 0
  %i.g = icmp eq i32 %0, 1
  %spec.select = and i1 %i.f, %i.g
end_hunk_2
begin_hunk_3

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %4 = load i32, ptr %i.b, align 1
  %5 = icmp ne i32 %4, 1868983913
  %6 = zext i1 %5 to i32
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.a
end_hunk_3
begin_hunk_4
  br i1 %i.d, label %.thread, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7 ; 2 uses
  %7 = load i32, ptr %i.e, align 1
  %8 = xor i32 %7, 1869771365
  %9 = getelementptr i8, ptr %i.e, i64 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, 114
  %13 = or i32 %8, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %bcmp.i1.fr.i = freeze i32 %15
  %i.f = icmp ne i32 %bcmp.i1.fr.i, 0
  %i.g = icmp eq i32 %0, 1
  %spec.select.i = and i1 %i.g, %i.f
end_hunk_4
begin_hunk_5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %3 = load i32, ptr %i.c, align 1
  %4 = icmp ne i32 %3, 1868983913
  %5 = zext i1 %4 to i32
  %bcmp.i.fr = freeze i32 %5
  %i.d = icmp eq i32 %bcmp.i.fr, 0
  %spec.select = select i1 %i.d, i32 3, i32 -1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11
end_hunk_5
begin_hunk_6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.c
  %i.k = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %17 = load i32, ptr %i.k, align 1
  %18 = icmp ne i32 %17, 1868983913
  %19 = zext i1 %18 to i32
  %i.l = icmp eq i32 %19, 0
  br i1 %i.l, label %.critedge, label %_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit.thread323

bb.d:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7
  br i1 %cond, label %_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit, label %.critedge

_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit: ; preds = %bb.d
  %i.n = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7 ; 2 uses
  %20 = load i32, ptr %i.n, align 1
  %21 = xor i32 %20, 1869771365
  %22 = getelementptr i8, ptr %i.n, i64 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, 114
  %26 = or i32 %21, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %bcmp.i1.fr.i139 = freeze i32 %28
  %.not334 = icmp eq i32 %bcmp.i1.fr.i139, 0
  br i1 %.not334, label %_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit.thread323, label %.critedge

end_hunk_7
begin_hunk_8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i174: ; preds = %bb.aa
  %i.ds = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %29 = load i32, ptr %i.ds, align 1
  %30 = icmp ne i32 %29, 1868983913
  %31 = zext i1 %30 to i32
  %i.dt = icmp eq i32 %31, 0
  br i1 %i.dt, label %.critedge127, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5.i176

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5.i176: ; preds = %bb.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i174
end_hunk_8
