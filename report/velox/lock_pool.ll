inline.NumInlined: 35
inline.NumDeleted: 18
begin_hunk_0_@_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv:_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit
; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5boost7atomics6detail9lock_pool19allocate_wait_stateEPvPVKv(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !18
end_hunk_0
begin_hunk_1_@_ZN5boost7atomics6detail9lock_pool19allocate_wait_stateEPvPVKv:bb.a
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.f, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i, %bb.b
  %i.z = phi ptr [ %.pre.i, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i ], [ %i.x, %bb.f ], [ %i.d, %bb.b ] ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
end_hunk_1
begin_hunk_2_@_ZN5boost7atomics6detail9lock_pool19allocate_wait_stateEPvPVKv:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 0, ptr %i.am, align 4, !tbaa !32
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge.thread.i
  %.018.i = phi ptr [ %i.ai, %bb.h ], [ %i.ag, %.critedge.thread.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  store ptr %1, ptr %i.an, align 8, !tbaa !7
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !19
end_hunk_2
