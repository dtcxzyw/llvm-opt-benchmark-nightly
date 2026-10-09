Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @nlmeans_denoise(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !37 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !38 ; 4 uses
  %i.e = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.b ; 2 uses
  %i.f = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.d ; 3 uses
  %i.g = fcmp reassoc nsz arcp contract afn oeq float %i.b, 1.000000e+00
  %i.h = fcmp reassoc nsz arcp contract afn oeq float %i.d, 1.000000e+00
  %spec.select448 = select i1 %i.g, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = shl nsw i32 %i.l, 1
  %i.n = or disjoint i32 %i.m, 1
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to float ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42
  %i.r = shl i32 %i.q, 2                          ; 4 uses
  %i.s = sext i32 %i.r to i64                     ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !44
  %i.x = load float, ptr %4, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !46
  %.not.i = icmp ne i32 %i.z, 0                   ; 2 uses
  %i.aa = shl nsw i32 %i.u, 1
  %i.ab = or disjoint i32 %i.aa, 1                ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.ab                ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 1
  %i.ae = lshr exact i32 %i.ad, 1
  %.060.i = select i1 %.not.i, i32 %i.ae, i32 %i.ac
  %i.af = zext nneg i32 %.060.i to i64            ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call ptr @dt_alloc_aligned(i64 noundef %i.ag) #9 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = sub nsw i32 0, %i.u                     ; 2 uses
  %.not7284.i = icmp slt i32 %i.u, 0
  br i1 %.not7284.i, label %define_patches.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.aj = zext i1 %.not.i to i32
  %i.ak = fpext reassoc nsz arcp contract afn float %i.w to double ; 2 uses
  %i.al = fpext reassoc nsz arcp contract afn float %i.x to double
  %i.am = fmul reassoc nsz arcp contract afn double %i.al, f0x3FC5555555555555 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.05588.i = phi i32 [ %i.ai, %.preheader.lr.ph.i ], [ %i.az, %._crit_edge.i ] ; 7 uses
  %.05786.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.259.i, %._crit_edge.i ]
  %.06185.i = phi i32 [ %i.aj, %.preheader.lr.ph.i ], [ %.364.i, %._crit_edge.i ]
  %i.an = tail call i32 @llvm.abs.i32(i32 range(i32 -2147483647, -2147483648) %.05588.i, i1 true) ; 2 uses
  %i.ao = mul i32 %.05588.i, %.05588.i
  %i.ap = mul nsw i32 %i.ao, %i.an
  %i.aq = uitofp nneg i32 %i.ap to double
  %i.ar = uitofp nneg i32 %i.an to double         ; 2 uses
  %i.as = fmul reassoc nnan nsz arcp contract afn double %i.ar, 7.000000e+00
  %i.at = tail call range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 range(i32 -2147483647, -2147483648) %.05588.i, i32 0)
  %i.au = sitofp reassoc nsz arcp contract afn i32 %i.at to double
  %i.av = fmul reassoc nsz arcp contract afn double %i.am, %i.au
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %.05588.i to double
  %i.ax = tail call fast double @llvm.sqrt.f64(double %i.ar)
  %i.ay = fmul reassoc nnan nsz arcp contract afn double %i.ax, 7.000000e+00
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.e
  %i.az = add i32 %.05588.i, 1
  %exitcond91.not.i = icmp eq i32 %.05588.i, %i.u
  br i1 %exitcond91.not.i, label %define_patches.exit, label %.preheader.i

bb.b:                                             ; preds = %bb.e, %.preheader.i
  %.081.i = phi i32 [ %i.ai, %.preheader.i ], [ %i.ci, %bb.e ] ; 7 uses
  %.15879.i = phi i32 [ %.05786.i, %.preheader.i ], [ %.259.i, %bb.e ] ; 3 uses
  %.16278.i = phi i32 [ %.06185.i, %.preheader.i ], [ %.364.i, %bb.e ] ; 3 uses
  %.not74.i = icmp eq i32 %.16278.i, 0
  br i1 %.not74.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ba = add nsw i32 %.16278.i, 1                ; 2 uses
  %i.bb = and i32 %.16278.i, 1
  %.not75.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not75.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.263.i = phi i32 [ %i.ba, %bb.c ], [ 0, %bb.b ]
  %i.bc = tail call i32 @llvm.abs.i32(i32 range(i32 -2147483647, -2147483648) %.081.i, i1 true) ; 2 uses
  %i.bd = uitofp nneg i32 %i.bc to double         ; 2 uses
  %i.be = tail call fast double @llvm.sqrt.f64(double %i.bd)
  %i.bf = fmul reassoc nsz arcp contract afn double %i.as, %i.be
  %i.bg = fadd reassoc nsz arcp contract afn double %i.bf, %i.aq
  %i.bh = fmul reassoc nsz arcp contract afn double %i.av, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn double %i.bh, %i.aw
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bi, %i.ak
  %i.bk = fptosi double %i.bj to i32              ; 2 uses
  %i.bl = mul i32 %.081.i, %.081.i
  %i.bm = mul nsw i32 %i.bl, %i.bc
  %i.bn = uitofp nneg i32 %i.bm to double
  %i.bo = fmul reassoc nsz arcp contract afn double %i.ay, %i.bd
  %i.bp = fadd reassoc nsz arcp contract afn double %i.bo, %i.bn
  %i.bq = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 range(i32 -2147483647, -2147483648) %.081.i, i32 0)
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to double
  %i.bs = fmul reassoc nsz arcp contract afn double %i.am, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn double %i.bs, %i.bp
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %.081.i to double
  %i.bv = fadd reassoc nsz arcp contract afn double %i.bt, %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn double %i.bv, %i.ak
  %i.bx = fptosi double %i.bw to i32              ; 2 uses
  %i.by = trunc i32 %i.bk to i16
  %i.bz = sext i32 %.15879.i to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bz ; 3 uses
  store i16 %i.by, ptr %i.ca, align 8, !tbaa !49
  %i.cb = trunc i32 %i.bx to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !50
  %i.cd = mul nsw i32 %i.r, %i.bk
  %i.ce = shl nsw i32 %i.bx, 2
  %i.cf = add nsw i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !51
  %i.ch = add nsw i32 %.15879.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.364.i = phi i32 [ %i.ba, %bb.c ], [ %.263.i, %bb.d ] ; 2 uses
  %.259.i = phi i32 [ %.15879.i, %bb.c ], [ %i.ch, %bb.d ] ; 2 uses
  %i.ci = add i32 %.081.i, 1
  %exitcond.not.i = icmp eq i32 %.081.i, %i.u
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

define_patches.exit:                              ; preds = %._crit_edge.i, %bb.a
  %i.cj = load i32, ptr %i.k, align 8, !tbaa !40  ; 18 uses
  %i.ck = shl nsw i32 %i.cj, 1
  %i.cl = add nsw i32 %i.ck, 121
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i64 %i.cm, 2
  %i.co = add nsw i64 %i.cn, 60
  %i.cp = and i64 %i.co, -64
  %i.cq = tail call ptr @dt_alloc_aligned(i64 noundef %i.cp) #9 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cq, i64 64) ]
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !52 ; 22 uses
  %i.ct = srem i32 %i.cs, 60                      ; 3 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %compute_slice_height.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %define_patches.exit
  %i.cv = srem i32 %i.cs, 61                      ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %compute_slice_height.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.preheader.i
  %i.cx = srem i32 %i.cs, 59                      ; 3 uses
  %.not.i441 = icmp eq i32 %i.cx, 0
  br i1 %.not.i441, label %compute_slice_height.exit, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.f
  %spec.select.i442 = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.ct) ; 2 uses
  %spec.select44.i = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 %spec.select.i442) ; 2 uses
  %i.cy = srem i32 %i.cs, 62                      ; 3 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %compute_slice_height.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.1.i
  %i.da = srem i32 %i.cs, 58                      ; 3 uses
  %.not.1.i = icmp eq i32 %i.da, 0
  br i1 %.not.1.i, label %compute_slice_height.exit, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.g
  %spec.select.1.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %spec.select44.i) ; 2 uses
  %spec.select44.1.i = tail call i32 @llvm.smax.i32(i32 %i.da, i32 %spec.select.1.i) ; 2 uses
  %i.db = srem i32 %i.cs, 63                      ; 3 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %compute_slice_height.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.2.i
  %i.dd = srem i32 %i.cs, 57                      ; 3 uses
  %.not.2.i = icmp eq i32 %i.dd, 0
  br i1 %.not.2.i, label %compute_slice_height.exit, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.h
  %spec.select.2.i = tail call i32 @llvm.smax.i32(i32 %i.db, i32 %spec.select44.1.i) ; 2 uses
  %spec.select44.2.i = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 %spec.select.2.i) ; 2 uses
  %i.de = srem i32 %i.cs, 64                      ; 3 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %compute_slice_height.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.3.i
  %i.dg = srem i32 %i.cs, 56                      ; 3 uses
  %.not.3.i = icmp eq i32 %i.dg, 0
  br i1 %.not.3.i, label %compute_slice_height.exit, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.i
  %spec.select.3.i = tail call i32 @llvm.smax.i32(i32 %i.de, i32 %spec.select44.2.i) ; 2 uses
  %spec.select44.3.i = tail call i32 @llvm.smax.i32(i32 %i.dg, i32 %spec.select.3.i) ; 2 uses
  %i.dh = srem i32 %i.cs, 65                      ; 3 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %compute_slice_height.exit, label %bb.j

bb.j:                                             ; preds = %.preheader.4.i
  %i.dj = srem i32 %i.cs, 55                      ; 3 uses
  %.not.4.i = icmp eq i32 %i.dj, 0
  br i1 %.not.4.i, label %compute_slice_height.exit, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.j
  %spec.select.4.i = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 %spec.select44.3.i) ; 2 uses
  %spec.select44.4.i = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 %spec.select.4.i) ; 2 uses
  %i.dk = srem i32 %i.cs, 66                      ; 3 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %compute_slice_height.exit, label %bb.k

bb.k:                                             ; preds = %.preheader.5.i
  %i.dm = srem i32 %i.cs, 54                      ; 3 uses
  %.not.5.i = icmp eq i32 %i.dm, 0
  br i1 %.not.5.i, label %compute_slice_height.exit, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %bb.k
  %spec.select.5.i = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 %spec.select44.4.i) ; 2 uses
  %spec.select44.5.i = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 %spec.select.5.i) ; 2 uses
  %i.dn = srem i32 %i.cs, 67                      ; 3 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %compute_slice_height.exit, label %bb.l

bb.l:                                             ; preds = %.preheader.6.i
  %i.dp = srem i32 %i.cs, 53                      ; 3 uses
  %.not.6.i = icmp eq i32 %i.dp, 0
  br i1 %.not.6.i, label %compute_slice_height.exit, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.l
  %spec.select.6.i = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 %spec.select44.5.i) ; 2 uses
  %spec.select44.6.i = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 %spec.select.6.i) ; 2 uses
  %i.dq = srem i32 %i.cs, 68                      ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %compute_slice_height.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.7.i
  %i.ds = srem i32 %i.cs, 52                      ; 3 uses
  %.not.7.i = icmp eq i32 %i.ds, 0
  br i1 %.not.7.i, label %compute_slice_height.exit, label %.preheader.8.i

.preheader.8.i:                                   ; preds = %bb.m
  %spec.select.7.i = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 %spec.select44.6.i) ; 2 uses
  %spec.select44.7.i = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 %spec.select.7.i) ; 2 uses
  %i.dt = srem i32 %i.cs, 69                      ; 3 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %compute_slice_height.exit, label %bb.n

