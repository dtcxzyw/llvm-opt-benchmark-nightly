inline.NumInlined: 711
inline.NumDeleted: 286
begin_hunk_0_@_ZNK6casadi10HorzRepmat4evalEPPKdPPdPxS4_:bb.a
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre11.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.pre10.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x double> %broadcast.splat, ptr %i.s, align 8, !tbaa !60
  store <2 x double> %broadcast.splat, ptr %i.t, align 8, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZNK6casadi10HorzRepmat8eval_genIdEEiPPKT_PPS2_PxS6_.exit, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i.preheader

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i.preheader:     ; preds = %.lr.ph.split.split.i, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.split.split.i ], [ %n.vec, %middle.block ]
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i.preheader, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  %.08.i = phi i64 [ %i.w, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i ], [ %.08.i.ph, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre10.i, i64 %.08.i
  store double %.pre11.i, ptr %i.v, align 8, !tbaa !60
  %i.w = add nuw nsw i64 %.08.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.h
  br i1 %exitcond.not.i, label %_ZNK6casadi10HorzRepmat8eval_genIdEEiPPKT_PPS2_PxS6_.exit, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, !llvm.loop !65

_ZNK6casadi10HorzRepmat8eval_genIdEEiPPKT_PPS2_PxS6_.exit: ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.us.i, %middle.block, %_ZNK6casadi6MXNode3depEx.exit.i, %.lr.ph.split.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi10HorzRepmat7eval_sxEPPKNS_6SXElemEPPS1_PxS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not.i, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, i64 noundef 0, i64 noundef 0) #20
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = icmp sgt i64 %i.h, 0
  %i.j = icmp sgt i64 %i.f, 0
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZNK6casadi10HorzRepmat8eval_genINS_6SXElemEEEiPPKT_PPS3_PxS7_.exit

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit.i, %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.loopexit.i
  %.08.i = phi i64 [ %i.t, %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.loopexit.i ], [ 0, %_ZNK6casadi6MXNode3depEx.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !66
  %i.l = load ptr, ptr %2, align 8, !tbaa !66
  %i.m = mul nuw nsw i64 %.08.i, %i.f
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i.i) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.r = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.s = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.loopexit.i, !llvm.loop !68

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = add nuw nsw i64 %.08.i, 1                ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !10
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZNK6casadi10HorzRepmat8eval_genINS_6SXElemEEEiPPKT_PPS3_PxS7_.exit, !llvm.loop !69

_ZNK6casadi10HorzRepmat8eval_genINS_6SXElemEEEiPPKT_PPS3_PxS7_.exit: ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.loopexit.i, %_ZNK6casadi6MXNode3depEx.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10HorzRepmat7eval_mxERKSt6vectorINS_2MXESaIS2_EERS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = tail call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 1, i64 noundef %i.d)
  %i.h = load ptr, ptr %2, align 8, !tbaa !54
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.b ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.a
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.j
}

declare noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi10HorzRepmat10sp_forwardEPPKyPPyPxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not.i, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, i64 noundef 0, i64 noundef 0) #20
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZNK6casadi10HorzRepmat8eval_genIyEEiPPKT_PPS2_PxS6_.exit

.lr.ph.i:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.j = icmp sgt i64 %i.f, 1
  %.idx.i = shl nsw i64 %i.f, 3
  br i1 %i.j, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us.i, label %.lr.ph.split.i, !prof !55

_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us.i:            ; preds = %.lr.ph.i, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us.i
  %.08.us.i = phi i64 [ %i.o, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !70
  %i.l = load ptr, ptr %2, align 8, !tbaa !70
  %i.m = mul nuw nsw i64 %.08.us.i, %i.f
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.k, i64 %.idx.i, i1 false)
  %i.o = add nuw nsw i64 %.08.us.i, 1             ; 2 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !10
  %i.q = icmp slt i64 %i.o, %i.p
  br i1 %i.q, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us.i, label %_ZNK6casadi10HorzRepmat8eval_genIyEEiPPKT_PPS2_PxS6_.exit, !llvm.loop !72

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.r = icmp eq i64 %i.f, 1
  br i1 %i.r, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.preheader.i, label %_ZNK6casadi10HorzRepmat8eval_genIyEEiPPKT_PPS2_PxS6_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit.preheader.i:     ; preds = %.lr.ph.split.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !70
  %.pre10.i = load ptr, ptr %2, align 8, !tbaa !70
  %.pre11.i = load i64, ptr %.pre.i, align 8, !tbaa !73
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.i

