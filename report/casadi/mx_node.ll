Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/mx_node?download=true
inline.NumInlined: 9612
inline.NumDeleted: 1756
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 219
begin_hunk_0_@_ZNK6casadi5SolveILb1EE10ad_reverseERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_:bb.a
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIxSaIxEED2Ev.exit157, label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.hq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !115
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit157

_ZNSt6vectorIxSaIxEED2Ev.exit157:                 ; preds = %bb.bf, %.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn80.pn = phi { ptr, i32 } [ %i.bv, %bb.p ], [ %.pn80, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn80, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #32
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit157, %bb.o
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn80.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit157 ], [ %i.bu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.k
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %bb.k ], [ %.pn80.pn.pn, %bb.bg ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.g, %bb.f
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn84.pn, %bb.bh ], [ %i.au, %bb.g ], [ %i.at, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.loopexit.split-lp163

.loopexit.split-lp163:                            ; preds = %.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bi
  %.pn88 = phi { ptr, i32 } [ %.pn84.pn.pn, %bb.bi ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn88
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi5SolveILb1EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 912
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 6 uses
  %i.k = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  %i.l = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 0 uses
  %i.m = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.r = icmp sgt i64 %i.m, 1
  %i.s = icmp eq i64 %i.m, 1
  %.idx = shl i64 %i.m, 3                         ; 6 uses
  %i.t = icmp sgt i64 %i.m, 0
  br i1 %i.t, label %.lr.ph52.split.us.preheader, label %.lr.ph52.split.split

.lr.ph52.split.us.preheader:                      ; preds = %.lr.ph52
  %i.u = load ptr, ptr %1, align 8, !tbaa !111
  br label %.lr.ph52.split.us

.lr.ph52.split.us:                                ; preds = %.lr.ph52.split.us.preheader, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us
  %.04051.us = phi i64 [ %i.ak, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us ], [ 0, %.lr.ph52.split.us.preheader ]
  %.04150.us = phi ptr [ %i.aj, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us ], [ %i.p, %.lr.ph52.split.us.preheader ] ; 3 uses
  %.04249.us = phi ptr [ %i.v, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us ], [ %i.u, %.lr.ph52.split.us.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.04249.us, i64 %i.m
  br i1 %i.r, label %bb.e, label %bb.c, !prof !116

bb.c:                                             ; preds = %.lr.ph52.split.us
  br i1 %i.s, label %bb.d, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %.04249.us, align 8, !tbaa !97
  store i64 %i.w, ptr %4, align 8, !tbaa !97
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us

bb.e:                                             ; preds = %.lr.ph52.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %4, ptr align 8 %.04249.us, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us

_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us:              ; preds = %bb.e, %bb.d, %bb.c
  %.pre = load i64, ptr %i.k, align 8, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us, %.loopexit.us
  %i.x = phi i64 [ %.pre, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us ], [ %i.al, %.loopexit.us ] ; 2 uses
  %.03947.us = phi i64 [ 0, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us ], [ %i.y, %.loopexit.us ] ; 2 uses
  %i.y = add nuw nsw i64 %.03947.us, 1            ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = icmp slt i64 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph.us, label %.loopexit.us

bb.g:                                             ; preds = %.lr.ph.us, %bb.g
  %i.ac = phi i64 [ %.pre84, %.lr.ph.us ], [ %i.af, %bb.g ]
  %.046.us = phi i64 [ %i.x, %.lr.ph.us ], [ %i.ag, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.046.us
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !97
  %i.af = or i64 %i.ac, %i.ae                     ; 2 uses
  store i64 %i.af, ptr %i.am, align 8, !tbaa !97
  %i.ag = add nsw i64 %.046.us, 1                 ; 2 uses
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ai = icmp slt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.loopexit.us, !llvm.loop !1652

_ZSt4fillIPyiEvT_S1_RKT0_.exit.us:                ; preds = %.loopexit.us
  %i.aj = getelementptr i8, ptr %.04150.us, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr align 8 %.04150.us, i8 0, i64 %.idx, i1 false), !tbaa !97
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %.04150.us, ptr noundef %4, i1 noundef zeroext true)
  %i.ak = add nuw nsw i64 %.04051.us, 1           ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ak, %i.f
  br i1 %exitcond83.not, label %._crit_edge53, label %.lr.ph52.split.us, !llvm.loop !1653

.loopexit.us:                                     ; preds = %bb.g, %bb.f
  %i.al = phi i64 [ %i.aa, %bb.f ], [ %i.ah, %bb.g ]
  %exitcond82.not = icmp eq i64 %i.y, %i.m
  br i1 %exitcond82.not, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us, label %bb.f, !llvm.loop !1654

.lr.ph.us:                                        ; preds = %bb.f
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.03947.us ; 2 uses
  %.pre84 = load i64, ptr %i.am, align 8, !tbaa !97
  br label %bb.g

.lr.ph52.split.split:                             ; preds = %.lr.ph52
  %.not5.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not5.i.i.i, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67:            ; preds = %.lr.ph52.split.split, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67
  %.04051.us64 = phi i64 [ %i.ao, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67 ], [ 0, %.lr.ph52.split.split ]
  %.04150.us65 = phi ptr [ %i.an, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67 ], [ %i.p, %.lr.ph52.split.split ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04150.us65, i64 %.idx
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %.04150.us65, ptr noundef %4, i1 noundef zeroext true)
  %i.ao = add nuw nsw i64 %.04051.us64, 1         ; 2 uses
  %exitcond81.not = icmp eq i64 %i.ao, %i.f
  br i1 %exitcond81.not, label %._crit_edge53, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67, !llvm.loop !1653

._crit_edge53:                                    ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us, %_ZNK6casadi6MXNode3depEx.exit
  ret i32 0

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %.lr.ph52.split.split, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  %.04051 = phi i64 [ %i.aq, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit ], [ 0, %.lr.ph52.split.split ]
  %.04150 = phi ptr [ %i.ap, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit ], [ %i.p, %.lr.ph52.split.split ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.04150, i8 0, i64 %.idx, i1 false), !tbaa !97
  %i.ap = getelementptr inbounds i8, ptr %.04150, i64 %.idx
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %.04150, ptr noundef %4, i1 noundef zeroext true)
  %i.aq = add nuw nsw i64 %.04051, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.f
  br i1 %exitcond.not, label %._crit_edge53, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, !llvm.loop !1653
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi5SolveILb1EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 912
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 6 uses
  %i.k = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  %i.l = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 0 uses
  %i.m = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl i64 %i.m, 3                         ; 9 uses
  %i.r = icmp sgt i64 %i.m, 0
  br i1 %i.r, label %.lr.ph67.split.us.preheader, label %.lr.ph67.split.split

.lr.ph67.split.us.preheader:                      ; preds = %.lr.ph67
  %5 = load ptr, ptr %1, align 8, !tbaa !111      ; 3 uses
  %scevgep = getelementptr i8, ptr %4, i64 %.idx
  %i.s = mul i64 %i.f, %i.m
  %i.t = shl i64 %i.s, 3
  %scevgep125 = getelementptr i8, ptr %5, i64 %i.t
  %min.iters.check = icmp ult i64 %i.m, 4
  %bound0 = icmp ult ptr %5, %scevgep
  %bound1 = icmp ult ptr %4, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %.idx, 0
  %i.u = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.m, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge.us, %.lr.ph67.split.us.preheader
  %.04766.us = phi i64 [ %i.bx, %._crit_edge.us ], [ 0, %.lr.ph67.split.us.preheader ]
  %.04865.us = phi ptr [ %i.v, %._crit_edge.us ], [ %i.p, %.lr.ph67.split.us.preheader ] ; 3 uses
  %.04964.us = phi ptr [ %i.bw, %._crit_edge.us ], [ %5, %.lr.ph67.split.us.preheader ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %.idx, i1 false), !tbaa !97
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %4, ptr noundef %.04865.us, i1 noundef zeroext false)
  %i.v = getelementptr i8, ptr %.04865.us, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr align 8 %.04865.us, i8 0, i64 %.idx, i1 false), !tbaa !97
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.u
  br i1 %brmerge, label %.lr.ph.us.preheader129, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !97, !alias.scope !1664
  %wide.load126 = load <2 x i64>, ptr %i.x, align 8, !tbaa !97, !alias.scope !1664
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %index ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load127 = load <2 x i64>, ptr %i.y, align 8, !tbaa !97, !alias.scope !1665, !noalias !1664
  %wide.load128 = load <2 x i64>, ptr %i.z, align 8, !tbaa !97, !alias.scope !1665, !noalias !1664
  %i.aa = or <2 x i64> %wide.load127, %wide.load
  %i.ab = or <2 x i64> %wide.load128, %wide.load126
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !97, !alias.scope !1665, !noalias !1664
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !97, !alias.scope !1665, !noalias !1664
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1658

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader.us, label %.lr.ph.us.preheader129

