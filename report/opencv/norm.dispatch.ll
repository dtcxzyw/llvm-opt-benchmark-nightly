Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/norm.dispatch?download=true
inline.NumInlined: 846
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN2cv12cpu_baselineL14normDiffL1_16uEPKtS2_PKhPiii:bb.a
  %wide.trip.count47.i = zext nneg i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph39.split.us.i

.lr.ph39.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph39.split.us.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.lr.ph39.split.us.preheader.i ], [ %indvars.iv.next45.i, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.02637.us.i = phi i32 [ %i.a, %.lr.ph39.split.us.preheader.i ], [ %.2.us.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %.02736.us.i = phi ptr [ %0, %.lr.ph39.split.us.preheader.i ], [ %i.ag, %..loopexit_crit_edge.us.i ] ; 3 uses
  %.02835.us.i = phi ptr [ %1, %.lr.ph39.split.us.preheader.i ], [ %i.ah, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv44.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18
  %.not30.us.i = icmp eq i8 %i.f, 0
  br i1 %.not30.us.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph39.split.us.i
  br i1 %min.iters.check, label %.preheader.us.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i.preheader
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02637.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.g, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.02736.us.i, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %wide.load = load <4 x i16>, ptr %i.h, align 2, !tbaa !23
  %wide.load13 = load <4 x i16>, ptr %i.i, align 2, !tbaa !23
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.02835.us.i, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load14 = load <4 x i16>, ptr %i.j, align 2, !tbaa !23
  %wide.load15 = load <4 x i16>, ptr %i.k, align 2, !tbaa !23
  %i.l = zext <4 x i16> %wide.load to <4 x i32>
  %i.m = zext <4 x i16> %wide.load13 to <4 x i32>
  %i.n = zext <4 x i16> %wide.load14 to <4 x i32>
  %i.o = zext <4 x i16> %wide.load15 to <4 x i32>
  %i.p = sub nsw <4 x i32> %i.l, %i.n
  %i.q = sub nsw <4 x i32> %i.m, %i.o
  %i.r = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.p, i1 true)
  %i.s = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.q, i1 true)
  %i.t = add <4 x i32> %i.r, %vec.phi             ; 2 uses
  %i.u = add <4 x i32> %i.s, %vec.phi12           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.u, %i.t
  %i.w = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %..loopexit_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.us.i.preheader ], [ %n.vec, %middle.block ]
  %.133.us.i.ph = phi i32 [ %.02637.us.i, %.preheader.us.i.preheader ], [ %i.w, %middle.block ]
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader36, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.us.i ], [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ] ; 3 uses
  %.133.us.i = phi i32 [ %i.af, %.preheader.us.i ], [ %.133.us.i.ph, %.preheader.us.i.preheader36 ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.02736.us.i, i64 %indvars.iv.i
  %i.y = load i16, ptr %i.x, align 2, !tbaa !23
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.02835.us.i, i64 %indvars.iv.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !23
  %i.ab = zext i16 %i.y to i32
  %i.ac = zext i16 %i.aa to i32
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %i.ae = tail call noundef i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %i.af = add nsw i32 %i.ae, %.133.us.i           ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !299

..loopexit_crit_edge.us.i:                        ; preds = %.preheader.us.i, %middle.block, %.lr.ph39.split.us.i
  %.2.us.i = phi i32 [ %.02637.us.i, %.lr.ph39.split.us.i ], [ %i.w, %middle.block ], [ %i.af, %.preheader.us.i ] ; 2 uses
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.02736.us.i, i64 %i.d
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.02835.us.i, i64 %i.d
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %_ZN2cv12cpu_baseline11normDiffL1_ItiEEiPKT_S4_PKhPT0_ii.exit, label %.lr.ph39.split.us.i, !llvm.loop !300

bb.b:                                             ; preds = %bb.a
  %i.ai = mul nsw i32 %5, %4                      ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDItiEclEPKtS4_i.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.ai to i64 ; 3 uses
  %min.iters.check17 = icmp ult i32 %i.ai, 8
  br i1 %min.iters.check17, label %.lr.ph.i.i.preheader, label %vector.ph18

vector.ph18:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec19 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph18
  %index21 = phi i64 [ 0, %vector.ph18 ], [ %index.next28, %vector.body20 ] ; 3 uses
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph18 ], [ %i.aw, %vector.body20 ]
  %vec.phi23 = phi <4 x i32> [ zeroinitializer, %vector.ph18 ], [ %i.ax, %vector.body20 ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %wide.load24 = load <4 x i16>, ptr %i.ak, align 2, !tbaa !23
  %wide.load25 = load <4 x i16>, ptr %i.al, align 2, !tbaa !23
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index21 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %wide.load26 = load <4 x i16>, ptr %i.am, align 2, !tbaa !23
  %wide.load27 = load <4 x i16>, ptr %i.an, align 2, !tbaa !23
  %i.ao = zext <4 x i16> %wide.load24 to <4 x i32>
  %i.ap = zext <4 x i16> %wide.load25 to <4 x i32>
  %i.aq = zext <4 x i16> %wide.load26 to <4 x i32>
  %i.ar = zext <4 x i16> %wide.load27 to <4 x i32>
  %i.as = sub nsw <4 x i32> %i.ao, %i.aq
  %i.at = sub nsw <4 x i32> %i.ap, %i.ar
  %i.au = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.as, i1 true)
  %i.av = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.at, i1 true)
  %i.aw = add <4 x i32> %i.au, %vec.phi22         ; 2 uses
  %i.ax = add <4 x i32> %i.av, %vec.phi23         ; 2 uses
  %index.next28 = add nuw i64 %index21, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next28, %n.vec19
  br i1 %i.ay, label %middle.block29, label %vector.body20, !llvm.loop !301