bb.n:                                             ; preds = %.preheader.8.i
  %i.dv = srem i32 %i.cs, 51                      ; 2 uses
  %.not.8.i = icmp eq i32 %i.dv, 0
  br i1 %.not.8.i, label %compute_slice_height.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = icmp sgt i32 %i.dt, %spec.select44.7.i
  %i.dx = icmp sgt i32 %i.ds, %spec.select.7.i
  %i.dy = icmp sgt i32 %i.dq, %spec.select44.6.i
  %i.dz = icmp sgt i32 %i.dp, %spec.select.6.i
  %i.ea = icmp sgt i32 %i.dn, %spec.select44.5.i
  %i.eb = icmp sgt i32 %i.dm, %spec.select.5.i
  %i.ec = icmp sgt i32 %i.dk, %spec.select44.4.i
  %i.ed = icmp sgt i32 %i.dj, %spec.select.4.i
  %i.ee = icmp sgt i32 %i.dh, %spec.select44.3.i
  %i.ef = icmp sgt i32 %i.dg, %spec.select.3.i
  %i.eg = icmp sgt i32 %i.de, %spec.select44.2.i
  %i.eh = icmp sgt i32 %i.dd, %spec.select.2.i
  %i.ei = icmp sgt i32 %i.db, %spec.select44.1.i
  %i.ej = icmp sgt i32 %i.da, %spec.select.1.i
  %i.ek = icmp sgt i32 %i.cy, %spec.select44.i
  %i.el = icmp sgt i32 %i.cx, %spec.select.i442
  %i.em = icmp sgt i32 %i.cv, %i.ct
  %spec.select.8.i = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 %spec.select44.7.i)
  %i.en = icmp sgt i32 %i.dv, %spec.select.8.i
  %i.eo = select i1 %i.em, i32 61, i32 60
  %i.ep = select i1 %i.el, i32 59, i32 %i.eo
  %i.eq = select i1 %i.ek, i32 62, i32 %i.ep
  %i.er = select i1 %i.ej, i32 58, i32 %i.eq
  %i.es = select i1 %i.ei, i32 63, i32 %i.er
  %i.et = select i1 %i.eh, i32 57, i32 %i.es
  %i.eu = select i1 %i.eg, i32 64, i32 %i.et
  %i.ev = select i1 %i.ef, i32 56, i32 %i.eu
  %i.ew = select i1 %i.ee, i32 65, i32 %i.ev
  %i.ex = select i1 %i.ed, i32 55, i32 %i.ew
  %i.ey = select i1 %i.ec, i32 66, i32 %i.ex
  %i.ez = select i1 %i.eb, i32 54, i32 %i.ey
  %i.fa = select i1 %i.ea, i32 67, i32 %i.ez
  %i.fb = select i1 %i.dz, i32 53, i32 %i.fa
  %i.fc = select i1 %i.dy, i32 68, i32 %i.fb
  %i.fd = select i1 %i.dx, i32 52, i32 %i.fc
  %i.fe = select i1 %i.dw, i32 69, i32 %i.fd
  %i.ff = select i1 %i.en, i32 51, i32 %i.fe
  br label %compute_slice_height.exit

compute_slice_height.exit:                        ; preds = %define_patches.exit, %.preheader.preheader.i, %bb.f, %.preheader.1.i, %bb.g, %.preheader.2.i, %bb.h, %.preheader.3.i, %bb.i, %.preheader.4.i, %bb.j, %.preheader.5.i, %bb.k, %.preheader.6.i, %bb.l, %.preheader.7.i, %bb.m, %.preheader.8.i, %bb.n, %bb.o
  %.539.i = phi i32 [ 60, %define_patches.exit ], [ %i.ff, %bb.o ], [ 67, %.preheader.6.i ], [ 68, %.preheader.7.i ], [ 54, %bb.k ], [ 66, %.preheader.5.i ], [ 52, %bb.m ], [ 55, %bb.j ], [ 65, %.preheader.4.i ], [ 53, %bb.l ], [ 56, %bb.i ], [ 64, %.preheader.3.i ], [ 69, %.preheader.8.i ], [ 57, %bb.h ], [ 63, %.preheader.2.i ], [ 51, %bb.n ], [ 58, %bb.g ], [ 62, %.preheader.1.i ], [ 59, %bb.f ], [ 61, %.preheader.preheader.i ] ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !42 ; 6 uses
  %i.fi = srem i32 %i.fh, 72                      ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 36
  br i1 %i.fj, label %bb.p, label %compute_slice_width.exit

bb.p:                                             ; preds = %compute_slice_height.exit
  %i.fk = srem i32 %i.fh, 68                      ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, %i.fi
  br i1 %i.fl, label %bb.q, label %compute_slice_width.exit

bb.q:                                             ; preds = %bb.p
  %i.fm = icmp slt i32 %i.fk, 36
  %i.fn = srem i32 %i.fh, 64
  %i.fo = icmp sgt i32 %i.fn, %i.fk
  %or.cond.i = and i1 %i.fm, %i.fo
  %i.fp = select i1 %or.cond.i, i64 64, i64 68
  br label %compute_slice_width.exit

compute_slice_width.exit:                         ; preds = %compute_slice_height.exit, %bb.p, %bb.q
  %.0.i = phi i64 [ 72, %bb.p ], [ 72, %compute_slice_height.exit ], [ %i.fp, %bb.q ] ; 6 uses
  %i.fq = icmp sgt i32 %i.cs, 0
  br i1 %i.fq, label %.preheader475.lr.ph, label %._crit_edge525

.preheader475.lr.ph:                              ; preds = %compute_slice_width.exit
  %i.fr = fmul reassoc nnan nsz arcp contract afn float %i.o, %i.o
  %factor.op.fmul.reass = fmul reassoc nsz arcp contract afn float %i.fr, %i.j
  %i.fs = sext i32 %i.cj to i64                   ; 7 uses
  %i.ft = getelementptr [4 x i8], ptr %i.cq, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fw = xor i32 %i.cj, -1                       ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fy = add i32 %i.cj, 1                        ; 2 uses
  %i.fz = icmp sgt i32 %i.fh, 0
  br i1 %i.fz, label %.preheader475.preheader, label %.preheader475.us

.preheader475.preheader:                          ; preds = %.preheader475.lr.ph
  %i.ga = zext i32 %.539.i to i64                 ; 3 uses
  %i.gb = shl nuw nsw i64 %.0.i, 4
  %i.gc = shl i32 %.539.i, 2
  %i.gd = mul nsw i64 %i.s, %i.ga
  %i.ge = shl i64 %i.gd, 2
  %i.gf = shl nsw i64 %i.s, 2
  %i.gg = shl nsw i64 %i.s, 2
  %scevgep705.a = getelementptr i8, ptr %0, i64 -4
  %scevgep709 = getelementptr i8, ptr %0, i64 -4
  %i.gh = sub i32 0, %.539.i
  %i.gi = zext i32 %i.gh to i64
  %broadcast.splatinsert791 = insertelement <8 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat792 = shufflevector <8 x i64> %broadcast.splatinsert791, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert840 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat841 = shufflevector <4 x i64> %broadcast.splatinsert840, <4 x i64> poison, <4 x i32> zeroinitializer
  %stride.check719 = icmp slt i32 %i.r, 0
  %stride.check = icmp slt i32 %i.r, 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert674.a = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat675.a = shufflevector <4 x float> %broadcast.splatinsert674.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert676 = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat677 = shufflevector <4 x float> %broadcast.splatinsert676, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert678 = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat679 = shufflevector <4 x float> %broadcast.splatinsert678, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.d, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader475

.preheader475.us:                                 ; preds = %.preheader475.lr.ph, %.preheader475.us
  %.0409524.us = phi i32 [ %i.gl, %.preheader475.us ], [ 0, %.preheader475.lr.ph ]
  %i.gl = add nsw i32 %.0409524.us, %.539.i       ; 2 uses
  %i.gm = icmp slt i32 %i.gl, %i.cs
  br i1 %i.gm, label %.preheader475.us, label %._crit_edge525

.preheader475:                                    ; preds = %.preheader475.preheader, %._crit_edge522
  %indvar664 = phi i64 [ 0, %.preheader475.preheader ], [ %indvar.next665, %._crit_edge522 ] ; 4 uses
  %indvar656 = phi i32 [ 0, %.preheader475.preheader ], [ %indvar.next657, %._crit_edge522 ] ; 2 uses
  %i.gn = phi i32 [ %i.cs, %.preheader475.preheader ], [ %i.he, %._crit_edge522 ] ; 3 uses
  %i.go = phi i32 [ %i.fh, %.preheader475.preheader ], [ %i.hf, %._crit_edge522 ] ; 2 uses
  %i.gp = phi i32 [ %i.fh, %.preheader475.preheader ], [ %i.hg, %._crit_edge522 ] ; 3 uses
  %indvars.iv562 = phi i64 [ 0, %.preheader475.preheader ], [ %indvars.iv.next563, %._crit_edge522 ] ; 6 uses
  %indvars.iv = phi i32 [ %.539.i, %.preheader475.preheader ], [ %indvars.iv.next, %._crit_edge522 ] ; 2 uses
  %i.gq = mul i64 %indvar664, %i.gi               ; 2 uses
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = trunc i64 %i.gq to i32
  %i.gt = add i32 %i.gs, -1
  %i.gu = mul i32 %i.gc, %indvar656
  %i.gv = mul i64 %i.ge, %indvar664               ; 2 uses
  %i.gw = mul i64 %indvar664, %i.ga
  %i.gx = xor i64 %i.gw, -1
  %i.gy = add nuw i64 %indvars.iv562, 1
  %indvars586 = trunc i64 %indvars.iv562 to i32   ; 5 uses
  %i.gz = icmp sgt i32 %i.gp, 0
  br i1 %i.gz, label %.lr.ph521, label %._crit_edge522

.lr.ph521:                                        ; preds = %.preheader475
  %i.ha = add nsw i32 %.539.i, %indvars586
  %i.hb = getelementptr i8, ptr %0, i64 %i.gv
  %i.hc = getelementptr i8, ptr %0, i64 %i.gv
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  br label %bb.r

._crit_edge525:                                   ; preds = %.preheader475.us, %._crit_edge522, %compute_slice_width.exit
  tail call void @free(ptr noundef %i.ah) #9
  tail call void @free(ptr noundef %i.cq) #9
  ret void

._crit_edge522:                                   ; preds = %.loopexit471, %.preheader475
  %i.he = phi i32 [ %i.gn, %.preheader475 ], [ %i.is, %.loopexit471 ] ; 2 uses
  %i.hf = phi i32 [ %i.go, %.preheader475 ], [ %i.it, %.loopexit471 ]
  %i.hg = phi i32 [ %i.gp, %.preheader475 ], [ %i.it, %.loopexit471 ]
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, %i.ga ; 2 uses
  %indvars = trunc i64 %indvars.iv.next563 to i32
  %i.hh = icmp sgt i32 %i.he, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.539.i
  %indvar.next657 = add i32 %indvar656, 1
  %indvar.next665 = add i64 %indvar664, 1
  br i1 %i.hh, label %.preheader475, label %._crit_edge525, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph521, %.loopexit471
  %indvar = phi i64 [ 0, %.lr.ph521 ], [ %indvar.next, %.loopexit471 ] ; 5 uses
  %i.hi = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.is, %.loopexit471 ]
  %i.hj = phi i32 [ %i.go, %.lr.ph521 ], [ %i.it, %.loopexit471 ]
  %i.hk = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.iv, %.loopexit471 ] ; 3 uses
  %indvars.iv545.a = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next546.a, %.loopexit471 ] ; 21 uses
  %i.hl = phi i32 [ %i.gp, %.lr.ph521 ], [ %i.it, %.loopexit471 ] ; 5 uses
  %i.hm = add nuw i64 %.0.i, %indvars.iv545.a
  %i.hn = shl i64 %i.hm, 32
  %i.ho = ashr exact i64 %i.hn, 32
  %i.hp = or disjoint i64 %indvars.iv545.a, 1
  %i.hq = or disjoint i64 %indvars.iv545.a, 1
  %i.hr = mul i64 %.0.i, %indvar
  %i.hs = or disjoint i64 %indvars.iv545.a, 1
  %i.ht = mul i64 %i.gb, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.ht
  %i.hu = getelementptr i8, ptr %1, i64 %i.ht
  %scevgep661 = getelementptr i8, ptr %i.hu, i64 16
  %i.hv = or disjoint i64 %indvars.iv545.a, 1
  %i.hw = mul i64 %.0.i, %indvar
  %i.hx = xor i64 %i.hw, -1
  %scevgep666 = getelementptr i8, ptr %i.hb, i64 %i.ht
  %scevgep667 = getelementptr i8, ptr %i.hd, i64 %i.ht
  %i.hy = mul i64 %.0.i, %indvar
  %i.hz = or disjoint i64 %indvars.iv545.a, 1
  %indvars585 = trunc i64 %indvars.iv545.a to i32 ; 13 uses
  %i.ia = sub nsw i64 0, %indvars.iv545.a
  %i.ib = getelementptr [4 x i8], ptr %i.fu, i64 %i.ia ; 17 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.hk) ; 6 uses
  %indvars.iv.next546.a = add nuw nsw i64 %indvars.iv545.a, %.0.i ; 3 uses
  %i.ic = trunc i64 %indvars.iv.next546.a to i32
  %i.id = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 %i.hl) ; 9 uses
  %i.ie = icmp sgt i32 %., %indvars586            ; 3 uses
  br i1 %i.ie, label %.lr.ph, label %.preheader474

