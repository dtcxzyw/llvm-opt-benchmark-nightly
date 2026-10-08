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
  %i.cj = load i32, ptr %i.k, align 8, !tbaa !40  ; 17 uses
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
  %scevgep705 = getelementptr i8, ptr %0, i64 -4
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
  %broadcast.splatinsert674 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat675 = shufflevector <4 x float> %broadcast.splatinsert674, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.he = phi i32 [ %i.gn, %.preheader475 ], [ %i.ip, %.loopexit471 ] ; 2 uses
  %i.hf = phi i32 [ %i.go, %.preheader475 ], [ %i.iq, %.loopexit471 ]
  %i.hg = phi i32 [ %i.gp, %.preheader475 ], [ %i.iq, %.loopexit471 ]
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, %i.ga ; 2 uses
  %indvars = trunc i64 %indvars.iv.next563 to i32
  %i.hh = icmp sgt i32 %i.he, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.539.i
  %indvar.next657 = add i32 %indvar656, 1
  %indvar.next665 = add i64 %indvar664, 1
  br i1 %i.hh, label %.preheader475, label %._crit_edge525, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph521, %.loopexit471
  %indvar = phi i64 [ 0, %.lr.ph521 ], [ %indvar.next, %.loopexit471 ] ; 5 uses
  %i.hi = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.ip, %.loopexit471 ]
  %i.hj = phi i32 [ %i.go, %.lr.ph521 ], [ %i.iq, %.loopexit471 ]
  %i.hk = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.is, %.loopexit471 ] ; 3 uses
  %indvars.iv545 = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next546, %.loopexit471 ] ; 21 uses
  %i.hl = phi i32 [ %i.gp, %.lr.ph521 ], [ %i.iq, %.loopexit471 ] ; 5 uses
  %5 = add nuw i64 %.0.i, %indvars.iv545
  %6 = shl i64 %5, 32
  %7 = ashr exact i64 %6, 32
  %i.hm = or disjoint i64 %indvars.iv545, 1
  %i.hn = or disjoint i64 %indvars.iv545, 1
  %i.ho = mul i64 %.0.i, %indvar
  %i.hp = or disjoint i64 %indvars.iv545, 1
  %i.hq = mul i64 %i.gb, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.hq
  %i.hr = getelementptr i8, ptr %1, i64 %i.hq
  %scevgep661 = getelementptr i8, ptr %i.hr, i64 16
  %i.hs = or disjoint i64 %indvars.iv545, 1
  %i.ht = mul i64 %.0.i, %indvar
  %i.hu = xor i64 %i.ht, -1
  %scevgep666 = getelementptr i8, ptr %i.hb, i64 %i.hq
  %scevgep667 = getelementptr i8, ptr %i.hd, i64 %i.hq
  %i.hv = mul i64 %.0.i, %indvar
  %i.hw = or disjoint i64 %indvars.iv545, 1
  %indvars585 = trunc i64 %indvars.iv545 to i32   ; 13 uses
  %i.hx = sub nsw i64 0, %indvars.iv545
  %i.hy = getelementptr [4 x i8], ptr %i.fu, i64 %i.hx ; 17 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.hk) ; 6 uses
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, %.0.i ; 3 uses
  %i.hz = trunc i64 %indvars.iv.next546 to i32
  %i.ia = tail call i32 @llvm.smin.i32(i32 %i.hz, i32 %i.hl) ; 8 uses
  %i.ib = icmp sgt i32 %., %indvars586            ; 3 uses
  br i1 %i.ib, label %.lr.ph, label %.preheader474

.lr.ph:                                           ; preds = %bb.r
  %i.ic = sext i32 %i.ia to i64
  %i.id = sub nsw i64 %i.ic, %indvars.iv545
  %i.ie = shl nsw i64 %i.id, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hk, i32 %indvars.iv)
  %i.if = add i32 %., %i.gr
  %i.ig = add i32 %i.gt, %.
  %xtraiter = and i32 %i.if, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407476.prol = phi i32 [ %i.in, %.prol.preheader ], [ %indvars586, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ih = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.ii = mul nsw i32 %i.ih, %.0407476.prol
  %i.ij = add nsw i32 %i.ii, %indvars585
  %i.ik = shl nsw i32 %i.ij, 2
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %1, i64 %i.il
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.im, i8 0, i64 %i.ie, i1 false)
  %i.in = add nsw i32 %.0407476.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407476.unr = phi i32 [ %indvars586, %.lr.ph ], [ %i.in, %.prol.preheader ]
  %i.io = icmp ult i32 %i.ig, 3
  br i1 %i.io, label %.preheader474.loopexit, label %.lr.ph.new

.preheader474.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !52 ; 2 uses
  %.pre599 = load i32, ptr %i.fg, align 4, !tbaa !42 ; 2 uses
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.loopexit, %bb.r
  %i.ip = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hi, %bb.r ] ; 2 uses
  %i.iq = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hj, %bb.r ] ; 5 uses
  %i.ir = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hl, %bb.r ] ; 7 uses
  %i.is = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hk, %bb.r ] ; 5 uses
  %i.it = load ptr, ptr %i.fv, align 8, !tbaa !55 ; 9 uses
  %i.iu = add i32 %indvars585, %i.fw              ; 2 uses
  %i.iv = add i32 %i.ia, %i.cj                    ; 3 uses
  %i.iw = sext i32 %i.iu to i64
  %i.ix = shl nsw i64 %i.iw, 2
  %scevgep.i = getelementptr i8, ptr %i.hy, i64 %i.ix
  %i.iy = sub i32 %i.cj, %indvars585
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 5 uses
  %i.jb = xor i32 %indvars585, -1
  %i.jc = add i32 %i.ia, %i.jb
  %i.jd = sext i32 %i.ir to i64
  %i.je = shl nsw i64 %i.jd, 2
  %smin547 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %indvars585)
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.hy, i64 %i.fs
  %invariant.gep643 = getelementptr [4 x i8], ptr %i.hy, i64 %i.fs
  %scevgep711 = getelementptr i8, ptr %i.it, i64 12
  %8 = sext i32 %i.hl to i64
  %smin747 = tail call i64 @llvm.smin.i64(i64 %8, i64 %7)
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407476 = phi i32 [ %i.kg, %.lr.ph.new ], [ %.0407476.unr, %.prol.loopexit ] ; 5 uses
  %i.jf = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jg = mul nsw i32 %i.jf, %.0407476
  %i.jh = add nsw i32 %i.jg, %indvars585
  %i.ji = shl nsw i32 %i.jh, 2
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.ie, i1 false)
  %i.jl = add nsw i32 %.0407476, 1
  %i.jm = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jn = mul nsw i32 %i.jm, %i.jl
  %i.jo = add nsw i32 %i.jn, %indvars585
  %i.jp = shl nsw i32 %i.jo, 2
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jq
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jr, i8 0, i64 %i.ie, i1 false)
  %i.js = add nsw i32 %.0407476, 2
  %i.jt = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.ju = mul nsw i32 %i.jt, %i.js
  %i.jv = add nsw i32 %i.ju, %indvars585
  %i.jw = shl nsw i32 %i.jv, 2
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jy, i8 0, i64 %i.ie, i1 false)
  %i.jz = add nsw i32 %.0407476, 3
  %i.ka = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.kb = mul nsw i32 %i.ka, %i.jz
  %i.kc = add nsw i32 %i.kb, %indvars585
  %i.kd = shl nsw i32 %i.kc, 2
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ke
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kf, i8 0, i64 %i.ie, i1 false)
  %i.kg = add nsw i32 %.0407476, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kg, %smin
  br i1 %exitcond.not.3, label %.preheader474.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge504
  br i1 %spec.select448, label %.preheader470, label %.preheader472

