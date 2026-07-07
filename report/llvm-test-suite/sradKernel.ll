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
  %scevgep706 = getelementptr i8, ptr %5, i64 8388604 ; 3 uses
  %i.ao = getelementptr i8, <4 x ptr> %i.y, <4 x i64> <i64 8388608, i64 8388604, i64 8388604, i64 8388604>
  %i.ap = getelementptr i8, <4 x ptr> %i.r, i64 8388604
  %scevgep711 = getelementptr i8, ptr %3, i64 8388604
  %scevgep746 = getelementptr i8, ptr %0, i64 4100 ; 2 uses
  %scevgep747 = getelementptr i8, ptr %0, i64 8384508 ; 2 uses
  %scevgep752 = getelementptr i8, ptr %3, i64 4100 ; 2 uses
  %scevgep753 = getelementptr i8, ptr %3, i64 8384508 ; 2 uses
  %i.aq = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %2, i64 1
  %i.as = insertelement <4 x ptr> %i.ar, ptr %6, i64 2
  %i.at = shufflevector <4 x ptr> %i.as, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.au = getelementptr i8, <4 x ptr> %i.at, i64 4100 ; 3 uses
  %scevgep754 = getelementptr i8, ptr %6, i64 4100 ; 2 uses
  %i.av = getelementptr i8, <4 x ptr> %i.at, i64 8384508 ; 3 uses
  %scevgep755 = getelementptr i8, ptr %6, i64 8384508 ; 2 uses
  %i.aw = insertelement <4 x ptr> poison, ptr %5, i64 0
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %3, i64 1
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %2, i64 2
  %i.az = shufflevector <4 x ptr> %i.ay, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ba = getelementptr i8, <4 x ptr> %i.az, <4 x i64> <i64 4, i64 4100, i64 4100, i64 4> ; 3 uses
  %scevgep756 = getelementptr i8, ptr %5, i64 4   ; 2 uses
  %i.bb = getelementptr i8, <4 x ptr> %i.az, <4 x i64> <i64 8388604, i64 8384508, i64 8384508, i64 8388604> ; 3 uses
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
  %bound0805 = icmp ult ptr %scevgep752, %scevgep755
  %bound1806 = icmp ult ptr %scevgep754, %scevgep753
  %found.conflict807 = and i1 %bound0805, %bound1806
  %bound0809 = icmp ult ptr %scevgep752, %scevgep706
  %bound1810 = icmp ult ptr %scevgep756, %scevgep753
  %found.conflict811 = and i1 %bound0809, %bound1810
  %bound0813 = icmp ult ptr %scevgep754, %scevgep706
  %bound1814 = icmp ult ptr %scevgep756, %scevgep755
  %found.conflict815 = and i1 %bound0813, %bound1814
  %i.by = shufflevector <4 x i1> %i.bx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = or <8 x i1> %i.bu, %i.by
  %i.ca = shufflevector <8 x i1> %i.bz, <8 x i1> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cb = bitcast <8 x i1> %i.ca to i8
  %i.cc = icmp ne i8 %i.cb, 0
  %op.rdx841 = or i1 %i.cc, %found.conflict807
  %op.rdx842 = or i1 %found.conflict811, %found.conflict815
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
  %.0607636 = phi i32 [ 0, %bb.a ], [ %i.tg, %bb.p ]
  br label %.preheader622