_ZSt4copyIPKyPyET0_T_S4_S3_.exit.i:               ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.i, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.preheader.i
  %.08.i = phi i64 [ %i.t, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.i ], [ 0, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.pre10.i, i64 %.08.i
  store i64 %.pre11.i, ptr %i.s, align 8, !tbaa !73
  %i.t = add nuw nsw i64 %.08.i, 1                ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !10
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.i, label %_ZNK6casadi10HorzRepmat8eval_genIyEEiPPKT_PPS2_PxS6_.exit, !llvm.loop !72

_ZNK6casadi10HorzRepmat8eval_genIyEEiPPKT_PPS2_PxS6_.exit: ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.i, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us.i, %_ZNK6casadi6MXNode3depEx.exit.i, %.lr.ph.split.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi10HorzRepmat10sp_reverseEPPyS2_PxS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, i64 noundef 0, i64 noundef 0) #20
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = icmp sgt i64 %i.j, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !70    ; 3 uses
  br i1 %i.k, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !70     ; 6 uses
  %.not12.i = icmp eq i64 %i.f, 0
  br i1 %.not12.i, label %._crit_edge.split, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %i.m = shl i64 %i.f, 3
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.m
  %i.n = add i64 %i.f, 2305843009213693951
  %i.o = and i64 %i.n, 2305843009213693951        ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 3
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3                        ; 2 uses
  %i.r = getelementptr i8, ptr %i.l, i64 %i.q
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %.lr.ph.i.preheader

._crit_edge.split:                                ; preds = %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit, %.lr.ph, %_ZNK6casadi6MXNode3depEx.exit
  %.not5.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.split
  %.idx = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.pre, i8 0, i64 %.idx, i1 false), !tbaa !73
  br label %_ZSt4fillIPyiEvT_S1_RKT0_.exit

_ZSt4fillIPyiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i.preheader, %._crit_edge.split
  ret i32 0

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit
  %.014 = phi i64 [ %i.u, %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 2 uses
  %i.s = mul i64 %.014, %i.f
  %i.t = getelementptr [8 x i8], ptr %.pre, i64 %i.s ; 5 uses
  %i.u = add nuw nsw i64 %.014, 1                 ; 3 uses
  %i.v = mul nsw i64 %i.u, %i.f
  %i.w = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.v ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %bound0 = icmp ult ptr %i.l, %i.w
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.x = getelementptr i8, ptr %i.t, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.y ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.l, i64 %i.y ; 3 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !73, !alias.scope !74
  %wide.load20.a = load <2 x i64>, ptr %i.z, align 8, !tbaa !73, !alias.scope !74
  %i.aa = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load21 = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !73, !alias.scope !77, !noalias !74
  %wide.load22 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !73, !alias.scope !77, !noalias !74
  %i.ab = or <2 x i64> %wide.load21, %wide.load
  %i.ac = or <2 x i64> %wide.load22, %wide.load20.a
  store <2 x i64> %i.ab, ptr %next.gep19, align 8, !tbaa !73, !alias.scope !77, !noalias !74
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !73, !alias.scope !77, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader ], [ %i.x, %middle.block ]
  %.01014.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.015.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.01014.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01014.i.ph, %.lr.ph.i.preheader24 ] ; 3 uses
  %i.ae = load i64, ptr %.015.i, align 8, !tbaa !73
  %i.af = load i64, ptr %.01014.i, align 8, !tbaa !73
  %i.ag = or i64 %i.af, %i.ae
  store i64 %i.ag, ptr %.01014.i, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.ai = getelementptr i8, ptr %.01014.i, i64 8
  %.not.i = icmp eq ptr %i.ah, %i.w
  br i1 %.not.i, label %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit, label %.lr.ph.i, !llvm.loop !80

_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !10
  %i.ak = icmp slt i64 %i.u, %i.aj
  br i1 %i.ak, label %.lr.ph.i.preheader, label %._crit_edge.split, !llvm.loop !81
}