.lr.ph.us.preheader129:                           ; preds = %.lr.ph.us.preheader, %middle.block
  %.04659.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader129, %.lr.ph.us.prol
  %.04659.us.prol = phi i64 [ %i.ai, %.lr.ph.us.prol ], [ %.04659.us.ph, %.lr.ph.us.preheader129 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader129 ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04659.us.prol
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %.04659.us.prol ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !97
  %i.ah = or i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !97
  %i.ai = add nuw nsw i64 %.04659.us.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !1659

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader129
  %.04659.us.unr = phi i64 [ %.04659.us.ph, %.lr.ph.us.preheader129 ], [ %i.ai, %.lr.ph.us.prol ]
  %i.aj = sub nsw i64 %.04659.us.ph, %i.m
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %.preheader.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.04659.us = phi i64 [ %i.bi, %.lr.ph.us ], [ %.04659.us.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04659.us
  %i.am = load i64, ptr %i.al, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %.04659.us ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !97
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !97
  %i.aq = add nuw nsw i64 %.04659.us, 1           ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !97
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %i.aq ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !97
  %i.av = or i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !97
  %i.aw = add nuw nsw i64 %.04659.us, 2           ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %i.aw ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !97
  %i.bb = or i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !97
  %i.bc = add nuw nsw i64 %.04659.us, 3           ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %i.bc ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !97
  %i.bh = or i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !97
  %i.bi = add nuw nsw i64 %.04659.us, 4           ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %i.bi, %i.m
  br i1 %exitcond110.not.3, label %.preheader.us, label %.lr.ph.us, !llvm.loop !1660

bb.c:                                             ; preds = %.preheader.us, %.loopexit.us
  %i.bj = phi i64 [ %.pre, %.preheader.us ], [ %i.bv, %.loopexit.us ] ; 2 uses
  %.04562.us = phi i64 [ 0, %.preheader.us ], [ %i.bk, %.loopexit.us ] ; 2 uses
  %i.bk = add nuw nsw i64 %.04562.us, 1           ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !97 ; 2 uses
  %i.bn = icmp slt i64 %i.bj, %i.bm
  br i1 %i.bn, label %.lr.ph61.us, label %.loopexit.us

bb.d:                                             ; preds = %.lr.ph61.us, %bb.d
  %.060.us = phi i64 [ %i.bj, %.lr.ph61.us ], [ %i.bs, %bb.d ] ; 2 uses
  %i.bo = load i64, ptr %6, align 8, !tbaa !97
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.060.us ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !97
  %i.br = or i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !97
  %i.bs = add nsw i64 %.060.us, 1                 ; 2 uses
  %i.bt = load i64, ptr %i.bl, align 8, !tbaa !97 ; 2 uses
  %i.bu = icmp slt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.d, label %.loopexit.us, !llvm.loop !1661

.loopexit.us:                                     ; preds = %bb.d, %bb.c
  %i.bv = phi i64 [ %i.bm, %bb.c ], [ %i.bt, %bb.d ]
  %exitcond111.not = icmp eq i64 %i.bk, %i.m
  br i1 %exitcond111.not, label %._crit_edge.us, label %bb.c, !llvm.loop !1662

.preheader.us:                                    ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block
  %.pre = load i64, ptr %i.k, align 8, !tbaa !97
  br label %bb.c

.lr.ph61.us:                                      ; preds = %bb.c
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04562.us
  br label %bb.d

._crit_edge.us:                                   ; preds = %.loopexit.us
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %i.m
  %i.bx = add nuw nsw i64 %.04766.us, 1           ; 2 uses
  %exitcond112.not = icmp eq i64 %i.bx, %i.f
  br i1 %exitcond112.not, label %._crit_edge68, label %.lr.ph.us.preheader, !llvm.loop !1663

.lr.ph67.split.split:                             ; preds = %.lr.ph67
  %.not5.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us, label %.lr.ph.i.i.i.preheader

_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us:           ; preds = %.lr.ph67.split.split, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us
  %.04766.us88.us = phi i64 [ %i.bz, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us ], [ 0, %.lr.ph67.split.split ]
  %.04865.us89.us = phi ptr [ %i.by, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us ], [ %i.p, %.lr.ph67.split.split ] ; 2 uses
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %4, ptr noundef %.04865.us89.us, i1 noundef zeroext false)
  %i.by = getelementptr inbounds nuw i8, ptr %.04865.us89.us, i64 %.idx
  %i.bz = add nuw nsw i64 %.04766.us88.us, 1      ; 2 uses
  %exitcond109.not = icmp eq i64 %i.bz, %i.f
  br i1 %exitcond109.not, label %._crit_edge68, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us, !llvm.loop !1663

._crit_edge68:                                    ; preds = %.lr.ph.i.i.i.preheader, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us, %._crit_edge.us, %_ZNK6casadi6MXNode3depEx.exit
  ret i32 0

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph67.split.split, %.lr.ph.i.i.i.preheader
  %.04766 = phi i64 [ %i.cb, %.lr.ph.i.i.i.preheader ], [ 0, %.lr.ph67.split.split ]
  %.04865 = phi ptr [ %i.ca, %.lr.ph.i.i.i.preheader ], [ %i.p, %.lr.ph67.split.split ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %.idx, i1 false), !tbaa !97
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %4, ptr noundef %.04865, i1 noundef zeroext false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %.04865, i8 0, i64 %.idx, i1 false), !tbaa !97
  %i.ca = getelementptr inbounds i8, ptr %.04865, i64 %.idx
  %i.cb = add nuw nsw i64 %.04766, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.f
  br i1 %exitcond.not, label %._crit_edge68, label %.lr.ph.i.i.i.preheader, !llvm.loop !1663
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6casadi5SolveILb1EE2opEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i64 53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi5SolveILb1EE4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map.120") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca [1 x %"struct.std::pair.226"], align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 1, ptr %i.a, align 1, !tbaa !166
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA3_KcbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.259, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %0, ptr %2, align 8, !tbaa !270
  %i.g = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i unwind label %bb.a