.preheader622:                                    ; preds = %.preheader624, %bb.c
  %indvars.iv639 = phi i64 [ 0, %.preheader624 ], [ %indvars.iv.next640, %bb.c ] ; 2 uses
  %.0611630 = phi float [ 0.000000e+00, %.preheader624 ], [ %i.dl, %bb.c ]
  %.0612629 = phi float [ 0.000000e+00, %.preheader624 ], [ %i.dn, %bb.c ]
  %i.cq = getelementptr inbounds nuw [4096 x i8], ptr %5, i64 %indvars.iv639 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader622
  %indvars.iv = phi i64 [ 0, %.preheader622 ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.1627 = phi float [ %.0611630, %.preheader622 ], [ %i.dl, %bb.b ]
  %.1613626 = phi float [ %.0612629, %.preheader622 ], [ %i.dn, %bb.b ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !8 ; 3 uses
  %i.ct = fadd float %.1627, %i.cs
  %i.cu = fmul float %i.cs, %i.cs
  %i.cv = fadd float %.1613626, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !8 ; 3 uses
  %i.cz = fadd float %i.ct, %i.cy
  %i.da = fmul float %i.cy, %i.cy
  %i.db = fadd float %i.cv, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !8 ; 3 uses
  %i.df = fadd float %i.cz, %i.de
  %i.dg = fmul float %i.de, %i.de
  %i.dh = fadd float %i.db, %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !8 ; 3 uses
  %i.dl = fadd float %i.df, %i.dk                 ; 3 uses
  %i.dm = fmul float %i.dk, %i.dk
  %i.dn = fadd float %i.dh, %i.dm                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 128
  br i1 %exitcond.not.3, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond642.not = icmp eq i64 %indvars.iv.next640, 128
  br i1 %exitcond642.not, label %bb.d, label %.preheader622, !llvm.loop !12

bb.d:                                             ; preds = %bb.c
  %i.do = fmul float %i.dl, f0x38800000
  %i.dp = fmul float %i.dn, f0x38800000
  %i.dq = load float, ptr %5, align 4, !tbaa !8   ; 8 uses
  %i.dr = fsub float %i.dq, %i.dq
  store float %i.dr, ptr %0, align 4, !tbaa !8
  %i.ds = load float, ptr %i.a, align 4, !tbaa !8
  %i.dt = fsub float %i.ds, %i.dq
  store float %i.dt, ptr %1, align 4, !tbaa !8
  %i.du = load float, ptr %5, align 4, !tbaa !8
  %i.dv = fsub float %i.du, %i.dq
  store float %i.dv, ptr %2, align 4, !tbaa !8
  %i.dw = load float, ptr %i.b, align 4, !tbaa !8
  %i.dx = fsub float %i.dw, %i.dq                 ; 4 uses
  store float %i.dx, ptr %3, align 4, !tbaa !8
  %i.dy = load float, ptr %0, align 4, !tbaa !8   ; 3 uses
  %i.dz = fmul float %i.dy, %i.dy
  %i.ea = load float, ptr %1, align 4, !tbaa !8   ; 3 uses
  %i.eb = fmul float %i.ea, %i.ea
  %i.ec = fadd float %i.dz, %i.eb
  %i.ed = load float, ptr %2, align 4, !tbaa !8   ; 3 uses
  %i.ee = fmul float %i.ed, %i.ed
  %i.ef = fadd float %i.ec, %i.ee
  %i.eg = fmul float %i.dx, %i.dx
  %i.eh = fadd float %i.eg, %i.ef
  %i.ei = fmul float %i.dq, %i.dq
  %i.ej = fdiv float %i.eh, %i.ei
  %i.ek = fadd float %i.dy, %i.ea
  %i.el = fadd float %i.ek, %i.ed
  %i.em = fadd float %i.dx, %i.el
  %i.en = fdiv float %i.em, %i.dq                 ; 3 uses
  %i.eo = fpext float %i.ej to double
  %i.ep = fmul double %i.eo, 5.000000e-01
  %i.eq = fmul float %i.en, %i.en
  %i.er = fpext float %i.eq to double
  %i.es = fmul double %i.er, 6.250000e-02
  %i.et = fsub double %i.ep, %i.es
  %i.eu = fptrunc double %i.et to float
  %i.ev = fpext float %i.en to double
  %i.ew = fmul double %i.ev, 2.500000e-01
  %i.ex = fadd double %i.ew, 1.000000e+00
  %i.ey = fptrunc double %i.ex to float
  %7 = insertelement <2 x float> poison, float %i.ey, i64 0
  %8 = insertelement <2 x float> %7, float %i.do, i64 1 ; 2 uses
  %9 = fmul <2 x float> %8, %8                    ; 2 uses
  %10 = extractelement <2 x float> %9, i64 1
  %11 = fsub float %i.dp, %10
  %12 = insertelement <2 x float> poison, float %i.eu, i64 0
  %13 = insertelement <2 x float> %12, float %11, i64 1
  %14 = fdiv <2 x float> %13, %9                  ; 3 uses
  %15 = extractelement <2 x float> %14, i64 1     ; 7 uses
  %16 = extractelement <2 x float> %14, i64 0
  %i.ez = fsub float %16, %15
  %i.fa = fadd float %15, 1.000000e+00
  %i.fb = fmul float %15, %i.fa                   ; 6 uses
  %i.fc = fdiv float %i.ez, %i.fb
  %i.fd = fpext float %i.fc to double
  %i.fe = fadd double %i.fd, 1.000000e+00
  %i.ff = fdiv double 1.000000e+00, %i.fe         ; 3 uses
  %i.fg = fptrunc double %i.ff to float
  store float %i.fg, ptr %6, align 4, !tbaa !8
  %i.fh = fcmp olt double %i.ff, f0xB690000000000000
  br i1 %i.fh, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fi = fcmp ogt double %i.ff, f0x3FF0000010000000
  br i1 %i.fi, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi float [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.e ]
  store float %.sink, ptr %6, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.fj = load float, ptr %i.c, align 4, !tbaa !8 ; 8 uses
  %i.fk = fsub float %i.fj, %i.fj
  store float %i.fk, ptr %i.d, align 4, !tbaa !8
  %i.fl = load float, ptr %i.e, align 4, !tbaa !8
  %i.fm = fsub float %i.fl, %i.fj
  store float %i.fm, ptr %i.f, align 4, !tbaa !8
  %i.fn = load float, ptr %i.g, align 4, !tbaa !8
  %i.fo = fsub float %i.fn, %i.fj
  store float %i.fo, ptr %i.h, align 4, !tbaa !8
  %i.fp = load float, ptr %i.c, align 4, !tbaa !8
  %i.fq = fsub float %i.fp, %i.fj                 ; 4 uses
  store float %i.fq, ptr %i.i, align 4, !tbaa !8
  %i.fr = load float, ptr %i.d, align 4, !tbaa !8 ; 3 uses
  %i.fs = fmul float %i.fr, %i.fr
  %i.ft = load float, ptr %i.f, align 4, !tbaa !8 ; 3 uses
  %i.fu = fmul float %i.ft, %i.ft
  %i.fv = fadd float %i.fs, %i.fu
  %i.fw = load float, ptr %i.h, align 4, !tbaa !8 ; 3 uses
  %i.fx = fmul float %i.fw, %i.fw
  %i.fy = fadd float %i.fv, %i.fx
  %i.fz = fmul float %i.fq, %i.fq
  %i.ga = fadd float %i.fz, %i.fy
  %i.gb = fmul float %i.fj, %i.fj
  %i.gc = fdiv float %i.ga, %i.gb
  %i.gd = fadd float %i.fr, %i.ft
  %i.ge = fadd float %i.gd, %i.fw
  %i.gf = fadd float %i.fq, %i.ge
  %i.gg = fdiv float %i.gf, %i.fj                 ; 3 uses
  %i.gh = fpext float %i.gc to double
  %i.gi = fmul double %i.gh, 5.000000e-01
  %i.gj = fmul float %i.gg, %i.gg
  %i.gk = fpext float %i.gj to double
  %i.gl = fmul double %i.gk, 6.250000e-02
  %i.gm = fsub double %i.gi, %i.gl
  %i.gn = fptrunc double %i.gm to float
  %i.go = fpext float %i.gg to double
  %i.gp = fmul double %i.go, 2.500000e-01
  %i.gq = fadd double %i.gp, 1.000000e+00
  %i.gr = fptrunc double %i.gq to float           ; 2 uses
  %i.gs = fmul float %i.gr, %i.gr
  %i.gt = fdiv float %i.gn, %i.gs
  %i.gu = fsub float %i.gt, %15
  %i.gv = fdiv float %i.gu, %i.fb
  %i.gw = fpext float %i.gv to double
  %i.gx = fadd double %i.gw, 1.000000e+00
  %i.gy = fdiv double 1.000000e+00, %i.gx         ; 3 uses
  %i.gz = fptrunc double %i.gy to float
  store float %i.gz, ptr %i.j, align 4, !tbaa !8
  %i.ha = fcmp olt double %i.gy, f0xB690000000000000
  br i1 %i.ha, label %.sink.split670, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hb = fcmp ogt double %i.gy, f0x3FF0000010000000
  br i1 %i.hb, label %.sink.split670, label %bb.h

.sink.split670:                                   ; preds = %bb.g, %bb.f
  %.sink671 = phi float [ 0.000000e+00, %bb.f ], [ 1.000000e+00, %bb.g ]
  store float %.sink671, ptr %i.j, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split670, %bb.g
  %i.hc = load float, ptr %i.k, align 4, !tbaa !8 ; 7 uses
  %i.hd = load float, ptr %i.l, align 4, !tbaa !8
  %i.he = fsub float %i.hd, %i.hc
  store float %i.he, ptr %i.m, align 4, !tbaa !8
  %i.hf = load float, ptr %i.k, align 4, !tbaa !8
  %i.hg = fsub float %i.hf, %i.hc
  store float %i.hg, ptr %i.n, align 4, !tbaa !8
  %i.hh = load float, ptr %i.k, align 4, !tbaa !8
  %i.hi = fsub float %i.hh, %i.hc
  store float %i.hi, ptr %i.t, align 4, !tbaa !8
  %i.hj = load float, ptr %i.u, align 4, !tbaa !8
  %i.hk = fsub float %i.hj, %i.hc                 ; 4 uses
  store float %i.hk, ptr %i.v, align 4, !tbaa !8
  %i.hl = load float, ptr %i.m, align 4, !tbaa !8 ; 3 uses
  %i.hm = fmul float %i.hl, %i.hl
  %i.hn = load float, ptr %i.n, align 4, !tbaa !8 ; 3 uses
  %i.ho = fmul float %i.hn, %i.hn
  %i.hp = fadd float %i.hm, %i.ho
  %i.hq = load float, ptr %i.t, align 4, !tbaa !8 ; 3 uses
  %i.hr = fmul float %i.hq, %i.hq
  %i.hs = fadd float %i.hp, %i.hr
  %i.ht = fmul float %i.hk, %i.hk
  %i.hu = fadd float %i.ht, %i.hs
  %i.hv = fmul float %i.hc, %i.hc
  %i.hw = fdiv float %i.hu, %i.hv
  %i.hx = fadd float %i.hl, %i.hn
  %i.hy = fadd float %i.hx, %i.hq
  %i.hz = fadd float %i.hk, %i.hy
  %i.ia = fdiv float %i.hz, %i.hc                 ; 3 uses
  %i.ib = fpext float %i.hw to double
  %i.ic = fmul double %i.ib, 5.000000e-01
  %i.id = fmul float %i.ia, %i.ia
  %i.ie = fpext float %i.id to double
  %i.if = fmul double %i.ie, 6.250000e-02
  %i.ig = fsub double %i.ic, %i.if
  %i.ih = fptrunc double %i.ig to float
  %i.ii = fpext float %i.ia to double
  %i.ij = fmul double %i.ii, 2.500000e-01
  %i.ik = fadd double %i.ij, 1.000000e+00
  %i.il = fptrunc double %i.ik to float           ; 2 uses
  %i.im = fmul float %i.il, %i.il
  %i.in = fdiv float %i.ih, %i.im
  %i.io = fsub float %i.in, %15
  %i.ip = fdiv float %i.io, %i.fb
  %i.iq = fpext float %i.ip to double
  %i.ir = fadd double %i.iq, 1.000000e+00
  %i.is = fdiv double 1.000000e+00, %i.ir         ; 3 uses
  %i.it = fptrunc double %i.is to float
  store float %i.it, ptr %i.aa, align 4, !tbaa !8
  %i.iu = fcmp olt double %i.is, f0xB690000000000000
  br i1 %i.iu, label %.sink.split672, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.iv = fcmp ogt double %i.is, f0x3FF0000010000000
  br i1 %i.iv, label %.sink.split672, label %bb.j

.sink.split672:                                   ; preds = %bb.i, %bb.h
  %.sink673 = phi float [ 0.000000e+00, %bb.h ], [ 1.000000e+00, %bb.i ]
  store float %.sink673, ptr %i.aa, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split672, %bb.i
  %i.iw = load float, ptr %i.ab, align 4, !tbaa !8 ; 7 uses
  %i.ix = load float, ptr %i.ac, align 4, !tbaa !8
  %i.iy = fsub float %i.ix, %i.iw
  store float %i.iy, ptr %i.ad, align 4, !tbaa !8
  %i.iz = load float, ptr %i.ab, align 4, !tbaa !8
  %i.ja = fsub float %i.iz, %i.iw
  store float %i.ja, ptr %i.ae, align 4, !tbaa !8
  %i.jb = load float, ptr %i.af, align 4, !tbaa !8
  %i.jc = fsub float %i.jb, %i.iw
  store float %i.jc, ptr %i.ag, align 4, !tbaa !8
  %i.jd = load float, ptr %i.ab, align 4, !tbaa !8
  %i.je = fsub float %i.jd, %i.iw                 ; 4 uses
  store float %i.je, ptr %i.ah, align 4, !tbaa !8
  %i.jf = load float, ptr %i.ad, align 4, !tbaa !8 ; 3 uses
  %i.jg = fmul float %i.jf, %i.jf
  %i.jh = load float, ptr %i.ae, align 4, !tbaa !8 ; 3 uses
  %i.ji = fmul float %i.jh, %i.jh
  %i.jj = fadd float %i.jg, %i.ji
  %i.jk = load float, ptr %i.ag, align 4, !tbaa !8 ; 3 uses
  %i.jl = fmul float %i.jk, %i.jk
  %i.jm = fadd float %i.jj, %i.jl
  %i.jn = fmul float %i.je, %i.je
  %i.jo = fadd float %i.jn, %i.jm
  %i.jp = fmul float %i.iw, %i.iw
  %i.jq = fdiv float %i.jo, %i.jp
  %i.jr = fadd float %i.jf, %i.jh
  %i.js = fadd float %i.jr, %i.jk
  %i.jt = fadd float %i.je, %i.js
  %i.ju = fdiv float %i.jt, %i.iw                 ; 3 uses
  %i.jv = fpext float %i.jq to double
  %i.jw = fmul double %i.jv, 5.000000e-01
  %i.jx = fmul float %i.ju, %i.ju
  %i.jy = fpext float %i.jx to double
  %i.jz = fmul double %i.jy, 6.250000e-02
  %i.ka = fsub double %i.jw, %i.jz
  %i.kb = fptrunc double %i.ka to float
  %i.kc = fpext float %i.ju to double
  %i.kd = fmul double %i.kc, 2.500000e-01
  %i.ke = fadd double %i.kd, 1.000000e+00
  %i.kf = fptrunc double %i.ke to float           ; 2 uses
  %i.kg = fmul float %i.kf, %i.kf
  %i.kh = fdiv float %i.kb, %i.kg
  %i.ki = fsub float %i.kh, %15
  %i.kj = fdiv float %i.ki, %i.fb
  %i.kk = fpext float %i.kj to double
  %i.kl = fadd double %i.kk, 1.000000e+00
  %i.km = fdiv double 1.000000e+00, %i.kl         ; 3 uses
  %i.kn = fptrunc double %i.km to float
  store float %i.kn, ptr %i.ai, align 4, !tbaa !8
  %i.ko = fcmp olt double %i.km, f0xB690000000000000
  br i1 %i.ko, label %.sink.split674, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.kp = fcmp ogt double %i.km, f0x3FF0000010000000
  br i1 %i.kp, label %.sink.split674, label %.preheader621.preheader

.sink.split674:                                   ; preds = %bb.k, %bb.j
  %.sink675 = phi float [ 0.000000e+00, %bb.j ], [ 1.000000e+00, %bb.k ]
  store float %.sink675, ptr %i.ai, align 4, !tbaa !8
  br label %.preheader621.preheader

.preheader621.preheader:                          ; preds = %.sink.split674, %bb.k
  %broadcast.splat = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert819 = insertelement <4 x float> poison, float %i.fb, i64 0
  %broadcast.splat820 = shufflevector <4 x float> %broadcast.splatinsert819, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader621

.preheader621:                                    ; preds = %.preheader621.preheader, %bb.l
  %indvars.iv647 = phi i64 [ %indvars.iv.next648, %bb.l ], [ 1, %.preheader621.preheader ] ; 7 uses
  %i.kq = getelementptr inbounds nuw [4096 x i8], ptr %5, i64 %indvars.iv647 ; 6 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 -4096  ; 2 uses
  %i.ks = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %indvars.iv647 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 4096 ; 2 uses
  %i.ku = getelementptr inbounds nuw [4096 x i8], ptr %1, i64 %indvars.iv647 ; 2 uses
  %i.kv = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv647 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4096 x i8], ptr %3, i64 %indvars.iv647 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4096 x i8], ptr %6, i64 %indvars.iv647 ; 5 uses
  br i1 %op.rdx843, label %scalar.ph817.preheader, label %vector.body821

