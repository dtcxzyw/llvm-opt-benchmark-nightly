Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmm_olnucopy?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @dtrmm_olnucopy(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 11 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.preheader145, label %.loopexit146

.preheader145:                                    ; preds = %bb.a
  %i.c = ashr i64 %0, 1                           ; 4 uses
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = and i64 %0, 1
  %.not140 = icmp eq i64 %i.e, 0                  ; 2 uses
  %i.f = mul nsw i64 %4, %3
  %i.g = add i64 %4, 1                            ; 3 uses
  %i.h = mul nsw i64 %i.g, %3                     ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %4 ; 6 uses
  %i.j = shl nsw i64 %3, 1                        ; 6 uses
  br i1 %i.d, label %.preheader145.split.us.preheader, label %.preheader145.split

.preheader145.split.us.preheader:                 ; preds = %.preheader145
  %i.k = and i64 %0, -2
  %i.l = add i64 %4, %i.k                         ; 2 uses
  %i.m = and i64 %0, 2
  %lcmp.mod.not = icmp eq i64 %i.m, 0
  %i.n = add nsw i64 %4, 2
  %i.o = add nsw i64 %i.c, -1
  %i.p = icmp eq i64 %i.c, 1
  br label %.preheader145.split.us

.preheader145.split.us:                           ; preds = %.preheader145.split.us.preheader, %bb.v
  %.0128.us = phi i64 [ %i.cf, %bb.v ], [ %5, %.preheader145.split.us.preheader ] ; 13 uses
  %.0121.us = phi ptr [ %.4125.us, %bb.v ], [ %6, %.preheader145.split.us.preheader ] ; 7 uses
  %.0118.us = phi i64 [ %i.cg, %bb.v ], [ %i.a, %.preheader145.split.us.preheader ] ; 2 uses
  %.not.us = icmp sgt i64 %4, %.0128.us
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader145.split.us
  %i.q = getelementptr inbounds [8 x i8], ptr %2, i64 %.0128.us ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.h
  br label %.preheader143.us.preheader

bb.c:                                             ; preds = %.preheader145.split.us
  %i.t = mul nsw i64 %.0128.us, %3
  %i.u = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.t
  %i.v = add nsw i64 %.0128.us, 1
  %i.w = mul nsw i64 %i.v, %3
  %i.x = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.w
  br label %.preheader143.us.preheader

.preheader143.us.preheader:                       ; preds = %bb.c, %bb.b
  %.1112.us.ph = phi ptr [ %i.r, %bb.b ], [ %i.u, %bb.c ] ; 6 uses
  %.1.us.ph = phi ptr [ %i.s, %bb.b ], [ %i.x, %bb.c ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader143.us.prol.loopexit, label %.preheader143.us.prol

.preheader143.us.prol:                            ; preds = %.preheader143.us.preheader
  %i.y = icmp sgt i64 %4, %.0128.us
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.preheader143.us.prol
  %i.z = icmp slt i64 %4, %.0128.us
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.1112.us.ph, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !20
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.0121.us, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %.0121.us, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %.0121.us, i64 24
  store double 1.000000e+00, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %.1112.us.ph, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader143.us.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds [8 x i8], ptr %.1112.us.ph, i64 %i.j
  %i.ah = getelementptr inbounds [8 x i8], ptr %.1.us.ph, i64 %i.j
  br label %.preheader143.us.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.preheader143.us.prol
  %i.ai = load <2 x double>, ptr %.1112.us.ph, align 8, !tbaa !20
  %i.aj = load <2 x double>, ptr %.1.us.ph, align 8, !tbaa !20
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> %i.aj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.ak, ptr %.0121.us, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %.1112.us.ph, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader143.us.prol.loopexit.unr-lcssa

.preheader143.us.prol.loopexit.unr-lcssa:         ; preds = %bb.g, %bb.f, %bb.e
  %.2113.us.prol = phi ptr [ %i.al, %bb.g ], [ %i.ag, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %.2.us.prol = phi ptr [ %i.am, %bb.g ], [ %i.ah, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  %.2123.us.prol = getelementptr inbounds nuw i8, ptr %.0121.us, i64 32 ; 2 uses
  br label %.preheader143.us.prol.loopexit

.preheader143.us.prol.loopexit:                   ; preds = %.preheader143.us.prol.loopexit.unr-lcssa, %.preheader143.us.preheader
  %.1122.us.unr = phi ptr [ %.0121.us, %.preheader143.us.preheader ], [ %.2123.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.0119.us.unr = phi i64 [ %i.c, %.preheader143.us.preheader ], [ %i.o, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.0115.us.unr = phi i64 [ %4, %.preheader143.us.preheader ], [ %i.n, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.1112.us.unr = phi ptr [ %.1112.us.ph, %.preheader143.us.preheader ], [ %.2113.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.1.us.unr = phi ptr [ %.1.us.ph, %.preheader143.us.preheader ], [ %.2.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.2113.us.lcssa.unr = phi ptr [ poison, %.preheader143.us.preheader ], [ %.2113.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.2.us.lcssa.unr = phi ptr [ poison, %.preheader143.us.preheader ], [ %.2.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.2123.us.lcssa.unr = phi ptr [ poison, %.preheader143.us.preheader ], [ %.2123.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  br i1 %i.p, label %.loopexit144.us, label %.preheader143.us

.preheader143.us:                                 ; preds = %.preheader143.us.prol.loopexit, %bb.p
  %.1122.us = phi ptr [ %.2123.us.1, %bb.p ], [ %.1122.us.unr, %.preheader143.us.prol.loopexit ] ; 8 uses
  %.0119.us = phi i64 [ %i.bt, %bb.p ], [ %.0119.us.unr, %.preheader143.us.prol.loopexit ] ; 2 uses
  %.0115.us = phi i64 [ %i.bs, %bb.p ], [ %.0115.us.unr, %.preheader143.us.prol.loopexit ] ; 4 uses
  %.1112.us = phi ptr [ %.2113.us.1, %bb.p ], [ %.1112.us.unr, %.preheader143.us.prol.loopexit ] ; 5 uses
  %.1.us = phi ptr [ %.2.us.1, %bb.p ], [ %.1.us.unr, %.preheader143.us.prol.loopexit ] ; 4 uses
  %i.an = icmp sgt i64 %.0115.us, %.0128.us
  br i1 %i.an, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.preheader143.us
  %i.ao = icmp slt i64 %.0115.us, %.0128.us
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.1112.us, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !20
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.1122.us, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %.1122.us, i64 16
  store double %i.aq, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %.1122.us, i64 24
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %.1112.us, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader143.us.1

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds [8 x i8], ptr %.1112.us, i64 %i.j
  %i.aw = getelementptr inbounds [8 x i8], ptr %.1.us, i64 %i.j
  br label %.preheader143.us.1

bb.k:                                             ; preds = %.preheader143.us
  %i.ax = load <2 x double>, ptr %.1112.us, align 8, !tbaa !20
  %i.ay = load <2 x double>, ptr %.1.us, align 8, !tbaa !20
  %i.az = shufflevector <2 x double> %i.ax, <2 x double> %i.ay, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.az, ptr %.1122.us, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %.1112.us, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader143.us.1

.preheader143.us.1:                               ; preds = %bb.k, %bb.j, %bb.i
  %.2113.us = phi ptr [ %i.ba, %bb.k ], [ %i.av, %bb.j ], [ %i.at, %bb.i ] ; 5 uses
  %.2.us = phi ptr [ %i.bb, %bb.k ], [ %i.aw, %bb.j ], [ %i.au, %bb.i ] ; 4 uses
  %.2123.us = getelementptr inbounds nuw i8, ptr %.1122.us, i64 32 ; 3 uses
  %i.bc = add nsw i64 %.0115.us, 2                ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, %.0128.us
  br i1 %i.bd, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.preheader143.us.1
  %i.be = icmp slt i64 %i.bc, %.0128.us
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.2113.us, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.2123.us, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %.1122.us, i64 48
  store double %i.bg, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %.1122.us, i64 56
  store double 1.000000e+00, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %.2113.us, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds [8 x i8], ptr %.2113.us, i64 %i.j
  %i.bm = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %i.j
  br label %bb.p

bb.o:                                             ; preds = %.preheader143.us.1
  %i.bn = load <2 x double>, ptr %.2113.us, align 8, !tbaa !20
  %i.bo = load <2 x double>, ptr %.2.us, align 8, !tbaa !20
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> %i.bo, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.bp, ptr %.2123.us, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %.2113.us, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.2113.us.1 = phi ptr [ %i.bq, %bb.o ], [ %i.bl, %bb.n ], [ %i.bj, %bb.m ] ; 2 uses
  %.2.us.1 = phi ptr [ %i.br, %bb.o ], [ %i.bm, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %.2123.us.1 = getelementptr inbounds nuw i8, ptr %.1122.us, i64 64 ; 2 uses
  %i.bs = add nsw i64 %.0115.us, 4
  %i.bt = add nsw i64 %.0119.us, -2
  %i.bu = icmp sgt i64 %.0119.us, 2
  br i1 %i.bu, label %.preheader143.us, label %.loopexit144.us, !llvm.loop !8

bb.q:                                             ; preds = %.loopexit144.us
  %i.bv = icmp sgt i64 %i.l, %.0128.us
  br i1 %i.bv, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = icmp slt i64 %i.l, %.0128.us
  br i1 %i.bw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load double, ptr %.2.us.lcssa, align 8, !tbaa !20
  %i.by = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bx, i64 1
  store <2 x double> %i.by, ptr %.2123.us.lcssa, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %.1122.us.lcssa, i64 48
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.1122.us.lcssa, i64 48
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.cb = load double, ptr %.2113.us.lcssa, align 8, !tbaa !20
  %i.cc = load double, ptr %.2.us.lcssa, align 8, !tbaa !20
  store double %i.cb, ptr %.2123.us.lcssa, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %.1122.us.lcssa, i64 40
  store double %i.cc, ptr %i.cd, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %.1122.us.lcssa, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.loopexit144.us
  %.4125.us = phi ptr [ %i.ce, %bb.u ], [ %i.ca, %bb.t ], [ %i.bz, %bb.s ], [ %.2123.us.lcssa, %.loopexit144.us ] ; 2 uses
  %i.cf = add nsw i64 %.0128.us, 2                ; 2 uses
  %i.cg = add nsw i64 %.0118.us, -1
  %i.ch = icmp sgt i64 %.0118.us, 1
  br i1 %i.ch, label %.preheader145.split.us, label %.loopexit146, !llvm.loop !9

.loopexit144.us:                                  ; preds = %bb.p, %.preheader143.us.prol.loopexit
  %.2113.us.lcssa = phi ptr [ %.2113.us.lcssa.unr, %.preheader143.us.prol.loopexit ], [ %.2113.us.1, %bb.p ]
  %.2.us.lcssa = phi ptr [ %.2.us.lcssa.unr, %.preheader143.us.prol.loopexit ], [ %.2.us.1, %bb.p ] ; 2 uses
  %.2123.us.lcssa = phi ptr [ %.2123.us.lcssa.unr, %.preheader143.us.prol.loopexit ], [ %.2123.us.1, %bb.p ] ; 3 uses
  %.1122.us.lcssa = phi ptr [ %.0121.us, %.preheader143.us.prol.loopexit ], [ %.2123.us, %bb.p ] ; 4 uses
  br i1 %.not140, label %bb.v, label %bb.q

.preheader145.split:                              ; preds = %.preheader145
  br i1 %.not140, label %.preheader145.split.split.us.preheader, label %.preheader145.split.split.preheader

.preheader145.split.split.preheader:              ; preds = %.preheader145.split
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %i.a, 116
  br i1 %min.iters.check, label %.preheader145.split.split.preheader224, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader145.split.split.preheader
  %7 = add nsw i64 %i.a, -1                       ; 4 uses
  %8 = shl i64 %3, 4                              ; 4 uses
  %9 = mul i64 %3, -16                            ; 2 uses
  %10 = mul i64 %5, %3
  %i.ci = add i64 %10, %4
  %i.cj = shl i64 %i.ci, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.cj  ; 4 uses
  %11 = icmp slt i64 %8, 0                        ; 2 uses
  %12 = select i1 %11, i64 %9, i64 %8
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 %7) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %13 = sub i64 0, %mul.result
  %14 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.ck = getelementptr i8, ptr %scevgep, i64 %13
  %15 = icmp ult ptr %14, %scevgep
  %16 = icmp ugt ptr %i.ck, %scevgep
  %17 = select i1 %11, i1 %16, i1 %15
  %18 = or i1 %17, %mul.overflow
  %19 = mul i64 %3, %i.g
  %20 = add i64 %19, %5
  %21 = shl i64 %20, 3
  %scevgep180.a = getelementptr i8, ptr %2, i64 %21 ; 2 uses
  %mul.result182 = shl i64 %7, 4
  %mul.overflow183 = icmp ugt i64 %7, 1152921504606846975
  %i.cl = getelementptr i8, ptr %scevgep180.a, i64 %mul.result182
  %i.cm = icmp ult ptr %i.cl, %scevgep180.a
  %22 = or i1 %i.cm, %mul.overflow183
  %23 = add i64 %5, 1
  %24 = mul i64 %3, %23
  %25 = add i64 %24, %4
  %26 = shl i64 %25, 3
  %scevgep184 = getelementptr i8, ptr %2, i64 %26 ; 4 uses
  %27 = icmp slt i64 %8, 0                        ; 2 uses
  %28 = select i1 %27, i64 %9, i64 %8
  %mul185 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %28, i64 %7) ; 2 uses
  %mul.result186 = extractvalue { i64, i1 } %mul185, 0 ; 2 uses
  %mul.overflow187 = extractvalue { i64, i1 } %mul185, 1
  %29 = sub i64 0, %mul.result186
  %i.cn = getelementptr i8, ptr %scevgep184, i64 %mul.result186
  %i.co = getelementptr i8, ptr %scevgep184, i64 %29
  %i.cp = icmp ult ptr %i.cn, %scevgep184
  %30 = icmp ugt ptr %i.co, %scevgep184
  %31 = select i1 %27, i1 %30, i1 %i.cp
  %i.cq = or i1 %31, %mul.overflow187
  %i.cr = or i1 %18, %22
  %i.cs = or i1 %i.cr, %i.cq
  br i1 %i.cs, label %.preheader145.split.split.preheader224, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ct = shl i64 %i.a, 4                         ; 3 uses
  %32 = getelementptr i8, ptr %6, i64 %i.ct       ; 3 uses
  %33 = add i64 %5, 1
  %34 = mul i64 %3, %33
  %35 = shl i64 %4, 3                             ; 2 uses
  %36 = add i64 %34, %4
  %37 = shl i64 %36, 3
  %i.cu = getelementptr i8, ptr %2, i64 %37       ; 4 uses
  %i.cv = shl i64 %5, 3                           ; 3 uses
  %38 = add i64 %i.ct, %i.cv                      ; 2 uses
  %39 = add i64 %38, -8
  %40 = mul i64 %3, %39
  %41 = getelementptr i8, ptr %2, i64 %40
  %42 = getelementptr i8, ptr %41, i64 %35        ; 4 uses
  %43 = icmp ult ptr %i.cu, %42
  %44 = select i1 %43, ptr %i.cu, ptr %42
  %45 = icmp ugt ptr %i.cu, %42
  %46 = select i1 %45, ptr %i.cu, ptr %42
  %47 = getelementptr i8, ptr %46, i64 8
  %48 = mul i64 %3, %i.g
  %i.cw = shl i64 %48, 3                          ; 2 uses
  %49 = getelementptr i8, ptr %2, i64 %i.cw
  %50 = getelementptr i8, ptr %49, i64 %i.cv
  %51 = getelementptr i8, ptr %2, i64 %i.cw
  %52 = getelementptr i8, ptr %51, i64 %i.ct
  %53 = getelementptr i8, ptr %52, i64 %i.cv
  %i.cx = getelementptr i8, ptr %53, i64 -8
  %54 = mul i64 %5, %3
  %55 = add i64 %54, %4
  %56 = shl i64 %55, 3
  %i.cy = getelementptr i8, ptr %2, i64 %56       ; 4 uses
  %57 = add i64 %38, -16
  %58 = mul i64 %3, %57
  %i.cz = getelementptr i8, ptr %2, i64 %58
  %i.da = getelementptr i8, ptr %i.cz, i64 %35    ; 4 uses
  %59 = icmp ult ptr %i.cy, %i.da
  %60 = select i1 %59, ptr %i.cy, ptr %i.da
  %61 = icmp ugt ptr %i.cy, %i.da
  %62 = select i1 %61, ptr %i.cy, ptr %i.da
  %i.db = getelementptr i8, ptr %62, i64 8
  %bound0 = icmp ult ptr %6, %47
  %bound1 = icmp ult ptr %44, %32
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %6, %i.cx
  %bound1207 = icmp ult ptr %50, %32
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  %bound0209 = icmp ult ptr %6, %i.db
  %bound1210 = icmp ult ptr %60, %32
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx, %found.conflict211
  br i1 %conflict.rdx212, label %.preheader145.split.split.preheader224, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 4 uses
  %i.dc = shl nuw nsw i64 %n.vec, 1
  %i.dd = add i64 %5, %i.dc                       ; 2 uses
  %i.de = shl i64 %n.vec, 4
  %i.df = getelementptr i8, ptr %6, i64 %i.de     ; 2 uses
  %i.dg = and i64 %i.a, 3
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert213 = insertelement <4 x i64> poison, i64 %3, i64 0
  %broadcast.splat214 = shufflevector <4 x i64> %broadcast.splatinsert213, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert215 = insertelement <4 x i64> poison, i64 %5, i64 0
  %broadcast.splat216 = shufflevector <4 x i64> %broadcast.splatinsert215, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat216, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %pointer.phi = phi ptr [ %6, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 2 uses
  %i.dh = icmp sgt <4 x i64> %broadcast.splat, %vec.ind ; 3 uses
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep, <4 x i64> %vec.ind
  %63 = mul nsw <4 x i64> %vec.ind, %broadcast.splat214
  %wide.gep217 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %63
  %i.di = add nsw <4 x i64> %vec.ind, splat (i64 1)
  %64 = mul nsw <4 x i64> %i.di, %broadcast.splat214
  %wide.gep218 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %64
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep217, <4 x i1> %i.dh, <4 x double> poison), !tbaa !20, !alias.scope !22
  %i.dj = icmp sge <4 x i64> %broadcast.splat, %vec.ind ; 3 uses
  %predphi = select <4 x i1> %i.dh, <4 x double> %wide.masked.gather, <4 x double> splat (double 1.000000e+00)
  %predphi219 = select <4 x i1> %i.dh, <4 x ptr> %wide.gep218, <4 x ptr> %wide.gep
  %wide.masked.gather220 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi219, <4 x i1> %i.dj, <4 x double> poison), !tbaa !20
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %predphi, <4 x ptr> align 8 %vector.gep, <4 x i1> %i.dj), !tbaa !20, !alias.scope !23, !noalias !24
  %wide.gep221 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather220, <4 x ptr> align 8 %wide.gep221, <4 x i1> %i.dj), !tbaa !20, !alias.scope !23, !noalias !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 8)
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.loopexit146, label %.preheader145.split.split.preheader224

.preheader145.split.split.preheader224:           ; preds = %vector.memcheck, %vector.scevcheck, %.preheader145.split.split.preheader, %middle.block
  %.0128.ph = phi i64 [ %5, %vector.memcheck ], [ %5, %vector.scevcheck ], [ %5, %.preheader145.split.split.preheader ], [ %i.dd, %middle.block ]
  %.0121.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %vector.scevcheck ], [ %6, %.preheader145.split.split.preheader ], [ %i.df, %middle.block ]
  %.0118.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %vector.scevcheck ], [ %i.a, %.preheader145.split.split.preheader ], [ %i.dg, %middle.block ]
  br label %.preheader145.split.split

.preheader145.split.split.us.preheader:           ; preds = %.preheader145.split
  %i.dl = and i64 %1, -2
  %i.dm = add i64 %5, %i.dl
  br label %.loopexit146

.preheader145.split.split:                        ; preds = %.preheader145.split.split.preheader224, %bb.z
  %.0128 = phi i64 [ %i.dv, %bb.z ], [ %.0128.ph, %.preheader145.split.split.preheader224 ] ; 6 uses
  %.0121 = phi ptr [ %.4125, %bb.z ], [ %.0121.ph, %.preheader145.split.split.preheader224 ] ; 3 uses
  %.0118 = phi i64 [ %i.dw, %bb.z ], [ %.0118.ph, %.preheader145.split.split.preheader224 ] ; 2 uses
  %.not = icmp sgt i64 %4, %.0128
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader145.split.split
  %i.dn = mul nsw i64 %.0128, %3
  %i.do = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dn
  %i.dp = add nsw i64 %.0128, 1
  %i.dq = mul nsw i64 %i.dp, %3
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dq
  %i.ds = load double, ptr %i.do, align 8, !tbaa !20
  br label %.sink.split

bb.x:                                             ; preds = %.preheader145.split.split
  %i.dt = icmp slt i64 %4, %.0128
  br i1 %i.dt, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0128
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.w
  %.sink177 = phi double [ %i.ds, %bb.w ], [ 1.000000e+00, %bb.y ]
  %.sink.in = phi ptr [ %i.dr, %bb.w ], [ %gep, %bb.y ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !20
  store double %.sink177, ptr %.0121, align 8, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %.0121, i64 8
  store double %.sink, ptr %i.du, align 8, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %.4125 = getelementptr inbounds nuw i8, ptr %.0121, i64 16 ; 2 uses
  %i.dv = add nsw i64 %.0128, 2                   ; 2 uses
  %i.dw = add nsw i64 %.0118, -1
  %i.dx = icmp sgt i64 %.0118, 1
  br i1 %i.dx, label %.preheader145.split.split, label %.loopexit146, !llvm.loop !16

.loopexit146:                                     ; preds = %bb.z, %bb.v, %middle.block, %.preheader145.split.split.us.preheader, %bb.a
  %.1129 = phi i64 [ %5, %bb.a ], [ %i.dm, %.preheader145.split.split.us.preheader ], [ %i.cf, %bb.v ], [ %i.dd, %middle.block ], [ %i.dv, %bb.z ] ; 13 uses
  %.5126 = phi ptr [ %6, %bb.a ], [ %6, %.preheader145.split.split.us.preheader ], [ %.4125.us, %bb.v ], [ %i.df, %middle.block ], [ %.4125, %bb.z ] ; 2 uses
  %.not141 = trunc i64 %1 to i1
  %i.dy = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.dy, %.not141
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit146
  %.not142 = icmp sgt i64 %4, %.1129
  %i.dz = getelementptr inbounds [8 x i8], ptr %2, i64 %4
  %i.ea = mul nsw i64 %.1129, %3
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %2, i64 %.1129
  %i.ed = mul nsw i64 %4, %3
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ed
  %.4 = select i1 %.not142, ptr %i.eb, ptr %i.ee  ; 2 uses
  %xtraiter227 = and i64 %0, 3                    ; 2 uses
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.ae
  %.6127.prol = phi ptr [ %.7.prol, %bb.ae ], [ %.5126, %.preheader.preheader ] ; 3 uses
  %.1120.prol = phi i64 [ %i.em, %bb.ae ], [ %0, %.preheader.preheader ]
  %.2117.prol = phi i64 [ %i.el, %bb.ae ], [ %4, %.preheader.preheader ] ; 3 uses
  %.5.prol = phi ptr [ %.6.prol, %bb.ae ], [ %.4, %.preheader.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.ae ], [ 0, %.preheader.preheader ]
  %i.ef = icmp sgt i64 %.2117.prol, %.1129
  br i1 %i.ef, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.preheader.prol
  %i.eg = icmp slt i64 %.2117.prol, %.1129
  br i1 %i.eg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store double 1.000000e+00, ptr %.6127.prol, align 8, !tbaa !20
  %i.eh = getelementptr inbounds nuw i8, ptr %.5.prol, i64 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds [8 x i8], ptr %.5.prol, i64 %3
  br label %bb.ae

bb.ad:                                            ; preds = %.preheader.prol
  %i.ej = load double, ptr %.5.prol, align 8, !tbaa !20
  store double %i.ej, ptr %.6127.prol, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %.5.prol, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.6.prol = phi ptr [ %i.ek, %bb.ad ], [ %i.ei, %bb.ac ], [ %i.eh, %bb.ab ] ; 2 uses
  %.7.prol = getelementptr inbounds nuw i8, ptr %.6127.prol, i64 8 ; 2 uses
  %i.el = add nsw i64 %.2117.prol, 1              ; 2 uses
  %i.em = add nsw i64 %.1120.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter227
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !17

.preheader.prol.loopexit:                         ; preds = %bb.ae, %.preheader.preheader
  %.6127.unr = phi ptr [ %.5126, %.preheader.preheader ], [ %.7.prol, %bb.ae ]
  %.1120.unr = phi i64 [ %0, %.preheader.preheader ], [ %i.em, %bb.ae ]
  %.2117.unr = phi i64 [ %4, %.preheader.preheader ], [ %i.el, %bb.ae ]
  %.5.unr = phi ptr [ %.4, %.preheader.preheader ], [ %.6.prol, %bb.ae ]
  %i.en = icmp ult i64 %0, 4
  br i1 %i.en, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.av
  %.6127 = phi ptr [ %.7.3, %bb.av ], [ %.6127.unr, %.preheader.prol.loopexit ] ; 6 uses
  %.1120 = phi i64 [ %i.fp, %bb.av ], [ %.1120.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.2117 = phi i64 [ %i.fo, %bb.av ], [ %.2117.unr, %.preheader.prol.loopexit ] ; 7 uses
  %.5 = phi ptr [ %.6.3, %bb.av ], [ %.5.unr, %.preheader.prol.loopexit ] ; 4 uses
  %i.eo = icmp sgt i64 %.2117, %.1129
  br i1 %i.eo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.preheader
  %i.ep = load double, ptr %.5, align 8, !tbaa !20
  store double %i.ep, ptr %.6127, align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %.5, i64 8
  br label %.preheader.1

bb.ag:                                            ; preds = %.preheader
  %i.er = icmp slt i64 %.2117, %.1129
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds [8 x i8], ptr %.5, i64 %3
  br label %.preheader.1

bb.ai:                                            ; preds = %bb.ag
  store double 1.000000e+00, ptr %.6127, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %.5, i64 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.ah, %bb.ai, %bb.af
  %.6 = phi ptr [ %i.eq, %bb.af ], [ %i.es, %bb.ah ], [ %i.et, %bb.ai ] ; 4 uses
  %.7 = getelementptr inbounds nuw i8, ptr %.6127, i64 8 ; 2 uses
  %.not229 = icmp slt i64 %.2117, %.1129
  br i1 %.not229, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.preheader.1
  %i.eu = add nsw i64 %.2117, 1
  %i.ev = icmp slt i64 %i.eu, %.1129
  br i1 %i.ev, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store double 1.000000e+00, ptr %.7, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %.6, i64 8
  br label %.preheader.2

bb.al:                                            ; preds = %bb.aj
  %i.ex = getelementptr inbounds [8 x i8], ptr %.6, i64 %3
  br label %.preheader.2

bb.am:                                            ; preds = %.preheader.1
  %i.ey = load double, ptr %.6, align 8, !tbaa !20
  store double %i.ey, ptr %.7, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %.6, i64 8
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.am, %bb.al, %bb.ak
  %.6.1 = phi ptr [ %i.ez, %bb.am ], [ %i.ex, %bb.al ], [ %i.ew, %bb.ak ] ; 4 uses
  %.7.1 = getelementptr inbounds nuw i8, ptr %.6127, i64 16 ; 2 uses
  %i.fa = add nsw i64 %.2117, 2                   ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, %.1129
  br i1 %i.fb, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.preheader.2
  %i.fc = icmp slt i64 %i.fa, %.1129
  br i1 %i.fc, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store double 1.000000e+00, ptr %.7.1, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %.6.1, i64 8
  br label %.preheader.3

bb.ap:                                            ; preds = %bb.an
  %i.fe = getelementptr inbounds [8 x i8], ptr %.6.1, i64 %3
  br label %.preheader.3

bb.aq:                                            ; preds = %.preheader.2
  %i.ff = load double, ptr %.6.1, align 8, !tbaa !20
  store double %i.ff, ptr %.7.1, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %.6.1, i64 8
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.aq, %bb.ap, %bb.ao
  %.6.2 = phi ptr [ %i.fg, %bb.aq ], [ %i.fe, %bb.ap ], [ %i.fd, %bb.ao ] ; 4 uses
  %.7.2 = getelementptr inbounds nuw i8, ptr %.6127, i64 24 ; 2 uses
  %i.fh = add nsw i64 %.2117, 3                   ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, %.1129
  br i1 %i.fi, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %.preheader.3
  %i.fj = icmp slt i64 %i.fh, %.1129
  br i1 %i.fj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store double 1.000000e+00, ptr %.7.2, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %.6.2, i64 8
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds [8 x i8], ptr %.6.2, i64 %3
  br label %bb.av

bb.au:                                            ; preds = %.preheader.3
  %i.fm = load double, ptr %.6.2, align 8, !tbaa !20
  store double %i.fm, ptr %.7.2, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %.6.2, i64 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.6.3 = phi ptr [ %i.fn, %bb.au ], [ %i.fl, %bb.at ], [ %i.fk, %bb.as ]
  %.7.3 = getelementptr inbounds nuw i8, ptr %.6127, i64 32
  %i.fo = add nsw i64 %.2117, 4
  %i.fp = add nsw i64 %.1120, -4
  %i.fq = icmp sgt i64 %.1120, 4
  br i1 %i.fq, label %.preheader, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %bb.av, %.loopexit146
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(write) }

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
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21}
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !21, !25, !26}
!16 = distinct !{!16, !21, !25}
!17 = distinct !{!17, !27}
!18 = distinct !{!18, !21}
!19 = !{!"double", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!11}
!23 = !{!12}
!24 = !{!14, !13, !11}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