.body:                                            ; preds = %.lr.ph.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.i

bb.a:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i: ; preds = %.noexc.i
  %i.l = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !60
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi5SolveILb1EE14serialize_bodyERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi6MXNode14serialize_bodyERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi5SolveILb1EE14serialize_typeERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.62, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !60
  %i.d = load ptr, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !154, !range !132, !noundef !133
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %.noexc5.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc5.i unwind label %bb.d

.noexc5.i:                                        ; preds = %bb.c, %bb.b
  invoke void @_ZN6casadi17SerializingStream4packEi(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.h)
          to label %_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i unwind label %bb.d

_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i: ; preds = %.noexc5.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !60
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #33
  br label %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit

bb.d:                                             ; preds = %.noexc5.i, %bb.c, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !60
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %common.resume

_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit: ; preds = %_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.u, ptr noundef nonnull align 1 dereferenceable(9) @.str.260, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.v, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.w, align 1, !tbaa !60
  %i.x = load i8, ptr %i.i, align 8, !tbaa !154, !range !132, !noundef !133
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %.noexc6

bb.e:                                             ; preds = %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit
  invoke void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.e, %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit
  invoke void @_ZN6casadi17SerializingStream4packEb(ptr noundef nonnull align 8 dereferenceable(73) %1, i1 noundef zeroext true)
          to label %_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.f

