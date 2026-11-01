Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gaussian?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 25
begin_hunk_0_@dt_gaussian_blur:bb.a
  %i.sv = fcmp reassoc nsz arcp contract afn ult float %i.st, %i.su
  br i1 %i.sv, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph469
  %i.sw = load float, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.st, %i.sw
  %.366 = select reassoc nsz arcp contract afn i1 %.inv, float %i.st, float %i.sw
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph469, %bb.ar
  %i.sx = phi reassoc nsz arcp contract afn float [ %.366, %bb.ar ], [ %i.su, %.lr.ph469 ] ; 2 uses
  %i.sy = fmul reassoc nsz arcp contract afn float %i.sp, %.0395
  %i.sz = fmul reassoc nsz arcp contract afn float %i.so, %.sink.i
  %.neg405.reass = fmul reassoc nsz arcp contract afn float %i.sn, %factor.op.fmul454
  %i.ta = fmul reassoc nsz arcp contract afn float %i.ab, %i.sm
  %reass.add = fsub reassoc nsz arcp contract afn float %.neg405.reass, %i.ta
  %i.tb = fadd reassoc nsz arcp contract afn float %i.sz, %i.sy
  %i.tc = fadd reassoc nsz arcp contract afn float %i.tb, %reass.add ; 3 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.sr ; 2 uses
  %i.te = load float, ptr %i.td, align 4, !tbaa !23
  %i.tf = fadd reassoc nsz arcp contract afn float %i.te, %i.tc
  store float %i.tf, ptr %i.td, align 4, !tbaa !23
  br i1 %exitcond530.not, label %..loopexit_crit_edge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.tg = add i64 %i.sr, 1                        ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.tg
  %i.ti = load float, ptr %i.th, align 4, !tbaa !23 ; 3 uses
  %i.tj = load float, ptr %i.et, align 4, !tbaa !23 ; 2 uses
  %i.tk = fcmp reassoc nsz arcp contract afn ult float %i.ti, %i.tj
  br i1 %i.tk, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.tl = load float, ptr %i.eu, align 4, !tbaa !23 ; 2 uses
  %.inv.1 = fcmp reassoc nsz arcp contract afn ole float %i.ti, %i.tl
  %.366.1 = select reassoc nsz arcp contract afn i1 %.inv.1, float %i.ti, float %i.tl
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.tm = phi reassoc nsz arcp contract afn float [ %.366.1, %bb.au ], [ %i.tj, %bb.at ] ; 3 uses
  %i.tn = fmul reassoc nsz arcp contract afn float %i.sl, %.0395
  %i.to = fmul reassoc nsz arcp contract afn float %i.sk, %.sink.i
  %.neg405.reass.1 = fmul reassoc nsz arcp contract afn float %i.sj, %factor.op.fmul454
  %i.tp = fmul reassoc nsz arcp contract afn float %i.ab, %i.si
  %reass.add.1 = fsub reassoc nsz arcp contract afn float %.neg405.reass.1, %i.tp
  %i.tq = fadd reassoc nsz arcp contract afn float %i.to, %i.tn
  %i.tr = fadd reassoc nsz arcp contract afn float %i.tq, %reass.add.1 ; 4 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tg ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !23
  %i.tu = fadd reassoc nsz arcp contract afn float %i.tt, %i.tr
  store float %i.tu, ptr %i.ts, align 4, !tbaa !23
  br i1 %exitcond530.not.1, label %..loopexit_crit_edge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.tv = add i64 %i.sr, 2                        ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.tv
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !23 ; 3 uses
  %i.ty = load float, ptr %i.ez, align 4, !tbaa !23 ; 2 uses
  %i.tz = fcmp reassoc nsz arcp contract afn ult float %i.tx, %i.ty
  br i1 %i.tz, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ua = load float, ptr %i.fa, align 4, !tbaa !23 ; 2 uses
  %.inv.2 = fcmp reassoc nsz arcp contract afn ole float %i.tx, %i.ua
  %.366.2 = select reassoc nsz arcp contract afn i1 %.inv.2, float %i.tx, float %i.ua
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ub = phi reassoc nsz arcp contract afn float [ %.366.2, %bb.ax ], [ %i.ty, %bb.aw ] ; 2 uses
  %i.uc = fmul reassoc nsz arcp contract afn float %i.sh, %.0395
  %i.ud = fmul reassoc nsz arcp contract afn float %i.sg, %.sink.i
  %.neg405.reass.2 = fmul reassoc nsz arcp contract afn float %i.sf, %factor.op.fmul454
  %i.ue = fmul reassoc nsz arcp contract afn float %i.ab, %i.se
  %reass.add.2 = fsub reassoc nsz arcp contract afn float %.neg405.reass.2, %i.ue
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ud, %i.uc
  %i.ug = fadd reassoc nsz arcp contract afn float %i.uf, %reass.add.2 ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tv ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !23
  %i.uj = fadd reassoc nsz arcp contract afn float %i.ui, %i.ug
  store float %i.uj, ptr %i.uh, align 4, !tbaa !23
  br i1 %exitcond530.not.2, label %..loopexit_crit_edge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.uk = add i64 %i.sr, 3                        ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.uk
  %i.um = load float, ptr %i.ul, align 4, !tbaa !23 ; 3 uses
  %i.un = load float, ptr %i.ff, align 4, !tbaa !23 ; 2 uses
  %i.uo = fcmp reassoc nsz arcp contract afn ult float %i.um, %i.un
  br i1 %i.uo, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.up = load float, ptr %i.fg, align 4, !tbaa !23 ; 2 uses
  %.inv.3 = fcmp reassoc nsz arcp contract afn ole float %i.um, %i.up
  %.366.3 = select reassoc nsz arcp contract afn i1 %.inv.3, float %i.um, float %i.up
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.uq = phi reassoc nsz arcp contract afn float [ %.366.3, %bb.ba ], [ %i.un, %bb.az ]
  %i.ur = fmul reassoc nsz arcp contract afn float %i.sd, %.0395
  %i.us = fmul reassoc nsz arcp contract afn float %i.sc, %.sink.i
  %.neg405.reass.3 = fmul reassoc nsz arcp contract afn float %i.sb, %factor.op.fmul454
  %i.ut = fmul reassoc nsz arcp contract afn float %i.ab, %i.sa
  %reass.add.3 = fsub reassoc nsz arcp contract afn float %.neg405.reass.3, %i.ut
  %i.uu = fadd reassoc nsz arcp contract afn float %i.us, %i.ur
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, %reass.add.3 ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uk ; 2 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !23
  %i.uy = fadd reassoc nsz arcp contract afn float %i.ux, %i.uv
  store float %i.uy, ptr %i.uw, align 4, !tbaa !23
  br label %..loopexit_crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_gaussian_blur_4c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16   ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = fdiv reassoc nsz arcp contract afn float 1.695000e+00, %i.g ; 7 uses
  %i.k = fneg reassoc nsz arcp contract afn float %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.k) ; 16 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.j, -2.000000e+00
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.m) ; 11 uses
  %i.o = fmul reassoc nsz arcp contract afn float %i.l, -2.000000e+00
  switch i32 %i.i, label %bb.b [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = fneg reassoc nsz arcp contract afn float %i.n
  %i.q = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.l ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.q
  %i.s = fmul reassoc nsz arcp contract afn float %i.j, 2.000000e+00
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.l
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, 1.000000e+00
  %i.v = fsub reassoc nsz arcp contract afn float %i.u, %i.n
  %i.w = fdiv reassoc nsz arcp contract afn float %i.r, %i.v ; 3 uses
  %i.x = fadd reassoc nsz arcp contract afn float %i.j, -1.000000e+00
  %i.y = fmul reassoc nsz arcp contract afn float %i.l, %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.w
  %i.aa = fadd reassoc nsz arcp contract afn float %i.j, 1.000000e+00
  %i.ab = fmul reassoc nsz arcp contract afn float %i.l, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.p, i64 1
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, %i.af
  br label %_compute_gauss_params.exit

bb.c:                                             ; preds = %bb.a
  %i.ah = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.l ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ah ; 2 uses
  %i.aj = fneg reassoc nsz arcp contract afn float %i.ai
  %i.ak = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  br label %_compute_gauss_params.exit

bb.d:                                             ; preds = %bb.a
  %i.al = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.am = fmul reassoc nsz arcp contract afn float %i.j, 2.000000e+00
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.l
  %i.ao = fmul reassoc nsz arcp contract afn float %i.l, 3.000000e+00 ; 3 uses
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, -1.000000e+00
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ao, %i.l ; 2 uses
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq
  %i.as = fmul reassoc nsz arcp contract afn float %i.l, %i.l
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %i.l ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn float %i.ar, %i.at
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, -2.000000e+00
  %i.aw = fadd reassoc nsz arcp contract afn float %i.ao, 1.000000e+00
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.aq
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.at
  %i.az = fmul reassoc nsz arcp contract afn float %i.al, %i.j
  %i.ba = fdiv reassoc nsz arcp contract afn float %i.az, %i.an ; 2 uses
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, 1.000000e+00
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.l
  %i.bd = fdiv reassoc nsz arcp contract afn float %i.av, %i.ay ; 3 uses
  %i.be = fneg reassoc nsz arcp contract afn float %i.bd ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bc, %i.be
  %i.bg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ba
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.l
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.n, i64 1
  %i.bk = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.be, i64 1
  %i.bm = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bl
  br label %_compute_gauss_params.exit

_compute_gauss_params.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0337 = phi nsz float [ %i.w, %bb.b ], [ %i.bd, %bb.d ], [ %i.ai, %bb.c ] ; 6 uses
  %.0336 = phi nsz float [ %i.z, %bb.b ], [ %i.bf, %bb.d ], [ 0.000000e+00, %bb.c ] ; 6 uses
  %i.bn = phi <2 x float> [ %i.ag, %bb.b ], [ %i.bm, %bb.d ], [ %i.ak, %bb.c ] ; 5 uses
  %3 = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bo = fadd reassoc nsz arcp contract afn float %.0336, %.0337
  %i.bp = fadd reassoc nsz arcp contract afn float %i.o, 1.000000e+00
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.n ; 2 uses
  %i.br = fdiv reassoc nsz arcp contract afn float %i.bo, %i.bq ; 2 uses
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bn)
  %i.bt = fdiv reassoc nsz arcp contract afn float %i.bs, %i.bq ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20 ; 17 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21
  %i.ca = load <4 x float>, ptr %i.bx, align 4, !tbaa !23, !alias.scope !39 ; 20 uses
  %i.cb = load <4 x float>, ptr %i.bz, align 4, !tbaa !23, !alias.scope !40 ; 20 uses
  %.not398 = icmp eq i32 %i.a, 0                  ; 2 uses
  br i1 %.not398, label %.preheader364, label %.lr.ph379