.preheader472:                                    ; preds = %bb.s
  br i1 %i.ib, label %.lr.ph510, label %.loopexit471

.lr.ph510:                                        ; preds = %.preheader472
  %factor.op.mul = shl i32 %i.ir, 2
  %i.kh = sext i32 %i.hl to i64
  %i.ki = icmp slt i64 %indvars.iv545, %i.kh
  br i1 %i.ki, label %.preheader463.lr.ph.preheader, label %.loopexit471

.preheader463.lr.ph.preheader:                    ; preds = %.lr.ph510
  %i.kj = sext i32 %i.ia to i64                   ; 3 uses
  %i.kk = sext i32 %. to i64                      ; 2 uses
  %i.kl = mul i32 %i.gu, %i.ir
  %i.km = shl i32 %i.ir, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.kj, i64 %i.hs)
  %i.kn = add i64 %smax, %i.hu
  %i.ko = shl nsw i64 %i.kn, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.ko
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kk, i64 %i.gy)
  %i.kp = add i64 %smax668, %i.gx
  %i.kq = mul i64 %i.gf, %i.kp
  %i.kr = getelementptr i8, ptr %scevgep667, i64 %i.kq
  %scevgep669 = getelementptr i8, ptr %i.kr, i64 %i.ko
  %i.ks = tail call i64 @llvm.smax.i64(i64 %i.kj, i64 %i.hp) ; 2 uses
  %i.kt = sub i64 %i.ks, %i.ho                    ; 2 uses
  %min.iters.check671 = icmp ult i64 %i.kt, 5
  %i.ku = and i64 %i.ks, 3                        ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %i.kw = select i1 %i.kv, i64 4, i64 %i.ku
  %n.vec673 = sub i64 %i.kt, %i.kw                ; 2 uses
  %i.kx = add i64 %indvars.iv545, %n.vec673
  br label %.preheader463.lr.ph

.preheader470:                                    ; preds = %bb.s
  br i1 %i.ib, label %.lr.ph517, label %.loopexit471

.lr.ph517:                                        ; preds = %.preheader470
  %factor.op.mul518 = shl i32 %i.ir, 2
  %i.ky = sext i32 %i.hl to i64
  %i.kz = icmp slt i64 %indvars.iv545, %i.ky
  br i1 %i.kz, label %.preheader.lr.ph.preheader, label %.loopexit471

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph517
  %i.la = sext i32 %i.ia to i64                   ; 2 uses
  %i.lb = sext i32 %. to i64
  %i.lc = tail call i64 @llvm.smax.i64(i64 %i.la, i64 %i.hw) ; 2 uses
  %i.ld = sub i64 %i.lc, %i.hv                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.ld, 4
  %i.le = and i64 %i.lc, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.ld, %i.le               ; 2 uses
  %i.lf = add i64 %indvars.iv545, %n.vec
  %cmp.n = icmp eq i64 %i.le, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader474, %._crit_edge504
  %indvars.iv567 = phi i64 [ 0, %.preheader474 ], [ %indvars.iv.next568, %._crit_edge504 ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv567 ; 4 uses
  %i.lh = load i16, ptr %i.lg, align 8, !tbaa !49 ; 5 uses
  %i.li = icmp sgt i16 %i.lh, 0
  %i.lj = sext i16 %i.lh to i32                   ; 2 uses
  %i.lk = sub nsw i32 0, %i.lj
  %i.ll = select i1 %i.li, i32 0, i32 %i.lk       ; 2 uses
  %i.lm = tail call i32 @llvm.smax.i32(i32 %i.ll, i32 %indvars586) ; 7 uses
  %i.ln = icmp slt i16 %i.lh, 0
  %spec.select453 = tail call i16 @llvm.smax.i16(i16 %i.lh, i16 0)
  %spec.select = zext nneg i16 %spec.select453 to i32 ; 2 uses
  %i.lo = sub i32 %i.is, %spec.select
  %spec.select450 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lo) ; 3 uses
  %i.lp = tail call i16 @llvm.smin.i16(i16 %i.lh, i16 0)
  %i.lq = sext i16 %i.lp to i32
  %i.lr = sub nsw i32 %i.cj, %i.lq
  %i.ls = tail call i32 @llvm.smax.i32(i32 %i.lm, i32 %i.lr) ; 2 uses
  %i.lt = add nsw i32 %i.cj, %spec.select
  %i.lu = xor i32 %i.lt, -1
  %i.lv = add i32 %i.is, %i.lu
  %spec.select452 = tail call i32 @llvm.smin.i32(i32 %spec.select450, i32 %i.lv) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !50 ; 2 uses
  %i.ly = sext i16 %i.lx to i32                   ; 3 uses
  %i.lz = sub nsw i32 0, %i.ly
  %i.ma = tail call i32 @llvm.smax.i32(i32 %indvars585, i32 %i.lz) ; 5 uses
  %i.mb = sub i32 %i.ir, %i.ly                    ; 2 uses
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 %i.mb) ; 3 uses
  %i.mc = add nsw i32 %indvars585, %i.ly          ; 2 uses
  %i.md = tail call i32 @llvm.smin.i32(i32 %indvars585, i32 %i.mc)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.md) ; 2 uses
  %i.me = sub nsw i32 %indvars585, %..i           ; 5 uses
  %i.mf = tail call i16 @llvm.smax.i16(i16 %i.lx, i16 0)
  %i.mg = zext nneg i16 %i.mf to i32
  %i.mh = add i32 %i.ia, %i.mg
  %i.mi = sub i32 %i.ir, %i.mh
  %i.mj = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mi) ; 2 uses
  %i.mk = add i32 %i.mj, %i.ia                    ; 5 uses
  %i.ml = add i32 %i.lm, %i.lj                    ; 2 uses
  %i.mm = tail call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.ml)
  %i.mn = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mm) ; 2 uses
  %i.mo = sub i32 %i.lm, %i.mn                    ; 2 uses
  %.v138.i = select i1 %i.ln, i32 %i.lm, i32 %i.ml ; 2 uses
  %i.mp = xor i32 %.v138.i, -1
  %i.mq = add i32 %i.is, %i.mp
  %i.mr = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mq)
  %i.ms = add i32 %i.mr, %i.lm                    ; 2 uses
  %i.mt = tail call i32 @llvm.smin.i32(i32 %i.me, i32 %i.iv) ; 2 uses
  %i.mu = icmp slt i32 %i.iu, %i.mt
  br i1 %i.mu, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.mv = add i32 %i.iy, %i.mt
  %i.mw = zext i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %i.my = add nuw nsw i64 %i.mx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.my, i1 false), !tbaa !56
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.mz = icmp slt i32 %i.me, %i.mk               ; 4 uses
  br i1 %i.mz, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mo, %i.ms
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
  %i.na = sext i32 %i.me to i64
  %i.nb = shl nuw nsw i64 %i.na, 2
  %scevgep158.i = getelementptr i8, ptr %i.hy, i64 %i.nb
  %i.nc = add i32 %i.jc, %..i
  %i.nd = add i32 %i.nc, %i.mj
  %i.ne = zext i32 %i.nd to i64
  %i.nf = shl nuw nsw i64 %i.ne, 2
  %i.ng = add nuw nsw i64 %i.nf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.ng, i1 false), !tbaa !56
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !51
  %i.nj = sext i32 %i.ni to i64                   ; 4 uses
  %i.nk = sext i32 %i.mo to i64                   ; 5 uses
  %i.nl = add i32 %i.ms, 1
  %i.nm = sext i32 %i.me to i64
  %i.nn = sext i32 %i.mk to i64
  %9 = xor i32 %.v138.i, -1
  %10 = add i32 %i.is, %9
  %smin778 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %10)
  %i.no = add i32 %i.mn, %smin778                 ; 3 uses
  %i.np = zext i32 %i.no to i64
  %i.nq = add nuw nsw i64 %i.np, 1                ; 5 uses
  %min.iters.check780 = icmp ult i32 %i.no, 3
  %min.iters.check782 = icmp ult i32 %i.no, 15
  %i.nr = and i64 %i.nq, 12
  %n.vec784 = and i64 %i.nq, 8589934576           ; 4 uses
  %i.ns = add nsw i64 %n.vec784, %i.nk            ; 2 uses
  %broadcast.splatinsert793 = insertelement <8 x i64> poison, i64 %i.nk, i64 0
  %broadcast.splat794 = shufflevector <8 x i64> %broadcast.splatinsert793, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat794, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n824 = icmp eq i64 %i.nq, %n.vec784
  %min.epilog.iters.check831 = icmp eq i64 %i.nr, 0
  %n.vec833 = and i64 %i.nq, 8589934588           ; 3 uses
  %i.nt = add nsw i64 %n.vec833, %i.nk
  %cmp.n864 = icmp eq i64 %i.nq, %n.vec833
  br label %iter.check828

