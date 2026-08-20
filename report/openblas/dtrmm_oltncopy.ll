loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @dtrmm_oltncopy(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 6 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.preheader159, label %.loopexit160

.preheader159:                                    ; preds = %bb.a
  %i.c = ashr i64 %0, 1                           ; 4 uses
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = and i64 %0, 1
  %.not154 = icmp eq i64 %i.e, 0                  ; 2 uses
  %i.f = mul nsw i64 %4, %3                       ; 2 uses
  %i.g = add nsw i64 %4, 1
  %i.h = mul nsw i64 %i.g, %3
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %4 ; 2 uses
  %i.j = shl nsw i64 %3, 1                        ; 6 uses
  br i1 %i.d, label %.preheader159.split.us.preheader, label %.preheader159.split

.preheader159.split.us.preheader:                 ; preds = %.preheader159
  %i.k = and i64 %0, -2
  %i.l = add i64 %4, %i.k
  %i.m = and i64 %0, 2
  %lcmp.mod189.not = icmp eq i64 %i.m, 0
  %i.n = add nsw i64 %4, 2
  %i.o = add nsw i64 %i.c, -1
  %i.p = icmp eq i64 %i.c, 1
  br label %.preheader159.split.us

.preheader159.split.us:                           ; preds = %.preheader159.split.us.preheader, %bb.t
  %.0142.us = phi i64 [ %i.bw, %bb.t ], [ %5, %.preheader159.split.us.preheader ] ; 12 uses
  %.0135.us = phi ptr [ %.4139.us, %bb.t ], [ %6, %.preheader159.split.us.preheader ] ; 7 uses
  %.0132.us = phi i64 [ %i.bx, %bb.t ], [ %i.a, %.preheader159.split.us.preheader ] ; 2 uses
  %.not.us = icmp sgt i64 %4, %.0142.us
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader159.split.us
  %i.q = getelementptr inbounds [8 x i8], ptr %2, i64 %.0142.us ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.h
  br label %.preheader157.us.preheader

bb.c:                                             ; preds = %.preheader159.split.us
  %i.t = mul nsw i64 %.0142.us, %3
  %i.u = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.t
  %i.v = add nsw i64 %.0142.us, 1
  %i.w = mul nsw i64 %i.v, %3
  %i.x = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.w
  br label %.preheader157.us.preheader

.preheader157.us.preheader:                       ; preds = %bb.c, %bb.b
  %.1126.us.ph = phi ptr [ %i.r, %bb.b ], [ %i.u, %bb.c ] ; 5 uses
  %.1.us.ph = phi ptr [ %i.s, %bb.b ], [ %i.x, %bb.c ] ; 6 uses
  br i1 %lcmp.mod189.not, label %.preheader157.us.prol.loopexit, label %.preheader157.us.prol

.preheader157.us.prol:                            ; preds = %.preheader157.us.preheader
  %i.y = icmp sgt i64 %4, %.0142.us
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.preheader157.us.prol
  %i.z = icmp slt i64 %4, %.0142.us
  %i.aa = load <2 x double>, ptr %.1126.us.ph, align 8, !tbaa !8 ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  store <2 x double> %i.aa, ptr %.0135.us, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0135.us, i64 16
  %7 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ac, i64 1
  store <2 x double> %7, ptr %i.ad, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.1126.us.ph, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader157.us.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.0135.us, i64 16
  %i.ah = load <2 x double>, ptr %.1.us.ph, align 8, !tbaa !8
  store <2 x double> %i.aa, ptr %.0135.us, align 8, !tbaa !8
  store <2 x double> %i.ah, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds [8 x i8], ptr %.1126.us.ph, i64 %i.j
  %i.aj = getelementptr inbounds [8 x i8], ptr %.1.us.ph, i64 %i.j
  br label %.preheader157.us.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.preheader157.us.prol
  %i.ak = getelementptr inbounds nuw i8, ptr %.1126.us.ph, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader157.us.prol.loopexit.unr-lcssa

.preheader157.us.prol.loopexit.unr-lcssa:         ; preds = %bb.g, %bb.f, %bb.e
  %.2127.us.prol = phi ptr [ %i.ak, %bb.g ], [ %i.ai, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %.2.us.prol = phi ptr [ %i.al, %bb.g ], [ %i.aj, %bb.f ], [ %i.af, %bb.e ]
  %.2137.us.prol = getelementptr inbounds nuw i8, ptr %.0135.us, i64 32 ; 2 uses
  br label %.preheader157.us.prol.loopexit

.preheader157.us.prol.loopexit:                   ; preds = %.preheader157.us.prol.loopexit.unr-lcssa, %.preheader157.us.preheader
  %.1136.us.unr = phi ptr [ %.0135.us, %.preheader157.us.preheader ], [ %.2137.us.prol, %.preheader157.us.prol.loopexit.unr-lcssa ]
  %.0133.us.unr = phi i64 [ %i.c, %.preheader157.us.preheader ], [ %i.o, %.preheader157.us.prol.loopexit.unr-lcssa ]
  %.0129.us.unr = phi i64 [ %4, %.preheader157.us.preheader ], [ %i.n, %.preheader157.us.prol.loopexit.unr-lcssa ]
  %.1126.us.unr = phi ptr [ %.1126.us.ph, %.preheader157.us.preheader ], [ %.2127.us.prol, %.preheader157.us.prol.loopexit.unr-lcssa ]
  %.1.us.unr = phi ptr [ %.1.us.ph, %.preheader157.us.preheader ], [ %.2.us.prol, %.preheader157.us.prol.loopexit.unr-lcssa ]
  %.2127.us.lcssa.unr = phi ptr [ poison, %.preheader157.us.preheader ], [ %.2127.us.prol, %.preheader157.us.prol.loopexit.unr-lcssa ]
  %.2137.us.lcssa.unr = phi ptr [ poison, %.preheader157.us.preheader ], [ %.2137.us.prol, %.preheader157.us.prol.loopexit.unr-lcssa ]
  br i1 %i.p, label %.loopexit158.us, label %.preheader157.us

.preheader157.us:                                 ; preds = %.preheader157.us.prol.loopexit, %bb.p
  %.1136.us = phi ptr [ %.2137.us.1, %bb.p ], [ %.1136.us.unr, %.preheader157.us.prol.loopexit ] ; 8 uses
  %.0133.us = phi i64 [ %i.bq, %bb.p ], [ %.0133.us.unr, %.preheader157.us.prol.loopexit ] ; 2 uses
  %.0129.us = phi i64 [ %i.bp, %bb.p ], [ %.0129.us.unr, %.preheader157.us.prol.loopexit ] ; 4 uses
  %.1126.us = phi ptr [ %.2127.us.1, %bb.p ], [ %.1126.us.unr, %.preheader157.us.prol.loopexit ] ; 4 uses
  %.1.us = phi ptr [ %.2.us.1, %bb.p ], [ %.1.us.unr, %.preheader157.us.prol.loopexit ] ; 5 uses
  %i.am = icmp sgt i64 %.0129.us, %.0142.us
  br i1 %i.am, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.preheader157.us
  %i.an = icmp slt i64 %.0129.us, %.0142.us
  %i.ao = load <2 x double>, ptr %.1126.us, align 8, !tbaa !8 ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.us, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8
  store <2 x double> %i.ao, ptr %.1136.us, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %.1136.us, i64 16
  %8 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aq, i64 1
  store <2 x double> %8, ptr %i.ar, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %.1126.us, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader157.us.1

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.1136.us, i64 16
  %i.av = load <2 x double>, ptr %.1.us, align 8, !tbaa !8
  store <2 x double> %i.ao, ptr %.1136.us, align 8, !tbaa !8
  store <2 x double> %i.av, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr inbounds [8 x i8], ptr %.1126.us, i64 %i.j
  %i.ax = getelementptr inbounds [8 x i8], ptr %.1.us, i64 %i.j
  br label %.preheader157.us.1

bb.k:                                             ; preds = %.preheader157.us
  %i.ay = getelementptr inbounds nuw i8, ptr %.1126.us, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader157.us.1

.preheader157.us.1:                               ; preds = %bb.k, %bb.j, %bb.i
  %.2127.us = phi ptr [ %i.ay, %bb.k ], [ %i.aw, %bb.j ], [ %i.as, %bb.i ] ; 4 uses
  %.2.us = phi ptr [ %i.az, %bb.k ], [ %i.ax, %bb.j ], [ %i.at, %bb.i ] ; 5 uses
  %.2137.us = getelementptr inbounds nuw i8, ptr %.1136.us, i64 32 ; 3 uses
  %i.ba = add nsw i64 %.0129.us, 2                ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, %.0142.us
  br i1 %i.bb, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.preheader157.us.1
  %i.bc = icmp slt i64 %i.ba, %.0142.us
  %i.bd = load <2 x double>, ptr %.2127.us, align 8, !tbaa !8 ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.2.us, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !8
  store <2 x double> %i.bd, ptr %.2137.us, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %.1136.us, i64 48
  %9 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bf, i64 1
  store <2 x double> %9, ptr %i.bg, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %.2127.us, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.1136.us, i64 48
  %i.bk = load <2 x double>, ptr %.2.us, align 8, !tbaa !8
  store <2 x double> %i.bd, ptr %.2137.us, align 8, !tbaa !8
  store <2 x double> %i.bk, ptr %i.bj, align 8, !tbaa !8
  %i.bl = getelementptr inbounds [8 x i8], ptr %.2127.us, i64 %i.j
  %i.bm = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %i.j
  br label %bb.p

bb.o:                                             ; preds = %.preheader157.us.1
  %i.bn = getelementptr inbounds nuw i8, ptr %.2127.us, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.2127.us.1 = phi ptr [ %i.bn, %bb.o ], [ %i.bl, %bb.n ], [ %i.bh, %bb.m ] ; 2 uses
  %.2.us.1 = phi ptr [ %i.bo, %bb.o ], [ %i.bm, %bb.n ], [ %i.bi, %bb.m ]
  %.2137.us.1 = getelementptr inbounds nuw i8, ptr %.1136.us, i64 64 ; 2 uses
  %i.bp = add nsw i64 %.0129.us, 4
  %i.bq = add nsw i64 %.0133.us, -2
  %i.br = icmp sgt i64 %.0133.us, 2
  br i1 %i.br, label %.preheader157.us, label %.loopexit158.us, !llvm.loop !10

bb.q:                                             ; preds = %.loopexit158.us
  %i.bs = icmp sgt i64 %i.l, %.0142.us
  br i1 %i.bs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load <2 x double>, ptr %.2127.us.lcssa, align 8, !tbaa !8
  store <2 x double> %i.bt, ptr %.2137.us.lcssa, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.1136.us.lcssa, i64 48
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.1136.us.lcssa, i64 48
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %.loopexit158.us
  %.4139.us = phi ptr [ %i.bv, %bb.s ], [ %.2137.us.lcssa, %.loopexit158.us ], [ %i.bu, %bb.r ] ; 2 uses
  %i.bw = add nsw i64 %.0142.us, 2                ; 2 uses
  %i.bx = add nsw i64 %.0132.us, -1
  %i.by = icmp sgt i64 %.0132.us, 1
  br i1 %i.by, label %.preheader159.split.us, label %.loopexit160, !llvm.loop !12

.loopexit158.us:                                  ; preds = %bb.p, %.preheader157.us.prol.loopexit
  %.2127.us.lcssa = phi ptr [ %.2127.us.lcssa.unr, %.preheader157.us.prol.loopexit ], [ %.2127.us.1, %bb.p ]
  %.2137.us.lcssa = phi ptr [ %.2137.us.lcssa.unr, %.preheader157.us.prol.loopexit ], [ %.2137.us.1, %bb.p ] ; 2 uses
  %.1136.us.lcssa = phi ptr [ %.0135.us, %.preheader157.us.prol.loopexit ], [ %.2137.us, %bb.p ] ; 2 uses
  br i1 %.not154, label %bb.t, label %bb.q

.preheader159.split:                              ; preds = %.preheader159
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.f ; 5 uses
  br i1 %.not154, label %.preheader159.split.split.us.preheader, label %.preheader159.split.split.preheader

.preheader159.split.split.preheader:              ; preds = %.preheader159.split
  %xtraiter = and i64 %i.a, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader159.split.split.prol.loopexit, label %.preheader159.split.split.prol

.preheader159.split.split.prol:                   ; preds = %.preheader159.split.split.preheader, %bb.v
  %.0142.prol = phi i64 [ %i.ca, %bb.v ], [ %5, %.preheader159.split.split.preheader ] ; 3 uses
  %.0135.prol = phi ptr [ %.4139.prol, %bb.v ], [ %6, %.preheader159.split.split.preheader ] ; 2 uses
  %.0132.prol = phi i64 [ %i.cb, %bb.v ], [ %i.a, %.preheader159.split.split.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %bb.v ], [ 0, %.preheader159.split.split.preheader ]
  %.not.prol = icmp sgt i64 %4, %.0142.prol
  br i1 %.not.prol, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader159.split.split.prol
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0142.prol
  %i.bz = load <2 x double>, ptr %gep.prol, align 8, !tbaa !8
  store <2 x double> %i.bz, ptr %.0135.prol, align 8, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader159.split.split.prol
  %.4139.prol = getelementptr inbounds nuw i8, ptr %.0135.prol, i64 16 ; 3 uses
  %i.ca = add nsw i64 %.0142.prol, 2              ; 3 uses
  %i.cb = add nsw i64 %.0132.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader159.split.split.prol.loopexit, label %.preheader159.split.split.prol, !llvm.loop !13

.preheader159.split.split.prol.loopexit:          ; preds = %bb.v, %.preheader159.split.split.preheader
  %.0142.unr = phi i64 [ %5, %.preheader159.split.split.preheader ], [ %i.ca, %bb.v ]
  %.0135.unr = phi ptr [ %6, %.preheader159.split.split.preheader ], [ %.4139.prol, %bb.v ]
  %.0132.unr = phi i64 [ %i.a, %.preheader159.split.split.preheader ], [ %i.cb, %bb.v ]
  %.4139.lcssa.unr = phi ptr [ poison, %.preheader159.split.split.preheader ], [ %.4139.prol, %bb.v ]
  %.lcssa187.unr = phi i64 [ poison, %.preheader159.split.split.preheader ], [ %i.ca, %bb.v ]
  %i.cc = icmp ult i64 %i.a, 4
  br i1 %i.cc, label %.loopexit160, label %.preheader159.split.split

.preheader159.split.split.us.preheader:           ; preds = %.preheader159.split
  %i.cd = and i64 %1, -2
  %i.ce = add i64 %5, %i.cd
  br label %.loopexit160

.preheader159.split.split:                        ; preds = %.preheader159.split.split.prol.loopexit, %bb.aa
  %.0142 = phi i64 [ %i.cm, %bb.aa ], [ %.0142.unr, %.preheader159.split.split.prol.loopexit ] ; 6 uses
  %.0135 = phi ptr [ %.4139.3, %bb.aa ], [ %.0135.unr, %.preheader159.split.split.prol.loopexit ] ; 5 uses
  %.0132 = phi i64 [ %i.cn, %bb.aa ], [ %.0132.unr, %.preheader159.split.split.prol.loopexit ] ; 2 uses
  %.not = icmp sgt i64 %4, %.0142
  br i1 %.not, label %.preheader159.split.split.1, label %bb.w

bb.w:                                             ; preds = %.preheader159.split.split
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0142
  %i.cf = load <2 x double>, ptr %gep, align 8, !tbaa !8
  store <2 x double> %i.cf, ptr %.0135, align 8, !tbaa !8
  br label %.preheader159.split.split.1

.preheader159.split.split.1:                      ; preds = %bb.w, %.preheader159.split.split
  %i.cg = add nsw i64 %.0142, 2                   ; 2 uses
  %.not.1 = icmp sgt i64 %4, %i.cg
  br i1 %.not.1, label %.preheader159.split.split.2, label %bb.x

bb.x:                                             ; preds = %.preheader159.split.split.1
  %.4139 = getelementptr inbounds nuw i8, ptr %.0135, i64 16
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cg
  %i.ch = load <2 x double>, ptr %gep.1, align 8, !tbaa !8
  store <2 x double> %i.ch, ptr %.4139, align 8, !tbaa !8
  br label %.preheader159.split.split.2

.preheader159.split.split.2:                      ; preds = %bb.x, %.preheader159.split.split.1
  %i.ci = add nsw i64 %.0142, 4                   ; 2 uses
  %.not.2 = icmp sgt i64 %4, %i.ci
  br i1 %.not.2, label %.preheader159.split.split.3, label %bb.y

bb.y:                                             ; preds = %.preheader159.split.split.2
  %.4139.1 = getelementptr inbounds nuw i8, ptr %.0135, i64 32
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ci
  %i.cj = load <2 x double>, ptr %gep.2, align 8, !tbaa !8
  store <2 x double> %i.cj, ptr %.4139.1, align 8, !tbaa !8
  br label %.preheader159.split.split.3

.preheader159.split.split.3:                      ; preds = %bb.y, %.preheader159.split.split.2
  %i.ck = add nsw i64 %.0142, 6                   ; 2 uses
  %.not.3 = icmp sgt i64 %4, %i.ck
  br i1 %.not.3, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.preheader159.split.split.3
  %.4139.2 = getelementptr inbounds nuw i8, ptr %.0135, i64 48
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ck
  %i.cl = load <2 x double>, ptr %gep.3, align 8, !tbaa !8
  store <2 x double> %i.cl, ptr %.4139.2, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.preheader159.split.split.3
  %.4139.3 = getelementptr inbounds nuw i8, ptr %.0135, i64 64 ; 2 uses
  %i.cm = add nsw i64 %.0142, 8                   ; 2 uses
  %i.cn = add nsw i64 %.0132, -4
  %i.co = icmp sgt i64 %.0132, 4
  br i1 %i.co, label %.preheader159.split.split, label %.loopexit160, !llvm.loop !12

.loopexit160:                                     ; preds = %.preheader159.split.split.prol.loopexit, %bb.aa, %bb.t, %.preheader159.split.split.us.preheader, %bb.a
  %.1143 = phi i64 [ %5, %bb.a ], [ %i.ce, %.preheader159.split.split.us.preheader ], [ %i.bw, %bb.t ], [ %.lcssa187.unr, %.preheader159.split.split.prol.loopexit ], [ %i.cm, %bb.aa ] ; 13 uses
  %.5140 = phi ptr [ %6, %bb.a ], [ %6, %.preheader159.split.split.us.preheader ], [ %.4139.us, %bb.t ], [ %.4139.lcssa.unr, %.preheader159.split.split.prol.loopexit ], [ %.4139.3, %bb.aa ] ; 2 uses
  %.not155 = trunc i64 %1 to i1
  %i.cp = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.cp, %.not155
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit160
  %.not156 = icmp sgt i64 %4, %.1143
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %4
  %i.cr = mul nsw i64 %.1143, %3
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr inbounds [8 x i8], ptr %2, i64 %.1143
  %i.cu = mul nsw i64 %4, %3
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cu
  %.4 = select i1 %.not156, ptr %i.cs, ptr %i.cv  ; 2 uses
  %xtraiter191 = and i64 %0, 3                    ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.af
  %.6141.prol = phi ptr [ %.7.prol, %bb.af ], [ %.5140, %.preheader.preheader ] ; 2 uses
  %.1134.prol = phi i64 [ %i.dd, %bb.af ], [ %0, %.preheader.preheader ]
  %.2131.prol = phi i64 [ %i.dc, %bb.af ], [ %4, %.preheader.preheader ] ; 3 uses
  %.5.prol = phi ptr [ %.6.prol, %bb.af ], [ %.4, %.preheader.preheader ] ; 4 uses
  %prol.iter193 = phi i64 [ %prol.iter193.next, %bb.af ], [ 0, %.preheader.preheader ]
  %i.cw = icmp sgt i64 %.2131.prol, %.1143
  br i1 %i.cw, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.preheader.prol
  %i.cx = icmp slt i64 %.2131.prol, %.1143
  %i.cy = load double, ptr %.5.prol, align 8, !tbaa !8
  store double %i.cy, ptr %.6141.prol, align 8, !tbaa !8
  br i1 %i.cx, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %.5.prol, i64 8
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds [8 x i8], ptr %.5.prol, i64 %3
  br label %bb.af

bb.ae:                                            ; preds = %.preheader.prol
end_hunk_0