middle.block29:                                   ; preds = %vector.body20
  %bin.rdx30 = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx30) ; 2 uses
  %cmp.n31 = icmp eq i64 %n.vec19, %wide.trip.count.i.i
  br i1 %cmp.n31, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDItiEclEPKtS4_i.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block29
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec19, %middle.block29 ]
  %.011.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.az, %middle.block29 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.011.i.i = phi i32 [ %i.bi, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !23
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !23
  %i.be = zext i16 %i.bb to i32
  %i.bf = zext i16 %i.bd to i32
  %i.bg = sub nsw i32 %i.be, %i.bf
  %i.bh = tail call noundef i32 @llvm.abs.i32(i32 %i.bg, i1 true)
  %i.bi = add nuw nsw i32 %i.bh, %.011.i.i        ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDItiEclEPKtS4_i.exit.i, label %.lr.ph.i.i, !llvm.loop !302

_ZNK2cv12cpu_baseline15NormDiffL1_SIMDItiEclEPKtS4_i.exit.i: ; preds = %.lr.ph.i.i, %middle.block29, %bb.b
  %.0.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.az, %middle.block29 ], [ %i.bi, %.lr.ph.i.i ]
  %i.bj = add nsw i32 %.0.lcssa.i.i, %i.a
  br label %_ZN2cv12cpu_baseline11normDiffL1_ItiEEiPKT_S4_PKhPT0_ii.exit

_ZN2cv12cpu_baseline11normDiffL1_ItiEEiPKT_S4_PKhPT0_ii.exit: ; preds = %..loopexit_crit_edge.us.i, %.preheader31.i, %.lr.ph39.i, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDItiEclEPKtS4_i.exit.i
  %.3.i = phi i32 [ %i.bj, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDItiEclEPKtS4_i.exit.i ], [ %i.a, %.preheader31.i ], [ %i.a, %.lr.ph39.i ], [ %.2.us.i, %..loopexit_crit_edge.us.i ]
  store i32 %.3.i, ptr %3, align 4, !tbaa !17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @_ZN2cv12cpu_baselineL14normDiffL1_16sEPKsS2_PKhPiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) #3 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !17     ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph39.i, label %_ZN2cv12cpu_baseline11normDiffL1_IsiEEiPKT_S4_PKhPT0_ii.exit

