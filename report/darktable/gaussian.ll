Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gaussian?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@dt_gaussian_blur_4c:bb.a
  %reass.add351 = fsub reassoc nsz arcp contract afn float %.neg348.reass, %i.js
  %i.jt = fadd reassoc nsz arcp contract afn float %i.jq, %i.jp
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jk
  %i.jv = or disjoint i64 %i.jk, 1                ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.jv
  %i.jx = fmul reassoc nsz arcp contract afn float %.sroa.5433.0, %.0336
  %i.jy = extractelement <4 x float> %i.ji, i64 1 ; 2 uses
  %.neg348.reass.1 = fmul reassoc nsz arcp contract afn float %i.jy, %factor.op.fmul381
  %i.jz = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.5429.0
  %reass.add351.1 = fsub reassoc nsz arcp contract afn float %.neg348.reass.1, %i.jz
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jv
  %i.kb = or disjoint i64 %i.jk, 2                ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.kb
  %i.kd = fmul reassoc nsz arcp contract afn float %.sroa.8434.0, %.0336
  %i.ke = extractelement <4 x float> %i.ji, i64 2 ; 2 uses
  %.neg348.reass.2 = fmul reassoc nsz arcp contract afn float %i.ke, %factor.op.fmul381
  %i.kf = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.8430.0
  %reass.add351.2 = fsub reassoc nsz arcp contract afn float %.neg348.reass.2, %i.kf
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kb
  %i.kh = or disjoint i64 %i.jk, 3                ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.kh
  %i.kj = fmul reassoc nsz arcp contract afn float %.sroa.11435.0, %.0336
  %i.kk = extractelement <4 x float> %i.ji, i64 3 ; 2 uses
  %.neg348.reass.3 = fmul reassoc nsz arcp contract afn float %i.kk, %factor.op.fmul381
  %i.kl = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.11431.0
  %reass.add351.3 = fsub reassoc nsz arcp contract afn float %.neg348.reass.3, %i.kl
  %i.km = fadd reassoc nsz arcp contract afn float %i.jt, %reass.add351 ; 2 uses
  store float %i.km, ptr %i.ju, align 4, !tbaa !23
  %i.kn = load float, ptr %i.jw, align 4, !tbaa !23 ; 3 uses
  %i.ko = fcmp reassoc nsz arcp contract afn ult float %i.kn, %i.dg
  %.inv339.1 = fcmp reassoc nsz arcp contract afn ole float %i.kn, %i.dk
  %.304.1 = select reassoc nsz arcp contract afn i1 %.inv339.1, float %i.kn, float %i.dk
  %i.kp = select reassoc nsz arcp contract afn i1 %i.ko, float %i.dg, float %.304.1 ; 2 uses
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, %.0337
  %i.kr = fadd reassoc nsz arcp contract afn float %i.jx, %i.kq
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kr, %reass.add351.1 ; 2 uses
  store float %i.ks, ptr %i.ka, align 4, !tbaa !23
  %i.kt = load float, ptr %i.kc, align 4, !tbaa !23 ; 3 uses
  %i.ku = fcmp reassoc nsz arcp contract afn ult float %i.kt, %i.dh
  %.inv339.2 = fcmp reassoc nsz arcp contract afn ole float %i.kt, %i.dl
  %.304.2 = select reassoc nsz arcp contract afn i1 %.inv339.2, float %i.kt, float %i.dl
  %i.kv = select reassoc nsz arcp contract afn i1 %i.ku, float %i.dh, float %.304.2 ; 2 uses
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kv, %.0337
  %i.kx = fadd reassoc nsz arcp contract afn float %i.kd, %i.kw
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kx, %reass.add351.2 ; 2 uses
  store float %i.ky, ptr %i.kg, align 4, !tbaa !23
  %i.kz = load float, ptr %i.ki, align 4, !tbaa !23 ; 3 uses
  %i.la = fcmp reassoc nsz arcp contract afn ult float %i.kz, %i.di
  %.inv339.3 = fcmp reassoc nsz arcp contract afn ole float %i.kz, %i.dm
  %.304.3 = select reassoc nsz arcp contract afn i1 %.inv339.3, float %i.kz, float %i.dm
  %i.lb = select reassoc nsz arcp contract afn i1 %i.la, float %i.di, float %.304.3 ; 2 uses
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, %.0337
  %i.ld = fadd reassoc nsz arcp contract afn float %i.kj, %i.lc
  %i.le = fadd reassoc nsz arcp contract afn float %i.ld, %reass.add351.3 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kh
  store float %i.le, ptr %i.lf, align 4, !tbaa !23
  %i.lg = add nuw i64 %.0261384, 1                ; 2 uses
  %exitcond407.not = icmp eq i64 %i.lg, %i.b
  %i.lh = insertelement <4 x float> poison, float %i.km, i64 0
  %i.li = insertelement <4 x float> %i.lh, float %i.ks, i64 1
  %i.lj = insertelement <4 x float> %i.li, float %i.ky, i64 2
  %i.lk = insertelement <4 x float> %i.lj, float %i.le, i64 3
  br i1 %exitcond407.not, label %._crit_edge386, label %bb.f

.lr.ph393:                                        ; preds = %._crit_edge386
  %.idx = mul i64 %i.cy, %i.jh
  %i.ll = getelementptr i8, ptr %i.bw, i64 %.idx
  %i.lm = getelementptr i8, ptr %i.ll, i64 -16
  %i.ln = load <4 x float>, ptr %i.lm, align 4, !tbaa !23 ; 3 uses
  %i.lo = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ln, %i.cb
  %i.lp = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.ln, %i.cc
  %i.lq = select <4 x i1> %i.lp, <4 x float> %i.ln, <4 x float> %i.cc
  %i.lr = select <4 x i1> %i.lo, <4 x float> %i.cb, <4 x float> %i.lq ; 3 uses
  %i.ls = fmul reassoc nsz arcp contract afn <4 x float> %i.lr, %i.dc ; 2 uses
  %i.lt = mul i64 %.0263395, %i.b
  br label %.loopexit

._crit_edge394:                                   ; preds = %.loopexit, %._crit_edge386
  %exitcond411.not = icmp eq i64 %i.jh, %i.e
  br i1 %exitcond411.not, label %._crit_edge397, label %.preheader363