.lr.ph:                                           ; preds = %bb.r
  %i.if = sext i32 %i.id to i64
  %i.ig = sub nsw i64 %i.if, %indvars.iv545.a
  %i.ih = shl nsw i64 %i.ig, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hk, i32 %indvars.iv)
  %i.ii = add i32 %., %i.gr
  %i.ij = add i32 %i.gt, %.
  %xtraiter = and i32 %i.ii, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407476.prol = phi i32 [ %i.iq, %.prol.preheader ], [ %indvars586, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ik = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.il = mul nsw i32 %i.ik, %.0407476.prol
  %i.im = add nsw i32 %i.il, %indvars585
  %i.in = shl nsw i32 %i.im, 2
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %1, i64 %i.io
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ip, i8 0, i64 %i.ih, i1 false)
  %i.iq = add nsw i32 %.0407476.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407476.unr = phi i32 [ %indvars586, %.lr.ph ], [ %i.iq, %.prol.preheader ]
  %i.ir = icmp ult i32 %i.ij, 3
  br i1 %i.ir, label %.preheader474.loopexit, label %.lr.ph.new

.preheader474.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !52 ; 2 uses
  %.pre599 = load i32, ptr %i.fg, align 4, !tbaa !42 ; 2 uses
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.loopexit, %bb.r
  %i.is = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hi, %bb.r ] ; 2 uses
  %i.it = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hj, %bb.r ] ; 5 uses
  %i.iu = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hl, %bb.r ] ; 7 uses
  %i.iv = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hk, %bb.r ] ; 5 uses
  %i.iw = load ptr, ptr %i.fv, align 8, !tbaa !55 ; 9 uses
  %5 = sub i32 %i.iu, %i.id                       ; 3 uses
  %i.ix = add i32 %indvars585, %i.fw              ; 2 uses
  %i.iy = add i32 %i.id, %i.cj                    ; 3 uses
  %i.iz = sext i32 %i.ix to i64
  %i.ja = shl nsw i64 %i.iz, 2
  %scevgep.i = getelementptr i8, ptr %i.ib, i64 %i.ja
  %i.jb = sub i32 %i.cj, %indvars585
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 4 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 5 uses
  %i.je = xor i32 %indvars585, -1
  %i.jf = sext i32 %i.iu to i64
  %i.jg = shl nsw i64 %i.jf, 2
  %smin547 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %indvars585)
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.ib, i64 %i.fs
  %invariant.gep643 = getelementptr [4 x i8], ptr %i.ib, i64 %i.fs
  %scevgep711 = getelementptr i8, ptr %i.iw, i64 12
  %i.jh = sext i32 %i.hl to i64
  %smin747 = tail call i64 @llvm.smin.i64(i64 %i.jh, i64 %i.ho)
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407476 = phi i32 [ %i.kj, %.lr.ph.new ], [ %.0407476.unr, %.prol.loopexit ] ; 5 uses
  %i.ji = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jj = mul nsw i32 %i.ji, %.0407476
  %i.jk = add nsw i32 %i.jj, %indvars585
  %i.jl = shl nsw i32 %i.jk, 2
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jm
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jn, i8 0, i64 %i.ih, i1 false)
  %i.jo = add nsw i32 %.0407476, 1
  %i.jp = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jq = mul nsw i32 %i.jp, %i.jo
  %i.jr = add nsw i32 %i.jq, %indvars585
  %i.js = shl nsw i32 %i.jr, 2
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jt
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ju, i8 0, i64 %i.ih, i1 false)
  %i.jv = add nsw i32 %.0407476, 2
  %i.jw = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jx = mul nsw i32 %i.jw, %i.jv
  %i.jy = add nsw i32 %i.jx, %indvars585
  %i.jz = shl nsw i32 %i.jy, 2
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ka
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kb, i8 0, i64 %i.ih, i1 false)
  %i.kc = add nsw i32 %.0407476, 3
  %i.kd = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.ke = mul nsw i32 %i.kd, %i.kc
  %i.kf = add nsw i32 %i.ke, %indvars585
  %i.kg = shl nsw i32 %i.kf, 2
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kh
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ki, i8 0, i64 %i.ih, i1 false)
  %i.kj = add nsw i32 %.0407476, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kj, %smin
  br i1 %exitcond.not.3, label %.preheader474.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge504.a
  br i1 %spec.select448, label %.preheader470, label %.preheader472

.preheader472:                                    ; preds = %bb.s
  br i1 %i.ie, label %.lr.ph510, label %.loopexit471

.lr.ph510:                                        ; preds = %.preheader472
  %factor.op.mul = shl i32 %i.iu, 2
  %i.kk = sext i32 %i.hl to i64
  %i.kl = icmp slt i64 %indvars.iv545.a, %i.kk
  br i1 %i.kl, label %.preheader463.lr.ph.preheader, label %.loopexit471

.preheader463.lr.ph.preheader:                    ; preds = %.lr.ph510
  %i.km = sext i32 %i.id to i64                   ; 3 uses
  %i.kn = sext i32 %. to i64                      ; 2 uses
  %i.ko = mul i32 %i.gu, %i.iu
  %i.kp = shl i32 %i.iu, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.km, i64 %i.hv)
  %i.kq = add i64 %smax, %i.hx
  %i.kr = shl nsw i64 %i.kq, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.kr
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kn, i64 %i.gy)
  %i.ks = add i64 %smax668, %i.gx
  %i.kt = mul i64 %i.gf, %i.ks
  %i.ku = getelementptr i8, ptr %scevgep667, i64 %i.kt
  %scevgep669 = getelementptr i8, ptr %i.ku, i64 %i.kr
  %i.kv = tail call i64 @llvm.smax.i64(i64 %i.km, i64 %i.hs) ; 2 uses
  %i.kw = sub i64 %i.kv, %i.hr                    ; 2 uses
  %min.iters.check671 = icmp ult i64 %i.kw, 5
  %i.kx = and i64 %i.kv, 3                        ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  %i.kz = select i1 %i.ky, i64 4, i64 %i.kx
  %n.vec673 = sub i64 %i.kw, %i.kz                ; 2 uses
  %i.la = add i64 %indvars.iv545.a, %n.vec673
  br label %.preheader463.lr.ph

.preheader470:                                    ; preds = %bb.s
  br i1 %i.ie, label %.lr.ph517, label %.loopexit471

.lr.ph517:                                        ; preds = %.preheader470
  %factor.op.mul518 = shl i32 %i.iu, 2
  %i.lb = sext i32 %i.hl to i64
  %i.lc = icmp slt i64 %indvars.iv545.a, %i.lb
  br i1 %i.lc, label %.preheader.lr.ph.preheader, label %.loopexit471

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph517
  %i.ld = sext i32 %i.id to i64                   ; 2 uses
  %i.le = sext i32 %. to i64
  %i.lf = tail call i64 @llvm.smax.i64(i64 %i.ld, i64 %i.hz) ; 2 uses
  %i.lg = sub i64 %i.lf, %i.hy                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.lg, 4
  %i.lh = and i64 %i.lf, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.lg, %i.lh               ; 2 uses
  %i.li = add i64 %indvars.iv545.a, %n.vec
  %cmp.n = icmp eq i64 %i.lh, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader474, %._crit_edge504.a
  %indvars.iv567 = phi i64 [ 0, %.preheader474 ], [ %indvars.iv.next568, %._crit_edge504.a ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv567 ; 4 uses
  %i.lk = load i16, ptr %i.lj, align 8, !tbaa !49 ; 5 uses
  %i.ll = icmp sgt i16 %i.lk, 0
  %i.lm = sext i16 %i.lk to i32                   ; 2 uses
  %i.ln = sub nsw i32 0, %i.lm
  %i.lo = select i1 %i.ll, i32 0, i32 %i.ln       ; 2 uses
  %i.lp = tail call i32 @llvm.smax.i32(i32 %i.lo, i32 %indvars586) ; 7 uses
  %i.lq = icmp slt i16 %i.lk, 0
  %spec.select453 = tail call i16 @llvm.smax.i16(i16 %i.lk, i16 0)
  %spec.select = zext nneg i16 %spec.select453 to i32 ; 2 uses
  %i.lr = sub i32 %i.iv, %spec.select
  %spec.select450 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lr) ; 3 uses
  %i.ls = tail call i16 @llvm.smin.i16(i16 %i.lk, i16 0)
  %i.lt = sext i16 %i.ls to i32
  %i.lu = sub nsw i32 %i.cj, %i.lt
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.lp, i32 %i.lu) ; 2 uses
  %i.lw = add nsw i32 %i.cj, %spec.select
  %i.lx = xor i32 %i.lw, -1
  %i.ly = add i32 %i.iv, %i.lx
  %spec.select452 = tail call i32 @llvm.smin.i32(i32 %spec.select450, i32 %i.ly) ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !50
  %i.mb = sext i16 %i.ma to i32                   ; 4 uses
  %i.mc = sub nsw i32 0, %i.mb
  %i.md = tail call i32 @llvm.smax.i32(i32 %indvars585, i32 %i.mc) ; 5 uses
  %i.me = sub i32 %i.iu, %i.mb                    ; 3 uses
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.id, i32 %i.me) ; 3 uses
  %i.mf = add nsw i32 %indvars585, %i.mb          ; 2 uses
  %i.mg = tail call i32 @llvm.smin.i32(i32 %indvars585, i32 %i.mf)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mg) ; 2 uses
  %i.mh = sub nsw i32 %indvars585, %..i           ; 6 uses
  %6 = sub i32 %5, %i.mb
  %7 = tail call i32 @llvm.smin.i32(i32 %5, i32 %6)
  %i.mi = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %7)
  %i.mj = add i32 %i.mi, %i.id                    ; 6 uses
  %i.mk = add i32 %i.lp, %i.lm                    ; 2 uses
  %i.ml = tail call i32 @llvm.smin.i32(i32 %i.lp, i32 %i.mk)
  %i.mm = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.ml) ; 2 uses
  %i.mn = sub i32 %i.lp, %i.mm                    ; 2 uses
  %.v138.i = select i1 %i.lq, i32 %i.lp, i32 %i.mk ; 2 uses
  %i.mo = xor i32 %.v138.i, -1
  %i.mp = add i32 %i.iv, %i.mo
  %i.mq = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mp)
  %i.mr = add i32 %i.mq, %i.lp                    ; 2 uses
  %i.ms = tail call i32 @llvm.smin.i32(i32 %i.mh, i32 %i.iy) ; 2 uses
  %i.mt = icmp slt i32 %i.ix, %i.ms
  br i1 %i.mt, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.mu = add i32 %i.jb, %i.ms
  %i.mv = zext i32 %i.mu to i64
  %i.mw = shl nuw nsw i64 %i.mv, 2
  %i.mx = add nuw nsw i64 %i.mw, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.mx, i1 false), !tbaa !56
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.my = icmp slt i32 %i.mh, %i.mj
  br i1 %i.my, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mn, %i.mr
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
  %i.mz = sext i32 %i.mh to i64
  %i.na = shl nuw nsw i64 %i.mz, 2
  %scevgep158.i = getelementptr i8, ptr %i.ib, i64 %i.na
  %i.nb = add i32 %..i, %i.je
  %i.nc = add i32 %i.nb, %i.mj
  %i.nd = zext i32 %i.nc to i64
  %i.ne = shl nuw nsw i64 %i.nd, 2
  %i.nf = add nuw nsw i64 %i.ne, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.nf, i1 false), !tbaa !56
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !51
  %i.ni = sext i32 %i.nh to i64                   ; 4 uses
  %i.nj = sext i32 %i.mn to i64                   ; 5 uses
  %i.nk = add i32 %i.mr, 1
  %i.nl = sext i32 %i.mh to i64
  %i.nm = sext i32 %i.mj to i64
  %i.nn = xor i32 %.v138.i, -1
  %i.no = add i32 %i.iv, %i.nn
  %smin778 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.no)
  %i.np = add i32 %i.mm, %smin778                 ; 3 uses
  %i.nq = zext i32 %i.np to i64
  %i.nr = add nuw nsw i64 %i.nq, 1                ; 5 uses
  %min.iters.check780 = icmp ult i32 %i.np, 3
  %min.iters.check782 = icmp ult i32 %i.np, 15
  %i.ns = and i64 %i.nr, 12
  %n.vec784 = and i64 %i.nr, 8589934576           ; 4 uses
  %i.nt = add nsw i64 %n.vec784, %i.nj            ; 2 uses
  %broadcast.splatinsert793 = insertelement <8 x i64> poison, i64 %i.nj, i64 0
  %broadcast.splat794 = shufflevector <8 x i64> %broadcast.splatinsert793, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat794, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n824 = icmp eq i64 %i.nr, %n.vec784
  %min.epilog.iters.check831 = icmp eq i64 %i.ns, 0
  %n.vec833 = and i64 %i.nr, 8589934588           ; 3 uses
  %i.nu = add nsw i64 %n.vec833, %i.nj
  %cmp.n864 = icmp eq i64 %i.nr, %n.vec833
  br label %iter.check828

