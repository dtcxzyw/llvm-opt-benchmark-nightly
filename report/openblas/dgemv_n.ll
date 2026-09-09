Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemv_n?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dgemv_n(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca [8 x double], align 16            ; 8 uses
  store double %3, ptr %i.a, align 8, !tbaa !9
  %i.c = shl i64 %5, 2                            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = icmp slt i64 %0, 1
  %i.e = icmp slt i64 %1, 1
  %or.cond355 = or i1 %i.d, %i.e
  br i1 %or.cond355, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 2                           ; 4 uses
  %i.g = and i64 %1, 3                            ; 2 uses
  %i.h = and i64 %0, 3
  %i.i = and i64 %0, 9223372036854775804
  %i.j = and i64 %0, 2044                         ; 2 uses
  %i.k = icmp ne i64 %i.j, 0
  %.not = icmp eq i64 %9, 1                       ; 2 uses
  %i.l = icmp eq i64 %7, 1                        ; 4 uses
  %.not516 = icmp eq i64 %i.f, 0                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.not517 = icmp eq i64 %i.g, 0
  %i.p = and i64 %1, 2
  %.not353 = icmp eq i64 %i.p, 0
  %.idx = shl nsw i64 %5, 4
  %i.q = and i64 %1, 1
  %.not354 = icmp eq i64 %i.q, 0
  %i.r = mul i64 %5, %i.f
  %i.s = shl i64 %i.r, 5
  %scevgep = getelementptr i8, ptr %4, i64 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.n
  %indvars.iv = phi ptr [ %scevgep, %bb.b ], [ %scevgep555, %bb.n ] ; 3 uses
  %.0313438 = phi ptr [ %10, %bb.b ], [ %.1314, %bb.n ] ; 2 uses
  %.0315437 = phi i64 [ %i.i, %bb.b ], [ %i.t, %bb.n ] ; 2 uses
  %.0316436 = phi ptr [ %8, %bb.b ], [ %.1317, %bb.n ] ; 4 uses
  %.0346434 = phi ptr [ %4, %bb.b ], [ %i.fs, %bb.n ] ; 8 uses
  %i.t = add nsw i64 %.0315437, -2048
  %i.u = icmp samesign ugt i64 %.0315437, 2047    ; 3 uses
  %brmerge = or i1 %i.u, %i.k
  %.mux = select i1 %i.u, i64 2048, i64 %i.j      ; 16 uses
  br i1 %brmerge, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds [8 x i8], ptr %.0346434, i64 %5 ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %5 ; 3 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %5 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = shl nuw nsw i64 %.mux, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0313438, i8 0, i64 %i.y, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1314 = phi ptr [ %.0313438, %bb.e ], [ %.0316436, %bb.d ] ; 9 uses
  br i1 %i.l, label %.preheader406, label %.preheader409

.preheader409:                                    ; preds = %bb.f
  br i1 %.not516, label %.preheader407, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader409
  %.val = load double, ptr %i.a, align 8, !tbaa !34
  %i.z = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.val, i64 0 ; 2 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ac = icmp samesign ugt i64 %.mux, 7
  %i.ad = and i64 %.mux, 4088
  br label %bb.l

.preheader406:                                    ; preds = %bb.f
  br i1 %.not516, label %._crit_edge, label %.lr.ph429

.lr.ph429:                                        ; preds = %.preheader406
  %.val356 = load double, ptr %i.a, align 8, !tbaa !34
  %i.ae = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.val356, i64 0 ; 2 uses
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ag = shufflevector <2 x double> %i.ae, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ah = icmp samesign ugt i64 %.mux, 7
  %i.ai = and i64 %.mux, 4088
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph429, %dgemv_kernel_4x4.exit
  %.0318428 = phi ptr [ %6, %.lr.ph429 ], [ %i.cn, %dgemv_kernel_4x4.exit ] ; 5 uses
  %.0322427 = phi ptr [ %.0346434, %.lr.ph429 ], [ %i.cj, %dgemv_kernel_4x4.exit ] ; 3 uses
  %.0333426 = phi i64 [ 0, %.lr.ph429 ], [ %i.co, %dgemv_kernel_4x4.exit ]
  %.sroa.12.0424 = phi ptr [ %i.v, %.lr.ph429 ], [ %i.ck, %dgemv_kernel_4x4.exit ] ; 3 uses
  %.sroa.22.0423 = phi ptr [ %i.w, %.lr.ph429 ], [ %i.cl, %dgemv_kernel_4x4.exit ] ; 3 uses
  %.sroa.31.0422 = phi ptr [ %i.x, %.lr.ph429 ], [ %i.cm, %dgemv_kernel_4x4.exit ] ; 3 uses
  %i.aj = load double, ptr %.0318428, align 1, !tbaa !34
  %i.ak = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aj, i64 0 ; 2 uses
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <4 x i32> zeroinitializer
  %i.am = getelementptr inbounds nuw i8, ptr %.0318428, i64 8
  %i.an = load double, ptr %i.am, align 1, !tbaa !34
  %i.ao = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.an, i64 0 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <4 x i32> zeroinitializer
  %i.aq = getelementptr inbounds nuw i8, ptr %.0318428, i64 16
  %i.ar = load double, ptr %i.aq, align 1, !tbaa !34
  %i.as = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ar, i64 0 ; 2 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <4 x i32> zeroinitializer
  %i.au = getelementptr inbounds nuw i8, ptr %.0318428, i64 24
  %i.av = load double, ptr %i.au, align 1, !tbaa !34
  %i.aw = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.av, i64 0 ; 2 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ay = shufflevector <2 x double> %i.ak, <2 x double> poison, <8 x i32> zeroinitializer
  %i.az = shufflevector <2 x double> %i.ao, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ba = shufflevector <2 x double> %i.as, <2 x double> poison, <8 x i32> zeroinitializer
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> poison, <8 x i32> zeroinitializer
  br i1 %i.ah, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.g
  %.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp sgt i64 %.mux, %.0.lcssa.i
  br i1 %i.bc, label %.lr.ph3.i, label %dgemv_kernel_4x4.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.g ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0322427, i64 %indvars.iv.i
  %i.be = load <8 x double>, ptr %i.bd, align 1, !tbaa !34
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.12.0424, i64 %indvars.iv.i
  %i.bg = load <8 x double>, ptr %i.bf, align 1, !tbaa !34
  %i.bh = fmul <8 x double> %i.az, %i.bg
  %i.bi = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.be, <8 x double> %i.ay, <8 x double> %i.bh)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.22.0423, i64 %indvars.iv.i
  %i.bk = load <8 x double>, ptr %i.bj, align 1, !tbaa !34
  %i.bl = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.bk, <8 x double> %i.ba, <8 x double> %i.bi)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.31.0422, i64 %indvars.iv.i
  %i.bn = load <8 x double>, ptr %i.bm, align 1, !tbaa !34
  %i.bo = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.bn, <8 x double> %i.bb, <8 x double> %i.bl)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.1314, i64 %indvars.iv.i ; 2 uses
  %i.bq = load <8 x double>, ptr %i.bp, align 1, !tbaa !34
  %i.br = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.bo, <8 x double> %i.ag, <8 x double> %i.bq)
  store <8 x double> %i.br, ptr %i.bp, align 1, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next.i, %i.ai
  br i1 %i.bs, label %.lr.ph.i, label %.preheader.i, !llvm.loop !12

