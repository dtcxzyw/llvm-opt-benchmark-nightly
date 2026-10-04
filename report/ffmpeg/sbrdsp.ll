Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbrdsp?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@sbr_qmf_deint_bfly_c:vector.memcheck
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load23.14 = load <4 x float>, ptr %i.ci, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.14 = shufflevector <4 x float> %wide.load23.14, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cj = fsub nsz <4 x float> %wide.load.14, %reverse.14
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> %i.cj, ptr %i.ck, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load24.14 = load <4 x float>, ptr %i.ch, align 4, !tbaa !11, !alias.scope !30
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cm = shufflevector <4 x float> %wide.load24.14, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse27.14 = fadd nsz <4 x float> %i.cm, %wide.load23.14
  store <4 x float> %reverse27.14, ptr %i.cl, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.15 = load <4 x float>, ptr %i.cn, align 4, !tbaa !11, !alias.scope !30 ; 2 uses
  %wide.load23.15 = load <4 x float>, ptr %2, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.15 = shufflevector <4 x float> %wide.load23.15, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.co = fsub nsz <4 x float> %wide.load.15, %reverse.15
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> %i.co, ptr %i.cp, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cr = shufflevector <4 x float> %wide.load.15, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse27.15 = fadd nsz <4 x float> %i.cr, %wide.load23.15
  store <4 x float> %reverse27.15, ptr %i.cq, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  br label %middle.block

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 8 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !11
  %i.cu = sub nuw nsw i64 63, %indvars.iv
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cu ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !11
  %i.cx = fsub nsz float %i.ct, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.cx, ptr %i.cy, align 4, !tbaa !11
  %i.cz = load float, ptr %i.cs, align 4, !tbaa !11
  %i.da = load float, ptr %i.cv, align 4, !tbaa !11
  %i.db = fadd nsz float %i.cz, %i.da
  %i.dc = sub nuw nsw i64 127, %indvars.iv
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc
  store float %i.db, ptr %i.dd, align 4, !tbaa !11
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !11
  %i.dg = sub nuw nsw i64 62, %indvars.iv
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dg ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !11
  %i.dj = fsub nsz float %i.df, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.dj, ptr %i.dk, align 4, !tbaa !11
  %i.dl = load float, ptr %i.de, align 4, !tbaa !11
  %i.dm = load float, ptr %i.dh, align 4, !tbaa !11
  %i.dn = fadd nsz float %i.dl, %i.dm
  %i.do = sub nuw nsw i64 126, %indvars.iv
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  store float %i.dn, ptr %i.dp, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !29