iter.check828:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nl, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %i.nv = load <2 x float>, ptr %i.iw, align 4, !tbaa !56 ; 5 uses
  %i.nw = load float, ptr %i.jd, align 4, !tbaa !56 ; 3 uses
  br i1 %min.iters.check780, label %vec.epilog.scalar.ph829.preheader, label %vector.main.loop.iter.check781

vector.main.loop.iter.check781:                   ; preds = %iter.check828
  br i1 %min.iters.check782, label %vec.epilog.ph832, label %vector.ph783

vector.ph783:                                     ; preds = %vector.main.loop.iter.check781
  %broadcast.splat786.a = shufflevector <2 x float> %i.nv, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat788 = shufflevector <2 x float> %i.nv, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert789 = insertelement <8 x float> poison, float %i.nw, i64 0
  %broadcast.splat790 = shufflevector <8 x float> %broadcast.splatinsert789, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body795

vector.body795:                                   ; preds = %vector.ph783, %vector.body795
  %index796 = phi i64 [ 0, %vector.ph783 ], [ %index.next821, %vector.body795 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph783 ], [ %vec.ind.next, %vector.body795 ] ; 3 uses
  %vec.phi797 = phi <8 x float> [ zeroinitializer, %vector.ph783 ], [ %i.ov, %vector.body795 ]
  %vec.phi798 = phi <8 x float> [ zeroinitializer, %vector.ph783 ], [ %i.ow, %vector.body795 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.nx = mul nsw <8 x i64> %vec.ind, %broadcast.splat792
  %i.ny = mul nsw <8 x i64> %step.add, %broadcast.splat792
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nx ; 4 uses
  %wide.gep799 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.ny ; 4 uses
  %wide.gep800 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.ni ; 3 uses
  %wide.gep801.a = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep799, i64 %i.ni ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather802 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep799, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather803.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep800, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather804.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.nz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather803.a ; 2 uses
  %i.oa = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather802, %wide.masked.gather804.a ; 2 uses
  %i.ob = fmul reassoc nsz arcp contract afn <8 x float> %i.nz, %i.nz
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %i.oa, %i.oa
  %i.od = fmul reassoc nsz arcp contract afn <8 x float> %i.ob, %broadcast.splat786.a
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %i.oc, %broadcast.splat786.a
  %wide.gep805.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep806.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep799, i64 4
  %wide.masked.gather807.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep805.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather808.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep806.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep809.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep800, i64 4
  %wide.gep810.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801.a, i64 4
  %wide.masked.gather811.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep809.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather812.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep810.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.of = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather807.a, %wide.masked.gather811.a ; 2 uses
  %i.og = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather808.a, %wide.masked.gather812.a ; 2 uses
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %i.of
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %i.og
  %i.oj = fmul reassoc nsz arcp contract afn <8 x float> %i.oh, %broadcast.splat788
  %i.ok = fmul reassoc nsz arcp contract afn <8 x float> %i.oi, %broadcast.splat788
  %wide.gep813.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep814.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep799, i64 8
  %wide.masked.gather815.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep813.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather816.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep814.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep817 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep800, i64 8
  %wide.gep818 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801.a, i64 8
  %wide.masked.gather819 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep817, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather820 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep818, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.ol = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather815.a, %wide.masked.gather819 ; 2 uses
  %i.om = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather816.a, %wide.masked.gather820 ; 2 uses
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %i.ol
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %i.om
  %i.op = fmul reassoc nsz arcp contract afn <8 x float> %i.on, %broadcast.splat790
  %i.oq = fmul reassoc nsz arcp contract afn <8 x float> %i.oo, %broadcast.splat790
  %i.or = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi797, %i.od
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi798, %i.oe
  %i.ot = fadd reassoc nsz arcp contract afn <8 x float> %i.oj, %i.or
  %i.ou = fadd reassoc nsz arcp contract afn <8 x float> %i.ok, %i.os
  %i.ov = fadd reassoc nsz arcp contract afn <8 x float> %i.ot, %i.op ; 2 uses
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %i.ou, %i.oq ; 2 uses
  %index.next821 = add nuw i64 %index796, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ox = icmp eq i64 %index.next821, %n.vec784
  br i1 %i.ox, label %middle.block822, label %vector.body795, !llvm.loop !13

middle.block822:                                  ; preds = %vector.body795
  %bin.rdx823 = fadd reassoc nsz arcp contract afn <8 x float> %i.ow, %i.ov
  %i.oy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx823) ; 3 uses
  br i1 %cmp.n824, label %._crit_edge.i447, label %vec.epilog.iter.check830

vec.epilog.iter.check830:                         ; preds = %middle.block822
  %slprdx.init867 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.oy, i64 0
  br i1 %min.epilog.iters.check831, label %vec.epilog.scalar.ph829.preheader, label %vec.epilog.ph832, !prof !59

vec.epilog.ph832:                                 ; preds = %vector.main.loop.iter.check781, %vec.epilog.iter.check830
  %vec.epilog.resume.val825 = phi i64 [ %n.vec784, %vec.epilog.iter.check830 ], [ 0, %vector.main.loop.iter.check781 ]
  %bc.resume.val826 = phi i64 [ %i.nt, %vec.epilog.iter.check830 ], [ %i.nj, %vector.main.loop.iter.check781 ]
  %bc.merge.rdx827 = phi float [ %i.oy, %vec.epilog.iter.check830 ], [ 0.000000e+00, %vector.main.loop.iter.check781 ]
  %i.oz = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx827, i64 0
  %broadcast.splat835.a = shufflevector <2 x float> %i.nv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat837 = shufflevector <2 x float> %i.nv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert838.a = insertelement <4 x float> poison, float %i.nw, i64 0
  %broadcast.splat839.a = shufflevector <4 x float> %broadcast.splatinsert838.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert842 = insertelement <4 x i64> poison, i64 %bc.resume.val826, i64 0
  %broadcast.splat843 = shufflevector <4 x i64> %broadcast.splatinsert842, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction844 = add nsw <4 x i64> %broadcast.splat843, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body845

vec.epilog.vector.body845:                        ; preds = %vec.epilog.vector.body845, %vec.epilog.ph832
  %index846 = phi i64 [ %vec.epilog.resume.val825, %vec.epilog.ph832 ], [ %index.next861, %vec.epilog.vector.body845 ]
  %vec.ind847 = phi <4 x i64> [ %induction844, %vec.epilog.ph832 ], [ %vec.ind.next862, %vec.epilog.vector.body845 ] ; 2 uses
  %vec.phi848 = phi <4 x float> [ %i.oz, %vec.epilog.ph832 ], [ %i.pm, %vec.epilog.vector.body845 ]
  %i.pa = mul nsw <4 x i64> %vec.ind847, %broadcast.splat841
  %wide.gep849.a = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.pa ; 4 uses
  %wide.gep850 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep849.a, i64 %i.ni ; 3 uses
  %wide.masked.gather851 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep849.a, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather852.a = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep850, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pb = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather851, %wide.masked.gather852.a ; 2 uses
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %i.pb
  %i.pd = fmul reassoc nsz arcp contract afn <4 x float> %i.pc, %broadcast.splat835.a
  %wide.gep853.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep849.a, i64 4
  %wide.masked.gather854.a = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853.a, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep855.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep850, i64 4
  %wide.masked.gather856.a = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855.a, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pe = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather854.a, %wide.masked.gather856.a ; 2 uses
  %i.pf = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %i.pe
  %i.pg = fmul reassoc nsz arcp contract afn <4 x float> %i.pf, %broadcast.splat837
  %wide.gep857 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep849.a, i64 8
  %wide.masked.gather858 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep857, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep859 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep850, i64 8
  %wide.masked.gather860 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep859, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.ph = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather858, %wide.masked.gather860 ; 2 uses
  %i.pi = fmul reassoc nsz arcp contract afn <4 x float> %i.ph, %i.ph
  %i.pj = fmul reassoc nsz arcp contract afn <4 x float> %i.pi, %broadcast.splat839.a
  %i.pk = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi848, %i.pd
  %i.pl = fadd reassoc nsz arcp contract afn <4 x float> %i.pg, %i.pk
  %i.pm = fadd reassoc nsz arcp contract afn <4 x float> %i.pl, %i.pj ; 2 uses
  %index.next861 = add nuw i64 %index846, 4       ; 2 uses
  %vec.ind.next862 = add nsw <4 x i64> %vec.ind847, splat (i64 4)
  %i.pn = icmp eq i64 %index.next861, %n.vec833
  br i1 %i.pn, label %vec.epilog.middle.block863, label %vec.epilog.vector.body845, !llvm.loop !14

vec.epilog.middle.block863:                       ; preds = %vec.epilog.vector.body845
  %i.po = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pm) ; 2 uses
  %slprdx.init = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.po, i64 0
  br i1 %cmp.n864, label %._crit_edge.i447, label %vec.epilog.scalar.ph829.preheader