scalar.ph817.preheader:                           ; preds = %pred.store.continue836, %.preheader621
  %indvars.iv643.ph = phi i64 [ 1, %.preheader621 ], [ 1021, %pred.store.continue836 ]
  br label %scalar.ph817

vector.body821:                                   ; preds = %.preheader621, %pred.store.continue836
  %index822 = phi i64 [ %index.next837, %pred.store.continue836 ], [ 0, %.preheader621 ] ; 6 uses
  %i.ky = or disjoint i64 %index822, 1            ; 8 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ky ; 2 uses
  %wide.load823 = load <4 x float>, ptr %i.kz, align 4, !tbaa !8, !alias.scope !13 ; 7 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ky
  %wide.load824 = load <4 x float>, ptr %i.la, align 4, !tbaa !8, !alias.scope !13
  %i.lb = fsub <4 x float> %wide.load824, %wide.load823
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.ky ; 2 uses
  store <4 x float> %i.lb, ptr %i.lc, align 4, !tbaa !8, !alias.scope !16, !noalias !18
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.ky
  %wide.load825 = load <4 x float>, ptr %i.ld, align 4, !tbaa !8, !alias.scope !13
  %i.le = fsub <4 x float> %wide.load825, %wide.load823
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.ky ; 2 uses
  store <4 x float> %i.le, ptr %i.lf, align 4, !tbaa !8, !alias.scope !23, !noalias !24
  %i.lg = getelementptr i8, ptr %i.kz, i64 -4
  %wide.load826 = load <4 x float>, ptr %i.lg, align 4, !tbaa !8, !alias.scope !13
  %i.lh = fsub <4 x float> %wide.load826, %wide.load823
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.ky ; 2 uses
  store <4 x float> %i.lh, ptr %i.li, align 4, !tbaa !8, !alias.scope !25, !noalias !26
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %index822
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %wide.load827 = load <4 x float>, ptr %i.lk, align 4, !tbaa !8, !alias.scope !13
  %i.ll = fsub <4 x float> %wide.load827, %wide.load823 ; 4 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ky
  store <4 x float> %i.ll, ptr %i.lm, align 4, !tbaa !8, !alias.scope !27, !noalias !28
  %wide.load828 = load <4 x float>, ptr %i.lc, align 4, !tbaa !8, !alias.scope !16, !noalias !18 ; 3 uses
  %i.ln = fmul <4 x float> %wide.load828, %wide.load828
  %wide.load829 = load <4 x float>, ptr %i.lf, align 4, !tbaa !8, !alias.scope !23, !noalias !24 ; 3 uses
  %i.lo = fmul <4 x float> %wide.load829, %wide.load829
  %i.lp = fadd <4 x float> %i.ln, %i.lo
  %wide.load830 = load <4 x float>, ptr %i.li, align 4, !tbaa !8, !alias.scope !25, !noalias !26 ; 3 uses
  %i.lq = fmul <4 x float> %wide.load830, %wide.load830
  %i.lr = fadd <4 x float> %i.lp, %i.lq
  %i.ls = fmul <4 x float> %i.ll, %i.ll
  %i.lt = fadd <4 x float> %i.ls, %i.lr
  %i.lu = fmul <4 x float> %wide.load823, %wide.load823
  %i.lv = fdiv <4 x float> %i.lt, %i.lu
  %i.lw = fadd <4 x float> %wide.load828, %wide.load829
  %i.lx = fadd <4 x float> %i.lw, %wide.load830
  %i.ly = fadd <4 x float> %i.ll, %i.lx
  %i.lz = fdiv <4 x float> %i.ly, %wide.load823   ; 3 uses
  %i.ma = fpext <4 x float> %i.lv to <4 x double>
  %i.mb = fmul <4 x double> %i.ma, splat (double 5.000000e-01)
  %i.mc = fmul <4 x float> %i.lz, %i.lz
  %i.md = fpext <4 x float> %i.mc to <4 x double>
  %i.me = fmul <4 x double> %i.md, splat (double 6.250000e-02)
  %i.mf = fsub <4 x double> %i.mb, %i.me
  %i.mg = fptrunc <4 x double> %i.mf to <4 x float>
  %i.mh = fpext <4 x float> %i.lz to <4 x double>
  %i.mi = fmul <4 x double> %i.mh, splat (double 2.500000e-01)
  %i.mj = fadd <4 x double> %i.mi, splat (double 1.000000e+00)
  %i.mk = fptrunc <4 x double> %i.mj to <4 x float> ; 2 uses
  %i.ml = fmul <4 x float> %i.mk, %i.mk
  %i.mm = fdiv <4 x float> %i.mg, %i.ml
  %i.mn = fsub <4 x float> %i.mm, %broadcast.splat
  %i.mo = fdiv <4 x float> %i.mn, %broadcast.splat820
  %i.mp = fpext <4 x float> %i.mo to <4 x double>
  %i.mq = fadd <4 x double> %i.mp, splat (double 1.000000e+00)
  %i.mr = fdiv <4 x double> splat (double 1.000000e+00), %i.mq ; 3 uses
  %i.ms = fptrunc <4 x double> %i.mr to <4 x float>
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ky ; 2 uses
  store <4 x float> %i.ms, ptr %i.mt, align 4, !tbaa !8, !alias.scope !29, !noalias !13
  %i.mu = fcmp olt <4 x double> %i.mr, splat (double f0xB690000000000000) ; 2 uses
  %i.mv = fcmp ogt <4 x double> %i.mr, splat (double f0x3FF0000010000000)
  %i.mw = or <4 x i1> %i.mv, %i.mu                ; 4 uses
  %predphi = select <4 x i1> %i.mu, <4 x float> zeroinitializer, <4 x float> splat (float 1.000000e+00) ; 4 uses
  %i.mx = extractelement <4 x i1> %i.mw, i64 0
  br i1 %i.mx, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body821
  %i.my = extractelement <4 x float> %predphi, i64 0
  store float %i.my, ptr %i.mt, align 4, !tbaa !8, !alias.scope !29, !noalias !13
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body821
  %i.mz = extractelement <4 x i1> %i.mw, i64 1
  br i1 %i.mz, label %pred.store.if831, label %pred.store.continue832

