Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcadsp?download=true
inline.NumInlined: 34
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 26
begin_hunk_0_@decode_hf_c:bb.a
middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.ph
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = sext i8 %i.ah to i32
  %i.aj = mul nsw i32 %i.k, %i.ai
  %i.ak = add nsw i32 %i.aj, 8
  %i.al = ashr i32 %i.ak, 4
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 -8388608)
  %.0.i.i.prol = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.am, i32 8388607)
  %i.an = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv.ph
  store i32 %.0.i.i.prol, ptr %i.an, align 4, !tbaa !11
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ao = icmp eq i64 %7, %.neg
  br i1 %i.ao, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = sext i8 %i.aq to i32
  %i.as = mul nsw i32 %i.k, %i.ar
  %i.at = add nsw i32 %i.as, 8
  %i.au = ashr i32 %i.at, 4
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.au, i32 -8388608)
  %.0.i.i = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.av, i32 8388607)
  %i.aw = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %.0.i.i, ptr %i.aw, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = sext i8 %i.ay to i32
  %i.ba = mul nsw i32 %i.k, %i.az
  %i.bb = add nsw i32 %i.ba, 8
  %i.bc = ashr i32 %i.bb, 4
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 -8388608)
  %.0.i.i.1 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.bd, i32 8388607)
  %i.be = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv.next
  store i32 %.0.i.i.1, ptr %i.be, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %7
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 2 uses
  %i.bf = icmp sgt i64 %5, %indvars.iv.next28
  br i1 %i.bf, label %.lr.ph, label %._crit_edge25.split, !llvm.loop !25

._crit_edge25.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_joint_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
bb.a:
  %sext = shl i64 %3, 32
  %i.a = ashr exact i64 %sext, 32                 ; 2 uses
  %i.b = icmp sgt i64 %4, %i.a
  %i.c = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge24.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %6, 4
  %n.vec = and i64 %6, 9223372036854775804        ; 3 uses
  %cmp.n = icmp eq i64 %6, %n.vec
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %invariant.op = add i64 1, %5
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %._crit_edge ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv26
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %i.f = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv26
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 5 uses
  %i.h = sext i32 %i.e to i64                     ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv26
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 5 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = ptrtoaddr ptr %i.g to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -16
  %or.cond33 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond33, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = add nsw i64 %index, %5                   ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.n
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !11
  %i.p = sext <4 x i32> %wide.load to <4 x i64>
  %i.q = mul nsw <4 x i64> %broadcast.splat, %i.p
  %i.r = add nsw <4 x i64> %i.q, splat (i64 65536)
  %i.s = lshr <4 x i64> %i.r, splat (i64 17)
  %i.t = trunc <4 x i64> %i.s to <4 x i32>
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.t, <4 x i32> splat (i32 -8388608))
  %i.v = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.u, <4 x i32> splat (i32 8388607))
  %i.w = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n
  store <4 x i32> %i.v, ptr %i.w, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = add nsw i64 %indvars.iv.ph, %5           ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.h
  %i.ad = add nsw i64 %i.ac, 65536
  %i.ae = lshr i64 %i.ad, 17
  %i.af = trunc i64 %i.ae to i32
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 -8388608)
  %.0.i.i.prol = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ag, i32 8388607)
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.y
  store i32 %.0.i.i.prol, ptr %i.ah, align 4, !tbaa !11
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %6, %.neg
  br i1 %i.ai, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aj = add nsw i64 %indvars.iv, %5             ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.h
  %i.ao = add nsw i64 %i.an, 65536
  %i.ap = lshr i64 %i.ao, 17
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 -8388608)
  %.0.i.i = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ar, i32 8388607)
  %i.as = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aj
  store i32 %.0.i.i, ptr %i.as, align 4, !tbaa !11
  %.reass = add i64 %indvars.iv, %invariant.op    ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.reass
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.av, %i.h
  %i.ax = add nsw i64 %i.aw, 65536
  %i.ay = lshr i64 %i.ax, 17
  %i.az = trunc i64 %i.ay to i32
  %i.ba = tail call i32 @llvm.smax.i32(i32 %i.az, i32 -8388608)
  %.0.i.i.1 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ba, i32 8388607)
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.reass
  store i32 %.0.i.i.1, ptr %i.bb, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %6
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %i.bc = icmp sgt i64 %4, %indvars.iv.next27
  br i1 %i.bc, label %.lr.ph, label %._crit_edge24.split, !llvm.loop !28

._crit_edge24.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @lfe_fir0_float_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = lshr i64 %3, 1
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader44.i, label %lfe_fir_float_c.exit

