loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @srad_kernel(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4096
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4092 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4092 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8188
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4092 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4088
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4092 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4092
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 4092 ; 2 uses
  %i.k = getelementptr i8, ptr %5, i64 8384512    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8380416
  %i.m = getelementptr i8, ptr %0, i64 8384512    ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 8384512    ; 4 uses
  %i.o = insertelement <4 x ptr> poison, ptr %5, i64 0 ; 3 uses
  %i.p = insertelement <4 x ptr> %i.o, ptr %0, i64 1
  %i.q = insertelement <4 x ptr> %i.p, ptr %2, i64 3
  %i.r = shufflevector <4 x ptr> %i.q, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.s = getelementptr i8, <4 x ptr> %i.r, i64 8384512
  %i.t = getelementptr i8, ptr %2, i64 8384512    ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8384516
  %i.v = getelementptr i8, ptr %3, i64 8384512    ; 4 uses
  %i.w = shufflevector <4 x ptr> %i.o, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.x = insertelement <4 x ptr> %i.w, ptr %6, i64 0
  %i.y = insertelement <4 x ptr> %i.x, ptr %1, i64 2 ; 2 uses
  %i.z = getelementptr i8, <4 x ptr> %i.y, i64 8384512
  %i.aa = getelementptr i8, ptr %6, i64 8384512   ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8388604 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8384508
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8388604 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8388604 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8388600
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8388604 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8388604 ; 2 uses
  %i.ai = getelementptr i8, ptr %6, i64 8388604   ; 3 uses
  %scevgep = getelementptr i8, ptr %5, i64 8384508 ; 2 uses
  %i.aj = insertelement <4 x ptr> poison, ptr %6, i64 0
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %0, i64 1
  %i.al = insertelement <4 x ptr> %i.ak, ptr %1, i64 2
  %i.am = insertelement <4 x ptr> %i.al, ptr %2, i64 3 ; 2 uses
  %i.an = getelementptr i8, <4 x ptr> %i.am, <4 x i64> <i64 8388604, i64 8384508, i64 8384508, i64 8384508>
  %scevgep682 = getelementptr i8, ptr %3, i64 8384508
  %scevgep706 = getelementptr i8, ptr %5, i64 8388604
  %i.ao = getelementptr i8, <4 x ptr> %i.y, <4 x i64> <i64 8388608, i64 8388604, i64 8388604, i64 8388604>
  %i.ap = getelementptr i8, <4 x ptr> %i.r, i64 8388604
  %scevgep711 = getelementptr i8, ptr %3, i64 8388604
  %scevgep746 = getelementptr i8, ptr %0, i64 4100 ; 2 uses
  %scevgep747 = getelementptr i8, ptr %0, i64 8384508 ; 2 uses
  %scevgep752 = getelementptr i8, ptr %3, i64 4100
  %scevgep753 = getelementptr i8, ptr %3, i64 8384508
  %i.aq = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %2, i64 1
  %i.as = insertelement <4 x ptr> %i.ar, ptr %6, i64 2
  %i.at = shufflevector <4 x ptr> %i.as, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.au = getelementptr i8, <4 x ptr> %i.at, i64 4100 ; 3 uses
  %scevgep754 = getelementptr i8, ptr %6, i64 4100
  %i.av = getelementptr i8, <4 x ptr> %i.at, i64 8384508 ; 3 uses
  %scevgep755 = getelementptr i8, ptr %6, i64 8384508
  %i.aw = insertelement <4 x ptr> poison, ptr %5, i64 0
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %3, i64 1
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %2, i64 2
  %i.az = shufflevector <4 x ptr> %i.ay, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ba = getelementptr i8, <4 x ptr> %i.az, <4 x i64> <i64 4, i64 4100, i64 4100, i64 4> ; 3 uses
  %7 = insertelement <2 x ptr> poison, ptr %5, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %6, i64 1  ; 2 uses
  %9 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %5, i64 1 ; 2 uses
  %11 = getelementptr i8, <2 x ptr> %8, <2 x i64> <i64 4, i64 4100>
  %12 = getelementptr i8, <2 x ptr> %10, <2 x i64> <i64 4100, i64 4>
  %i.bb = getelementptr i8, <4 x ptr> %i.az, <4 x i64> <i64 8388604, i64 8384508, i64 8384508, i64 8388604> ; 3 uses
  %13 = getelementptr i8, <2 x ptr> %10, <2 x i64> <i64 8384508, i64 8388604>
  %14 = getelementptr i8, <2 x ptr> %8, <2 x i64> <i64 8388604, i64 8384508>
  %i.bc = insertelement <8 x ptr> poison, ptr %scevgep746, i64 0
  %i.bd = shufflevector <4 x ptr> %i.au, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <8 x ptr> %i.bc, <8 x ptr> %i.bd, <8 x i32> <i32 0, i32 9, i32 poison, i32 10, i32 poison, i32 8, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x ptr> %i.ba, <4 x ptr> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bg = shufflevector <8 x ptr> %i.be, <8 x ptr> %i.bf, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 9, i32 5>
  %i.bh = shufflevector <4 x ptr> %i.bb, <4 x ptr> %i.av, <8 x i32> <i32 4, i32 poison, i32 1, i32 poison, i32 0, i32 2, i32 poison, i32 6>
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %scevgep747, i64 1
  %i.bj = shufflevector <8 x ptr> %i.bi, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 5, i32 0, i32 7>
  %i.bk = icmp ult <8 x ptr> %i.bg, %i.bj
  %i.bl = shufflevector <4 x ptr> %i.au, <4 x ptr> %i.ba, <8 x i32> <i32 0, i32 poison, i32 5, i32 poison, i32 4, i32 1, i32 poison, i32 2>
  %i.bm = insertelement <8 x ptr> %i.bl, ptr %scevgep746, i64 1
  %i.bn = shufflevector <8 x ptr> %i.bm, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 5, i32 0, i32 7>
  %i.bo = insertelement <8 x ptr> poison, ptr %scevgep747, i64 0
  %i.bp = shufflevector <4 x ptr> %i.bb, <4 x ptr> poison, <8 x i32> <i32 poison, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <8 x ptr> %i.bo, <8 x ptr> %i.bp, <8 x i32> <i32 0, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 9, i32 poison>
  %i.br = shufflevector <4 x ptr> %i.av, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <8 x ptr> %i.bq, <8 x ptr> %i.br, <8 x i32> <i32 0, i32 1, i32 0, i32 10, i32 0, i32 8, i32 6, i32 8>
  %i.bt = icmp ult <8 x ptr> %i.bn, %i.bs
  %i.bu = and <8 x i1> %i.bk, %i.bt               ; 2 uses
  %i.bv = icmp ult <4 x ptr> %i.au, %i.bb
  %i.bw = icmp ult <4 x ptr> %i.ba, %i.av
  %i.bx = and <4 x i1> %i.bv, %i.bw
  %bound0809 = icmp ult ptr %scevgep752, %scevgep755
  %bound1810 = icmp ult ptr %scevgep754, %scevgep753
  %found.conflict811 = and i1 %bound0809, %bound1810
  %15 = icmp ult <2 x ptr> %12, %14
  %16 = icmp ult <2 x ptr> %11, %13
  %17 = and <2 x i1> %16, %15
  %i.by = shufflevector <4 x i1> %i.bx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = or <8 x i1> %i.bu, %i.by
  %i.ca = shufflevector <8 x i1> %i.bz, <8 x i1> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cb = bitcast <8 x i1> %i.ca to i8
  %i.cc = icmp ne i8 %i.cb, 0
  %op.rdx841 = or i1 %i.cc, %found.conflict811
  %18 = bitcast <2 x i1> %17 to i2
  %op.rdx842 = icmp ne i2 %18, 0
  %op.rdx843 = or i1 %op.rdx841, %op.rdx842
  %i.cd = icmp ult <4 x ptr> %i.s, %i.ao
  %i.ce = icmp ult <4 x ptr> %i.z, %i.ap
  %i.cf = and <4 x i1> %i.ce, %i.cd
  %bound0727 = icmp ult ptr %i.k, %scevgep711
  %bound1728 = icmp ult ptr %i.v, %scevgep706
  %found.conflict729 = and i1 %bound0727, %bound1728
  %i.cg = bitcast <4 x i1> %i.cf to i4
  %i.ch = icmp ne i4 %i.cg, 0
  %op.rdx840 = or i1 %i.ch, %found.conflict729
  %i.ci = shufflevector <4 x ptr> %i.o, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cj = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ck = shufflevector <4 x ptr> %i.cj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cl = icmp ult <4 x ptr> %i.ci, %i.an
  %i.cm = icmp ult <4 x ptr> %i.am, %i.ck
  %i.cn = and <4 x i1> %i.cl, %i.cm
  %bound0694 = icmp ult ptr %5, %scevgep682
  %bound1695 = icmp ult ptr %3, %scevgep
  %found.conflict696 = and i1 %bound0694, %bound1695
  %i.co = bitcast <4 x i1> %i.cn to i4
  %i.cp = icmp ne i4 %i.co, 0
  %op.rdx = or i1 %i.cp, %found.conflict696
  br label %.preheader624

.preheader624:                                    ; preds = %bb.a, %bb.p
  %.0607636 = phi i32 [ 0, %bb.a ], [ %i.tc, %bb.p ]
  br label %.preheader622

.preheader622:                                    ; preds = %.preheader624, %bb.c
  %indvars.iv639 = phi i64 [ 0, %.preheader624 ], [ %indvars.iv.next640, %bb.c ] ; 2 uses
  %19 = phi <2 x float> [ zeroinitializer, %.preheader624 ], [ %38, %bb.c ]
  %i.cq = getelementptr inbounds nuw [4096 x i8], ptr %5, i64 %indvars.iv639 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader622
  %indvars.iv = phi i64 [ 0, %.preheader622 ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %20 = phi <2 x float> [ %19, %.preheader622 ], [ %38, %bb.b ]
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %22 = load float, ptr %21, align 4, !tbaa !8    ; 3 uses
  %23 = fmul float %22, %22
  %24 = insertelement <2 x float> poison, float %22, i64 0
  %25 = insertelement <2 x float> %24, float %23, i64 1
  %26 = fadd <2 x float> %20, %25
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !8 ; 3 uses
  %27 = fmul float %i.ct, %i.ct
  %28 = insertelement <2 x float> poison, float %i.ct, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = fadd <2 x float> %26, %29
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !8 ; 3 uses
  %31 = fmul float %i.cw, %i.cw
  %32 = insertelement <2 x float> poison, float %i.cw, i64 0
  %33 = insertelement <2 x float> %32, float %31, i64 1
  %34 = fadd <2 x float> %30, %33
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !8 ; 3 uses
  %35 = fmul float %i.cz, %i.cz
  %36 = insertelement <2 x float> poison, float %i.cz, i64 0
  %37 = insertelement <2 x float> %36, float %35, i64 1
  %38 = fadd <2 x float> %34, %37                 ; 4 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 128
  br i1 %exitcond.not.3, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond642.not = icmp eq i64 %indvars.iv.next640, 128
  br i1 %exitcond642.not, label %bb.d, label %.preheader622, !llvm.loop !12

bb.d:                                             ; preds = %bb.c
  %39 = extractelement <2 x float> %38, i64 0
  %i.da = fmul float %39, f0x38800000
  %40 = extractelement <2 x float> %38, i64 1
  %i.db = fmul float %40, f0x38800000
  %i.dc = load float, ptr %5, align 4, !tbaa !8   ; 8 uses
  %i.dd = fsub float %i.dc, %i.dc
  store float %i.dd, ptr %0, align 4, !tbaa !8
  %i.de = load float, ptr %i.a, align 4, !tbaa !8
  %i.df = fsub float %i.de, %i.dc
  store float %i.df, ptr %1, align 4, !tbaa !8
  %i.dg = load float, ptr %5, align 4, !tbaa !8
  %i.dh = fsub float %i.dg, %i.dc
  store float %i.dh, ptr %2, align 4, !tbaa !8
  %i.di = load float, ptr %i.b, align 4, !tbaa !8
  %i.dj = fsub float %i.di, %i.dc                 ; 4 uses
  store float %i.dj, ptr %3, align 4, !tbaa !8
  %i.dk = load float, ptr %0, align 4, !tbaa !8   ; 3 uses
  %i.dl = fmul float %i.dk, %i.dk
  %i.dm = load float, ptr %1, align 4, !tbaa !8   ; 3 uses
  %i.dn = fmul float %i.dm, %i.dm
  %i.do = fadd float %i.dl, %i.dn
  %i.dp = load float, ptr %2, align 4, !tbaa !8   ; 3 uses
  %i.dq = fmul float %i.dp, %i.dp
  %i.dr = fadd float %i.do, %i.dq
  %i.ds = fmul float %i.dj, %i.dj
  %i.dt = fadd float %i.ds, %i.dr
  %i.du = fmul float %i.dc, %i.dc
  %i.dv = fdiv float %i.dt, %i.du
  %i.dw = fadd float %i.dk, %i.dm
  %i.dx = fadd float %i.dw, %i.dp
  %i.dy = fadd float %i.dj, %i.dx
  %i.dz = fdiv float %i.dy, %i.dc                 ; 3 uses
  %i.ea = fpext float %i.dv to double
  %i.eb = fmul double %i.ea, 5.000000e-01
  %i.ec = fmul float %i.dz, %i.dz
  %i.ed = fpext float %i.ec to double
  %i.ee = fmul double %i.ed, 6.250000e-02
  %i.ef = fsub double %i.eb, %i.ee
  %i.eg = fptrunc double %i.ef to float
  %i.eh = fpext float %i.dz to double
  %i.ei = fmul double %i.eh, 2.500000e-01
  %i.ej = fadd double %i.ei, 1.000000e+00
  %i.ek = fptrunc double %i.ej to float
  %i.el = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.da, i64 1 ; 2 uses
  %i.en = fmul <2 x float> %i.em, %i.em           ; 2 uses
  %i.eo = extractelement <2 x float> %i.en, i64 1
  %i.ep = fsub float %i.db, %i.eo
  %i.eq = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.ep, i64 1
  %i.es = fdiv <2 x float> %i.er, %i.en           ; 3 uses
  %i.et = extractelement <2 x float> %i.es, i64 1 ; 7 uses
  %i.eu = extractelement <2 x float> %i.es, i64 0
  %i.ev = fsub float %i.eu, %i.et
  %i.ew = fadd float %i.et, 1.000000e+00
  %i.ex = fmul float %i.et, %i.ew                 ; 6 uses
  %i.ey = fdiv float %i.ev, %i.ex
  %i.ez = fpext float %i.ey to double
  %i.fa = fadd double %i.ez, 1.000000e+00
  %i.fb = fdiv double 1.000000e+00, %i.fa         ; 3 uses
  %i.fc = fptrunc double %i.fb to float
  store float %i.fc, ptr %6, align 4, !tbaa !8
  %i.fd = fcmp olt double %i.fb, f0xB690000000000000
  br i1 %i.fd, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fe = fcmp ogt double %i.fb, f0x3FF0000010000000
  br i1 %i.fe, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi float [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.e ]
  store float %.sink, ptr %6, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.ff = load float, ptr %i.c, align 4, !tbaa !8 ; 8 uses
  %i.fg = fsub float %i.ff, %i.ff
  store float %i.fg, ptr %i.d, align 4, !tbaa !8
  %i.fh = load float, ptr %i.e, align 4, !tbaa !8
  %i.fi = fsub float %i.fh, %i.ff
  store float %i.fi, ptr %i.f, align 4, !tbaa !8
  %i.fj = load float, ptr %i.g, align 4, !tbaa !8
  %i.fk = fsub float %i.fj, %i.ff
  store float %i.fk, ptr %i.h, align 4, !tbaa !8
  %i.fl = load float, ptr %i.c, align 4, !tbaa !8
  %i.fm = fsub float %i.fl, %i.ff                 ; 4 uses
  store float %i.fm, ptr %i.i, align 4, !tbaa !8
  %i.fn = load float, ptr %i.d, align 4, !tbaa !8 ; 3 uses
  %i.fo = fmul float %i.fn, %i.fn
  %i.fp = load float, ptr %i.f, align 4, !tbaa !8 ; 3 uses
  %i.fq = fmul float %i.fp, %i.fp
  %i.fr = fadd float %i.fo, %i.fq
  %i.fs = load float, ptr %i.h, align 4, !tbaa !8 ; 3 uses
  %i.ft = fmul float %i.fs, %i.fs
  %i.fu = fadd float %i.fr, %i.ft
  %i.fv = fmul float %i.fm, %i.fm
  %i.fw = fadd float %i.fv, %i.fu
  %i.fx = fmul float %i.ff, %i.ff
  %i.fy = fdiv float %i.fw, %i.fx
  %i.fz = fadd float %i.fn, %i.fp
  %i.ga = fadd float %i.fz, %i.fs
  %i.gb = fadd float %i.fm, %i.ga
  %i.gc = fdiv float %i.gb, %i.ff                 ; 3 uses
  %i.gd = fpext float %i.fy to double
  %i.ge = fmul double %i.gd, 5.000000e-01
  %i.gf = fmul float %i.gc, %i.gc
  %i.gg = fpext float %i.gf to double
  %i.gh = fmul double %i.gg, 6.250000e-02
  %i.gi = fsub double %i.ge, %i.gh
  %i.gj = fptrunc double %i.gi to float
  %i.gk = fpext float %i.gc to double
  %i.gl = fmul double %i.gk, 2.500000e-01
  %i.gm = fadd double %i.gl, 1.000000e+00
  %i.gn = fptrunc double %i.gm to float           ; 2 uses
  %i.go = fmul float %i.gn, %i.gn
  %i.gp = fdiv float %i.gj, %i.go
  %i.gq = fsub float %i.gp, %i.et
  %i.gr = fdiv float %i.gq, %i.ex
  %i.gs = fpext float %i.gr to double
  %i.gt = fadd double %i.gs, 1.000000e+00
  %i.gu = fdiv double 1.000000e+00, %i.gt         ; 3 uses
  %i.gv = fptrunc double %i.gu to float
  store float %i.gv, ptr %i.j, align 4, !tbaa !8
  %i.gw = fcmp olt double %i.gu, f0xB690000000000000
  br i1 %i.gw, label %.sink.split670, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gx = fcmp ogt double %i.gu, f0x3FF0000010000000
  br i1 %i.gx, label %.sink.split670, label %bb.h

.sink.split670:                                   ; preds = %bb.g, %bb.f
  %.sink671 = phi float [ 0.000000e+00, %bb.f ], [ 1.000000e+00, %bb.g ]
  store float %.sink671, ptr %i.j, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split670, %bb.g
  %i.gy = load float, ptr %i.k, align 4, !tbaa !8 ; 7 uses
  %i.gz = load float, ptr %i.l, align 4, !tbaa !8
  %i.ha = fsub float %i.gz, %i.gy
  store float %i.ha, ptr %i.m, align 4, !tbaa !8
  %i.hb = load float, ptr %i.k, align 4, !tbaa !8
  %i.hc = fsub float %i.hb, %i.gy
  store float %i.hc, ptr %i.n, align 4, !tbaa !8
  %i.hd = load float, ptr %i.k, align 4, !tbaa !8
  %i.he = fsub float %i.hd, %i.gy
  store float %i.he, ptr %i.t, align 4, !tbaa !8
  %i.hf = load float, ptr %i.u, align 4, !tbaa !8
  %i.hg = fsub float %i.hf, %i.gy                 ; 4 uses
  store float %i.hg, ptr %i.v, align 4, !tbaa !8
  %i.hh = load float, ptr %i.m, align 4, !tbaa !8 ; 3 uses
  %i.hi = fmul float %i.hh, %i.hh
  %i.hj = load float, ptr %i.n, align 4, !tbaa !8 ; 3 uses
  %i.hk = fmul float %i.hj, %i.hj
  %i.hl = fadd float %i.hi, %i.hk
  %i.hm = load float, ptr %i.t, align 4, !tbaa !8 ; 3 uses
  %i.hn = fmul float %i.hm, %i.hm
  %i.ho = fadd float %i.hl, %i.hn
  %i.hp = fmul float %i.hg, %i.hg
  %i.hq = fadd float %i.hp, %i.ho
  %i.hr = fmul float %i.gy, %i.gy
  %i.hs = fdiv float %i.hq, %i.hr
  %i.ht = fadd float %i.hh, %i.hj
  %i.hu = fadd float %i.ht, %i.hm
  %i.hv = fadd float %i.hg, %i.hu
  %i.hw = fdiv float %i.hv, %i.gy                 ; 3 uses
  %i.hx = fpext float %i.hs to double
  %i.hy = fmul double %i.hx, 5.000000e-01
  %i.hz = fmul float %i.hw, %i.hw
  %i.ia = fpext float %i.hz to double
  %i.ib = fmul double %i.ia, 6.250000e-02
  %i.ic = fsub double %i.hy, %i.ib
  %i.id = fptrunc double %i.ic to float
  %i.ie = fpext float %i.hw to double
  %i.if = fmul double %i.ie, 2.500000e-01
  %i.ig = fadd double %i.if, 1.000000e+00
  %i.ih = fptrunc double %i.ig to float           ; 2 uses
  %i.ii = fmul float %i.ih, %i.ih
  %i.ij = fdiv float %i.id, %i.ii
  %i.ik = fsub float %i.ij, %i.et
  %i.il = fdiv float %i.ik, %i.ex
  %i.im = fpext float %i.il to double
  %i.in = fadd double %i.im, 1.000000e+00
  %i.io = fdiv double 1.000000e+00, %i.in         ; 3 uses
  %i.ip = fptrunc double %i.io to float
  store float %i.ip, ptr %i.aa, align 4, !tbaa !8
  %i.iq = fcmp olt double %i.io, f0xB690000000000000
  br i1 %i.iq, label %.sink.split672, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ir = fcmp ogt double %i.io, f0x3FF0000010000000
  br i1 %i.ir, label %.sink.split672, label %bb.j

.sink.split672:                                   ; preds = %bb.i, %bb.h
  %.sink673 = phi float [ 0.000000e+00, %bb.h ], [ 1.000000e+00, %bb.i ]
  store float %.sink673, ptr %i.aa, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split672, %bb.i
  %i.is = load float, ptr %i.ab, align 4, !tbaa !8 ; 7 uses
  %i.it = load float, ptr %i.ac, align 4, !tbaa !8
  %i.iu = fsub float %i.it, %i.is
  store float %i.iu, ptr %i.ad, align 4, !tbaa !8
  %i.iv = load float, ptr %i.ab, align 4, !tbaa !8
  %i.iw = fsub float %i.iv, %i.is
end_hunk_0