pred.store.if831:                                 ; preds = %pred.store.continue
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %index822
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = extractelement <4 x float> %predphi, i64 1
  store float %i.nc, ptr %i.nb, align 4, !tbaa !8, !alias.scope !29, !noalias !13
  br label %pred.store.continue832

pred.store.continue832:                           ; preds = %pred.store.if831, %pred.store.continue
  %i.nd = extractelement <4 x i1> %i.mw, i64 2
  br i1 %i.nd, label %pred.store.if833, label %pred.store.continue834

pred.store.if833:                                 ; preds = %pred.store.continue832
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %index822
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 12
  %i.ng = extractelement <4 x float> %predphi, i64 2
  store float %i.ng, ptr %i.nf, align 4, !tbaa !8, !alias.scope !29, !noalias !13
  br label %pred.store.continue834

pred.store.continue834:                           ; preds = %pred.store.if833, %pred.store.continue832
  %i.nh = extractelement <4 x i1> %i.mw, i64 3
  br i1 %i.nh, label %pred.store.if835, label %pred.store.continue836

pred.store.if835:                                 ; preds = %pred.store.continue834
  %i.ni = getelementptr [4 x i8], ptr %i.kx, i64 %index822
  %i.nj = getelementptr i8, ptr %i.ni, i64 16
  %i.nk = extractelement <4 x float> %predphi, i64 3
  store float %i.nk, ptr %i.nj, align 4, !tbaa !8, !alias.scope !29, !noalias !13
  br label %pred.store.continue836

