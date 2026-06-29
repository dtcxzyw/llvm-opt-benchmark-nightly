inline.NumInlined: 28162
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN5Pooma15PatchSizeSyncerC2EiR4GridILi1EE:bb.a
  store i32 %i.c, ptr %i.b, align 4, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.d, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN12DataBlockPtrIiLb0EEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !133
  store i64 %i.i, ptr %i.g, align 8, !tbaa !133
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = load i32, ptr %0, align 8, !tbaa !116
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %_ZNSt6vectorISt4pairIiP4GridILi1EEESaIS4_EE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.b, align 4, !tbaa !131  ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNSt6vectorISt4pairIiP4GridILi1EEESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIiP4GridILi1EEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseISt4pairIiP4GridILi1EEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = shl nuw nsw i64 %i.n, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #45 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.r, ptr %i.j, align 8, !tbaa !134
  store ptr %i.r, ptr %i.s, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.n
  store ptr %i.t, ptr %i.p, align 8, !tbaa !136
  br label %_ZNSt6vectorISt4pairIiP4GridILi1EEESaIS4_EE7reserveEm.exit

_ZNSt6vectorISt4pairIiP4GridILi1EEESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIiP4GridILi1EEESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Pooma15PatchSizeSyncerD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !134  ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.lcssa5 = phi ptr [ %i.d, %bb.a ], [ %i.q, %bb.d ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.t, %bb.d ]
  %.not.i.i.i = icmp eq ptr %.lcssa5, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiP4GridILi1EEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %.lcssa
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa5, i64 noundef %i.i) #48
  br label %_ZNSt6vectorISt4pairIiP4GridILi1EEESaIS4_EED2Ev.exit

_ZNSt6vectorISt4pairIiP4GridILi1EEESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN12DataBlockPtrIiLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #47
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.k = phi ptr [ %i.q, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.r, %bb.d ], [ %i.c, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !137  ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN12DataBlockPtrIiLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 24) #48
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !135
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !134
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.q = phi ptr [ %i.k, %.lr.ph ], [ %.pre11, %bb.c ] ; 3 uses
  %i.r = phi ptr [ %i.l, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %i.w = icmp ugt i64 %i.v, %indvars.iv.next
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !140
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Pooma15PatchSizeSyncer14calcGlobalGridER4GridILi1EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN12DataBlockPtrIiLb0EEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !133
  store i64 %i.e, ptr %i.c, align 8, !tbaa !133
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12TagGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !141    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Pooma24initializeCheetahHelpersEi(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 4 uses
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #46
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i.i.i.i, label %_ZN12TagGeneratorC2Ei.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = shl nuw nsw i64 %i.a, 2                  ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.a
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr i8, ptr %i.d, i64 4        ; 3 uses
  %i.g = add nsw i64 %i.a, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i9.i

.thread:                                          ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr i8, ptr %i.i, i64 4
  br label %.lr.ph.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i9.i: ; preds = %bb.c
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i.i
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 3 uses
  store i32 0, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr i8, ptr %i.l, i64 4        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i9.i
  %i.o = phi ptr [ %i.l, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i9.i ], [ %i.i, %.thread ] ; 3 uses
  %.0.i.i.i.i.i.ph.i6 = phi ptr [ %i.k, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i9.i ], [ %i.f, %.thread ]
  %.0.i.i.i.i.i11.ph.i = phi ptr [ %i.n, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i9.i ], [ %i.j, %.thread ]
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.a
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %i.p = shl nuw nsw i64 %wide.trip.count.i, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.d, i8 0, i64 %i.p, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.p, i1 false), !tbaa !4
  br label %_ZN12TagGeneratorC2Ei.exit

_ZN12TagGeneratorC2Ei.exit:                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %.lr.ph.i
  %.sroa.0.0 = phi ptr [ %i.d, %.lr.ph.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.7.0 = phi ptr [ %.0.i.i.i.i.i.ph.i6, %.lr.ph.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.9.0 = phi ptr [ %i.e, %.lr.ph.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.12.0 = phi ptr [ %i.o, %.lr.ph.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.16.0 = phi ptr [ %.0.i.i.i.i.i11.ph.i, %.lr.ph.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.18.0 = phi ptr [ %1, %.lr.ph.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.q = load ptr, ptr @tagGenerator_g, align 8, !tbaa !141 ; 3 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 16), align 8, !tbaa !143
  store ptr %.sroa.0.0, ptr @tagGenerator_g, align 8, !tbaa !141
  store ptr %.sroa.7.0, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 8), align 8, !tbaa !144
  store ptr %.sroa.9.0, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 16), align 8, !tbaa !143
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN12TagGeneratorC2Ei.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #48
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %bb.d, %_ZN12TagGeneratorC2Ei.exit
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 24), align 8, !tbaa !141 ; 3 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 40), align 8, !tbaa !143
  store ptr %.sroa.12.0, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 24), align 8, !tbaa !141
  store ptr %.sroa.16.0, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 32), align 8, !tbaa !144
  store ptr %.sroa.18.0, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 40), align 8, !tbaa !143
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN12TagGeneratorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #48
  br label %_ZN12TagGeneratorD2Ev.exit

