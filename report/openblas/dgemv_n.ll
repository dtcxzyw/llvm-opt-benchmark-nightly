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
  %xtraiter690 = and i64 %1, 3                    ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 3
  br i1 %i.fw, label %.lr.ph487.epil.preheader, label %.lr.ph487.preheader.new

.lr.ph487.preheader.new:                          ; preds = %.lr.ph487.preheader
  %unroll_iter699 = and i64 %1, 9223372036854775804
  br label %.lr.ph487

.preheader393:                                    ; preds = %bb.p
  %i.fx = and i64 %1, 9223372036854775804         ; 3 uses
  %.not521 = icmp eq i64 %i.fx, 0
  br i1 %.not521, label %.preheader, label %.lr.ph497

.preheader.loopexit:                              ; preds = %.lr.ph497
  %i.fy = and i64 %1, 9223372036854775804
  %i.fz = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ga = insertelement <2 x double> %i.fz, double %i.in, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader393
  %.3336.lcssa = phi i64 [ 0, %.preheader393 ], [ %i.fy, %.preheader.loopexit ] ; 3 uses
  %.4326.lcssa = phi ptr [ %.0346.lcssa, %.preheader393 ], [ %i.io, %.preheader.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %6, %.preheader393 ], [ %i.ip, %.preheader.loopexit ] ; 2 uses
  %.0299.lcssa = phi double [ 0.000000e+00, %.preheader393 ], [ %i.in, %.preheader.loopexit ]
  %i.gb = phi <2 x double> [ zeroinitializer, %.preheader393 ], [ %i.ga, %.preheader.loopexit ] ; 2 uses
  %i.gc = phi <2 x double> [ zeroinitializer, %.preheader393 ], [ %i.ig, %.preheader.loopexit ] ; 2 uses
  %i.gd = icmp slt i64 %.3336.lcssa, %1
  %i.ge = extractelement <2 x double> %i.gc, i64 0 ; 3 uses
  %i.gf = extractelement <2 x double> %i.gc, i64 1
  br i1 %i.gd, label %.lr.ph510.preheader, label %.loopexit

.lr.ph510.preheader:                              ; preds = %.preheader
  %i.gg = and i64 %1, 3                           ; 2 uses
  %lcmp.mod702.not = icmp eq i64 %i.gg, 0
  br i1 %lcmp.mod702.not, label %.lr.ph510.prol.loopexit, label %.lr.ph510.prol

.lr.ph510.prol:                                   ; preds = %.lr.ph510.preheader, %.lr.ph510.prol
  %.1308507.prol = phi double [ %i.gk, %.lr.ph510.prol ], [ %i.ge, %.lr.ph510.preheader ]
  %.5506.prol = phi ptr [ %i.gr, %.lr.ph510.prol ], [ %.4.lcssa, %.lr.ph510.preheader ] ; 2 uses
  %.5327505.prol = phi ptr [ %i.gq, %.lr.ph510.prol ], [ %.4326.lcssa, %.lr.ph510.preheader ] ; 3 uses
  %.4337504.prol = phi i64 [ %i.gs, %.lr.ph510.prol ], [ %.3336.lcssa, %.lr.ph510.preheader ]
  %i.gh = phi <2 x double> [ %i.gp, %.lr.ph510.prol ], [ %i.gb, %.lr.ph510.preheader ]
  %prol.iter703 = phi i64 [ %prol.iter703.next, %.lr.ph510.prol ], [ 0, %.lr.ph510.preheader ]
  %i.gi = load double, ptr %.5327505.prol, align 8, !tbaa !9
  %i.gj = load double, ptr %.5506.prol, align 8, !tbaa !9 ; 2 uses
  %i.gk = call double @llvm.fmuladd.f64(double %i.gi, double %i.gj, double %.1308507.prol) ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.5327505.prol, i64 8
  %i.gm = load <2 x double>, ptr %i.gl, align 8, !tbaa !9
  %i.gn = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.go, <2 x double> %i.gh) ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.5327505.prol, i64 24 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.5506.prol, i64 8 ; 2 uses
  %i.gs = add nuw nsw i64 %.4337504.prol, 1       ; 2 uses
  %prol.iter703.next = add i64 %prol.iter703, 1   ; 2 uses
  %prol.iter703.cmp.not = icmp eq i64 %prol.iter703.next, %i.gg
  br i1 %prol.iter703.cmp.not, label %.lr.ph510.prol.loopexit.unr-lcssa, label %.lr.ph510.prol, !llvm.loop !19