.lr.ph3.i:                                        ; preds = %.preheader.i, %.lr.ph3.i
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %.lr.ph3.i ], [ %.0.lcssa.i, %.preheader.i ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.0322427, i64 %indvars.iv5.i
  %i.bu = load <4 x double>, ptr %i.bt, align 1, !tbaa !34
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.12.0424, i64 %indvars.iv5.i
  %i.bw = load <4 x double>, ptr %i.bv, align 1, !tbaa !34
  %i.bx = fmul <4 x double> %i.ap, %i.bw
  %i.by = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bu, <4 x double> %i.al, <4 x double> %i.bx)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.22.0423, i64 %indvars.iv5.i
  %i.ca = load <4 x double>, ptr %i.bz, align 1, !tbaa !34
  %i.cb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ca, <4 x double> %i.at, <4 x double> %i.by)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.31.0422, i64 %indvars.iv5.i
  %i.cd = load <4 x double>, ptr %i.cc, align 1, !tbaa !34
  %i.ce = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cd, <4 x double> %i.ax, <4 x double> %i.cb)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.1314, i64 %indvars.iv5.i ; 2 uses
  %i.cg = load <4 x double>, ptr %i.cf, align 1, !tbaa !34
  %i.ch = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ce, <4 x double> %i.af, <4 x double> %i.cg)
  store <4 x double> %i.ch, ptr %i.cf, align 1, !tbaa !34
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 4 ; 2 uses
  %i.ci = icmp samesign ugt i64 %.mux, %indvars.iv.next6.i
  br i1 %i.ci, label %.lr.ph3.i, label %dgemv_kernel_4x4.exit, !llvm.loop !13

dgemv_kernel_4x4.exit:                            ; preds = %.lr.ph3.i, %.preheader.i
  %i.cj = getelementptr [8 x i8], ptr %.0322427, i64 %i.c ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.sroa.12.0424, i64 %i.c ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.sroa.22.0423, i64 %i.c
  %i.cm = getelementptr inbounds [8 x i8], ptr %.sroa.31.0422, i64 %i.c
  %i.cn = getelementptr inbounds nuw i8, ptr %.0318428, i64 32 ; 2 uses
  %i.co = add nuw nsw i64 %.0333426, 1            ; 2 uses
  %exitcond557.not = icmp eq i64 %i.co, %i.f
  br i1 %exitcond557.not, label %._crit_edge, label %bb.g, !llvm.loop !14

._crit_edge:                                      ; preds = %dgemv_kernel_4x4.exit, %.preheader406
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %.preheader406 ], [ %i.ck, %dgemv_kernel_4x4.exit ]
  %.sroa.0.0.lcssa = phi ptr [ %.0346434, %.preheader406 ], [ %i.cj, %dgemv_kernel_4x4.exit ]
  %.0322.lcssa = phi ptr [ %.0346434, %.preheader406 ], [ %indvars.iv, %dgemv_kernel_4x4.exit ] ; 2 uses
  %.0318.lcssa = phi ptr [ %6, %.preheader406 ], [ %i.cn, %dgemv_kernel_4x4.exit ] ; 4 uses
  br i1 %.not353, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %.0318.val = load double, ptr %.0318.lcssa, align 1, !tbaa !34
  %i.cp = getelementptr i8, ptr %.0318.lcssa, i64 8
  %.0318.val357 = load double, ptr %i.cp, align 1, !tbaa !34
  %.val358 = load double, ptr %i.a, align 8, !tbaa !34
  %i.cq = insertelement <2 x double> poison, double %.0318.val, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <4 x i32> zeroinitializer
  %i.cs = insertelement <2 x double> poison, double %.0318.val357, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <4 x i32> zeroinitializer
  %i.cu = insertelement <2 x double> poison, double %.val358, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <4 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i360 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i361, %bb.i ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.i360
  %i.cx = load <4 x double>, ptr %i.cw, align 1, !tbaa !34
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.12.0.lcssa, i64 %indvars.iv.i360
  %i.cz = load <4 x double>, ptr %i.cy, align 1, !tbaa !34
  %i.da = fmul <4 x double> %i.ct, %i.cz
  %i.db = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cx, <4 x double> %i.cr, <4 x double> %i.da)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.1314, i64 %indvars.iv.i360 ; 2 uses
  %i.dd = load <4 x double>, ptr %i.dc, align 1, !tbaa !34
  %i.de = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.db, <4 x double> %i.cv, <4 x double> %i.dd)
  store <4 x double> %i.de, ptr %i.dc, align 1, !tbaa !34
  %indvars.iv.next.i361 = add nuw nsw i64 %indvars.iv.i360, 4 ; 2 uses
  %i.df = icmp samesign ugt i64 %.mux, %indvars.iv.next.i361
  br i1 %i.df, label %bb.i, label %dgemv_kernel_4x2.exit, !llvm.loop !15

dgemv_kernel_4x2.exit:                            ; preds = %bb.i
  %i.dg = getelementptr inbounds i8, ptr %.0322.lcssa, i64 %.idx
  %i.dh = getelementptr inbounds nuw i8, ptr %.0318.lcssa, i64 16
  br label %bb.j

bb.j:                                             ; preds = %dgemv_kernel_4x2.exit, %._crit_edge
  %.1323 = phi ptr [ %i.dg, %dgemv_kernel_4x2.exit ], [ %.0322.lcssa, %._crit_edge ]
  %.1319 = phi ptr [ %i.dh, %dgemv_kernel_4x2.exit ], [ %.0318.lcssa, %._crit_edge ]
  br i1 %.not354, label %.loopexit408, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @dgemv_kernel_4x1(i64 noundef %.mux, ptr noundef %.1323, ptr noundef %.1319, ptr noundef %.1314, ptr noundef %i.a)
  br label %.loopexit408

.preheader407:                                    ; preds = %dgemv_kernel_4x4.exit370, %.preheader409
  %.2324.lcssa = phi ptr [ %.0346434, %.preheader409 ], [ %indvars.iv, %dgemv_kernel_4x4.exit370 ]
  %.2320.lcssa = phi ptr [ %6, %.preheader409 ], [ %i.dp, %dgemv_kernel_4x4.exit370 ]
  br i1 %.not517, label %.loopexit408, label %.lr.ph421

bb.l:                                             ; preds = %.lr.ph, %dgemv_kernel_4x4.exit370
  %.2320416 = phi ptr [ %6, %.lr.ph ], [ %i.dp, %dgemv_kernel_4x4.exit370 ] ; 2 uses
  %.2324415 = phi ptr [ %.0346434, %.lr.ph ], [ %i.fj, %dgemv_kernel_4x4.exit370 ] ; 3 uses
  %.1334414 = phi i64 [ 0, %.lr.ph ], [ %i.fn, %dgemv_kernel_4x4.exit370 ]
  %.sroa.12.1412 = phi ptr [ %i.v, %.lr.ph ], [ %i.fk, %dgemv_kernel_4x4.exit370 ] ; 3 uses
  %.sroa.22.1411 = phi ptr [ %i.w, %.lr.ph ], [ %i.fl, %dgemv_kernel_4x4.exit370 ] ; 3 uses
  %.sroa.31.1410 = phi ptr [ %i.x, %.lr.ph ], [ %i.fm, %dgemv_kernel_4x4.exit370 ] ; 3 uses
  %i.di = load double, ptr %.2320416, align 8, !tbaa !9 ; 2 uses
  store double %i.di, ptr %i.b, align 16, !tbaa !9
  %i.dj = getelementptr inbounds [8 x i8], ptr %.2320416, i64 %7 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !9 ; 2 uses
  store double %i.dk, ptr %i.m, align 8, !tbaa !9
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %7 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !9 ; 2 uses
  store double %i.dm, ptr %i.n, align 16, !tbaa !9
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %7 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !9 ; 2 uses
  store double %i.do, ptr %i.o, align 8, !tbaa !9
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %7 ; 2 uses
  %i.dq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.di, i64 0 ; 2 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ds = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.dk, i64 0 ; 2 uses
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> zeroinitializer
  %i.du = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.dm, i64 0 ; 2 uses
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <4 x i32> zeroinitializer
  %i.dw = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.do, i64 0 ; 2 uses
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <4 x i32> zeroinitializer
  %i.dy = shufflevector <2 x double> %i.dq, <2 x double> poison, <8 x i32> zeroinitializer
  %i.dz = shufflevector <2 x double> %i.ds, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ea = shufflevector <2 x double> %i.du, <2 x double> poison, <8 x i32> zeroinitializer
  %i.eb = shufflevector <2 x double> %i.dw, <2 x double> poison, <8 x i32> zeroinitializer
  br i1 %i.ac, label %.lr.ph.i367, label %.preheader.i362

.preheader.i362:                                  ; preds = %.lr.ph.i367, %bb.l
  %.0.lcssa.i363 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i369, %.lr.ph.i367 ] ; 2 uses
  %i.ec = icmp sgt i64 %.mux, %.0.lcssa.i363
  br i1 %i.ec, label %.lr.ph3.i364, label %dgemv_kernel_4x4.exit370

