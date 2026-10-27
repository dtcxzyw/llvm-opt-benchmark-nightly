Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_dct_init_float_c:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.043 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 9 uses
  %i.g = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 6, i64 noundef %2, ptr noundef null, i32 noundef %.043, i32 noundef %5, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %.043, 2                        ; 3 uses
  %i.i = mul nsw i32 %i.h, 3
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = call noalias ptr @av_malloc(i64 noundef %i.k) #16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !23
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %.043, 1
  %i.o = sitofp nsz i32 %i.n to double
  %i.p = fdiv nsz double f0x400921FB54442D18, %i.o ; 3 uses
  %i.q = icmp sgt i32 %.043, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.r = select i1 %.not, i32 2, i32 1
  %i.s = uitofp nneg i32 %i.r to double
  %wide.trip.count = zext nneg i32 %.043 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.t = icmp sgt i32 %.043, 1                    ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %._crit_edge
  br i1 %i.t, label %.lr.ph52.preheader, label %.loopexit

.lr.ph52.preheader:                               ; preds = %.preheader48
  %i.u = zext nneg i32 %.043 to i64
  %wide.trip.count60 = zext nneg i32 %i.h to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.u
  br label %.lr.ph52

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.t, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.v = zext nneg i32 %.043 to i64
  %wide.trip.count65 = zext nneg i32 %i.h to i64
  %invariant.gep69 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.v
  br label %.lr.ph54

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = uitofp nsz nneg i32 %i.w to double
  %i.y = fmul nsz double %i.p, %i.x
  %i.z = call nsz double @llvm.cos.f64(double %i.y)
  %i.aa = fmul nsz double %i.z, %i.s
  %i.ab = fptrunc nsz double %i.aa to float
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store float %i.ab, ptr %i.ac, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !147

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  %indvars.iv57 = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next58, %.lr.ph52 ] ; 3 uses
  %indvars.iv57.tr = trunc i64 %indvars.iv57 to i32
  %i.ad = shl i32 %indvars.iv57.tr, 1
  %i.ae = or disjoint i32 %i.ad, 1
  %i.af = uitofp nsz nneg i32 %i.ae to double
  %i.ag = fmul nnan nsz double %i.p, %i.af
  %i.ah = call nsz double @llvm.sin.f64(double %i.ag)
  %i.ai = fdiv nsz double 5.000000e-01, %i.ah
  %i.aj = fptrunc nsz double %i.ai to float
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv57
  store float %i.aj, ptr %gep, align 4, !tbaa !24
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %.loopexit, label %.lr.ph52, !llvm.loop !148

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %indvars.iv62 = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next63, %.lr.ph54 ] ; 3 uses
  %indvars.iv62.tr = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.ak = shl nuw nsw i32 %indvars.iv62.tr, 1
  %i.al = xor i32 %i.ak, -1
  %i.am = add nsw i32 %.043, %i.al
  %i.an = sitofp nsz i32 %i.am to double
  %i.ao = fmul nsz double %i.p, %i.an
  %i.ap = call nsz double @llvm.cos.f64(double %i.ao)
  %i.aq = fptrunc nsz double %i.ap to float
  %gep70 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep69, i64 %indvars.iv62
  store float %i.aq, ptr %gep70, align 4, !tbaa !24
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph54, !llvm.loop !149