pred.store.continue836:                           ; preds = %pred.store.if835, %pred.store.continue834
  %index.next837 = add nuw i64 %index822, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next837, 1020
  br i1 %i.nl, label %scalar.ph817.preheader, label %vector.body821, !llvm.loop !30

bb.l:                                             ; preds = %bb.n
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1 ; 2 uses
  %exitcond650.not = icmp eq i64 %indvars.iv.next648, 2047
  br i1 %exitcond650.not, label %vector.memcheck705, label %.preheader621, !llvm.loop !33

vector.memcheck705:                               ; preds = %bb.l
  br i1 %op.rdx840, label %.preheader623.preheader, label %vector.body733

.preheader623.preheader:                          ; preds = %vector.body733, %vector.memcheck705
  %indvars.iv651.ph = phi i64 [ 0, %vector.memcheck705 ], [ 1020, %vector.body733 ]
  br label %.preheader623

vector.body733:                                   ; preds = %vector.memcheck705, %vector.body733
  %index734 = phi i64 [ %index.next742, %vector.body733 ], [ 0, %vector.memcheck705 ] ; 8 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index734
  %wide.load735 = load <4 x float>, ptr %i.nm, align 4, !tbaa !8, !alias.scope !34 ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index734
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %wide.load736 = load <4 x float>, ptr %i.no, align 4, !tbaa !8, !alias.scope !34
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index734
  %wide.load737 = load <4 x float>, ptr %i.np, align 4, !tbaa !8, !alias.scope !37
  %i.nq = fmul <4 x float> %wide.load735, %wide.load737
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index734
  %wide.load738 = load <4 x float>, ptr %i.nr, align 4, !tbaa !8, !alias.scope !39
  %i.ns = fmul <4 x float> %wide.load735, %wide.load738
  %i.nt = fadd <4 x float> %i.nq, %i.ns
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index734
  %wide.load739 = load <4 x float>, ptr %i.nu, align 4, !tbaa !8, !alias.scope !41
  %i.nv = fmul <4 x float> %wide.load735, %wide.load739
  %i.nw = fadd <4 x float> %i.nt, %i.nv
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index734
  %wide.load740 = load <4 x float>, ptr %i.nx, align 4, !tbaa !8, !alias.scope !43
  %i.ny = fmul <4 x float> %wide.load736, %wide.load740
  %i.nz = fadd <4 x float> %i.nw, %i.ny
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index734 ; 2 uses
  %wide.load741 = load <4 x float>, ptr %i.oa, align 4, !tbaa !8, !alias.scope !45, !noalias !47
  %i.ob = fpext <4 x float> %wide.load741 to <4 x double>
  %i.oc = fpext <4 x float> %i.nz to <4 x double>
  %i.od = fmul <4 x double> %i.oc, splat (double 1.250000e-01)
  %i.oe = fadd <4 x double> %i.od, %i.ob
  %i.of = fptrunc <4 x double> %i.oe to <4 x float>
  store <4 x float> %i.of, ptr %i.oa, align 4, !tbaa !8, !alias.scope !45, !noalias !47
  %index.next742 = add nuw i64 %index734, 4       ; 2 uses
  %i.og = icmp eq i64 %index.next742, 1020
  br i1 %i.og, label %.preheader623.preheader, label %vector.body733, !llvm.loop !48