vec.epilog.scalar.ph829.preheader:                ; preds = %iter.check828, %vec.epilog.iter.check830, %vec.epilog.middle.block863
  %indvars.iv.i.ph = phi i64 [ %i.nj, %iter.check828 ], [ %i.nt, %vec.epilog.iter.check830 ], [ %i.nu, %vec.epilog.middle.block863 ]
  %slprdx.acc.ph = phi <4 x float> [ zeroinitializer, %iter.check828 ], [ %slprdx.init867, %vec.epilog.iter.check830 ], [ %slprdx.init, %vec.epilog.middle.block863 ]
  %i.pp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.nw, i64 2
  %i.pq = shufflevector <2 x float> %i.nv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> %i.pp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %vec.epilog.scalar.ph829

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.ps = tail call i32 @llvm.smax.i32(i32 %i.mh, i32 %i.mj) ; 3 uses
  %i.pt = icmp slt i32 %i.ps, %i.iy
  br i1 %i.pt, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.ps to i64
  %i.pu = shl nuw nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.ib, i64 %i.pu
  %i.pv = xor i32 %i.ps, -1
  %i.pw = add i32 %i.iy, %i.pv
  %i.px = zext i32 %i.pw to i64
  %i.py = shl nuw nsw i64 %i.px, 2
  %i.pz = add nuw nsw i64 %i.py, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.pz, i1 false), !tbaa !56
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph829, %vec.epilog.middle.block863, %middle.block822
  %slprdx.exit = phi <4 x float> [ poison, %vec.epilog.middle.block863 ], [ poison, %middle.block822 ], [ %slprdx.acc868, %vec.epilog.scalar.ph829 ]
  %slprdx.fromloop = phi i1 [ false, %vec.epilog.middle.block863 ], [ false, %middle.block822 ], [ true, %vec.epilog.scalar.ph829 ]
  %.lcssa = phi float [ %i.po, %vec.epilog.middle.block863 ], [ %i.oy, %middle.block822 ], [ poison, %vec.epilog.scalar.ph829 ]
  %i.qa = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit)
  %slprdx.sel = select i1 %slprdx.fromloop, float %i.qa, float %.lcssa
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv156.i
  store float %slprdx.sel, ptr %i.qb, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.qc = icmp slt i64 %indvars.iv.next157.i, %i.nm
  br i1 %i.qc, label %iter.check828, label %._crit_edge148.i

vec.epilog.scalar.ph829:                          ; preds = %vec.epilog.scalar.ph829.preheader, %vec.epilog.scalar.ph829
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph829 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph829.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x float> [ %slprdx.acc868, %vec.epilog.scalar.ph829 ], [ %slprdx.acc.ph, %vec.epilog.scalar.ph829.preheader ]
  %i.qd = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qd ; 3 uses
  %i.qe = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.ni ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !56
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !56
  %i.qj = load <2 x float>, ptr %gep.i, align 4, !tbaa !56
  %i.qk = load <2 x float>, ptr %i.qe, align 4, !tbaa !56
  %i.ql = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qg, i64 2
  %i.qm = shufflevector <2 x float> %i.qj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qn = shufflevector <4 x float> %i.qm, <4 x float> %i.ql, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qo = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qi, i64 2
  %i.qp = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qq = shufflevector <4 x float> %i.qp, <4 x float> %i.qo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qr = fsub reassoc nsz arcp contract afn <4 x float> %i.qn, %i.qq ; 2 uses
  %i.qs = insertelement <4 x float> %i.qr, float 1.000000e+00, i64 3
  %i.qt = fmul reassoc nsz arcp contract afn <4 x float> %i.qr, %i.qs
  %i.qu = fmul reassoc nsz arcp contract afn <4 x float> %i.qt, %i.pr
  %slprdx.acc868 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %i.qu ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.nk, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph829, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qv = icmp slt i32 %i.lp, %spec.select450
  br i1 %i.qv, label %.lr.ph503, label %._crit_edge504.a

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.qw = sub nsw i32 %i.md, %i.cj
  %i.qx = add i32 %i.md, %i.cj                    ; 2 uses
  %i.qy = tail call i32 @llvm.smin.i32(i32 %i.qx, i32 %.437) ; 2 uses
  %i.qz = icmp slt i32 %i.qw, %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !51
  %i.rc = icmp slt i32 %i.md, %.437               ; 2 uses
  %i.rd = sext i32 %i.rb to i64                   ; 8 uses
  %8 = sub i32 %i.me, %i.id
  %9 = tail call i32 @llvm.smin.i32(i32 %5, i32 %8)
  %10 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %9)
  %11 = add nsw i32 %10, %i.id                    ; 2 uses
  %i.re = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %spec.select452)
  %12 = icmp slt i32 %i.mh, %11                   ; 3 uses
  %i.rf = sub i32 %i.md, %i.cj
  %i.rg = sext i32 %i.rf to i64                   ; 6 uses
  %i.rh = sext i32 %i.qy to i64
  %i.ri = zext nneg i32 %i.md to i64              ; 2 uses
  %i.rj = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.mf)
  %i.rk = sub i32 0, %smin548
  %i.rl = sext i32 %i.rk to i64                   ; 4 uses
  %i.rm = add i64 %indvars.iv545.a, %i.rl         ; 7 uses
  %i.rn = sext i32 %11 to i64                     ; 3 uses
  %i.ro = sext i32 %i.lo to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.ro) ; 3 uses
  %i.rp = sext i32 %spec.select450 to i64         ; 3 uses
  %i.rq = sext i32 %i.lv to i64
  %i.rr = sext i32 %spec.select452 to i64
  %i.rs = sext i32 %i.re to i64
  %invariant.op = add nsw i64 %i.rp, -1
  %i.rt = shl nsw i64 %i.rm, 2
  %scevgep701 = getelementptr i8, ptr %i.ib, i64 %i.rt ; 3 uses
  %i.ru = add i64 %i.hq, %i.rl
  %i.rv = sext i32 %i.mj to i64
  %smax702.a = tail call i64 @llvm.smax.i64(i64 %i.ru, i64 %i.rv) ; 2 uses
  %i.rw = shl nsw i64 %smax702.a, 2
  %scevgep703.a = getelementptr i8, ptr %i.ib, i64 %i.rw ; 3 uses
  %i.rx = sub i64 %smax564, %i.fs
  %i.ry = mul i64 %i.gg, %i.rx                    ; 2 uses
  %i.rz = shl nsw i64 %i.rm, 4                    ; 2 uses
  %i.sa = shl nsw i64 %i.rd, 2                    ; 2 uses
  %i.sb = getelementptr i8, ptr %0, i64 %i.ry
  %i.sc = getelementptr i8, ptr %i.sb, i64 %i.rz
  %scevgep704.a = getelementptr i8, ptr %i.sc, i64 %i.sa
  %i.sd = add nuw i64 %smax564, 1
  %smax706 = tail call i64 @llvm.smax.i64(i64 %i.rp, i64 %i.sd)
  %i.se = sub i64 %smax706, %i.fs
  %reass.sub = shl i64 %i.se, 2
  %i.sf = add i64 %reass.sub, -4
  %i.sg = mul i64 %i.sf, %i.s
  %i.sh = shl nsw i64 %smax702.a, 4
  %i.si = add i64 %i.sg, %i.sh                    ; 2 uses
  %i.sj = getelementptr i8, ptr %scevgep705.a, i64 %i.si
  %scevgep707 = getelementptr i8, ptr %i.sj, i64 %i.sa
  %i.sk = getelementptr i8, ptr %0, i64 %i.ry
  %scevgep708 = getelementptr i8, ptr %i.sk, i64 %i.rz
  %scevgep710 = getelementptr i8, ptr %scevgep709, i64 %i.si
  %i.sl = sext i32 %i.qx to i64
  %smin748 = tail call i64 @llvm.smin.i64(i64 %smin747, i64 %i.sl)
  %i.sm = sext i32 %i.me to i64
  %smin749 = tail call i64 @llvm.smin.i64(i64 %smin748, i64 %i.sm)
  %i.sn = sub i64 %smin749, %i.rg                 ; 7 uses
  %min.iters.check751 = icmp ult i64 %i.sn, 8
  %min.iters.check752 = icmp ult i64 %i.sn, 32
  %i.so = and i64 %i.sn, 24
  %n.vec754 = and i64 %i.sn, -32                  ; 4 uses
  %i.sp = add i64 %n.vec754, %i.rg
  %invariant.gep898 = getelementptr [4 x i8], ptr %i.ib, i64 %i.rg
  %cmp.n768 = icmp eq i64 %i.sn, %n.vec754
  %min.epilog.iters.check = icmp eq i64 %i.so, 0
  %n.vec770 = and i64 %i.sn, -8                   ; 3 uses
  %i.sq = add i64 %n.vec770, %i.rg
  %invariant.gep900 = getelementptr [4 x i8], ptr %i.ib, i64 %i.rg
  %cmp.n775 = icmp eq i64 %i.sn, %n.vec770
  %i.sr = add i64 %i.hp, %i.rl
  %13 = sext i32 %i.mj to i64
  %i.ss = tail call i64 @llvm.smax.i64(i64 %i.sr, i64 %13)
  %i.st = add i64 %indvars.iv545.a, %i.rl
  %i.su = sub i64 %i.ss, %i.st                    ; 3 uses
  %min.iters.check725 = icmp ult i64 %i.su, 9
  %bound0712.a = icmp ult ptr %scevgep701, %scevgep707
  %bound1713.a = icmp ult ptr %scevgep704.a, %scevgep703.a
  %found.conflict714.a = and i1 %bound0712.a, %bound1713.a
  %bound0716.a = icmp ult ptr %scevgep701, %scevgep710
  %bound1717.a = icmp ult ptr %scevgep708, %scevgep703.a
  %found.conflict718.a = and i1 %bound0716.a, %bound1717.a
  %i.sv = or i1 %found.conflict718.a, %stride.check719
  %conflict.rdx = or i1 %found.conflict714.a, %i.sv
  %bound0720 = icmp ult ptr %scevgep701, %scevgep711
  %bound1721 = icmp ult ptr %i.iw, %scevgep703.a
  %found.conflict722 = and i1 %bound0720, %bound1721
  %conflict.rdx723 = or i1 %conflict.rdx, %found.conflict722
  %i.sw = and i64 %i.su, 7                        ; 2 uses
  %i.sx = icmp eq i64 %i.sw, 0
  %i.sy = select i1 %i.sx, i64 8, i64 %i.sw
  %n.vec727 = sub i64 %i.su, %i.sy                ; 2 uses
  %i.sz = add i64 %i.rm, %n.vec727
  br label %bb.u

._crit_edge504.a:                                 ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.qz, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check751, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check752, label %vec.epilog.ph, label %vector.body755

vector.body755:                                   ; preds = %vector.main.loop.iter.check, %vector.body755
  %index756 = phi i64 [ %index.next764, %vector.body755 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.td, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi757 = phi <8 x float> [ %i.te, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi758 = phi <8 x float> [ %i.tf, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi759 = phi <8 x float> [ %i.tg, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep899 = getelementptr [4 x i8], ptr %invariant.gep898, i64 %index756 ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %gep899, i64 32
  %i.tb = getelementptr inbounds nuw i8, ptr %gep899, i64 64
  %i.tc = getelementptr inbounds nuw i8, ptr %gep899, i64 96
  %wide.load760 = load <8 x float>, ptr %gep899, align 4, !tbaa !56
  %wide.load761 = load <8 x float>, ptr %i.ta, align 4, !tbaa !56
  %wide.load762 = load <8 x float>, ptr %i.tb, align 4, !tbaa !56
  %wide.load763 = load <8 x float>, ptr %i.tc, align 4, !tbaa !56
  %i.td = fadd reassoc nsz arcp contract afn <8 x float> %wide.load760, %vec.phi ; 2 uses
  %i.te = fadd reassoc nsz arcp contract afn <8 x float> %wide.load761, %vec.phi757 ; 2 uses
  %i.tf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load762, %vec.phi758 ; 2 uses
  %i.tg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load763, %vec.phi759 ; 2 uses
  %index.next764 = add nuw i64 %index756, 32      ; 2 uses
  %i.th = icmp eq i64 %index.next764, %n.vec754
  br i1 %i.th, label %middle.block765, label %vector.body755, !llvm.loop !16

middle.block765:                                  ; preds = %vector.body755
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.te, %i.td
  %bin.rdx766 = fadd reassoc nsz arcp contract afn <8 x float> %i.tf, %bin.rdx
  %bin.rdx767 = fadd reassoc nsz arcp contract afn <8 x float> %i.tg, %bin.rdx766
  %i.ti = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx767) ; 3 uses
  br i1 %cmp.n768, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block765
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec754, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.ti, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.tj = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index771 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next774, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi772 = phi <8 x float> [ %i.tj, %vec.epilog.ph ], [ %i.tk, %vec.epilog.vector.body ]
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %index771
  %wide.load773 = load <8 x float>, ptr %gep901, align 4, !tbaa !56
  %i.tk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load773, %vec.phi772 ; 2 uses
  %index.next774 = add nuw i64 %index771, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next774, %n.vec770
  br i1 %i.tl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.tm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.tk) ; 2 uses
  br i1 %cmp.n775, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.rg, %iter.check ], [ %i.sp, %vec.epilog.iter.check ], [ %i.sq, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.ti, %vec.epilog.iter.check ], [ %i.tm, %vec.epilog.middle.block ]
  br label %.lr.ph479.a

._crit_edge:                                      ; preds = %.lr.ph479.a, %middle.block765, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.tm, %vec.epilog.middle.block ], [ %i.ti, %middle.block765 ], [ %i.tx, %.lr.ph479.a ] ; 2 uses
  %i.tn = mul nsw i64 %indvars.iv565, %i.s
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tn ; 2 uses
  %i.tp = mul i64 %i.jg, %indvars.iv565
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tp ; 2 uses
  %i.tr = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.ts = load float, ptr %i.i, align 8, !tbaa !39
  %i.tt = fcmp reassoc nsz arcp contract afn olt float %i.ts, 0.000000e+00
  br i1 %i.tt, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.rc, label %.lr.ph483, label %.loopexit467.a

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.rc, label %.lr.ph489, label %.loopexit467.a