middle.block:                                     ; preds = %scalar.ph, %vector.body
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_autocorrelate_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.phi.trans.insert110 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !11 ; 2 uses
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !11 ; 3 uses
  %i.d = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.e = fneg nsz <2 x float> %i.c
  %i.f = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 1, i32 2>
  %i.g = fmul nsz <2 x float> %i.d, %i.f
  %i.h = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.c, <2 x float> %i.g)
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !11
  %.pre111 = load float, ptr %.phi.trans.insert110, align 4, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %i.j = phi float [ %.pre111, %bb.a ], [ %i.ap, %bb.b ] ; 5 uses
  %i.k = phi float [ %.pre, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.094103 = phi float [ 0.000000e+00, %bb.a ], [ %i.q, %bb.b ]
  %i.l = phi <2 x float> [ %i.i, %bb.a ], [ %i.ao, %bb.b ]
  %i.m = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ae, %bb.b ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = fmul nsz float %i.j, %i.j
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.o)
  %i.q = fadd nsz float %.094103, %i.p            ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load float, ptr %i.r, align 4, !tbaa !11 ; 2 uses
  %i.u = load <2 x float>, ptr %i.r, align 4, !tbaa !11 ; 3 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.w = fneg nsz float %i.t
  %i.x = insertelement <2 x float> poison, float %i.j, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x float> %i.u, float %i.w, i64 0
  %i.aa = fmul nsz <2 x float> %i.y, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.v, <2 x float> %i.aa)
  %i.ae = fadd nsz <2 x float> %i.m, %i.ad        ; 3 uses
  %i.af = load <2 x float>, ptr %i.s, align 4, !tbaa !11 ; 3 uses
  %i.ag = extractelement <2 x float> %i.af, i64 1
  %i.ah = fmul nsz float %i.j, %i.ag
  %i.ai = extractelement <2 x float> %i.af, i64 0
  %i.aj = fneg nsz float %i.ai
  %i.ak = fmul nsz float %i.j, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ak, i64 1
  %i.an = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.af, <2 x float> %i.am)
  %i.ao = fadd nsz <2 x float> %i.l, %i.an        ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  %i.ap = extractelement <2 x float> %i.u, i64 1
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !34

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.ao, ptr %i.ar, align 4, !tbaa !11
  %i.as = load float, ptr %0, align 4, !tbaa !11  ; 2 uses
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.q)
  %i.au = load float, ptr %i.aq, align 4, !tbaa !11 ; 2 uses
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.at)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.av, ptr %i.aw, align 4, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11 ; 2 uses
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.q)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11 ; 2 uses
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.az)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.bc, ptr %i.bd, align 4, !tbaa !11
  %i.be = load float, ptr %0, align 4, !tbaa !11
  %i.bf = load float, ptr %.phi.trans.insert, align 4, !tbaa !11
  %i.bg = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %i.be, float %i.bf, float %i.bg)
  %i.bi = load float, ptr %i.aq, align 4, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !11
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.bi, float %i.bk, float %i.bh)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.bl, ptr %i.bm, align 4, !tbaa !11
  %i.bn = load float, ptr %0, align 4, !tbaa !11
  %i.bo = load float, ptr %i.bj, align 4, !tbaa !11
  %i.bp = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float %i.bo, float %i.bp)
  %i.br = load float, ptr %i.aq, align 4, !tbaa !11
  %i.bs = load float, ptr %.phi.trans.insert, align 4, !tbaa !11
  %i.bt = fneg nsz float %i.br
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.bs, float %i.bq)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.bu, ptr %i.bv, align 4, !tbaa !11
  %i.bw = load float, ptr %i.ax, align 4, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !11
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.by, float %i.bg)
  %i.ca = load float, ptr %i.ba, align 4, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !11
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.cc, float %i.bz)
  store float %i.cd, ptr %1, align 4, !tbaa !11
  %i.ce = load float, ptr %i.ax, align 4, !tbaa !11
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !11
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.cf, float %i.bp)
  %i.ch = load float, ptr %i.ba, align 4, !tbaa !11
  %i.ci = load float, ptr %i.bx, align 4, !tbaa !11
  %i.cj = fneg nsz float %i.ch
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.ci, float %i.cg)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_hf_gen_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !11
  %i.b = fmul nsz float %4, %i.a
  %i.c = fmul nsz float %4, %i.b                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !11
  %i.f = fmul nsz float %4, %i.e
  %i.g = fmul nsz float %4, %i.f                  ; 3 uses
  %i.h = load float, ptr %2, align 4, !tbaa !11
  %i.i = fmul nsz float %4, %i.h                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !11
  %i.l = fmul nsz float %4, %i.k                  ; 3 uses
  %i.m = icmp slt i32 %5, %6
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = fneg nsz float %i.g                      ; 2 uses
  %i.o = sext i32 %5 to i64                       ; 9 uses
  %wide.trip.count = sext i32 %6 to i64           ; 4 uses
  %i.p = sub nsw i64 %wide.trip.count, %i.o       ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %7 = xor i64 %i.o, -1
  %8 = add nsw i64 %7, %wide.trip.count           ; 2 uses
  %9 = shl nsw i64 %i.o, 3                        ; 5 uses
  %10 = getelementptr i8, ptr %1, i64 %9
  %scevgep = getelementptr i8, ptr %10, i64 -16   ; 2 uses
  %mul.result = shl nsw i64 %8, 3                 ; 5 uses
  %mul.overflow = icmp ugt i64 %8, 2305843009213693951
  %11 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %12 = icmp ult ptr %11, %scevgep
  %13 = getelementptr i8, ptr %1, i64 %9
  %scevgep44 = getelementptr i8, ptr %13, i64 -12 ; 2 uses
  %14 = getelementptr i8, ptr %scevgep44, i64 %mul.result
  %15 = icmp ult ptr %14, %scevgep44
  %16 = getelementptr i8, ptr %1, i64 %9
  %scevgep45 = getelementptr i8, ptr %16, i64 -8  ; 2 uses
  %17 = getelementptr i8, ptr %scevgep45, i64 %mul.result
  %18 = icmp ult ptr %17, %scevgep45
  %19 = or i1 %18, %mul.overflow
  %20 = getelementptr i8, ptr %1, i64 %9
  %scevgep46 = getelementptr i8, ptr %20, i64 -4  ; 2 uses
  %21 = getelementptr i8, ptr %scevgep46, i64 %mul.result
  %22 = icmp ult ptr %21, %scevgep46
  %scevgep47 = getelementptr i8, ptr %1, i64 %9   ; 2 uses
  %23 = getelementptr i8, ptr %scevgep47, i64 %mul.result
  %24 = icmp ult ptr %23, %scevgep47
  %25 = or i1 %15, %12
  %26 = or i1 %25, %19
  %27 = or i1 %22, %26
  %28 = or i1 %24, %27
  br i1 %28, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.q = shl nsw i64 %i.o, 3                      ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = shl nsw i64 %wide.trip.count, 3          ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %i.w = getelementptr i8, ptr %1, i64 %i.s
  %bound0 = icmp ult ptr %i.r, %i.w
  %bound1 = icmp ult ptr %i.v, %i.t
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.x = add nsw i64 %n.vec, %i.o
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat53 = shufflevector <4 x float> %broadcast.splatinsert52, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat55 = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat57 = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat59 = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add i64 %index, %i.o                     ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %1, i64 %i.y ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -16     ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.aa, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec60.a = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ab = fmul nsz <4 x float> %strided.vec60.a, %broadcast.splat
  %i.ac = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %broadcast.splat53, <4 x float> %i.ab)
  %i.ad = getelementptr i8, ptr %i.z, i64 -8      ; 2 uses
  %wide.vec61 = load <8 x float>, ptr %i.ad, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec62 = shufflevector <8 x float> %wide.vec61, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ae = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec62, <4 x float> %broadcast.splat55, <4 x float> %i.ac)
  %i.af = fneg nsz <8 x float> %wide.vec61
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ah = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %broadcast.splat57, <4 x float> %i.ae)
  %wide.vec64 = load <8 x float>, ptr %i.z, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec65 = shufflevector <8 x float> %wide.vec64, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec66.a = shufflevector <8 x float> %wide.vec64, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ai = fadd nsz <4 x float> %strided.vec65, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y
  %wide.vec67 = load <8 x float>, ptr %i.aa, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec68 = shufflevector <8 x float> %wide.vec67, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec69 = shufflevector <8 x float> %wide.vec67, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ak = fmul nsz <4 x float> %broadcast.splat59, %strided.vec68
  %i.al = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec69, <4 x float> %broadcast.splat53, <4 x float> %i.ak)
  %wide.vec70 = load <8 x float>, ptr %i.ad, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec71 = shufflevector <8 x float> %wide.vec70, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec72 = shufflevector <8 x float> %wide.vec70, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.am = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec72, <4 x float> %broadcast.splat55, <4 x float> %i.al)
  %i.an = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec71, <4 x float> %broadcast.splat57, <4 x float> %i.am)
  %i.ao = fadd nsz <4 x float> %strided.vec66.a, %i.an
  %interleaved.vec = shufflevector <4 x float> %i.ai, <4 x float> %i.ao, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aj, align 4, !tbaa !11, !alias.scope !41, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph ], [ %i.x, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aq = getelementptr [8 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -16    ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !11
  %i.at = getelementptr i8, ptr %i.aq, i64 -12    ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %i.av = fmul nsz float %i.au, %i.n
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.c, float %i.av)
  %i.ax = getelementptr i8, ptr %i.aq, i64 -8     ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.i, float %i.aw)
  %i.ba = getelementptr i8, ptr %i.aq, i64 -4     ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bc = fneg nsz float %i.bb
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.l, float %i.az)
  %i.be = load float, ptr %i.aq, align 4, !tbaa !11
  %i.bf = fadd nsz float %i.be, %i.bd
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store float %i.bf, ptr %i.bg, align 4, !tbaa !11
  %i.bh = load float, ptr %i.at, align 4, !tbaa !11
  %i.bi = load float, ptr %i.ar, align 4, !tbaa !11
  %i.bj = fmul nsz float %i.g, %i.bi
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float %i.c, float %i.bj)
  %i.bl = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.i, float %i.bk)
  %i.bn = load float, ptr %i.ax, align 4, !tbaa !11
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float %i.l, float %i.bm)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11
  %i.br = fadd nsz float %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store float %i.br, ptr %i.bs, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_hf_g_filt_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4) #1 {