iter.check828:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nm, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %i.nu = load <2 x float>, ptr %i.it, align 4, !tbaa !56 ; 5 uses
  %i.nv = load float, ptr %i.ja, align 4, !tbaa !56 ; 3 uses
  br i1 %min.iters.check780, label %vec.epilog.scalar.ph829.preheader, label %vector.main.loop.iter.check781

vector.main.loop.iter.check781:                   ; preds = %iter.check828
  br i1 %min.iters.check782, label %vec.epilog.ph832, label %vector.ph783

vector.ph783:                                     ; preds = %vector.main.loop.iter.check781
  %broadcast.splat786.a = shufflevector <2 x float> %i.nu, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat788 = shufflevector <2 x float> %i.nu, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert789 = insertelement <8 x float> poison, float %i.nv, i64 0
  %broadcast.splat790 = shufflevector <8 x float> %broadcast.splatinsert789, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body795

vector.body795:                                   ; preds = %vector.ph783, %vector.body795
  %index796 = phi i64 [ 0, %vector.ph783 ], [ %index.next821, %vector.body795 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph783 ], [ %vec.ind.next, %vector.body795 ] ; 3 uses
  %vec.phi797 = phi <8 x float> [ zeroinitializer, %vector.ph783 ], [ %i.ou, %vector.body795 ]
  %vec.phi798 = phi <8 x float> [ zeroinitializer, %vector.ph783 ], [ %i.ov, %vector.body795 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.nw = mul nsw <8 x i64> %vec.ind, %broadcast.splat792
  %i.nx = mul nsw <8 x i64> %step.add, %broadcast.splat792
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nw ; 4 uses
  %wide.gep799 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nx ; 4 uses
  %wide.gep800 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.nj ; 3 uses
  %wide.gep801.a = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep799, i64 %i.nj ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather802 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep799, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather803.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep800, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather804.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.ny = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather803.a ; 2 uses
  %i.nz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather802, %wide.masked.gather804.a ; 2 uses
  %i.oa = fmul reassoc nsz arcp contract afn <8 x float> %i.ny, %i.ny
  %i.ob = fmul reassoc nsz arcp contract afn <8 x float> %i.nz, %i.nz
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %i.oa, %broadcast.splat786.a
  %i.od = fmul reassoc nsz arcp contract afn <8 x float> %i.ob, %broadcast.splat786.a
  %wide.gep805.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep806.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep799, i64 4
  %wide.masked.gather807.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep805.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather808.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep806.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep809.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep800, i64 4
  %wide.gep810.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801.a, i64 4
  %wide.masked.gather811.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep809.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather812.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep810.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oe = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather807.a, %wide.masked.gather811.a ; 2 uses
  %i.of = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather808.a, %wide.masked.gather812.a ; 2 uses
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %i.oe, %i.oe
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %i.of
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %broadcast.splat788
  %i.oj = fmul reassoc nsz arcp contract afn <8 x float> %i.oh, %broadcast.splat788
  %wide.gep813.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep814.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep799, i64 8
  %wide.masked.gather815.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep813.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather816.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep814.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep817 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep800, i64 8
  %wide.gep818 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801.a, i64 8
  %wide.masked.gather819 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep817, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather820 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep818, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.ok = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather815.a, %wide.masked.gather819 ; 2 uses
  %i.ol = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather816.a, %wide.masked.gather820 ; 2 uses
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %i.ok
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %i.ol
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %broadcast.splat790
  %i.op = fmul reassoc nsz arcp contract afn <8 x float> %i.on, %broadcast.splat790
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi797, %i.oc
  %i.or = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi798, %i.od
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %i.oi, %i.oq
  %i.ot = fadd reassoc nsz arcp contract afn <8 x float> %i.oj, %i.or
  %i.ou = fadd reassoc nsz arcp contract afn <8 x float> %i.os, %i.oo ; 2 uses
  %i.ov = fadd reassoc nsz arcp contract afn <8 x float> %i.ot, %i.op ; 2 uses
  %index.next821 = add nuw i64 %index796, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ow = icmp eq i64 %index.next821, %n.vec784
  br i1 %i.ow, label %middle.block822, label %vector.body795, !llvm.loop !13

middle.block822:                                  ; preds = %vector.body795
  %bin.rdx823 = fadd reassoc nsz arcp contract afn <8 x float> %i.ov, %i.ou
  %i.ox = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx823) ; 3 uses
  br i1 %cmp.n824, label %._crit_edge.i447, label %vec.epilog.iter.check830