.lr.ph39.i:                                       ; preds = %.preheader31.i
  %i.c = icmp sgt i32 %5, 0
  %i.d = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.c, label %.lr.ph39.split.us.preheader.i, label %_ZN2cv12cpu_baseline11normDiffL1_IsiEEiPKT_S4_PKhPT0_ii.exit

.lr.ph39.split.us.preheader.i:                    ; preds = %.lr.ph39.i
  %wide.trip.count47.i = zext nneg i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph39.split.us.i

.lr.ph39.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph39.split.us.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.lr.ph39.split.us.preheader.i ], [ %indvars.iv.next45.i, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.02637.us.i = phi i32 [ %i.a, %.lr.ph39.split.us.preheader.i ], [ %.2.us.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %.02736.us.i = phi ptr [ %0, %.lr.ph39.split.us.preheader.i ], [ %i.v, %..loopexit_crit_edge.us.i ] ; 3 uses
  %.02835.us.i = phi ptr [ %1, %.lr.ph39.split.us.preheader.i ], [ %i.w, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv44.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18
  %.not30.us.i = icmp eq i8 %i.f, 0
  br i1 %.not30.us.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph39.split.us.i
  br i1 %min.iters.check, label %.preheader.us.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i.preheader
  %6 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02637.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %6, %vector.ph ], [ %15, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %16, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %.02736.us.i, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !23
  %wide.load13 = load <4 x i16>, ptr %i.h, align 2, !tbaa !23
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.02835.us.i, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.load14 = load <4 x i16>, ptr %i.i, align 2, !tbaa !23
  %wide.load15 = load <4 x i16>, ptr %i.j, align 2, !tbaa !23
  %7 = sext <4 x i16> %wide.load to <4 x i32>
  %8 = sext <4 x i16> %wide.load13 to <4 x i32>
  %9 = sext <4 x i16> %wide.load14 to <4 x i32>
  %10 = sext <4 x i16> %wide.load15 to <4 x i32>
  %11 = sub nsw <4 x i32> %7, %9
  %12 = sub nsw <4 x i32> %8, %10
  %13 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %11, i1 true)
  %14 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %12, i1 true)
  %15 = add <4 x i32> %13, %vec.phi               ; 2 uses
  %16 = add <4 x i32> %14, %vec.phi12             ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %16, %15
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %..loopexit_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.us.i.preheader ], [ %n.vec, %middle.block ]
  %.133.us.i.ph = phi i32 [ %.02637.us.i, %.preheader.us.i.preheader ], [ %i.l, %middle.block ]
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader36, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.us.i ], [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ] ; 3 uses
  %.133.us.i = phi i32 [ %i.u, %.preheader.us.i ], [ %.133.us.i.ph, %.preheader.us.i.preheader36 ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.02736.us.i, i64 %indvars.iv.i
  %i.n = load i16, ptr %i.m, align 2, !tbaa !23
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.02835.us.i, i64 %indvars.iv.i
  %i.p = load i16, ptr %i.o, align 2, !tbaa !23
  %i.q = sext i16 %i.n to i32
  %i.r = sext i16 %i.p to i32
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = tail call noundef i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.u = add nsw i32 %i.t, %.133.us.i             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !304

..loopexit_crit_edge.us.i:                        ; preds = %.preheader.us.i, %middle.block, %.lr.ph39.split.us.i
  %.2.us.i = phi i32 [ %.02637.us.i, %.lr.ph39.split.us.i ], [ %i.l, %middle.block ], [ %i.u, %.preheader.us.i ] ; 2 uses
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %.02736.us.i, i64 %i.d
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.02835.us.i, i64 %i.d
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %_ZN2cv12cpu_baseline11normDiffL1_IsiEEiPKT_S4_PKhPT0_ii.exit, label %.lr.ph39.split.us.i, !llvm.loop !305

bb.b:                                             ; preds = %bb.a
  %i.x = mul nsw i32 %5, %4                       ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIsiEclEPKsS4_i.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.x to i64 ; 3 uses
  %min.iters.check17 = icmp ult i32 %i.x, 8
  br i1 %min.iters.check17, label %.lr.ph.i.i.preheader, label %vector.ph18

vector.ph18:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec19 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph18
  %index21 = phi i64 [ 0, %vector.ph18 ], [ %index.next28, %vector.body20 ] ; 3 uses
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph18 ], [ %25, %vector.body20 ]
  %vec.phi23 = phi <4 x i32> [ zeroinitializer, %vector.ph18 ], [ %26, %vector.body20 ]
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index21 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load24 = load <4 x i16>, ptr %i.z, align 2, !tbaa !23
  %wide.load25 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !23
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index21 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load26 = load <4 x i16>, ptr %i.ab, align 2, !tbaa !23
  %wide.load27 = load <4 x i16>, ptr %i.ac, align 2, !tbaa !23
  %17 = sext <4 x i16> %wide.load24 to <4 x i32>
  %18 = sext <4 x i16> %wide.load25 to <4 x i32>
  %19 = sext <4 x i16> %wide.load26 to <4 x i32>
  %20 = sext <4 x i16> %wide.load27 to <4 x i32>
  %21 = sub nsw <4 x i32> %17, %19
  %22 = sub nsw <4 x i32> %18, %20
  %23 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %21, i1 true)
  %24 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %22, i1 true)
  %25 = add <4 x i32> %23, %vec.phi22             ; 2 uses
  %26 = add <4 x i32> %24, %vec.phi23             ; 2 uses
  %index.next28 = add nuw i64 %index21, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next28, %n.vec19
  br i1 %i.ad, label %middle.block29, label %vector.body20, !llvm.loop !306