.lr.ph.i367:                                      ; preds = %bb.l, %.lr.ph.i367
  %indvars.iv.i368 = phi i64 [ %indvars.iv.next.i369, %.lr.ph.i367 ], [ 0, %bb.l ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.2324415, i64 %indvars.iv.i368
  %i.ee = load <8 x double>, ptr %i.ed, align 1, !tbaa !34
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.12.1412, i64 %indvars.iv.i368
  %i.eg = load <8 x double>, ptr %i.ef, align 1, !tbaa !34
  %i.eh = fmul <8 x double> %i.dz, %i.eg
  %i.ei = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ee, <8 x double> %i.dy, <8 x double> %i.eh)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.22.1411, i64 %indvars.iv.i368
  %i.ek = load <8 x double>, ptr %i.ej, align 1, !tbaa !34
  %i.el = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ek, <8 x double> %i.ea, <8 x double> %i.ei)
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.31.1410, i64 %indvars.iv.i368
  %i.en = load <8 x double>, ptr %i.em, align 1, !tbaa !34
  %i.eo = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.en, <8 x double> %i.eb, <8 x double> %i.el)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.1314, i64 %indvars.iv.i368 ; 2 uses
  %i.eq = load <8 x double>, ptr %i.ep, align 1, !tbaa !34
  %i.er = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.eo, <8 x double> %i.ab, <8 x double> %i.eq)
  store <8 x double> %i.er, ptr %i.ep, align 1, !tbaa !34
  %indvars.iv.next.i369 = add nuw nsw i64 %indvars.iv.i368, 8 ; 3 uses
  %i.es = icmp samesign ult i64 %indvars.iv.next.i369, %i.ad
  br i1 %i.es, label %.lr.ph.i367, label %.preheader.i362, !llvm.loop !12

.lr.ph3.i364:                                     ; preds = %.preheader.i362, %.lr.ph3.i364
  %indvars.iv5.i365 = phi i64 [ %indvars.iv.next6.i366, %.lr.ph3.i364 ], [ %.0.lcssa.i363, %.preheader.i362 ] ; 6 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.2324415, i64 %indvars.iv5.i365
  %i.eu = load <4 x double>, ptr %i.et, align 1, !tbaa !34
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.12.1412, i64 %indvars.iv5.i365
  %i.ew = load <4 x double>, ptr %i.ev, align 1, !tbaa !34
  %i.ex = fmul <4 x double> %i.dt, %i.ew
  %i.ey = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eu, <4 x double> %i.dr, <4 x double> %i.ex)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.22.1411, i64 %indvars.iv5.i365
  %i.fa = load <4 x double>, ptr %i.ez, align 1, !tbaa !34
  %i.fb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fa, <4 x double> %i.dv, <4 x double> %i.ey)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.31.1410, i64 %indvars.iv5.i365
  %i.fd = load <4 x double>, ptr %i.fc, align 1, !tbaa !34
  %i.fe = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fd, <4 x double> %i.dx, <4 x double> %i.fb)
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.1314, i64 %indvars.iv5.i365 ; 2 uses
  %i.fg = load <4 x double>, ptr %i.ff, align 1, !tbaa !34
  %i.fh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fe, <4 x double> %i.aa, <4 x double> %i.fg)
  store <4 x double> %i.fh, ptr %i.ff, align 1, !tbaa !34
  %indvars.iv.next6.i366 = add nuw nsw i64 %indvars.iv5.i365, 4 ; 2 uses
  %i.fi = icmp samesign ugt i64 %.mux, %indvars.iv.next6.i366
  br i1 %i.fi, label %.lr.ph3.i364, label %dgemv_kernel_4x4.exit370, !llvm.loop !13

dgemv_kernel_4x4.exit370:                         ; preds = %.lr.ph3.i364, %.preheader.i362
  %i.fj = getelementptr [8 x i8], ptr %.2324415, i64 %i.c
  %i.fk = getelementptr inbounds [8 x i8], ptr %.sroa.12.1412, i64 %i.c
  %i.fl = getelementptr inbounds [8 x i8], ptr %.sroa.22.1411, i64 %i.c
  %i.fm = getelementptr inbounds [8 x i8], ptr %.sroa.31.1410, i64 %i.c
  %i.fn = add nuw nsw i64 %.1334414, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fn, %i.f
  br i1 %exitcond.not, label %.preheader407, label %bb.l, !llvm.loop !16

.lr.ph421:                                        ; preds = %.preheader407, %.lr.ph421
  %.3321420 = phi ptr [ %i.fp, %.lr.ph421 ], [ %.2320.lcssa, %.preheader407 ] ; 2 uses
  %.3325419 = phi ptr [ %i.fq, %.lr.ph421 ], [ %.2324.lcssa, %.preheader407 ] ; 2 uses
  %.2335418 = phi i64 [ %i.fr, %.lr.ph421 ], [ 0, %.preheader407 ]
  %i.fo = load double, ptr %.3321420, align 8, !tbaa !9
  store double %i.fo, ptr %i.b, align 16, !tbaa !9
  %i.fp = getelementptr inbounds [8 x i8], ptr %.3321420, i64 %7
  call fastcc void @dgemv_kernel_4x1(i64 noundef %.mux, ptr noundef %.3325419, ptr noundef nonnull %i.b, ptr noundef %.1314, ptr noundef %i.a)
  %i.fq = getelementptr inbounds [8 x i8], ptr %.3325419, i64 %5
  %i.fr = add nuw nsw i64 %.2335418, 1            ; 2 uses
  %exitcond556.not = icmp eq i64 %i.fr, %i.g
  br i1 %exitcond556.not, label %.loopexit408, label %.lr.ph421, !llvm.loop !17

.loopexit408:                                     ; preds = %.lr.ph421, %.preheader407, %bb.j, %bb.k
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.0346434, i64 %.mux ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit408
  call fastcc void @add_y(i64 noundef %.mux, ptr noundef %.1314, ptr noundef %.0316436, i64 noundef %9)
  %i.ft = mul nsw i64 %.mux, %9
  br label %bb.n

bb.n:                                             ; preds = %.loopexit408, %bb.m
  %.pn = phi i64 [ %i.ft, %bb.m ], [ %.mux, %.loopexit408 ]
  %.1317 = getelementptr inbounds [8 x i8], ptr %.0316436, i64 %.pn ; 2 uses
  %scevgep555 = getelementptr i8, ptr %indvars.iv, i64 16384
  br i1 %i.u, label %bb.c, label %bb.o, !llvm.loop !18

bb.o:                                             ; preds = %bb.c, %bb.n
  %.0346.lcssa = phi ptr [ %.0346434, %bb.c ], [ %i.fs, %bb.n ] ; 32 uses
  %.0316.lcssa = phi ptr [ %.0316436, %bb.c ], [ %.1317, %bb.n ] ; 8 uses
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.s
    i64 3, label %bb.p
    i64 2, label %bb.q
    i64 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.fu = icmp eq i64 %5, 3
  %or.cond = and i1 %i.fu, %i.l
  br i1 %or.cond, label %.preheader393, label %.lr.ph487.preheader

.lr.ph487.preheader:                              ; preds = %bb.p
  %i.fv = add nsw i64 %1, -1
  %xtraiter689 = and i64 %1, 3                    ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 3
  br i1 %i.fw, label %.lr.ph487.epil.preheader, label %.lr.ph487.preheader.new

.lr.ph487.preheader.new:                          ; preds = %.lr.ph487.preheader
  %unroll_iter698 = and i64 %1, 9223372036854775804
  br label %.lr.ph487

.preheader393:                                    ; preds = %bb.p
  %i.fx = and i64 %1, 9223372036854775804         ; 3 uses
  %.not521 = icmp eq i64 %i.fx, 0
  br i1 %.not521, label %.preheader, label %.lr.ph497