vec.epilog.iter.check830:                         ; preds = %middle.block822
  %slprdx.init867 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ox, i64 0
  br i1 %min.epilog.iters.check831, label %vec.epilog.scalar.ph829.preheader, label %vec.epilog.ph832, !prof !59

vec.epilog.ph832:                                 ; preds = %vector.main.loop.iter.check781, %vec.epilog.iter.check830
  %vec.epilog.resume.val825 = phi i64 [ %n.vec784, %vec.epilog.iter.check830 ], [ 0, %vector.main.loop.iter.check781 ]
  %bc.resume.val826 = phi i64 [ %i.ns, %vec.epilog.iter.check830 ], [ %i.nk, %vector.main.loop.iter.check781 ]
  %bc.merge.rdx827 = phi float [ %i.ox, %vec.epilog.iter.check830 ], [ 0.000000e+00, %vector.main.loop.iter.check781 ]
  %i.oy = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx827, i64 0
  %broadcast.splat835.a = shufflevector <2 x float> %i.nu, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat837 = shufflevector <2 x float> %i.nu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert838.a = insertelement <4 x float> poison, float %i.nv, i64 0
  %broadcast.splat839.a = shufflevector <4 x float> %broadcast.splatinsert838.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert842 = insertelement <4 x i64> poison, i64 %bc.resume.val826, i64 0
  %broadcast.splat843 = shufflevector <4 x i64> %broadcast.splatinsert842, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction844 = add nsw <4 x i64> %broadcast.splat843, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body845

vec.epilog.vector.body845:                        ; preds = %vec.epilog.vector.body845, %vec.epilog.ph832
  %index846 = phi i64 [ %vec.epilog.resume.val825, %vec.epilog.ph832 ], [ %index.next861, %vec.epilog.vector.body845 ]
  %vec.ind847 = phi <4 x i64> [ %induction844, %vec.epilog.ph832 ], [ %vec.ind.next862, %vec.epilog.vector.body845 ] ; 2 uses
  %vec.phi848 = phi <4 x float> [ %i.oy, %vec.epilog.ph832 ], [ %i.pl, %vec.epilog.vector.body845 ]
  %i.oz = mul nsw <4 x i64> %vec.ind847, %broadcast.splat841
  %wide.gep849.a = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.oz ; 4 uses
  %wide.gep850 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep849.a, i64 %i.nj ; 3 uses
  %wide.masked.gather851 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep849.a, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather852.a = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep850, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pa = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather851, %wide.masked.gather852.a ; 2 uses
  %i.pb = fmul reassoc nsz arcp contract afn <4 x float> %i.pa, %i.pa
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %broadcast.splat835.a
  %wide.gep853.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep849.a, i64 4
  %wide.masked.gather854.a = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853.a, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep855.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep850, i64 4
  %wide.masked.gather856.a = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855.a, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pd = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather854.a, %wide.masked.gather856.a ; 2 uses
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.pd, %i.pd
  %i.pf = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %broadcast.splat837
  %wide.gep857 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep849.a, i64 8
  %wide.masked.gather858 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep857, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep859 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep850, i64 8
  %wide.masked.gather860 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep859, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pg = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather858, %wide.masked.gather860 ; 2 uses
  %i.ph = fmul reassoc nsz arcp contract afn <4 x float> %i.pg, %i.pg
  %i.pi = fmul reassoc nsz arcp contract afn <4 x float> %i.ph, %broadcast.splat839.a
  %i.pj = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi848, %i.pc
  %i.pk = fadd reassoc nsz arcp contract afn <4 x float> %i.pf, %i.pj
  %i.pl = fadd reassoc nsz arcp contract afn <4 x float> %i.pk, %i.pi ; 2 uses
  %index.next861 = add nuw i64 %index846, 4       ; 2 uses
  %vec.ind.next862 = add nsw <4 x i64> %vec.ind847, splat (i64 4)
  %i.pm = icmp eq i64 %index.next861, %n.vec833
  br i1 %i.pm, label %vec.epilog.middle.block863, label %vec.epilog.vector.body845, !llvm.loop !14

vec.epilog.middle.block863:                       ; preds = %vec.epilog.vector.body845
  %i.pn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pl) ; 2 uses
  %slprdx.init = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pn, i64 0
  br i1 %cmp.n864, label %._crit_edge.i447, label %vec.epilog.scalar.ph829.preheader

vec.epilog.scalar.ph829.preheader:                ; preds = %iter.check828, %vec.epilog.iter.check830, %vec.epilog.middle.block863
  %indvars.iv.i.ph = phi i64 [ %i.nk, %iter.check828 ], [ %i.ns, %vec.epilog.iter.check830 ], [ %i.nt, %vec.epilog.middle.block863 ]
  %slprdx.acc.ph = phi <4 x float> [ zeroinitializer, %iter.check828 ], [ %slprdx.init867, %vec.epilog.iter.check830 ], [ %slprdx.init, %vec.epilog.middle.block863 ]
  %i.po = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.nv, i64 2
  %i.pp = shufflevector <2 x float> %i.nu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> %i.po, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %vec.epilog.scalar.ph829

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.pr = tail call i32 @llvm.smax.i32(i32 %i.me, i32 %i.mk) ; 3 uses
  %i.ps = icmp slt i32 %i.pr, %i.iv
  br i1 %i.ps, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.pr to i64
  %i.pt = shl nuw nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.hy, i64 %i.pt
  %i.pu = xor i32 %i.pr, -1
  %i.pv = add i32 %i.iv, %i.pu
  %i.pw = zext i32 %i.pv to i64
  %i.px = shl nuw nsw i64 %i.pw, 2
  %i.py = add nuw nsw i64 %i.px, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.py, i1 false), !tbaa !56
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph829, %vec.epilog.middle.block863, %middle.block822
  %slprdx.exit = phi <4 x float> [ poison, %vec.epilog.middle.block863 ], [ poison, %middle.block822 ], [ %slprdx.acc868, %vec.epilog.scalar.ph829 ]
  %slprdx.fromloop = phi i1 [ false, %vec.epilog.middle.block863 ], [ false, %middle.block822 ], [ true, %vec.epilog.scalar.ph829 ]
  %.lcssa = phi float [ %i.pn, %vec.epilog.middle.block863 ], [ %i.ox, %middle.block822 ], [ poison, %vec.epilog.scalar.ph829 ]
  %i.pz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit)
  %slprdx.sel = select i1 %slprdx.fromloop, float %i.pz, float %.lcssa
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv156.i
  store float %slprdx.sel, ptr %i.qa, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.qb = icmp slt i64 %indvars.iv.next157.i, %i.nn
  br i1 %i.qb, label %iter.check828, label %._crit_edge148.i

