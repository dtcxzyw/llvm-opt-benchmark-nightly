inline.NumInlined: 2075
inline.NumDeleted: 1131
begin_hunk_0_@free
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define void @_ZN5folly23tryGetShutdownSocketSetEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 captures(none) initializes((8, 16)) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556)
end_hunk_0
begin_hunk_1_@_ZN5folly23tryGetShutdownSocketSetEv:bb.a
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8864)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104, !noalias !8867 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !27, !alias.scope !8867
end_hunk_1
begin_hunk_2_@_ZN5folly23tryGetShutdownSocketSetEv:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5folly14AccessSpreaderISt6atomicE13cachedCurrentEmRKNS2_11GlobalStateE.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 8, !noalias !8867
  br label %bb.h

end_hunk_2
begin_hunk_3_@_ZN5folly23tryGetShutdownSocketSetEv:bb.a
  %i.aj = cmpxchg weak ptr %i.ag, i32 %.06.i.i.i.i.i.i.i.i, i32 %i.ai acq_rel monotonic, align 8, !noalias !8867 ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = extractvalue { i32, i1 } %i.aj, 0
  br i1 %i.ak, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i, label %bb.h, !llvm.loop !8868

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr null, ptr %i.ad, align 8, !tbaa !27, !alias.scope !8867
  br label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i.i

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !27, !alias.scope !8867 ; 2 uses
  %.not.i3.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i3.i.i.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i
  %1 = getelementptr inbounds nuw i8, ptr %.pr.i.i.i.i.i.i, i64 8
  %i.am = load atomic i32, ptr %1 monotonic, align 8, !noalias !8867
  %.fr.i.i.i.i.i.i = freeze i32 %i.am
  %.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  %i.an = load ptr, ptr %i.ac, align 8, !noalias !8867
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i.i, label %_ZN5folly9SingletonINS_17ShutdownSocketSetENS_12_GLOBAL__N_110PrivateTagENS_6detail10DefaultTagEE7try_getEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i, %_ZN5folly14AccessSpreaderISt6atomicE13cachedCurrentEmRKNS2_11GlobalStateE.exit.i.i.i
  br label %_ZN5folly9SingletonINS_17ShutdownSocketSetENS_12_GLOBAL__N_110PrivateTagENS_6detail10DefaultTagEE7try_getEv.exit

_ZN5folly9SingletonINS_17ShutdownSocketSetENS_12_GLOBAL__N_110PrivateTagENS_6detail10DefaultTagEE7try_getEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i.i
end_hunk_3