.preheader.loopexit:                              ; preds = %.lr.ph497
  %i.fy = and i64 %1, 9223372036854775804
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader393
  %.3336.lcssa = phi i64 [ 0, %.preheader393 ], [ %i.fy, %.preheader.loopexit ] ; 3 uses
  %.4326.lcssa = phi ptr [ %.0346.lcssa, %.preheader393 ], [ %i.hd, %.preheader.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %6, %.preheader393 ], [ %i.he, %.preheader.loopexit ] ; 2 uses
  %.0299.lcssa = phi double [ 0.000000e+00, %.preheader393 ], [ %i.hc, %.preheader.loopexit ] ; 3 uses
  %i.fz = phi <2 x double> [ zeroinitializer, %.preheader393 ], [ %36, %.preheader.loopexit ] ; 2 uses
  %i.ga = icmp slt i64 %.3336.lcssa, %1
  %i.gb = extractelement <2 x double> %i.fz, i64 0 ; 3 uses
  %i.gc = extractelement <2 x double> %i.fz, i64 1 ; 3 uses
  br i1 %i.ga, label %.lr.ph510.preheader, label %.loopexit

.lr.ph510.preheader:                              ; preds = %.preheader
  %i.gd = and i64 %1, 3                           ; 2 uses
  %lcmp.mod701.not = icmp eq i64 %i.gd, 0
  br i1 %lcmp.mod701.not, label %.lr.ph510.prol.loopexit, label %.lr.ph510.prol

.lr.ph510.prol:                                   ; preds = %.lr.ph510.preheader, %.lr.ph510.prol
  %.1300509.prol = phi double [ %i.gm, %.lr.ph510.prol ], [ %.0299.lcssa, %.lr.ph510.preheader ]
  %.1304508.prol = phi double [ %i.gj, %.lr.ph510.prol ], [ %i.gc, %.lr.ph510.preheader ]
  %.1308507.prol = phi double [ %i.gg, %.lr.ph510.prol ], [ %i.gb, %.lr.ph510.preheader ]
  %.5506.prol = phi ptr [ %i.go, %.lr.ph510.prol ], [ %.4.lcssa, %.lr.ph510.preheader ] ; 2 uses
  %.5327505.prol = phi ptr [ %i.gn, %.lr.ph510.prol ], [ %.4326.lcssa, %.lr.ph510.preheader ] ; 4 uses
  %.4337504.prol = phi i64 [ %i.gp, %.lr.ph510.prol ], [ %.3336.lcssa, %.lr.ph510.preheader ]
  %prol.iter702 = phi i64 [ %prol.iter702.next, %.lr.ph510.prol ], [ 0, %.lr.ph510.preheader ]
  %i.ge = load double, ptr %.5327505.prol, align 8, !tbaa !9
  %i.gf = load double, ptr %.5506.prol, align 8, !tbaa !9 ; 3 uses
  %i.gg = call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double %.1308507.prol) ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.5327505.prol, i64 8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !9
  %i.gj = call double @llvm.fmuladd.f64(double %i.gi, double %i.gf, double %.1304508.prol) ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.5327505.prol, i64 16
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !9
  %i.gm = call double @llvm.fmuladd.f64(double %i.gl, double %i.gf, double %.1300509.prol) ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.5327505.prol, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.5506.prol, i64 8 ; 2 uses
  %i.gp = add nuw nsw i64 %.4337504.prol, 1       ; 2 uses
  %prol.iter702.next = add i64 %prol.iter702, 1   ; 2 uses
  %prol.iter702.cmp.not = icmp eq i64 %prol.iter702.next, %i.gd
  br i1 %prol.iter702.cmp.not, label %.lr.ph510.prol.loopexit, label %.lr.ph510.prol, !llvm.loop !19

.lr.ph510.prol.loopexit:                          ; preds = %.lr.ph510.prol, %.lr.ph510.preheader
  %.lcssa631.unr = phi double [ poison, %.lr.ph510.preheader ], [ %i.gg, %.lr.ph510.prol ]
  %.lcssa630.unr = phi double [ poison, %.lr.ph510.preheader ], [ %i.gj, %.lr.ph510.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph510.preheader ], [ %i.gm, %.lr.ph510.prol ]
  %.1300509.unr = phi double [ %.0299.lcssa, %.lr.ph510.preheader ], [ %i.gm, %.lr.ph510.prol ]
  %.1304508.unr = phi double [ %i.gc, %.lr.ph510.preheader ], [ %i.gj, %.lr.ph510.prol ]
  %.1308507.unr = phi double [ %i.gb, %.lr.ph510.preheader ], [ %i.gg, %.lr.ph510.prol ]
  %.5506.unr = phi ptr [ %.4.lcssa, %.lr.ph510.preheader ], [ %i.go, %.lr.ph510.prol ]
  %.5327505.unr = phi ptr [ %.4326.lcssa, %.lr.ph510.preheader ], [ %i.gn, %.lr.ph510.prol ]
  %.4337504.unr = phi i64 [ %.3336.lcssa, %.lr.ph510.preheader ], [ %i.gp, %.lr.ph510.prol ]
  %i.gq = sub nsw i64 %i.fx, %1
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %.loopexit, label %.lr.ph510

.lr.ph497:                                        ; preds = %.preheader393, %.lr.ph497
  %.0299496 = phi double [ %i.hc, %.lr.ph497 ], [ 0.000000e+00, %.preheader393 ]
  %.4493 = phi ptr [ %i.he, %.lr.ph497 ], [ %6, %.preheader393 ] ; 5 uses
  %.4326492 = phi ptr [ %i.hd, %.lr.ph497 ], [ %.0346.lcssa, %.preheader393 ] ; 9 uses
  %.3336491 = phi i64 [ %i.hf, %.lr.ph497 ], [ 0, %.preheader393 ]
  %i.gs = phi <2 x double> [ %36, %.lr.ph497 ], [ zeroinitializer, %.preheader393 ]
  %11 = getelementptr inbounds nuw i8, ptr %.4326492, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %.4493, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.4326492, i64 16
  %12 = load double, ptr %i.gu, align 8, !tbaa !9
  %i.gv = getelementptr inbounds nuw i8, ptr %.4326492, i64 40
  %13 = load double, ptr %i.gv, align 8, !tbaa !9
  %i.gw = getelementptr inbounds nuw i8, ptr %.4326492, i64 48
  %14 = getelementptr inbounds nuw i8, ptr %.4493, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %.4326492, i64 72
  %16 = getelementptr inbounds nuw i8, ptr %.4493, i64 24
  %17 = load <2 x double>, ptr %.4326492, align 8, !tbaa !9
  %18 = load <2 x double>, ptr %11, align 8, !tbaa !9
  %19 = load double, ptr %16, align 8, !tbaa !9   ; 2 uses
  %20 = load double, ptr %14, align 8, !tbaa !9   ; 2 uses
  %21 = load double, ptr %i.gt, align 8, !tbaa !9 ; 2 uses
  %22 = load double, ptr %.4493, align 8, !tbaa !9 ; 2 uses
  %23 = insertelement <2 x double> poison, double %21, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x double> %24, %18
  %25 = insertelement <2 x double> poison, double %22, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %26, <2 x double> %i.gx)
  %i.gz = fadd <2 x double> %i.gs, %i.gy
  %27 = fmul double %21, %13
  %28 = call double @llvm.fmuladd.f64(double %12, double %22, double %27)
  %29 = fadd double %.0299496, %28
  %30 = load <2 x double>, ptr %i.gw, align 8, !tbaa !9
  %31 = load <2 x double>, ptr %15, align 8, !tbaa !9
  %32 = insertelement <2 x double> poison, double %19, i64 0
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x double> %33, %31
  %34 = insertelement <2 x double> poison, double %20, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %35, <2 x double> %i.ha)
  %36 = fadd <2 x double> %i.gz, %i.hb            ; 2 uses
  %37 = getelementptr inbounds nuw i8, ptr %.4326492, i64 64
  %38 = load double, ptr %37, align 8, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %.4326492, i64 88
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = fmul double %19, %40
  %42 = call double @llvm.fmuladd.f64(double %38, double %20, double %41)
  %i.hc = fadd double %29, %42                    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.4326492, i64 96 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.4493, i64 32 ; 2 uses
  %i.hf = add nuw nsw i64 %.3336491, 4            ; 2 uses
  %i.hg = icmp samesign ult i64 %i.hf, %i.fx
  br i1 %i.hg, label %.lr.ph497, label %.preheader.loopexit, !llvm.loop !20

