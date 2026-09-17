Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/transpose?download=true
inline.NumInlined: 483
inline.NumDeleted: 172
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK6casadi9Transpose10sp_forwardEPPKyPPyPxS4_:bb.a
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ah
  store i64 %i.ad, ptr %i.aj, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %.01415, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %.01316, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [8 x i8], ptr %3, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !44 ; 2 uses
  %i.aq = add nsw i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap
  store i64 %i.al, ptr %i.ar, align 8, !tbaa !44
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !101
}

declare noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi9Transpose10sp_reverseEPPyS2_PxS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !54     ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !0
  %i.g = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 0) #21
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 2 uses
  %i.p = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 3 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %.idx, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.r, i1 false)
  br label %_ZSt4copyIPKxPxET0_T_S4_S3_.exit

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.e, label %_ZSt4copyIPKxPxET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.o, align 8, !tbaa !44
  store i64 %i.t, ptr %3, align 8, !tbaa !44
  br label %_ZSt4copyIPKxPxET0_T_S4_S3_.exit

_ZSt4copyIPKxPxET0_T_S4_S3_.exit:                 ; preds = %bb.c, %bb.d, %bb.e
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIPKxPxET0_T_S4_S3_.exit
  %xtraiter = and i64 %i.g, 1
  %i.v = icmp eq i64 %i.g, 1
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01718.epil.init = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.w = load i64, ptr %.01718.epil.init, align 8, !tbaa !44
  %i.x = getelementptr inbounds [8 x i8], ptr %3, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !44   ; 2 uses
  %i.z = add nsw i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !44
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ac = load i64, ptr %.020.epil.init, align 8, !tbaa !44
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %.020.epil.init, align 8, !tbaa !44
  store i64 0, ptr %i.aa, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZSt4copyIPKxPxET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.av, %.lr.ph ] ; 4 uses
  %.01718 = phi ptr [ %i.m, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.01718, i64 8
  %i.af = load i64, ptr %.01718, align 8, !tbaa !44
  %i.ag = getelementptr inbounds [8 x i8], ptr %3, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !44
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %i.am = load i64, ptr %.020, align 8, !tbaa !44
  %i.an = or i64 %i.am, %i.ak
  store i64 %i.an, ptr %.020, align 8, !tbaa !44
  store i64 0, ptr %i.aj, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %.01718, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.aq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !44 ; 2 uses
  %i.as = add nsw i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !44
  %i.at = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ar ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %.020, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !44
  %i.ax = or i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.al, align 8, !tbaa !44
  store i64 0, ptr %i.at, align 8, !tbaa !44
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !102
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi14DenseTranspose10sp_forwardEPPKyPPyPxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = load ptr, ptr %2, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 0) #21
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 8 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i16.not = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i16.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit17

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 0) #21
  unreachable

_ZNK6casadi6MXNode3depEx.exit17:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 7 uses
  %i.n = icmp sgt i64 %i.i, 0
  %i.o = icmp sgt i64 %i.m, 0
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge22.split