bb.a:
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %4 ; 6 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 3
  %i.c = getelementptr i8, ptr %0, i64 %i.b       ; 2 uses
  %i.d = mul nuw nsw i64 %wide.trip.count, 320
  %i.e = shl i64 %4, 3
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 %i.e
  %i.h = getelementptr i8, ptr %i.g, i64 -312
  %i.i = shl nuw nsw i64 %wide.trip.count, 2
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %bound0 = icmp ult ptr %0, %i.h
  %bound1 = icmp ult ptr %invariant.gep, %i.c
  %found.conflict = and i1 %bound0, %bound1
  %bound023 = icmp ult ptr %0, %i.j
  %bound124 = icmp ult ptr %2, %i.c
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  br i1 %conflict.rdx, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.k = getelementptr [320 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.l = getelementptr [320 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 320
  %i.n = load float, ptr %i.k, align 4, !tbaa !11, !alias.scope !48
  %i.o = load float, ptr %i.m, align 4, !tbaa !11, !alias.scope !48
  %i.p = insertelement <2 x float> poison, float %i.n, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 1
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load = load <2 x float>, ptr %i.r, align 4, !tbaa !11, !alias.scope !49
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.u = getelementptr i8, ptr %i.l, i64 324
  %i.v = load float, ptr %i.t, align 4, !tbaa !11, !alias.scope !48
  %i.w = load float, ptr %i.u, align 4, !tbaa !11, !alias.scope !48
  %i.x = insertelement <2 x float> poison, float %i.v, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.w, i64 1
  %i.z = shufflevector <2 x float> %i.q, <2 x float> %i.y, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aa = shufflevector <2 x float> %wide.load, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fmul nsz <4 x float> %i.z, %i.aa
  store <4 x float> %interleaved.vec, ptr %i.s, align 4, !tbaa !11, !alias.scope !50, !noalias !51
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader26
  %gep.prol = getelementptr [320 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.ac = load float, ptr %gep.prol, align 4, !tbaa !11
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !11
  %i.af = fmul nsz float %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  store float %i.af, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %gep.prol, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %i.aj = load float, ptr %i.ad, align 4, !tbaa !11
  %i.ak = fmul nsz float %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store float %i.ak, ptr %i.al, align 4, !tbaa !11
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader26
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader26 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.am = add nsw i64 %wide.trip.count, -1
  %i.an = icmp eq i64 %indvars.iv.ph, %i.am
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr [320 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ao = load float, ptr %gep, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %i.ar = fmul nsz float %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store float %i.ar, ptr %i.as, align 4, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %i.av = load float, ptr %i.ap, align 4, !tbaa !11
  %i.aw = fmul nsz float %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.aw, ptr %i.ax, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr [320 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.ay = load float, ptr %gep.1, align 4, !tbaa !11
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !11
  %i.bb = fmul nsz float %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  store float %i.bb, ptr %i.bc, align 4, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %gep.1, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !11
  %i.bf = load float, ptr %i.az, align 4, !tbaa !11
  %i.bg = fmul nsz float %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store float %i.bg, ptr %i.bh, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_hf_apply_noise_0(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %sbr_hf_apply_noise.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.034.i5 = phi i32 [ %3, %.lr.ph.preheader ], [ %i.e, %bb.d ]
  %.035.i4 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.x, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !11 ; 3 uses
  %i.d = add nsw i32 %.034.i5, 1
  %i.e = and i32 %i.d, 511                        ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load float, ptr %i.f, align 4, !tbaa !11 ; 3 uses
  %i.h = fcmp nsz une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = extractelement <2 x float> %i.c, i64 0
  %i.j = fadd nsz float %i.i, %i.g
end_hunk_0