scalar.ph817:                                     ; preds = %scalar.ph817.preheader, %bb.n
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %bb.n ], [ %indvars.iv643.ph, %scalar.ph817.preheader ] ; 9 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv643 ; 2 uses
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !8 ; 7 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv643
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !8
  %i.ol = fsub float %i.ok, %i.oi
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv643 ; 2 uses
  store float %i.ol, ptr %i.om, align 4, !tbaa !8
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv643
  %i.oo = load float, ptr %i.on, align 4, !tbaa !8
  %i.op = fsub float %i.oo, %i.oi
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv643 ; 2 uses
  store float %i.op, ptr %i.oq, align 4, !tbaa !8
  %i.or = getelementptr i8, ptr %i.oh, i64 -4
  %i.os = load float, ptr %i.or, align 4, !tbaa !8
  %i.ot = fsub float %i.os, %i.oi
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv643 ; 2 uses
  store float %i.ot, ptr %i.ou, align 4, !tbaa !8
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 3 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.next644
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !8
  %i.ox = fsub float %i.ow, %i.oi                 ; 4 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv643
  store float %i.ox, ptr %i.oy, align 4, !tbaa !8
  %i.oz = load float, ptr %i.om, align 4, !tbaa !8 ; 3 uses
  %i.pa = fmul float %i.oz, %i.oz
  %i.pb = load float, ptr %i.oq, align 4, !tbaa !8 ; 3 uses
  %i.pc = fmul float %i.pb, %i.pb
  %i.pd = fadd float %i.pa, %i.pc
  %i.pe = load float, ptr %i.ou, align 4, !tbaa !8 ; 3 uses
  %i.pf = fmul float %i.pe, %i.pe
  %i.pg = fadd float %i.pd, %i.pf
  %i.ph = fmul float %i.ox, %i.ox
  %i.pi = fadd float %i.ph, %i.pg
  %i.pj = fmul float %i.oi, %i.oi
  %i.pk = fdiv float %i.pi, %i.pj
  %i.pl = fadd float %i.oz, %i.pb
  %i.pm = fadd float %i.pl, %i.pe
  %i.pn = fadd float %i.ox, %i.pm
  %i.po = fdiv float %i.pn, %i.oi                 ; 3 uses
  %i.pp = fpext float %i.pk to double
  %i.pq = fmul double %i.pp, 5.000000e-01
  %i.pr = fmul float %i.po, %i.po
  %i.ps = fpext float %i.pr to double
  %i.pt = fmul double %i.ps, 6.250000e-02
  %i.pu = fsub double %i.pq, %i.pt
  %i.pv = fptrunc double %i.pu to float
  %i.pw = fpext float %i.po to double
  %i.px = fmul double %i.pw, 2.500000e-01
  %i.py = fadd double %i.px, 1.000000e+00
  %i.pz = fptrunc double %i.py to float           ; 2 uses
  %i.qa = fmul float %i.pz, %i.pz
  %i.qb = fdiv float %i.pv, %i.qa
  %i.qc = fsub float %i.qb, %15
  %i.qd = fdiv float %i.qc, %i.fb
  %i.qe = fpext float %i.qd to double
  %i.qf = fadd double %i.qe, 1.000000e+00
  %i.qg = fdiv double 1.000000e+00, %i.qf         ; 3 uses
  %i.qh = fptrunc double %i.qg to float
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv643 ; 2 uses
  store float %i.qh, ptr %i.qi, align 4, !tbaa !8
  %i.qj = fcmp olt double %i.qg, f0xB690000000000000
  br i1 %i.qj, label %.sink.split676, label %bb.m