declare noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10HorzRepmat10ad_forwardERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = load ptr, ptr %2, align 8, !tbaa !85
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6casadi2MXaSERKS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi2MXaSERKS0_.exit
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.q, %_ZN6casadi2MXaSERKS0_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = load ptr, ptr %1, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.09
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !10
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 noundef 1, i64 noundef %i.i)
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.09
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.c ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.b
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.q = add nuw nsw i64 %.09, 1                  ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.s = load ptr, ptr %2, align 8, !tbaa !85
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  %i.x = icmp ult i64 %i.q, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !86

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10HorzRepmat10ad_reverseERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = load ptr, ptr %2, align 8, !tbaa !85
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.d ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = load ptr, ptr %1, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.09
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !10
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 noundef 1, i64 noundef %i.i)
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.09
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

bb.d:                                             ; preds = %.noexc
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.r = add nuw nsw i64 %.09, 1                  ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.t = load ptr, ptr %2, align 8, !tbaa !85
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = icmp ult i64 %i.r, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !87

bb.e:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.q, %bb.c ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10HorzRepmat8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES7_RKS3_IbSaIbEERS9_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6casadi10HorzRepsum4evalEPPKdPPdPxS4_:bb.a
  %i.m = and i64 %i.l, 2305843009213693951        ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 3
  %bound0 = icmp ult ptr %i.c, %scevgep7
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.i, 0
  %i.o = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.n, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.c, i64 %i.p
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.preheader, %_ZSt9transformIPKdPdS2_St4plusIdEET1_T_S6_T0_S5_T2_.exit.loopexit.i
  %.012.i = phi i64 [ %i.t, %_ZSt9transformIPKdPdS2_St4plusIdEET1_T_S6_T0_S5_T2_.exit.loopexit.i ], [ 0, %.lr.ph.i.preheader.i.preheader ] ; 2 uses
  %i.r = mul nsw i64 %.012.i, %i.b
  %i.s = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.r ; 3 uses
  %i.t = add nuw nsw i64 %.012.i, 1               ; 3 uses
  %i.u = mul nsw i64 %i.t, %i.b
  %i.v = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.u
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.o
  br i1 %brmerge, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %i.w = getelementptr i8, ptr %i.s, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.x ; 3 uses
  %next.gep8 = getelementptr i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x double>, ptr %next.gep8, align 8, !tbaa !60, !alias.scope !157
  %wide.load9 = load <2 x double>, ptr %i.y, align 8, !tbaa !60, !alias.scope !157
  %i.z = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load10 = load <2 x double>, ptr %next.gep, align 8, !tbaa !60, !alias.scope !160, !noalias !157
  %wide.load11 = load <2 x double>, ptr %i.z, align 8, !tbaa !60, !alias.scope !160, !noalias !157
  %i.aa = fadd <2 x double> %wide.load, %wide.load10
  %i.ab = fadd <2 x double> %wide.load9, %wide.load11
  store <2 x double> %i.aa, ptr %next.gep, align 8, !tbaa !60, !alias.scope !160, !noalias !157
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !60, !alias.scope !160, !noalias !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt9transformIPKdPdS2_St4plusIdEET1_T_S6_T0_S5_T2_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.014.i.i.ph = phi ptr [ %i.q, %middle.block ], [ %i.c, %.lr.ph.i.preheader.i ]
  %.01012.i.i.ph = phi ptr [ %i.w, %middle.block ], [ %i.s, %.lr.ph.i.preheader.i ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.01012.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.01012.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ad = load double, ptr %.01012.i.i, align 8, !tbaa !60
  %i.ae = load double, ptr %.014.i.i, align 8, !tbaa !60
  %i.af = fadd double %i.ad, %i.ae
  store double %i.af, ptr %.014.i.i, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr i8, ptr %.014.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ag, %i.v
  br i1 %.not.i.i, label %_ZSt9transformIPKdPdS2_St4plusIdEET1_T_S6_T0_S5_T2_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !163

_ZSt9transformIPKdPdS2_St4plusIdEET1_T_S6_T0_S5_T2_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %exitcond.not.i = icmp eq i64 %i.t, %i.f
  br i1 %exitcond.not.i, label %_ZNK6casadi10HorzRepsum8eval_genIdSt4plusIdEEEiPPKT_PPS4_PxS8_T0_.exit, label %.lr.ph.i.preheader.i, !llvm.loop !164

_ZNK6casadi10HorzRepsum8eval_genIdSt4plusIdEEEiPPKT_PPS4_PxS8_T0_.exit: ; preds = %_ZSt9transformIPKdPdS2_St4plusIdEET1_T_S6_T0_S5_T2_.exit.loopexit.i, %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit.i, %.lr.ph.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi10HorzRepsum7eval_sxEPPKNS_6SXElemEPPS1_PxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi10HorzRepsum8eval_genINS_6SXElemESt4plusIS2_EEEiPPKT_PPS5_PxS9_T0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi10HorzRepsum8eval_genINS_6SXElemESt4plusIS2_EEEiPPKT_PPS5_PxS9_T0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = icmp slt i64 %i.b, 1
  br i1 %i.c, label %_ZSt6fill_nIPN6casadi6SXElemExiET_S3_T0_RKT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSEd(ptr noundef nonnull align 8 dereferenceable(8) %.06.i.i.i.i, double noundef 0.000000e+00) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPN6casadi6SXElemExiET_S3_T0_RKT1_.exit, label %bb.b, !llvm.loop !165

_ZSt6fill_nIPN6casadi6SXElemExiET_S3_T0_RKT1_.exit: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !128
  %i.j = icmp slt i64 %i.i, 1
  %.not13.i = icmp eq i64 %i.b, 0
  %or.cond = or i1 %i.j, %.not13.i
  br i1 %or.cond, label %._crit_edge.split, label %.lr.ph.i.preheader

._crit_edge.split:                                ; preds = %_ZSt9transformIPKN6casadi6SXElemEPS1_S4_St4plusIS1_EET1_T_S8_T0_S7_T2_.exit.loopexit, %_ZSt6fill_nIPN6casadi6SXElemExiET_S3_T0_RKT1_.exit
  ret i32 0

.lr.ph.i.preheader:                               ; preds = %_ZSt6fill_nIPN6casadi6SXElemExiET_S3_T0_RKT1_.exit, %_ZSt9transformIPKN6casadi6SXElemEPS1_S4_St4plusIS1_EET1_T_S8_T0_S7_T2_.exit.loopexit
  %.012 = phi i64 [ %i.n, %_ZSt9transformIPKN6casadi6SXElemEPS1_S4_St4plusIS1_EET1_T_S8_T0_S7_T2_.exit.loopexit ], [ 0, %_ZSt6fill_nIPN6casadi6SXElemExiET_S3_T0_RKT1_.exit ] ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.l = mul nsw i64 %.012, %i.b
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = add nuw nsw i64 %.012, 1                 ; 3 uses
  %i.o = mul nsw i64 %i.n, %i.b
  %i.p = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.o
  %i.q = load ptr, ptr %2, align 8, !tbaa !66
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.016.i = phi ptr [ %i.s, %bb.c ], [ %i.m, %.lr.ph.i.preheader ] ; 2 uses
  %.01015.i = phi ptr [ %i.t, %bb.c ], [ %i.q, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %5, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %.016.i, ptr noundef nonnull align 8 dereferenceable(8) %.01015.i)
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.01015.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %.lr.ph.i
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i, i64 8 ; 2 uses
  %i.t = getelementptr i8, ptr %.01015.i, i64 8
  %.not.i = icmp eq ptr %i.s, %i.p
  br i1 %.not.i, label %_ZSt9transformIPKN6casadi6SXElemEPS1_S4_St4plusIS1_EET1_T_S8_T0_S7_T2_.exit.loopexit, label %.lr.ph.i, !llvm.loop !166

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %i.u

_ZSt9transformIPKN6casadi6SXElemEPS1_S4_St4plusIS1_EET1_T_S8_T0_S7_T2_.exit.loopexit: ; preds = %bb.c
  %i.v = load i64, ptr %i.h, align 8, !tbaa !128
  %i.w = icmp slt i64 %i.n, %i.v
  br i1 %i.w, label %.lr.ph.i.preheader, label %._crit_edge.split, !llvm.loop !167
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10HorzRepsum7eval_mxERKSt6vectorINS_2MXESaIS2_EERS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = tail call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !128
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 1, i64 noundef %i.d)
  %i.h = load ptr, ptr %2, align 8, !tbaa !54
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.b ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.a
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi10HorzRepsum10sp_forwardEPPKyPPyPxS4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not5.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %.idx = shl i64 %i.b, 3
  %i.c = load ptr, ptr %2, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %.idx, i1 false), !tbaa !73
  br label %_ZSt4fillIPyiEvT_S1_RKT0_.exit