.lr.ph510:                                        ; preds = %.lr.ph510.prol.loopexit, %.lr.ph510
  %.1300509 = phi double [ %i.iw, %.lr.ph510 ], [ %.1300509.unr, %.lr.ph510.prol.loopexit ]
  %.1304508 = phi double [ %i.it, %.lr.ph510 ], [ %.1304508.unr, %.lr.ph510.prol.loopexit ]
  %.1308507 = phi double [ %i.iq, %.lr.ph510 ], [ %.1308507.unr, %.lr.ph510.prol.loopexit ]
  %.5506 = phi ptr [ %i.iy, %.lr.ph510 ], [ %.5506.unr, %.lr.ph510.prol.loopexit ] ; 5 uses
  %.5327505 = phi ptr [ %i.ix, %.lr.ph510 ], [ %.5327505.unr, %.lr.ph510.prol.loopexit ] ; 13 uses
  %.4337504 = phi i64 [ %i.iz, %.lr.ph510 ], [ %.4337504.unr, %.lr.ph510.prol.loopexit ]
  %i.hh = load double, ptr %.5327505, align 8, !tbaa !9
  %i.hi = load double, ptr %.5506, align 8, !tbaa !9 ; 3 uses
  %i.hj = call double @llvm.fmuladd.f64(double %i.hh, double %i.hi, double %.1308507)
  %i.hk = getelementptr inbounds nuw i8, ptr %.5327505, i64 8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9
  %i.hm = call double @llvm.fmuladd.f64(double %i.hl, double %i.hi, double %.1304508)
  %i.hn = getelementptr inbounds nuw i8, ptr %.5327505, i64 16
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !9
  %i.hp = call double @llvm.fmuladd.f64(double %i.ho, double %i.hi, double %.1300509)
  %i.hq = getelementptr inbounds nuw i8, ptr %.5327505, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %.5506, i64 8
  %i.hs = load double, ptr %i.hq, align 8, !tbaa !9
  %i.ht = load double, ptr %i.hr, align 8, !tbaa !9 ; 3 uses
  %i.hu = call double @llvm.fmuladd.f64(double %i.hs, double %i.ht, double %i.hj)
  %i.hv = getelementptr inbounds nuw i8, ptr %.5327505, i64 32
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !9
  %i.hx = call double @llvm.fmuladd.f64(double %i.hw, double %i.ht, double %i.hm)
  %i.hy = getelementptr inbounds nuw i8, ptr %.5327505, i64 40
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !9
  %i.ia = call double @llvm.fmuladd.f64(double %i.hz, double %i.ht, double %i.hp)
  %i.ib = getelementptr inbounds nuw i8, ptr %.5327505, i64 48
  %i.ic = getelementptr inbounds nuw i8, ptr %.5506, i64 16
  %i.id = load double, ptr %i.ib, align 8, !tbaa !9
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !9 ; 3 uses
  %i.if = call double @llvm.fmuladd.f64(double %i.id, double %i.ie, double %i.hu)
  %i.ig = getelementptr inbounds nuw i8, ptr %.5327505, i64 56
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !9
  %i.ii = call double @llvm.fmuladd.f64(double %i.ih, double %i.ie, double %i.hx)
  %i.ij = getelementptr inbounds nuw i8, ptr %.5327505, i64 64
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !9
  %i.il = call double @llvm.fmuladd.f64(double %i.ik, double %i.ie, double %i.ia)
  %i.im = getelementptr inbounds nuw i8, ptr %.5327505, i64 72
  %i.in = getelementptr inbounds nuw i8, ptr %.5506, i64 24
  %i.io = load double, ptr %i.im, align 8, !tbaa !9
  %i.ip = load double, ptr %i.in, align 8, !tbaa !9 ; 3 uses
  %i.iq = call double @llvm.fmuladd.f64(double %i.io, double %i.ip, double %i.if) ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.5327505, i64 80
  %i.is = load double, ptr %i.ir, align 8, !tbaa !9
  %i.it = call double @llvm.fmuladd.f64(double %i.is, double %i.ip, double %i.ii) ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.5327505, i64 88
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !9
  %i.iw = call double @llvm.fmuladd.f64(double %i.iv, double %i.ip, double %i.il) ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.5327505, i64 96
  %i.iy = getelementptr inbounds nuw i8, ptr %.5506, i64 32
  %i.iz = add nuw nsw i64 %.4337504, 4            ; 2 uses
  %exitcond563.not.3 = icmp eq i64 %i.iz, %1
  br i1 %exitcond563.not.3, label %.loopexit, label %.lr.ph510, !llvm.loop !21

.lr.ph487:                                        ; preds = %.lr.ph487, %.lr.ph487.preheader.new
  %.2309484 = phi double [ 0.000000e+00, %.lr.ph487.preheader.new ], [ %i.kh, %.lr.ph487 ]
  %.6483 = phi ptr [ %6, %.lr.ph487.preheader.new ], [ %i.ko, %.lr.ph487 ] ; 2 uses
  %.6328482 = phi ptr [ %.0346.lcssa, %.lr.ph487.preheader.new ], [ %i.kn, %.lr.ph487 ] ; 3 uses
  %i.ja = phi <2 x double> [ zeroinitializer, %.lr.ph487.preheader.new ], [ %i.km, %.lr.ph487 ]
  %niter699 = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %niter699.next.3, %.lr.ph487 ]
  %i.jb = load double, ptr %.6328482, align 8, !tbaa !9
  %i.jc = load double, ptr %.6483, align 8, !tbaa !9 ; 2 uses
  %i.jd = call double @llvm.fmuladd.f64(double %i.jb, double %i.jc, double %.2309484)
  %i.je = getelementptr inbounds nuw i8, ptr %.6328482, i64 8
  %i.jf = load <2 x double>, ptr %i.je, align 8, !tbaa !9
  %i.jg = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.jh, <2 x double> %i.ja)
  %i.jj = getelementptr inbounds [8 x i8], ptr %.6328482, i64 %5 ; 3 uses
  %i.jk = getelementptr inbounds [8 x i8], ptr %.6483, i64 %7 ; 2 uses
  %i.jl = load double, ptr %i.jj, align 8, !tbaa !9
  %i.jm = load double, ptr %i.jk, align 8, !tbaa !9 ; 2 uses
  %i.jn = call double @llvm.fmuladd.f64(double %i.jl, double %i.jm, double %i.jd)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jp = load <2 x double>, ptr %i.jo, align 8, !tbaa !9
  %i.jq = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.jr, <2 x double> %i.ji)
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %5 ; 3 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %7 ; 2 uses
  %i.jv = load double, ptr %i.jt, align 8, !tbaa !9
  %i.jw = load double, ptr %i.ju, align 8, !tbaa !9 ; 2 uses
  %i.jx = call double @llvm.fmuladd.f64(double %i.jv, double %i.jw, double %i.jn)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jz = load <2 x double>, ptr %i.jy, align 8, !tbaa !9
  %i.ka = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.kb, <2 x double> %i.js)
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %5 ; 3 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %7 ; 2 uses
  %i.kf = load double, ptr %i.kd, align 8, !tbaa !9
  %i.kg = load double, ptr %i.ke, align 8, !tbaa !9 ; 2 uses
  %i.kh = call double @llvm.fmuladd.f64(double %i.kf, double %i.kg, double %i.jx) ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kj = load <2 x double>, ptr %i.ki, align 8, !tbaa !9
  %i.kk = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.kl, <2 x double> %i.kc) ; 4 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %5 ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %7 ; 2 uses
  %niter699.next.3 = add i64 %niter699, 4         ; 2 uses
  %niter699.ncmp.3 = icmp eq i64 %niter699.next.3, %unroll_iter698
  br i1 %niter699.ncmp.3, label %.loopexit.loopexit636.unr-lcssa, label %.lr.ph487, !llvm.loop !22

.loopexit.loopexit636.unr-lcssa:                  ; preds = %.lr.ph487
  %i.kp = extractelement <2 x double> %i.km, i64 1
  %i.kq = extractelement <2 x double> %i.km, i64 0
  %lcmp.mod693.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod693.not, label %.loopexit, label %.lr.ph487.epil.preheader