_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc6
  %i.z = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
end_hunk_0
begin_hunk_1_@_ZNK6casadi5SolveILb0EE10ad_reverseERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_:bb.a
  %i.hp = load ptr, ptr %12, align 8, !tbaa !114  ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIxSaIxEED2Ev.exit157, label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.hq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !115
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit157

_ZNSt6vectorIxSaIxEED2Ev.exit157:                 ; preds = %bb.bf, %.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn80.pn = phi { ptr, i32 } [ %i.bv, %bb.p ], [ %.pn80, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn80, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #32
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit157, %bb.o
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn80.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit157 ], [ %i.bu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.k
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %bb.k ], [ %.pn80.pn.pn, %bb.bg ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.g, %bb.f
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn84.pn, %bb.bh ], [ %i.au, %bb.g ], [ %i.at, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.loopexit.split-lp163

.loopexit.split-lp163:                            ; preds = %.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bi
  %.pn88 = phi { ptr, i32 } [ %.pn84.pn.pn, %bb.bi ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn88
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi5SolveILb0EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 912
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 6 uses
  %i.k = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  %i.l = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.m = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.r = icmp sgt i64 %i.m, 1
  %i.s = icmp eq i64 %i.m, 1
  %.idx = shl i64 %i.m, 3                         ; 6 uses
  %i.t = icmp sgt i64 %i.m, 0
  br i1 %i.t, label %.lr.ph52.split.us.preheader, label %.lr.ph52.split.split

.lr.ph52.split.us.preheader:                      ; preds = %.lr.ph52
  %i.u = load ptr, ptr %1, align 8, !tbaa !111
  br label %.lr.ph52.split.us

.lr.ph52.split.us:                                ; preds = %.lr.ph52.split.us.preheader, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us
  %.04051.us = phi i64 [ %i.an, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us ], [ 0, %.lr.ph52.split.us.preheader ]
  %.04150.us = phi ptr [ %i.am, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us ], [ %i.p, %.lr.ph52.split.us.preheader ] ; 3 uses
  %.04249.us = phi ptr [ %i.v, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us ], [ %i.u, %.lr.ph52.split.us.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.04249.us, i64 %i.m
  br i1 %i.r, label %bb.e, label %bb.c, !prof !116

bb.c:                                             ; preds = %.lr.ph52.split.us
  br i1 %i.s, label %bb.d, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %.04249.us, align 8, !tbaa !97
  store i64 %i.w, ptr %4, align 8, !tbaa !97
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us

bb.e:                                             ; preds = %.lr.ph52.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %4, ptr align 8 %.04249.us, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us

_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us:              ; preds = %bb.e, %bb.d, %bb.c
  %.pre = load i64, ptr %i.k, align 8, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us, %.loopexit.us
  %i.x = phi i64 [ %.pre, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us ], [ %i.ao, %.loopexit.us ] ; 2 uses
  %.03947.us = phi i64 [ 0, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us ], [ %i.y, %.loopexit.us ]
  %i.y = add nuw nsw i64 %.03947.us, 1            ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = icmp slt i64 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %bb.f, %.lr.ph.us
  %.046.us = phi i64 [ %i.aj, %.lr.ph.us ], [ %i.x, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.046.us
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !97
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.046.us
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !97
  %i.ag = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ad ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !97
  %i.ai = or i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !97
  %i.aj = add nsw i64 %.046.us, 1                 ; 2 uses
  %i.ak = load i64, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.al = icmp slt i64 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !1704

_ZSt4fillIPyiEvT_S1_RKT0_.exit.us:                ; preds = %.loopexit.us
  %i.am = getelementptr i8, ptr %.04150.us, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr align 8 %.04150.us, i8 0, i64 %.idx, i1 false), !tbaa !97
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %.04150.us, ptr noundef %4, i1 noundef zeroext false)
  %i.an = add nuw nsw i64 %.04051.us, 1           ; 2 uses
  %exitcond83.not = icmp eq i64 %i.an, %i.f
  br i1 %exitcond83.not, label %._crit_edge53, label %.lr.ph52.split.us, !llvm.loop !1705

.loopexit.us:                                     ; preds = %.lr.ph.us, %bb.f
  %i.ao = phi i64 [ %i.aa, %bb.f ], [ %i.ak, %.lr.ph.us ]
  %exitcond82.not = icmp eq i64 %i.y, %i.m
  br i1 %exitcond82.not, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us, label %bb.f, !llvm.loop !1706

.lr.ph52.split.split:                             ; preds = %.lr.ph52
  %.not5.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not5.i.i.i, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67:            ; preds = %.lr.ph52.split.split, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67
  %.04051.us64 = phi i64 [ %i.aq, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67 ], [ 0, %.lr.ph52.split.split ]
  %.04150.us65 = phi ptr [ %i.ap, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67 ], [ %i.p, %.lr.ph52.split.split ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04150.us65, i64 %.idx
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %.04150.us65, ptr noundef %4, i1 noundef zeroext false)
  %i.aq = add nuw nsw i64 %.04051.us64, 1         ; 2 uses
  %exitcond81.not = icmp eq i64 %i.aq, %i.f
  br i1 %exitcond81.not, label %._crit_edge53, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67, !llvm.loop !1705

._crit_edge53:                                    ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit.us67, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us, %_ZNK6casadi6MXNode3depEx.exit
  ret i32 0

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %.lr.ph52.split.split, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  %.04051 = phi i64 [ %i.as, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit ], [ 0, %.lr.ph52.split.split ]
  %.04150 = phi ptr [ %i.ar, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit ], [ %i.p, %.lr.ph52.split.split ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.04150, i8 0, i64 %.idx, i1 false), !tbaa !97
  %i.ar = getelementptr inbounds i8, ptr %.04150, i64 %.idx
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %.04150, ptr noundef %4, i1 noundef zeroext false)
  %i.as = add nuw nsw i64 %.04051, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.f
  br i1 %exitcond.not, label %._crit_edge53, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, !llvm.loop !1705
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi5SolveILb0EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 912
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 6 uses
  %i.k = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  %i.l = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.m = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl i64 %i.m, 3                         ; 9 uses
  %i.r = icmp sgt i64 %i.m, 0
  br i1 %i.r, label %.lr.ph67.split.us.preheader, label %.lr.ph67.split.split

.lr.ph67.split.us.preheader:                      ; preds = %.lr.ph67
  %5 = load ptr, ptr %1, align 8, !tbaa !111      ; 3 uses
  %scevgep = getelementptr i8, ptr %4, i64 %.idx
  %i.s = mul i64 %i.f, %i.m
  %i.t = shl i64 %i.s, 3
  %scevgep125 = getelementptr i8, ptr %5, i64 %i.t
  %min.iters.check = icmp ult i64 %i.m, 4
  %bound0 = icmp ult ptr %5, %scevgep
  %bound1 = icmp ult ptr %4, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %.idx, 0
  %i.u = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.m, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge.us, %.lr.ph67.split.us.preheader
  %.04766.us = phi i64 [ %i.ca, %._crit_edge.us ], [ 0, %.lr.ph67.split.us.preheader ]
  %.04865.us = phi ptr [ %i.v, %._crit_edge.us ], [ %i.p, %.lr.ph67.split.us.preheader ] ; 3 uses
  %.04964.us = phi ptr [ %i.bz, %._crit_edge.us ], [ %5, %.lr.ph67.split.us.preheader ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %.idx, i1 false), !tbaa !97
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %4, ptr noundef %.04865.us, i1 noundef zeroext true)
  %i.v = getelementptr i8, ptr %.04865.us, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr align 8 %.04865.us, i8 0, i64 %.idx, i1 false), !tbaa !97
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.u
  br i1 %brmerge, label %.lr.ph.us.preheader129, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !97, !alias.scope !1716
  %wide.load126 = load <2 x i64>, ptr %i.x, align 8, !tbaa !97, !alias.scope !1716
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %index ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load127 = load <2 x i64>, ptr %i.y, align 8, !tbaa !97, !alias.scope !1717, !noalias !1716
  %wide.load128 = load <2 x i64>, ptr %i.z, align 8, !tbaa !97, !alias.scope !1717, !noalias !1716
  %i.aa = or <2 x i64> %wide.load127, %wide.load
  %i.ab = or <2 x i64> %wide.load128, %wide.load126
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !97, !alias.scope !1717, !noalias !1716
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !97, !alias.scope !1717, !noalias !1716
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1710

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader.us, label %.lr.ph.us.preheader129