.loopexit:                                        ; preds = %.lr.ph52, %.lr.ph54, %.preheader48, %.preheader, %bb.d, %bb.c
  %.042 = phi i32 [ %i.g, %bb.c ], [ -12, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader48 ], [ 0, %.lr.ph54 ], [ 0, %.lr.ph52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctIII_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 12 uses
  %i.e = sext i32 %i.a to i64                     ; 10 uses
  %i.f = getelementptr [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load float, ptr %i.g, align 4, !tbaa !24
  %i.i = fmul nsz float %i.h, 2.000000e+00
  store float %i.i, ptr %i.f, align 4, !tbaa !24
  %i.j = icmp sgt i32 %i.a, 3
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = add nsw i64 %i.e, -4                     ; 3 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 16
  br i1 %min.iters.check, label %.lr.ph.preheader95, label %vector.memcheck

.lr.ph.preheader95:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.ag, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.n = shl nuw nsw i64 %i.e, 2                  ; 4 uses
  %i.o = shl nsw i64 %i.k, 2
  %i.p = and i64 %i.o, -8                         ; 3 uses
  %i.q = add nsw i64 %i.n, -12
  %i.r = sub nsw i64 %i.q, %i.p
  %i.s = getelementptr i8, ptr %2, i64 %i.r       ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 %i.n       ; 2 uses
  %i.u = add nsw i64 %i.n, -8
  %i.v = sub nsw i64 %i.u, %i.p
  %i.w = getelementptr i8, ptr %i.d, i64 %i.v
  %i.x = getelementptr i8, ptr %i.d, i64 %i.n
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = getelementptr i8, ptr %i.d, i64 8
  %i.aa = getelementptr i8, ptr %i.d, i64 %i.p
  %i.ab = getelementptr i8, ptr %i.aa, i64 12
  %bound0 = icmp ult ptr %i.s, %i.y
  %bound1 = icmp ult ptr %i.w, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %bound084 = icmp ult ptr %i.s, %i.ab
  %bound185 = icmp ult ptr %i.z, %i.t
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict, %found.conflict86
  br i1 %conflict.rdx, label %.lr.ph.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ac = and i64 %i.m, 3                         ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 4, i64 %i.ac
  %n.vec = sub i64 %i.m, %i.ae                    ; 2 uses
  %i.af = shl i64 %n.vec, 1
  %i.ag = sub i64 %i.e, %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 1
  %i.ai = sub i64 %i.e, %i.ah                     ; 4 uses
  %i.aj = add nsw i64 %i.ai, -2                   ; 3 uses
  %i.ak = add i64 %i.ai, -4                       ; 2 uses
  %i.al = add i64 %i.ai, -6                       ; 2 uses
  %i.am = add i64 %i.ai, -8                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -24 ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ar, align 4, !tbaa !24, !alias.scope !157, !noalias !158 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse88 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.as = getelementptr i8, ptr %i.an, i64 -4
  %i.at = getelementptr i8, ptr %i.ao, i64 -4
  %i.au = getelementptr i8, ptr %i.ap, i64 -4
  %i.av = getelementptr i8, ptr %i.aq, i64 -4
  %i.aw = load float, ptr %i.as, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %i.ax = load float, ptr %i.at, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %i.ay = load float, ptr %i.au, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %i.az = load float, ptr %i.av, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %i.ba = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 2
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 3
  %i.be = fsub nsz <4 x float> %i.bd, %reverse88  ; 2 uses
  %i.bf = sub nsw i64 %i.e, %i.aj
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bf ; 2 uses
  %wide.vec89 = load <8 x float>, ptr %i.bg, align 4, !tbaa !24, !alias.scope !159
  %strided.vec90 = shufflevector <8 x float> %wide.vec89, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ak ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.al ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !24, !alias.scope !160
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !24, !alias.scope !160
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !24, !alias.scope !160
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !24, !alias.scope !160
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = fneg nsz <4 x float> %i.be
  %i.bu = fmul nsz <4 x float> %i.bs, %i.bt
  %i.bv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec90, <4 x float> %reverse, <4 x float> %i.bu)
  %wide.vec91 = load <8 x float>, ptr %i.bg, align 4, !tbaa !24, !alias.scope !159
  %strided.vec92 = shufflevector <8 x float> %wide.vec91, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %4 = load float, ptr %i.bh, align 4, !tbaa !24, !alias.scope !160
  %5 = load float, ptr %i.bi, align 4, !tbaa !24, !alias.scope !160
  %6 = load float, ptr %i.bj, align 4, !tbaa !24, !alias.scope !160
  %7 = load float, ptr %i.bk, align 4, !tbaa !24, !alias.scope !160
  %8 = insertelement <4 x float> poison, float %4, i64 0
  %9 = insertelement <4 x float> %8, float %5, i64 1
  %10 = insertelement <4 x float> %9, float %6, i64 2
  %11 = insertelement <4 x float> %10, float %7, i64 3
  %i.bw = fmul nsz <4 x float> %reverse, %11
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec92, <4 x float> %i.be, <4 x float> %i.bw)
  %interleaved.vec = shufflevector <4 x float> %i.bx, <4 x float> %i.bv, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.ar, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %.lr.ph.preheader95, label %vector.body, !llvm.loop !154

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32
  tail call void %i.ca(ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 4) #16
  %i.cd = icmp sgt i32 %i.b, 0
  br i1 %i.cd, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.e
  br label %.lr.ph70