.lr.ph510.prol.loopexit.unr-lcssa:                ; preds = %.lr.ph510.prol
  %i.gt = extractelement <2 x double> %i.gp, i64 1
  %i.gu = extractelement <2 x double> %i.gp, i64 0
  br label %.lr.ph510.prol.loopexit

.lr.ph510.prol.loopexit:                          ; preds = %.lr.ph510.prol.loopexit.unr-lcssa, %.lr.ph510.preheader
  %.lcssa631.unr = phi double [ poison, %.lr.ph510.preheader ], [ %i.gk, %.lr.ph510.prol.loopexit.unr-lcssa ]
  %.lcssa630.unr = phi double [ poison, %.lr.ph510.preheader ], [ %i.gu, %.lr.ph510.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi double [ poison, %.lr.ph510.preheader ], [ %i.gt, %.lr.ph510.prol.loopexit.unr-lcssa ]
  %.1308507.unr = phi double [ %i.ge, %.lr.ph510.preheader ], [ %i.gk, %.lr.ph510.prol.loopexit.unr-lcssa ]
  %.5506.unr = phi ptr [ %.4.lcssa, %.lr.ph510.preheader ], [ %i.gr, %.lr.ph510.prol.loopexit.unr-lcssa ]
  %.5327505.unr = phi ptr [ %.4326.lcssa, %.lr.ph510.preheader ], [ %i.gq, %.lr.ph510.prol.loopexit.unr-lcssa ]
  %.4337504.unr = phi i64 [ %.3336.lcssa, %.lr.ph510.preheader ], [ %i.gs, %.lr.ph510.prol.loopexit.unr-lcssa ]
  %.unr704 = phi <2 x double> [ %i.gb, %.lr.ph510.preheader ], [ %i.gp, %.lr.ph510.prol.loopexit.unr-lcssa ]
  %i.gv = sub nsw i64 %i.fx, %1
  %i.gw = icmp ugt i64 %i.gv, -4
  br i1 %i.gw, label %.loopexit, label %.lr.ph510

.lr.ph497:                                        ; preds = %.preheader393, %.lr.ph497
  %.0299496 = phi double [ %i.in, %.lr.ph497 ], [ 0.000000e+00, %.preheader393 ]
  %.4493 = phi ptr [ %i.ip, %.lr.ph497 ], [ %6, %.preheader393 ] ; 5 uses
  %.4326492 = phi ptr [ %i.io, %.lr.ph497 ], [ %.0346.lcssa, %.preheader393 ] ; 9 uses
  %.3336491 = phi i64 [ %i.iq, %.lr.ph497 ], [ 0, %.preheader393 ]
  %i.gx = phi <2 x double> [ %i.ig, %.lr.ph497 ], [ zeroinitializer, %.preheader393 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.4326492, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %.4493, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %.4326492, i64 16
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !9
  %i.hc = getelementptr inbounds nuw i8, ptr %.4326492, i64 40
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !9
  %i.he = getelementptr inbounds nuw i8, ptr %.4326492, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %.4493, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.4326492, i64 72
  %i.hh = getelementptr inbounds nuw i8, ptr %.4493, i64 24
  %i.hi = load double, ptr %.4493, align 8, !tbaa !9 ; 2 uses
  %i.hj = load double, ptr %i.gz, align 8, !tbaa !9 ; 2 uses
  %i.hk = load <2 x double>, ptr %.4326492, align 8, !tbaa !9
  %i.hl = load <2 x double>, ptr %i.gy, align 8, !tbaa !9
  %i.hm = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x double> %i.hn, %i.hl
  %i.hp = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hq, <2 x double> %i.ho)
  %i.hs = fadd <2 x double> %i.gx, %i.hr
  %i.ht = fmul double %i.hj, %i.hd
  %i.hu = call double @llvm.fmuladd.f64(double %i.hb, double %i.hi, double %i.ht)
  %i.hv = fadd double %.0299496, %i.hu
  %i.hw = load double, ptr %i.hf, align 8, !tbaa !9 ; 2 uses
  %i.hx = load double, ptr %i.hh, align 8, !tbaa !9 ; 2 uses
  %i.hy = load <2 x double>, ptr %i.he, align 8, !tbaa !9
  %i.hz = load <2 x double>, ptr %i.hg, align 8, !tbaa !9
  %i.ia = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x double> %i.ib, %i.hz
  %i.id = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.ie, <2 x double> %i.ic)
  %i.ig = fadd <2 x double> %i.hs, %i.if          ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.4326492, i64 64
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !9
  %i.ij = getelementptr inbounds nuw i8, ptr %.4326492, i64 88
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !9
  %i.il = fmul double %i.hx, %i.ik
  %i.im = call double @llvm.fmuladd.f64(double %i.ii, double %i.hw, double %i.il)
  %i.in = fadd double %i.hv, %i.im                ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.4326492, i64 96 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.4493, i64 32 ; 2 uses
  %i.iq = add nuw nsw i64 %.3336491, 4            ; 2 uses
  %i.ir = icmp samesign ult i64 %i.iq, %i.fx
  br i1 %i.ir, label %.lr.ph497, label %.preheader.loopexit, !llvm.loop !20