vec.epilog.scalar.ph829:                          ; preds = %vec.epilog.scalar.ph829.preheader, %vec.epilog.scalar.ph829
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph829 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph829.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x float> [ %slprdx.acc868, %vec.epilog.scalar.ph829 ], [ %slprdx.acc.ph, %vec.epilog.scalar.ph829.preheader ]
  %i.qc = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qc ; 3 uses
  %i.qd = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.nj ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !56
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !56
  %i.qi = load <2 x float>, ptr %gep.i, align 4, !tbaa !56
  %i.qj = load <2 x float>, ptr %i.qd, align 4, !tbaa !56
  %i.qk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qf, i64 2
  %i.ql = shufflevector <2 x float> %i.qi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> %i.qk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qh, i64 2
  %i.qo = shufflevector <2 x float> %i.qj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> %i.qn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qq = fsub reassoc nsz arcp contract afn <4 x float> %i.qm, %i.qp ; 2 uses
  %i.qr = insertelement <4 x float> %i.qq, float 1.000000e+00, i64 3
  %i.qs = fmul reassoc nsz arcp contract afn <4 x float> %i.qq, %i.qr
  %i.qt = fmul reassoc nsz arcp contract afn <4 x float> %i.qs, %i.pq
  %slprdx.acc868 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %i.qt ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.nl, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph829, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qu = icmp slt i32 %i.lm, %spec.select450
  br i1 %i.qu, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.qv = sub nsw i32 %i.ma, %i.cj
  %i.qw = add i32 %i.ma, %i.cj                    ; 2 uses
  %i.qx = tail call i32 @llvm.smin.i32(i32 %i.qw, i32 %.437) ; 2 uses
  %i.qy = icmp slt i32 %i.qv, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !51
  %i.rb = icmp slt i32 %i.ma, %.437               ; 2 uses
  %i.rc = sext i32 %i.ra to i64                   ; 8 uses
  %i.rd = tail call i32 @llvm.smin.i32(i32 %i.ls, i32 %spec.select452)
  %i.re = sub i32 %i.ma, %i.cj
  %i.rf = sext i32 %i.re to i64                   ; 6 uses
  %i.rg = sext i32 %i.qx to i64
  %i.rh = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.ri = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.mc)
  %i.rj = sub i32 0, %smin548
  %i.rk = sext i32 %i.rj to i64                   ; 4 uses
  %i.rl = add i64 %indvars.iv545, %i.rk           ; 7 uses
  %i.rm = sext i32 %i.mk to i64                   ; 4 uses
  %i.rn = sext i32 %i.ll to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.rn) ; 3 uses
  %i.ro = sext i32 %spec.select450 to i64         ; 3 uses
  %i.rp = sext i32 %i.ls to i64
  %i.rq = sext i32 %spec.select452 to i64
  %i.rr = sext i32 %i.rd to i64
  %invariant.op = add nsw i64 %i.ro, -1
  %i.rs = shl nsw i64 %i.rl, 2
  %scevgep701 = getelementptr i8, ptr %i.hy, i64 %i.rs ; 3 uses
  %i.rt = add i64 %i.hn, %i.rk
  %11 = sext i32 %i.mk to i64
  %smax702 = tail call i64 @llvm.smax.i64(i64 %i.rt, i64 %11) ; 2 uses
  %i.ru = shl nsw i64 %smax702, 2
  %scevgep703 = getelementptr i8, ptr %i.hy, i64 %i.ru ; 3 uses
  %i.rv = sub i64 %smax564, %i.fs
  %i.rw = mul i64 %i.gg, %i.rv                    ; 2 uses
  %i.rx = shl nsw i64 %i.rl, 4                    ; 2 uses
  %i.ry = shl nsw i64 %i.rc, 2                    ; 2 uses
  %i.rz = getelementptr i8, ptr %0, i64 %i.rw
  %i.sa = getelementptr i8, ptr %i.rz, i64 %i.rx
  %scevgep704 = getelementptr i8, ptr %i.sa, i64 %i.ry
  %i.sb = add nuw i64 %smax564, 1
  %smax706 = tail call i64 @llvm.smax.i64(i64 %i.ro, i64 %i.sb)
  %i.sc = sub i64 %smax706, %i.fs
  %reass.sub = shl i64 %i.sc, 2
  %i.sd = add i64 %reass.sub, -4
  %i.se = mul i64 %i.sd, %i.s
  %i.sf = shl nsw i64 %smax702, 4
  %i.sg = add i64 %i.se, %i.sf                    ; 2 uses
  %i.sh = getelementptr i8, ptr %scevgep705, i64 %i.sg
  %scevgep707 = getelementptr i8, ptr %i.sh, i64 %i.ry
  %i.si = getelementptr i8, ptr %0, i64 %i.rw
  %scevgep708 = getelementptr i8, ptr %i.si, i64 %i.rx
  %scevgep710 = getelementptr i8, ptr %scevgep709, i64 %i.sg
  %12 = sext i32 %i.qw to i64
  %smin748 = tail call i64 @llvm.smin.i64(i64 %smin747, i64 %12)
  %13 = sext i32 %i.mb to i64
  %smin749 = tail call i64 @llvm.smin.i64(i64 %smin748, i64 %13)
  %i.sj = sub i64 %smin749, %i.rf                 ; 7 uses
  %min.iters.check751 = icmp ult i64 %i.sj, 8
  %min.iters.check752 = icmp ult i64 %i.sj, 32
  %i.sk = and i64 %i.sj, 24
  %n.vec754 = and i64 %i.sj, -32                  ; 4 uses
  %i.sl = add i64 %n.vec754, %i.rf
  %invariant.gep898 = getelementptr [4 x i8], ptr %i.hy, i64 %i.rf
  %cmp.n768 = icmp eq i64 %i.sj, %n.vec754
  %min.epilog.iters.check = icmp eq i64 %i.sk, 0
  %n.vec770 = and i64 %i.sj, -8                   ; 3 uses
  %i.sm = add i64 %n.vec770, %i.rf
  %invariant.gep900 = getelementptr [4 x i8], ptr %i.hy, i64 %i.rf
  %cmp.n775 = icmp eq i64 %i.sj, %n.vec770
  %i.sn = add i64 %i.hm, %i.rk
  %i.so = tail call i64 @llvm.smax.i64(i64 %i.sn, i64 %i.rm)
  %i.sp = add i64 %indvars.iv545, %i.rk
  %i.sq = sub i64 %i.so, %i.sp                    ; 3 uses
  %min.iters.check725 = icmp ult i64 %i.sq, 9
  %bound0712 = icmp ult ptr %scevgep701, %scevgep707
  %bound1713 = icmp ult ptr %scevgep704, %scevgep703
  %found.conflict714 = and i1 %bound0712, %bound1713
  %bound0716 = icmp ult ptr %scevgep701, %scevgep710
  %bound1717 = icmp ult ptr %scevgep708, %scevgep703
  %found.conflict718 = and i1 %bound0716, %bound1717
  %i.sr = or i1 %found.conflict718, %stride.check719
  %conflict.rdx = or i1 %found.conflict714, %i.sr
  %bound0720 = icmp ult ptr %scevgep701, %scevgep711
  %bound1721 = icmp ult ptr %i.it, %scevgep703
  %found.conflict722 = and i1 %bound0720, %bound1721
  %conflict.rdx723 = or i1 %conflict.rdx, %found.conflict722
  %i.ss = and i64 %i.sq, 7                        ; 2 uses
  %i.st = icmp eq i64 %i.ss, 0
  %i.su = select i1 %i.st, i64 8, i64 %i.ss
  %n.vec727 = sub i64 %i.sq, %i.su                ; 2 uses
  %i.sv = add i64 %i.rl, %n.vec727
  br label %bb.u