.lr.ph.us.preheader129:                           ; preds = %.lr.ph.us.preheader, %middle.block
  %.04659.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader129, %.lr.ph.us.prol
  %.04659.us.prol = phi i64 [ %i.ai, %.lr.ph.us.prol ], [ %.04659.us.ph, %.lr.ph.us.preheader129 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader129 ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04659.us.prol
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %.04659.us.prol ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !97
  %i.ah = or i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !97
  %i.ai = add nuw nsw i64 %.04659.us.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !1711

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader129
  %.04659.us.unr = phi i64 [ %.04659.us.ph, %.lr.ph.us.preheader129 ], [ %i.ai, %.lr.ph.us.prol ]
  %i.aj = sub nsw i64 %.04659.us.ph, %i.m
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %.preheader.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.04659.us = phi i64 [ %i.bi, %.lr.ph.us ], [ %.04659.us.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04659.us
  %i.am = load i64, ptr %i.al, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %.04659.us ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !97
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !97
  %i.aq = add nuw nsw i64 %.04659.us, 1           ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !97
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %i.aq ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !97
  %i.av = or i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !97
  %i.aw = add nuw nsw i64 %.04659.us, 2           ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %i.aw ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !97
  %i.bb = or i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !97
  %i.bc = add nuw nsw i64 %.04659.us, 3           ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %i.bc ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !97
  %i.bh = or i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !97
  %i.bi = add nuw nsw i64 %.04659.us, 4           ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %i.bi, %i.m
  br i1 %exitcond110.not.3, label %.preheader.us, label %.lr.ph.us, !llvm.loop !1712

bb.c:                                             ; preds = %.preheader.us, %.loopexit.us
  %i.bj = phi i64 [ %.pre, %.preheader.us ], [ %i.by, %.loopexit.us ] ; 2 uses
  %.04562.us = phi i64 [ 0, %.preheader.us ], [ %i.bk, %.loopexit.us ]
  %i.bk = add nuw nsw i64 %.04562.us, 1           ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !97 ; 2 uses
  %i.bn = icmp slt i64 %i.bj, %i.bm
  br i1 %i.bn, label %.lr.ph61.us, label %.loopexit.us

.lr.ph61.us:                                      ; preds = %bb.c, %.lr.ph61.us
  %.060.us = phi i64 [ %i.bv, %.lr.ph61.us ], [ %i.bj, %bb.c ] ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.060.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !97
  %i.bq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !97
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.060.us ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !97
  %i.bu = or i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !97
  %i.bv = add nsw i64 %.060.us, 1                 ; 2 uses
  %i.bw = load i64, ptr %i.bl, align 8, !tbaa !97 ; 2 uses
  %i.bx = icmp slt i64 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph61.us, label %.loopexit.us, !llvm.loop !1713

.loopexit.us:                                     ; preds = %.lr.ph61.us, %bb.c
  %i.by = phi i64 [ %i.bm, %bb.c ], [ %i.bw, %.lr.ph61.us ]
  %exitcond111.not = icmp eq i64 %i.bk, %i.m
  br i1 %exitcond111.not, label %._crit_edge.us, label %bb.c, !llvm.loop !1714

.preheader.us:                                    ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block
  %.pre = load i64, ptr %i.k, align 8, !tbaa !97
  br label %bb.c

._crit_edge.us:                                   ; preds = %.loopexit.us
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.04964.us, i64 %i.m
  %i.ca = add nuw nsw i64 %.04766.us, 1           ; 2 uses
  %exitcond112.not = icmp eq i64 %i.ca, %i.f
  br i1 %exitcond112.not, label %._crit_edge68, label %.lr.ph.us.preheader, !llvm.loop !1715

.lr.ph67.split.split:                             ; preds = %.lr.ph67
  %.not5.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us, label %.lr.ph.i.i.i.preheader

_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us:           ; preds = %.lr.ph67.split.split, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us
  %.04766.us88.us = phi i64 [ %i.cc, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us ], [ 0, %.lr.ph67.split.split ]
  %.04865.us89.us = phi ptr [ %i.cb, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us ], [ %i.p, %.lr.ph67.split.split ] ; 2 uses
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %4, ptr noundef %.04865.us89.us, i1 noundef zeroext true)
  %i.cb = getelementptr inbounds nuw i8, ptr %.04865.us89.us, i64 %.idx
  %i.cc = add nuw nsw i64 %.04766.us88.us, 1      ; 2 uses
  %exitcond109.not = icmp eq i64 %i.cc, %i.f
  br i1 %exitcond109.not, label %._crit_edge68, label %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us, !llvm.loop !1715

._crit_edge68:                                    ; preds = %.lr.ph.i.i.i.preheader, %_ZSt4fillIPyiEvT_S1_RKT0_.exit.us91.us, %._crit_edge.us, %_ZNK6casadi6MXNode3depEx.exit
  ret i32 0

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph67.split.split, %.lr.ph.i.i.i.preheader
  %.04766 = phi i64 [ %i.ce, %.lr.ph.i.i.i.preheader ], [ 0, %.lr.ph67.split.split ]
  %.04865 = phi ptr [ %i.cd, %.lr.ph.i.i.i.preheader ], [ %i.p, %.lr.ph67.split.split ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %.idx, i1 false), !tbaa !97
  tail call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %4, ptr noundef %.04865, i1 noundef zeroext true)
  tail call void @llvm.memset.p0.i64(ptr align 8 %.04865, i8 0, i64 %.idx, i1 false), !tbaa !97
  %i.cd = getelementptr inbounds i8, ptr %.04865, i64 %.idx
  %i.ce = add nuw nsw i64 %.04766, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.f
  br i1 %exitcond.not, label %._crit_edge68, label %.lr.ph.i.i.i.preheader, !llvm.loop !1715
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6casadi5SolveILb0EE2opEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i64 53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi5SolveILb0EE4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map.120") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca [1 x %"struct.std::pair.226"], align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 0, ptr %i.a, align 1, !tbaa !166
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA3_KcbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.259, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %0, ptr %2, align 8, !tbaa !270
  %i.g = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i unwind label %bb.a