.lr.ph:                                           ; preds = %.lr.ph.preheader95, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader95 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 4 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !24 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 -4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !24
  %i.ck = fsub nsz float %i.ch, %i.cj             ; 2 uses
  %i.cl = sub nsw i64 %i.e, %indvars.iv.next
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cl ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !24
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !24
  %i.cq = fneg nsz float %i.ck
  %i.cr = fmul nsz float %i.cp, %i.cq
  %i.cs = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.cf, float %i.cr)
  store float %i.cs, ptr %i.ci, align 4, !tbaa !24
  %i.ct = load float, ptr %i.cm, align 4, !tbaa !24
  %i.cu = load float, ptr %i.co, align 4, !tbaa !24
  %i.cv = fmul nsz float %i.cf, %i.cu
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.ck, float %i.cv)
  store float %i.cw, ptr %i.ce, align 4, !tbaa !24
  %i.cx = icmp samesign ugt i64 %indvars.iv, 5
  br i1 %i.cx, label %.lr.ph, label %._crit_edge, !llvm.loop !155

._crit_edge71:                                    ; preds = %.lr.ph70, %._crit_edge
  ret void

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.lr.ph70
  %indvars.iv73 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next74, %.lr.ph70 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv73 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !24 ; 2 uses
  %i.da = trunc i64 %indvars.iv73 to i32
  %i.db = xor i32 %i.da, -1
  %i.dc = add i32 %i.a, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !24 ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv73
  %i.dg = load float, ptr %gep, align 4, !tbaa !24
  %i.dh = fadd nsz float %i.cz, %i.df             ; 2 uses
  %i.di = fsub nsz float %i.cz, %i.df
  %i.dj = fmul nsz float %i.di, %i.dg             ; 2 uses
  %i.dk = fadd nsz float %i.dh, %i.dj
  store float %i.dk, ptr %i.cy, align 4, !tbaa !24
  %i.dl = fsub nsz float %i.dh, %i.dj
  store float %i.dl, ptr %i.de, align 4, !tbaa !24
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge71, label %.lr.ph70, !llvm.loop !156
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctI_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = add i32 %i.a, -1                         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 8 uses
  %i.e = lshr i64 %3, 2                           ; 4 uses
  %i.f = icmp sgt i32 %i.a, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = shl nuw nsw i32 %i.b, 1
  %i.h = zext nneg i32 %i.g to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod27 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.j = mul nuw nsw i64 %i.e, %indvars.iv.epil.init
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !24 ; 2 uses
  %i.m = sub nuw nsw i64 %i.h, %indvars.iv.epil.init
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  store float %i.l, ptr %i.n, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  store float %i.l, ptr %i.o, align 4, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.p = sext i32 %i.b to i64                     ; 2 uses
  %i.q = mul nsw i64 %i.e, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !24
  %i.t = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  store float %i.s, ptr %i.t, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  tail call void %i.v(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.d, i64 noundef 4) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = mul nuw nsw i64 %i.e, %indvars.iv
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24 ; 2 uses
  %i.ab = sub nuw nsw i64 %i.h, %indvars.iv
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ab
  store float %i.aa, ptr %i.ac, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.aa, ptr %i.ad, align 4, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ae = mul nuw nsw i64 %i.e, %indvars.iv.next
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !24 ; 2 uses
  %i.ah = sub nuw nsw i64 %i.h, %indvars.iv.next
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ah
  store float %i.ag, ptr %i.ai, align 4, !tbaa !24
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store float %i.ag, ptr %i.aj, align 4, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !161
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dcstI_init_float_c(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  store float %i.b, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !21
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !21
  %i.f = fmul nsz float %i.b, 5.000000e-01
  store float %i.f, ptr %i.a, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !164  ; 2 uses
  %i.i = icmp eq i32 %i.h, 12
  %i.j = select i1 %i.i, i64 8, i64 16
  %i.k = or i64 %i.j, %2
  %i.l = add nsw i32 %.014, -1
  %i.m = icmp eq i32 %i.h, 15
  %i.n = select i1 %i.m, i32 2, i32 0
  %i.o = add nsw i32 %i.l, %i.n
  %i.p = shl nsw i32 %i.o, 1
  %i.q = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 6, i64 noundef %i.k, ptr noundef null, i32 noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl i32 %.014, 1
  %i.s = add i32 %i.r, 2
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = call noalias ptr @av_mallocz(i64 noundef %i.u) #16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !31
  %.not17 = icmp eq ptr %i.v, null
end_hunk_0