_ZSt4fillIPyiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %i.d = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 7 uses
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4fillIPyiEvT_S1_RKT0_.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !70
  %.idx.i.i.i = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !73
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit.i:            ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4fillIPyiEvT_S1_RKT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !128
  %i.i = icmp slt i64 %i.h, 1
  %.not12.i.i = icmp eq i64 %i.d, 0
  %or.cond.i = or i1 %.not12.i.i, %i.i
  br i1 %or.cond.i, label %_ZNK6casadi10HorzRepsum8eval_genIyPFyyyEEEiPPKT_PPS4_PxS8_T0_.exit, label %.lr.ph.i.preheader.i.preheader

.lr.ph.i.preheader.i.preheader:                   ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !70     ; 6 uses
  %i.l = shl i64 %i.d, 3
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.l
  %i.m = add i64 %i.d, 2305843009213693951
  %i.n = and i64 %i.m, 2305843009213693951        ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 3
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.k, i64 %i.p
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.preheader, %_ZSt9transformIPKyPyS2_PFyyyEET1_T_S6_T0_S5_T2_.exit.loopexit.i
  %.013.i = phi i64 [ %i.t, %_ZSt9transformIPKyPyS2_PFyyyEET1_T_S6_T0_S5_T2_.exit.loopexit.i ], [ 0, %.lr.ph.i.preheader.i.preheader ] ; 2 uses
  %i.r = mul i64 %.013.i, %i.d
  %i.s = getelementptr [8 x i8], ptr %i.j, i64 %i.r ; 5 uses
  %i.t = add nuw nsw i64 %.013.i, 1               ; 3 uses
  %i.u = mul nsw i64 %i.t, %i.d
  %i.v = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.u ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %bound0 = icmp ult ptr %i.k, %i.v
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.w = getelementptr i8, ptr %i.s, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.x ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.k, i64 %i.x ; 3 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !73, !alias.scope !168
  %wide.load11.a = load <2 x i64>, ptr %i.y, align 8, !tbaa !73, !alias.scope !168
  %i.z = getelementptr i8, ptr %next.gep10, i64 16 ; 2 uses
  %wide.load12 = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !73, !alias.scope !171, !noalias !168
  %wide.load13 = load <2 x i64>, ptr %i.z, align 8, !tbaa !73, !alias.scope !171, !noalias !168
  %i.aa = or <2 x i64> %wide.load12, %wide.load
  %i.ab = or <2 x i64> %wide.load13, %wide.load11.a
  store <2 x i64> %i.aa, ptr %next.gep10, align 8, !tbaa !73, !alias.scope !171, !noalias !168
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !73, !alias.scope !171, !noalias !168
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt9transformIPKyPyS2_PFyyyEET1_T_S6_T0_S5_T2_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.015.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.preheader.i ], [ %i.w, %middle.block ]
  %.01014.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader.i ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01014.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.01014.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ad = load i64, ptr %.015.i.i, align 8, !tbaa !73
  %i.ae = load i64, ptr %.01014.i.i, align 8, !tbaa !73
  %i.af = or i64 %i.ae, %i.ad
  store i64 %i.af, ptr %.01014.i.i, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr i8, ptr %.01014.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ag, %i.v
  br i1 %.not.i.i, label %_ZSt9transformIPKyPyS2_PFyyyEET1_T_S6_T0_S5_T2_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !174

