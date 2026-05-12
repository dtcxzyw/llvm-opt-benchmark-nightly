inline.NumInlined: 231
inline.NumDeleted: 132
begin_hunk_0_@_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj:bb.a
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj:bb.a
  store ptr %.pr, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit17_crit_edge, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit17_crit_edge: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %_ZN5arrow6StatusD2Ev.exit17

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit23

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit17_crit_edge, %_ZN5arrow6StatusD2Ev.exit.thread
  %6 = phi i32 [ %.pre, %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit17_crit_edge ], [ %2, %_ZN5arrow6StatusD2Ev.exit.thread ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16
  %i.k = add i32 %i.j, %6
  store i32 %i.k, ptr %i.i, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l) #11
end_hunk_2
begin_hunk_3_@_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj:bb.a
bb.e:                                             ; preds = %.noexc18, %_ZN5arrow6StatusD2Ev.exit17
  %i.w = load i8, ptr %i.d, align 4, !tbaa !17, !range !21, !noundef !25
  %i.x = trunc nuw i8 %i.w to i1
  %.pre29.pre = load i32, ptr %i.a, align 4, !tbaa !3 ; 4 uses
  br i1 %i.x, label %.thread35, label %_ZZN5arrow4util17CountingSemaphore4Impl7AcquireEjENKUlvE_clEv.exit.i.i

_ZZN5arrow4util17CountingSemaphore4Impl7AcquireEjENKUlvE_clEv.exit.i.i: ; preds = %bb.e
  %i.y = load i32, ptr %1, align 8, !tbaa !7
  %.not.i.i = icmp ugt i32 %.pre29.pre, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZZN5arrow4util17CountingSemaphore4Impl7AcquireEjENKUlvE_clEv.exit.i.i
end_hunk_3
begin_hunk_4_@_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj:bb.a
bb.g:                                             ; preds = %.noexc18
  %i.ab = load i8, ptr %i.d, align 4, !tbaa !17, !range !21, !noundef !25
  %i.ac = trunc nuw i8 %i.ab to i1
  %.pre30 = load i32, ptr %i.a, align 4, !tbaa !3 ; 4 uses
  br i1 %i.ac, label %.thread35, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl7AcquireEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl7AcquireEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit: ; preds = %bb.g
  %i.ad = load i32, ptr %1, align 8, !tbaa !7
  %.not = icmp ugt i32 %.pre30, %i.ad
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !16
  %i.af = sub i32 %i.ae, %.pre30
  store i32 %i.af, ptr %i.i, align 8, !tbaa !16
  br i1 %.not, label %bb.h, label %.thread

end_hunk_4
begin_hunk_5_@_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj:bb.a

bb.m:                                             ; preds = %_ZZN5arrow4util17CountingSemaphore4Impl7AcquireEjENKUlvE_clEv.exit.i.i
  %i.at = load i32, ptr %i.i, align 8, !tbaa !16
  %i.au = sub i32 %i.at, %.pre29.pre
  store i32 %i.au, ptr %i.i, align 8, !tbaa !16
  br label %.thread

.thread35:                                        ; preds = %bb.e, %bb.g
  %.pre29.pre.lcssa.sink = phi i32 [ %.pre30, %bb.g ], [ %.pre29.pre, %bb.e ]
  %i.av = load i32, ptr %i.i, align 8, !tbaa !16
  %i.aw = sub i32 %i.av, %.pre29.pre.lcssa.sink
  store i32 %i.aw, ptr %i.i, align 8, !tbaa !16
  invoke void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.2)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.l

.thread:                                          ; preds = %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl7AcquireEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit, %bb.m
  %7 = phi i32 [ %.pre29.pre, %bb.m ], [ %.pre30, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl7AcquireEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit ]
  %i.ax = load i32, ptr %1, align 8, !tbaa !7
  %i.ay = sub i32 %i.ax, %7
  store i32 %i.ay, ptr %1, align 8, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !26, !alias.scope !45
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit
end_hunk_5
begin_hunk_6_@_ZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEj:bb.a
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEj:bb.a
  br i1 %i.u, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread.thread32, label %_ZZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjENKUlvE_clEv.exit.i.i

_ZZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjENKUlvE_clEv.exit.i.i: ; preds = %bb.e
  %6 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.v = load i32, ptr %i.p, align 8, !tbaa !16
  %.not.i.i = icmp ugt i32 %6, %i.v
  br i1 %.not.i.i, label %bb.f, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread

bb.f:                                             ; preds = %_ZZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjENKUlvE_clEv.exit.i.i
end_hunk_7
begin_hunk_8_@_ZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEj:bb.a
  br i1 %i.z, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread.thread32, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit: ; preds = %bb.g
  %7 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !16
  %.not = icmp ugt i32 %7, %i.aa
  br i1 %.not, label %bb.j, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread.thread32: ; preds = %bb.e, %bb.g
end_hunk_8