bb.m:                                             ; preds = %scalar.ph817
  %i.qk = fcmp ogt double %i.qg, f0x3FF0000010000000
  br i1 %i.qk, label %.sink.split676, label %bb.n

.sink.split676:                                   ; preds = %bb.m, %scalar.ph817
  %.sink677 = phi float [ 0.000000e+00, %scalar.ph817 ], [ 1.000000e+00, %bb.m ]
  store float %.sink677, ptr %i.qi, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %.sink.split676, %bb.m
  %exitcond646.not = icmp eq i64 %indvars.iv.next644, 1023
  br i1 %exitcond646.not, label %bb.l, label %scalar.ph817, !llvm.loop !49

bb.o:                                             ; preds = %.preheader623
  %i.ql = load float, ptr %i.ai, align 4, !tbaa !8 ; 4 uses
  %i.qm = load float, ptr %i.ad, align 4, !tbaa !8
  %i.qn = fmul float %i.ql, %i.qm
  %i.qo = load float, ptr %i.ae, align 4, !tbaa !8
  %i.qp = fmul float %i.ql, %i.qo
  %i.qq = fadd float %i.qn, %i.qp
  %i.qr = load float, ptr %i.ag, align 4, !tbaa !8
  %i.qs = fmul float %i.ql, %i.qr
  %i.qt = fadd float %i.qq, %i.qs
  %i.qu = load float, ptr %i.ah, align 4, !tbaa !8
  %i.qv = fmul float %i.ql, %i.qu
  %i.qw = fadd float %i.qt, %i.qv
  %i.qx = load float, ptr %i.ab, align 4, !tbaa !8
  %i.qy = fpext float %i.qx to double
  %i.qz = fpext float %i.qw to double
  %i.ra = fmul double %i.qz, 1.250000e-01
  %i.rb = fadd double %i.ra, %i.qy
  %i.rc = fptrunc double %i.rb to float
  store float %i.rc, ptr %i.ab, align 4, !tbaa !8
  br label %.preheader

.preheader623:                                    ; preds = %.preheader623.preheader, %.preheader623
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %.preheader623 ], [ %indvars.iv651.ph, %.preheader623.preheader ] ; 7 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv651
  %i.re = load float, ptr %i.rd, align 4, !tbaa !8 ; 3 uses
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 3 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next652
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !8
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv651
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !8
  %i.rj = fmul float %i.re, %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv651
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !8
  %i.rm = fmul float %i.re, %i.rl
  %i.rn = fadd float %i.rj, %i.rm
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv651
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !8
  %i.rq = fmul float %i.re, %i.rp
  %i.rr = fadd float %i.rn, %i.rq
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv651
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !8
  %i.ru = fmul float %i.rg, %i.rt
  %i.rv = fadd float %i.rr, %i.ru
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv651 ; 2 uses
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !8
  %i.ry = fpext float %i.rx to double
  %i.rz = fpext float %i.rv to double
  %i.sa = fmul double %i.rz, 1.250000e-01
  %i.sb = fadd double %i.sa, %i.ry
  %i.sc = fptrunc double %i.sb to float
  store float %i.sc, ptr %i.rw, align 4, !tbaa !8
  %exitcond654.not = icmp eq i64 %indvars.iv.next652, 1023
  br i1 %exitcond654.not, label %bb.o, label %.preheader623, !llvm.loop !50