.loopexit:                                        ; preds = %.lr.ph393, %.loopexit
  %indvars.iv = phi i64 [ %i.da, %.lr.ph393 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.lu = phi <4 x float> [ %i.ls, %.lr.ph393 ], [ %i.mr, %.loopexit ] ; 2 uses
  %i.lv = phi <4 x float> [ %i.lr, %.lr.ph393 ], [ %i.ns, %.loopexit ] ; 2 uses
  %i.lw = phi <4 x float> [ %i.lr, %.lr.ph393 ], [ %i.nq, %.loopexit ] ; 2 uses
  %i.lx = phi <4 x float> [ %i.ls, %.lr.ph393 ], [ %i.lu, %.loopexit ]
  %i.ly = add i64 %i.lt, %indvars.iv
  %i.lz = shl i64 %i.ly, 2                        ; 5 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !23
  %i.mc = fmul reassoc nsz arcp contract afn <4 x float> %i.lw, %i.dn
  %i.md = fmul reassoc nsz arcp contract afn <4 x float> %i.lv, %i.bo
  %i.me = fmul reassoc nsz arcp contract afn <4 x float> %i.lu, %i.dp
  %i.mf = fmul reassoc nsz arcp contract afn <4 x float> %i.dr, %i.lx
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lz ; 2 uses
  %i.mh = or disjoint i64 %i.lz, 1                ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mh
  %i.mk = or disjoint i64 %i.lz, 2                ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.mk
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mk
  %i.mn = or disjoint i64 %i.lz, 3                ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.mn
  %i.mp = fsub reassoc nsz arcp contract afn <4 x float> %i.me, %i.mf
  %i.mq = fadd reassoc nsz arcp contract afn <4 x float> %i.md, %i.mc
  %i.mr = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mp ; 2 uses
  %i.ms = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mn
  %i.mu = load <4 x float>, ptr %i.mg, align 4, !tbaa !23
  %i.mv = fadd reassoc nsz arcp contract afn <4 x float> %i.mu, %i.mr ; 4 uses
  %i.mw = extractelement <4 x float> %i.mv, i64 0
  store float %i.mw, ptr %i.mg, align 4, !tbaa !23
  %i.mx = load float, ptr %i.mi, align 4, !tbaa !23
  %i.my = extractelement <4 x float> %i.mv, i64 1
  store float %i.my, ptr %i.mj, align 4, !tbaa !23
  %i.mz = load float, ptr %i.ml, align 4, !tbaa !23
  %i.na = insertelement <2 x float> %i.ms, float %i.mz, i64 1 ; 3 uses
  %i.nb = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.na, %i.du
  %i.nc = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.na, %i.dv
  %i.nd = select <2 x i1> %i.nc, <2 x float> %i.na, <2 x float> %i.dv
  %i.ne = select <2 x i1> %i.nb, <2 x float> %i.du, <2 x float> %i.nd
  %i.nf = extractelement <4 x float> %i.mv, i64 2
  store float %i.nf, ptr %i.mm, align 4, !tbaa !23
  %i.ng = load float, ptr %i.mo, align 4, !tbaa !23
  %i.nh = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.ni = insertelement <2 x float> %i.nh, float %i.ng, i64 1 ; 3 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.ni, %i.ds
  %i.nk = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.ni, %i.dt
  %i.nl = select <2 x i1> %i.nk, <2 x float> %i.ni, <2 x float> %i.dt
  %i.nm = select <2 x i1> %i.nj, <2 x float> %i.ds, <2 x float> %i.nl
  %i.nn = extractelement <4 x float> %i.mv, i64 3
  store float %i.nn, ptr %i.mt, align 4, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.no = icmp sgt i64 %indvars.iv, 0
  %i.np = shufflevector <2 x float> %i.ne, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> %i.lv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.nr = shufflevector <2 x float> %i.nm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ns = shufflevector <4 x float> %i.lw, <4 x float> %i.nr, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  br i1 %i.no, label %.loopexit, label %._crit_edge394
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @dt_gaussian_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.f) #18
  tail call void @free(ptr noundef nonnull %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_gaussian_fast_blur(ptr nofree noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [25 x float], align 16            ; 21 uses
  %i.b = alloca [25 x float], align 16            ; 11 uses
  %i.c = alloca [25 x float], align 16            ; 11 uses
  %i.d = icmp eq ptr %0, %1                       ; 2 uses
  %i.e = sext i32 %7 to i64
  %i.f = sext i32 %2 to i64                       ; 4 uses
  %i.g = sext i32 %3 to i64
  %i.h = mul nsw i64 %i.g, %i.f
  %i.i = mul i64 %i.h, %i.e                       ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = shl i64 %i.i, 2
  %i.k = tail call ptr @dt_alloc_aligned(i64 noundef %i.j) #18 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 64) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.k, %bb.b ], [ %1, %bb.a ]    ; 5 uses
  switch i32 %7, label %bb.y [
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 4, label %bb.w
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call fastcc void @_calc_9x9_gauss_coeffs(ptr noundef %i.c, float noundef %4)
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.preheader269.lr.ph.i, label %_fast_9x9_kernel_1.exit

.preheader269.lr.ph.i:                            ; preds = %bb.d
  %i.m = shl nuw nsw i32 %2, 2
  %i.n = mul nuw nsw i32 %2, 3
  %i.o = shl nuw nsw i32 %2, 1
  %i.p = icmp sgt i32 %2, 0
  %8 = zext nneg i32 %i.m to i64                  ; 2 uses
  %9 = zext nneg i32 %i.o to i64                  ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %9
  %invariant.gep275.i = getelementptr [4 x i8], ptr %0, i64 %8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.r = load float, ptr %i.q, align 4
  %invariant.gep277.i = getelementptr [4 x i8], ptr %0, i64 %i.f
  %10 = zext nneg i32 %i.n to i64                 ; 2 uses
  %invariant.gep279.i = getelementptr [4 x i8], ptr %0, i64 %10
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.t = load <16 x float>, ptr %i.s, align 4
  %i.u = shufflevector <16 x float> %i.t, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 9, i32 10, i32 11, i32 15>
  %i.v = load <7 x float>, ptr %i.c, align 16
  %i.w = shufflevector <7 x float> %i.v, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 6>
  br i1 %i.p, label %.preheader269.preheader.i, label %_fast_9x9_kernel_1.exit

.preheader269.preheader.i:                        ; preds = %.preheader269.lr.ph.i
  %i.x = add nsw i32 %3, -4
  %i.y = add nsw i32 %2, -4
  %i.z = sext i32 %i.y to i64
  %i.aa = zext nneg i32 %2 to i64                 ; 5 uses
  %i.ab = sext i32 %i.x to i64
  %wide.trip.count288.i = zext nneg i32 %3 to i64
  br label %.preheader269.i

.preheader269.i:                                  ; preds = %._crit_edge.i, %.preheader269.preheader.i
  %indvars.iv285.i = phi i64 [ 0, %.preheader269.preheader.i ], [ %indvars.iv.next286.i, %._crit_edge.i ] ; 5 uses
  %i.ac = mul nuw nsw i64 %indvars.iv285.i, %i.f
  %i.ad = icmp samesign ugt i64 %indvars.iv285.i, 3
  %i.ae = icmp slt i64 %indvars.iv285.i, %i.ab
  %i.af = trunc nuw nsw i64 %indvars.iv285.i to i32
  br label %bb.e

._crit_edge.i:                                    ; preds = %.loopexit268.i
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next286.i, %wide.trip.count288.i
  br i1 %exitcond289.not.i, label %_fast_9x9_kernel_1.exit, label %.preheader269.i

bb.e:                                             ; preds = %.loopexit268.i, %.preheader269.i
  %indvars.iv.i = phi i64 [ 0, %.preheader269.i ], [ %indvars.iv.next.i.pre-phi, %.loopexit268.i ] ; 10 uses
  %i.ag = add nuw nsw i64 %indvars.iv.i, %i.ac    ; 10 uses
  %i.ah = icmp samesign ugt i64 %indvars.iv.i, 3
  %or.cond.i = select i1 %i.ah, i1 %i.ad, i1 false
  %i.ai = icmp slt i64 %indvars.iv.i, %i.z
  %or.cond262.i = select i1 %or.cond.i, i1 %i.ai, i1 false
  %or.cond264.i = select i1 %or.cond262.i, i1 %i.ae, i1 false
  br i1 %or.cond264.i, label %bb.f, label %.preheader267.preheader.i

.preheader267.preheader.i:                        ; preds = %bb.e
  %i.aj = trunc i64 %indvars.iv.i to i32          ; 4 uses
  %i.ak = add i32 %i.aj, -4                       ; 2 uses
  %or.cond266.i = icmp ult i32 %i.ak, %2
  %i.al = add i32 %i.aj, -3                       ; 2 uses
  %or.cond266.1.i = icmp ult i32 %i.al, %2
  %i.am = add i32 %i.aj, -2                       ; 2 uses
  %or.cond266.2.i = icmp ult i32 %i.am, %2
  %i.an = add i32 %i.aj, -1                       ; 2 uses
  %or.cond266.3.i = icmp ult i32 %i.an, %2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ap = add nuw nsw i64 %indvars.iv.i, 1        ; 3 uses
  %or.cond266.5.i = icmp samesign ult i64 %i.ap, %i.aa
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = add nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %or.cond266.6.i = icmp samesign ult i64 %i.ar, %i.aa
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  %i.at = add nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %or.cond266.7.i = icmp samesign ult i64 %i.at, %i.aa
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  %i.av = add nuw nsw i64 %indvars.iv.i, 4        ; 2 uses
  %or.cond266.8.i = icmp samesign ult i64 %i.av, %i.aa
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av
  br label %.preheader267.i

bb.f:                                             ; preds = %bb.e
  %i.ax = sub nsw i64 %i.ag, %8
  %i.ay = getelementptr [4 x i8], ptr %0, i64 %i.ax ; 5 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !23
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !23
  %i.bd = sub nsw i64 %i.ag, %9
  %i.be = getelementptr [4 x i8], ptr %0, i64 %i.bd ; 7 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -16
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ag ; 7 uses
  %i.bg = getelementptr i8, ptr %gep.i, i64 -16
  %gep276.i = getelementptr [4 x i8], ptr %invariant.gep275.i, i64 %i.ag ; 5 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 -4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !23
  %i.bj = getelementptr i8, ptr %i.ay, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !23
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bi
  %i.bm = sub nsw i64 %i.ag, %i.f
  %i.bn = getelementptr [4 x i8], ptr %0, i64 %i.bm ; 6 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -16
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !23
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bl, %i.bp
  %i.br = getelementptr i8, ptr %i.bn, i64 16
  %i.bs = load float, ptr %i.br, align 4, !tbaa !23
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bq, %i.bs
  %gep278.i = getelementptr [4 x i8], ptr %invariant.gep277.i, i64 %i.ag ; 6 uses
  %i.bu = getelementptr i8, ptr %gep278.i, i64 -16
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !23
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bt, %i.bv
  %i.bx = getelementptr i8, ptr %gep278.i, i64 16
  %i.by = load float, ptr %i.bx, align 4, !tbaa !23
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bw, %i.by
  %i.ca = getelementptr i8, ptr %gep276.i, i64 -4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !23
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bz, %i.cb
  %i.cd = getelementptr i8, ptr %gep276.i, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !23
  %i.cf = fadd reassoc nsz arcp contract afn float %i.cc, %i.ce
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.r
  %i.ch = load float, ptr %i.ay, align 4, !tbaa !23
  %i.ci = getelementptr [4 x i8], ptr %0, i64 %i.ag ; 4 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = load float, ptr %gep276.i, align 4, !tbaa !23
  %i.cl = sub nsw i64 %i.ag, %10
  %i.cm = getelementptr [4 x i8], ptr %0, i64 %i.cl ; 7 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 -12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !23
  %gep280.i = getelementptr [4 x i8], ptr %invariant.gep279.i, i64 %i.ag ; 6 uses
  %i.cp = getelementptr i8, ptr %i.cm, i64 -8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !23
  %i.cr = getelementptr i8, ptr %i.cm, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !23
  %i.ct = getelementptr i8, ptr %i.be, i64 12
  %i.cu = getelementptr i8, ptr %i.cm, i64 -4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !23
  %i.cw = getelementptr i8, ptr %i.cm, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !23
  %i.cy = getelementptr i8, ptr %i.bn, i64 -12
  %i.cz = getelementptr i8, ptr %gep278.i, i64 -12
  %i.da = getelementptr i8, ptr %gep280.i, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  %i.dc = load float, ptr %i.cm, align 4, !tbaa !23
  %i.dd = getelementptr i8, ptr %i.be, i64 -8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !23
  %i.df = getelementptr i8, ptr %i.be, i64 -4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !23
  %i.dh = getelementptr i8, ptr %i.be, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !23
  %i.dj = getelementptr i8, ptr %i.bn, i64 8
  %i.dk = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.cx, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.cv, i64 1
  %i.do = fadd reassoc nsz arcp contract afn <2 x float> %i.dl, %i.dn
  %i.dp = load <2 x float>, ptr %i.cy, align 4, !tbaa !23
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.do, %i.dq
  %i.ds = load <2 x float>, ptr %i.dj, align 4, !tbaa !23
  %i.dt = fadd reassoc nsz arcp contract afn <2 x float> %i.dr, %i.ds
  %i.du = load <2 x float>, ptr %i.cz, align 4, !tbaa !23
  %i.dv = getelementptr i8, ptr %gep278.i, i64 8
  %i.dw = getelementptr i8, ptr %gep.i, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !23
  %i.dy = getelementptr i8, ptr %gep280.i, i64 -12
  %i.dz = getelementptr i8, ptr %gep276.i, i64 -8
  %i.ea = getelementptr i8, ptr %gep280.i, i64 -8
  %i.eb = getelementptr i8, ptr %gep.i, i64 -8
  %i.ec = getelementptr i8, ptr %gep280.i, i64 -4
  %i.ed = getelementptr i8, ptr %gep.i, i64 -4
  %i.ee = getelementptr i8, ptr %i.ci, i64 12
  %i.ef = getelementptr i8, ptr %i.cm, i64 12
  %i.eg = getelementptr i8, ptr %gep.i, i64 12
  %i.eh = getelementptr i8, ptr %i.be, i64 8
  %i.ei = load float, ptr %i.ef, align 4, !tbaa !23
  %i.ej = load float, ptr %i.eh, align 4, !tbaa !23
  %i.ek = getelementptr i8, ptr %gep280.i, i64 12
  %i.el = getelementptr i8, ptr %gep276.i, i64 8
  %i.em = getelementptr i8, ptr %gep280.i, i64 8
  %i.en = getelementptr i8, ptr %gep.i, i64 8
  %i.eo = load float, ptr %i.ek, align 4, !tbaa !23
  %i.ep = load float, ptr %i.el, align 4, !tbaa !23
  %i.eq = load float, ptr %i.em, align 4, !tbaa !23
  %i.er = load float, ptr %i.en, align 4, !tbaa !23
  %i.es = fadd reassoc nsz arcp contract afn float %i.ej, %i.de
  %i.et = fadd reassoc nsz arcp contract afn float %i.ei, %i.co
  %i.eu = load float, ptr %i.dy, align 4, !tbaa !23
  %i.ev = load float, ptr %i.dz, align 4, !tbaa !23
  %i.ew = load float, ptr %i.ea, align 4, !tbaa !23
  %i.ex = load float, ptr %i.eb, align 4, !tbaa !23
  %i.ey = load float, ptr %i.ed, align 4, !tbaa !23
  %i.ez = fadd reassoc nsz arcp contract afn float %i.es, %i.ex
  %i.fa = fadd reassoc nsz arcp contract afn float %i.et, %i.eu
  %i.fb = fadd reassoc nsz arcp contract afn float %i.ez, %i.er
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fa, %i.eo
  %i.fd = load <2 x float>, ptr %i.cj, align 4, !tbaa !23
  %i.fe = load <2 x float>, ptr %i.dv, align 4, !tbaa !23
  %i.ff = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.fg = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %i.fh = fadd reassoc nsz arcp contract afn <4 x float> %i.ff, %i.fg
  %i.fi = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fk = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.fl = insertelement <4 x float> %i.fk, float %i.ch, i64 1
  %i.fm = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fl, <4 x float> %i.fm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fo = fadd reassoc nsz arcp contract afn <4 x float> %i.fj, %i.fn
  %i.fp = load <2 x float>, ptr %i.ec, align 4, !tbaa !23 ; 2 uses
  %i.fq = load <2 x float>, ptr %i.ee, align 4, !tbaa !23
  %i.fr = insertelement <4 x float> poison, float %i.ey, i64 2
  %i.fs = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <4 x float> %i.fr, <4 x float> %i.fs, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.fu = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> %i.ft, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fw = fadd reassoc nsz arcp contract afn <4 x float> %i.fo, %i.fv
end_hunk_0
begin_hunk_1_@dt_gaussian_fast_blur:bb.a
  %i.hf = getelementptr i8, ptr %i.ci, i64 8
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !23
  %i.hh = load float, ptr %gep.i, align 4, !tbaa !23
  %i.hi = getelementptr i8, ptr %i.bn, i64 -4
  %i.hj = getelementptr i8, ptr %i.bn, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !23
  %i.hl = getelementptr i8, ptr %gep278.i, i64 -4
  %i.hm = getelementptr i8, ptr %gep278.i, i64 4
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !23
  %i.ho = load <2 x float>, ptr %i.hi, align 4, !tbaa !23
  %i.hp = load <4 x float>, ptr %i.he, align 4, !tbaa !23 ; 3 uses
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 poison>
  %i.hr = insertelement <4 x float> %i.hq, float %i.hk, i64 3
  %i.hs = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.hd, i64 1
  %i.ht = shufflevector <2 x float> %i.ho, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hv = fadd reassoc nsz arcp contract afn <4 x float> %i.hr, %i.hu
  %i.hw = load <2 x float>, ptr %i.hl, align 4, !tbaa !23
  %i.hx = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.hg, i64 1
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.hz = shufflevector <2 x float> %i.hw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ia = shufflevector <4 x float> %i.hy, <4 x float> %i.hz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ib = fadd reassoc nsz arcp contract afn <4 x float> %i.ia, %i.hv
  %i.ic = shufflevector <4 x float> %i.hp, <4 x float> %i.hz, <4 x i32> <i32 2, i32 poison, i32 5, i32 poison>
  %i.id = insertelement <4 x float> %i.ic, float %i.hh, i64 1
  %i.ie = insertelement <4 x float> %i.id, float %i.hn, i64 3
  %i.if = fadd reassoc nsz arcp contract afn <4 x float> %i.ie, %i.ib
  %i.ig = fmul reassoc nsz arcp contract afn <4 x float> %i.if, %i.w
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ii = fadd reassoc nsz arcp contract afn <8 x float> %i.hc, %i.ih
  %i.ij = shufflevector <8 x float> %i.ii, <8 x float> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.cg, <8 x float> %i.ij)
  %.pre = add nuw nsw i64 %indvars.iv.i, 1
  br label %.loopexit268.i

.preheader267.i:                                  ; preds = %.loopexit.i, %.preheader267.preheader.i
  %.0252273.i = phi i32 [ %i.lh, %.loopexit.i ], [ -4, %.preheader267.preheader.i ] ; 3 uses
  %.0253272.i = phi float [ %.3.i, %.loopexit.i ], [ 0.000000e+00, %.preheader267.preheader.i ] ; 3 uses
  %i.ik = add nsw i32 %.0252273.i, %i.af          ; 2 uses
  %or.cond265.i = icmp ult i32 %i.ik, %3
  br i1 %or.cond265.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.preheader267.i
  %i.il = tail call i32 @llvm.abs.i32(i32 %.0252273.i, i1 true)
  %i.im = mul nuw nsw i32 %i.il, 5                ; 4 uses
  %i.in = mul nuw nsw i32 %i.ik, %2               ; 5 uses
  br i1 %or.cond266.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.io = zext nneg i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !23
  %i.is = add nuw nsw i32 %i.in, %i.ak
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !23
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, %i.ir
  %i.ix = fadd reassoc nsz arcp contract afn float %i.iw, %.0253272.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.i
  %.2.i = phi nsz float [ %i.ix, %bb.g ], [ %.0253272.i, %.preheader.i ] ; 2 uses
  br i1 %or.cond266.1.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.iy = zext nneg i32 %i.im to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !23
  %i.jc = add nuw nsw i32 %i.in, %i.al
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !23
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.jb
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jg, %.2.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.1.i = phi nsz float [ %i.jh, %bb.i ], [ %.2.i, %bb.h ] ; 2 uses
  br i1 %or.cond266.2.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ji = zext nneg i32 %i.im to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !23
  %i.jm = add nuw nsw i32 %i.in, %i.am
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jn
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !23
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, %i.jl
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jq, %.2.1.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.2.i = phi nsz float [ %i.jr, %bb.k ], [ %.2.1.i, %bb.j ] ; 2 uses
  %i.js = zext nneg i32 %i.im to i64              ; 2 uses
  br i1 %or.cond266.3.i, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !23
  %i.jw = add nuw nsw i32 %i.in, %i.an
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jx
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !23
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.jv
  %i.kb = fadd reassoc nsz arcp contract afn float %i.ka, %.2.2.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %.2.3.i = phi nsz float [ %i.kb, %bb.m ], [ %.2.2.i, %bb.l ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.js ; 5 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !23
  %i.ke = zext nneg i32 %i.in to i64              ; 5 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !23
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, %i.kd
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %.2.3.i ; 2 uses
  br i1 %or.cond266.5.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !23
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ke
  %i.km = load float, ptr %i.kl, align 4, !tbaa !23
  %i.kn = fmul reassoc nsz arcp contract afn float %i.km, %i.kk
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kn, %i.ki
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2.5.i = phi nsz float [ %i.ko, %bb.n ], [ %i.ki, %._crit_edge ] ; 2 uses
  br i1 %or.cond266.6.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !23
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ke
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !23
  %i.kt = fmul reassoc nsz arcp contract afn float %i.ks, %i.kq
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kt, %.2.5.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.6.i = phi nsz float [ %i.ku, %bb.p ], [ %.2.5.i, %bb.o ] ; 2 uses
  br i1 %or.cond266.7.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !23
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ke
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !23
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, %i.kw
  %i.la = fadd reassoc nsz arcp contract afn float %i.kz, %.2.6.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.7.i = phi nsz float [ %i.la, %bb.r ], [ %.2.6.i, %bb.q ] ; 2 uses
  br i1 %or.cond266.8.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !23
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ke
  %i.le = load float, ptr %i.ld, align 4, !tbaa !23
  %i.lf = fmul reassoc nsz arcp contract afn float %i.le, %i.lc
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lf, %.2.7.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.t, %bb.s, %.preheader267.i
  %.3.i = phi nsz float [ %.0253272.i, %.preheader267.i ], [ %i.lg, %bb.t ], [ %.2.7.i, %bb.s ] ; 2 uses
  %i.lh = add nsw i32 %.0252273.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.lh, 5
  br i1 %exitcond.not.i, label %.loopexit268.i, label %.preheader267.i

.loopexit268.i:                                   ; preds = %.loopexit.i, %bb.f
  %indvars.iv.next.i.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.ap, %.loopexit.i ] ; 2 uses
  %.4.i = phi nsz float [ %op.rdx, %bb.f ], [ %.3.i, %.loopexit.i ] ; 3 uses
  %i.li = fcmp reassoc nsz arcp contract afn ult float %.4.i, %5
  %i.lj = fcmp reassoc nsz arcp contract afn ole float %.4.i, %6
  %i.lk = select reassoc nsz arcp contract afn i1 %i.lj, float %.4.i, float %6
  %i.ll = select reassoc nsz arcp contract afn i1 %i.li, float %5, float %i.lk
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ag
  store float %i.ll, ptr %i.lm, align 4, !tbaa !23
  %exitcond284.not.i = icmp eq i64 %indvars.iv.next.i.pre-phi, %i.aa
  br i1 %exitcond284.not.i, label %._crit_edge.i, label %bb.e

_fast_9x9_kernel_1.exit:                          ; preds = %._crit_edge.i, %bb.d, %.preheader269.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.y

bb.u:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call fastcc void @_calc_9x9_gauss_coeffs(ptr noundef %i.b, float noundef %4)
  %i.ln = icmp sgt i32 %3, 0
  br i1 %i.ln, label %.preheader355.lr.ph.i, label %_fast_9x9_kernel_2.exit

.preheader355.lr.ph.i:                            ; preds = %bb.u
  %i.lo = shl nuw nsw i32 %2, 3
  %i.lp = mul nuw nsw i32 %2, 6
  %i.lq = shl nuw nsw i32 %2, 2
  %i.lr = shl nuw nsw i32 %2, 1
  %i.ls = icmp sgt i32 %2, 0
  %11 = zext nneg i32 %i.lo to i64                ; 2 uses
  %12 = zext nneg i32 %i.lq to i64                ; 2 uses
  %invariant.gep.i38 = getelementptr [4 x i8], ptr %0, i64 %12
  %invariant.gep362.i = getelementptr [4 x i8], ptr %0, i64 %11
  %13 = zext nneg i32 %i.lr to i64                ; 2 uses
  %invariant.gep364.i = getelementptr [4 x i8], ptr %0, i64 %13
  %14 = zext nneg i32 %i.lp to i64                ; 2 uses
  %invariant.gep366.i = getelementptr [4 x i8], ptr %0, i64 %14
  %i.lt = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.lu = load <16 x float>, ptr %i.lt, align 4
  %i.lv = shufflevector <16 x float> %i.lu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 5, i32 6, i32 9, i32 10, i32 11, i32 15> ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.lx = load <7 x float>, ptr %i.lw, align 4
  %i.ly = shufflevector <7 x float> %i.lx, <7 x float> poison, <4 x i32> <i32 0, i32 1, i32 5, i32 6> ; 2 uses
  %i.lz = load float, ptr %i.b, align 16          ; 2 uses
  br i1 %i.ls, label %.preheader355.preheader.i, label %_fast_9x9_kernel_2.exit

.preheader355.preheader.i:                        ; preds = %.preheader355.lr.ph.i
  %i.ma = add nsw i32 %3, -4
  %i.mb = add nsw i32 %2, -4
  %i.mc = sext i32 %i.mb to i64
  %i.md = zext nneg i32 %2 to i64                 ; 6 uses
  %i.me = sext i32 %i.ma to i64
  %wide.trip.count383.i = zext nneg i32 %3 to i64
  %i.mf = insertelement <2 x float> poison, float %5, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mh = insertelement <2 x float> poison, float %6, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader355.i

.preheader355.i:                                  ; preds = %._crit_edge.i41, %.preheader355.preheader.i
  %indvars.iv380.i = phi i64 [ 0, %.preheader355.preheader.i ], [ %indvars.iv.next381.i, %._crit_edge.i41 ] ; 5 uses
  %i.mj = mul nuw nsw i64 %indvars.iv380.i, %i.md
  %i.mk = icmp samesign ugt i64 %indvars.iv380.i, 3
  %i.ml = icmp slt i64 %indvars.iv380.i, %i.me
  %i.mm = trunc nuw nsw i64 %indvars.iv380.i to i32
  br label %bb.v

._crit_edge.i41:                                  ; preds = %.loopexit352.i
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 1 ; 2 uses
  %exitcond384.not.i = icmp eq i64 %indvars.iv.next381.i, %wide.trip.count383.i
  br i1 %exitcond384.not.i, label %_fast_9x9_kernel_2.exit, label %.preheader355.i

bb.v:                                             ; preds = %.loopexit352.i, %.preheader355.i
  %indvars.iv376.i = phi i64 [ 0, %.preheader355.i ], [ %indvars.iv.next377.i.pre-phi, %.loopexit352.i ] ; 10 uses
  %i.mn = add nuw nsw i64 %indvars.iv376.i, %i.mj
  %i.mo = shl nuw nsw i64 %i.mn, 1                ; 10 uses
  %i.mp = icmp samesign ugt i64 %indvars.iv376.i, 3
  %or.cond.i39 = select i1 %i.mp, i1 %i.mk, i1 false
  %i.mq = icmp slt i64 %indvars.iv376.i, %i.mc
  %or.cond345.i = select i1 %or.cond.i39, i1 %i.mq, i1 false
  %or.cond347.i = select i1 %or.cond345.i, i1 %i.ml, i1 false
  br i1 %or.cond347.i, label %.loopexit352.loopexit.i, label %.preheader353.preheader.i

.preheader353.preheader.i:                        ; preds = %bb.v
  %i.mr = trunc i64 %indvars.iv376.i to i32       ; 4 uses
  %i.ms = add i32 %i.mr, -4                       ; 2 uses
  %or.cond349.i = icmp ult i32 %i.ms, %2
  %i.mt = add i32 %i.mr, -3                       ; 2 uses
  %or.cond349.1.i = icmp ult i32 %i.mt, %2
  %i.mu = add i32 %i.mr, -2                       ; 2 uses
  %or.cond349.2.i = icmp ult i32 %i.mu, %2
  %i.mv = add i32 %i.mr, -1                       ; 2 uses
  %or.cond349.3.i = icmp ult i32 %i.mv, %2
  %i.mw = add nuw nsw i64 %indvars.iv376.i, 1     ; 3 uses
  %or.cond349.5.i = icmp samesign ult i64 %i.mw, %i.md
  %i.mx = add nuw nsw i64 %indvars.iv376.i, 2     ; 2 uses
  %or.cond349.6.i = icmp samesign ult i64 %i.mx, %i.md
  %i.my = add nuw nsw i64 %indvars.iv376.i, 3     ; 2 uses
  %or.cond349.7.i = icmp samesign ult i64 %i.my, %i.md
  %i.mz = add nuw nsw i64 %indvars.iv376.i, 4     ; 2 uses
  %or.cond349.8.i = icmp samesign ult i64 %i.mz, %i.md
  br label %.preheader353.i

.loopexit352.loopexit.i:                          ; preds = %bb.v
  %i.na = sub nsw i64 %i.mo, %14
  %i.nb = getelementptr [4 x i8], ptr %0, i64 %i.na ; 7 uses
  %i.nc = insertelement <4 x ptr> poison, ptr %i.nb, i64 0
  %i.nd = sub nsw i64 %i.mo, %11
  %i.ne = getelementptr [4 x i8], ptr %0, i64 %i.nd ; 3 uses
  %i.nf = insertelement <4 x ptr> %i.nc, ptr %i.ne, i64 1
  %gep365.i = getelementptr [4 x i8], ptr %invariant.gep364.i, i64 %i.mo ; 12 uses
  %i.ng = getelementptr i8, ptr %gep365.i, <2 x i64> <i64 24, i64 32>
  %i.nh = shufflevector <2 x ptr> %i.ng, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x ptr> %i.nf, <4 x ptr> %i.nh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.nj = getelementptr [4 x i8], ptr %0, i64 %i.mo ; 15 uses
  %i.nk = insertelement <4 x ptr> poison, ptr %i.nj, i64 0
  %gep367.i = getelementptr [4 x i8], ptr %invariant.gep366.i, i64 %i.mo ; 10 uses
  %i.nl = insertelement <4 x ptr> %i.nk, ptr %gep367.i, i64 2
  %gep363.i = getelementptr [4 x i8], ptr %invariant.gep362.i, i64 %i.mo ; 6 uses
  %i.nm = insertelement <4 x ptr> %i.nl, ptr %gep363.i, i64 3 ; 2 uses
  %i.nn = shufflevector <4 x ptr> %i.nm, <4 x ptr> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.no = insertelement <2 x ptr> poison, ptr %gep367.i, i64 0
  %i.np = insertelement <2 x ptr> %i.no, ptr %gep363.i, i64 1
  %i.nq = getelementptr i8, <2 x ptr> %i.np, i64 8
  %i.nr = shufflevector <2 x ptr> %i.nq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ns = shufflevector <4 x ptr> %i.nn, <4 x ptr> %i.nr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.nt = getelementptr i8, ptr %i.nj, i64 8
  %i.nu = getelementptr i8, ptr %i.nj, i64 -8
  %i.nv = getelementptr i8, ptr %gep365.i, i64 8
  %i.nw = getelementptr i8, ptr %gep365.i, i64 -8
  %i.nx = sub nsw i64 %i.mo, %13
  %i.ny = getelementptr [4 x i8], ptr %0, i64 %i.nx ; 11 uses
  %i.nz = getelementptr i8, ptr %i.ny, i64 8
  %i.oa = getelementptr i8, ptr %i.ny, i64 -8
  %i.ob = getelementptr i8, ptr %i.nj, i64 16
  %i.oc = getelementptr i8, ptr %i.nj, i64 -16
  %gep.i44 = getelementptr [4 x i8], ptr %invariant.gep.i38, i64 %i.mo ; 15 uses
  %i.od = getelementptr i8, ptr %gep.i44, i64 8
  %i.oe = getelementptr i8, ptr %gep.i44, i64 -8
  %i.of = getelementptr i8, ptr %gep365.i, i64 16
  %i.og = getelementptr i8, ptr %gep365.i, i64 -16
  %i.oh = getelementptr i8, ptr %i.ny, i64 16
  %i.oi = getelementptr i8, ptr %i.ny, i64 -16
  %i.oj = sub nsw i64 %i.mo, %12
  %i.ok = getelementptr [4 x i8], ptr %0, i64 %i.oj ; 11 uses
  %i.ol = getelementptr i8, ptr %i.ok, i64 8
  %i.om = getelementptr i8, ptr %i.ok, i64 -8
  %i.on = getelementptr i8, ptr %gep.i44, i64 16
  %i.oo = getelementptr i8, ptr %gep.i44, i64 -16
  %i.op = getelementptr i8, ptr %i.ok, i64 16
  %i.oq = getelementptr i8, ptr %i.ok, i64 -16
  %i.or = shufflevector <4 x ptr> %i.nm, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.os = getelementptr i8, <4 x ptr> %i.or, <4 x i64> <i64 24, i64 32, i64 -8, i64 -8> ; 2 uses
  %i.ot = getelementptr i8, ptr %i.nj, i64 -24
  %i.ou = insertelement <4 x ptr> poison, ptr %gep.i44, i64 0
  %i.ov = insertelement <4 x ptr> %i.ou, ptr %gep365.i, i64 1
  %i.ow = shufflevector <4 x ptr> %i.ov, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ox = getelementptr i8, <4 x ptr> %i.ow, <4 x i64> <i64 -32, i64 -24, i64 -32, i64 -24> ; 2 uses
  %i.oy = insertelement <4 x ptr> poison, ptr %i.ok, i64 0
  %i.oz = insertelement <4 x ptr> %i.oy, ptr %i.ny, i64 1
  %i.pa = shufflevector <4 x ptr> %i.oz, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.pb = getelementptr i8, <4 x ptr> %i.pa, <4 x i64> <i64 32, i64 24, i64 32, i64 24> ; 2 uses
  %i.pc = getelementptr i8, <4 x ptr> %i.pa, <4 x i64> <i64 -32, i64 -24, i64 -32, i64 -24> ; 2 uses
  %i.pd = getelementptr i8, ptr %gep367.i, i64 16
  %i.pe = getelementptr i8, ptr %gep367.i, i64 -16
  %i.pf = getelementptr i8, ptr %gep.i44, i64 24
  %i.pg = getelementptr i8, ptr %i.nb, i64 -16
  %i.ph = getelementptr i8, ptr %gep367.i, i64 24
  %i.pi = getelementptr i8, ptr %gep367.i, i64 -24
  %i.pj = getelementptr i8, ptr %i.nb, i64 24
  %i.pk = getelementptr i8, ptr %i.nb, i64 -24
  %i.pl = getelementptr i8, ptr %i.nj, i64 -32
  %i.pm = getelementptr i8, ptr %gep363.i, i64 16
  %i.pn = getelementptr i8, ptr %gep363.i, i64 -16
  %i.po = getelementptr i8, ptr %gep.i44, i64 32
  %i.pp = getelementptr i8, ptr %i.ne, i64 -16
  %i.pq = tail call <9 x float> @llvm.masked.load.v9f32.p0(ptr align 4 %i.pp, <9 x i1> <i1 true, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 true>, <9 x float> poison), !tbaa !23 ; 2 uses
  %i.pr = tail call <9 x float> @llvm.masked.load.v9f32.p0(ptr align 4 %i.pg, <9 x i1> <i1 true, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 true>, <9 x float> poison), !tbaa !23 ; 2 uses
  %i.ps = shufflevector <9 x float> %i.pq, <9 x float> %i.pr, <4 x i32> <i32 8, i32 17, i32 6, i32 15>
  %i.pt = shufflevector <9 x float> %i.pq, <9 x float> %i.pr, <4 x i32> <i32 0, i32 9, i32 2, i32 11>
  %i.pu = fadd reassoc nsz arcp contract afn <4 x float> %i.ps, %i.pt
  %i.pv = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.pc, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !23
  %i.pw = fadd reassoc nsz arcp contract afn <4 x float> %i.pu, %i.pv
  %i.px = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.pb, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !23
  %i.py = fadd reassoc nsz arcp contract afn <4 x float> %i.pw, %i.px
  %i.pz = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ox, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !23
  %i.qa = fadd reassoc nsz arcp contract afn <4 x float> %i.py, %i.pz ; 3 uses
  %i.qb = load float, ptr %i.pk, align 4, !tbaa !23
  %i.qc = load float, ptr %i.oq, align 4, !tbaa !23
  %i.qd = load float, ptr %i.pl, align 4, !tbaa !23
  %i.qe = load float, ptr %i.ot, align 4, !tbaa !23
  %i.qf = load float, ptr %i.pj, align 4, !tbaa !23
  %i.qg = load float, ptr %i.op, align 4, !tbaa !23
  %i.qh = load float, ptr %i.po, align 4, !tbaa !23
  %i.qi = load float, ptr %i.pf, align 4, !tbaa !23
  %i.qj = fadd reassoc nsz arcp contract afn float %i.qf, %i.qb
  %i.qk = extractelement <4 x float> %i.qa, i64 0
  %i.ql = fadd reassoc nsz arcp contract afn float %i.qk, %i.qh
  %i.qm = extractelement <4 x float> %i.qa, i64 1
  %i.qn = fadd reassoc nsz arcp contract afn float %i.qm, %i.qi
  %i.qo = fadd reassoc nsz arcp contract afn float %i.qg, %i.qc
  %i.qp = load float, ptr %i.pn, align 4, !tbaa !23
  %i.qq = load float, ptr %i.oo, align 4, !tbaa !23
  %i.qr = load float, ptr %i.pe, align 4, !tbaa !23
  %i.qs = load float, ptr %i.pi, align 4, !tbaa !23
  %i.qt = fadd reassoc nsz arcp contract afn float %i.qj, %i.qs
  %i.qu = fadd reassoc nsz arcp contract afn float %i.ql, %i.qp
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qn, %i.qr
  %i.qw = fadd reassoc nsz arcp contract afn float %i.qo, %i.qq
  %i.qx = load float, ptr %i.ph, align 4, !tbaa !23
  %i.qy = load float, ptr %i.pm, align 4, !tbaa !23
  %i.qz = load float, ptr %i.pd, align 4, !tbaa !23
  %i.ra = load float, ptr %i.on, align 4, !tbaa !23
  %i.rb = insertelement <4 x float> poison, float %i.qw, i64 0
  %i.rc = insertelement <4 x float> %i.rb, float %i.qv, i64 1
  %i.rd = insertelement <4 x float> %i.rc, float %i.qu, i64 2
  %i.re = insertelement <4 x float> %i.rd, float %i.qt, i64 3
  %i.rf = insertelement <4 x float> poison, float %i.ra, i64 0
  %i.rg = insertelement <4 x float> %i.rf, float %i.qz, i64 1
  %i.rh = insertelement <4 x float> %i.rg, float %i.qy, i64 2
  %i.ri = insertelement <4 x float> %i.rh, float %i.qx, i64 3
  %i.rj = fadd reassoc nsz arcp contract afn <4 x float> %i.re, %i.ri
  %i.rk = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ni, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !23
  %i.rl = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.rm = insertelement <4 x float> %i.rl, float %i.qd, i64 1
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 7, i32 6>
  %i.ro = fadd reassoc nsz arcp contract afn <4 x float> %i.rn, %i.rk
  %i.rp = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.os, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !23
  %i.rq = fadd reassoc nsz arcp contract afn <4 x float> %i.ro, %i.rp
  %i.rr = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ns, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !23
  %i.rs = fadd reassoc nsz arcp contract afn <4 x float> %i.rq, %i.rr
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> %i.rj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ru = fmul reassoc nsz arcp contract afn <8 x float> %i.rt, %i.lv ; 2 uses
  %i.rv = load float, ptr %i.om, align 4, !tbaa !23
  %i.rw = load float, ptr %i.ol, align 4, !tbaa !23
  %i.rx = load float, ptr %i.oh, align 4, !tbaa !23
end_hunk_1
begin_hunk_2_@dt_gaussian_fast_blur:bb.a
  %i.zj = phi <2 x float> [ %i.adp, %.loopexit350.i ], [ zeroinitializer, %.preheader353.preheader.i ] ; 2 uses
  %i.zk = phi <2 x float> [ %i.adq, %.loopexit350.i ], [ zeroinitializer, %.preheader353.preheader.i ] ; 3 uses
  %i.zl = add nsw i32 %.0333358.i, %i.mm          ; 2 uses
  %or.cond348.i = icmp ult i32 %i.zl, %3
  br i1 %or.cond348.i, label %.preheader.i42, label %.loopexit350.i

.preheader.i42:                                   ; preds = %.preheader353.i
  %i.zm = tail call i32 @llvm.abs.i32(i32 %.0333358.i, i1 true)
  %i.zn = mul nuw nsw i32 %i.zm, 5                ; 4 uses
  %i.zo = mul nuw nsw i32 %i.zl, %2               ; 5 uses
  br i1 %or.cond349.i, label %.loopexit.loopexit.i, label %.loopexit.i43

.loopexit.loopexit.i:                             ; preds = %.preheader.i42
  %i.zp = zext nneg i32 %i.zn to i64
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.zp
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !23
  %i.zt = add nuw nsw i32 %i.zo, %i.ms
  %i.zu = zext nneg i32 %i.zt to i64
  %.idx.i = shl nuw nsw i64 %i.zu, 3
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  %i.zw = load <2 x float>, ptr %i.zv, align 4, !tbaa !23
  %i.zx = insertelement <2 x float> poison, float %i.zs, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = fmul reassoc nsz arcp contract afn <2 x float> %i.zw, %i.zy
  %i.aaa = fadd reassoc nsz arcp contract afn <2 x float> %i.zz, %i.zk ; 2 uses
  br label %.loopexit.i43

.loopexit.i43:                                    ; preds = %.loopexit.loopexit.i, %.preheader.i42
  %i.aab = phi <2 x float> [ %i.aaa, %.loopexit.loopexit.i ], [ %i.zk, %.preheader.i42 ] ; 2 uses
  %i.aac = phi <2 x float> [ %i.aaa, %.loopexit.loopexit.i ], [ %i.zj, %.preheader.i42 ]
  br i1 %or.cond349.1.i, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i43
  %i.aad = zext nneg i32 %i.zn to i64
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aad
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 12
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !23
  %i.aah = add nuw nsw i32 %i.zo, %i.mt
  %i.aai = zext nneg i32 %i.aah to i64
  %.idx.1.i = shl nuw nsw i64 %i.aai, 3
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1.i
  %i.aak = load <2 x float>, ptr %i.aaj, align 4, !tbaa !23
  %i.aal = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.aam = shufflevector <2 x float> %i.aal, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aan = fmul reassoc nsz arcp contract afn <2 x float> %i.aak, %i.aam
  %i.aao = fadd reassoc nsz arcp contract afn <2 x float> %i.aan, %i.aab ; 2 uses
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i43
  %i.aap = phi <2 x float> [ %i.aao, %.loopexit.loopexit.1.i ], [ %i.aab, %.loopexit.i43 ] ; 2 uses
  %i.aaq = phi <2 x float> [ %i.aao, %.loopexit.loopexit.1.i ], [ %i.aac, %.loopexit.i43 ]
  br i1 %or.cond349.2.i, label %.loopexit.loopexit.2.i, label %.loopexit.2.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.aar = zext nneg i32 %i.zn to i64
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !23
  %i.aav = add nuw nsw i32 %i.zo, %i.mu
  %i.aaw = zext nneg i32 %i.aav to i64
  %.idx.2.i = shl nuw nsw i64 %i.aaw, 3
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.2.i
  %i.aay = load <2 x float>, ptr %i.aax, align 4, !tbaa !23
  %i.aaz = insertelement <2 x float> poison, float %i.aau, i64 0
  %i.aba = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abb = fmul reassoc nsz arcp contract afn <2 x float> %i.aay, %i.aba
  %i.abc = fadd reassoc nsz arcp contract afn <2 x float> %i.abb, %i.aap ; 2 uses
  br label %.loopexit.2.i

.loopexit.2.i:                                    ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.abd = phi <2 x float> [ %i.abc, %.loopexit.loopexit.2.i ], [ %i.aap, %.loopexit.1.i ]
  %i.abe = phi <2 x float> [ %i.abc, %.loopexit.loopexit.2.i ], [ %i.aaq, %.loopexit.1.i ]
  %i.abf = zext nneg i32 %i.zn to i64             ; 2 uses
  br i1 %or.cond349.3.i, label %.loopexit.loopexit.3.i, label %.loopexit.4.i

.loopexit.loopexit.3.i:                           ; preds = %.loopexit.2.i
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 4
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !23
  %i.abj = add nuw nsw i32 %i.zo, %i.mv
  %i.abk = zext nneg i32 %i.abj to i64
  %.idx.3.i = shl nuw nsw i64 %i.abk, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.3.i
  %i.abm = load <2 x float>, ptr %i.abl, align 4, !tbaa !23
  %i.abn = insertelement <2 x float> poison, float %i.abi, i64 0
  %i.abo = shufflevector <2 x float> %i.abn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abp = fmul reassoc nsz arcp contract afn <2 x float> %i.abm, %i.abo
  %i.abq = fadd reassoc nsz arcp contract afn <2 x float> %i.abp, %i.abd
  br label %.loopexit.4.i

.loopexit.4.i:                                    ; preds = %.loopexit.2.i, %.loopexit.loopexit.3.i
  %i.abr = phi <2 x float> [ %i.abq, %.loopexit.loopexit.3.i ], [ %i.abe, %.loopexit.2.i ]
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.abf ; 5 uses
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !23
  %i.abu = zext nneg i32 %i.zo to i64             ; 5 uses
  %i.abv = add nuw nsw i64 %indvars.iv376.i, %i.abu
  %.idx.4.i = shl nuw nsw i64 %i.abv, 3
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.4.i
  %i.abx = load <2 x float>, ptr %i.abw, align 4, !tbaa !23
  %i.aby = insertelement <2 x float> poison, float %i.abt, i64 0
  %i.abz = shufflevector <2 x float> %i.aby, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aca = fmul reassoc nsz arcp contract afn <2 x float> %i.abx, %i.abz
  %i.acb = fadd reassoc nsz arcp contract afn <2 x float> %i.aca, %i.abr ; 2 uses
  br i1 %or.cond349.5.i, label %.loopexit.loopexit.5.i, label %.loopexit.5.i

.loopexit.loopexit.5.i:                           ; preds = %.loopexit.4.i
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !23
  %i.ace = add nuw nsw i64 %i.mw, %i.abu
  %.idx.5.i = shl nuw nsw i64 %i.ace, 3
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.5.i
  %i.acg = load <2 x float>, ptr %i.acf, align 4, !tbaa !23
  %i.ach = insertelement <2 x float> poison, float %i.acd, i64 0
  %i.aci = shufflevector <2 x float> %i.ach, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acj = fmul reassoc nsz arcp contract afn <2 x float> %i.acg, %i.aci
  %i.ack = fadd reassoc nsz arcp contract afn <2 x float> %i.acj, %i.acb
  br label %.loopexit.5.i

.loopexit.5.i:                                    ; preds = %.loopexit.loopexit.5.i, %.loopexit.4.i
  %i.acl = phi <2 x float> [ %i.ack, %.loopexit.loopexit.5.i ], [ %i.acb, %.loopexit.4.i ] ; 2 uses
  br i1 %or.cond349.6.i, label %.loopexit.loopexit.6.i, label %.loopexit.6.i

.loopexit.loopexit.6.i:                           ; preds = %.loopexit.5.i
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !23
  %i.aco = add nuw nsw i64 %i.mx, %i.abu
  %.idx.6.i = shl nuw nsw i64 %i.aco, 3
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.6.i
  %i.acq = load <2 x float>, ptr %i.acp, align 4, !tbaa !23
  %i.acr = insertelement <2 x float> poison, float %i.acn, i64 0
  %i.acs = shufflevector <2 x float> %i.acr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.act = fmul reassoc nsz arcp contract afn <2 x float> %i.acq, %i.acs
  %i.acu = fadd reassoc nsz arcp contract afn <2 x float> %i.act, %i.acl
  br label %.loopexit.6.i

.loopexit.6.i:                                    ; preds = %.loopexit.loopexit.6.i, %.loopexit.5.i
  %i.acv = phi <2 x float> [ %i.acu, %.loopexit.loopexit.6.i ], [ %i.acl, %.loopexit.5.i ] ; 2 uses
  br i1 %or.cond349.7.i, label %.loopexit.loopexit.7.i, label %.loopexit.7.i

.loopexit.loopexit.7.i:                           ; preds = %.loopexit.6.i
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abs, i64 12
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !23
  %i.acy = add nuw nsw i64 %i.my, %i.abu
  %.idx.7.i = shl nuw nsw i64 %i.acy, 3
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.7.i
  %i.ada = load <2 x float>, ptr %i.acz, align 4, !tbaa !23
  %i.adb = insertelement <2 x float> poison, float %i.acx, i64 0
  %i.adc = shufflevector <2 x float> %i.adb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.add = fmul reassoc nsz arcp contract afn <2 x float> %i.ada, %i.adc
  %i.ade = fadd reassoc nsz arcp contract afn <2 x float> %i.add, %i.acv
  br label %.loopexit.7.i

.loopexit.7.i:                                    ; preds = %.loopexit.loopexit.7.i, %.loopexit.6.i
  %i.adf = phi <2 x float> [ %i.ade, %.loopexit.loopexit.7.i ], [ %i.acv, %.loopexit.6.i ] ; 3 uses
  br i1 %or.cond349.8.i, label %.loopexit.loopexit.8.i, label %.loopexit350.i

.loopexit.loopexit.8.i:                           ; preds = %.loopexit.7.i
  %i.adg = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !23
  %i.adi = add nuw nsw i64 %i.mz, %i.abu
  %.idx.8.i = shl nuw nsw i64 %i.adi, 3
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.8.i
  %i.adk = load <2 x float>, ptr %i.adj, align 4, !tbaa !23
  %i.adl = insertelement <2 x float> poison, float %i.adh, i64 0
  %i.adm = shufflevector <2 x float> %i.adl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adn = fmul reassoc nsz arcp contract afn <2 x float> %i.adk, %i.adm
  %i.ado = fadd reassoc nsz arcp contract afn <2 x float> %i.adn, %i.adf ; 2 uses
  br label %.loopexit350.i

.loopexit350.i:                                   ; preds = %.loopexit.loopexit.8.i, %.loopexit.7.i, %.preheader353.i
  %i.adp = phi <2 x float> [ %i.zj, %.preheader353.i ], [ %i.ado, %.loopexit.loopexit.8.i ], [ %i.adf, %.loopexit.7.i ] ; 2 uses
  %i.adq = phi <2 x float> [ %i.zk, %.preheader353.i ], [ %i.ado, %.loopexit.loopexit.8.i ], [ %i.adf, %.loopexit.7.i ]
  %i.adr = add nsw i32 %.0333358.i, 1             ; 2 uses
  %exitcond.not.i40 = icmp eq i32 %i.adr, 5
  br i1 %exitcond.not.i40, label %.loopexit352.i, label %.preheader353.i

.loopexit352.i:                                   ; preds = %.loopexit350.i, %.loopexit352.loopexit.i
  %indvars.iv.next377.i.pre-phi = phi i64 [ %.pre129, %.loopexit352.loopexit.i ], [ %i.mw, %.loopexit350.i ] ; 2 uses
  %i.ads = phi <2 x float> [ %i.zi, %.loopexit352.loopexit.i ], [ %i.adp, %.loopexit350.i ] ; 3 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.mo
  %i.adu = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.ads, %i.mg
  %i.adv = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.ads, %i.mi
  %i.adw = select <2 x i1> %i.adv, <2 x float> %i.ads, <2 x float> %i.mi
  %i.adx = select <2 x i1> %i.adu, <2 x float> %i.mg, <2 x float> %i.adw
  store <2 x float> %i.adx, ptr %i.adt, align 4, !tbaa !23
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next377.i.pre-phi, %i.md
  br i1 %exitcond379.not.i, label %._crit_edge.i41, label %bb.v

_fast_9x9_kernel_2.exit:                          ; preds = %._crit_edge.i41, %bb.u, %.preheader355.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.y

bb.w:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call fastcc void @_calc_9x9_gauss_coeffs(ptr noundef %i.a, float noundef %4)
  %i.ady = icmp sgt i32 %3, 0
  br i1 %i.ady, label %.preheader355.lr.ph.i46, label %_fast_9x9_kernel_4.exit

.preheader355.lr.ph.i46:                          ; preds = %bb.w
  %i.adz = shl nuw nsw i32 %2, 4
  %i.aea = mul nuw nsw i32 %2, 12
  %i.aeb = shl nuw nsw i32 %2, 3
  %i.aec = shl nuw nsw i32 %2, 2
  %i.aed = icmp sgt i32 %2, 0
  %i.aee = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aef = load <4 x float>, ptr %i.aee, align 8
  %15 = zext nneg i32 %i.adz to i64               ; 2 uses
  %16 = zext nneg i32 %i.aeb to i64               ; 2 uses
  %invariant.gep.i47 = getelementptr [4 x i8], ptr %0, i64 %16
  %invariant.gep362.i48 = getelementptr [4 x i8], ptr %0, i64 %15
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.aeh = load <4 x float>, ptr %i.aeg, align 4
  %17 = zext nneg i32 %i.aec to i64               ; 2 uses
  %invariant.gep364.i49 = getelementptr [4 x i8], ptr %0, i64 %17
  %i.aei = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aej = load <4 x float>, ptr %i.aei, align 16
  %i.aek = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ael = load <4 x float>, ptr %i.aek, align 8
  %18 = zext nneg i32 %i.aea to i64               ; 2 uses
  %invariant.gep366.i50 = getelementptr [4 x i8], ptr %0, i64 %18
  %i.aem = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.aen = load <4 x float>, ptr %i.aem, align 4
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aep = load <4 x float>, ptr %i.aeo, align 16
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aer = load <4 x float>, ptr %i.aeq, align 4
  %i.aes = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aet = load <4 x float>, ptr %i.aes, align 16
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.aev = load <4 x float>, ptr %i.aeu, align 4
  %i.aew = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aex = load <4 x float>, ptr %i.aew, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aez = load <4 x float>, ptr %i.aey, align 8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.afb = load <4 x float>, ptr %i.afa, align 4
  %i.afc = load <4 x float>, ptr %i.a, align 16
  br i1 %i.aed, label %.preheader355.preheader.i51, label %_fast_9x9_kernel_4.exit

.preheader355.preheader.i51:                      ; preds = %.preheader355.lr.ph.i46
  %i.afd = add nsw i32 %3, -4
  %i.afe = add nsw i32 %2, -4
  %i.aff = zext nneg i32 %2 to i64                ; 7 uses
  %i.afg = sext i32 %i.afe to i64
  %i.afh = sext i32 %i.afd to i64
  %wide.trip.count392.i = zext nneg i32 %3 to i64
  %i.afi = insertelement <4 x float> poison, float %5, i64 0
  %i.afj = shufflevector <4 x float> %i.afi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afk = insertelement <4 x float> poison, float %6, i64 0
  %i.afl = shufflevector <4 x float> %i.afk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat195 = shufflevector <4 x float> %i.afc, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat193 = shufflevector <4 x float> %i.afb, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat191 = shufflevector <4 x float> %i.aez, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat189 = shufflevector <4 x float> %i.aex, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat187 = shufflevector <4 x float> %i.aev, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat185 = shufflevector <4 x float> %i.aet, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <4 x float> %i.aer, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat181 = shufflevector <4 x float> %i.aep, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat179 = shufflevector <4 x float> %i.aen, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat177 = shufflevector <4 x float> %i.ael, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat175 = shufflevector <4 x float> %i.aej, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat173 = shufflevector <4 x float> %i.aeh, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat = shufflevector <4 x float> %i.aef, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader355.i53

.preheader355.i53:                                ; preds = %._crit_edge.i74, %.preheader355.preheader.i51
  %indvars.iv389.i = phi i64 [ 0, %.preheader355.preheader.i51 ], [ %indvars.iv.next390.i, %._crit_edge.i74 ] ; 5 uses
  %i.afm = mul nuw nsw i64 %indvars.iv389.i, %i.aff
  %i.afn = icmp samesign ugt i64 %indvars.iv389.i, 3
  %i.afo = icmp slt i64 %indvars.iv389.i, %i.afh
  br label %bb.x

._crit_edge.i74:                                  ; preds = %.loopexit352.i69
  %indvars.iv.next390.i = add nuw nsw i64 %indvars.iv389.i, 1 ; 2 uses
  %exitcond393.not.i = icmp eq i64 %indvars.iv.next390.i, %wide.trip.count392.i
  br i1 %exitcond393.not.i, label %_fast_9x9_kernel_4.exit, label %.preheader355.i53

bb.x:                                             ; preds = %.loopexit352.i69, %.preheader355.i53
  %indvars.iv382.i = phi i64 [ 0, %.preheader355.i53 ], [ %indvars.iv.next383.i.pre-phi, %.loopexit352.i69 ] ; 13 uses
  %i.afp = add nuw nsw i64 %indvars.iv382.i, %i.afm
  %i.afq = shl nuw nsw i64 %i.afp, 2              ; 10 uses
  %i.afr = icmp samesign ugt i64 %indvars.iv382.i, 3
  %or.cond.i54 = select i1 %i.afr, i1 %i.afn, i1 false
  %i.afs = icmp slt i64 %indvars.iv382.i, %i.afg
  %or.cond345.i55 = select i1 %or.cond.i54, i1 %i.afs, i1 false
  %or.cond347.i56 = select i1 %or.cond345.i55, i1 %i.afo, i1 false
  br i1 %or.cond347.i56, label %.preheader351.i91, label %.preheader353.preheader.i57

.preheader353.preheader.i57:                      ; preds = %bb.x
  %i.aft = add nsw i64 %indvars.iv382.i, -4       ; 2 uses
  %i.afu = trunc nsw i64 %i.aft to i32
  %or.cond349.i58 = icmp ugt i32 %2, %i.afu
  %i.afv = add nsw i64 %indvars.iv382.i, -3       ; 2 uses
  %i.afw = trunc nsw i64 %i.afv to i32
  %or.cond349.1.i59 = icmp ugt i32 %2, %i.afw
  %i.afx = add nsw i64 %indvars.iv382.i, -2       ; 2 uses
  %i.afy = trunc nsw i64 %i.afx to i32
  %or.cond349.2.i60 = icmp ugt i32 %2, %i.afy
  %i.afz = add nsw i64 %indvars.iv382.i, -1       ; 2 uses
  %i.aga = trunc nsw i64 %i.afz to i32
  %or.cond349.3.i61 = icmp ugt i32 %2, %i.aga
  %i.agb = add nuw nsw i64 %indvars.iv382.i, 1    ; 3 uses
  %i.agc = icmp samesign ult i64 %i.agb, %i.aff
  %i.agd = add nuw nsw i64 %indvars.iv382.i, 2    ; 2 uses
  %i.age = icmp samesign ult i64 %i.agd, %i.aff
  %i.agf = add nuw nsw i64 %indvars.iv382.i, 3    ; 2 uses
  %i.agg = icmp samesign ult i64 %i.agf, %i.aff
  %i.agh = add nuw nsw i64 %indvars.iv382.i, 4    ; 2 uses
  %i.agi = icmp samesign ult i64 %i.agh, %i.aff
  br label %.preheader353.i63

.preheader351.i91:                                ; preds = %bb.x
  %i.agj = sub nsw i64 %i.afq, %15
  %i.agk = getelementptr [4 x i8], ptr %0, i64 %i.agj ; 5 uses
  %i.agl = getelementptr i8, ptr %i.agk, i64 -32
  %i.agm = getelementptr i8, ptr %i.agk, i64 32
  %i.agn = sub nsw i64 %i.afq, %16
  %i.ago = getelementptr [4 x i8], ptr %0, i64 %i.agn ; 9 uses
  %i.agp = getelementptr i8, ptr %i.ago, i64 -64
  %i.agq = getelementptr i8, ptr %i.ago, i64 64
  %gep.i92 = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %i.afq ; 9 uses
  %i.agr = getelementptr i8, ptr %gep.i92, i64 -64
  %i.ags = getelementptr i8, ptr %gep.i92, i64 64
  %gep363.i93 = getelementptr [4 x i8], ptr %invariant.gep362.i48, i64 %i.afq ; 5 uses
  %i.agt = getelementptr i8, ptr %gep363.i93, i64 -32
  %i.agu = getelementptr i8, ptr %gep363.i93, i64 32
  %i.agv = getelementptr i8, ptr %i.agk, i64 -16
  %i.agw = getelementptr i8, ptr %i.agk, i64 16
  %i.agx = sub nsw i64 %i.afq, %17
  %i.agy = getelementptr [4 x i8], ptr %0, i64 %i.agx ; 9 uses
  %i.agz = getelementptr i8, ptr %i.agy, i64 -64
  %i.aha = getelementptr i8, ptr %i.agy, i64 64
  %gep365.i94 = getelementptr [4 x i8], ptr %invariant.gep364.i49, i64 %i.afq ; 9 uses
  %i.ahb = getelementptr i8, ptr %gep365.i94, i64 -64
  %i.ahc = getelementptr i8, ptr %gep365.i94, i64 64
  %i.ahd = getelementptr i8, ptr %gep363.i93, i64 -16
  %i.ahe = getelementptr i8, ptr %gep363.i93, i64 16
  %i.ahf = getelementptr [4 x i8], ptr %0, i64 %i.afq ; 9 uses
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 -64
  %i.ahh = getelementptr i8, ptr %i.ahf, i64 64
  %i.ahi = sub nsw i64 %i.afq, %18
  %i.ahj = getelementptr [4 x i8], ptr %0, i64 %i.ahi ; 7 uses
  %i.ahk = getelementptr i8, ptr %i.ahj, i64 -48
  %i.ahl = getelementptr i8, ptr %i.ahj, i64 48
  %gep367.i95 = getelementptr [4 x i8], ptr %invariant.gep366.i50, i64 %i.afq ; 7 uses
  %i.ahm = getelementptr i8, ptr %gep367.i95, i64 -48
  %i.ahn = getelementptr i8, ptr %gep367.i95, i64 48
  %i.aho = getelementptr i8, ptr %i.ahj, i64 -32
  %i.ahp = getelementptr i8, ptr %i.ahj, i64 32
  %i.ahq = getelementptr i8, ptr %i.ago, i64 -48
  %i.ahr = getelementptr i8, ptr %i.ago, i64 48
  %i.ahs = getelementptr i8, ptr %gep.i92, i64 -48
  %i.aht = getelementptr i8, ptr %gep.i92, i64 48
  %i.ahu = getelementptr i8, ptr %gep367.i95, i64 -32
  %i.ahv = getelementptr i8, ptr %gep367.i95, i64 32
  %i.ahw = getelementptr i8, ptr %i.ahj, i64 -16
  %i.ahx = getelementptr i8, ptr %i.ahj, i64 16
  %i.ahy = getelementptr i8, ptr %i.agy, i64 -48
  %i.ahz = getelementptr i8, ptr %i.agy, i64 48
  %i.aia = getelementptr i8, ptr %gep365.i94, i64 -48
  %i.aib = getelementptr i8, ptr %gep365.i94, i64 48
  %i.aic = getelementptr i8, ptr %gep367.i95, i64 -16
  %i.aid = getelementptr i8, ptr %gep367.i95, i64 16
  %i.aie = getelementptr i8, ptr %i.ahf, i64 -48
  %i.aif = getelementptr i8, ptr %i.ahf, i64 48
  %i.aig = getelementptr i8, ptr %i.ago, i64 -32
  %i.aih = getelementptr i8, ptr %i.ago, i64 32
  %i.aii = getelementptr i8, ptr %gep.i92, i64 -32
  %i.aij = getelementptr i8, ptr %gep.i92, i64 32
  %i.aik = getelementptr i8, ptr %i.ago, i64 -16
  %i.ail = getelementptr i8, ptr %i.ago, i64 16
  %i.aim = getelementptr i8, ptr %i.agy, i64 -32
  %i.ain = getelementptr i8, ptr %i.agy, i64 32
  %i.aio = getelementptr i8, ptr %gep365.i94, i64 -32
  %i.aip = getelementptr i8, ptr %gep365.i94, i64 32
  %i.aiq = getelementptr i8, ptr %gep.i92, i64 -16
  %i.air = getelementptr i8, ptr %gep.i92, i64 16
  %i.ais = getelementptr i8, ptr %i.ahf, i64 -32
  %i.ait = getelementptr i8, ptr %i.ahf, i64 32
  %i.aiu = getelementptr i8, ptr %i.agy, i64 -16
  %i.aiv = getelementptr i8, ptr %i.agy, i64 16
  %i.aiw = getelementptr i8, ptr %gep365.i94, i64 -16
  %i.aix = getelementptr i8, ptr %gep365.i94, i64 16
  %i.aiy = getelementptr i8, ptr %i.ahf, i64 -16
  %i.aiz = getelementptr i8, ptr %i.ahf, i64 16
  %wide.load = load <4 x float>, ptr %i.agl, align 4, !tbaa !23
  %wide.load196 = load <4 x float>, ptr %i.agm, align 4, !tbaa !23
  %i.aja = fadd reassoc nsz arcp contract afn <4 x float> %wide.load196, %wide.load
  %wide.load197 = load <4 x float>, ptr %i.agp, align 4, !tbaa !23
  %i.ajb = fadd reassoc nsz arcp contract afn <4 x float> %i.aja, %wide.load197
  %wide.load198 = load <4 x float>, ptr %i.agq, align 4, !tbaa !23
  %i.ajc = fadd reassoc nsz arcp contract afn <4 x float> %i.ajb, %wide.load198
  %wide.load199 = load <4 x float>, ptr %i.agr, align 4, !tbaa !23
  %i.ajd = fadd reassoc nsz arcp contract afn <4 x float> %i.ajc, %wide.load199
  %wide.load200 = load <4 x float>, ptr %i.ags, align 4, !tbaa !23
  %i.aje = fadd reassoc nsz arcp contract afn <4 x float> %i.ajd, %wide.load200
  %wide.load201 = load <4 x float>, ptr %i.agt, align 4, !tbaa !23
  %i.ajf = fadd reassoc nsz arcp contract afn <4 x float> %i.aje, %wide.load201
  %wide.load202 = load <4 x float>, ptr %i.agu, align 4, !tbaa !23
  %i.ajg = fadd reassoc nsz arcp contract afn <4 x float> %i.ajf, %wide.load202
  %i.ajh = fmul reassoc nsz arcp contract afn <4 x float> %i.ajg, %broadcast.splat
  %wide.load203 = load <4 x float>, ptr %i.agv, align 4, !tbaa !23
  %wide.load204 = load <4 x float>, ptr %i.agw, align 4, !tbaa !23
  %i.aji = fadd reassoc nsz arcp contract afn <4 x float> %wide.load204, %wide.load203
  %wide.load205 = load <4 x float>, ptr %i.agz, align 4, !tbaa !23
  %i.ajj = fadd reassoc nsz arcp contract afn <4 x float> %i.aji, %wide.load205
  %wide.load206 = load <4 x float>, ptr %i.aha, align 4, !tbaa !23
  %i.ajk = fadd reassoc nsz arcp contract afn <4 x float> %i.ajj, %wide.load206
  %wide.load207 = load <4 x float>, ptr %i.ahb, align 4, !tbaa !23
  %i.ajl = fadd reassoc nsz arcp contract afn <4 x float> %i.ajk, %wide.load207
  %wide.load208 = load <4 x float>, ptr %i.ahc, align 4, !tbaa !23
  %i.ajm = fadd reassoc nsz arcp contract afn <4 x float> %i.ajl, %wide.load208
  %wide.load209 = load <4 x float>, ptr %i.ahd, align 4, !tbaa !23
  %i.ajn = fadd reassoc nsz arcp contract afn <4 x float> %i.ajm, %wide.load209
  %wide.load210 = load <4 x float>, ptr %i.ahe, align 4, !tbaa !23
  %i.ajo = fadd reassoc nsz arcp contract afn <4 x float> %i.ajn, %wide.load210
  %i.ajp = fmul reassoc nsz arcp contract afn <4 x float> %i.ajo, %broadcast.splat173
  %i.ajq = fadd reassoc nsz arcp contract afn <4 x float> %i.ajp, %i.ajh
  %wide.load211 = load <4 x float>, ptr %i.agk, align 4, !tbaa !23
end_hunk_2