.lr.ph487.epil.preheader:                         ; preds = %.loopexit.loopexit636.unr-lcssa, %.lr.ph487.preheader
  %.2309484.epil.init = phi double [ 0.000000e+00, %.lr.ph487.preheader ], [ %i.kh, %.loopexit.loopexit636.unr-lcssa ]
  %.6483.epil.init = phi ptr [ %6, %.lr.ph487.preheader ], [ %i.ko, %.loopexit.loopexit636.unr-lcssa ]
  %.6328482.epil.init = phi ptr [ %.0346.lcssa, %.lr.ph487.preheader ], [ %i.kn, %.loopexit.loopexit636.unr-lcssa ]
  %.epil.init692 = phi <2 x double> [ zeroinitializer, %.lr.ph487.preheader ], [ %i.km, %.loopexit.loopexit636.unr-lcssa ]
  %lcmp.mod697 = icmp ne i64 %xtraiter689, 0
  call void @llvm.assume(i1 %lcmp.mod697)
  br label %.lr.ph487.epil

.lr.ph487.epil:                                   ; preds = %.lr.ph487.epil, %.lr.ph487.epil.preheader
  %.2309484.epil = phi double [ %i.ku, %.lr.ph487.epil ], [ %.2309484.epil.init, %.lr.ph487.epil.preheader ]
  %.6483.epil = phi ptr [ %i.lb, %.lr.ph487.epil ], [ %.6483.epil.init, %.lr.ph487.epil.preheader ] ; 2 uses
  %.6328482.epil = phi ptr [ %i.la, %.lr.ph487.epil ], [ %.6328482.epil.init, %.lr.ph487.epil.preheader ] ; 3 uses
  %i.kr = phi <2 x double> [ %i.kz, %.lr.ph487.epil ], [ %.epil.init692, %.lr.ph487.epil.preheader ]
  %epil.iter690 = phi i64 [ %epil.iter690.next, %.lr.ph487.epil ], [ 0, %.lr.ph487.epil.preheader ]
  %i.ks = load double, ptr %.6328482.epil, align 8, !tbaa !9
  %i.kt = load double, ptr %.6483.epil, align 8, !tbaa !9 ; 2 uses
  %i.ku = call double @llvm.fmuladd.f64(double %i.ks, double %i.kt, double %.2309484.epil) ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.6328482.epil, i64 8
  %i.kw = load <2 x double>, ptr %i.kv, align 8, !tbaa !9
  %i.kx = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> %i.ky, <2 x double> %i.kr) ; 3 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %.6328482.epil, i64 %5
  %i.lb = getelementptr inbounds [8 x i8], ptr %.6483.epil, i64 %7
  %epil.iter690.next = add i64 %epil.iter690, 1   ; 2 uses
  %epil.iter690.cmp.not = icmp eq i64 %epil.iter690.next, %xtraiter689
  br i1 %epil.iter690.cmp.not, label %.loopexit.loopexit636.epilog-lcssa, label %.lr.ph487.epil, !llvm.loop !23

.loopexit.loopexit636.epilog-lcssa:               ; preds = %.lr.ph487.epil
  %i.lc = extractelement <2 x double> %i.kz, i64 1
  %i.ld = extractelement <2 x double> %i.kz, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit636.epilog-lcssa, %.loopexit.loopexit636.unr-lcssa, %.lr.ph510.prol.loopexit, %.lr.ph510, %.preheader
  %.3310 = phi double [ %i.iq, %.lr.ph510 ], [ %i.gb, %.preheader ], [ %.lcssa631.unr, %.lr.ph510.prol.loopexit ], [ %i.kh, %.loopexit.loopexit636.unr-lcssa ], [ %i.ku, %.loopexit.loopexit636.epilog-lcssa ]
  %.3306 = phi double [ %i.it, %.lr.ph510 ], [ %i.gc, %.preheader ], [ %.lcssa630.unr, %.lr.ph510.prol.loopexit ], [ %i.kq, %.loopexit.loopexit636.unr-lcssa ], [ %i.ld, %.loopexit.loopexit636.epilog-lcssa ]
  %.3302 = phi double [ %i.iw, %.lr.ph510 ], [ %.0299.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph510.prol.loopexit ], [ %i.kp, %.loopexit.loopexit636.unr-lcssa ], [ %i.lc, %.loopexit.loopexit636.epilog-lcssa ]
  %i.le = load double, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.lf = load double, ptr %.0316.lcssa, align 8, !tbaa !9
  %i.lg = call double @llvm.fmuladd.f64(double %i.le, double %.3310, double %i.lf)
  store double %i.lg, ptr %.0316.lcssa, align 8, !tbaa !9
  %i.lh = getelementptr inbounds [8 x i8], ptr %.0316.lcssa, i64 %9 ; 3 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !9
  %i.lj = call double @llvm.fmuladd.f64(double %i.le, double %.3306, double %i.li)
  store double %i.lj, ptr %i.lh, align 8, !tbaa !9
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lh, i64 %9 ; 2 uses
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !9
  %i.lm = call double @llvm.fmuladd.f64(double %i.le, double %.3302, double %i.ll)
  store double %i.lm, ptr %i.lk, align 8, !tbaa !9
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ln = icmp eq i64 %5, 2
  %or.cond3 = and i1 %i.ln, %i.l
  br i1 %or.cond3, label %.preheader398, label %.lr.ph459.preheader

.lr.ph459.preheader:                              ; preds = %bb.q
  %i.lo = add nsw i64 %1, -1
  %xtraiter667 = and i64 %1, 7                    ; 3 uses
  %i.lp = icmp ult i64 %i.lo, 7
  br i1 %i.lp, label %.lr.ph459.epil.preheader, label %.lr.ph459.preheader.new

.lr.ph459.preheader.new:                          ; preds = %.lr.ph459.preheader
  %unroll_iter673 = and i64 %1, 9223372036854775800
  br label %.lr.ph459

.preheader398:                                    ; preds = %bb.q
  %i.lq = and i64 %1, 9223372036854775804         ; 2 uses
  %.not520 = icmp eq i64 %i.lq, 0
  br i1 %.not520, label %.preheader396, label %.lr.ph467.preheader

.lr.ph467.preheader:                              ; preds = %.preheader398
  %i.lr = add nsw i64 %1, -4                      ; 2 uses
  %i.ls = lshr i64 %i.lr, 2                       ; 2 uses
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %i.lu = icmp eq i64 %i.ls, 0
  br i1 %i.lu, label %.lr.ph467.epil.preheader, label %.lr.ph467.preheader.new

.lr.ph467.preheader.new:                          ; preds = %.lr.ph467.preheader
  %unroll_iter684 = and i64 %i.lt, 9223372036854775806
  br label %.lr.ph467

end_hunk_0
begin_hunk_1_@dgemv_n:bb.a
  %i.vw = sub nsw i64 %i.uj, %1
  %i.vx = icmp ugt i64 %i.vw, -8
  br i1 %i.vx, label %.loopexit402, label %.lr.ph452