.preheader:                                       ; preds = %bb.o, %bb.q
  %indvars.iv659 = phi i64 [ 0, %bb.o ], [ %indvars.iv.next660, %bb.q ] ; 7 uses
  %i.sd = getelementptr inbounds nuw [4096 x i8], ptr %6, i64 %indvars.iv659 ; 5 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 4096 ; 2 uses
  %i.sf = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %indvars.iv659 ; 2 uses
  %i.sg = getelementptr inbounds nuw [4096 x i8], ptr %1, i64 %indvars.iv659 ; 2 uses
  %i.sh = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv659 ; 2 uses
  %i.si = getelementptr inbounds nuw [4096 x i8], ptr %3, i64 %indvars.iv659 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4096 x i8], ptr %5, i64 %indvars.iv659 ; 2 uses
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %indvars.iv655.ph = phi i64 [ 0, %.preheader ], [ 1020, %vector.body ]
  br label %scalar.ph

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 9 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %index
  %wide.load = load <4 x float>, ptr %i.sk, align 4, !tbaa !8, !alias.scope !51 ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %index
  %wide.load698 = load <4 x float>, ptr %i.sl, align 4, !tbaa !8, !alias.scope !51
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %index
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %wide.load699 = load <4 x float>, ptr %i.sn, align 4, !tbaa !8, !alias.scope !51
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %index
  %wide.load700 = load <4 x float>, ptr %i.so, align 4, !tbaa !8, !alias.scope !54
  %i.sp = fmul <4 x float> %wide.load, %wide.load700
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %index
  %wide.load701 = load <4 x float>, ptr %i.sq, align 4, !tbaa !8, !alias.scope !56
  %i.sr = fmul <4 x float> %wide.load698, %wide.load701
  %i.ss = fadd <4 x float> %i.sp, %i.sr
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %index
  %wide.load702 = load <4 x float>, ptr %i.st, align 4, !tbaa !8, !alias.scope !58
  %i.su = fmul <4 x float> %wide.load, %wide.load702
  %i.sv = fadd <4 x float> %i.ss, %i.su
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %index
  %wide.load703 = load <4 x float>, ptr %i.sw, align 4, !tbaa !8, !alias.scope !60
  %i.sx = fmul <4 x float> %wide.load699, %wide.load703
  %i.sy = fadd <4 x float> %i.sv, %i.sx
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %index ; 2 uses
  %wide.load704 = load <4 x float>, ptr %i.sz, align 4, !tbaa !8, !alias.scope !62, !noalias !64
  %i.ta = fpext <4 x float> %wide.load704 to <4 x double>
  %i.tb = fpext <4 x float> %i.sy to <4 x double>
  %i.tc = fmul <4 x double> %i.tb, splat (double 1.250000e-01)
  %i.td = fadd <4 x double> %i.tc, %i.ta
  %i.te = fptrunc <4 x double> %i.td to <4 x float>
  store <4 x float> %i.te, ptr %i.sz, align 4, !tbaa !8, !alias.scope !62, !noalias !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tf = icmp eq i64 %index.next, 1020
  br i1 %i.tf, label %scalar.ph.preheader, label %vector.body, !llvm.loop !65

bb.p:                                             ; preds = %bb.q
  %i.tg = add nuw nsw i32 %.0607636, 1            ; 2 uses
  %exitcond663.not = icmp eq i32 %i.tg, 10
  br i1 %exitcond663.not, label %bb.r, label %.preheader624, !llvm.loop !66

bb.q:                                             ; preds = %scalar.ph
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %indvars.iv.next660, 2047
  br i1 %exitcond662.not, label %bb.p, label %.preheader, !llvm.loop !67

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv655 = phi i64 [ %indvars.iv.next656, %scalar.ph ], [ %indvars.iv655.ph, %scalar.ph.preheader ] ; 8 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv655
  %i.ti = load float, ptr %i.th, align 4, !tbaa !8 ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv655
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !8
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 3 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next656
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !8
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %indvars.iv655
  %i.to = load float, ptr %i.tn, align 4, !tbaa !8
  %i.tp = fmul float %i.ti, %i.to
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %indvars.iv655
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !8
  %i.ts = fmul float %i.tk, %i.tr
  %i.tt = fadd float %i.tp, %i.ts
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv655
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !8
  %i.tw = fmul float %i.ti, %i.tv
  %i.tx = fadd float %i.tt, %i.tw
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv655
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !8
  %i.ua = fmul float %i.tm, %i.tz
  %i.ub = fadd float %i.tx, %i.ua
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv655 ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !8
  %i.ue = fpext float %i.ud to double
  %i.uf = fpext float %i.ub to double
  %i.ug = fmul double %i.uf, 1.250000e-01
  %i.uh = fadd double %i.ug, %i.ue
  %i.ui = fptrunc double %i.uh to float
  store float %i.ui, ptr %i.uc, align 4, !tbaa !8
  %exitcond658.not = icmp eq i64 %indvars.iv.next656, 1023
  br i1 %exitcond658.not, label %bb.q, label %scalar.ph, !llvm.loop !68

bb.r:                                             ; preds = %bb.p
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
end_hunk_0