.lr.ph489:                                        ; preds = %.preheader466
  %i.tu = fmul reassoc nsz arcp contract afn float %i.tr, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.to, i64 %i.rd
  br label %bb.v

.lr.ph479.a:                                      ; preds = %.lr.ph479.preheader, %.lr.ph479.a
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479.a ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
  %.0404477 = phi float [ %i.tx, %.lr.ph479.a ], [ %.0404477.ph, %.lr.ph479.preheader ]
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv532
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !56
  %i.tx = fadd reassoc nsz arcp contract afn float %i.tw, %.0404477 ; 2 uses
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.ty = icmp slt i64 %indvars.iv.next533, %i.rh
  br i1 %i.ty, label %.lr.ph479.a, label %._crit_edge, !llvm.loop !18

bb.v:                                             ; preds = %.lr.ph489, %bb.v
  %indvars.iv542 = phi i64 [ %i.ri, %.lr.ph489 ], [ %indvars.iv.next543, %bb.v ] ; 4 uses
  %.1487 = phi float [ %.0404.lcssa, %.lr.ph489 ], [ %i.ug, %bb.v ]
  %gep644 = getelementptr [4 x i8], ptr %invariant.gep643, i64 %indvars.iv542
  %i.tz = load float, ptr %gep644, align 4, !tbaa !56
  %i.ua = trunc nuw nsw i64 %indvars.iv542 to i32
  %i.ub = add i32 %i.ua, %i.fw
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.uc
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !56
  %i.uf = fsub reassoc nsz arcp contract afn float %i.tz, %i.ue
  %i.ug = fadd reassoc nsz arcp contract afn float %i.uf, %.1487 ; 2 uses
  %i.uh = fmul reassoc nsz arcp contract afn float %i.tu, %i.ug
  %i.ui = fptosi float %i.uh to i32               ; 2 uses
  %i.uj = add nsw i32 %i.ui, 1065353216
  %i.uk = icmp sgt i32 %i.ui, -1056964609
  %i.ul = bitcast i32 %i.uj to float
  %i.um = shl nuw nsw i64 %indvars.iv542, 2       ; 2 uses
  %gep491 = getelementptr [4 x i8], ptr %invariant.gep490, i64 %i.um ; 3 uses
  %i.un = getelementptr i8, ptr %gep491, i64 8
  %i.uo = load float, ptr %i.un, align 4, !tbaa !56
  %invariant.gep484 = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.um ; 2 uses
  %i.up = select i1 %i.uk, float %i.ul, float 0.000000e+00
  %i.uq = load <2 x float>, ptr %gep491, align 4, !tbaa !56
  %i.ur = insertelement <4 x float> poison, float %i.up, i64 0
  %i.us = shufflevector <4 x float> %i.ur, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ut = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.uo, i64 2
  %i.uu = shufflevector <2 x float> %i.uq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> %i.ut, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uw = fmul reassoc nsz arcp contract afn <4 x float> %i.us, %i.uv
  %i.ux = load <4 x float>, ptr %invariant.gep484, align 4, !tbaa !56
  %i.uy = fadd reassoc nsz arcp contract afn <4 x float> %i.ux, %i.uw
  store <4 x float> %i.uy, ptr %invariant.gep484, align 4, !tbaa !56
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %gep491, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.uz, i32 0, i32 3, i32 1)
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.va = icmp slt i64 %indvars.iv.next543, %i.rj
  br i1 %i.va, label %bb.v, label %.loopexit467.a

.lr.ph483:                                        ; preds = %.preheader468, %.lr.ph483
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.lr.ph483 ], [ %i.ri, %.preheader468 ] ; 4 uses
  %.2481 = phi float [ %i.vi, %.lr.ph483 ], [ %.0404.lcssa, %.preheader468 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep642, i64 %indvars.iv537
  %i.vb = load float, ptr %gep, align 4, !tbaa !56
  %i.vc = trunc nuw nsw i64 %indvars.iv537 to i32
  %i.vd = add i32 %i.vc, %i.fw
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ve
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !56
  %i.vh = fsub reassoc nsz arcp contract afn float %i.vb, %i.vg
  %i.vi = fadd reassoc nsz arcp contract afn float %i.vh, %.2481 ; 2 uses
  %i.vj = shl nuw nsw i64 %indvars.iv537, 2       ; 2 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.vj ; 4 uses
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.rd ; 4 uses
  %i.vm = load float, ptr %i.vk, align 4, !tbaa !56
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !56
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !56
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !56 ; 2 uses
  %i.vu = fsub reassoc nsz arcp contract afn float %i.vr, %i.vt ; 2 uses
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vu, %i.vu
  %i.vw = load float, ptr %i.i, align 8, !tbaa !39
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vw, 1.000000e+00
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.vj ; 2 uses
  %i.vy = load <2 x float>, ptr %i.vl, align 4, !tbaa !56 ; 2 uses
  %i.vz = load float, ptr %i.vp, align 4, !tbaa !56
  %i.wa = extractelement <2 x float> %i.vy, i64 0
  %i.wb = fsub reassoc nsz arcp contract afn float %i.vm, %i.wa ; 2 uses
  %i.wc = fmul reassoc nsz arcp contract afn float %i.wb, %i.wb
  %i.wd = fsub reassoc nsz arcp contract afn float %i.vo, %i.vz ; 2 uses
  %i.we = fmul reassoc nsz arcp contract afn float %i.wd, %i.wd
  %i.wf = fadd reassoc nsz arcp contract afn float %i.we, %i.wc
  %i.wg = fadd reassoc nsz arcp contract afn float %i.wf, %i.vv
  %i.wh = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.wg
  %i.wi = fadd reassoc nsz arcp contract afn float %i.wh, %i.vi
  %i.wj = fmul reassoc nsz arcp contract afn float %i.wi, %i.tr
  %i.wk = fdiv reassoc nsz arcp contract afn float %i.wj, %i.vx
  %i.wl = fadd reassoc nsz arcp contract afn float %i.wk, -2.000000e+00
  %i.wm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wl, float 0.000000e+00)
  %i.wn = fmul reassoc nnan nsz arcp contract afn float %i.wm, f0xCB000000
  %i.wo = fptosi float %i.wn to i32               ; 2 uses
  %i.wp = add nsw i32 %i.wo, 1065353216
  %i.wq = icmp sgt i32 %i.wo, -1056964609
  %i.wr = bitcast i32 %i.wp to float
  %i.ws = select i1 %i.wq, float %i.wr, float 0.000000e+00
  %i.wt = insertelement <4 x float> poison, float %i.ws, i64 0
  %i.wu = shufflevector <4 x float> %i.wt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wv = shufflevector <2 x float> %i.vy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ww = insertelement <4 x float> %i.wv, float 1.000000e+00, i64 3
  %i.wx = insertelement <4 x float> %i.ww, float %i.vt, i64 2
  %i.wy = fmul reassoc nsz arcp contract afn <4 x float> %i.wu, %i.wx
  %i.wz = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !56
  %i.xa = fadd reassoc nsz arcp contract afn <4 x float> %i.wz, %i.wy
  store <4 x float> %i.xa, ptr %invariant.gep, align 4, !tbaa !56
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.xb, i32 0, i32 3, i32 1)
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.xc = icmp slt i64 %indvars.iv.next538, %i.rj
  br i1 %i.xc, label %.lr.ph483, label %.loopexit467.a

.loopexit467.a:                                   ; preds = %.lr.ph483, %bb.v, %.preheader468, %.preheader466
  %i.xd = icmp slt i64 %indvars.iv565, %i.rs
  br i1 %i.xd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit467.a
  %i.xe = trunc nsw i64 %indvars.iv565 to i32
  %i.xf = add i32 %i.fy, %i.xe
  %i.xg = sext i32 %i.xf to i64
  %i.xh = mul nsw i64 %i.xg, %i.s
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xh
  br i1 %12, label %.lr.ph500, label %.loopexit

.lr.ph500:                                        ; preds = %bb.w, %.lr.ph500
  %indvars.iv559 = phi i64 [ %indvars.iv.next560, %.lr.ph500 ], [ %i.rm, %bb.w ] ; 3 uses
  %.idx632 = shl nuw nsw i64 %indvars.iv559, 4
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 %.idx632 ; 4 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.rd ; 3 uses
  %i.xl = load float, ptr %i.xj, align 4, !tbaa !56
  %i.xm = load float, ptr %i.xk, align 4, !tbaa !56
  %i.xn = fsub reassoc nsz arcp contract afn float %i.xl, %i.xm ; 2 uses
  %i.xo = fmul reassoc nsz arcp contract afn float %i.xn, %i.xn
  %i.xp = load float, ptr %i.iw, align 4, !tbaa !56
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xo, %i.xp
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.xt = load float, ptr %i.jc, align 4, !tbaa !56
  %i.xu = load <2 x float>, ptr %i.xr, align 4, !tbaa !56
  %i.xv = load <2 x float>, ptr %i.xs, align 4, !tbaa !56
  %i.xw = fsub reassoc nsz arcp contract afn <2 x float> %i.xu, %i.xv ; 2 uses
  %i.xx = fmul reassoc nsz arcp contract afn <2 x float> %i.xw, %i.xw ; 2 uses
  %i.xy = extractelement <2 x float> %i.xx, i64 0
  %i.xz = fmul reassoc nsz arcp contract afn float %i.xy, %i.xt
  %i.ya = load float, ptr %i.jd, align 4, !tbaa !56
  %i.yb = extractelement <2 x float> %i.xx, i64 1
  %i.yc = fmul reassoc nsz arcp contract afn float %i.yb, %i.ya
  %i.yd = fadd reassoc nsz arcp contract afn float %i.xz, %i.xq
  %i.ye = fadd reassoc nsz arcp contract afn float %i.yd, %i.yc
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.yf, i32 0, i32 3, i32 1)
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv559 ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !56
  %i.yi = fadd reassoc nsz arcp contract afn float %i.ye, %i.yh
  store float %i.yi, ptr %i.yg, align 4, !tbaa !56
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.yj, i32 0, i32 3, i32 1)
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.yk = icmp slt i64 %indvars.iv.next560, %i.rn
  br i1 %i.yk, label %.lr.ph500, label %.loopexit

bb.x:                                             ; preds = %.loopexit467.a
  %i.yl = icmp slt i64 %indvars.iv565, %i.rr
  br i1 %i.yl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ym = sub nsw i64 %indvars.iv565, %i.fs
  %i.yn = mul nsw i64 %i.ym, %i.s
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yn
  %i.yp = trunc nsw i64 %indvars.iv565 to i32
  %i.yq = add i32 %i.fy, %i.yp
  %i.yr = sext i32 %i.yq to i64
  %i.ys = mul nsw i64 %i.yr, %i.s
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ys
  br i1 %12, label %.lr.ph497, label %.loopexit