middle.block29:                                   ; preds = %vector.body20
  %bin.rdx30 = add <4 x i32> %26, %25
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx30) ; 2 uses
  %cmp.n31 = icmp eq i64 %n.vec19, %wide.trip.count.i.i
  br i1 %cmp.n31, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIsiEclEPKsS4_i.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block29
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec19, %middle.block29 ]
  %.011.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ae, %middle.block29 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.011.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !23
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !23
  %i.aj = sext i16 %i.ag to i32
  %i.ak = sext i16 %i.ai to i32
  %i.al = sub nsw i32 %i.aj, %i.ak
  %i.am = tail call noundef i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.an = add nuw nsw i32 %i.am, %.011.i.i        ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIsiEclEPKsS4_i.exit.i, label %.lr.ph.i.i, !llvm.loop !307

_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIsiEclEPKsS4_i.exit.i: ; preds = %.lr.ph.i.i, %middle.block29, %bb.b
  %.0.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.ae, %middle.block29 ], [ %i.an, %.lr.ph.i.i ]
  %i.ao = add nsw i32 %.0.lcssa.i.i, %i.a
  br label %_ZN2cv12cpu_baseline11normDiffL1_IsiEEiPKT_S4_PKhPT0_ii.exit

_ZN2cv12cpu_baseline11normDiffL1_IsiEEiPKT_S4_PKhPT0_ii.exit: ; preds = %..loopexit_crit_edge.us.i, %.preheader31.i, %.lr.ph39.i, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIsiEclEPKsS4_i.exit.i
  %.3.i = phi i32 [ %i.ao, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIsiEclEPKsS4_i.exit.i ], [ %i.a, %.preheader31.i ], [ %i.a, %.lr.ph39.i ], [ %.2.us.i, %..loopexit_crit_edge.us.i ]
  store i32 %.3.i, ptr %3, align 4, !tbaa !17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @_ZN2cv12cpu_baselineL14normDiffL1_32sEPKiS2_PKhPdii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) #3 {
bb.a:
  %i.a = load double, ptr %3, align 8, !tbaa !27  ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph39.i, label %_ZN2cv12cpu_baseline11normDiffL1_IidEEiPKT_S4_PKhPT0_ii.exit

.lr.ph39.i:                                       ; preds = %.preheader31.i
  %i.c = icmp sgt i32 %5, 0
  %i.d = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.c, label %.lr.ph39.split.us.preheader.i, label %_ZN2cv12cpu_baseline11normDiffL1_IidEEiPKT_S4_PKhPT0_ii.exit