._crit_edge504:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.qy, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check751, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check752, label %vec.epilog.ph, label %vector.body755

vector.body755:                                   ; preds = %vector.main.loop.iter.check, %vector.body755
  %index756 = phi i64 [ %index.next764, %vector.body755 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.sz, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi757 = phi <8 x float> [ %i.ta, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi758 = phi <8 x float> [ %i.tb, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi759 = phi <8 x float> [ %i.tc, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep899 = getelementptr [4 x i8], ptr %invariant.gep898, i64 %index756 ; 4 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %gep899, i64 32
  %i.sx = getelementptr inbounds nuw i8, ptr %gep899, i64 64
  %i.sy = getelementptr inbounds nuw i8, ptr %gep899, i64 96
  %wide.load760.a = load <8 x float>, ptr %gep899, align 4, !tbaa !56
  %wide.load761 = load <8 x float>, ptr %i.sw, align 4, !tbaa !56
  %wide.load762 = load <8 x float>, ptr %i.sx, align 4, !tbaa !56
  %wide.load763 = load <8 x float>, ptr %i.sy, align 4, !tbaa !56
  %i.sz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load760.a, %vec.phi ; 2 uses
  %i.ta = fadd reassoc nsz arcp contract afn <8 x float> %wide.load761, %vec.phi757 ; 2 uses
  %i.tb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load762, %vec.phi758 ; 2 uses
  %i.tc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load763, %vec.phi759 ; 2 uses
  %index.next764 = add nuw i64 %index756, 32      ; 2 uses
  %i.td = icmp eq i64 %index.next764, %n.vec754
  br i1 %i.td, label %middle.block765, label %vector.body755, !llvm.loop !16

middle.block765:                                  ; preds = %vector.body755
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.ta, %i.sz
  %bin.rdx766 = fadd reassoc nsz arcp contract afn <8 x float> %i.tb, %bin.rdx
  %bin.rdx767 = fadd reassoc nsz arcp contract afn <8 x float> %i.tc, %bin.rdx766
  %i.te = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx767) ; 3 uses
  br i1 %cmp.n768, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block765
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec754, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.te, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.tf = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index771 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next774, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi772 = phi <8 x float> [ %i.tf, %vec.epilog.ph ], [ %i.tg, %vec.epilog.vector.body ]
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %index771
  %wide.load773 = load <8 x float>, ptr %gep901, align 4, !tbaa !56
  %i.tg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load773, %vec.phi772 ; 2 uses
  %index.next774 = add nuw i64 %index771, 8       ; 2 uses
  %i.th = icmp eq i64 %index.next774, %n.vec770
  br i1 %i.th, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ti = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.tg) ; 2 uses
  br i1 %cmp.n775, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.rf, %iter.check ], [ %i.sl, %vec.epilog.iter.check ], [ %i.sm, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.te, %vec.epilog.iter.check ], [ %i.ti, %vec.epilog.middle.block ]
  br label %.lr.ph479

._crit_edge:                                      ; preds = %.lr.ph479, %middle.block765, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.ti, %vec.epilog.middle.block ], [ %i.te, %middle.block765 ], [ %i.tt, %.lr.ph479 ] ; 2 uses
  %i.tj = mul nsw i64 %indvars.iv565, %i.s
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tj ; 2 uses
  %i.tl = mul i64 %i.je, %indvars.iv565
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tl ; 2 uses
  %i.tn = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.to = load float, ptr %i.i, align 8, !tbaa !39
  %i.tp = fcmp reassoc nsz arcp contract afn olt float %i.to, 0.000000e+00
  br i1 %i.tp, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.rb, label %.lr.ph483, label %.loopexit467

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.rb, label %.lr.ph489, label %.loopexit467

.lr.ph489:                                        ; preds = %.preheader466
  %i.tq = fmul reassoc nsz arcp contract afn float %i.tn, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.tk, i64 %i.rc
  br label %bb.v

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %.lr.ph479
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479 ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
  %.0404477 = phi float [ %i.tt, %.lr.ph479 ], [ %.0404477.ph, %.lr.ph479.preheader ]
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv532
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !56
  %i.tt = fadd reassoc nsz arcp contract afn float %i.ts, %.0404477 ; 2 uses
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.tu = icmp slt i64 %indvars.iv.next533, %i.rg
  br i1 %i.tu, label %.lr.ph479, label %._crit_edge, !llvm.loop !18