.lr.ph497:                                        ; preds = %bb.y, %.lr.ph497
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %.lr.ph497 ], [ %i.rm, %bb.y ] ; 3 uses
  %i.yu = shl nuw nsw i64 %indvars.iv554, 2       ; 2 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.yu ; 3 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %i.yu ; 4 uses
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.rd ; 3 uses
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.yv, i64 %i.rd ; 2 uses
  %i.yz = load float, ptr %i.yw, align 4, !tbaa !56
  %i.za = load float, ptr %i.yx, align 4, !tbaa !56
  %i.zb = fsub reassoc nsz arcp contract afn float %i.yz, %i.za ; 2 uses
  %i.zc = load float, ptr %i.yv, align 4, !tbaa !56
  %i.zd = load float, ptr %i.yy, align 4, !tbaa !56
  %i.ze = fsub reassoc nsz arcp contract afn float %i.zc, %i.zd ; 2 uses
  %i.zf = fmul reassoc nsz arcp contract afn float %i.zb, %i.zb
  %i.zg = fmul reassoc nsz arcp contract afn float %i.ze, %i.ze
  %i.zh = fsub reassoc nsz arcp contract afn float %i.zf, %i.zg
  %i.zi = load float, ptr %i.iw, align 4, !tbaa !56
  %i.zj = fmul reassoc nsz arcp contract afn float %i.zh, %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  %i.zo = load float, ptr %i.jc, align 4, !tbaa !56
  %i.zp = load <2 x float>, ptr %i.zk, align 4, !tbaa !56
  %i.zq = load <2 x float>, ptr %i.zl, align 4, !tbaa !56
  %i.zr = fsub reassoc nsz arcp contract afn <2 x float> %i.zp, %i.zq ; 2 uses
  %i.zs = load <2 x float>, ptr %i.zm, align 4, !tbaa !56
  %i.zt = load <2 x float>, ptr %i.zn, align 4, !tbaa !56
  %i.zu = fsub reassoc nsz arcp contract afn <2 x float> %i.zs, %i.zt ; 2 uses
  %i.zv = fmul reassoc nsz arcp contract afn <2 x float> %i.zr, %i.zr
  %i.zw = fmul reassoc nsz arcp contract afn <2 x float> %i.zu, %i.zu
  %i.zx = fsub reassoc nsz arcp contract afn <2 x float> %i.zv, %i.zw ; 2 uses
  %i.zy = extractelement <2 x float> %i.zx, i64 0
  %i.zz = fmul reassoc nsz arcp contract afn float %i.zy, %i.zo
  %i.aaa = load float, ptr %i.jd, align 4, !tbaa !56
  %i.aab = extractelement <2 x float> %i.zx, i64 1
  %i.aac = fmul reassoc nsz arcp contract afn float %i.aab, %i.aaa
  %i.aad = fadd reassoc nsz arcp contract afn float %i.zz, %i.zj
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aae, i32 0, i32 3, i32 1)
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv554 ; 2 uses
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !56
  %i.aah = fadd reassoc nsz arcp contract afn float %i.aad, %i.aag
  %i.aai = fadd reassoc nsz arcp contract afn float %i.aah, %i.aac
  store float %i.aai, ptr %i.aaf, align 4, !tbaa !56
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aaj, i32 0, i32 3, i32 1)
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1 ; 2 uses
  %i.aak = icmp slt i64 %indvars.iv.next555, %i.rn
  br i1 %i.aak, label %.lr.ph497, label %.loopexit

bb.z:                                             ; preds = %bb.x
  %.not = icmp sge i64 %indvars.iv565, %i.rq
  %i.aal = icmp slt i64 %indvars.iv565, %invariant.op
  %or.cond = select i1 %.not, i1 %i.aal, i1 false
  br i1 %or.cond, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.aam = sub nsw i64 %indvars.iv565, %i.fs
  %i.aan = mul nsw i64 %i.aam, %i.s
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aan ; 2 uses
  br i1 %12, label %.lr.ph494.preheader, label %.loopexit

.lr.ph494.preheader:                              ; preds = %bb.aa
  %brmerge = select i1 %min.iters.check725, i1 true, i1 %conflict.rdx723
  br i1 %brmerge, label %.lr.ph494.preheader870, label %vector.ph726

vector.ph726:                                     ; preds = %.lr.ph494.preheader
  %i.aap = load float, ptr %i.iw, align 4, !tbaa !56, !alias.scope !62
  %broadcast.splatinsert738.a = insertelement <8 x float> poison, float %i.aap, i64 0
  %broadcast.splat739.a = shufflevector <8 x float> %broadcast.splatinsert738.a, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aaq = load float, ptr %i.jc, align 4, !tbaa !56, !alias.scope !62
  %broadcast.splatinsert740 = insertelement <8 x float> poison, float %i.aaq, i64 0
  %broadcast.splat741 = shufflevector <8 x float> %broadcast.splatinsert740, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aar = load float, ptr %i.jd, align 4, !tbaa !56, !alias.scope !62
  %broadcast.splatinsert742 = insertelement <8 x float> poison, float %i.aar, i64 0
  %broadcast.splat743 = shufflevector <8 x float> %broadcast.splatinsert742, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph726
  %index729 = phi i64 [ 0, %vector.ph726 ], [ %index.next744, %vector.body728 ] ; 2 uses
  %i.aas = add nuw i64 %i.rm, %index729           ; 2 uses
  %i.aat = shl nuw nsw i64 %i.aas, 4
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aat ; 2 uses
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.aau, i64 %i.rd
  %wide.vec730.a = load <32 x float>, ptr %i.aau, align 4, !tbaa !56, !alias.scope !63 ; 3 uses
  %strided.vec731.a = shufflevector <32 x float> %wide.vec730.a, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec732.a = shufflevector <32 x float> %wide.vec730.a, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec733.a = shufflevector <32 x float> %wide.vec730.a, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %wide.vec734 = load <32 x float>, ptr %i.aav, align 4, !tbaa !56, !alias.scope !64 ; 3 uses
  %strided.vec735 = shufflevector <32 x float> %wide.vec734, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec736 = shufflevector <32 x float> %wide.vec734, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec737 = shufflevector <32 x float> %wide.vec734, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aaw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec731.a, %strided.vec735 ; 2 uses
  %i.aax = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec732.a, %strided.vec736 ; 2 uses
  %i.aay = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec733.a, %strided.vec737 ; 2 uses
  %i.aaz = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.aas ; 2 uses
  %wide.load = load <8 x float>, ptr %i.aaz, align 4, !tbaa !56, !alias.scope !65, !noalias !66
  %i.aba = fmul reassoc nsz arcp contract afn <8 x float> %i.aaw, %i.aaw
  %i.abb = fmul reassoc nsz arcp contract afn <8 x float> %i.aba, %broadcast.splat739.a
  %i.abc = fmul reassoc nsz arcp contract afn <8 x float> %i.aax, %i.aax
  %i.abd = fmul reassoc nsz arcp contract afn <8 x float> %i.abc, %broadcast.splat741
  %i.abe = fmul reassoc nsz arcp contract afn <8 x float> %i.aay, %i.aay
  %i.abf = fmul reassoc nsz arcp contract afn <8 x float> %i.abe, %broadcast.splat743
  %i.abg = fadd reassoc nsz arcp contract afn <8 x float> %i.abd, %i.abb
  %i.abh = fadd reassoc nsz arcp contract afn <8 x float> %i.abg, %i.abf
  %i.abi = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.abh
  store <8 x float> %i.abi, ptr %i.aaz, align 4, !tbaa !56, !alias.scope !65, !noalias !66
  %index.next744 = add nuw i64 %index729, 8       ; 2 uses
  %i.abj = icmp eq i64 %index.next744, %n.vec727
  br i1 %i.abj, label %.lr.ph494.preheader870, label %vector.body728, !llvm.loop !24

.lr.ph494.preheader870:                           ; preds = %vector.body728, %.lr.ph494.preheader
  %indvars.iv549.ph = phi i64 [ %i.rm, %.lr.ph494.preheader ], [ %i.sz, %vector.body728 ]
  br label %.lr.ph494