_ZN12TagGeneratorD2Ev.exit:                       ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, %bb.e
  store i32 0, ptr @_ZN5Pooma18expectedMessages_gE, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5Pooma22finalizeCheetahHelpersEv() local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5Pooma7sendTagEi(i32 noundef %0) local_unnamed_addr #15 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = load ptr, ptr @tagGenerator_g, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.a ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !4
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5Pooma10receiveTagEi(i32 noundef %0) local_unnamed_addr #15 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 24), align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.a ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !4
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(109) ptr @_ZSt4endlR6Inform(ptr nofree noundef nonnull readonly returned align 8 captures(address, ret: address, provenance) dereferenceable(109) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN6Inform5flushEv(ptr noundef nonnull align 8 dereferenceable(109) %0)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6Inform5flushEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(109) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext 0) #47 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !145  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !8, !alias.scope !152
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !17, !alias.scope !152
  store i8 0, ptr %i.e, align 8, !tbaa !16, !alias.scope !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153, !noalias !152 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !152 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155, !noalias !152 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p) #47 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.r) #47
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.s = load i64, ptr %i.f, align 8, !tbaa !17
  %i.t = add i64 %i.s, 2
  %i.u = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #45 ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.014 = phi ptr [ %i.u, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ], [ %.116, %._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.v, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ], [ %spec.select, %._crit_edge ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.116 = phi ptr [ %.014, %bb.d ], [ %i.ac, %bb.f ] ; 4 uses
  %.1 = phi ptr [ %.0, %bb.d ], [ %i.ab, %bb.f ]  ; 4 uses
  %i.aa = load i8, ptr %.1, align 1, !tbaa !16    ; 2 uses
  switch i8 %i.aa, label %bb.f [
    i8 10, label %.critedge
    i8 0, label %.critedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.116, i64 1
  store i8 %i.aa, ptr %.116, align 1, !tbaa !16
  br label %bb.e, !llvm.loop !156

.critedge:                                        ; preds = %bb.e, %bb.e
  store i8 0, ptr %.116, align 1, !tbaa !16
  %i.ad = load i8, ptr %.1, align 1, !tbaa !16
  %i.ae = icmp eq i8 %i.ad, 10
  %spec.select.idx = zext i1 %i.ae to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.1, i64 %spec.select.idx ; 2 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !45  ; 2 uses
  %.not27 = icmp eq ptr %i.af, %i.x
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12InformStream5printEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %.critedge
  %i.ag = load i8, ptr %spec.select, align 1, !tbaa !16
  %.not19 = icmp eq i8 %i.ag, 0
  br i1 %.not19, label %bb.l, label %bb.d, !llvm.loop !157

.lr.ph:                                           ; preds = %.critedge, %_ZN12InformStream5printEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %.sroa.024.028 = phi ptr [ %i.bp, %_ZN12InformStream5printEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ %i.af, %.critedge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50 ; 7 uses
  %i.aj = load i32, ptr %i.y, align 4, !tbaa !158
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %.not.i.i20 = icmp sgt i32 %i.aj, %i.an
  %or.cond.i.i = select i1 %i.al, i1 true, i1 %.not.i.i20
  br i1 %or.cond.i.i, label %_ZN12InformStream5printEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %_ZN12InformStream11shouldPrintEi.exit.i

_ZN12InformStream11shouldPrintEi.exit.i:          ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !101 ; 2 uses
  %i.aq = load i32, ptr @_ZN6Inform9context_sE, align 4, !tbaa !4
  %i.ar = icmp eq i32 %i.ap, %i.aq
  %i.as = icmp eq i32 %i.ap, -1
  %spec.select.i.i = or i1 %i.as, %i.ar
  br i1 %spec.select.i.i, label %bb.g, label %_ZN12InformStream5printEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

bb.g:                                             ; preds = %_ZN12InformStream11shouldPrintEi.exit.i
  %i.at = load i64, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %0, align 8, !tbaa !14
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.au, i64 noundef %i.at) #47 ; 0 uses
  %i.aw = load i32, ptr @_ZN6Inform11nContexts_sE, align 4, !tbaa !4
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.ao, align 4, !tbaa !101 ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  %i.ba = load i32, ptr @_ZN6Inform9context_sE, align 4
  %i.bb = icmp eq i32 %i.ay, %i.ba
end_hunk_0