.lr.ph379:                                        ; preds = %_compute_gauss_params.exit
  %.not399 = icmp eq i32 %i.d, 0
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.l, 2.000000e+00
  %i.cc = add nsw i64 %i.e, 1152921504606846975
  %i.cd = mul i64 %i.cc, %i.b
  %i.ce = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.cf = insertelement <4 x float> poison, float %i.br, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <4 x float> poison, float %.0336, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cj = insertelement <4 x float> poison, float %.0337, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cl = insertelement <4 x float> poison, float %factor.op.fmul, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cn = insertelement <4 x float> poison, float %i.n, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cp = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %i.e, -2
  %i.cq = and i32 %i.d, 1
  %lcmp.mod.not = icmp eq i32 %i.cq, 0
  %lcmp.mod569 = trunc i32 %i.d to i1
  %4 = shufflevector <4 x float> %i.ce, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %6 = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %7 = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  br label %bb.e

.preheader364:                                    ; preds = %._crit_edge377, %_compute_gauss_params.exit
  %.not400 = icmp eq i32 %i.d, 0
  br i1 %.not400, label %._crit_edge397, label %.lr.ph396

.lr.ph396:                                        ; preds = %.preheader364
  %i.cr = shl nsw i64 %i.b, 4                     ; 2 uses
  %factor.op.fmul381 = fmul reassoc nsz arcp contract afn float %i.l, 2.000000e+00 ; 5 uses
  %.0258391 = add i32 %i.a, -1                    ; 2 uses
  %i.cs = icmp sgt i32 %.0258391, -1
  %i.ct = zext i32 %.0258391 to i64
  %i.cu = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.cv = insertelement <4 x float> poison, float %i.br, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = extractelement <4 x float> %i.ca, i64 0 ; 2 uses
  %i.cy = extractelement <4 x float> %i.ca, i64 1 ; 2 uses
  %i.cz = extractelement <4 x float> %i.ca, i64 2 ; 2 uses
  %i.da = extractelement <4 x float> %i.ca, i64 3 ; 2 uses
  %i.db = extractelement <4 x float> %i.cb, i64 0 ; 2 uses
  %i.dc = extractelement <4 x float> %i.cb, i64 1 ; 2 uses
  %i.dd = extractelement <4 x float> %i.cb, i64 2 ; 2 uses
  %i.de = extractelement <4 x float> %i.cb, i64 3 ; 2 uses
  %8 = shufflevector <4 x float> %i.cu, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.df = insertelement <4 x float> poison, float %factor.op.fmul381, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = insertelement <4 x float> poison, float %i.n, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %10 = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %11 = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %12 = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.preheader363

