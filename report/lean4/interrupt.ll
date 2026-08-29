Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/interrupt?download=true
inline.NumInlined: 61
inline.NumDeleted: 41
begin_hunk_0_@_ZN4lean17get_max_heartbeatEv:bb.a
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL15g_max_heartbeatE)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4lean27set_max_heartbeat_thousandsEj(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = mul nuw nsw i64 %i.a, 1000
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL15g_max_heartbeatE)
  store i64 %i.b, ptr %i.c, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4lean15scope_heartbeatC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL11g_heartbeatE) ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.a, align 8, !tbaa !8
  store i64 %i.c, ptr %i.b, align 8, !tbaa !13
  store i64 %1, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4lean19scope_max_heartbeatC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL15g_max_heartbeatE) ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.a, align 8, !tbaa !8
  store i64 %i.c, ptr %i.b, align 8, !tbaa !13
  store i64 %1, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define hidden void @_ZN4lean25throw_heartbeat_exceptionEv() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19heartbeat_exceptionE, i64 16), ptr %i.a, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4lean19heartbeat_exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #18
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN4lean15check_heartbeatEv() local_unnamed_addr #9 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL11g_heartbeatE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL15g_max_heartbeatE)
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %.not = icmp ne i64 %i.e, 0
  %i.f = icmp ugt i64 %i.c, %i.e
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4lean25throw_heartbeat_exceptionEv()
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4lean15scope_cancel_tkC2EP11lean_object(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL11g_cancel_tkE) ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !25
  store ptr %i.c, ptr %i.b, align 8, !tbaa !26
  store ptr %1, ptr %i.a, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean17check_interruptedEv() local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL11g_cancel_tkE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.e = icmp ugt ptr %.val.val, inttoptr (i64 1 to ptr)
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #19
  %.not1 = icmp eq i32 %i.f, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean11interruptedE, i64 16), ptr %i.g, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN4lean11interruptedE, ptr nonnull @_ZN4lean11interruptedD2Ev) #18
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZSt19uncaught_exceptionsv() local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean11interruptedD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean12check_systemEPKcb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4lean11check_stackEPKc(ptr noundef %0)
  tail call void @_ZN4lean12check_memoryEPKc(ptr noundef %0)
  br i1 %1, label %bb.b, label %_ZN4lean15check_heartbeatEv.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL11g_cancel_tkE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4lean17check_interruptedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.e = icmp ugt ptr %.val.val.i, inttoptr (i64 1 to ptr)
  br i1 %i.e, label %bb.d, label %_ZN4lean17check_interruptedEv.exit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #19
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %bb.e, label %_ZN4lean17check_interruptedEv.exit

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean11interruptedE, i64 16), ptr %i.g, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN4lean11interruptedE, ptr nonnull @_ZN4lean11interruptedD2Ev) #18
  unreachable

_ZN4lean17check_interruptedEv.exit:               ; preds = %bb.b, %bb.c, %bb.d
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL11g_heartbeatE) ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8
  %i.j = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !8
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL15g_max_heartbeatE)
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %.not.i2 = icmp ne i64 %i.l, 0
  %i.m = icmp ugt i64 %i.j, %i.l
  %or.cond.i = select i1 %.not.i2, i1 %i.m, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZN4lean15check_heartbeatEv.exit

bb.f:                                             ; preds = %_ZN4lean17check_interruptedEv.exit
  tail call void @_ZN4lean25throw_heartbeat_exceptionEv()
  unreachable

_ZN4lean15check_heartbeatEv.exit:                 ; preds = %_ZN4lean17check_interruptedEv.exit, %bb.a
  ret void
}

declare void @_ZN4lean11check_stackEPKc(ptr noundef) local_unnamed_addr #12