.preheader44.i:                                   ; preds = %bb.a, %bb.b
  %.03951.i = phi i32 [ %i.bx, %bb.b ], [ 0, %bb.a ]
  %.04050.i = phi ptr [ %i.bw, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.04149.i = phi ptr [ %i.bv, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %.04050.i, i64 128
  %.phi.trans.insert7 = getelementptr inbounds i8, ptr %.04149.i, i64 -12
  %invariant.gep.i.a = getelementptr inbounds i8, ptr %.04149.i, i64 -28
  %4 = load <4 x i32>, ptr %invariant.gep.i.a, align 4, !tbaa !11
  %5 = load <4 x i32>, ptr %.phi.trans.insert7, align 4, !tbaa !11
  %6 = sitofp <4 x i32> %5 to <4 x float>         ; 4 uses
  %7 = sitofp <4 x i32> %4 to <4 x float>         ; 4 uses
  %8 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %9 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %10 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %12 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %13 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %14 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.d = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader44.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader44.i ], [ %indvars.iv.next55.i, %.preheader.i ] ; 4 uses
  %i.e = trunc nuw nsw i64 %indvars.iv54.i to i32
  %i.f = shl i32 %i.e, 3
  %i.g = sext i32 %i.f to i64                     ; 9 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g
  %i.i = shl nuw nsw i64 %i.g, 32
  %sext.i = sub nsw i64 1095216660480, %i.i
  %i.j = ashr exact i64 %sext.i, 30
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !29
  %i.m = shl nsw i64 %i.g, 32
  %sext.i.1 = sub nsw i64 1090921693184, %i.m
  %i.n = ashr exact i64 %sext.i.1, 30
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !29
  %i.q = or disjoint i64 %i.g, 2                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.s = shl nuw nsw i64 %i.q, 32
  %sext.i.2 = sub nsw i64 1095216660480, %i.s
  %i.t = ashr exact i64 %sext.i.2, 30
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !29
  %i.w = shl nsw i64 %i.g, 32
  %sext.i.3 = sub nsw i64 1082331758592, %i.w
  %i.x = ashr exact i64 %sext.i.3, 30
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !29
  %i.aa = or disjoint i64 %i.g, 4                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  %i.ac = shl nuw nsw i64 %i.aa, 32
  %sext.i.4 = sub nsw i64 1095216660480, %i.ac
  %i.ad = ashr exact i64 %sext.i.4, 30
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ag = shl nsw i64 %i.g, 32
  %sext.i.5 = sub nsw i64 1073741824000, %i.ag
  %i.ah = ashr exact i64 %sext.i.5, 30
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !29
  %i.ak = or disjoint i64 %i.g, 6                 ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ak
  %i.am = shl nuw nsw i64 %i.ak, 32
  %sext.i.6 = sub nsw i64 1095216660480, %i.am
  %i.an = ashr exact i64 %sext.i.6, 30
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !29
  %i.aq = shl nsw i64 %i.g, 32
  %sext.i.7 = sub nsw i64 1065151889408, %i.aq
  %i.ar = ashr exact i64 %sext.i.7, 30
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !29
  %i.au = load <2 x float>, ptr %i.h, align 4, !tbaa !29 ; 2 uses
  %i.av = insertelement <2 x float> %i.au, float %i.l, i64 1
  %i.aw = fmul nsz <2 x float> %i.av, %8
  %i.ax = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ay = insertelement <2 x float> %i.ax, float %i.p, i64 1
  %i.az = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %9, <2 x float> %i.aw)
  %i.ba = load <2 x float>, ptr %i.r, align 4, !tbaa !29 ; 2 uses
  %i.bb = insertelement <2 x float> %i.ba, float %i.v, i64 1
  %i.bc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %10, <2 x float> %i.az)
  %i.bd = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x float> %i.bd, float %i.z, i64 1
  %i.bf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %11, <2 x float> %i.bc)
  %i.bg = load <2 x float>, ptr %i.ab, align 4, !tbaa !29 ; 2 uses
  %i.bh = insertelement <2 x float> %i.bg, float %i.af, i64 1
  %i.bi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %12, <2 x float> %i.bf)
  %i.bj = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bk = insertelement <2 x float> %i.bj, float %i.aj, i64 1
  %i.bl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %13, <2 x float> %i.bi)
  %i.bm = load <2 x float>, ptr %i.al, align 4, !tbaa !29 ; 2 uses
  %i.bn = insertelement <2 x float> %i.bm, float %i.ap, i64 1
  %i.bo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %14, <2 x float> %i.bl)
  %i.bp = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bq = insertelement <2 x float> %i.bp, float %i.at, i64 1
  %i.br = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.d, <2 x float> %i.bo) ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.04050.i, i64 %indvars.iv54.i
  %i.bt = extractelement <2 x float> %i.br, i64 0
  store float %i.bt, ptr %i.bs, align 4, !tbaa !29
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv54.i
  %i.bu = extractelement <2 x float> %i.br, i64 1
  store float %i.bu, ptr %gep.i, align 4, !tbaa !29
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 32
  br i1 %exitcond58.not.i, label %bb.b, label %.preheader.i, !llvm.loop !31