.lr.ph494:                                        ; preds = %.lr.ph494.preheader870, %.lr.ph494
  %indvars.iv549 = phi i64 [ %indvars.iv.next550, %.lr.ph494 ], [ %indvars.iv549.ph, %.lr.ph494.preheader870 ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv549, 4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aao, i64 %.idx ; 3 uses
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %i.rd ; 2 uses
  %i.abm = load float, ptr %i.abk, align 4, !tbaa !56
  %i.abn = load float, ptr %i.abl, align 4, !tbaa !56
  %i.abo = fsub reassoc nsz arcp contract afn float %i.abm, %i.abn ; 2 uses
  %i.abp = load float, ptr %i.iw, align 4, !tbaa !56
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %i.abs = load float, ptr %i.jc, align 4, !tbaa !56
  %i.abt = load float, ptr %i.jd, align 4, !tbaa !56
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv549 ; 2 uses
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !56
  %i.abw = fmul reassoc nsz arcp contract afn float %i.abo, %i.abo
  %.neg457 = fmul reassoc nsz arcp contract afn float %i.abw, %i.abp
  %i.abx = load <2 x float>, ptr %i.abq, align 4, !tbaa !56
  %i.aby = load <2 x float>, ptr %i.abr, align 4, !tbaa !56
  %i.abz = fsub reassoc nsz arcp contract afn <2 x float> %i.abx, %i.aby ; 2 uses
  %i.aca = fmul reassoc nsz arcp contract afn <2 x float> %i.abz, %i.abz ; 2 uses
  %i.acb = extractelement <2 x float> %i.aca, i64 0
  %.neg458 = fmul reassoc nsz arcp contract afn float %i.acb, %i.abs
  %i.acc = extractelement <2 x float> %i.aca, i64 1
  %.neg460 = fmul reassoc nsz arcp contract afn float %i.acc, %i.abt
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg458, %.neg457
  %reass.add462 = fadd reassoc nsz arcp contract afn float %reass.add, %.neg460
  %i.acd = fsub reassoc nsz arcp contract afn float %i.abv, %reass.add462
  store float %i.acd, ptr %i.abu, align 4, !tbaa !56
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1 ; 2 uses
  %i.ace = icmp slt i64 %indvars.iv.next550, %i.rn
  br i1 %i.ace, label %.lr.ph494, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph494, %.lr.ph497, %.lr.ph500, %bb.aa, %bb.y, %bb.w, %bb.z
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %i.acf = icmp slt i64 %indvars.iv.next566, %i.rp
  br i1 %i.acf, label %bb.u, label %._crit_edge504.a

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge515
  %indvars.iv582 = phi i64 [ %indvars.iv562, %.preheader.lr.ph.preheader ], [ %indvars.iv.next583, %._crit_edge515 ] ; 2 uses
  %i.acg = trunc nsw i64 %indvars.iv582 to i32
  %.reass519 = mul i32 %factor.op.mul518, %i.acg
  %i.ach = sext i32 %.reass519 to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ach ; 2 uses
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.acj = add nuw i64 %indvars.iv545.a, %index
  %i.ack = shl nuw nsw i64 %i.acj, 4
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.ack ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.acl, align 4, !tbaa !56 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec653 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec654 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec655 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 5 uses
  %i.acm = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec, %strided.vec655
  %i.acn = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec653, %strided.vec655
  %i.aco = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec654, %strided.vec655
  %i.acp = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec655, %strided.vec655
  %i.acq = shufflevector <4 x float> %i.acm, <4 x float> %i.acn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acr = shufflevector <4 x float> %i.aco, <4 x float> %i.acp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.acq, <8 x float> %i.acr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.acl, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.acs = icmp eq i64 %index.next, %n.vec
  br i1 %i.acs, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge515, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph, %middle.block
  %indvars.iv579.ph = phi i64 [ %indvars.iv545.a, %.preheader.lr.ph ], [ %i.li, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv579 = phi i64 [ %indvars.iv.next580, %.preheader ], [ %indvars.iv579.ph, %.preheader.preheader ] ; 2 uses
  %.idx633 = shl nuw nsw i64 %indvars.iv579, 4
  %i.act = getelementptr inbounds nuw i8, ptr %i.aci, i64 %.idx633 ; 2 uses
  %i.acu = load <4 x float>, ptr %i.act, align 4, !tbaa !56 ; 2 uses
  %i.acv = shufflevector <4 x float> %i.acu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.acw = fdiv reassoc nsz arcp contract afn <4 x float> %i.acu, %i.acv
  store <4 x float> %i.acw, ptr %i.act, align 4, !tbaa !56
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %i.acx = icmp slt i64 %indvars.iv.next580, %i.ld
  br i1 %i.acx, label %.preheader, label %._crit_edge515, !llvm.loop !27

._crit_edge515:                                   ; preds = %.preheader, %middle.block
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %i.acy = icmp slt i64 %indvars.iv.next583, %i.le
  br i1 %i.acy, label %.preheader.lr.ph, label %.loopexit471

.preheader463.lr.ph:                              ; preds = %.preheader463.lr.ph.preheader, %._crit_edge508
  %indvar658 = phi i32 [ 0, %.preheader463.lr.ph.preheader ], [ %indvar.next659, %._crit_edge508 ] ; 2 uses
  %indvars.iv575 = phi i64 [ %indvars.iv562, %.preheader463.lr.ph.preheader ], [ %indvars.iv.next576, %._crit_edge508 ] ; 3 uses
  %i.acz = mul nsw i64 %indvars.iv575, %i.s
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.acz ; 5 uses
  %i.adb = trunc nsw i64 %indvars.iv575 to i32
  %.reass = mul i32 %factor.op.mul, %i.adb
  %i.adc = sext i32 %.reass to i64
  %i.add = getelementptr inbounds [4 x i8], ptr %1, i64 %i.adc ; 5 uses
  br i1 %min.iters.check671, label %.preheader463.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader463.lr.ph
  %i.ade = mul i32 %i.kp, %indvar658
  %i.adf = add i32 %i.ko, %i.ade
  %i.adg = sext i32 %i.adf to i64
  %i.adh = shl nsw i64 %i.adg, 2                  ; 2 uses
  %scevgep663 = getelementptr i8, ptr %scevgep662, i64 %i.adh
  %scevgep660 = getelementptr i8, ptr %scevgep, i64 %i.adh
  %bound0 = icmp ult ptr %scevgep660, %scevgep669
  %bound1 = icmp ult ptr %scevgep666, %scevgep663
  %found.conflict = and i1 %bound0, %bound1
  %i.adi = or i1 %found.conflict, %stride.check
  br i1 %i.adi, label %.preheader463.preheader, label %vector.body680

vector.body680:                                   ; preds = %vector.memcheck, %vector.body680
  %index681 = phi i64 [ %index.next697, %vector.body680 ], [ 0, %vector.memcheck ] ; 2 uses
  %i.adj = add nuw i64 %indvars.iv545.a, %index681
  %i.adk = shl nuw nsw i64 %i.adj, 2              ; 2 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %i.adk ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 12 ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.adk
  %wide.vec682 = load <16 x float>, ptr %i.adn, align 4, !tbaa !56, !alias.scope !67 ; 4 uses
  %strided.vec683 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec684.a = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec685.a = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec686.a = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ado = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat, %strided.vec683
  %wide.vec687 = load <16 x float>, ptr %i.adl, align 4, !tbaa !56, !alias.scope !68, !noalias !67 ; 4 uses
  %strided.vec688 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec689.a = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec690 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec691.a = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec692 = load <16 x float>, ptr %i.adm, align 4, !tbaa !56, !alias.scope !68, !noalias !67
  %strided.vec693 = shufflevector <16 x float> %wide.vec692, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.adp = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat675.a, %strided.vec688
  %i.adq = fdiv reassoc nsz arcp contract afn <4 x float> %i.adp, %strided.vec693
  %i.adr = fadd reassoc nsz arcp contract afn <4 x float> %i.adq, %i.ado
  %i.ads = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat677, %strided.vec684.a
  %i.adt = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat679, %strided.vec689.a
  %i.adu = fdiv reassoc nsz arcp contract afn <4 x float> %i.adt, %strided.vec693
  %i.adv = fadd reassoc nsz arcp contract afn <4 x float> %i.adu, %i.ads
  %i.adw = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat677, %strided.vec685.a
  %wide.vec694 = load <16 x float>, ptr %i.adm, align 4, !tbaa !56, !alias.scope !68, !noalias !67
  %strided.vec695 = shufflevector <16 x float> %wide.vec694, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.adx = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat679, %strided.vec690
  %i.ady = fdiv reassoc nsz arcp contract afn <4 x float> %i.adx, %strided.vec695
  %i.adz = fadd reassoc nsz arcp contract afn <4 x float> %i.ady, %i.adw
  %i.aea = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec686.a, zeroinitializer
  %i.aeb = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec691.a, %strided.vec695
  %i.aec = fadd reassoc nsz arcp contract afn <4 x float> %i.aeb, %i.aea
  %i.aed = shufflevector <4 x float> %i.adr, <4 x float> %i.adv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aee = shufflevector <4 x float> %i.adz, <4 x float> %i.aec, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec696 = shufflevector <8 x float> %i.aed, <8 x float> %i.aee, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec696, ptr %i.adl, align 4, !tbaa !56, !alias.scope !68, !noalias !67
  %index.next697 = add nuw i64 %index681, 4       ; 2 uses
  %i.aef = icmp eq i64 %index.next697, %n.vec673
  br i1 %i.aef, label %.preheader463.preheader, label %vector.body680, !llvm.loop !31

.preheader463.preheader:                          ; preds = %vector.body680, %vector.memcheck, %.preheader463.lr.ph
  %indvars.iv572.ph = phi i64 [ %indvars.iv545.a, %vector.memcheck ], [ %indvars.iv545.a, %.preheader463.lr.ph ], [ %i.la, %vector.body680 ]
  br label %.preheader463

.preheader463:                                    ; preds = %.preheader463.preheader, %.preheader463
  %indvars.iv572 = phi i64 [ %indvars.iv.next573, %.preheader463 ], [ %indvars.iv572.ph, %.preheader463.preheader ] ; 2 uses
  %i.aeg = shl nuw nsw i64 %indvars.iv572, 2      ; 5 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %i.aeg ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 12 ; 2 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.aeg
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !56
  %i.ael = fmul reassoc nsz arcp contract afn float %i.e, %i.aek
  %i.aem = load float, ptr %i.aeh, align 4, !tbaa !56
  %i.aen = load float, ptr %i.aei, align 4, !tbaa !56 ; 2 uses
  %i.aeo = fmul reassoc nsz arcp contract afn float %i.b, %i.aem
  %i.aep = fdiv reassoc nsz arcp contract afn float %i.aeo, %i.aen
  %i.aeq = fadd reassoc nsz arcp contract afn float %i.aep, %i.ael
  store float %i.aeq, ptr %i.aeh, align 4, !tbaa !56
  %i.aer = or disjoint i64 %i.aeg, 1              ; 2 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.aer
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !56
  %i.aeu = fmul reassoc nsz arcp contract afn float %i.f, %i.aet
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %i.aer ; 2 uses
  %i.aew = or disjoint i64 %i.aeg, 2              ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.aew
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %i.aew
  %i.aez = load float, ptr %i.aei, align 4, !tbaa !56 ; 2 uses
  %i.afa = load <2 x float>, ptr %i.aev, align 4, !tbaa !56
  %i.afb = fmul reassoc nsz arcp contract afn <2 x float> %i.gk, %i.afa ; 2 uses
  %i.afc = extractelement <2 x float> %i.afb, i64 0
  %i.afd = fdiv reassoc nsz arcp contract afn float %i.afc, %i.aen
  %i.afe = fadd reassoc nsz arcp contract afn float %i.afd, %i.aeu
  store float %i.afe, ptr %i.aev, align 4, !tbaa !56
  %i.aff = load float, ptr %i.aex, align 4, !tbaa !56
  %i.afg = fmul reassoc nsz arcp contract afn float %i.f, %i.aff
  %i.afh = extractelement <2 x float> %i.afb, i64 1
  %i.afi = fdiv reassoc nsz arcp contract afn float %i.afh, %i.aez
  %i.afj = fadd reassoc nsz arcp contract afn float %i.afi, %i.afg
  store float %i.afj, ptr %i.aey, align 4, !tbaa !56
  %i.afk = or disjoint i64 %i.aeg, 3              ; 2 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.afk
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !56
  %i.afn = fmul reassoc nsz arcp contract afn float %i.afm, 0.000000e+00
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %i.afk ; 2 uses
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !56
  %i.afq = fdiv reassoc nsz arcp contract afn float %i.afp, %i.aez
  %i.afr = fadd reassoc nsz arcp contract afn float %i.afq, %i.afn
  store float %i.afr, ptr %i.afo, align 4, !tbaa !56
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %i.afs = icmp slt i64 %indvars.iv.next573, %i.km
  br i1 %i.afs, label %.preheader463, label %._crit_edge508, !llvm.loop !32

._crit_edge508:                                   ; preds = %.preheader463
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %i.aft = icmp slt i64 %indvars.iv.next576, %i.kn
  %indvar.next659 = add i32 %indvar658, 1
  br i1 %i.aft, label %.preheader463.lr.ph, label %.loopexit471

.loopexit471:                                     ; preds = %._crit_edge508, %._crit_edge515, %.preheader472, %.lr.ph510, %.preheader470, %.lr.ph517
  %i.afu = sext i32 %i.it to i64
  %i.afv = icmp slt i64 %indvars.iv.next546.a, %i.afu
  %indvar.next = add i64 %indvar, 1
  br i1 %i.afv, label %bb.r, label %._crit_edge522
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !53}
!12 = distinct !{!12, !54}
!13 = distinct !{!13, !57, !58}
!14 = distinct !{!14, !57, !58}
!15 = distinct !{!15, !58, !57}
!16 = distinct !{!16, !57, !58}
!17 = distinct !{!17, !57, !58}
!18 = distinct !{!18, !58, !57}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !57, !58}
!25 = distinct !{!25, !57}
!26 = distinct !{!26, !57, !58}
!27 = distinct !{!27, !58, !57}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !57, !58}
!32 = distinct !{!32, !57}
!33 = !{!"float", !7, i64 0}
!34 = !{!"any pointer", !7, i64 0}
!35 = !{!"p1 float", !34, i64 0}
!36 = !{!"dt_nlmeans_param_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !35, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68}
!37 = !{!36, !33, i64 8}
!38 = !{!36, !33, i64 12}
!39 = !{!36, !33, i64 16}
!40 = !{!36, !8, i64 24}
!41 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !33, i64 16}
!42 = !{!41, !8, i64 8}
!43 = !{!36, !8, i64 28}
!44 = !{!36, !33, i64 4}
!45 = !{!36, !33, i64 0}
!46 = !{!36, !8, i64 32}
!47 = !{!"short", !7, i64 0}
!48 = !{!"patch_t", !47, i64 0, !47, i64 2, !8, i64 4}
!49 = !{!48, !47, i64 0}
!50 = !{!48, !47, i64 2}
!51 = !{!48, !8, i64 4}
!52 = !{!41, !8, i64 12}
!53 = !{!"llvm.loop.unswitch.partial.disable"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!36, !35, i64 40}
!56 = !{!33, !33, i64 0}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = !{!"branch_weights", i32 8, i32 24}
!61 = !{!36, !33, i64 20}
!62 = !{!20}
!63 = !{!21}
!64 = !{!22}
!65 = !{!23}
!66 = !{!22, !21, !20}
!67 = !{!29}
!68 = !{!30}
end_hunk_0