bb.v:                                             ; preds = %.lr.ph489, %bb.v
  %indvars.iv542 = phi i64 [ %i.rh, %.lr.ph489 ], [ %indvars.iv.next543, %bb.v ] ; 4 uses
  %.1487 = phi float [ %.0404.lcssa, %.lr.ph489 ], [ %i.uc, %bb.v ]
  %gep644 = getelementptr [4 x i8], ptr %invariant.gep643, i64 %indvars.iv542
  %i.tv = load float, ptr %gep644, align 4, !tbaa !56
  %i.tw = trunc nuw nsw i64 %indvars.iv542 to i32
  %i.tx = add i32 %i.tw, %i.fw
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ty
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !56
  %i.ub = fsub reassoc nsz arcp contract afn float %i.tv, %i.ua
  %i.uc = fadd reassoc nsz arcp contract afn float %i.ub, %.1487 ; 2 uses
  %i.ud = fmul reassoc nsz arcp contract afn float %i.tq, %i.uc
  %i.ue = fptosi float %i.ud to i32               ; 2 uses
  %i.uf = add nsw i32 %i.ue, 1065353216
  %i.ug = icmp sgt i32 %i.ue, -1056964609
  %i.uh = bitcast i32 %i.uf to float
  %i.ui = shl nuw nsw i64 %indvars.iv542, 2       ; 2 uses
  %gep491 = getelementptr [4 x i8], ptr %invariant.gep490, i64 %i.ui ; 3 uses
  %i.uj = getelementptr i8, ptr %gep491, i64 8
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !56
  %invariant.gep484 = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.ui ; 2 uses
  %i.ul = select i1 %i.ug, float %i.uh, float 0.000000e+00
  %i.um = load <2 x float>, ptr %gep491, align 4, !tbaa !56
  %i.un = insertelement <4 x float> poison, float %i.ul, i64 0
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> poison, <4 x i32> zeroinitializer
  %i.up = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.uk, i64 2
  %i.uq = shufflevector <2 x float> %i.um, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ur = shufflevector <4 x float> %i.uq, <4 x float> %i.up, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.us = fmul reassoc nsz arcp contract afn <4 x float> %i.uo, %i.ur
  %i.ut = load <4 x float>, ptr %invariant.gep484, align 4, !tbaa !56
  %i.uu = fadd reassoc nsz arcp contract afn <4 x float> %i.ut, %i.us
  store <4 x float> %i.uu, ptr %invariant.gep484, align 4, !tbaa !56
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %gep491, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.uv, i32 0, i32 3, i32 1)
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.uw = icmp slt i64 %indvars.iv.next543, %i.ri
  br i1 %i.uw, label %bb.v, label %.loopexit467