.lr.ph447:                                        ; preds = %.lr.ph447, %.lr.ph447.preheader.new
  %.0446 = phi double [ 0.000000e+00, %.lr.ph447.preheader.new ], [ %i.xu, %.lr.ph447 ]
  %.9342445 = phi i64 [ 0, %.lr.ph447.preheader.new ], [ %i.xv, %.lr.ph447 ] ; 10 uses
  %niter664 = phi i64 [ 0, %.lr.ph447.preheader.new ], [ %niter664.next.1, %.lr.ph447 ]
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %.9342445
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !9
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.9342445
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !9
  %i.wc = or disjoint i64 %.9342445, 1            ; 2 uses
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.wc
  %i.we = load double, ptr %i.wd, align 8, !tbaa !9
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.wc
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !9
  %i.wh = fmul double %i.we, %i.wg
  %i.wi = call double @llvm.fmuladd.f64(double %i.vz, double %i.wb, double %i.wh)
  %i.wj = or disjoint i64 %.9342445, 2            ; 2 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.wj
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !9
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.wj
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !9
  %i.wo = call double @llvm.fmuladd.f64(double %i.wl, double %i.wn, double %i.wi)
  %i.wp = or disjoint i64 %.9342445, 3            ; 2 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.wp
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !9
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.wp
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !9
  %i.wu = call double @llvm.fmuladd.f64(double %i.wr, double %i.wt, double %i.wo)
  %i.wv = fadd double %.0446, %i.wu
  %i.ww = or disjoint i64 %.9342445, 4            ; 2 uses
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.ww
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !9
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ww
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !9
  %i.xb = or disjoint i64 %.9342445, 5            ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.xb
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !9
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.xb
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !9
  %i.xg = fmul double %i.xd, %i.xf
  %i.xh = call double @llvm.fmuladd.f64(double %i.wy, double %i.xa, double %i.xg)
  %i.xi = or disjoint i64 %.9342445, 6            ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.xi
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !9
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.xi
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !9
  %i.xn = call double @llvm.fmuladd.f64(double %i.xk, double %i.xm, double %i.xh)
  %i.xo = or disjoint i64 %.9342445, 7            ; 2 uses
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.xo
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !9
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.xo
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !9
  %i.xt = call double @llvm.fmuladd.f64(double %i.xq, double %i.xs, double %i.xn)
  %i.xu = fadd double %i.wv, %i.xt                ; 3 uses
  %i.xv = add nuw nsw i64 %.9342445, 8            ; 2 uses
  %niter664.next.1 = add i64 %niter664, 2         ; 2 uses
  %niter664.ncmp.1.not = icmp eq i64 %niter664.next.1, %unroll_iter663
  br i1 %niter664.ncmp.1.not, label %.preheader401.loopexit.unr-lcssa, label %.lr.ph447, !llvm.loop !30

.lr.ph452:                                        ; preds = %.lr.ph452.prol.loopexit, %.lr.ph452
  %.1451 = phi double [ %i.zq, %.lr.ph452 ], [ %.1451.unr, %.lr.ph452.prol.loopexit ]
  %.10343450 = phi i64 [ %i.zr, %.lr.ph452 ], [ %.10343450.unr, %.lr.ph452.prol.loopexit ] ; 10 uses
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %.10343450
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !9
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.10343450
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !9
  %i.ya = call double @llvm.fmuladd.f64(double %i.xx, double %i.xz, double %.1451)
  %i.yb = add nuw nsw i64 %.10343450, 1           ; 2 uses
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.yb
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !9
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.yb
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !9
  %i.yg = call double @llvm.fmuladd.f64(double %i.yd, double %i.yf, double %i.ya)
  %i.yh = add nuw nsw i64 %.10343450, 2           ; 2 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.yh
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !9
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.yh
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !9
  %i.ym = call double @llvm.fmuladd.f64(double %i.yj, double %i.yl, double %i.yg)
  %i.yn = add nuw nsw i64 %.10343450, 3           ; 2 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.yn
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !9
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.yn
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !9
  %i.ys = call double @llvm.fmuladd.f64(double %i.yp, double %i.yr, double %i.ym)
  %i.yt = add nuw nsw i64 %.10343450, 4           ; 2 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.yt
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !9
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.yt
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !9
  %i.yy = call double @llvm.fmuladd.f64(double %i.yv, double %i.yx, double %i.ys)
  %i.yz = add nuw nsw i64 %.10343450, 5           ; 2 uses
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.yz
  %i.zb = load double, ptr %i.za, align 8, !tbaa !9
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.yz
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !9
  %i.ze = call double @llvm.fmuladd.f64(double %i.zb, double %i.zd, double %i.yy)
  %i.zf = add nuw nsw i64 %.10343450, 6           ; 2 uses
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.zf
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !9
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.zf
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !9
  %i.zk = call double @llvm.fmuladd.f64(double %i.zh, double %i.zj, double %i.ze)
  %i.zl = add nuw nsw i64 %.10343450, 7           ; 2 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %.0346.lcssa, i64 %i.zl
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !9
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.zl
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !9
  %i.zq = call double @llvm.fmuladd.f64(double %i.zn, double %i.zp, double %i.zk) ; 2 uses
  %i.zr = add nuw nsw i64 %.10343450, 8           ; 2 uses
  %exitcond559.not.7 = icmp eq i64 %i.zr, %1
  br i1 %exitcond559.not.7, label %.loopexit402, label %.lr.ph452, !llvm.loop !31

.lr.ph443:                                        ; preds = %.lr.ph443, %.lr.ph443.preheader.new
  %.2442 = phi double [ 0.000000e+00, %.lr.ph443.preheader.new ], [ %i.abd, %.lr.ph443 ]
  %.10441 = phi ptr [ %6, %.lr.ph443.preheader.new ], [ %i.abf, %.lr.ph443 ] ; 2 uses
  %.10332440 = phi ptr [ %.0346.lcssa, %.lr.ph443.preheader.new ], [ %i.abe, %.lr.ph443 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph443.preheader.new ], [ %niter.next.7, %.lr.ph443 ]
  %i.zs = load double, ptr %.10332440, align 8, !tbaa !9
  %i.zt = load double, ptr %.10441, align 8, !tbaa !9
  %i.zu = call double @llvm.fmuladd.f64(double %i.zs, double %i.zt, double %.2442)
  %i.zv = getelementptr inbounds [8 x i8], ptr %.10332440, i64 %5 ; 2 uses
  %i.zw = getelementptr inbounds [8 x i8], ptr %.10441, i64 %7 ; 2 uses
  %i.zx = load double, ptr %i.zv, align 8, !tbaa !9
  %i.zy = load double, ptr %i.zw, align 8, !tbaa !9
  %i.zz = call double @llvm.fmuladd.f64(double %i.zx, double %i.zy, double %i.zu)
  %i.aaa = getelementptr inbounds [8 x i8], ptr %i.zv, i64 %5 ; 2 uses
  %i.aab = getelementptr inbounds [8 x i8], ptr %i.zw, i64 %7 ; 2 uses
  %i.aac = load double, ptr %i.aaa, align 8, !tbaa !9
  %i.aad = load double, ptr %i.aab, align 8, !tbaa !9
  %i.aae = call double @llvm.fmuladd.f64(double %i.aac, double %i.aad, double %i.zz)
  %i.aaf = getelementptr inbounds [8 x i8], ptr %i.aaa, i64 %5 ; 2 uses
  %i.aag = getelementptr inbounds [8 x i8], ptr %i.aab, i64 %7 ; 2 uses
  %i.aah = load double, ptr %i.aaf, align 8, !tbaa !9
  %i.aai = load double, ptr %i.aag, align 8, !tbaa !9
  %i.aaj = call double @llvm.fmuladd.f64(double %i.aah, double %i.aai, double %i.aae)
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.aaf, i64 %5 ; 2 uses
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.aag, i64 %7 ; 2 uses
  %i.aam = load double, ptr %i.aak, align 8, !tbaa !9
  %i.aan = load double, ptr %i.aal, align 8, !tbaa !9
  %i.aao = call double @llvm.fmuladd.f64(double %i.aam, double %i.aan, double %i.aaj)
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.aak, i64 %5 ; 2 uses
  %i.aaq = getelementptr inbounds [8 x i8], ptr %i.aal, i64 %7 ; 2 uses
  %i.aar = load double, ptr %i.aap, align 8, !tbaa !9
  %i.aas = load double, ptr %i.aaq, align 8, !tbaa !9
  %i.aat = call double @llvm.fmuladd.f64(double %i.aar, double %i.aas, double %i.aao)
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %5 ; 2 uses
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.aaq, i64 %7 ; 2 uses
  %i.aaw = load double, ptr %i.aau, align 8, !tbaa !9
  %i.aax = load double, ptr %i.aav, align 8, !tbaa !9
  %i.aay = call double @llvm.fmuladd.f64(double %i.aaw, double %i.aax, double %i.aat)
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.aau, i64 %5 ; 2 uses
  %i.aba = getelementptr inbounds [8 x i8], ptr %i.aav, i64 %7 ; 2 uses
  %i.abb = load double, ptr %i.aaz, align 8, !tbaa !9
  %i.abc = load double, ptr %i.aba, align 8, !tbaa !9
  %i.abd = call double @llvm.fmuladd.f64(double %i.abb, double %i.abc, double %i.aay) ; 3 uses
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.aaz, i64 %5 ; 2 uses
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.aba, i64 %7 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit402.loopexit650.unr-lcssa, label %.lr.ph443, !llvm.loop !32