bb.e:                                             ; preds = %.lr.ph379, %._crit_edge377
  %.0270378 = phi i64 [ 0, %.lr.ph379 ], [ %i.gb, %._crit_edge377 ] ; 7 uses
  br i1 %.not399, label %._crit_edge377, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.idx299 = shl i64 %.0270378, 4
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx299
  %i.dk = load <4 x float>, ptr %i.dj, align 4, !tbaa !23 ; 3 uses
  %i.dl = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.dk, %i.ca
  %i.dm = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.dk, %i.cb
  %i.dn = select <4 x i1> %i.dm, <4 x float> %i.dk, <4 x float> %i.cb
  %i.do = select <4 x i1> %i.dl, <4 x float> %i.ca, <4 x float> %i.dn ; 3 uses
  %i.dp = fmul reassoc nsz arcp contract afn <4 x float> %i.do, %i.cg ; 4 uses
  br i1 %i.cp, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.lr.ph376.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0268369.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ft, %._crit_edge.unr-lcssa ]
  %.epil.init = phi <4 x float> [ %i.do, %.lr.ph.preheader ], [ %i.fo, %._crit_edge.unr-lcssa ]
  %.epil.init566 = phi <4 x float> [ %i.dp, %.lr.ph.preheader ], [ %i.fs, %._crit_edge.unr-lcssa ]
  %.epil.init568 = phi <4 x float> [ %i.dp, %.lr.ph.preheader ], [ %i.fa, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod569)
  %i.dq = mul i64 %.0268369.epil.init, %i.b
  %i.dr = add i64 %i.dq, %.0270378
  %i.ds = shl i64 %i.dr, 2                        ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ds
  %i.du = fmul reassoc nsz arcp contract afn <4 x float> %.epil.init, %i.ci
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %.epil.init566, %i.cm
  %i.dw = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %.epil.init568
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ds
  %i.dy = load <4 x float>, ptr %i.dt, align 4, !tbaa !23 ; 3 uses
  %i.dz = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.dy, %i.ca
  %i.ea = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.dy, %i.cb
  %i.eb = select <4 x i1> %i.ea, <4 x float> %i.dy, <4 x float> %i.cb
  %i.ec = select <4 x i1> %i.dz, <4 x float> %i.ca, <4 x float> %i.eb
  %i.ed = fmul reassoc nsz arcp contract afn <4 x float> %i.ec, %i.ck
  %i.ee = fsub reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dw
  %i.ef = fadd reassoc nsz arcp contract afn <4 x float> %i.du, %i.ed
  %i.eg = fadd reassoc nsz arcp contract afn <4 x float> %i.ef, %i.ee
  store <4 x float> %i.eg, ptr %i.dx, align 4, !tbaa !23, !alias.scope !41
  br label %.lr.ph376.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0268369 = phi i64 [ %i.ft, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.eh = phi <4 x float> [ %i.fo, %.lr.ph ], [ %i.do, %.lr.ph.preheader ]
  %i.ei = phi <4 x float> [ %i.fs, %.lr.ph ], [ %i.dp, %.lr.ph.preheader ] ; 2 uses
  %i.ej = phi <4 x float> [ %i.fa, %.lr.ph ], [ %i.dp, %.lr.ph.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ek = mul i64 %.0268369, %i.b
  %i.el = add i64 %i.ek, %.0270378
  %i.em = shl i64 %i.el, 2                        ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.em
  %i.eo = fmul reassoc nsz arcp contract afn <4 x float> %i.eh, %i.ci
  %i.ep = fmul reassoc nsz arcp contract afn <4 x float> %i.ei, %i.cm
  %i.eq = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ej
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.em
  %i.es = load <4 x float>, ptr %i.en, align 4, !tbaa !23 ; 3 uses
  %i.et = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.es, %i.ca
  %i.eu = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.es, %i.cb
  %i.ev = select <4 x i1> %i.eu, <4 x float> %i.es, <4 x float> %i.cb
  %i.ew = select <4 x i1> %i.et, <4 x float> %i.ca, <4 x float> %i.ev ; 2 uses
  %i.ex = fmul reassoc nsz arcp contract afn <4 x float> %i.ew, %i.ck
  %i.ey = fsub reassoc nsz arcp contract afn <4 x float> %i.ep, %i.eq
  %i.ez = fadd reassoc nsz arcp contract afn <4 x float> %i.eo, %i.ex
  %i.fa = fadd reassoc nsz arcp contract afn <4 x float> %i.ez, %i.ey ; 4 uses
  store <4 x float> %i.fa, ptr %i.er, align 4, !tbaa !23, !alias.scope !41
  %i.fb = or disjoint i64 %.0268369, 1
  %i.fc = mul i64 %i.fb, %i.b
  %i.fd = add i64 %i.fc, %.0270378
  %i.fe = shl i64 %i.fd, 2                        ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fe
  %i.fg = fmul reassoc nsz arcp contract afn <4 x float> %i.ew, %i.ci
  %i.fh = fmul reassoc nsz arcp contract afn <4 x float> %i.fa, %i.cm
  %i.fi = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ei
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.fe
  %i.fk = load <4 x float>, ptr %i.ff, align 4, !tbaa !23 ; 3 uses
  %i.fl = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.fk, %i.ca
  %i.fm = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.fk, %i.cb
  %i.fn = select <4 x i1> %i.fm, <4 x float> %i.fk, <4 x float> %i.cb
  %i.fo = select <4 x i1> %i.fl, <4 x float> %i.ca, <4 x float> %i.fn ; 3 uses
  %i.fp = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, %i.ck
  %i.fq = fsub reassoc nsz arcp contract afn <4 x float> %i.fh, %i.fi
  %i.fr = fadd reassoc nsz arcp contract afn <4 x float> %i.fg, %i.fp
  %i.fs = fadd reassoc nsz arcp contract afn <4 x float> %i.fr, %i.fq ; 3 uses
  store <4 x float> %i.fs, ptr %i.fj, align 4, !tbaa !23, !alias.scope !41
  %i.ft = add nuw i64 %.0268369, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

.lr.ph376.preheader:                              ; preds = %.lr.ph.epil.preheader, %._crit_edge.unr-lcssa
  %i.fu = add i64 %.0270378, %i.cd
  %.idx298 = shl i64 %i.fu, 4
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx298
  %i.fw = load <4 x float>, ptr %i.fv, align 4, !tbaa !23 ; 3 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.fw, %i.ca
  %i.fy = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.fw, %i.cb
  %i.fz = select <4 x i1> %i.fy, <4 x float> %i.fw, <4 x float> %i.cb
  %i.ga = select <4 x i1> %i.fx, <4 x float> %i.ca, <4 x float> %i.fz ; 2 uses
  %13 = shufflevector <4 x float> %i.ga, <4 x float> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = fmul reassoc nsz arcp contract afn <16 x float> %13, %4
  %15 = shufflevector <4 x float> %i.ga, <4 x float> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <16 x float> %14, <16 x float> %15, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  br label %.lr.ph376

._crit_edge377:                                   ; preds = %.lr.ph376, %bb.e
  %i.gb = add nuw i64 %.0270378, 1                ; 2 uses
  %exitcond404.not = icmp eq i64 %i.gb, %i.b
  br i1 %exitcond404.not, label %.preheader364, label %bb.e

.lr.ph376:                                        ; preds = %.lr.ph376.preheader, %.lr.ph376
  %.0265375 = phi i64 [ %i.e, %.lr.ph376.preheader ], [ %i.gy, %.lr.ph376 ] ; 2 uses
  %17 = phi <16 x float> [ %16, %.lr.ph376.preheader ], [ %43, %.lr.ph376 ] ; 5 uses
  %18 = add i64 %.0265375, 4611686018427387903
  %19 = mul i64 %18, %i.b
  %20 = add i64 %19, %.0270378
  %21 = shl i64 %20, 2                            ; 5 uses
  %22 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %21
  %23 = shufflevector <16 x float> %17, <16 x float> poison, <4 x i32> <i32 12, i32 9, i32 14, i32 11>
  %24 = fmul reassoc nsz arcp contract afn <4 x float> %23, %6
  %25 = shufflevector <16 x float> %17, <16 x float> poison, <4 x i32> <i32 8, i32 13, i32 10, i32 15>
  %26 = fmul reassoc nsz arcp contract afn <4 x float> %25, %3
  %27 = shufflevector <16 x float> %17, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gc = fmul reassoc nsz arcp contract afn <4 x float> %27, %i.cm
  %28 = shufflevector <16 x float> %17, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gd = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %28
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %21 ; 2 uses
  %i.gf = or disjoint i64 %21, 1                  ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.gf
  %i.gi = or disjoint i64 %21, 2                  ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.gi
  %i.gl = or disjoint i64 %21, 3                  ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gl
  %29 = load float, ptr %22, align 4, !tbaa !23
  %i.gn = fsub reassoc nsz arcp contract afn <4 x float> %i.gc, %i.gd
  %i.go = fadd reassoc nsz arcp contract afn <4 x float> %26, %24
  %i.gp = fadd reassoc nsz arcp contract afn <4 x float> %i.go, %i.gn ; 2 uses
  %30 = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.gl
  %i.gr = load <4 x float>, ptr %i.ge, align 4, !tbaa !23
  %i.gs = fadd reassoc nsz arcp contract afn <4 x float> %i.gr, %30 ; 4 uses
  %i.gt = extractelement <4 x float> %i.gs, i64 0
  store float %i.gt, ptr %i.ge, align 4, !tbaa !23
  %i.gu = load float, ptr %i.gg, align 4, !tbaa !23
  %i.gv = extractelement <4 x float> %i.gs, i64 1
  store float %i.gv, ptr %i.gh, align 4, !tbaa !23
  %i.gw = load float, ptr %i.gj, align 4, !tbaa !23
  %31 = extractelement <4 x float> %i.gs, i64 2
  store float %31, ptr %i.gk, align 4, !tbaa !23
  %32 = load float, ptr %i.gm, align 4, !tbaa !23
  %33 = insertelement <4 x float> poison, float %32, i64 0
  %34 = insertelement <4 x float> %33, float %i.gw, i64 1
  %35 = insertelement <4 x float> %34, float %i.gu, i64 2
  %36 = insertelement <4 x float> %35, float %29, i64 3 ; 3 uses
  %37 = fcmp reassoc nsz arcp contract afn ult <4 x float> %36, %5
  %38 = fcmp reassoc nsz arcp contract afn ole <4 x float> %36, %7
  %39 = select <4 x i1> %38, <4 x float> %36, <4 x float> %7
  %40 = select <4 x i1> %37, <4 x float> %5, <4 x float> %39
  %i.gx = extractelement <4 x float> %i.gs, i64 3
  store float %i.gx, ptr %i.gq, align 4, !tbaa !23
  %i.gy = add i64 %.0265375, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gy, 0
  %41 = shufflevector <16 x float> %17, <16 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %42 = shufflevector <4 x float> %i.gp, <4 x float> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %43 = shufflevector <16 x float> %42, <16 x float> %41, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  br i1 %.not, label %._crit_edge377, label %.lr.ph376

._crit_edge397:                                   ; preds = %._crit_edge394, %.preheader364
  ret void

.preheader363:                                    ; preds = %.lr.ph396, %._crit_edge394
  %.0263395 = phi i64 [ 0, %.lr.ph396 ], [ %i.hp, %._crit_edge394 ] ; 4 uses
  br i1 %.not398, label %._crit_edge386, label %.lr.ph385

.lr.ph385:                                        ; preds = %.preheader363
  %.idx297 = mul i64 %i.cr, %.0263395
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx297
  %i.ha = load <4 x float>, ptr %i.gz, align 4, !tbaa !23 ; 3 uses
  %i.hb = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ha, %i.ca
  %i.hc = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.ha, %i.cb
  %i.hd = select <4 x i1> %i.hc, <4 x float> %i.ha, <4 x float> %i.cb
  %i.he = select <4 x i1> %i.hb, <4 x float> %i.ca, <4 x float> %i.hd ; 5 uses
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %i.he, %i.cw ; 5 uses
  %i.hg = mul i64 %.0263395, %i.b
  %i.hh = extractelement <4 x float> %i.hf, i64 0
  %i.hi = extractelement <4 x float> %i.hf, i64 1
  %i.hj = extractelement <4 x float> %i.hf, i64 2
  %i.hk = extractelement <4 x float> %i.hf, i64 3
  %i.hl = extractelement <4 x float> %i.he, i64 0
  %i.hm = extractelement <4 x float> %i.he, i64 1
  %i.hn = extractelement <4 x float> %i.he, i64 2
  %i.ho = extractelement <4 x float> %i.he, i64 3
  br label %bb.f

._crit_edge386:                                   ; preds = %bb.f, %.preheader363
  %i.hp = add nuw i64 %.0263395, 1                ; 3 uses
  br i1 %i.cs, label %.lr.ph393, label %._crit_edge394

bb.f:                                             ; preds = %.lr.ph385, %bb.f
  %.sroa.11435.0 = phi nsz float [ %i.ho, %.lr.ph385 ], [ %i.jj, %bb.f ]
  %.sroa.8434.0 = phi nsz float [ %i.hn, %.lr.ph385 ], [ %i.jd, %bb.f ]
  %.sroa.5433.0 = phi nsz float [ %i.hm, %.lr.ph385 ], [ %i.ix, %bb.f ]
  %.sroa.0432.0 = phi nsz float [ %i.hl, %.lr.ph385 ], [ %i.hw, %bb.f ]
  %.sroa.11431.0 = phi nsz float [ %i.hk, %.lr.ph385 ], [ %i.is, %bb.f ]
  %.sroa.8430.0 = phi nsz float [ %i.hj, %.lr.ph385 ], [ %i.im, %bb.f ]
  %.sroa.5429.0 = phi nsz float [ %i.hi, %.lr.ph385 ], [ %i.ig, %bb.f ]
  %.sroa.0428.0 = phi nsz float [ %i.hh, %.lr.ph385 ], [ %i.hz, %bb.f ]
  %.0261384 = phi i64 [ 0, %.lr.ph385 ], [ %i.jo, %bb.f ] ; 2 uses
  %i.hq = phi <4 x float> [ %i.hf, %.lr.ph385 ], [ %i.js, %bb.f ] ; 4 uses
  %i.hr = add i64 %.0261384, %i.hg
  %i.hs = shl i64 %i.hr, 2                        ; 5 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !23 ; 3 uses
  %i.hv = fcmp reassoc nsz arcp contract afn ult float %i.hu, %i.cx
  %.inv339 = fcmp reassoc nsz arcp contract afn ole float %i.hu, %i.db
  %.304 = select reassoc nsz arcp contract afn i1 %.inv339, float %i.hu, float %i.db
  %i.hw = select reassoc nsz arcp contract afn i1 %i.hv, float %i.cx, float %.304 ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %.0337
  %i.hy = fmul reassoc nsz arcp contract afn float %.sroa.0432.0, %.0336
  %i.hz = extractelement <4 x float> %i.hq, i64 0 ; 2 uses
  %.neg348.reass = fmul reassoc nsz arcp contract afn float %i.hz, %factor.op.fmul381
  %i.ia = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.0428.0
  %reass.add351 = fsub reassoc nsz arcp contract afn float %.neg348.reass, %i.ia
  %i.ib = fadd reassoc nsz arcp contract afn float %i.hy, %i.hx
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hs
  %i.id = or disjoint i64 %i.hs, 1                ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.id
  %i.if = fmul reassoc nsz arcp contract afn float %.sroa.5433.0, %.0336
  %i.ig = extractelement <4 x float> %i.hq, i64 1 ; 2 uses
  %.neg348.reass.1 = fmul reassoc nsz arcp contract afn float %i.ig, %factor.op.fmul381
  %i.ih = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.5429.0
  %reass.add351.1 = fsub reassoc nsz arcp contract afn float %.neg348.reass.1, %i.ih
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.id
  %i.ij = or disjoint i64 %i.hs, 2                ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ij
  %i.il = fmul reassoc nsz arcp contract afn float %.sroa.8434.0, %.0336
  %i.im = extractelement <4 x float> %i.hq, i64 2 ; 2 uses
  %.neg348.reass.2 = fmul reassoc nsz arcp contract afn float %i.im, %factor.op.fmul381
  %i.in = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.8430.0
  %reass.add351.2 = fsub reassoc nsz arcp contract afn float %.neg348.reass.2, %i.in
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ij
  %i.ip = or disjoint i64 %i.hs, 3                ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ip
  %i.ir = fmul reassoc nsz arcp contract afn float %.sroa.11435.0, %.0336
  %i.is = extractelement <4 x float> %i.hq, i64 3 ; 2 uses
  %.neg348.reass.3 = fmul reassoc nsz arcp contract afn float %i.is, %factor.op.fmul381
  %i.it = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.11431.0
  %reass.add351.3 = fsub reassoc nsz arcp contract afn float %.neg348.reass.3, %i.it
  %i.iu = fadd reassoc nsz arcp contract afn float %i.ib, %reass.add351 ; 2 uses
  store float %i.iu, ptr %i.ic, align 4, !tbaa !23
  %i.iv = load float, ptr %i.ie, align 4, !tbaa !23 ; 3 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ult float %i.iv, %i.cy
  %.inv339.1 = fcmp reassoc nsz arcp contract afn ole float %i.iv, %i.dc
  %.304.1 = select reassoc nsz arcp contract afn i1 %.inv339.1, float %i.iv, float %i.dc
  %i.ix = select reassoc nsz arcp contract afn i1 %i.iw, float %i.cy, float %.304.1 ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, %.0337
  %i.iz = fadd reassoc nsz arcp contract afn float %i.if, %i.iy
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iz, %reass.add351.1 ; 2 uses
  store float %i.ja, ptr %i.ii, align 4, !tbaa !23
  %i.jb = load float, ptr %i.ik, align 4, !tbaa !23 ; 3 uses
  %i.jc = fcmp reassoc nsz arcp contract afn ult float %i.jb, %i.cz
  %.inv339.2 = fcmp reassoc nsz arcp contract afn ole float %i.jb, %i.dd
  %.304.2 = select reassoc nsz arcp contract afn i1 %.inv339.2, float %i.jb, float %i.dd
  %i.jd = select reassoc nsz arcp contract afn i1 %i.jc, float %i.cz, float %.304.2 ; 2 uses
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %.0337
  %i.jf = fadd reassoc nsz arcp contract afn float %i.il, %i.je
  %i.jg = fadd reassoc nsz arcp contract afn float %i.jf, %reass.add351.2 ; 2 uses
  store float %i.jg, ptr %i.io, align 4, !tbaa !23
  %i.jh = load float, ptr %i.iq, align 4, !tbaa !23 ; 3 uses
  %i.ji = fcmp reassoc nsz arcp contract afn ult float %i.jh, %i.da
  %.inv339.3 = fcmp reassoc nsz arcp contract afn ole float %i.jh, %i.de
  %.304.3 = select reassoc nsz arcp contract afn i1 %.inv339.3, float %i.jh, float %i.de
  %i.jj = select reassoc nsz arcp contract afn i1 %i.ji, float %i.da, float %.304.3 ; 2 uses
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, %.0337
  %i.jl = fadd reassoc nsz arcp contract afn float %i.ir, %i.jk
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jl, %reass.add351.3 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ip
  store float %i.jm, ptr %i.jn, align 4, !tbaa !23
  %i.jo = add nuw i64 %.0261384, 1                ; 2 uses
  %exitcond407.not = icmp eq i64 %i.jo, %i.b
  %i.jp = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.jq = insertelement <4 x float> %i.jp, float %i.ja, i64 1
  %i.jr = insertelement <4 x float> %i.jq, float %i.jg, i64 2
  %i.js = insertelement <4 x float> %i.jr, float %i.jm, i64 3
  br i1 %exitcond407.not, label %._crit_edge386, label %bb.f

.lr.ph393:                                        ; preds = %._crit_edge386
  %.idx = mul i64 %i.cr, %i.hp
  %i.jt = getelementptr i8, ptr %i.bv, i64 %.idx
  %i.ju = getelementptr i8, ptr %i.jt, i64 -16
  %i.jv = load <4 x float>, ptr %i.ju, align 4, !tbaa !23 ; 3 uses
  %i.jw = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.jv, %i.ca
  %i.jx = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.jv, %i.cb
  %i.jy = select <4 x i1> %i.jx, <4 x float> %i.jv, <4 x float> %i.cb
  %i.jz = select <4 x i1> %i.jw, <4 x float> %i.ca, <4 x float> %i.jy ; 2 uses
  %44 = shufflevector <4 x float> %i.jz, <4 x float> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %45 = fmul reassoc nsz arcp contract afn <16 x float> %44, %8
  %46 = shufflevector <4 x float> %i.jz, <4 x float> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <16 x float> %45, <16 x float> %46, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ka = mul i64 %.0263395, %i.b
  br label %.loopexit

._crit_edge394:                                   ; preds = %.loopexit, %._crit_edge386
  %exitcond411.not = icmp eq i64 %i.hp, %i.e
  br i1 %exitcond411.not, label %._crit_edge397, label %.preheader363

.loopexit:                                        ; preds = %.lr.ph393, %.loopexit
  %indvars.iv = phi i64 [ %i.ct, %.lr.ph393 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %48 = phi <16 x float> [ %47, %.lr.ph393 ], [ %72, %.loopexit ] ; 5 uses
  %49 = add i64 %i.ka, %indvars.iv
  %50 = shl i64 %49, 2                            ; 5 uses
  %51 = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %50
  %52 = shufflevector <16 x float> %48, <16 x float> poison, <4 x i32> <i32 12, i32 9, i32 14, i32 11>
  %53 = fmul reassoc nsz arcp contract afn <4 x float> %52, %11
  %54 = shufflevector <16 x float> %48, <16 x float> poison, <4 x i32> <i32 8, i32 13, i32 10, i32 15>
  %55 = fmul reassoc nsz arcp contract afn <4 x float> %54, %12
  %56 = shufflevector <16 x float> %48, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kb = fmul reassoc nsz arcp contract afn <4 x float> %56, %i.dg
  %57 = shufflevector <16 x float> %48, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kc = fmul reassoc nsz arcp contract afn <4 x float> %i.di, %57
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %50 ; 2 uses
  %i.ke = or disjoint i64 %50, 1                  ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ke
  %i.kh = or disjoint i64 %50, 2                  ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.kh
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kh
  %i.kk = or disjoint i64 %50, 3                  ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.kk
  %58 = load float, ptr %51, align 4, !tbaa !23
  %i.km = fsub reassoc nsz arcp contract afn <4 x float> %i.kb, %i.kc
  %i.kn = fadd reassoc nsz arcp contract afn <4 x float> %55, %53
  %i.ko = fadd reassoc nsz arcp contract afn <4 x float> %i.kn, %i.km ; 2 uses
  %59 = shufflevector <4 x float> %i.ko, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kk
  %i.kq = load <4 x float>, ptr %i.kd, align 4, !tbaa !23
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %i.kq, %59 ; 4 uses
  %i.ks = extractelement <4 x float> %i.kr, i64 0
  store float %i.ks, ptr %i.kd, align 4, !tbaa !23
  %i.kt = load float, ptr %i.kf, align 4, !tbaa !23
  %i.ku = extractelement <4 x float> %i.kr, i64 1
  store float %i.ku, ptr %i.kg, align 4, !tbaa !23
  %i.kv = load float, ptr %i.ki, align 4, !tbaa !23
  %60 = extractelement <4 x float> %i.kr, i64 2
  store float %60, ptr %i.kj, align 4, !tbaa !23
  %61 = load float, ptr %i.kl, align 4, !tbaa !23
  %62 = insertelement <4 x float> poison, float %61, i64 0
  %63 = insertelement <4 x float> %62, float %i.kv, i64 1
  %64 = insertelement <4 x float> %63, float %i.kt, i64 2
  %65 = insertelement <4 x float> %64, float %58, i64 3 ; 3 uses
  %66 = fcmp reassoc nsz arcp contract afn ult <4 x float> %65, %9
  %67 = fcmp reassoc nsz arcp contract afn ole <4 x float> %65, %10
  %68 = select <4 x i1> %67, <4 x float> %65, <4 x float> %10
  %69 = select <4 x i1> %66, <4 x float> %9, <4 x float> %68
  %i.kw = extractelement <4 x float> %i.kr, i64 3
  store float %i.kw, ptr %i.kp, align 4, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.kx = icmp sgt i64 %indvars.iv, 0
  %70 = shufflevector <16 x float> %48, <16 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %71 = shufflevector <4 x float> %i.ko, <4 x float> %69, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %72 = shufflevector <16 x float> %71, <16 x float> %70, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  br i1 %i.kx, label %.loopexit, label %._crit_edge394
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @dt_gaussian_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.d) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.f) #17
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_gaussian_fast_blur(ptr nofree noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [25 x float], align 16            ; 21 uses
  %i.b = alloca [25 x float], align 16            ; 21 uses
  %.sroa.0 = alloca float, align 16               ; 5 uses
  %.sroa.7 = alloca float, align 4                ; 5 uses
  %i.c = alloca [25 x float], align 16            ; 15 uses
  %i.d = icmp eq ptr %0, %1                       ; 2 uses
  %i.e = sext i32 %7 to i64
  %i.f = sext i32 %2 to i64                       ; 4 uses
  %i.g = sext i32 %3 to i64
  %i.h = mul nsw i64 %i.g, %i.f
  %i.i = mul i64 %i.h, %i.e                       ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = shl i64 %i.i, 2
  %i.k = tail call ptr @dt_alloc_aligned(i64 noundef %i.j) #17 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 64) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.k, %bb.b ], [ %1, %bb.a ]    ; 5 uses
  switch i32 %7, label %bb.z [
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 4, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call fastcc void @_calc_9x9_gauss_coeffs(ptr noundef %i.c, float noundef %4)
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.preheader269.lr.ph.i, label %_fast_9x9_kernel_1.exit

.preheader269.lr.ph.i:                            ; preds = %bb.d
  %i.m = shl nuw nsw i32 %2, 2
  %i.n = mul nuw nsw i32 %2, 3
  %i.o = shl nuw nsw i32 %2, 1
  %i.p = icmp sgt i32 %2, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.r = load float, ptr %i.q, align 8
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = zext nneg i32 %i.o to i64                ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.t
  %invariant.gep275.i = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.v = load float, ptr %i.u, align 4
  %invariant.gep277.i = getelementptr [4 x i8], ptr %0, i64 %i.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load float, ptr %i.w, align 16
  %i.y = zext nneg i32 %i.n to i64                ; 2 uses
  %invariant.gep279.i = getelementptr [4 x i8], ptr %0, i64 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aa = load <16 x float>, ptr %i.z, align 4
  %i.ab = shufflevector <16 x float> %i.aa, <16 x float> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ad = load float, ptr %i.ac, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.af = load <7 x float>, ptr %i.ae, align 4
  %i.ag = shufflevector <7 x float> %i.af, <7 x float> poison, <4 x i32> <i32 1, i32 5, i32 0, i32 6>
  %i.ah = load float, ptr %i.c, align 16
  br i1 %i.p, label %.preheader269.preheader.i, label %_fast_9x9_kernel_1.exit

.preheader269.preheader.i:                        ; preds = %.preheader269.lr.ph.i
  %i.ai = add nsw i32 %3, -4
  %i.aj = add nsw i32 %2, -4
  %i.ak = sext i32 %i.aj to i64
  %i.al = zext nneg i32 %2 to i64                 ; 5 uses
  %i.am = sext i32 %i.ai to i64
  %wide.trip.count288.i = zext nneg i32 %3 to i64
  br label %.preheader269.i

.preheader269.i:                                  ; preds = %._crit_edge.i, %.preheader269.preheader.i
  %indvars.iv285.i = phi i64 [ 0, %.preheader269.preheader.i ], [ %indvars.iv.next286.i, %._crit_edge.i ] ; 5 uses
  %i.an = mul nuw nsw i64 %indvars.iv285.i, %i.f
  %i.ao = icmp samesign ugt i64 %indvars.iv285.i, 3
  %i.ap = icmp slt i64 %indvars.iv285.i, %i.am
  %i.aq = trunc nuw nsw i64 %indvars.iv285.i to i32
  br label %bb.e

._crit_edge.i:                                    ; preds = %.loopexit268.i
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next286.i, %wide.trip.count288.i
  br i1 %exitcond289.not.i, label %_fast_9x9_kernel_1.exit, label %.preheader269.i

bb.e:                                             ; preds = %.loopexit268.i, %.preheader269.i
  %indvars.iv.i = phi i64 [ 0, %.preheader269.i ], [ %indvars.iv.next.i.pre-phi, %.loopexit268.i ] ; 10 uses
  %i.ar = add nuw nsw i64 %indvars.iv.i, %i.an    ; 10 uses
  %i.as = icmp samesign ugt i64 %indvars.iv.i, 3
  %or.cond.i = select i1 %i.as, i1 %i.ao, i1 false
  %i.at = icmp slt i64 %indvars.iv.i, %i.ak
  %or.cond262.i = select i1 %or.cond.i, i1 %i.at, i1 false
  %or.cond264.i = select i1 %or.cond262.i, i1 %i.ap, i1 false
  br i1 %or.cond264.i, label %bb.f, label %.preheader267.preheader.i

.preheader267.preheader.i:                        ; preds = %bb.e
  %i.au = trunc i64 %indvars.iv.i to i32          ; 4 uses
  %i.av = add i32 %i.au, -4                       ; 2 uses
  %or.cond266.i = icmp ult i32 %i.av, %2
  %i.aw = add i32 %i.au, -3                       ; 2 uses
  %or.cond266.1.i = icmp ult i32 %i.aw, %2
  %i.ax = add i32 %i.au, -2                       ; 2 uses
  %or.cond266.2.i = icmp ult i32 %i.ax, %2
  %i.ay = add i32 %i.au, -1                       ; 2 uses
  %or.cond266.3.i = icmp ult i32 %i.ay, %2
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ba = add nuw nsw i64 %indvars.iv.i, 1        ; 3 uses
  %or.cond266.5.i = icmp samesign ult i64 %i.ba, %i.al
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = add nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %or.cond266.6.i = icmp samesign ult i64 %i.bc, %i.al
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc
  %i.be = add nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %or.cond266.7.i = icmp samesign ult i64 %i.be, %i.al
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = add nuw nsw i64 %indvars.iv.i, 4        ; 2 uses
  %or.cond266.8.i = icmp samesign ult i64 %i.bg, %i.al
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  br label %.preheader267.i

bb.f:                                             ; preds = %bb.e
  %i.bi = sub nsw i64 %i.ar, %i.s
  %i.bj = getelementptr [4 x i8], ptr %0, i64 %i.bi ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !23
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !23
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bn, %i.bl
  %i.bp = sub nsw i64 %i.ar, %i.t
  %i.bq = getelementptr [4 x i8], ptr %0, i64 %i.bp ; 8 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -16
  %i.bs = load float, ptr %i.br, align 4, !tbaa !23
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bo, %i.bs
  %i.bu = getelementptr i8, ptr %i.bq, i64 16
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !23
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bt, %i.bv
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ar ; 8 uses
  %i.bx = getelementptr i8, ptr %gep.i, i64 -16
  %i.by = load float, ptr %i.bx, align 4, !tbaa !23
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bw, %i.by
  %i.ca = getelementptr i8, ptr %gep.i, i64 16
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !23
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bz, %i.cb
  %gep276.i = getelementptr [4 x i8], ptr %invariant.gep275.i, i64 %i.ar ; 5 uses
  %i.cd = getelementptr i8, ptr %gep276.i, i64 -8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !23
  %i.cf = fadd reassoc nsz arcp contract afn float %i.cc, %i.ce
  %i.cg = getelementptr i8, ptr %gep276.i, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !23
  %i.ci = fadd reassoc nsz arcp contract afn float %i.cf, %i.ch
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, %i.r
  %i.ck = getelementptr i8, ptr %i.bj, i64 -4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !23
  %i.cm = getelementptr i8, ptr %i.bj, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !23
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.cl
  %i.cp = sub nsw i64 %i.ar, %i.f
  %i.cq = getelementptr [4 x i8], ptr %0, i64 %i.cp ; 6 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !23
  %i.ct = fadd reassoc nsz arcp contract afn float %i.co, %i.cs
  %i.cu = getelementptr i8, ptr %i.cq, i64 16
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !23
  %i.cw = fadd reassoc nsz arcp contract afn float %i.ct, %i.cv
  %gep278.i = getelementptr [4 x i8], ptr %invariant.gep277.i, i64 %i.ar ; 6 uses
  %i.cx = getelementptr i8, ptr %gep278.i, i64 -16
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !23
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cw, %i.cy
  %i.da = getelementptr i8, ptr %gep278.i, i64 16
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  %i.dc = fadd reassoc nsz arcp contract afn float %i.cz, %i.db
  %i.dd = getelementptr i8, ptr %gep276.i, i64 -4
end_hunk_0