.lr.ph510:                                        ; preds = %.lr.ph510.prol.loopexit, %.lr.ph510
  %.1308507 = phi double [ %i.jz, %.lr.ph510 ], [ %.1308507.unr, %.lr.ph510.prol.loopexit ]
  %.5506 = phi ptr [ %i.kg, %.lr.ph510 ], [ %.5506.unr, %.lr.ph510.prol.loopexit ] ; 5 uses
  %.5327505 = phi ptr [ %i.kf, %.lr.ph510 ], [ %.5327505.unr, %.lr.ph510.prol.loopexit ] ; 9 uses
  %.4337504 = phi i64 [ %i.kh, %.lr.ph510 ], [ %.4337504.unr, %.lr.ph510.prol.loopexit ]
  %i.is = phi <2 x double> [ %i.ke, %.lr.ph510 ], [ %.unr704, %.lr.ph510.prol.loopexit ]
  %i.it = load double, ptr %.5327505, align 8, !tbaa !9
  %i.iu = load double, ptr %.5506, align 8, !tbaa !9 ; 2 uses
  %i.iv = call double @llvm.fmuladd.f64(double %i.it, double %i.iu, double %.1308507)
  %i.iw = getelementptr inbounds nuw i8, ptr %.5327505, i64 8
  %i.ix = load <2 x double>, ptr %i.iw, align 8, !tbaa !9
  %i.iy = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.iz, <2 x double> %i.is)
  %i.jb = getelementptr inbounds nuw i8, ptr %.5327505, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %.5506, i64 8
  %i.jd = load double, ptr %i.jb, align 8, !tbaa !9
  %i.je = load double, ptr %i.jc, align 8, !tbaa !9 ; 2 uses
  %i.jf = call double @llvm.fmuladd.f64(double %i.jd, double %i.je, double %i.iv)
  %i.jg = getelementptr inbounds nuw i8, ptr %.5327505, i64 32
  %i.jh = load <2 x double>, ptr %i.jg, align 8, !tbaa !9
  %i.ji = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.jj, <2 x double> %i.ja)
end_hunk_0