.body:                                            ; preds = %.lr.ph.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.i

bb.a:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i: ; preds = %.noexc.i
  %i.l = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !60
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi5SolveILb0EE14serialize_bodyERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi6MXNode14serialize_bodyERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi5SolveILb0EE14serialize_typeERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.62, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !60
  %i.d = load ptr, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !154, !range !132, !noundef !133
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %.noexc5.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc5.i unwind label %bb.d

.noexc5.i:                                        ; preds = %bb.c, %bb.b
  invoke void @_ZN6casadi17SerializingStream4packEi(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.h)
          to label %_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i unwind label %bb.d

_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i: ; preds = %.noexc5.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !60
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #33
  br label %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit

bb.d:                                             ; preds = %.noexc5.i, %bb.c, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !60
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %common.resume

_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit: ; preds = %_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.u, ptr noundef nonnull align 1 dereferenceable(9) @.str.260, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.v, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.w, align 1, !tbaa !60
  %i.x = load i8, ptr %i.i, align 8, !tbaa !154, !range !132, !noundef !133
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %.noexc6

bb.e:                                             ; preds = %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit
  invoke void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.e, %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit
  invoke void @_ZN6casadi17SerializingStream4packEb(ptr noundef nonnull align 8 dereferenceable(73) %1, i1 noundef zeroext false)
          to label %_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.f

_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc6
  %i.z = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
end_hunk_1
