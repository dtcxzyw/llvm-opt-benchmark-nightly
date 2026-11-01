Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmm_outncopy?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @dtrmm_outncopy(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 5 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.preheader160, label %.loopexit161

.preheader160:                                    ; preds = %bb.a
  %i.c = ashr i64 %0, 1                           ; 4 uses
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = and i64 %0, 1
  %.not155 = icmp eq i64 %i.e, 0                  ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %2, i64 %4 ; 5 uses
  %i.g = mul nsw i64 %4, %3                       ; 2 uses
  %i.h = add nsw i64 %4, 1
  %i.i = mul nsw i64 %i.h, %3
  %i.j = shl nsw i64 %3, 1                        ; 12 uses
  br i1 %i.d, label %.preheader160.split.us.preheader, label %.preheader160.split

.preheader160.split.us.preheader:                 ; preds = %.preheader160
  %i.k = and i64 %0, -2
  %i.l = add i64 %4, %i.k                         ; 2 uses
  %i.m = and i64 %0, 2
  %lcmp.mod191.not = icmp eq i64 %i.m, 0
  %i.n = add nsw i64 %4, 2
  %i.o = add nsw i64 %i.c, -1
  %i.p = icmp eq i64 %i.c, 1
  br label %.preheader160.split.us

.preheader160.split.us:                           ; preds = %.preheader160.split.us.preheader, %bb.v
  %.0143.us = phi i64 [ %i.ci, %bb.v ], [ %5, %.preheader160.split.us.preheader ] ; 13 uses
  %.0136.us = phi ptr [ %.4140.us, %bb.v ], [ %6, %.preheader160.split.us.preheader ] ; 8 uses
  %.0133.us = phi i64 [ %i.cj, %bb.v ], [ %i.a, %.preheader160.split.us.preheader ] ; 2 uses
  %.not.us = icmp sgt i64 %4, %.0143.us
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader160.split.us
  %i.q = mul nsw i64 %.0143.us, %3
  %i.r = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.q
  %i.s = add nsw i64 %.0143.us, 1
  %i.t = mul nsw i64 %i.s, %3
  %i.u = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.t
  br label %.preheader158.us.preheader

bb.c:                                             ; preds = %.preheader160.split.us
  %i.v = getelementptr inbounds [8 x i8], ptr %2, i64 %.0143.us ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.g
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.i
  br label %.preheader158.us.preheader

.preheader158.us.preheader:                       ; preds = %bb.c, %bb.b
  %.1127.us.ph = phi ptr [ %i.r, %bb.b ], [ %i.w, %bb.c ] ; 6 uses
  %.1.us.ph = phi ptr [ %i.u, %bb.b ], [ %i.x, %bb.c ] ; 6 uses
  br i1 %lcmp.mod191.not, label %.preheader158.us.prol.loopexit, label %.preheader158.us.prol

.preheader158.us.prol:                            ; preds = %.preheader158.us.preheader
  %i.y = icmp slt i64 %4, %.0143.us
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.preheader158.us.prol
  %i.z = icmp sgt i64 %4, %.0143.us
  %i.aa = load double, ptr %.1127.us.ph, align 8, !tbaa !13 ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.0136.us, i64 16
  %i.ac = load <2 x double>, ptr %.1.us.ph, align 8, !tbaa !13
  %7 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aa, i64 0
  store <2 x double> %7, ptr %.0136.us, align 8, !tbaa !13
  store <2 x double> %i.ac, ptr %i.ab, align 8, !tbaa !13
  %i.ad = getelementptr inbounds [8 x i8], ptr %.1127.us.ph, i64 %i.j
  %i.ae = getelementptr inbounds [8 x i8], ptr %.1.us.ph, i64 %i.j
  br label %.preheader158.us.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.1127.us.ph, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.0136.us, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0136.us, i64 16
  %i.aj = load <2 x double>, ptr %.1.us.ph, align 8, !tbaa !13
  store double %i.aa, ptr %.0136.us, align 8, !tbaa !13
  store double %i.ag, ptr %i.ah, align 8, !tbaa !13
  store <2 x double> %i.aj, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds [8 x i8], ptr %.1127.us.ph, i64 %i.j
  %i.al = getelementptr inbounds [8 x i8], ptr %.1.us.ph, i64 %i.j
  br label %.preheader158.us.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.preheader158.us.prol
  %i.am = getelementptr inbounds nuw i8, ptr %.1127.us.ph, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader158.us.prol.loopexit.unr-lcssa

.preheader158.us.prol.loopexit.unr-lcssa:         ; preds = %bb.g, %bb.f, %bb.e
  %.2128.us.prol = phi ptr [ %i.am, %bb.g ], [ %i.ak, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %.2.us.prol = phi ptr [ %i.an, %bb.g ], [ %i.al, %bb.f ], [ %i.ae, %bb.e ]
  %.2138.us.prol = getelementptr inbounds nuw i8, ptr %.0136.us, i64 32 ; 2 uses
  br label %.preheader158.us.prol.loopexit

.preheader158.us.prol.loopexit:                   ; preds = %.preheader158.us.prol.loopexit.unr-lcssa, %.preheader158.us.preheader
  %.1137.us.unr = phi ptr [ %.0136.us, %.preheader158.us.preheader ], [ %.2138.us.prol, %.preheader158.us.prol.loopexit.unr-lcssa ]
  %.0134.us.unr = phi i64 [ %i.c, %.preheader158.us.preheader ], [ %i.o, %.preheader158.us.prol.loopexit.unr-lcssa ]
  %.0130.us.unr = phi i64 [ %4, %.preheader158.us.preheader ], [ %i.n, %.preheader158.us.prol.loopexit.unr-lcssa ]
  %.1127.us.unr = phi ptr [ %.1127.us.ph, %.preheader158.us.preheader ], [ %.2128.us.prol, %.preheader158.us.prol.loopexit.unr-lcssa ]
  %.1.us.unr = phi ptr [ %.1.us.ph, %.preheader158.us.preheader ], [ %.2.us.prol, %.preheader158.us.prol.loopexit.unr-lcssa ]
  %.2128.us.lcssa.unr = phi ptr [ poison, %.preheader158.us.preheader ], [ %.2128.us.prol, %.preheader158.us.prol.loopexit.unr-lcssa ]
  %.2138.us.lcssa.unr = phi ptr [ poison, %.preheader158.us.preheader ], [ %.2138.us.prol, %.preheader158.us.prol.loopexit.unr-lcssa ]
  br i1 %i.p, label %.loopexit159.us, label %.preheader158.us

.preheader158.us:                                 ; preds = %.preheader158.us.prol.loopexit, %bb.p
  %.1137.us = phi ptr [ %.2138.us.1, %bb.p ], [ %.1137.us.unr, %.preheader158.us.prol.loopexit ] ; 10 uses
  %.0134.us = phi i64 [ %i.bw, %bb.p ], [ %.0134.us.unr, %.preheader158.us.prol.loopexit ] ; 2 uses
  %.0130.us = phi i64 [ %i.bv, %bb.p ], [ %.0130.us.unr, %.preheader158.us.prol.loopexit ] ; 4 uses
  %.1127.us = phi ptr [ %.2128.us.1, %bb.p ], [ %.1127.us.unr, %.preheader158.us.prol.loopexit ] ; 5 uses
  %.1.us = phi ptr [ %.2.us.1, %bb.p ], [ %.1.us.unr, %.preheader158.us.prol.loopexit ] ; 5 uses
  %i.ao = icmp slt i64 %.0130.us, %.0143.us
  br i1 %i.ao, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.preheader158.us
  %i.ap = icmp sgt i64 %.0130.us, %.0143.us
  %i.aq = load double, ptr %.1127.us, align 8, !tbaa !13 ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.1137.us, i64 16
  %i.as = load <2 x double>, ptr %.1.us, align 8, !tbaa !13
  %8 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aq, i64 0
  store <2 x double> %8, ptr %.1137.us, align 8, !tbaa !13
  store <2 x double> %i.as, ptr %i.ar, align 8, !tbaa !13
  %i.at = getelementptr inbounds [8 x i8], ptr %.1127.us, i64 %i.j
  %i.au = getelementptr inbounds [8 x i8], ptr %.1.us, i64 %i.j
  br label %.preheader158.us.1

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.1127.us, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.1137.us, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.1137.us, i64 16
  %i.az = load <2 x double>, ptr %.1.us, align 8, !tbaa !13
  store double %i.aq, ptr %.1137.us, align 8, !tbaa !13
  store double %i.aw, ptr %i.ax, align 8, !tbaa !13
  store <2 x double> %i.az, ptr %i.ay, align 8, !tbaa !13
  %i.ba = getelementptr inbounds [8 x i8], ptr %.1127.us, i64 %i.j
  %i.bb = getelementptr inbounds [8 x i8], ptr %.1.us, i64 %i.j
  br label %.preheader158.us.1

bb.k:                                             ; preds = %.preheader158.us
  %i.bc = getelementptr inbounds nuw i8, ptr %.1127.us, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader158.us.1

.preheader158.us.1:                               ; preds = %bb.k, %bb.j, %bb.i
  %.2128.us = phi ptr [ %i.bc, %bb.k ], [ %i.ba, %bb.j ], [ %i.at, %bb.i ] ; 5 uses
  %.2.us = phi ptr [ %i.bd, %bb.k ], [ %i.bb, %bb.j ], [ %i.au, %bb.i ] ; 5 uses
  %.2138.us = getelementptr inbounds nuw i8, ptr %.1137.us, i64 32 ; 3 uses
  %i.be = add nsw i64 %.0130.us, 2                ; 2 uses
  %i.bf = icmp slt i64 %i.be, %.0143.us
  br i1 %i.bf, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.preheader158.us.1
  %i.bg = icmp sgt i64 %i.be, %.0143.us
  %i.bh = load double, ptr %.2128.us, align 8, !tbaa !13 ; 2 uses
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.1137.us, i64 48
  %i.bj = load <2 x double>, ptr %.2.us, align 8, !tbaa !13
  %9 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bh, i64 0
  store <2 x double> %9, ptr %.2138.us, align 8, !tbaa !13
  store <2 x double> %i.bj, ptr %i.bi, align 8, !tbaa !13
  %i.bk = getelementptr inbounds [8 x i8], ptr %.2128.us, i64 %i.j
  %i.bl = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %i.j
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.2128.us, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.1137.us, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %.1137.us, i64 48
  %i.bq = load <2 x double>, ptr %.2.us, align 8, !tbaa !13
  store double %i.bh, ptr %.2138.us, align 8, !tbaa !13
  store double %i.bn, ptr %i.bo, align 8, !tbaa !13
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !13
  %i.br = getelementptr inbounds [8 x i8], ptr %.2128.us, i64 %i.j
  %i.bs = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %i.j
  br label %bb.p

bb.o:                                             ; preds = %.preheader158.us.1
  %i.bt = getelementptr inbounds nuw i8, ptr %.2128.us, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.2128.us.1 = phi ptr [ %i.bt, %bb.o ], [ %i.br, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %.2.us.1 = phi ptr [ %i.bu, %bb.o ], [ %i.bs, %bb.n ], [ %i.bl, %bb.m ]
  %.2138.us.1 = getelementptr inbounds nuw i8, ptr %.1137.us, i64 64 ; 2 uses
  %i.bv = add nsw i64 %.0130.us, 4
  %i.bw = add nsw i64 %.0134.us, -2
  %i.bx = icmp sgt i64 %.0134.us, 2
  br i1 %i.bx, label %.preheader158.us, label %.loopexit159.us, !llvm.loop !8

bb.q:                                             ; preds = %.loopexit159.us
  %i.by = icmp slt i64 %i.l, %.0143.us
  br i1 %i.by, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = icmp sgt i64 %i.l, %.0143.us
  %i.ca = load double, ptr %.2128.us.lcssa, align 8, !tbaa !13 ; 2 uses
  br i1 %i.bz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ca, i64 0
  store <2 x double> %i.cb, ptr %.2138.us.lcssa, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.1137.us.lcssa, i64 48
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.2128.us.lcssa, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13
  store double %i.ca, ptr %.2138.us.lcssa, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.1137.us.lcssa, i64 40
  store double %i.ce, ptr %i.cf, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.1137.us.lcssa, i64 48
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %.1137.us.lcssa, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.loopexit159.us
  %.4140.us = phi ptr [ %i.ch, %bb.u ], [ %i.cg, %bb.t ], [ %i.cc, %bb.s ], [ %.2138.us.lcssa, %.loopexit159.us ] ; 2 uses
  %i.ci = add nsw i64 %.0143.us, 2                ; 2 uses
  %i.cj = add nsw i64 %.0133.us, -1
  %i.ck = icmp sgt i64 %.0133.us, 1
  br i1 %i.ck, label %.preheader160.split.us, label %.loopexit161, !llvm.loop !9

.loopexit159.us:                                  ; preds = %bb.p, %.preheader158.us.prol.loopexit
  %.2128.us.lcssa = phi ptr [ %.2128.us.lcssa.unr, %.preheader158.us.prol.loopexit ], [ %.2128.us.1, %bb.p ] ; 2 uses
  %.2138.us.lcssa = phi ptr [ %.2138.us.lcssa.unr, %.preheader158.us.prol.loopexit ], [ %.2138.us.1, %bb.p ] ; 3 uses
  %.1137.us.lcssa = phi ptr [ %.0136.us, %.preheader158.us.prol.loopexit ], [ %.2138.us, %bb.p ] ; 4 uses
  br i1 %.not155, label %bb.v, label %bb.q

.preheader160.split:                              ; preds = %.preheader160
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.g ; 3 uses
  br i1 %.not155, label %.preheader160.split.split.us.preheader, label %.preheader160.split.split.preheader

.preheader160.split.split.preheader:              ; preds = %.preheader160.split
  %i.cl = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.cl, 0
  br i1 %lcmp.mod.not, label %.preheader160.split.split.prol.loopexit, label %.preheader160.split.split.prol

.preheader160.split.split.prol:                   ; preds = %.preheader160.split.split.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %5 ; 2 uses
  %i.cm = icmp slt i64 %4, %5
  br i1 %i.cm, label %.preheader160.split.split.prol.loopexit.unr-lcssa, label %bb.w

bb.w:                                             ; preds = %.preheader160.split.split.prol
  %i.cn = mul nsw i64 %5, %3
  %i.co = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cn
  %.not.prol = icmp sgt i64 %4, %5
  br i1 %.not.prol, label %bb.x, label %.sink.split.prol

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %gep.prol, i64 8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13
  br label %.sink.split.prol

.sink.split.prol:                                 ; preds = %bb.x, %bb.w
  %.sink185.in.prol = phi ptr [ %gep.prol, %bb.x ], [ %i.co, %bb.w ]
  %.sink.prol = phi double [ %i.cq, %bb.x ], [ 0.000000e+00, %bb.w ]
  %.sink185.prol = load double, ptr %.sink185.in.prol, align 8, !tbaa !13
  store double %.sink185.prol, ptr %6, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %.sink.prol, ptr %i.cr, align 8, !tbaa !13
  br label %.preheader160.split.split.prol.loopexit.unr-lcssa

.preheader160.split.split.prol.loopexit.unr-lcssa: ; preds = %.sink.split.prol, %.preheader160.split.split.prol
  %.4140.prol = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cs = add nsw i64 %5, 2                       ; 2 uses
  %i.ct = add nsw i64 %i.a, -1
  br label %.preheader160.split.split.prol.loopexit

.preheader160.split.split.prol.loopexit:          ; preds = %.preheader160.split.split.prol.loopexit.unr-lcssa, %.preheader160.split.split.preheader
  %.0143.unr = phi i64 [ %5, %.preheader160.split.split.preheader ], [ %i.cs, %.preheader160.split.split.prol.loopexit.unr-lcssa ]
  %.0136.unr = phi ptr [ %6, %.preheader160.split.split.preheader ], [ %.4140.prol, %.preheader160.split.split.prol.loopexit.unr-lcssa ]
  %.0133.unr = phi i64 [ %i.a, %.preheader160.split.split.preheader ], [ %i.ct, %.preheader160.split.split.prol.loopexit.unr-lcssa ]
  %.4140.lcssa.unr = phi ptr [ poison, %.preheader160.split.split.preheader ], [ %.4140.prol, %.preheader160.split.split.prol.loopexit.unr-lcssa ]
  %.lcssa189.unr = phi i64 [ poison, %.preheader160.split.split.preheader ], [ %i.cs, %.preheader160.split.split.prol.loopexit.unr-lcssa ]
  %i.cu = icmp eq i64 %i.a, 1
  br i1 %i.cu, label %.loopexit161, label %.preheader160.split.split

.preheader160.split.split.us.preheader:           ; preds = %.preheader160.split
  %i.cv = and i64 %1, -2
  %i.cw = add i64 %5, %i.cv
  br label %.loopexit161

.preheader160.split.split:                        ; preds = %.preheader160.split.split.prol.loopexit, %bb.ac
  %.0143 = phi i64 [ %i.dk, %bb.ac ], [ %.0143.unr, %.preheader160.split.split.prol.loopexit ] ; 6 uses
  %.0136 = phi ptr [ %.4140.1, %bb.ac ], [ %.0136.unr, %.preheader160.split.split.prol.loopexit ] ; 5 uses
  %.0133 = phi i64 [ %i.dl, %bb.ac ], [ %.0133.unr, %.preheader160.split.split.prol.loopexit ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0143 ; 2 uses
  %i.cx = icmp slt i64 %4, %.0143
  br i1 %i.cx, label %.preheader160.split.split.1, label %bb.y

bb.y:                                             ; preds = %.preheader160.split.split
  %i.cy = mul nsw i64 %.0143, %3
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cy
  %.not = icmp sgt i64 %4, %.0143
  br i1 %.not, label %bb.z, label %.sink.split

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.db = load double, ptr %i.da, align 8, !tbaa !13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.z
  %.sink185.in = phi ptr [ %gep, %bb.z ], [ %i.cz, %bb.y ]
  %.sink = phi double [ %i.db, %bb.z ], [ 0.000000e+00, %bb.y ]
  %.sink185 = load double, ptr %.sink185.in, align 8, !tbaa !13
  store double %.sink185, ptr %.0136, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.0136, i64 8
  store double %.sink, ptr %i.dc, align 8, !tbaa !13
  br label %.preheader160.split.split.1

.preheader160.split.split.1:                      ; preds = %.sink.split, %.preheader160.split.split
  %.4140 = getelementptr inbounds nuw i8, ptr %.0136, i64 16
  %i.dd = add nsw i64 %.0143, 2                   ; 4 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dd ; 2 uses
  %i.de = icmp slt i64 %4, %i.dd
  br i1 %i.de, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.preheader160.split.split.1
  %i.df = mul nsw i64 %i.dd, %3
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.df
  %.not.1 = icmp sgt i64 %4, %i.dd
  br i1 %.not.1, label %bb.ab, label %.sink.split.1

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %gep.1, i64 8
  %i.di = load double, ptr %i.dh, align 8, !tbaa !13
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.ab, %bb.aa
  %.sink185.in.1 = phi ptr [ %gep.1, %bb.ab ], [ %i.dg, %bb.aa ]
  %.sink.1 = phi double [ %i.di, %bb.ab ], [ 0.000000e+00, %bb.aa ]
  %.sink185.1 = load double, ptr %.sink185.in.1, align 8, !tbaa !13
  store double %.sink185.1, ptr %.4140, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.0136, i64 24
  store double %.sink.1, ptr %i.dj, align 8, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.1, %.preheader160.split.split.1
  %.4140.1 = getelementptr inbounds nuw i8, ptr %.0136, i64 32 ; 2 uses
  %i.dk = add nsw i64 %.0143, 4                   ; 2 uses
  %i.dl = add nsw i64 %.0133, -2
  %i.dm = icmp sgt i64 %.0133, 2
  br i1 %i.dm, label %.preheader160.split.split, label %.loopexit161, !llvm.loop !9

.loopexit161:                                     ; preds = %.preheader160.split.split.prol.loopexit, %bb.ac, %bb.v, %.preheader160.split.split.us.preheader, %bb.a
  %.1144 = phi i64 [ %5, %bb.a ], [ %i.cw, %.preheader160.split.split.us.preheader ], [ %i.ci, %bb.v ], [ %.lcssa189.unr, %.preheader160.split.split.prol.loopexit ], [ %i.dk, %bb.ac ] ; 8 uses
  %.5141 = phi ptr [ %6, %bb.a ], [ %6, %.preheader160.split.split.us.preheader ], [ %.4140.us, %bb.v ], [ %.4140.lcssa.unr, %.preheader160.split.split.prol.loopexit ], [ %.4140.1, %bb.ac ] ; 2 uses
  %.not156 = trunc i64 %1 to i1
  %i.dn = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.dn, %.not156
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit161
  %.not157 = icmp sgt i64 %4, %.1144
  %i.do = getelementptr inbounds [8 x i8], ptr %2, i64 %.1144
end_hunk_0