_ZSt9transformIPKyPyS2_PFyyyEET1_T_S6_T0_S5_T2_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !128
  %i.aj = icmp slt i64 %i.t, %i.ai
  br i1 %i.aj, label %.lr.ph.i.preheader.i, label %_ZNK6casadi10HorzRepsum8eval_genIyPFyyyEEEiPPKT_PPS4_PxS8_T0_.exit, !llvm.loop !175

_ZNK6casadi10HorzRepsum8eval_genIyPFyyyEEEiPPKT_PPS4_PxS8_T0_.exit: ; preds = %_ZSt9transformIPKyPyS2_PFyyyEET1_T_S6_T0_S5_T2_.exit.loopexit.i, %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi10HorzRepsum10sp_reverseEPPyS2_PxS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !128
  %i.e = icmp sgt i64 %i.d, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !70    ; 7 uses
  %.idx14 = shl i64 %i.b, 3                       ; 4 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.pre, i64 %.idx14 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %.not12.i = icmp eq i64 %i.b, 0
  br i1 %.not12.i, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %i.h = shl i64 %i.b, 3
  %i.i = add i64 %.idx14, -8                      ; 2 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  %i.l = getelementptr i8, ptr %i.g, i64 %.idx14
  %n.vec = and i64 %i.k, 4611686018427387900      ; 3 uses
  %i.m = shl i64 %n.vec, 3                        ; 2 uses
  %i.n = getelementptr i8, ptr %.pre, i64 %i.m
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