bb.b:                                             ; preds = %.preheader.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.04149.i, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.04050.i, i64 256
  %i.bx = add nuw nsw i32 %.03951.i, 1            ; 2 uses
  %exitcond59.not.i = icmp eq i32 %i.bx, %i.b
  br i1 %exitcond59.not.i, label %lfe_fir_float_c.exit, label %.preheader44.i, !llvm.loop !32

lfe_fir_float_c.exit:                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @lfe_fir1_float_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = lshr i64 %3, 2
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader44.i, label %lfe_fir_float_c.exit

.preheader44.i:                                   ; preds = %bb.a, %bb.b
  %.03951.i = phi i32 [ %i.ar, %bb.b ], [ 0, %bb.a ]
  %.04050.i = phi ptr [ %i.aq, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.04149.i = phi ptr [ %i.ap, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %.04050.i, i64 256
  %.phi.trans.insert8 = getelementptr inbounds i8, ptr %.04149.i, i64 -12
  %4 = load <4 x i32>, ptr %.phi.trans.insert8, align 4, !tbaa !11
  %5 = sitofp <4 x i32> %4 to <4 x float>         ; 4 uses
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %7 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %8 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.d = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader44.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader44.i ], [ %indvars.iv.next55.i, %.preheader.i ] ; 4 uses
  %i.e = trunc nuw nsw i64 %indvars.iv54.i to i32
  %i.f = shl i32 %i.e, 2
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g
  %i.i = shl nuw nsw i64 %i.g, 32
  %sext.i = sub nsw i64 1095216660480, %i.i
  %i.j = ashr exact i64 %sext.i, 30
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !29
  %i.m = shl nsw i64 %i.g, 32
  %sext.i.1 = sub nsw i64 1090921693184, %i.m
  %i.n = ashr exact i64 %sext.i.1, 30
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !29
  %i.q = or disjoint i64 %i.g, 2                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.s = shl nuw nsw i64 %i.q, 32
  %sext.i.2 = sub nsw i64 1095216660480, %i.s
  %i.t = ashr exact i64 %sext.i.2, 30
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !29
  %i.w = shl nsw i64 %i.g, 32
  %sext.i.3 = sub nsw i64 1082331758592, %i.w
  %i.x = ashr exact i64 %sext.i.3, 30
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !29
  %i.aa = load <2 x float>, ptr %i.h, align 4, !tbaa !29 ; 2 uses
  %i.ab = insertelement <2 x float> %i.aa, float %i.l, i64 1
  %i.ac = fmul nsz <2 x float> %i.ab, %6
  %i.ad = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = insertelement <2 x float> %i.ad, float %i.p, i64 1
  %i.af = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %7, <2 x float> %i.ac)
  %i.ag = load <2 x float>, ptr %i.r, align 4, !tbaa !29 ; 2 uses
  %i.ah = insertelement <2 x float> %i.ag, float %i.v, i64 1
  %i.ai = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %8, <2 x float> %i.af)
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = insertelement <2 x float> %i.aj, float %i.z, i64 1
  %i.al = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.d, <2 x float> %i.ai) ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.04050.i, i64 %indvars.iv54.i
  %i.an = extractelement <2 x float> %i.al, i64 0
  store float %i.an, ptr %i.am, align 4, !tbaa !29
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv54.i
  %i.ao = extractelement <2 x float> %i.al, i64 1
  store float %i.ao, ptr %gep.i, align 4, !tbaa !29
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 64
  br i1 %exitcond58.not.i, label %bb.b, label %.preheader.i, !llvm.loop !31

bb.b:                                             ; preds = %.preheader.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.04149.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.04050.i, i64 512
  %i.ar = add nuw nsw i32 %.03951.i, 1            ; 2 uses
  %exitcond59.not.i = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond59.not.i, label %lfe_fir_float_c.exit, label %.preheader44.i, !llvm.loop !32