.lr.ph39.split.us.preheader.i:                    ; preds = %.lr.ph39.i
  %wide.trip.count47.i = zext nneg i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.e = icmp eq i32 %5, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %5 to i1
  br label %.lr.ph39.split.us.i

.lr.ph39.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph39.split.us.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.lr.ph39.split.us.preheader.i ], [ %indvars.iv.next45.i, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.02637.us.i = phi double [ %i.a, %.lr.ph39.split.us.preheader.i ], [ %.2.us.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %.02736.us.i = phi ptr [ %0, %.lr.ph39.split.us.preheader.i ], [ %i.ac, %..loopexit_crit_edge.us.i ] ; 4 uses
  %.02835.us.i = phi ptr [ %1, %.lr.ph39.split.us.preheader.i ], [ %i.ad, %..loopexit_crit_edge.us.i ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv44.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %.not30.us.i = icmp eq i8 %i.g, 0
  br i1 %.not30.us.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph39.split.us.i
  br i1 %i.e, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 4 uses
  %.133.us.i = phi double [ %i.u, %.preheader.us.i ], [ %.02637.us.i, %.preheader.us.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.02736.us.i, i64 %indvars.iv.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.02835.us.i, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17   ; 2 uses
  %.sroa.speculated5.i.us.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.k)
  %.sroa.speculated.i.us.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i)
  %i.l = sub i32 %.sroa.speculated5.i.us.i, %.sroa.speculated.i.us.i
  %i.m = uitofp i32 %i.l to double
  %i.n = fadd double %.133.us.i, %i.m
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.02736.us.i, i64 %indvars.iv.next.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.02835.us.i, i64 %indvars.iv.next.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17   ; 2 uses
  %.sroa.speculated5.i.us.i.1 = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.r)
  %.sroa.speculated.i.us.i.1 = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.p)
  %i.s = sub i32 %.sroa.speculated5.i.us.i.1, %.sroa.speculated.i.us.i.1
  %i.t = uitofp i32 %i.s to double
  %i.u = fadd double %i.n, %i.t                   ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, label %.preheader.us.i, !llvm.loop !308

..loopexit_crit_edge.us.i.loopexit.unr-lcssa:     ; preds = %.preheader.us.i
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next.i.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  %.133.us.i.epil.init = phi double [ %.02637.us.i, %.preheader.us.i.preheader ], [ %i.u, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.02736.us.i, i64 %indvars.iv.i.epil.init
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.02835.us.i, i64 %indvars.iv.i.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !17   ; 2 uses
  %.sroa.speculated5.i.us.i.epil = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y)
  %.sroa.speculated.i.us.i.epil = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.w)
  %i.z = sub i32 %.sroa.speculated5.i.us.i.epil, %.sroa.speculated.i.us.i.epil
  %i.aa = uitofp i32 %i.z to double
  %i.ab = fadd double %.133.us.i.epil.init, %i.aa
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %.preheader.us.i.epil.preheader, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, %.lr.ph39.split.us.i
  %.2.us.i = phi double [ %.02637.us.i, %.lr.ph39.split.us.i ], [ %i.u, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ], [ %i.ab, %.preheader.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.02736.us.i, i64 %i.d
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.02835.us.i, i64 %i.d
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %_ZN2cv12cpu_baseline11normDiffL1_IidEEiPKT_S4_PKhPT0_ii.exit, label %.lr.ph39.split.us.i, !llvm.loop !309

bb.b:                                             ; preds = %bb.a
  %i.ae = mul nsw i32 %5, %4                      ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.preheader.i.i, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.ae to i64 ; 2 uses
  %xtraiter15 = and i64 %wide.trip.count.i.i, 1
  %i.ag = icmp eq i32 %i.ae, 1
  br i1 %i.ag, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter19 = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %.011.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i.new ], [ %i.au, %.lr.ph.i.i ]
  %niter20 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter20.next.1, %.lr.ph.i.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !17 ; 2 uses
  %.sroa.speculated5.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.ak)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.ai)
  %i.al = sub i32 %.sroa.speculated5.i.i.i, %.sroa.speculated.i.i.i
  %i.am = uitofp i32 %i.al to double
  %i.an = fadd double %.011.i.i, %i.am
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !17 ; 2 uses
  %.sroa.speculated5.i.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.ar)
  %.sroa.speculated.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.ap)
  %i.as = sub i32 %.sroa.speculated5.i.i.i.1, %.sroa.speculated.i.i.i.1
  %i.at = uitofp i32 %i.as to double
  %i.au = fadd double %i.an, %i.at                ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter20.next.1 = add i64 %niter20, 2           ; 2 uses
  %niter20.ncmp.1 = icmp eq i64 %niter20.next.1, %unroll_iter19
  br i1 %niter20.ncmp.1, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !310