._crit_edge.split:                                ; preds = %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit, %bb.a
  %.not5.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.split
  tail call void @llvm.memset.p0.i64(ptr align 8 %.pre, i8 0, i64 %.idx14, i1 false), !tbaa !73
  br label %_ZSt4fillIPyiEvT_S1_RKT0_.exit

_ZSt4fillIPyiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph, %.lr.ph.i.i.i.preheader, %._crit_edge.split
  ret i32 0

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit
  %.015 = phi i64 [ %i.ad, %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 3 uses
  %i.o = mul i64 %.015, %i.b
  %i.p = getelementptr [8 x i8], ptr %i.g, i64 %i.o ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.q = mul i64 %i.h, %.015
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.q
  %bound0 = icmp ult ptr %i.p, %i.f
  %bound1 = icmp ult ptr %.pre, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.r = getelementptr i8, ptr %i.p, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre, i64 %i.s ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.p, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !73, !alias.scope !176
  %wide.load22.a = load <2 x i64>, ptr %i.t, align 8, !tbaa !73, !alias.scope !176
  %i.u = getelementptr i8, ptr %next.gep21, i64 16 ; 2 uses
  %wide.load23.a = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !73, !alias.scope !179, !noalias !176
  %wide.load24 = load <2 x i64>, ptr %i.u, align 8, !tbaa !73, !alias.scope !179, !noalias !176
  %i.v = or <2 x i64> %wide.load23.a, %wide.load
  %i.w = or <2 x i64> %wide.load24, %wide.load22.a
  store <2 x i64> %i.v, ptr %next.gep21, align 8, !tbaa !73, !alias.scope !179, !noalias !176
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !73, !alias.scope !179, !noalias !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit, label %.lr.ph.i.preheader26

.lr.ph.i.preheader26:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.ph = phi ptr [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.preheader ], [ %i.n, %middle.block ]
  %.01014.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader26, %.lr.ph.i
  %.015.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader26 ] ; 2 uses
  %.01014.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.01014.i.ph, %.lr.ph.i.preheader26 ] ; 3 uses
  %i.y = load i64, ptr %.015.i, align 8, !tbaa !73
  %i.z = load i64, ptr %.01014.i, align 8, !tbaa !73
  %i.aa = or i64 %i.z, %i.y
  store i64 %i.aa, ptr %.01014.i, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.ac = getelementptr i8, ptr %.01014.i, i64 8
  %.not.i = icmp eq ptr %i.ab, %i.f
  br i1 %.not.i, label %_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit, label %.lr.ph.i, !llvm.loop !182

_ZSt9transformIPyS0_S0_PFyyyEET1_T_S4_T0_S3_T2_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %i.ad = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !128
  %i.af = icmp slt i64 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i.preheader, label %._crit_edge.split, !llvm.loop !183
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10HorzRepsum10ad_forwardERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = load ptr, ptr %2, align 8, !tbaa !85
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6casadi2MXaSERKS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi2MXaSERKS0_.exit
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.q, %_ZN6casadi2MXaSERKS0_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = load ptr, ptr %1, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.09
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !128
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 noundef 1, i64 noundef %i.i)
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.09
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.c ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.b
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.q = add nuw nsw i64 %.09, 1                  ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.s = load ptr, ptr %2, align 8, !tbaa !85
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  %i.x = icmp ult i64 %i.q, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !184

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10HorzRepsum10ad_reverseERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = load ptr, ptr %2, align 8, !tbaa !85
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.d ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = load ptr, ptr %1, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.09
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !128
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 noundef 1, i64 noundef %i.i)
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.09
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

bb.d:                                             ; preds = %.noexc
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.r = add nuw nsw i64 %.09, 1                  ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.t = load ptr, ptr %2, align 8, !tbaa !85
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = icmp ult i64 %i.r, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !185

bb.e:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.q, %bb.c ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10HorzRepsum8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES7_RKS3_IbSaIbEERS9_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"class.std::vector.5", align 8     ; 13 uses
  %7 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
end_hunk_1
