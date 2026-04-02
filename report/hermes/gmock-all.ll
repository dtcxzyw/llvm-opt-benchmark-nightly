begin_hunk_0
@_ZZN7testing8internal18GetFailureReporterEvE16failure_reporter = internal global ptr null, align 8
@_ZGVZN7testing8internal18GetFailureReporterEvE16failure_reporter = internal global i64 0, align 8
@_ZN7testing19FLAGS_gmock_verboseB5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN7testing8internalL14kInfoVerbosityE = internal constant [5 x i8] c"info\00", align 1
@_ZN7testing8internalL15kErrorVerbosityE = internal constant [6 x i8] c"error\00", align 1
@_ZN7testing8internalL11g_log_mutexE = internal global %"class.testing::internal::MutexBase" zeroinitializer, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"\0AGMOCK WARNING:\00", align 1
end_hunk_0
begin_hunk_1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.b, ptr noundef nonnull dereferenceable(4) @_ZN7testing8internalL14kInfoVerbosityE, i64 4)
  %i.c = icmp eq i32 %bcmp.i, 0
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
end_hunk_1
begin_hunk_2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2: ; preds = %bb.a
  %i.e = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %bcmp.i1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.e, ptr noundef nonnull dereferenceable(5) @_ZN7testing8internalL15kErrorVerbosityE, i64 5)
  %bcmp.i1.fr = freeze i32 %bcmp.i1
  %i.f = icmp ne i32 %bcmp.i1.fr, 0
  %i.g = icmp eq i32 %0, 1
  %spec.select = and i1 %i.f, %i.g
end_hunk_2
begin_hunk_3

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.b, ptr noundef nonnull dereferenceable(4) @_ZN7testing8internalL14kInfoVerbosityE, i64 4)
  %i.c = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.a
end_hunk_3
begin_hunk_4
  br i1 %i.d, label %.thread, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %bcmp.i1.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.e, ptr noundef nonnull dereferenceable(5) @_ZN7testing8internalL15kErrorVerbosityE, i64 5)
  %bcmp.i1.fr.i = freeze i32 %bcmp.i1.i
  %i.f = icmp ne i32 %bcmp.i1.fr.i, 0
  %i.g = icmp eq i32 %0, 1
  %spec.select.i = and i1 %i.g, %i.f
end_hunk_4
begin_hunk_5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.c, ptr noundef nonnull dereferenceable(4) @_ZN7testing8internalL14kInfoVerbosityE, i64 4)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.d = icmp eq i32 %bcmp.i.fr, 0
  %spec.select = select i1 %i.d, i32 3, i32 -1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11
end_hunk_5
begin_hunk_6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.c
  %i.k = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.k, ptr noundef nonnull dereferenceable(4) @_ZN7testing8internalL14kInfoVerbosityE, i64 4)
  %i.l = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.l, label %.critedge, label %_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit.thread323

bb.d:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7
  br i1 %cond, label %_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit, label %.critedge

_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit: ; preds = %bb.d
  %i.n = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %bcmp.i1.i138 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.n, ptr noundef nonnull dereferenceable(5) @_ZN7testing8internalL15kErrorVerbosityE, i64 5)
  %bcmp.i1.fr.i139 = freeze i32 %bcmp.i1.i138
  %.not334 = icmp eq i32 %bcmp.i1.fr.i139, 0
  br i1 %.not334, label %_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE.exit.thread323, label %.critedge

end_hunk_7
begin_hunk_8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i174: ; preds = %bb.aa
  %i.ds = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !7
  %bcmp.i.i175 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.ds, ptr noundef nonnull dereferenceable(4) @_ZN7testing8internalL14kInfoVerbosityE, i64 4)
  %i.dt = icmp eq i32 %bcmp.i.i175, 0
  br i1 %i.dt, label %.critedge127, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5.i176

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2.thread5.i176: ; preds = %bb.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i174
end_hunk_8