_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.011.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.au, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.epil.init
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17 ; 2 uses
  %.sroa.speculated5.i.i.i.epil = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 %i.ay)
  %.sroa.speculated.i.i.i.epil = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.aw)
  %i.az = sub i32 %.sroa.speculated5.i.i.i.epil, %.sroa.speculated.i.i.i.epil
  %i.ba = uitofp i32 %i.az to double
  %i.bb = fadd double %.011.i.i.epil.init, %i.ba
  br label %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i

_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i: ; preds = %.lr.ph.i.i.epil.preheader, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i.loopexit.unr-lcssa, %bb.b
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.b ], [ %i.au, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph.i.i.epil.preheader ]
  %i.bc = fadd double %i.a, %.0.lcssa.i.i
  br label %_ZN2cv12cpu_baseline11normDiffL1_IidEEiPKT_S4_PKhPT0_ii.exit

_ZN2cv12cpu_baseline11normDiffL1_IidEEiPKT_S4_PKhPT0_ii.exit: ; preds = %..loopexit_crit_edge.us.i, %.preheader31.i, %.lr.ph39.i, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i
  %.3.i = phi double [ %i.bc, %_ZNK2cv12cpu_baseline15NormDiffL1_SIMDIidEclEPKiS4_i.exit.i ], [ %i.a, %.preheader31.i ], [ %i.a, %.lr.ph39.i ], [ %.2.us.i, %..loopexit_crit_edge.us.i ]
  store double %.3.i, ptr %3, align 8, !tbaa !27
  ret i32 0
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline11normDiffL2_INS_6hfloatEfEEiPKT_S5_PKhPT0_ii:bb.a
_ZNK2cv6hfloatcvfEv.exit34.us:                    ; preds = %bb.e, %bb.d, %_ZNK2cv6hfloatcvfEv.exit.us
  %i.ai = phi i32 [ %i.ah, %bb.e ], [ %i.ag, %bb.d ], [ %i.ab, %_ZNK2cv6hfloatcvfEv.exit.us ]
  %.signext.i33.us = sext i16 %i.x to i32
  %i.aj = and i32 %.signext.i33.us, -2147483648
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = bitcast i32 %i.ak to float
  %i.am = fsub float %i.v, %i.al                  ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %.137.us) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !558