lfe_fir_float_c.exit:                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @lfe_x96_float_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !29   ; 4 uses
  %i.b = icmp sgt i64 %3, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl i64 %3, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.c
  %i.d = shl i64 %3, 2
  %scevgep24 = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %0, %scevgep24
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 3
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %vector.recur.init = insertelement <4 x float> poison, float %i.a, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.g = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.g
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x float>, ptr %i.h, align 4, !tbaa !29, !alias.scope !33 ; 5 uses
  %i.i = shufflevector <4 x float> %vector.recur, <4 x float> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.j = fmul nsz <4 x float> %i.i, splat (float 7.500000e-01)
  %i.k = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.500000e-01), <4 x float> %i.j)
  %i.l = fmul nsz <4 x float> %i.i, splat (float 2.500000e-01)
  %i.m = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 7.500000e-01), <4 x float> %i.l)
  %interleaved.vec = shufflevector <4 x float> %i.k, <4 x float> %i.m, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !29, !alias.scope !36, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x float> %wide.load, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.022.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 3 uses
  %.01721.ph = phi float [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader26
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.p = load float, ptr %i.o, align 4, !tbaa !29 ; 3 uses
  %i.q = insertelement <2 x float> poison, float %.01721.ph, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul nsz <2 x float> %i.r, <float 7.500000e-01, float 2.500000e-01>
  %i.t = getelementptr inbounds nuw i8, ptr %.022.ph, i64 8
  %i.u = insertelement <2 x float> poison, float %i.p, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %i.s)
  store <2 x float> %i.w, ptr %.022.ph, align 4, !tbaa !29
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader26
  %.lcssa.unr = phi float [ poison, %.lr.ph.preheader26 ], [ %i.p, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader26 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.022.unr = phi ptr [ %.022.ph, %.lr.ph.preheader26 ], [ %i.t, %.lr.ph.prol ]
  %.01721.unr = phi float [ %.01721.ph, %.lr.ph.preheader26 ], [ %i.p, %.lr.ph.prol ]
  %i.x = icmp eq i64 %3, %.neg
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.022 = phi ptr [ %i.an, %.lr.ph ], [ %.022.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01721 = phi float [ %i.aj, %.lr.ph ], [ %.01721.unr, %.lr.ph.prol.loopexit ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4, !tbaa !29 ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %.01721, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul nsz <2 x float> %i.ab, <float 7.500000e-01, float 2.500000e-01>
  %i.ad = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %i.ae = insertelement <2 x float> poison, float %i.z, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %i.ac)
  store <2 x float> %i.ag, ptr %.022, align 4, !tbaa !29
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !29 ; 3 uses
  %i.ak = insertelement <2 x float> poison, float %i.z, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul nsz <2 x float> %i.al, <float 7.500000e-01, float 2.500000e-01>
  %i.an = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.ao = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %i.am)
  store <2 x float> %i.aq, ptr %i.ad, align 4, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %3
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.017.lcssa = phi float [ %i.a, %bb.a ], [ %vector.recur.extract, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.aj, %.lr.ph ]
  store float %.017.lcssa, ptr %2, align 4, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sub_qmf32_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, float noundef %11) #4 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp sgt i64 %10, 0
  br i1 %i.b, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.02730 = phi ptr [ %i.t, %bb.c ], [ %3, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %i.c = and i64 %indvars.iv, 2
  %.not.not = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv33
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 2 uses
  %i.h = sub nsw i32 0, %i.g
  %.sink.in = select i1 %.not.not, i32 %i.h, i32 %i.g
  %.sink = sitofp i32 %.sink.in to float
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %.sink, ptr %i.i, align 8, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.j = trunc i64 %indvars.iv.next to i32
  %i.k = add nuw nsw i32 %i.j, 3
  %i.l = and i32 %i.k, 2
  %.not.1 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv33
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11   ; 2 uses
  %i.q = sub nsw i32 0, %i.p
  %.sink.in.1 = select i1 %.not.1, i32 %i.p, i32 %i.q
  %.sink.1 = sitofp i32 %.sink.in.1 to float
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store float %.sink.1, ptr %i.r, align 4, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %bb.c, label %bb.b, !llvm.loop !40

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !41
  call void %i.s(ptr noundef %1, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %.02730, ptr noundef nonnull %i.a, float noundef %11, ptr noundef %2) #10
  %i.t = getelementptr inbounds nuw i8, ptr %.02730, i64 128
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next34, %10
  br i1 %exitcond36.not, label %._crit_edge, label %.preheader, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sub_qmf64_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, float noundef %11) #4 {
end_hunk_0