.loopexit402.loopexit650.unr-lcssa:               ; preds = %.lr.ph443
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit402, label %.lr.ph443.epil.preheader

.lr.ph443.epil.preheader:                         ; preds = %.loopexit402.loopexit650.unr-lcssa, %.lr.ph443.preheader
  %.2442.epil.init = phi double [ 0.000000e+00, %.lr.ph443.preheader ], [ %i.abd, %.loopexit402.loopexit650.unr-lcssa ]
  %.10441.epil.init = phi ptr [ %6, %.lr.ph443.preheader ], [ %i.abf, %.loopexit402.loopexit650.unr-lcssa ]
  %.10332440.epil.init = phi ptr [ %.0346.lcssa, %.lr.ph443.preheader ], [ %i.abe, %.loopexit402.loopexit650.unr-lcssa ]
  %lcmp.mod657 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod657)
  br label %.lr.ph443.epil

.lr.ph443.epil:                                   ; preds = %.lr.ph443.epil, %.lr.ph443.epil.preheader
  %.2442.epil = phi double [ %i.abi, %.lr.ph443.epil ], [ %.2442.epil.init, %.lr.ph443.epil.preheader ]
  %.10441.epil = phi ptr [ %i.abk, %.lr.ph443.epil ], [ %.10441.epil.init, %.lr.ph443.epil.preheader ] ; 2 uses
  %.10332440.epil = phi ptr [ %i.abj, %.lr.ph443.epil ], [ %.10332440.epil.init, %.lr.ph443.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph443.epil ], [ 0, %.lr.ph443.epil.preheader ]
  %i.abg = load double, ptr %.10332440.epil, align 8, !tbaa !9
  %i.abh = load double, ptr %.10441.epil, align 8, !tbaa !9
  %i.abi = call double @llvm.fmuladd.f64(double %i.abg, double %i.abh, double %.2442.epil) ; 2 uses
  %i.abj = getelementptr inbounds [8 x i8], ptr %.10332440.epil, i64 %5
  %i.abk = getelementptr inbounds [8 x i8], ptr %.10441.epil, i64 %7
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit402, label %.lr.ph443.epil, !llvm.loop !33

.loopexit402:                                     ; preds = %.loopexit402.loopexit650.unr-lcssa, %.lr.ph443.epil, %.lr.ph452.prol.loopexit, %.lr.ph452, %.preheader401
  %.3 = phi double [ %i.zq, %.lr.ph452 ], [ %.0.lcssa, %.preheader401 ], [ %.lcssa648.unr, %.lr.ph452.prol.loopexit ], [ %i.abd, %.loopexit402.loopexit650.unr-lcssa ], [ %i.abi, %.lr.ph443.epil ]
  %i.abl = load double, ptr %i.a, align 8, !tbaa !9
  %i.abm = load double, ptr %.0316.lcssa, align 8, !tbaa !9
  %i.abn = call double @llvm.fmuladd.f64(double %i.abl, double %.3, double %i.abm)
  store double %i.abn, ptr %.0316.lcssa, align 8, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %.loopexit, %.loopexit397, %.loopexit402, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dgemv_kernel_4x1(i64 noundef range(i64 -3, 2049) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i64 } asm sideeffect "movsd          ($2), %xmm12            \0A\09mulsd          ($5), %xmm12            \0A\09shufpd $$0,  %xmm12, %xmm12            \0A\091:                             \0A\09movups       ($4,$0,8), %xmm8          \0A\09movups     16($4,$0,8), %xmm9          \0A\09movups       ($3,$0,8), %xmm4          \0A\09movups     16($3,$0,8), %xmm5          \0A\09mulpd          %xmm12, %xmm8          \0A\09mulpd          %xmm12, %xmm9          \0A\09addpd          %xmm8 , %xmm4          \0A\09addpd          %xmm9 , %xmm5          \0A\09movups  %xmm4 ,    ($3,$0,8)           \0A\09movups  %xmm5 ,  16($3,$0,8)           \0A\09addq           $$4 , $0                  \0A\09subq           $$4 , $1                  \0A\09jnz            1b               \0A\09", "=r,=r,r,r,r,r,0,1,~{cc},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2, ptr %3, ptr %1, ptr nonnull %4, i64 0, i64 %0) #7, !srcloc !35 ; 0 uses
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @add_y(i64 noundef range(i64 -3, 2049) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef range(i64 2, 1) %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %0, 7                       ; 3 uses
  %i.b = icmp ult i64 %0, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %0, 9223372036854775800
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0812 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 9 uses
  %.0911 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = load double, ptr %.0812, align 8, !tbaa !9
  %i.d = load double, ptr %.0911, align 8, !tbaa !9
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %.0911, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %.0812, i64 8
  %i.g = getelementptr inbounds [8 x i8], ptr %.0911, i64 %3 ; 3 uses
  %i.h = load double, ptr %i.f, align 8, !tbaa !9
  %i.i = load double, ptr %i.g, align 8, !tbaa !9
  %i.j = fadd double %i.h, %i.i
  store double %i.j, ptr %i.g, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %.0812, i64 16
  %i.l = getelementptr inbounds [8 x i8], ptr %i.g, i64 %3 ; 3 uses
  %i.m = load double, ptr %i.k, align 8, !tbaa !9
  %i.n = load double, ptr %i.l, align 8, !tbaa !9
  %i.o = fadd double %i.m, %i.n
  store double %i.o, ptr %i.l, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.0812, i64 24
  %i.q = getelementptr inbounds [8 x i8], ptr %i.l, i64 %3 ; 3 uses
  %i.r = load double, ptr %i.p, align 8, !tbaa !9
  %i.s = load double, ptr %i.q, align 8, !tbaa !9
  %i.t = fadd double %i.r, %i.s
  store double %i.t, ptr %i.q, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %.0812, i64 32
  %i.v = getelementptr inbounds [8 x i8], ptr %i.q, i64 %3 ; 3 uses
  %i.w = load double, ptr %i.u, align 8, !tbaa !9
  %i.x = load double, ptr %i.v, align 8, !tbaa !9
  %i.y = fadd double %i.w, %i.x
  store double %i.y, ptr %i.v, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %.0812, i64 40
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %3 ; 3 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !9
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !9
  %i.ad = fadd double %i.ab, %i.ac
  store double %i.ad, ptr %i.aa, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.0812, i64 48
  %i.af = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %3 ; 3 uses
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !9
  %i.ah = load double, ptr %i.af, align 8, !tbaa !9
  %i.ai = fadd double %i.ag, %i.ah
  store double %i.ai, ptr %i.af, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.0812, i64 56
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.af, i64 %3 ; 3 uses
  %i.al = load double, ptr %i.aj, align 8, !tbaa !9
  %i.am = load double, ptr %i.ak, align 8, !tbaa !9
  %i.an = fadd double %i.al, %i.am
  store double %i.an, ptr %i.ak, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.0812, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %3 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0812.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %.0911.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0812.epil = phi ptr [ %i.at, %.lr.ph.epil ], [ %.0812.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0911.epil = phi ptr [ %i.au, %.lr.ph.epil ], [ %.0911.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aq = load double, ptr %.0812.epil, align 8, !tbaa !9
  %i.ar = load double, ptr %.0911.epil, align 8, !tbaa !9
  %i.as = fadd double %i.aq, %i.ar
  store double %i.as, ptr %.0911.epil, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %.0812.epil, i64 8
  %i.au = getelementptr inbounds [8 x i8], ptr %.0911.epil, i64 %3
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !37

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !11}
!34 = !{!4, !4, i64 0}
!35 = !{i64 23877, i64 23920, i64 23983, i64 24049, i64 24154, i64 24209, i64 24274, i64 24339, i64 24404, i64 24462, i64 24510, i64 24565, i64 24620, i64 24669, i64 24729, i64 24797, i64 24852, i64 24900}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !11}
end_hunk_1