..loopexit_crit_edge.us:                          ; preds = %_ZNK2cv6hfloatcvfEv.exit34.us, %.lr.ph43.split.us
  %.2.us = phi float [ %.02940.us, %.lr.ph43.split.us ], [ %i.an, %_ZNK2cv6hfloatcvfEv.exit34.us ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.042.us, i64 %i.d
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.03039.us, i64 %i.d
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count51
  br i1 %exitcond52.not, label %.loopexit36, label %.lr.ph43.split.us, !llvm.loop !559

bb.f:                                             ; preds = %bb.a
  %i.aq = mul nsw i32 %5, %4                      ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.aq to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2cv6hfloatcvfEv.exit12.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK2cv6hfloatcvfEv.exit12.i ] ; 3 uses
  %.014.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.bz, %_ZNK2cv6hfloatcvfEv.exit12.i ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !63 ; 2 uses
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 13               ; 2 uses
  %i.aw = and i32 %i.av, 268427264                ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, 939524096
  %i.ay = and i32 %i.au, 31744
  switch i32 %i.ay, label %_ZNK2cv6hfloatcvfEv.exit.i [
    i32 31744, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i
  %i.az = or i32 %i.av, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = add nuw nsw i32 %i.aw, 947912704
  %i.bb = bitcast i32 %i.ba to float
  %i.bc = fadd float %i.bb, f0xB8800000
  %i.bd = bitcast float %i.bc to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.i

_ZNK2cv6hfloatcvfEv.exit.i:                       ; preds = %bb.h, %bb.g, %.lr.ph.i
  %i.be = phi i32 [ %i.az, %bb.g ], [ %i.bd, %bb.h ], [ %i.ax, %.lr.ph.i ]
  %.signext.i.i = sext i16 %i.at to i32
  %i.bf = and i32 %.signext.i.i, -2147483648
  %i.bg = or i32 %i.be, %i.bf
  %i.bh = bitcast i32 %i.bg to float
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !63 ; 2 uses
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = shl nuw nsw i32 %i.bk, 13               ; 2 uses
  %i.bm = and i32 %i.bl, 268427264                ; 2 uses
  %i.bn = add nuw nsw i32 %i.bm, 939524096
  %i.bo = and i32 %i.bk, 31744
  switch i32 %i.bo, label %_ZNK2cv6hfloatcvfEv.exit12.i [
    i32 31744, label %bb.i
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit.i
  %i.bp = or i32 %i.bl, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit12.i

bb.j:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit.i
  %i.bq = add nuw nsw i32 %i.bm, 947912704
  %i.br = bitcast i32 %i.bq to float
  %i.bs = fadd float %i.br, f0xB8800000
  %i.bt = bitcast float %i.bs to i32
  br label %_ZNK2cv6hfloatcvfEv.exit12.i

_ZNK2cv6hfloatcvfEv.exit12.i:                     ; preds = %bb.j, %bb.i, %_ZNK2cv6hfloatcvfEv.exit.i
  %i.bu = phi i32 [ %i.bp, %bb.i ], [ %i.bt, %bb.j ], [ %i.bn, %_ZNK2cv6hfloatcvfEv.exit.i ]
  %.signext.i11.i = sext i16 %i.bj to i32
  %i.bv = and i32 %.signext.i11.i, -2147483648
  %i.bw = or i32 %i.bu, %i.bv
  %i.bx = bitcast i32 %i.bw to float
  %i.by = fsub float %i.bh, %i.bx                 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %.014.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit, label %.lr.ph.i, !llvm.loop !560

_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit: ; preds = %_ZNK2cv6hfloatcvfEv.exit12.i, %bb.f
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.f ], [ %i.bz, %_ZNK2cv6hfloatcvfEv.exit12.i ]
  %i.ca = fadd float %i.a, %.0.lcssa.i
  br label %.loopexit36

.loopexit36:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph43, %.preheader35, %_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit
  %.3 = phi float [ %i.ca, %_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit ], [ %i.a, %.preheader35 ], [ %i.a, %.lr.ph43 ], [ %.2.us, %..loopexit_crit_edge.us ]
  store float %.3, ptr %3, align 4, !tbaa !25
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v16i8(<16 x i8>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !12, i64 0}
!15 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !14, i64 0, !9, i64 8}
!16 = !{!15, !9, i64 8}
!17 = !{!9, !9, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"short", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"float", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"double", !8, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.peeled.count", i32 1}
!29 = !{!"long", !8, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!"_ZTSN2cv6bfloatE", !22, i64 0}
!33 = !{!32, !22, i64 0}
!34 = !{!"p1 omnipotent char", !12, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !29, i64 8, !8, i64 16}
!37 = !{!36, !34, i64 0}
!38 = !{!"_ZTSN2cv5Size_IiEE", !9, i64 0, !9, i64 4}
!39 = !{!"_ZTSN2cv11_InputArrayE", !9, i64 0, !12, i64 8, !38, i64 16}
!40 = !{!39, !12, i64 8}
!41 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!42 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!43 = !{!"_ZTSN2cv10DataLayoutE", !8, i64 0}
!44 = !{!"_ZTSN2cv8MatShapeE", !9, i64 0, !43, i64 4, !9, i64 8, !8, i64 12}
!45 = !{!"_ZTSN2cv7MatStepE", !8, i64 0}
!46 = !{!"_ZTSN2cv3MatE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !41, i64 56, !42, i64 64, !44, i64 72, !45, i64 128}
!47 = !{!46, !9, i64 0}
!48 = !{!46, !9, i64 4}
!49 = !{!46, !34, i64 24}
!50 = !{!38, !9, i64 0}
!51 = !{!38, !9, i64 4}
!52 = !{!39, !9, i64 0}
!53 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"any p2 pointer", !12, i64 0}
!56 = !{!"p2 _ZTSN2cv3MatE", !55, i64 0}
!57 = !{!"p2 omnipotent char", !55, i64 0}
!58 = !{!"_ZTSN2cv15NAryMatIteratorE", !56, i64 0, !53, i64 8, !57, i64 16, !9, i64 24, !29, i64 32, !29, i64 40, !9, i64 48, !29, i64 56}
!59 = !{!58, !29, i64 40}
!60 = !{!58, !29, i64 32}
!61 = !{!34, !34, i64 0}
!62 = !{!"_ZTSN2cv6hfloatE", !22, i64 0}
!63 = !{!62, !22, i64 0}
!64 = distinct !{!64, !19, !20, !21}
!65 = distinct !{!65, !19, !21, !20}
!66 = distinct !{!66, !19, !20, !21}
!67 = distinct !{!67, !19, !21, !20}
!68 = distinct !{!68, !19, !20, !21}
!69 = distinct !{!69, !19, !21, !20}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19, !20, !21}
!73 = distinct !{!73, !19, !21, !20}
!74 = distinct !{!74, !19, !20, !21}
!75 = distinct !{!75, !19, !21, !20}
!76 = distinct !{!76, !19, !20, !21}
!77 = distinct !{!77, !19, !21, !20}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19, !20, !21}
!81 = distinct !{!81, !19, !21, !20}
!82 = distinct !{!82, !19, !20, !21}
!83 = distinct !{!83, !19, !21, !20}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19, !20, !21}
!96 = distinct !{!96, !19, !21, !20}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19, !28}
!99 = distinct !{!99, !19, !20, !21}
!100 = distinct !{!100, !19, !21, !20}
!101 = distinct !{!101, !19, !20, !21}
!102 = distinct !{!102, !19, !21, !20}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19, !20, !21}
!110 = distinct !{!110, !19, !21, !20}
!111 = distinct !{!111, !19, !20, !21}
!112 = distinct !{!112, !19, !21, !20}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19, !20, !21}
!116 = distinct !{!116, !19, !21, !20}
!117 = distinct !{!117, !19, !20, !21}
!118 = distinct !{!118, !19, !21, !20}
!119 = distinct !{!119, !19, !20, !21}
!120 = distinct !{!120, !19, !21, !20}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19, !20, !21}
!124 = distinct !{!124, !19, !21, !20}
!125 = distinct !{!125, !19, !20, !21}
!126 = distinct !{!126, !19, !21, !20}
!127 = distinct !{!127, !19, !20, !21}
!128 = distinct !{!128, !19, !21, !20}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
!137 = distinct !{!137, !31}
!138 = distinct !{!138, !19}
!139 = distinct !{!139, !19}
!140 = distinct !{!140, !31}
!141 = distinct !{!141, !19}
!142 = distinct !{!142, !19}
!143 = distinct !{!143, !31}
!144 = distinct !{!144, !19}
!145 = distinct !{!145, !19}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !19}
!148 = distinct !{!148, !19}
!149 = distinct !{!149, !19}
!150 = distinct !{!150, !19}
!151 = distinct !{!151, !19, !20, !21}
!152 = distinct !{!152, !19, !21, !20}
!153 = distinct !{!153, !19, !20, !21}
!154 = distinct !{!154, !19, !21, !20}
!155 = distinct !{!155, !19}
!156 = distinct !{!156, !19}
!157 = distinct !{!157, !31}
end_hunk_1