declare void @_ZN4lean12check_memoryEPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN4lean9sleep_forEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 5 uses
  %4 = urem i32 %0, %spec.store.select            ; 3 uses
  %5 = udiv i32 %0, %spec.store.select
  %i.a = zext i32 %4 to i64
  %.not = icmp ugt i32 %spec.store.select, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %spec.store.select to i64
  %i.c = udiv i32 %spec.store.select, 1000
  %.zext20 = zext nneg i32 %i.c to i64            ; 2 uses
  %.neg.i.i5 = mul nsw i64 %.zext20, -1000
  %i.d = add nsw i64 %.neg.i.i5, %i.b
  %i.e = mul nsw i64 %i.d, 1000000
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL11g_cancel_tkE)
  %umax = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN4lean17check_interruptedEv.exit12, %bb.a
  %i.h = icmp eq i32 %4, 0
  br i1 %i.h, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = udiv i32 %4, 1000
  %.zext = zext nneg i32 %i.i to i64              ; 2 uses
  %.neg.i.i = mul nsw i64 %.zext, -1000
  %i.j = add nsw i64 %.neg.i.i, %i.a
  %i.k = mul nsw i64 %i.j, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %.zext, ptr %3, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.m = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__errno_location() #20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %bb.c, label %.critedge.i, !llvm.loop !35

.critedge.i:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %._crit_edge, %.critedge.i
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL11g_cancel_tkE)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4lean17check_interruptedEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.u, align 8, !tbaa !28
  %i.v = icmp ugt ptr %.val.val.i, inttoptr (i64 1 to ptr)
  br i1 %i.v, label %bb.f, label %_ZN4lean17check_interruptedEv.exit

bb.f:                                             ; preds = %bb.e
  %i.w = call noundef i32 @_ZSt19uncaught_exceptionsv() #19
  %.not1.i = icmp eq i32 %i.w, 0
  br i1 %.not1.i, label %bb.g, label %_ZN4lean17check_interruptedEv.exit

bb.g:                                             ; preds = %bb.f
  %i.x = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean11interruptedE, i64 16), ptr %i.x, align 8, !tbaa !21
  call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN4lean11interruptedE, ptr nonnull @_ZN4lean11interruptedD2Ev) #18
  unreachable

_ZN4lean17check_interruptedEv.exit:               ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.e, %bb.f
  ret void

bb.h:                                             ; preds = %.lr.ph, %_ZN4lean17check_interruptedEv.exit12
  %.016 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %_ZN4lean17check_interruptedEv.exit12 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %.zext20, ptr %2, align 8, !tbaa !31
  store i64 %i.e, ptr %i.f, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.y = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.j, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit7

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call ptr @__errno_location() #20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %bb.i, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit7, !llvm.loop !35

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit7: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %.not.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i8, label %_ZN4lean17check_interruptedEv.exit12, label %bb.k

bb.k:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit7
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val.i9 = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.af = getelementptr i8, ptr %.val.i9, i64 8
  %.val.val.i10 = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ag = icmp ugt ptr %.val.val.i10, inttoptr (i64 1 to ptr)
  br i1 %i.ag, label %bb.l, label %_ZN4lean17check_interruptedEv.exit12

bb.l:                                             ; preds = %bb.k
  %i.ah = call noundef i32 @_ZSt19uncaught_exceptionsv() #19
  %.not1.i11 = icmp eq i32 %i.ah, 0
  br i1 %.not1.i11, label %bb.m, label %_ZN4lean17check_interruptedEv.exit12

bb.m:                                             ; preds = %bb.l
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean11interruptedE, i64 16), ptr %i.ai, align 8, !tbaa !21
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN4lean11interruptedE, ptr nonnull @_ZN4lean11interruptedD2Ev) #18
  unreachable

_ZN4lean17check_interruptedEv.exit12:             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit7, %bb.k, %bb.l
  %i.aj = add nuw i32 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !37
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean11interruptedD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4lean11interrupted4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 long", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !9, i64 8}
!14 = !{!"_ZTSN4lean4fletImEE", !11, i64 0, !9, i64 8}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!19, !9, i64 8}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !9, i64 8, !6, i64 16}
!20 = !{!6, !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"any p2 pointer", !12, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!27, !12, i64 8}
!27 = !{!"_ZTSN4lean4fletIP11lean_objectEE", !24, i64 0, !12, i64 8}
!28 = !{!29, !12, i64 8}
!29 = !{!"_ZTS15lean_ref_object", !30, i64 0, !12, i64 8}
!30 = !{!"_ZTS11lean_object", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 7}
!31 = !{!32, !9, i64 0}
!32 = !{!"_ZTS8timespec", !9, i64 0, !9, i64 8}
!33 = !{!32, !9, i64 8}
!34 = !{!5, !5, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
end_hunk_0