.preheader.preheader:                             ; preds = %_ZNK6casadi6MXNode3depEx.exit17
  %min.iters.check = icmp ugt i64 %i.m, 5
  %ident.check.not = icmp eq i64 %i.i, 1
  %or.cond31 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %i.m, 9223372036854775804      ; 4 uses
  %i.p = shl i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.m, %n.vec
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01321 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %.01420 = phi ptr [ %.lcssa, %._crit_edge ], [ %i.c, %.preheader.preheader ] ; 5 uses
  %i.q = getelementptr [8 x i8], ptr %i.a, i64 %.01321 ; 6 uses
  br i1 %or.cond31, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.r = mul i64 %.01321, -8
  %i.s = sub i64 %i.r, %i.b
  %.0142028 = ptrtoaddr ptr %.01420 to i64
  %i.t = add i64 %i.s, %.0142028
  %i.u = add i64 %i.t, -1
  %diff.check = icmp ult i64 %i.u, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %5 = getelementptr i8, ptr %.01420, i64 %i.p    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01420, i64 %i.v ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !44
  %wide.load29 = load <2 x i64>, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !44
  store <2 x i64> %wide.load29, ptr %i.y, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.118.ph = phi ptr [ %.01420, %vector.memcheck ], [ %.01420, %.preheader ], [ %5, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.019.prol = phi i64 [ %i.ae, %scalar.ph.prol ], [ %.019.ph, %scalar.ph.preheader ] ; 2 uses
  %.118.prol = phi ptr [ %i.ad, %scalar.ph.prol ], [ %.118.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = mul nuw nsw i64 %.019.prol, %i.i
  %i.ab = getelementptr [8 x i8], ptr %i.q, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %.118.prol, i64 8 ; 3 uses
  store i64 %i.ac, ptr %.118.prol, align 8, !tbaa !44
  %i.ae = add nuw nsw i64 %.019.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !104

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa32.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.019.unr = phi i64 [ %.019.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.118.unr = phi ptr [ %.118.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.af = sub nsw i64 %.019.ph, %i.m
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %scalar.ph

._crit_edge22.split:                              ; preds = %._crit_edge, %_ZNK6casadi6MXNode3depEx.exit17
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %5, %middle.block ], [ %.lcssa32.unr, %scalar.ph.prol.loopexit ], [ %i.ba, %scalar.ph ]
  %i.ah = add nuw nsw i64 %.01321, 1              ; 2 uses
  %exitcond23.not = icmp eq i64 %i.ah, %i.i
  br i1 %exitcond23.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !105

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.019 = phi i64 [ %i.bb, %scalar.ph ], [ %.019.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.118 = phi ptr [ %i.ba, %scalar.ph ], [ %.118.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ai = mul nuw nsw i64 %.019, %i.i
  %i.aj = getelementptr [8 x i8], ptr %i.q, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %.118, i64 8
  store i64 %i.ak, ptr %.118, align 8, !tbaa !44
  %i.am = add nuw nsw i64 %.019, 1
  %i.an = mul nuw nsw i64 %i.am, %i.i
  %i.ao = getelementptr [8 x i8], ptr %i.q, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %.118, i64 16
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !44
  %i.ar = add nuw nsw i64 %.019, 2
  %i.as = mul nuw nsw i64 %i.ar, %i.i
  %i.at = getelementptr [8 x i8], ptr %i.q, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %.118, i64 24
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !44
  %i.aw = add nuw nsw i64 %.019, 3
  %i.ax = mul nuw nsw i64 %i.aw, %i.i
  %i.ay = getelementptr [8 x i8], ptr %i.q, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %.118, i64 32 ; 2 uses
  store i64 %i.az, ptr %i.av, align 8, !tbaa !44
  %i.bb = add nuw nsw i64 %.019, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bb, %i.m
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !106
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi14DenseTranspose10sp_reverseEPPyS2_PxS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 0) #21
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 7 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i17.not = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i17.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit18

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 0) #21
  unreachable

_ZNK6casadi6MXNode3depEx.exit18:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 9 uses
  %i.m = icmp sgt i64 %i.h, 0
  %i.n = icmp sgt i64 %i.l, 0
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge23.split

.preheader.preheader:                             ; preds = %_ZNK6casadi6MXNode3depEx.exit18
  %i.o = shl i64 %i.l, 3
  %i.p = add nuw i64 %i.h, %i.l
  %i.q = shl i64 %i.p, 3
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.r, i64 -8
  %min.iters.check = icmp ugt i64 %i.l, 3
  %ident.check.not = icmp eq i64 %i.h, 1
  %or.cond34 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %i.l, 9223372036854775804      ; 4 uses
  %i.s = shl i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.l, %n.vec
  %xtraiter = and i64 %i.l, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01422 = phi i64 [ %i.aj, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.01521 = phi ptr [ %.lcssa, %._crit_edge ], [ %i.b, %.preheader.preheader ] ; 6 uses
  %i.t = getelementptr [8 x i8], ptr %i.a, i64 %.01422 ; 4 uses
  br i1 %or.cond34, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %scevgep29 = getelementptr i8, ptr %.01521, i64 %i.o
  %bound0 = icmp ult ptr %i.a, %scevgep29
  %bound1 = icmp ult ptr %.01521, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %5 = getelementptr i8, ptr %.01521, i64 %i.s    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01521, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !44, !alias.scope !113
  %wide.load30 = load <2 x i64>, ptr %i.v, align 8, !tbaa !44, !alias.scope !113
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16       ; 2 uses
  %wide.load31 = load <2 x i64>, ptr %i.w, align 8, !tbaa !44, !alias.scope !114, !noalias !113
  %wide.load32 = load <2 x i64>, ptr %i.x, align 8, !tbaa !44, !alias.scope !114, !noalias !113
  %i.y = or <2 x i64> %wide.load31, %wide.load
  %i.z = or <2 x i64> %wide.load32, %wide.load30
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !44, !alias.scope !114, !noalias !113
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !44, !alias.scope !114, !noalias !113
  store <2 x i64> zeroinitializer, ptr %next.gep, align 8, !tbaa !44, !alias.scope !113
  store <2 x i64> zeroinitializer, ptr %i.v, align 8, !tbaa !44, !alias.scope !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.020.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.119.ph = phi ptr [ %.01521, %vector.memcheck ], [ %.01521, %.preheader ], [ %5, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.020.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = load i64, ptr %.119.ph, align 8, !tbaa !44
  %i.ac = mul nuw nsw i64 %.020.ph, %i.h
  %i.ad = getelementptr [8 x i8], ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.af = or i64 %i.ae, %i.ab
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %.119.ph, i64 8 ; 2 uses
  store i64 0, ptr %.119.ph, align 8, !tbaa !44
  %i.ah = or disjoint i64 %.020.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa35.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.020.unr = phi i64 [ %.020.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.119.unr = phi ptr [ %.119.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.l, %.neg
  br i1 %i.ai, label %._crit_edge, label %scalar.ph

._crit_edge23.split:                              ; preds = %._crit_edge, %_ZNK6casadi6MXNode3depEx.exit18
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %5, %middle.block ], [ %.lcssa35.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ]
  %i.aj = add nuw nsw i64 %.01422, 1              ; 2 uses
  %exitcond24.not = icmp eq i64 %i.aj, %i.h
  br i1 %exitcond24.not, label %._crit_edge23.split, label %.preheader, !llvm.loop !111

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.020 = phi i64 [ %i.ax, %scalar.ph ], [ %.020.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.119 = phi ptr [ %i.aw, %scalar.ph ], [ %.119.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ak = load i64, ptr %.119, align 8, !tbaa !44
  %i.al = mul nuw nsw i64 %.020, %i.h
  %i.am = getelementptr [8 x i8], ptr %i.t, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !44
  %i.ao = or i64 %i.an, %i.ak
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %.119, i64 8 ; 2 uses
  store i64 0, ptr %.119, align 8, !tbaa !44
  %i.aq = add nuw nsw i64 %.020, 1
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.as = mul nuw nsw i64 %i.aq, %i.h
  %i.at = getelementptr [8 x i8], ptr %i.t, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
  %i.av = or i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %.119, i64 16 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !44
  %i.ax = add nuw nsw i64 %.020, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ax, %i.l
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !112
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi9Transpose4dispERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = load ptr, ptr %2, align 8, !tbaa !58     ; 3 uses
  %.not.i.i.not = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 0) #21
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18, !noalias !119
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20, !noalias !119 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !14, !alias.scope !120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !20, !alias.scope !120
  store i8 0, ptr %i.g, align 8, !tbaa !19, !alias.scope !120
  %i.i = add i64 %i.f, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20, !alias.scope !120
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %i.f
  br i1 %i.l, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !20, !alias.scope !120
  %i.o = icmp eq i64 %i.n, 4611686018427387903
  br i1 %i.o, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #21
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !120 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.g, align 8, !tbaa !19, !alias.scope !120
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #20
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.q

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi9Transpose7eval_mxERKSt6vectorINS_2MXESaIS2_EERS4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  call void @_ZNK6casadi2MX1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %2, align 8, !tbaa !39
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.b ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.a
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.d
}

declare void @_ZNK6casadi2MX1TEv(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi9Transpose10ad_forwardERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = load ptr, ptr %2, align 8, !tbaa !62
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6casadi2MXaSERKS0_.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6casadi2MXaSERKS0_.exit
  %.08 = phi i64 [ %i.k, %_ZN6casadi2MXaSERKS0_.exit ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = load ptr, ptr %1, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.08
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  call void @_ZNK6casadi2MX1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %2, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.08
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.b ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %.lr.ph
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.k = add nuw nsw i64 %.08, 1                  ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.m = load ptr, ptr %2, align 8, !tbaa !62
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24
  %i.r = icmp ult i64 %i.k, %i.q
end_hunk_0