.lr.ph483:                                        ; preds = %.preheader468, %.lr.ph483
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.lr.ph483 ], [ %i.rh, %.preheader468 ] ; 4 uses
  %.2481 = phi float [ %i.ve, %.lr.ph483 ], [ %.0404.lcssa, %.preheader468 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep642, i64 %indvars.iv537
  %i.ux = load float, ptr %gep, align 4, !tbaa !56
  %i.uy = trunc nuw nsw i64 %indvars.iv537 to i32
  %i.uz = add i32 %i.uy, %i.fw
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.va
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !56
  %i.vd = fsub reassoc nsz arcp contract afn float %i.ux, %i.vc
  %i.ve = fadd reassoc nsz arcp contract afn float %i.vd, %.2481 ; 2 uses
  %i.vf = shl nuw nsw i64 %indvars.iv537, 2       ; 2 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.vf ; 4 uses
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.rc ; 4 uses
  %i.vi = load float, ptr %i.vg, align 4, !tbaa !56
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !56
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !56
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !56 ; 2 uses
  %i.vq = fsub reassoc nsz arcp contract afn float %i.vn, %i.vp ; 2 uses
  %i.vr = fmul reassoc nsz arcp contract afn float %i.vq, %i.vq
  %i.vs = load float, ptr %i.i, align 8, !tbaa !39
  %i.vt = fadd reassoc nsz arcp contract afn float %i.vs, 1.000000e+00
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.vf ; 2 uses
  %i.vu = load <2 x float>, ptr %i.vh, align 4, !tbaa !56 ; 2 uses
  %i.vv = load float, ptr %i.vl, align 4, !tbaa !56
  %i.vw = extractelement <2 x float> %i.vu, i64 0
end_hunk_0
begin_hunk_1_@nlmeans_denoise:bb.a

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge515, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph, %middle.block
  %indvars.iv579.ph = phi i64 [ %indvars.iv545, %.preheader.lr.ph ], [ %i.lf, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv579 = phi i64 [ %indvars.iv.next580, %.preheader ], [ %indvars.iv579.ph, %.preheader.preheader ] ; 2 uses
  %.idx633 = shl nuw nsw i64 %indvars.iv579, 4
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ace, i64 %.idx633 ; 2 uses
  %i.acq = load <4 x float>, ptr %i.acp, align 4, !tbaa !56 ; 2 uses
  %i.acr = shufflevector <4 x float> %i.acq, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.acs = fdiv reassoc nsz arcp contract afn <4 x float> %i.acq, %i.acr
  store <4 x float> %i.acs, ptr %i.acp, align 4, !tbaa !56
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %i.act = icmp slt i64 %indvars.iv.next580, %i.la
  br i1 %i.act, label %.preheader, label %._crit_edge515, !llvm.loop !27

._crit_edge515:                                   ; preds = %.preheader, %middle.block
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %i.acu = icmp slt i64 %indvars.iv.next583, %i.lb
  br i1 %i.acu, label %.preheader.lr.ph, label %.loopexit471

.preheader463.lr.ph:                              ; preds = %.preheader463.lr.ph.preheader, %._crit_edge508
  %indvar658 = phi i32 [ 0, %.preheader463.lr.ph.preheader ], [ %indvar.next659, %._crit_edge508 ] ; 2 uses
  %indvars.iv575 = phi i64 [ %indvars.iv562, %.preheader463.lr.ph.preheader ], [ %indvars.iv.next576, %._crit_edge508 ] ; 3 uses
  %i.acv = mul nsw i64 %indvars.iv575, %i.s
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.acv ; 5 uses
  %i.acx = trunc nsw i64 %indvars.iv575 to i32
  %.reass = mul i32 %factor.op.mul, %i.acx
  %i.acy = sext i32 %.reass to i64
  %i.acz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.acy ; 5 uses
  br i1 %min.iters.check671, label %.preheader463.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader463.lr.ph
  %i.ada = mul i32 %i.km, %indvar658
  %i.adb = add i32 %i.kl, %i.ada
  %i.adc = sext i32 %i.adb to i64
  %i.add = shl nsw i64 %i.adc, 2                  ; 2 uses
  %scevgep663 = getelementptr i8, ptr %scevgep662, i64 %i.add
  %scevgep660 = getelementptr i8, ptr %scevgep, i64 %i.add
  %bound0 = icmp ult ptr %scevgep660, %scevgep669
  %bound1 = icmp ult ptr %scevgep666, %scevgep663
  %found.conflict = and i1 %bound0, %bound1
  %i.ade = or i1 %found.conflict, %stride.check
  br i1 %i.ade, label %.preheader463.preheader, label %vector.body680

vector.body680:                                   ; preds = %vector.memcheck, %vector.body680
  %index681 = phi i64 [ %index.next697, %vector.body680 ], [ 0, %vector.memcheck ] ; 2 uses
  %i.adf = add nuw i64 %indvars.iv545, %index681
  %i.adg = shl nuw nsw i64 %i.adf, 2              ; 2 uses
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.adg ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 12 ; 2 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.adg
  %wide.vec682 = load <16 x float>, ptr %i.adj, align 4, !tbaa !56, !alias.scope !67 ; 4 uses
  %strided.vec683 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec684 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec685 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec686 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.adk = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat, %strided.vec683
  %wide.vec687 = load <16 x float>, ptr %i.adh, align 4, !tbaa !56, !alias.scope !68, !noalias !67 ; 4 uses
  %strided.vec688 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec689 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec690 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec691 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec692 = load <16 x float>, ptr %i.adi, align 4, !tbaa !56, !alias.scope !68, !noalias !67
  %strided.vec693 = shufflevector <16 x float> %wide.vec692, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.adl = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat675, %strided.vec688
  %i.adm = fdiv reassoc nsz arcp contract afn <4 x float> %i.adl, %strided.vec693
  %i.adn = fadd reassoc nsz arcp contract afn <4 x float> %i.adm, %i.adk
  %i.ado = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat677, %strided.vec684
  %i.adp = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat679, %strided.vec689
  %i.adq = fdiv reassoc nsz arcp contract afn <4 x float> %i.adp, %strided.vec693
  %i.adr = fadd reassoc nsz arcp contract afn <4 x float> %i.adq, %i.ado
  %i.ads = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat677, %strided.vec685
  %wide.vec694 = load <16 x float>, ptr %i.adi, align 4, !tbaa !56, !alias.scope !68, !noalias !67
  %strided.vec695 = shufflevector <16 x float> %wide.vec694, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.adt = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat679, %strided.vec690
  %i.adu = fdiv reassoc nsz arcp contract afn <4 x float> %i.adt, %strided.vec695
  %i.adv = fadd reassoc nsz arcp contract afn <4 x float> %i.adu, %i.ads
  %i.adw = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec686, zeroinitializer
  %i.adx = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec691, %strided.vec695
  %i.ady = fadd reassoc nsz arcp contract afn <4 x float> %i.adx, %i.adw
  %i.adz = shufflevector <4 x float> %i.adn, <4 x float> %i.adr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aea = shufflevector <4 x float> %i.adv, <4 x float> %i.ady, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec696 = shufflevector <8 x float> %i.adz, <8 x float> %i.aea, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec696, ptr %i.adh, align 4, !tbaa !56, !alias.scope !68, !noalias !67
  %index.next697 = add nuw i64 %index681, 4       ; 2 uses
  %i.aeb = icmp eq i64 %index.next697, %n.vec673
  br i1 %i.aeb, label %.preheader463.preheader, label %vector.body680, !llvm.loop !31

.preheader463.preheader:                          ; preds = %vector.body680, %vector.memcheck, %.preheader463.lr.ph
  %indvars.iv572.ph = phi i64 [ %indvars.iv545, %vector.memcheck ], [ %indvars.iv545, %.preheader463.lr.ph ], [ %i.kx, %vector.body680 ]
  br label %.preheader463

.preheader463:                                    ; preds = %.preheader463.preheader, %.preheader463
  %indvars.iv572 = phi i64 [ %indvars.iv.next573, %.preheader463 ], [ %indvars.iv572.ph, %.preheader463.preheader ] ; 2 uses
  %i.aec = shl nuw nsw i64 %indvars.iv572, 2      ; 5 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.aec ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 12 ; 2 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.aec
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !56
  %i.aeh = fmul reassoc nsz arcp contract afn float %i.e, %i.aeg
  %i.aei = load float, ptr %i.aed, align 4, !tbaa !56
  %i.aej = load float, ptr %i.aee, align 4, !tbaa !56 ; 2 uses
  %i.aek = fmul reassoc nsz arcp contract afn float %i.b, %i.aei
  %i.ael = fdiv reassoc nsz arcp contract afn float %i.aek, %i.aej
  %i.aem = fadd reassoc nsz arcp contract afn float %i.ael, %i.aeh
  store float %i.aem, ptr %i.aed, align 4, !tbaa !56
  %i.aen = or disjoint i64 %i.aec, 1              ; 2 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.aen
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !56
  %i.aeq = fmul reassoc nsz arcp contract afn float %i.f, %i.aep
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.aen ; 2 uses
  %i.aes = or disjoint i64 %i.aec, 2              ; 2 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.aes
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.aes
  %i.aev = load float, ptr %i.aee, align 4, !tbaa !56 ; 2 uses
  %i.aew = load <2 x float>, ptr %i.aer, align 4, !tbaa !56
  %i.aex = fmul reassoc nsz arcp contract afn <2 x float> %i.gk, %i.aew ; 2 uses
  %i.aey = extractelement <2 x float> %i.aex, i64 0
  %i.aez = fdiv reassoc nsz arcp contract afn float %i.aey, %i.aej
  %i.afa = fadd reassoc nsz arcp contract afn float %i.aez, %i.aeq
  store float %i.afa, ptr %i.aer, align 4, !tbaa !56
  %i.afb = load float, ptr %i.aet, align 4, !tbaa !56
  %i.afc = fmul reassoc nsz arcp contract afn float %i.f, %i.afb
  %i.afd = extractelement <2 x float> %i.aex, i64 1
  %i.afe = fdiv reassoc nsz arcp contract afn float %i.afd, %i.aev
  %i.aff = fadd reassoc nsz arcp contract afn float %i.afe, %i.afc
  store float %i.aff, ptr %i.aeu, align 4, !tbaa !56
  %i.afg = or disjoint i64 %i.aec, 3              ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.afg
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !56
  %i.afj = fmul reassoc nsz arcp contract afn float %i.afi, 0.000000e+00
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.afg ; 2 uses
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !56
  %i.afm = fdiv reassoc nsz arcp contract afn float %i.afl, %i.aev
  %i.afn = fadd reassoc nsz arcp contract afn float %i.afm, %i.afj
  store float %i.afn, ptr %i.afk, align 4, !tbaa !56
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %i.afo = icmp slt i64 %indvars.iv.next573, %i.kj
  br i1 %i.afo, label %.preheader463, label %._crit_edge508, !llvm.loop !32

._crit_edge508:                                   ; preds = %.preheader463
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %i.afp = icmp slt i64 %indvars.iv.next576, %i.kk
  %indvar.next659 = add i32 %indvar658, 1
  br i1 %i.afp, label %.preheader463.lr.ph, label %.loopexit471

.loopexit471:                                     ; preds = %._crit_edge508, %._crit_edge515, %.preheader472, %.lr.ph510, %.preheader470, %.lr.ph517
  %i.afq = sext i32 %i.iq to i64
  %i.afr = icmp slt i64 %indvars.iv.next546, %i.afq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.afr, label %bb.r, label %._crit_edge522
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
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

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
end_hunk_1
