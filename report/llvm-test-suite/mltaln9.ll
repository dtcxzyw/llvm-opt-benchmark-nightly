inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@score_calc5:bb.a
  %i.dz = sext i8 %i.dy to i64
  %i.ea = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 180
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fadd double %.7162.us.us, %i.ed         ; 2 uses
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.da, i64 %indvars.iv.next239
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !8
  %i.eh = icmp eq i8 %i.eg, 45
  br i1 %i.eh, label %.lr.ph.us190.us, label %._crit_edge.us191.us.loopexit, !llvm.loop !67

bb.m:                                             ; preds = %bb.j
  %i.ei = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8   ; 2 uses
  %i.ek = icmp eq i8 %i.ej, 45
  br i1 %i.ek, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = sext i8 %i.ej to i64
  %i.em = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  %i.eo = sitofp i32 %i.en to double
  %i.ep = fadd double %.5171.us.us, %i.eo
  %i.eq = fadd double %i.ep, %i.co                ; 2 uses
  %i.er = add nsw i32 %.4125170.us.us, 1
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.cy, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !8
  %i.ev = icmp eq i8 %i.eu, 45
  br i1 %i.ev, label %.lr.ph166.us.us, label %._crit_edge167.us.us

._crit_edge167.us.us.loopexit:                    ; preds = %.lr.ph166.us.us
  %i.ew = trunc nsw i64 %indvars.iv241 to i32
  br label %._crit_edge167.us.us

._crit_edge167.us.us:                             ; preds = %._crit_edge167.us.us.loopexit, %bb.n
  %.5126.lcssa.us.us = phi i32 [ %.4125170.us.us, %bb.n ], [ %i.ew, %._crit_edge167.us.us.loopexit ] ; 2 uses
  %.6.lcssa.us.us = phi double [ %i.eq, %bb.n ], [ %i.ff, %._crit_edge167.us.us.loopexit ] ; 2 uses
  %i.ex = icmp sgt i32 %.5126.lcssa.us.us, %i.cl
  br i1 %i.ex, label %._crit_edge174.us.us, label %bb.o

._crit_edge174.us.us:                             ; preds = %bb.o, %._crit_edge167.us.us, %._crit_edge.us191.us
  %.9.us.us = phi double [ %.7.lcssa.us.us, %._crit_edge.us191.us ], [ %.6.lcssa.us.us, %._crit_edge167.us.us ], [ %.8.us.us, %bb.o ]
  %i.ey = tail call double @llvm.fmuladd.f64(double %.9.us.us, double %i.cx, double %.3116181.us187.us)
  br label %bb.p

.lr.ph166.us.us:                                  ; preds = %bb.n, %.lr.ph166.us.us
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %.lr.ph166.us.us ], [ %i.es, %bb.n ] ; 3 uses
  %.6164.us.us = phi double [ %i.ff, %.lr.ph166.us.us ], [ %i.eq, %bb.n ]
  %i.ez = getelementptr inbounds i8, ptr %i.da, i64 %indvars.iv241
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fb = sext i8 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fadd double %.6164.us.us, %i.fe         ; 2 uses
  %indvars.iv.next242 = add nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.cy, i64 %indvars.iv.next242
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !8
  %i.fi = icmp eq i8 %i.fh, 45
  br i1 %i.fi, label %.lr.ph166.us.us, label %._crit_edge167.us.us.loopexit, !llvm.loop !68

bb.o:                                             ; preds = %._crit_edge167.us.us, %bb.m, %._crit_edge.us191.us, %bb.k
  %.7128.us.us = phi i32 [ %.4125170.us.us, %bb.m ], [ %.5126.lcssa.us.us, %._crit_edge167.us.us ], [ %.6127.lcssa.us.us, %._crit_edge.us191.us ], [ %.4125170.us.us, %bb.k ]
  %.8.us.us = phi double [ %.5171.us.us, %bb.m ], [ %.6.lcssa.us.us, %._crit_edge167.us.us ], [ %.7.lcssa.us.us, %._crit_edge.us191.us ], [ %i.dn, %bb.k ] ; 2 uses
  %i.fj = add nsw i32 %.7128.us.us, 1             ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.c
  br i1 %i.fk, label %bb.j, label %._crit_edge174.us.us, !llvm.loop !69

bb.p:                                             ; preds = %._crit_edge174.us.us, %.lr.ph183.split.us198
  %.4117.us189.us = phi double [ %.3116181.us187.us, %.lr.ph183.split.us198 ], [ %i.ey, %._crit_edge174.us.us ] ; 2 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %.loopexit.us, label %.lr.ph183.split.us198, !llvm.loop !70

.lr.ph160.split:                                  ; preds = %bb.s, %.lr.ph160.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph160.split.preheader.new ], [ %indvars.iv.next.1, %bb.s ] ; 4 uses
  %.0113158 = phi double [ 0.000000e+00, %.lr.ph160.split.preheader.new ], [ %.1114.1, %bb.s ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph160.split.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.fl = icmp eq i64 %indvars.iv, %i.k
  br i1 %i.fl, label %.lr.ph160.split.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph160.split
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !52
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.e
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 0.000000e+00, double %.0113158)
  br label %.lr.ph160.split.1

.lr.ph160.split.1:                                ; preds = %.lr.ph160.split, %bb.q
  %.1114 = phi double [ %.0113158, %.lr.ph160.split ], [ %i.fq, %bb.q ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fr = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %i.fr, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph160.split.1
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !52
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.e
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !24
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double 0.000000e+00, double %.1114)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph160.split.1
  %.1114.1 = phi double [ %.1114, %.lr.ph160.split.1 ], [ %i.fw, %bb.r ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit281.unr-lcssa, label %.lr.ph160.split, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph183.split.prol.loopexit, %bb.w, %.lr.ph183
  %.3116.lcssa = phi double [ %.2115197, %.lr.ph183 ], [ %.4117.lcssa.unr, %.lr.ph183.split.prol.loopexit ], [ %.4117.1, %bb.w ] ; 2 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count254
  br i1 %exitcond237.not, label %._crit_edge, label %.lr.ph183, !llvm.loop !66

.lr.ph183:                                        ; preds = %.lr.ph183.preheader, %.loopexit
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %.loopexit ], [ 0, %.lr.ph183.preheader ] ; 5 uses
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %.loopexit ], [ 1, %.lr.ph183.preheader ] ; 5 uses
  %.2115197 = phi double [ %.3116.lcssa, %.loopexit ], [ %.0113.lcssa, %.lr.ph183.preheader ] ; 4 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.fx = icmp eq i64 %indvars.iv233, %i.cp
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv233 ; 3 uses
  br i1 %i.fx, label %.loopexit, label %.lr.ph183.split.preheader

.lr.ph183.split.preheader:                        ; preds = %.lr.ph183
  %i.fz = sub nsw i64 %indvars.iv233, %wide.trip.count224
  %i.ga = and i64 %i.fz, 1
  %lcmp.mod285.not.not = icmp eq i64 %i.ga, 0
  br i1 %lcmp.mod285.not.not, label %.lr.ph183.split.prol, label %.lr.ph183.split.prol.loopexit

.lr.ph183.split.prol:                             ; preds = %.lr.ph183.split.preheader
  %i.gb = icmp eq i64 %indvars.iv226, %i.cp
  br i1 %i.gb, label %.lr.ph183.split.prol.loopexit.unr-lcssa, label %bb.t

bb.t:                                             ; preds = %.lr.ph183.split.prol
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv226
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !24
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double 0.000000e+00, double %.2115197)
  br label %.lr.ph183.split.prol.loopexit.unr-lcssa

.lr.ph183.split.prol.loopexit.unr-lcssa:          ; preds = %bb.t, %.lr.ph183.split.prol
  %.4117.prol = phi double [ %.2115197, %.lr.ph183.split.prol ], [ %i.gf, %bb.t ] ; 2 uses
  %indvars.iv.next229.prol = add nuw nsw i64 %indvars.iv226, 1
  br label %.lr.ph183.split.prol.loopexit

.lr.ph183.split.prol.loopexit:                    ; preds = %.lr.ph183.split.prol.loopexit.unr-lcssa, %.lr.ph183.split.preheader
  %.4117.lcssa.unr = phi double [ poison, %.lr.ph183.split.preheader ], [ %.4117.prol, %.lr.ph183.split.prol.loopexit.unr-lcssa ]
  %indvars.iv228.unr = phi i64 [ %indvars.iv226, %.lr.ph183.split.preheader ], [ %indvars.iv.next229.prol, %.lr.ph183.split.prol.loopexit.unr-lcssa ]
  %.3116181.unr = phi double [ %.2115197, %.lr.ph183.split.preheader ], [ %.4117.prol, %.lr.ph183.split.prol.loopexit.unr-lcssa ]
  %i.gg = icmp eq i64 %i.cq, %indvars.iv233
  br i1 %i.gg, label %.loopexit, label %.lr.ph183.split

.lr.ph183.split:                                  ; preds = %.lr.ph183.split.prol.loopexit, %bb.w
  %indvars.iv228 = phi i64 [ %indvars.iv.next229.1, %bb.w ], [ %indvars.iv228.unr, %.lr.ph183.split.prol.loopexit ] ; 4 uses
  %.3116181 = phi double [ %.4117.1, %bb.w ], [ %.3116181.unr, %.lr.ph183.split.prol.loopexit ] ; 2 uses
  %i.gh = icmp eq i64 %indvars.iv228, %i.cp
  br i1 %i.gh, label %.lr.ph183.split.1, label %bb.u

bb.u:                                             ; preds = %.lr.ph183.split
  %i.gi = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv228
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !24
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double 0.000000e+00, double %.3116181)
  br label %.lr.ph183.split.1

.lr.ph183.split.1:                                ; preds = %.lr.ph183.split, %bb.u
  %.4117 = phi double [ %.3116181, %.lr.ph183.split ], [ %i.gl, %bb.u ] ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.gm = icmp eq i64 %indvars.iv.next229, %i.cp
  br i1 %i.gm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph183.split.1
  %i.gn = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next229
  %i.gp = load double, ptr %i.go, align 8, !tbaa !24
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gp, double 0.000000e+00, double %.4117)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph183.split.1
  %.4117.1 = phi double [ %.4117, %.lr.ph183.split.1 ], [ %i.gq, %bb.v ] ; 2 uses
  %indvars.iv.next229.1 = add nuw nsw i64 %indvars.iv228, 2 ; 2 uses
  %exitcond232.not.1 = icmp eq i64 %indvars.iv.next229.1, %wide.trip.count249
  br i1 %exitcond232.not.1, label %.loopexit, label %.lr.ph183.split, !llvm.loop !70

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %bb.a, %.preheader
  %.2115.lcssa = phi double [ %.0113.lcssa, %.preheader ], [ %.3116.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %bb.a ], [ %.3116.lcssa, %.loopexit ]
  ret double %.2115.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @score_calc4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr102 = freeze i64 %i.b
  %i.c = trunc i64 %.fr102 to i32                 ; 3 uses
  %i.d = add i32 %1, -1                           ; 2 uses
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr @mix, align 4
  %.fr101 = freeze i32 %i.f
  %i.g = icmp eq i32 %.fr101, 1                   ; 2 uses
  %i.h = add nsw i32 %i.c, -2                     ; 2 uses
  %i.i = icmp sgt i32 %i.c, 0
  %i.j = load i32, ptr @scoremtx, align 4
  %.not = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not, i32 400, i32 0
  %i.l = load i32, ptr @penalty, align 4
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2496), align 16
  %i.n = sub nsw i32 %i.l, %i.m
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count130 = zext nneg i32 %i.d to i64
  %wide.trip.count125 = zext nneg i32 %1 to i64
  br label %.lr.ph76.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge, label %.lr.ph76.us, !llvm.loop !71

.lr.ph76.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv127 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next128, %.loopexit.us ] ; 3 uses
  %indvars.iv120 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next121, %.loopexit.us ] ; 2 uses
  %.05287.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bb, %.loopexit.us ]
  %.05786.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %.4.us.us, %.loopexit.us ]
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv127
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv127
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph76.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %._crit_edge.us.us ], [ %indvars.iv120, %.lr.ph76.us ] ; 3 uses
  %.15373.us.us = phi double [ %i.bb, %._crit_edge.us.us ], [ %.05287.us, %.lr.ph76.us ]
  %.15872.us.us = phi double [ %.4.us.us, %._crit_edge.us.us ], [ %.05786.us, %.lr.ph76.us ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv122
  %i.u = load double, ptr %i.t, align 8, !tbaa !24
  %spec.store.select.us.us = select i1 %i.g, double 1.000000e+00, double %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.us.us
  %.05164.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %.1.us.us, %bb.f ] ; 2 uses
  %.05463.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.bc, %bb.f ] ; 3 uses
  %.25962.us.us = phi double [ %.15872.us.us, %.lr.ph.us.us ], [ %.360.us.us, %bb.f ] ; 2 uses
  %i.x = sext i32 %.05463.us.us to i64            ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8     ; 2 uses
  %i.aa = icmp eq i8 %i.z, 45                     ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8   ; 3 uses
  %i.ad = icmp eq i8 %i.ac, 45
  %or.cond = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge132

._crit_edge132:                                   ; preds = %bb.b
  %i.ae = sext i8 %i.z to i64
  %i.af = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ae
  %i.ag = sext i8 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add nsw i32 %i.k, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = add nsw i64 %.05164.us.us, %i.ak        ; 3 uses
  %i.am = fadd double %spec.store.select.us.us, %.25962.us.us ; 5 uses
  br i1 %i.aa, label %.preheader, label %bb.c

bb.c:                                             ; preds = %._crit_edge132
  %i.an = icmp eq i8 %i.ac, 45
  br i1 %i.an, label %.preheader140, label %bb.f

.preheader140:                                    ; preds = %bb.c, %.preheader140
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.preheader140 ], [ %i.x, %bb.c ] ; 2 uses
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next115
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = icmp eq i8 %i.ap, 45
  br i1 %i.aq, label %.preheader140, label %bb.d, !llvm.loop !72

bb.d:                                             ; preds = %.preheader140
  %i.ar = add nsw i64 %i.al, %i.o                 ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv114 to i32     ; 2 uses
  %i.at = icmp slt i32 %i.h, %i.as
  br i1 %i.at, label %._crit_edge.us.us, label %bb.f

.preheader:                                       ; preds = %._crit_edge132, %.preheader
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.preheader ], [ %i.x, %._crit_edge132 ] ; 2 uses
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv.next118
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %.preheader, label %bb.e, !llvm.loop !73

bb.e:                                             ; preds = %.preheader
  %i.ax = add nsw i64 %i.al, %i.o                 ; 2 uses
  %i.ay = trunc nsw i64 %indvars.iv117 to i32     ; 2 uses
  %i.az = icmp slt i32 %i.h, %i.ay
  br i1 %i.az, label %._crit_edge.us.us, label %bb.f

._crit_edge.us.us:                                ; preds = %bb.f, %bb.e, %bb.d
  %.4.us.us = phi double [ %i.am, %bb.d ], [ %i.am, %bb.e ], [ %.360.us.us, %bb.f ] ; 3 uses
  %.2.us.us = phi i64 [ %i.ar, %bb.d ], [ %i.ax, %bb.e ], [ %.1.us.us, %bb.f ]
  %i.ba = sitofp i64 %.2.us.us to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %spec.store.select.us.us, double %.15373.us.us) ; 3 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !74

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.360.us.us = phi double [ %.25962.us.us, %bb.b ], [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %.3.us.us = phi i32 [ %.05463.us.us, %bb.b ], [ %i.ay, %bb.e ], [ %i.as, %bb.d ], [ %.05463.us.us, %bb.c ]
  %.1.us.us = phi i64 [ %.05164.us.us, %bb.b ], [ %i.ax, %bb.e ], [ %i.ar, %bb.d ], [ %i.al, %bb.c ] ; 2 uses
  %i.bc = add nsw i32 %.3.us.us, 1                ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.c
  br i1 %i.bd, label %bb.b, label %._crit_edge.us.us, !llvm.loop !75

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.g, label %._crit_edge, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count112 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.be = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph76

.loopexit:                                        ; preds = %.lr.ph76.new, %.prol.loopexit
  %.lcssa144 = phi double [ %.lcssa144.unr, %.prol.loopexit ], [ %i.cc, %.lr.ph76.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge, label %.lr.ph76, !llvm.loop !71

.lr.ph76:                                         ; preds = %.loopexit, %.lr.ph.split.split.preheader
  %indvars.iv109 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next110, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.05287 = phi double [ 0.000000e+00, %.lr.ph.split.split.preheader ], [ %.lcssa144, %.loopexit ] ; 2 uses
  %i.bf = xor i64 %indvars.iv109, -1
  %i.bg = add nsw i64 %i.bf, %wide.trip.count
  %i.bh = sub i64 %i.be, %indvars.iv109
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv109
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52 ; 5 uses
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph76, %.prol.preheader
  %indvars.iv106.prol = phi i64 [ %indvars.iv.next107.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph76 ] ; 2 uses
  %.15373.prol = phi double [ %i.bm, %.prol.preheader ], [ %.05287, %.lr.ph76 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph76 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106.prol
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !24
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double 0.000000e+00, double %.15373.prol) ; 3 uses
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !76

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph76
  %.lcssa144.unr = phi double [ poison, %.lr.ph76 ], [ %i.bm, %.prol.preheader ]
  %indvars.iv106.unr = phi i64 [ %indvars.iv, %.lr.ph76 ], [ %indvars.iv.next107.prol, %.prol.preheader ]
  %.15373.unr = phi double [ %.05287, %.lr.ph76 ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp ult i64 %i.bh, 3
  br i1 %i.bn, label %.loopexit, label %.lr.ph76.new

.lr.ph76.new:                                     ; preds = %.prol.loopexit, %.lr.ph76.new
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.3, %.lr.ph76.new ], [ %indvars.iv106.unr, %.prol.loopexit ] ; 5 uses
  %.15373 = phi double [ %i.cc, %.lr.ph76.new ], [ %.15373.unr, %.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 0.000000e+00, double %.15373)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !24
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double 0.000000e+00, double %i.bq)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.bu)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !24
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double 0.000000e+00, double %i.by) ; 2 uses
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next107.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph76.new, !llvm.loop !74

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %.lr.ph.split, %bb.a
  %.057.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.4.us.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph.split ], [ 0.000000e+00, %.loopexit ]
  %.052.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bb, %.loopexit.us ], [ 0.000000e+00, %.lr.ph.split ], [ %.lcssa144, %.loopexit ]
  %i.cd = fdiv double %.052.lcssa, %.057.lcssa
end_hunk_0
begin_hunk_1_@spg:bb.a
.lr.ph240:                                        ; preds = %.epil.preheader339, %bb.l, %.lr.ph240.unr-lcssa
  %.3.lcssa = phi i32 [ %.3.1, %.lr.ph240.unr-lcssa ], [ %i.fg, %bb.l ], [ %.2233.epil.init, %.epil.preheader339 ]
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ef
  %.pre310 = load double, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !89
  %i.fj = sext i32 %.3.lcssa to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj
  store i32 -1, ptr %i.fk, align 4, !tbaa !4
  %i.fl = fpext float %.2175.lcssa to double
  %i.fm = fmul double %i.fl, 5.000000e-01         ; 3 uses
  %i.fn = sext i32 %.2172.lcssa to i64            ; 3 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fn ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  %i.fq = fsub double %i.fm, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv305
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !52 ; 2 uses
  store double %i.fq, ptr %i.fs, align 8, !tbaa !24
  %i.ft = fsub double %i.fm, %.pre310
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store double %i.ft, ptr %i.fu, align 8, !tbaa !24
  store double %i.fm, ptr %i.fo, align 8, !tbaa !24
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ef ; 3 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fn ; 3 uses
  br i1 %i.bj, label %.epil.preheader347, label %.lr.ph240.new

.lr.ph242.unr-lcssa:                              ; preds = %.lr.ph240.new
  br i1 %lcmp.mod350.not, label %.lr.ph242, label %.epil.preheader347

.epil.preheader347:                               ; preds = %.lr.ph242.unr-lcssa, %.lr.ph240
  %indvars.iv294.epil.init = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next295.1, %.lr.ph242.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod351)
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv294.epil.init
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !8
  %i.ga = icmp sgt i8 %i.fz, 0
  %i.gb = zext i1 %i.ga to i8
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv294.epil.init ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !8
  %i.gf = add i8 %i.ge, %i.gb
  store i8 %i.gf, ptr %i.gd, align 1, !tbaa !8
  br label %.lr.ph242

.lr.ph242:                                        ; preds = %.lr.ph242.unr-lcssa, %.epil.preheader347
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ef ; 5 uses
  br i1 %i.bk, label %.epil.preheader354, label %.lr.ph242.new

.lr.ph240.new:                                    ; preds = %.lr.ph240, %.lr.ph240.new
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %.lr.ph240.new ], [ 0, %.lr.ph240 ] ; 4 uses
  %niter353 = phi i64 [ %niter353.next.1, %.lr.ph240.new ], [ 0, %.lr.ph240 ]
  %i.gh = load ptr, ptr %i.fv, align 8, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv294
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !8
  %i.gk = icmp sgt i8 %i.gj, 0
  %i.gl = zext i1 %i.gk to i8
  %i.gm = load ptr, ptr %i.fw, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv294 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !8
  %i.gp = add i8 %i.go, %i.gl
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !8
  %indvars.iv.next295 = or disjoint i64 %indvars.iv294, 1 ; 2 uses
  %i.gq = load ptr, ptr %i.fv, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next295
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !8
  %i.gt = icmp sgt i8 %i.gs, 0
  %i.gu = zext i1 %i.gt to i8
  %i.gv = load ptr, ptr %i.fw, align 8, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv.next295 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !8
  %i.gy = add i8 %i.gx, %i.gu
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !8
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2 ; 2 uses
  %niter353.next.1 = add i64 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i64 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %.lr.ph242.unr-lcssa, label %.lr.ph240.new, !llvm.loop !281

.lr.ph244.unr-lcssa:                              ; preds = %.lr.ph242.new
  br i1 %lcmp.mod357.not, label %.lr.ph244, label %.epil.preheader354

.epil.preheader354:                               ; preds = %.lr.ph244.unr-lcssa, %.lr.ph242
  %indvars.iv299.epil.init = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next300.3, %.lr.ph244.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod358)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader354
  %indvars.iv299.epil = phi i64 [ %indvars.iv299.epil.init, %.epil.preheader354 ], [ %indvars.iv.next300.epil, %bb.m ] ; 2 uses
  %epil.iter356 = phi i64 [ 0, %.epil.preheader354 ], [ %epil.iter356.next, %bb.m ]
  %i.gz = load ptr, ptr %i.gg, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv299.epil
  store i8 0, ptr %i.ha, align 1, !tbaa !8
  %indvars.iv.next300.epil = add nuw nsw i64 %indvars.iv299.epil, 1
  %epil.iter356.next = add i64 %epil.iter356, 1   ; 2 uses
  %epil.iter356.cmp.not = icmp eq i64 %epil.iter356.next, %xtraiter355
  br i1 %epil.iter356.cmp.not, label %.lr.ph244, label %bb.m, !llvm.loop !282

.lr.ph244:                                        ; preds = %bb.m, %.lr.ph244.unr-lcssa
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fn
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !52
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.ef
  br label %bb.n

.lr.ph242.new:                                    ; preds = %.lr.ph242, %.lr.ph242.new
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.3, %.lr.ph242.new ], [ 0, %.lr.ph242 ] ; 5 uses
  %niter360 = phi i64 [ %niter360.next.3, %.lr.ph242.new ], [ 0, %.lr.ph242 ]
  %i.he = load ptr, ptr %i.gg, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv299
  store i8 0, ptr %i.hf, align 1, !tbaa !8
  %i.hg = load ptr, ptr %i.gg, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv299
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  store i8 0, ptr %i.hi, align 1, !tbaa !8
  %i.hj = load ptr, ptr %i.gg, align 8, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv299
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  store i8 0, ptr %i.hl, align 1, !tbaa !8
  %i.hm = load ptr, ptr %i.gg, align 8, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv299
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  store i8 0, ptr %i.ho, align 1, !tbaa !8
  %indvars.iv.next300.3 = add nuw nsw i64 %indvars.iv299, 4 ; 2 uses
  %niter360.next.3 = add i64 %niter360, 4         ; 2 uses
  %niter360.ncmp.3 = icmp eq i64 %niter360.next.3, %unroll_iter359
  br i1 %niter360.ncmp.3, label %.lr.ph244.unr-lcssa, label %.lr.ph242.new, !llvm.loop !283

bb.n:                                             ; preds = %.lr.ph244, %bb.p
  %.9243 = phi i32 [ 0, %.lr.ph244 ], [ %i.ig, %bb.p ] ; 7 uses
  %.not = icmp eq i32 %.9243, %.2172.lcssa
  %.not192 = icmp eq i32 %.9243, %.2169.lcssa
  %or.cond = select i1 %.not, i1 true, i1 %.not192
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hp = tail call i32 @llvm.smin.i32(i32 %.9243, i32 %.2172.lcssa)
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !52
  %i.ht = tail call i32 @llvm.smax.i32(i32 %.9243, i32 %.2172.lcssa)
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hu ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !24 ; 2 uses
  %i.hx = tail call i32 @llvm.smin.i32(i32 %.9243, i32 %.2169.lcssa)
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !52
  %i.ib = tail call i32 @llvm.smax.i32(i32 %.9243, i32 %.2169.lcssa)
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ic ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !24 ; 2 uses
  %i.if = fcmp olt double %i.hw, %i.ie
  %. = select i1 %i.if, double %i.hw, double %i.ie
  store double %., ptr %i.hv, align 8, !tbaa !24
  store double 9.999000e+03, ptr %i.id, align 8, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store double 9.999000e+03, ptr %i.hd, align 8, !tbaa !24
  %i.ig = add nuw nsw i32 %.9243, 1               ; 2 uses
  %exitcond304.not = icmp eq i32 %i.ig, %0
  br i1 %exitcond304.not, label %._crit_edge245, label %bb.n, !llvm.loop !284

._crit_edge245:                                   ; preds = %bb.p
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %exitcond309.not = icmp eq i64 %indvars.iv.next306, %wide.trip.count308
  br i1 %exitcond309.not, label %._crit_edge247, label %.lr.ph223.preheader, !llvm.loop !285

._crit_edge247:                                   ; preds = %._crit_edge245, %bb.a, %.preheader196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

declare ptr @AllocateDoubleMtx(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local double @ipower(double noundef %0, i32 noundef %1) local_unnamed_addr #21 {
bb.a:
  %.not10 = icmp eq i32 %1, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi double [ %.1, %.lr.ph ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %.0712 = phi i32 [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0811 = phi double [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = and i32 %.0712, 1
  %.not9 = icmp eq i32 %i.a, 0
  %i.b = fmul double %.0811, %.013
  %.1 = select i1 %.not9, double %.013, double %i.b ; 2 uses
  %i.c = fmul double %.0811, %.0811
  %i.d = ashr i32 %.0712, 1                       ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !286

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %.1, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @countnode(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -2
  %i.b = icmp slt i32 %0, 2
  br i1 %i.b, label %bb.b, label %.preheader89.preheader

.preheader89.preheader:                           ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @countnode.rootnode, i8 0, i64 %i.d, i1 false), !tbaa !24
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.preheader83, label %.preheader87.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.27, i32 noundef %0) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

.preheader87.preheader:                           ; preds = %.preheader89.preheader
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge101
  %indvars.iv124 = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next125, %._crit_edge101 ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv124
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87   ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4    ; 3 uses
  %i.k = icmp sgt i32 %i.j, -1                    ; 2 uses
  br i1 %i.k, label %.lr.ph, label %.preheader86.thread

.preheader83:                                     ; preds = %._crit_edge101, %.preheader89.preheader
  %.pre-phi = phi i64 [ 0, %.preheader89.preheader ], [ %wide.trip.count, %._crit_edge101 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge106

.preheader.lr.ph:                                 ; preds = %.preheader83
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89   ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %.preheader.us, label %._crit_edge106

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us107
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %._crit_edge.us107 ], [ 0, %.preheader.lr.ph ]
  %i.u = phi i32 [ %i.ao, %._crit_edge.us107 ], [ %i.o, %.preheader.lr.ph ] ; 3 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv130 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next131, %bb.c ]
  %i.y = phi i32 [ %i.s, %.preheader.us ], [ %i.al, %bb.c ] ; 3 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !24
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.y)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.y)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  store double %i.ac, ptr %i.aj, align 8, !tbaa !24
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next131
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.c, label %._crit_edge.us107, !llvm.loop !287

._crit_edge.us107:                                ; preds = %bb.c
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next134
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %.preheader.us, label %._crit_edge106, !llvm.loop !288

.preheader86:                                     ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !89 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %.lr.ph96.preheader, label %._crit_edge101

.preheader86.thread:                              ; preds = %.preheader87
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !89 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %.lr.ph96.preheader, label %._crit_edge101

.lr.ph96.preheader:                               ; preds = %.preheader86.thread, %.preheader86
  %i.ay = phi i32 [ %i.aw, %.preheader86.thread ], [ %i.as, %.preheader86 ] ; 2 uses
  %i.az = phi ptr [ %i.av, %.preheader86.thread ], [ %i.ar, %.preheader86 ] ; 2 uses
  br label %.lr.ph96

.lr.ph:                                           ; preds = %.preheader87, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader87 ]
  %i.ba = phi i32 [ %i.bg, %.lr.ph ], [ %i.j, %.preheader87 ]
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.bb ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fadd double %i.bd, 1.000000e+00
  store double %i.be, ptr %i.bc, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %.lr.ph, label %.preheader86, !llvm.loop !289

.preheader85:                                     ; preds = %.lr.ph96
  br i1 %i.k, label %.preheader84.us, label %._crit_edge101

.preheader84.us:                                  ; preds = %.preheader85, %._crit_edge.us
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %._crit_edge.us ], [ 0, %.preheader85 ]
  %i.bi = phi i32 [ %i.cd, %._crit_edge.us ], [ %i.j, %.preheader85 ] ; 3 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.preheader84.us, %bb.d
  %indvars.iv118 = phi i64 [ 0, %.preheader84.us ], [ %indvars.iv.next119, %bb.d ]
  %i.bm = phi i32 [ %i.ay, %.preheader84.us ], [ %i.ca, %bb.d ] ; 3 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = fadd double %i.bl, %i.bp
  %i.br = fadd double %i.bq, -1.000000e+00
  %i.bs = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bm)
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !52
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bm)
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store double %i.br, ptr %i.by, align 8, !tbaa !24
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next119
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4  ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.d, label %._crit_edge.us, !llvm.loop !290

._crit_edge.us:                                   ; preds = %bb.d
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next122
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  br i1 %i.ce, label %.preheader84.us, label %._crit_edge101, !llvm.loop !291

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  %indvars.iv112 = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next113, %.lr.ph96 ]
  %i.cf = phi i32 [ %i.ay, %.lr.ph96.preheader ], [ %i.cl, %.lr.ph96 ]
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.cg ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !24
  %i.cj = fadd double %i.ci, 1.000000e+00
  store double %i.cj, ptr %i.ch, align 8, !tbaa !24
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next113
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %.lr.ph96, label %.preheader85, !llvm.loop !292

._crit_edge101:                                   ; preds = %._crit_edge.us, %.preheader86, %.preheader86.thread, %.preheader85
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %.preheader83, label %.preheader87, !llvm.loop !293

._crit_edge106:                                   ; preds = %._crit_edge.us107, %.preheader.lr.ph, %.preheader83
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @countnode_int(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [50000 x i32], align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.preheader102, label %.preheader102.thread

.preheader102.thread:                             ; preds = %bb.a
  %i.c = add i32 %0, -2
  br label %.preheader97

.preheader102:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.e, i1 false), !tbaa !4
  %i.f = add nsw i32 %0, -2                       ; 3 uses
  %i.g = icmp samesign ugt i32 %0, 2
  br i1 %i.g, label %.preheader101.preheader, label %.preheader97

.preheader101.preheader:                          ; preds = %.preheader102
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.preheader101
end_hunk_1
begin_hunk_2_@counteff:bb.a
  %i.d = load i32, ptr @weight, align 4, !tbaa !4
  switch i32 %i.d, label %bb.c [
    i32 2, label %.loopexit174.thread327
    i32 3, label %.thread326
  ]

.loopexit174.thread327:                           ; preds = %bb.b
  store i32 3, ptr @weight, align 4, !tbaa !4
  br label %.preheader171

.thread326:                                       ; preds = %bb.b
  store i32 2, ptr @weight, align 4, !tbaa !4
  br label %.preheader184

bb.c:                                             ; preds = %bb.b
  tail call void @ErrorExit(ptr noundef nonnull @.str.28) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.pr = load i32, ptr @weight, align 4, !tbaa !4
  switch i32 %.pr, label %.loopexit [
    i32 2, label %.preheader184
    i32 3, label %.preheader171
  ]

.preheader184:                                    ; preds = %bb.d, %.thread326
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.preheader183, label %.preheader183.thread

.preheader183.thread:                             ; preds = %.preheader184
  %i.f = add i32 %0, -2
  br label %.preheader178

.preheader183:                                    ; preds = %.preheader184
  %i.g = zext nneg i32 %0 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !24
  %i.i = add nsw i32 %0, -2                       ; 3 uses
  %i.j = icmp samesign ugt i32 %0, 2
  br i1 %i.j, label %.preheader182.preheader, label %.preheader178

.preheader182.preheader:                          ; preds = %.preheader183
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.preheader, %._crit_edge201
  %indvars.iv247 = phi i64 [ 0, %.preheader182.preheader ], [ %indvars.iv.next248, %._crit_edge201 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv247
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89   ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1                    ; 2 uses
  br i1 %i.o, label %.lr.ph193, label %.preheader181.thread

.preheader178:                                    ; preds = %._crit_edge201, %.preheader183.thread, %.preheader183
  %i.p = phi i32 [ %i.f, %.preheader183.thread ], [ %i.i, %.preheader183 ], [ %i.i, %._crit_edge201 ]
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89   ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.preheader177.lr.ph, label %.preheader176

.preheader177.lr.ph:                              ; preds = %.preheader178
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %.preheader177.us, label %.preheader176

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %._crit_edge.us206
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %._crit_edge.us206 ], [ 0, %.preheader177.lr.ph ]
  %i.aa = phi i32 [ %i.au, %._crit_edge.us206 ], [ %i.u, %.preheader177.lr.ph ] ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.preheader177.us, %bb.e
  %indvars.iv253 = phi i64 [ 0, %.preheader177.us ], [ %indvars.iv.next254, %bb.e ]
  %i.ae = phi i32 [ %i.y, %.preheader177.us ], [ %i.ar, %bb.e ] ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !24
  %i.ai = fadd double %i.ad, %i.ah
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ae)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ae)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  store double %i.ai, ptr %i.ap, align 8, !tbaa !24
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next254
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.e, label %._crit_edge.us206, !llvm.loop !327

._crit_edge.us206:                                ; preds = %bb.e
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next257
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %.preheader177.us, label %.preheader176, !llvm.loop !328

.preheader181:                                    ; preds = %.lr.ph193
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.lr.ph196.preheader, label %._crit_edge201

.preheader181.thread:                             ; preds = %.preheader182
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !89 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %.lr.ph196.preheader, label %._crit_edge201

.lr.ph196.preheader:                              ; preds = %.preheader181.thread, %.preheader181
  %i.be = phi i32 [ %i.bc, %.preheader181.thread ], [ %i.ay, %.preheader181 ] ; 2 uses
  %i.bf = phi ptr [ %i.bb, %.preheader181.thread ], [ %i.ax, %.preheader181 ] ; 2 uses
  br label %.lr.ph196

.lr.ph193:                                        ; preds = %.preheader182, %.lr.ph193
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph193 ], [ 0, %.preheader182 ]
  %i.bg = phi i32 [ %i.bm, %.lr.ph193 ], [ %i.n, %.preheader182 ]
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !24
  %i.bk = fadd double %i.bj, 1.000000e+00
  store double %i.bk, ptr %i.bi, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %.lr.ph193, label %.preheader181, !llvm.loop !329

.preheader180:                                    ; preds = %.lr.ph196
  br i1 %i.o, label %.preheader179.us, label %._crit_edge201

.preheader179.us:                                 ; preds = %.preheader180, %._crit_edge.us
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %._crit_edge.us ], [ 0, %.preheader180 ]
  %i.bo = phi i32 [ %i.cj, %._crit_edge.us ], [ %i.n, %.preheader180 ] ; 3 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.preheader179.us, %bb.f
  %indvars.iv241 = phi i64 [ 0, %.preheader179.us ], [ %indvars.iv.next242, %bb.f ]
  %i.bs = phi i32 [ %i.be, %.preheader179.us ], [ %i.cg, %bb.f ] ; 3 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !24
  %i.bw = fadd double %i.br, %i.bv
  %i.bx = fadd double %i.bw, -1.000000e+00
  %i.by = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bs)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 %i.bs)
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  store double %i.bx, ptr %i.ce, align 8, !tbaa !24
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next242
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4  ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  br i1 %i.ch, label %bb.f, label %._crit_edge.us, !llvm.loop !330

._crit_edge.us:                                   ; preds = %bb.f
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next245
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %.preheader179.us, label %._crit_edge201, !llvm.loop !331

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %.lr.ph196
  %indvars.iv235 = phi i64 [ 0, %.lr.ph196.preheader ], [ %indvars.iv.next236, %.lr.ph196 ]
  %i.cl = phi i32 [ %i.be, %.lr.ph196.preheader ], [ %i.cr, %.lr.ph196 ]
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cm ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !24
  %i.cp = fadd double %i.co, 1.000000e+00
  store double %i.cp, ptr %i.cn, align 8, !tbaa !24
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next236
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4  ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %.lr.ph196, label %.preheader180, !llvm.loop !332

._crit_edge201:                                   ; preds = %._crit_edge.us, %.preheader181, %.preheader181.thread, %.preheader180
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count
  br i1 %exitcond.not, label %.preheader178, label %.preheader182, !llvm.loop !333

.preheader176:                                    ; preds = %._crit_edge.us206, %.preheader177.lr.ph, %.preheader178
  %i.ct = add i32 %0, -1                          ; 2 uses
  %i.cu = icmp sgt i32 %0, 1
  br i1 %i.cu, label %.lr.ph210, label %.loopexit

.lr.ph210:                                        ; preds = %.preheader176
  %i.cv = load float, ptr @geta2, align 4
  %i.cw = fpext float %i.cv to double
  %wide.trip.count269 = zext nneg i32 %i.ct to i64
  %wide.trip.count264 = zext nneg i32 %0 to i64   ; 3 uses
  br label %.lr.ph208

.loopexit175:                                     ; preds = %ipower.exit
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %.lr.ph215.preheader, label %.lr.ph208, !llvm.loop !334

.lr.ph215.preheader:                              ; preds = %.loopexit175
  %wide.trip.count281 = zext nneg i32 %i.ct to i64
  %wide.trip.count276 = zext nneg i32 %0 to i64
  %i.cx = add nsw i64 %wide.trip.count264, -2
  br label %.lr.ph213

.lr.ph208:                                        ; preds = %.loopexit175, %.lr.ph210
  %indvars.iv266 = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next267, %.loopexit175 ] ; 2 uses
  %indvars.iv259 = phi i64 [ 1, %.lr.ph210 ], [ %indvars.iv.next260, %.loopexit175 ] ; 2 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv266
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph208, %ipower.exit
  %indvars.iv261 = phi i64 [ %indvars.iv259, %.lr.ph208 ], [ %indvars.iv.next262, %ipower.exit ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv261 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = fptosi double %i.db to i32              ; 2 uses
  %.not10.i = icmp eq i32 %i.dc, 0
  br i1 %.not10.i, label %ipower.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.013.i = phi double [ %.1.i, %.lr.ph.i ], [ 1.000000e+00, %bb.g ] ; 2 uses
  %.0712.i = phi i32 [ %i.dg, %.lr.ph.i ], [ %i.dc, %bb.g ] ; 2 uses
  %.0811.i = phi double [ %i.df, %.lr.ph.i ], [ 5.000000e-01, %bb.g ] ; 3 uses
  %i.dd = and i32 %.0712.i, 1
  %.not9.i = icmp eq i32 %i.dd, 0
  %i.de = fmul double %.013.i, %.0811.i
  %.1.i = select i1 %.not9.i, double %.013.i, double %i.de ; 2 uses
  %i.df = fmul double %.0811.i, %.0811.i
  %i.dg = ashr i32 %.0712.i, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i, label %ipower.exit, label %.lr.ph.i, !llvm.loop !286

ipower.exit:                                      ; preds = %.lr.ph.i, %bb.g
  %.0.lcssa.i = phi double [ 1.000000e+00, %bb.g ], [ %.1.i, %.lr.ph.i ]
  %i.dh = fadd double %.0.lcssa.i, %i.cw
  store double %i.dh, ptr %i.da, align 8, !tbaa !24
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit175, label %bb.g, !llvm.loop !335

.loopexit172:                                     ; preds = %.lr.ph213.new, %.prol.loopexit
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph213, !llvm.loop !336

.lr.ph213:                                        ; preds = %.loopexit172, %.lr.ph215.preheader
  %indvars.iv278 = phi i64 [ 0, %.lr.ph215.preheader ], [ %indvars.iv.next279, %.loopexit172 ] ; 9 uses
  %indvars.iv271 = phi i64 [ 1, %.lr.ph215.preheader ], [ %indvars.iv.next272, %.loopexit172 ] ; 3 uses
  %i.di = xor i64 %indvars.iv278, -1
  %i.dj = add nsw i64 %i.di, %wide.trip.count264
  %i.dk = sub i64 %i.cx, %indvars.iv278
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv278
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !52 ; 5 uses
  %xtraiter350 = and i64 %i.dj, 3                 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph213, %.prol.preheader
  %indvars.iv273.prol = phi i64 [ %indvars.iv.next274.prol, %.prol.preheader ], [ %indvars.iv271, %.lr.ph213 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph213 ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv273.prol
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv273.prol
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv278
  store double %i.do, ptr %i.dr, align 8, !tbaa !24
  %indvars.iv.next274.prol = add nuw nsw i64 %indvars.iv273.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter350
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !337

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph213
  %indvars.iv273.unr = phi i64 [ %indvars.iv271, %.lr.ph213 ], [ %indvars.iv.next274.prol, %.prol.preheader ]
  %i.ds = icmp ult i64 %i.dk, 3
  br i1 %i.ds, label %.loopexit172, label %.lr.ph213.new

.lr.ph213.new:                                    ; preds = %.prol.loopexit, %.lr.ph213.new
  %indvars.iv273 = phi i64 [ %indvars.iv.next274.3, %.lr.ph213.new ], [ %indvars.iv273.unr, %.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv273
  %i.du = load double, ptr %i.dt, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv273
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !52
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv278
  store double %i.du, ptr %i.dx, align 8, !tbaa !24
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !52
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv278
  store double %i.dz, ptr %i.ec, align 8, !tbaa !24
  %indvars.iv.next274.1 = add nuw nsw i64 %indvars.iv273, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274.1
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274.1
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv278
  store double %i.ee, ptr %i.eh, align 8, !tbaa !24
  %indvars.iv.next274.2 = add nuw nsw i64 %indvars.iv273, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274.2
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274.2
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !52
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv278
  store double %i.ej, ptr %i.em, align 8, !tbaa !24
  %indvars.iv.next274.3 = add nuw nsw i64 %indvars.iv273, 4 ; 2 uses
  %exitcond277.not.3 = icmp eq i64 %indvars.iv.next274.3, %wide.trip.count276
  br i1 %exitcond277.not.3, label %.loopexit172, label %.lr.ph213.new, !llvm.loop !338

.preheader171:                                    ; preds = %bb.d, %.loopexit174.thread327
  %i.en = icmp sgt i32 %0, 0
  br i1 %i.en, label %.lr.ph217.preheader, label %.loopexit

.lr.ph217.preheader:                              ; preds = %.preheader171
  %i.eo = zext nneg i32 %0 to i64                 ; 8 uses
  %i.ep = shl nuw nsw i64 %i.eo, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ep, i1 false), !tbaa !24
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph217.preheader348, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph217.preheader
  %n.vec = and i64 %i.eo, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.eq, align 16, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.er, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eo
  br i1 %cmp.n, label %.preheader170, label %.lr.ph217.preheader348

.lr.ph217.preheader348:                           ; preds = %.lr.ph217.preheader, %middle.block
  %indvars.iv283.ph = phi i64 [ 0, %.lr.ph217.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph217

.preheader170:                                    ; preds = %.lr.ph217, %middle.block
  %.not332 = icmp eq i32 %0, 1
  br i1 %.not332, label %.lr.ph226.preheader, label %.preheader169.preheader

.preheader169.preheader:                          ; preds = %.preheader170
  %i.et = add nsw i32 %0, -1
  %wide.trip.count297 = zext nneg i32 %i.et to i64
  br label %.preheader169

.lr.ph217:                                        ; preds = %.lr.ph217.preheader348, %.lr.ph217
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph217 ], [ %indvars.iv283.ph, %.lr.ph217.preheader348 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv283
  store double 1.000000e+00, ptr %i.eu, align 8, !tbaa !24
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.eo
  br i1 %exitcond287.not, label %.preheader170, label %.lr.ph217, !llvm.loop !340

.preheader169:                                    ; preds = %.preheader169.preheader, %._crit_edge
  %indvars.iv294 = phi i64 [ 0, %.preheader169.preheader ], [ %indvars.iv.next295, %._crit_edge ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv294
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !87 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !89 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4  ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, -1
  br i1 %i.ez, label %.lr.ph219, label %.preheader168

.lr.ph219:                                        ; preds = %.preheader169
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv294
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !52
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !24
  br label %bb.h

.lr.ph226.preheader:                              ; preds = %._crit_edge, %.preheader170
  %wide.trip.count302 = zext nneg i32 %0 to i64
  %min.iters.check335 = icmp ult i32 %0, 4
  br i1 %min.iters.check335, label %.lr.ph226.preheader347, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph226.preheader
  %n.vec338 = and i64 %i.eo, 2147483644           ; 3 uses
end_hunk_2
begin_hunk_3_@substitution:bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01725.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.01824.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.119.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod37 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8     ; 2 uses
  %.not22.epil = icmp eq i8 %i.v, 45
  br i1 %.not22.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %.not23.epil = icmp eq i8 %i.x, 45
  br i1 %.not23.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ne i8 %i.v, %i.x
  %i.z = uitofp i1 %i.y to float
  %i.aa = fadd float %.01824.epil.init, %i.z
  %i.ab = add i32 %.01725.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.g, %bb.h, %._crit_edge.unr-lcssa
  %.119.lcssa = phi float [ %.119.1, %._crit_edge.unr-lcssa ], [ %i.aa, %bb.h ], [ %.01824.epil.init, %bb.g ], [ %.01824.epil.init, %.lr.ph.epil.preheader ]
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.ab, %bb.h ], [ %.01725.epil.init, %bb.g ], [ %.01725.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.not = icmp eq i32 %.1.lcssa, 0
  %i.ac = sitofp i32 %.1.lcssa to float
  %i.ad = fdiv float %.119.lcssa, %i.ac
  br i1 %.not, label %._crit_edge.thread, label %bb.i

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ae = phi float [ 1.000000e+00, %._crit_edge.thread ], [ %i.ad, %._crit_edge ]
  ret float %i.ae
}

; Function Attrs: nounwind uwtable
define dso_local void @treeconstruction(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @weight, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.preheader34

.preheader34:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.preheader33.preheader, label %.loopexit35

.preheader33.preheader:                           ; preds = %.preheader34
  %wide.trip.count55 = zext nneg i32 %1 to i64    ; 4 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count55, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count55
  br label %.preheader33

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @utree, align 4, !tbaa !4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.preheader, label %.loopexit35

.preheader:                                       ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 1
  br i1 %i.f, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %.preheader
  %i.g = add nsw i32 %1, -1
  %wide.trip.count67 = zext nneg i32 %i.g to i64
  %wide.trip.count62 = zext nneg i32 %1 to i64
  br label %.lr.ph

.loopexit:                                        ; preds = %substitution_hosei.exit
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge46, label %.lr.ph, !llvm.loop !356

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph45.preheader
  %indvars.iv64 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next65, %.loopexit ] ; 3 uses
  %indvars.iv57 = phi i64 [ 1, %.lr.ph45.preheader ], [ %indvars.iv.next58, %.loopexit ] ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %substitution_hosei.exit
  %indvars.iv59 = phi i64 [ %indvars.iv57, %.lr.ph ], [ %indvars.iv.next60, %substitution_hosei.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %.outer.i

.outer.i:                                         ; preds = %bb.f, %bb.c
  %.018.ph.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.016.ph.i = phi i32 [ %i.v, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.015.ph.i = phi ptr [ %i.p, %bb.f ], [ %i.m, %bb.c ]
  %.0.ph.i = phi ptr [ %i.o, %bb.f ], [ %i.i, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.outer.i
  %.015.i = phi ptr [ %i.p, %bb.e ], [ %.015.ph.i, %.outer.i ] ; 2 uses
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %.0.ph.i, %.outer.i ] ; 2 uses
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !8    ; 3 uses
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %i.q = load i8, ptr %.015.i, align 1, !tbaa !8  ; 2 uses
  %i.r = icmp eq i8 %i.n, 45
  %i.s = icmp eq i8 %i.q, 45
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %bb.d, label %bb.f, !llvm.loop !354

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ne i8 %i.n, %i.q
  %i.u = zext i1 %i.t to i32
  %i.v = add nuw nsw i32 %.016.ph.i, %i.u
  %i.w = add nuw nsw i32 %.018.ph.i, 1
  br label %.outer.i, !llvm.loop !354

bb.g:                                             ; preds = %bb.d
  %.not23.i = icmp eq i32 %.018.ph.i, 0
  %i.x = uitofp nneg i32 %.016.ph.i to float
  %i.y = uitofp nneg i32 %.018.ph.i to float
  %i.z = fdiv float %i.x, %i.y
  %i.aa = fpext float %i.z to double
  %.017.i = select i1 %.not23.i, double 1.000000e+00, double %i.aa ; 2 uses
  %i.ab = fcmp olt double %.017.i, f0x3FEE666666666666
  br i1 %i.ab, label %bb.h, label %substitution_hosei.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = fsub double 1.000000e+00, %.017.i
  %i.ad = tail call double @log(double noundef %i.ac) #33, !tbaa !4
  %i.ae = fptrunc double %i.ad to float
  %i.af = fneg float %i.ae
  %i.ag = fpext float %i.af to double
  br label %substitution_hosei.exit

substitution_hosei.exit:                          ; preds = %bb.g, %bb.h
  %.1.i = phi double [ %i.ag, %bb.h ], [ 3.000000e+00, %bb.g ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv59
  store double %.1.i, ptr %i.ah, align 8, !tbaa !24
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.loopexit, label %bb.c, !llvm.loop !357

._crit_edge46:                                    ; preds = %.loopexit, %.preheader
  tail call void @spg(i32 noundef %1, ptr noundef %4, ptr noundef %2, ptr noundef %3)
  tail call void @counteff(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %.loopexit35

.preheader33:                                     ; preds = %.preheader33.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader33.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv52
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader33, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader33 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ak, align 8, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.al, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader33, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader33 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count55
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !359

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit35, label %.preheader33, !llvm.loop !360

.loopexit35:                                      ; preds = %._crit_edge, %.preheader34, %bb.b, %._crit_edge46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @bscore_calc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sext i32 %i.g to i64
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count106 = zext nneg i32 %i.c to i64
  %wide.trip.count101 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph81.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge.loopexit, label %.lr.ph81.us, !llvm.loop !361

.lr.ph81.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv103 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next104, %.loopexit.us ] ; 3 uses
  %indvars.iv96 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next97, %.loopexit.us ] ; 2 uses
  %.06186.us = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.bh, %.loopexit.us ]
  %.06385.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bj, %.loopexit.us ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph81.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge.us.us ], [ %indvars.iv96, %.lr.ph81.us ] ; 3 uses
  %.179.us.us = phi i64 [ %i.bh, %._crit_edge.us.us ], [ %.06186.us, %.lr.ph81.us ]
  %.16477.us.us = phi i32 [ %i.bj, %._crit_edge.us.us ], [ %.06385.us, %.lr.ph81.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv98
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv98
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.275.us.us = phi i64 [ %i.bh, %bb.b ], [ %.179.us.us, %.lr.ph.us.us ]
  %.26574.us.us = phi i32 [ %i.bj, %bb.b ], [ %.16477.us.us, %.lr.ph.us.us ]
  %.06772.us.us = phi i32 [ %i.x, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.06871.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 6 uses
  %i.t = zext i1 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8     ; 2 uses
  %i.w = icmp eq i8 %i.v, 45                      ; 6 uses
  %i.x = zext i1 %i.w to i32
  %i.y = xor i32 %.06871.us.us, 1                 ; 2 uses
  %i.z = select i1 %i.s, i32 %i.y, i32 0          ; 2 uses
  %i.aa = xor i32 %.06772.us.us, 1                ; 2 uses
  %i.ab = select i1 %i.s, i32 0, i32 %i.y
  %.v.us.us = select i1 %i.w, i32 %i.ab, i32 %i.z
  %i.ac = mul nuw nsw i32 %.v.us.us, %i.aa
  %i.ad = mul nuw nsw i32 %i.z, %.06772.us.us
  %i.ae = select i1 %i.s, i32 0, i32 %.06871.us.us ; 2 uses
  %i.af = mul nuw nsw i32 %i.ae, %i.aa
  %i.ag = select i1 %i.w, i32 %i.af, i32 %i.ad
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  %i.ai = uitofp nneg i32 %i.ah to double
  %i.aj = mul nuw nsw i32 %i.ae, %.06772.us.us
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = select i1 %i.w, double %i.ak, double 0.000000e+00
  %i.am = fadd double %i.al, %i.ai
  %i.an = select i1 %i.s, i32 %.06871.us.us, i32 0
  %i.ao = mul nuw nsw i32 %i.an, %.06772.us.us
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = select i1 %i.w, double 0.000000e+00, double %i.ap
  %i.ar = fadd double %i.aq, %i.am
  %i.as = fptosi double %i.ar to i32
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, %i.h
  %i.av = sitofp i64 %i.au to double
  %i.aw = sitofp i64 %.275.us.us to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double %i.n, double %i.aw)
  %i.ay = fptosi double %i.ax to i64
  %i.az = sext i8 %i.r to i64
  %i.ba = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.az
  %i.bb = sext i8 %i.v to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = sitofp i32 %i.bd to double
  %i.bf = sitofp i64 %i.ay to double
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.be, double %i.n, double %i.bf)
  %i.bh = fptosi double %i.bg to i64              ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.s, %i.w
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.bi = zext i1 %mulbool.us.us to i32
  %i.bj = add nsw i32 %.26574.us.us, %i.bi        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !362

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !363

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bk = sitofp i64 %i.bh to float
  %i.bl = sitofp i32 %i.bj to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.063.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bl, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bk, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.bm = fdiv float %.061.lcssa, %.063.lcssa
  %i.bn = fpext float %i.bm to double
  %i.bo = load i32, ptr @scoremtx, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bo, 0
  %i.bp = uitofp i1 %.not to double
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 4.000000e+02, double %i.bn)
  %i.br = fptrunc double %i.bq to float
  ret float %i.br
}

; Function Attrs: nounwind uwtable
define dso_local void @AllocateTmpSeqs(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !4
  %i.b = add nsw i32 %2, 1                        ; 2 uses
  %i.c = tail call ptr @AllocateCharMtx(i32 noundef %i.a, i32 noundef %i.b) #33
  store ptr %i.c, ptr %0, align 8, !tbaa !77
  %i.d = tail call ptr @AllocateCharVec(i32 noundef %i.b) #33
  store ptr %i.d, ptr %1, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FreeTmpSeqs(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #12 {
bb.a:
  tail call void @FreeCharMtx(ptr noundef %0) #33
  tail call void @free(ptr noundef %1) #33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gappick0(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #24 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.06 = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ]    ; 4 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.d ]    ; 2 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !8      ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 0, label %bb.e
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.a, ptr %.06, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %i.b, %bb.c ], [ %.06, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !364

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %.06, align 1, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gappick(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader58.lr.ph, label %.preheader56

.preheader58.lr.ph:                               ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.preheader58.us.us.preheader, label %._crit_edge

.preheader58.us.us.preheader:                     ; preds = %.preheader58.lr.ph
  %i.f = zext i32 %1 to i64                       ; 6 uses
  %wide.trip.count99 = and i64 %i.b, 2147483647
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %i.g = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i64 %i.g, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod115 = trunc i32 %0 to i1
  %xtraiter117 = and i64 %wide.trip.count, 1
  %i.i = icmp eq i64 %i.g, 0
  %unroll_iter120 = and i64 %wide.trip.count, 2147483646
end_hunk_3
begin_hunk_4_@strins:bb.a
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.u ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 %i.m ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -15
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -31
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !8
  %wide.load34 = load <16 x i8>, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr i8, ptr %next.gep, i64 -15
  %i.z = getelementptr i8, ptr %next.gep, i64 -31
  store <16 x i8> %wide.load, ptr %i.y, align 1, !tbaa !8
  store <16 x i8> %wide.load34, ptr %i.z, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !382

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.r, -8                     ; 3 uses
  %i.ab = sub i64 0, %n.vec36
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = sub i64 0, %index37
  %next.gep38 = getelementptr i8, ptr %i.g, i64 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %next.gep38, i64 %i.m
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -7
  %wide.load39 = load <8 x i8>, ptr %i.af, align 1, !tbaa !8
  %i.ag = getelementptr i8, ptr %next.gep38, i64 -7
  store <8 x i8> %wide.load39, ptr %i.ag, align 1, !tbaa !8
  %index.next40 = add nuw i64 %index37, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !383

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.r, %n.vec36
  br i1 %cmp.n41, label %.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01823.ph = phi ptr [ %i.g, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.018.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.ac, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.bf, %vec.epilog.scalar.ph ] ; 9 uses
  %.018.lcssa44 = ptrtoaddr ptr %.018.lcssa to i64
  %.not2124 = icmp ult ptr %.018.lcssa, %1
  br i1 %.not2124, label %._crit_edge, label %iter.check65

iter.check65:                                     ; preds = %.preheader
  %.018.lcssa46 = ptrtoint ptr %.018.lcssa to i64 ; 2 uses
  %i.ai = add i64 %.018.lcssa46, -1
  %i.aj = add i64 %i.b, -1
  %umin47 = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj)
  %i.ak = sub i64 %.018.lcssa46, %umin47          ; 7 uses
  %min.iters.check48 = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check48, label %.lr.ph27.preheader, label %vector.memcheck43

vector.memcheck43:                                ; preds = %iter.check65
  %i.al = add i64 %i.i, %i.a
  %i.am = sub i64 %.018.lcssa44, %i.al
  %diff.check45 = icmp ugt i64 %i.am, -32
  br i1 %diff.check45, label %.lr.ph27.preheader, label %vector.main.loop.iter.check49

vector.main.loop.iter.check49:                    ; preds = %vector.memcheck43
  %min.iters.check50 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check50, label %vec.epilog.ph69, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check49
  %n.mod.vf52 = and i64 %i.ak, 24
  %n.vec53 = and i64 %i.ak, -32                   ; 4 uses
  %i.an = sub i64 0, %n.vec53                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.an
  %i.ap = getelementptr i8, ptr %.018.lcssa, i64 %i.an
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.aq = sub i64 0, %index55                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.j, i64 %i.aq ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.018.lcssa, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep56, i64 -15
  %i.as = getelementptr i8, ptr %next.gep56, i64 -31
  %wide.load58 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !8
  %wide.load59 = load <16 x i8>, ptr %i.as, align 1, !tbaa !8
  %i.at = getelementptr i8, ptr %next.gep57, i64 -15
  %i.au = getelementptr i8, ptr %next.gep57, i64 -31
  store <16 x i8> %wide.load58, ptr %i.at, align 1, !tbaa !8
  store <16 x i8> %wide.load59, ptr %i.au, align 1, !tbaa !8
  %index.next60 = add nuw i64 %index55, 32        ; 2 uses
  %i.av = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.av, label %middle.block61, label %vector.body54, !llvm.loop !384

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.ak, %n.vec53
  br i1 %cmp.n62, label %._crit_edge, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block61
  %min.epilog.iters.check68 = icmp eq i64 %n.mod.vf52, 0
  br i1 %min.epilog.iters.check68, label %.lr.ph27.preheader, label %vec.epilog.ph69, !prof !382

vec.epilog.ph69:                                  ; preds = %vector.main.loop.iter.check49, %vec.epilog.iter.check67
  %vec.epilog.resume.val63 = phi i64 [ %n.vec53, %vec.epilog.iter.check67 ], [ 0, %vector.main.loop.iter.check49 ]
  %n.vec71 = and i64 %i.ak, -8                    ; 3 uses
  %i.aw = sub i64 0, %n.vec71                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.j, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.018.lcssa, i64 %i.aw
  br label %vec.epilog.vector.body72

vec.epilog.vector.body72:                         ; preds = %vec.epilog.vector.body72, %vec.epilog.ph69
  %index73 = phi i64 [ %vec.epilog.resume.val63, %vec.epilog.ph69 ], [ %index.next77, %vec.epilog.vector.body72 ] ; 2 uses
  %i.az = sub i64 0, %index73                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.j, i64 %i.az
  %next.gep75 = getelementptr i8, ptr %.018.lcssa, i64 %i.az
  %i.ba = getelementptr i8, ptr %next.gep74, i64 -7
  %wide.load76 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !8
  %i.bb = getelementptr i8, ptr %next.gep75, i64 -7
  store <8 x i8> %wide.load76, ptr %i.bb, align 1, !tbaa !8
  %index.next77 = add nuw i64 %index73, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.bc, label %vec.epilog.middle.block78, label %vec.epilog.vector.body72, !llvm.loop !385

vec.epilog.middle.block78:                        ; preds = %vec.epilog.vector.body72
  %cmp.n79 = icmp eq i64 %i.ak, %n.vec71
  br i1 %cmp.n79, label %._crit_edge, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %vector.memcheck43, %iter.check65, %vec.epilog.iter.check67, %vec.epilog.middle.block78
  %.026.ph = phi ptr [ %i.j, %iter.check65 ], [ %i.j, %vector.memcheck43 ], [ %i.ao, %vec.epilog.iter.check67 ], [ %i.ax, %vec.epilog.middle.block78 ]
  %.125.ph = phi ptr [ %.018.lcssa, %iter.check65 ], [ %.018.lcssa, %vector.memcheck43 ], [ %i.ap, %vec.epilog.iter.check67 ], [ %i.ay, %vec.epilog.middle.block78 ]
  br label %.lr.ph27

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.01823 = phi ptr [ %i.bf, %vec.epilog.scalar.ph ], [ %.01823.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.01823, i64 %i.m
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  store i8 %i.be, ptr %.01823, align 1, !tbaa !8
  %i.bf = getelementptr inbounds i8, ptr %.01823, i64 -1 ; 3 uses
  %.not = icmp ult ptr %i.bf, %i.l
  br i1 %.not, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !386

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %.lr.ph27
  %.026 = phi ptr [ %i.bg, %.lr.ph27 ], [ %.026.ph, %.lr.ph27.preheader ] ; 2 uses
  %.125 = phi ptr [ %i.bi, %.lr.ph27 ], [ %.125.ph, %.lr.ph27.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.026, i64 -1
  %i.bh = load i8, ptr %.026, align 1, !tbaa !8
  %i.bi = getelementptr inbounds i8, ptr %.125, i64 -1 ; 2 uses
  store i8 %i.bh, ptr %.125, align 1, !tbaa !8
  %.not21 = icmp ult ptr %i.bi, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph27, !llvm.loop !387

._crit_edge:                                      ; preds = %.lr.ph27, %middle.block61, %vec.epilog.middle.block78, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @isaligned(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !12
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 32
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !388

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #29
  %.not = icmp eq i64 %i.g, %i.d
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @score_calc_for_score(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -2                     ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  %i.h = load i32, ptr @penalty, align 4
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 96), align 16
  %i.j = sub nsw i32 %i.h, %i.i
  %i.k = sitofp i32 %i.j to double                ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count94 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph73.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph73.us, !llvm.loop !389

.lr.ph73.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92, %.loopexit.us ] ; 2 uses
  %indvars.iv85 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next86, %.loopexit.us ] ; 2 uses
  %.05175.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bb, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph73.us
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %._crit_edge.us.us ], [ %indvars.iv85, %.lr.ph73.us ] ; 2 uses
  %.15270.us.us = phi double [ %i.bb, %._crit_edge.us.us ], [ %.05175.us, %.lr.ph73.us ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv87
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.us.us
  %.05062.us.us = phi double [ 0.000000e+00, %.lr.ph.us.us ], [ %.1.us.us, %bb.i ] ; 3 uses
  %.05361.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.bc, %bb.i ] ; 3 uses
  %.05660.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.157.us.us, %bb.i ] ; 3 uses
  %i.p = sext i32 %.05361.us.us to i64            ; 5 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sext i8 %i.r to i64
  %i.u = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = fadd double %.05062.us.us, %i.aa        ; 2 uses
  %i.ac = add nsw i32 %.05660.us.us, 1            ; 3 uses
  %i.ad = icmp eq i8 %i.w, 45
  br i1 %i.ad, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.p, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.next
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %.preheader, label %bb.d, !llvm.loop !390

bb.d:                                             ; preds = %.preheader
  %i.ah = fadd double %i.ab, %i.k                 ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.aj = icmp slt i32 %i.f, %i.ai
  br i1 %i.aj, label %._crit_edge.us.us, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = icmp eq i8 %i.al, 45
  br i1 %i.am, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sext i8 %i.al to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next83
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = icmp eq i8 %i.ar, 45
  br i1 %i.as, label %bb.g, label %bb.h, !llvm.loop !391

bb.h:                                             ; preds = %bb.g
  %i.at = sitofp i32 %i.ap to double
  %i.au = fadd double %.05062.us.us, %i.at
  %i.av = add nsw i32 %.05660.us.us, 1            ; 2 uses
  %i.aw = fadd double %i.au, %i.k                 ; 2 uses
  %i.ax = trunc nsw i64 %indvars.iv82 to i32      ; 2 uses
  %i.ay = icmp slt i32 %i.f, %i.ax
  br i1 %i.ay, label %._crit_edge.us.us, label %bb.i

._crit_edge.us.us:                                ; preds = %bb.i, %bb.h, %bb.d
  %.258.us.us = phi i32 [ %i.ac, %bb.d ], [ %i.av, %bb.h ], [ %.157.us.us, %bb.i ]
  %.2.us.us = phi double [ %i.ah, %bb.d ], [ %i.aw, %bb.h ], [ %.1.us.us, %bb.i ]
  %i.az = sitofp i32 %.258.us.us to double
  %i.ba = fdiv double %.2.us.us, %i.az
  %i.bb = fadd double %.15270.us.us, %i.ba        ; 3 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond90.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !392

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c
  %.157.us.us = phi i32 [ %.05660.us.us, %bb.e ], [ %i.av, %bb.h ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %.3.us.us = phi i32 [ %.05361.us.us, %bb.e ], [ %i.ax, %bb.h ], [ %i.ai, %bb.d ], [ %.05361.us.us, %bb.c ]
  %.1.us.us = phi double [ %.05062.us.us, %bb.e ], [ %i.aw, %bb.h ], [ %i.ah, %bb.d ], [ %i.ab, %bb.c ] ; 2 uses
  %i.bc = add nsw i32 %.3.us.us, 1                ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.c
  br i1 %i.bd, label %bb.b, label %._crit_edge.us.us, !llvm.loop !393

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.051.lcssa = phi double [ 0.000000e+00, %bb.a ], [ +qnan, %.lr.ph ], [ %i.bb, %.loopexit.us ] ; 2 uses
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.29, double noundef %.051.lcssa) #31 ; 0 uses
  %i.bg = sitofp i32 %0 to double                 ; 2 uses
  %i.bh = fadd nnan double %i.bg, -1.000000e+00
  %i.bi = fmul double %i.bh, %i.bg
  %i.bj = fmul double %i.bi, 5.000000e-01
  %i.bk = fdiv double %.051.lcssa, %i.bj
  %i.bl = fadd double %i.bk, 4.000000e+02
  ret double %i.bl
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @floatncpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %.not4 = icmp eq i32 %2, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, 4294967288               ; 4 uses
  %i.e = trunc nuw i64 %n.vec to i32
  %i.f = sub i32 %2, %i.e
  %i.g = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %0, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.j  ; 2 uses
  %next.gep8 = getelementptr i8, ptr %0, i64 %i.j ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !21
  %wide.load9 = load <4 x float>, ptr %i.k, align 4, !tbaa !21
  %i.l = getelementptr i8, ptr %next.gep8, i64 16
  store <4 x float> %wide.load, ptr %next.gep8, align 4, !tbaa !21
  store <4 x float> %wide.load9, ptr %i.l, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %.07.ph = phi i32 [ %2, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 4 uses
  %.026.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 2 uses
  %.035.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 2 uses
  %i.n = add nsw i32 %.07.ph, -1
  %xtraiter = and i32 %.07.ph, 7                  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader12, %.lr.ph.prol
  %.07.prol = phi i32 [ %i.o, %.lr.ph.prol ], [ %.07.ph, %.lr.ph.preheader12 ]
  %.026.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.026.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.035.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.035.ph, %.lr.ph.preheader12 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader12 ]
  %i.o = add nsw i32 %.07.prol, -1                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.026.prol, i64 4 ; 2 uses
  %i.q = load float, ptr %.026.prol, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %.035.prol, i64 4 ; 2 uses
  store float %i.q, ptr %.035.prol, align 4, !tbaa !21
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !395

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader12
  %.07.unr = phi i32 [ %.07.ph, %.lr.ph.preheader12 ], [ %i.o, %.lr.ph.prol ]
  %.026.unr = phi ptr [ %.026.ph, %.lr.ph.preheader12 ], [ %i.p, %.lr.ph.prol ]
  %.035.unr = phi ptr [ %.035.ph, %.lr.ph.preheader12 ], [ %i.r, %.lr.ph.prol ]
  %i.s = icmp ult i32 %i.n, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07 = phi i32 [ %i.ao, %.lr.ph ], [ %.07.unr, %.lr.ph.prol.loopexit ]
  %.026 = phi ptr [ %i.ap, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.035 = phi ptr [ %i.ar, %.lr.ph ], [ %.035.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.026, i64 4
  %i.u = load float, ptr %.026, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.035, i64 4
  store float %i.u, ptr %.035, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %i.x = load float, ptr %i.t, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.035, i64 8
  store float %i.x, ptr %i.v, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %.026, i64 12
  %i.aa = load float, ptr %i.w, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.035, i64 12
  store float %i.aa, ptr %i.y, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.ad = load float, ptr %i.z, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 16
  store float %i.ad, ptr %i.ab, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.026, i64 20
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %.035, i64 20
  store float %i.ag, ptr %i.ae, align 4, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.026, i64 24
  %i.aj = load float, ptr %i.af, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 24
  store float %i.aj, ptr %i.ah, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.026, i64 28
  %i.am = load float, ptr %i.ai, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.035, i64 28
  store float %i.am, ptr %i.ak, align 4, !tbaa !21
  %i.ao = add nsw i32 %.07, -8                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 32
  %i.aq = load float, ptr %i.al, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.035, i64 32
  store float %i.aq, ptr %i.an, align 4, !tbaa !21
  %.not.7 = icmp eq i32 %i.ao, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !396

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @score_calc_a(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count122 = zext nneg i32 %i.c to i64
  %wide.trip.count117 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph97.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge.loopexit, label %.lr.ph97.us, !llvm.loop !397

.lr.ph97.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next120, %.loopexit.us ] ; 3 uses
  %indvars.iv112 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next113, %.loopexit.us ] ; 2 uses
  %.077102.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.be, %.loopexit.us ]
  %.079101.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bg, %.loopexit.us ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv119
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph97.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us.us ], [ %indvars.iv112, %.lr.ph97.us ] ; 3 uses
  %.195.us.us = phi float [ %i.be, %._crit_edge.us.us ], [ %.077102.us, %.lr.ph97.us ]
  %.18093.us.us = phi i32 [ %i.bg, %._crit_edge.us.us ], [ %.079101.us, %.lr.ph97.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv114
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv114
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.291.us.us = phi float [ %i.be, %bb.b ], [ %.195.us.us, %.lr.ph.us.us ]
  %.28190.us.us = phi i32 [ %i.bg, %bb.b ], [ %.18093.us.us, %.lr.ph.us.us ]
  %.08388.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.08487.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 7 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 4 uses
  %i.y = zext i1 %i.x to i32
  %i.z = xor i32 %.08487.us.us, 1                 ; 4 uses
  %i.aa = select i1 %i.t, i32 %i.z, i32 0
  %i.ab = xor i32 %.08388.us.us, 1                ; 3 uses
  %i.ac = select i1 %i.t, i32 0, i32 %.08487.us.us
  %i.ad = select i1 %i.t, i32 %i.z, i32 %.08487.us.us
  %i.ae = select i1 %i.t, i32 0, i32 %i.z
  %.v.us.us = select i1 %i.x, i32 %i.ae, i32 %i.ad
  %i.af = mul nuw nsw i32 %.v.us.us, %i.ab
  %i.ag = mul nuw nsw i32 %i.aa, %.08388.us.us
  %i.ah = select i1 %i.t, i32 %.08487.us.us, i32 0 ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, %i.ab
  %i.aj = add nuw nsw i32 %i.ab, %.08388.us.us
  %i.ak = mul nuw nsw i32 %i.ac, %i.aj
  %i.al = add nuw nsw i32 %i.z, %i.ah
  %i.am = mul nuw nsw i32 %i.al, %.08388.us.us
  %i.an = add nuw nsw i32 %i.ak, %i.ag
  %i.ao = add nuw nsw i32 %i.an, %i.ai
  %i.ap = select i1 %i.x, i32 %i.ao, i32 %i.am
  %i.aq = add nuw nsw i32 %i.ap, %i.af
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fpext nnan ninf float %i.ar to double
  %i.at = fmul nnan double %i.as, 5.000000e-01
  %i.au = fmul double %i.at, %i.h
  %i.av = fpext float %.291.us.us to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.n, double %i.av)
  %i.ax = fptrunc double %i.aw to float
  %i.ay = sext i8 %i.s to i64
  %i.az = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ay
  %i.ba = sext i8 %i.w to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sitofp i32 %i.bc to float
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.q, float %i.ax) ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.t, %i.x
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.bf = zext i1 %mulbool.us.us to i32
  %i.bg = add nsw i32 %.28190.us.us, %i.bf        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !398

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !399

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bh = sitofp i32 %i.bg to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.079.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bh, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.077.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.be, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.bi = fdiv float %.077.lcssa, %.079.lcssa
  %i.bj = fpext float %i.bi to double
  %i.bk = load i32, ptr @scoremtx, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bk, 0
  %i.bl = uitofp i1 %.not to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double 4.000000e+02, double %i.bj)
  %i.bn = fptrunc double %i.bm to float
  ret float %i.bn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @score_calc_s(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count104 = zext nneg i32 %i.c to i64
  %wide.trip.count99 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph79.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge.loopexit, label %.lr.ph79.us, !llvm.loop !400

.lr.ph79.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv101 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next102, %.loopexit.us ] ; 3 uses
  %indvars.iv94 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %.06184.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aw, %.loopexit.us ]
  %.06383.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.ay, %.loopexit.us ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv101
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph79.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge.us.us ], [ %indvars.iv94, %.lr.ph79.us ] ; 3 uses
  %.177.us.us = phi float [ %i.aw, %._crit_edge.us.us ], [ %.06184.us, %.lr.ph79.us ]
  %.16475.us.us = phi i32 [ %i.ay, %._crit_edge.us.us ], [ %.06383.us, %.lr.ph79.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv96
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.273.us.us = phi float [ %i.aw, %bb.b ], [ %.177.us.us, %.lr.ph.us.us ]
  %.26572.us.us = phi i32 [ %i.ay, %bb.b ], [ %.16475.us.us, %.lr.ph.us.us ]
  %.06770.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.06869.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 5 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 4 uses
  %i.y = zext i1 %i.x to i32
  %i.z = xor i32 %.06869.us.us, 1                 ; 3 uses
  %i.aa = xor i32 %.06770.us.us, 1                ; 2 uses
  %i.ab = select i1 %i.t, i32 0, i32 %.06869.us.us
  %i.ac = mul nuw nsw i32 %i.ab, %i.aa
  %i.ad = select i1 %i.t, i32 %i.z, i32 %.06869.us.us
  %i.ae = select i1 %i.t, i32 0, i32 %i.z
  %.v.us.us = select i1 %i.x, i32 %i.ae, i32 %i.ad
  %i.af = mul nuw nsw i32 %.v.us.us, %i.aa
  %i.ag = mul nuw nsw i32 %i.z, %.06770.us.us
  %i.ah = select i1 %i.x, i32 %i.ac, i32 %i.ag
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = uitofp nneg i32 %i.ai to float
  %i.ak = fpext nnan ninf float %i.aj to double
  %i.al = fmul nnan double %i.ak, 5.000000e-01
  %i.am = fmul double %i.al, %i.h
  %i.an = fpext float %.273.us.us to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.n, double %i.an)
  %i.ap = fptrunc double %i.ao to float
  %i.aq = sext i8 %i.s to i64
  %i.ar = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.aq
  %i.as = sext i8 %i.w to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = sitofp i32 %i.au to float
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.q, float %i.ap) ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.t, %i.x
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.ax = zext i1 %mulbool.us.us to i32
  %i.ay = add nsw i32 %.26572.us.us, %i.ax        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !401

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !402

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.az = sitofp i32 %i.ay to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.063.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.az, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aw, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.ba = fdiv float %.061.lcssa, %.063.lcssa
  %i.bb = fadd float %i.ba, 4.000000e+02
  ret float %i.bb
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @score_calc_for_score_s(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add i32 %0, -1
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count97 = zext nneg i32 %i.c to i64
  %wide.trip.count92 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.preheader.lr.ph.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !403

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv94 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %indvars.iv87 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next88, %.loopexit.us ] ; 2 uses
  %.078.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %.05776.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.as, %.loopexit.us ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge.us.us ], [ %indvars.iv87, %.preheader.lr.ph.us ] ; 2 uses
  %.172.us.us = phi float [ %i.aq, %._crit_edge.us.us ], [ %.078.us, %.preheader.lr.ph.us ]
  %.15871.us.us = phi i32 [ %i.as, %._crit_edge.us.us ], [ %.05776.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv89
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.268.us.us = phi float [ %i.aq, %bb.b ], [ %.172.us.us, %.preheader.us.us ]
  %.25967.us.us = phi i32 [ %i.as, %bb.b ], [ %.15871.us.us, %.preheader.us.us ]
  %.06166.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06265.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 5 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 4 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.06265.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.06166.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.06265.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.06265.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.06166.us.us
  %i.ac = select i1 %i.s, i32 %i.x, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fpext nnan ninf float %i.ae to double
  %i.ag = fmul nnan double %i.af, 5.000000e-01
  %i.ah = fpext float %.268.us.us to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.h, double %i.ah)
  %i.aj = fptrunc double %i.ai to float
  %i.ak = sext i8 %i.n to i64
  %i.al = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ak
  %i.am = sext i8 %i.r to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fadd float %i.ap, %i.aj                 ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.o, %i.s
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.ar = zext i1 %mulbool.us.us to i32
  %i.as = add nsw i32 %.25967.us.us, %i.ar        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !404

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !405

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.at = fpext float %i.aq to double
  %i.au = sitofp i32 %i.as to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.057.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.au, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.at, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.av = fdiv double %.0.lcssa, %.057.lcssa
  %i.aw = fadd double %i.av, 4.000000e+02
  ret double %i.aw
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore___(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.a
  %i.d = trunc i64 %.fr to i32
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr @penalty, align 4
  %i.i = sitofp i32 %i.h to double
  br i1 %i.e, label %.lr.ph72.split.us.preheader, label %._crit_edge

.lr.ph72.split.us.preheader:                      ; preds = %.lr.ph72
  %i.j = zext i32 %2 to i64
  %wide.trip.count81 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph72.split.us

.lr.ph72.split.us:                                ; preds = %.lr.ph72.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv78 = phi i64 [ 0, %.lr.ph72.split.us.preheader ], [ %indvars.iv.next79, %..loopexit_crit_edge.us ] ; 3 uses
  %.071.us = phi float [ 0.000000e+00, %.lr.ph72.split.us.preheader ], [ %.2.us, %..loopexit_crit_edge.us ] ; 2 uses
  %i.k = icmp eq i64 %indvars.iv78, %i.j
  br i1 %i.k, label %..loopexit_crit_edge.us, label %.preheader.us

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.166.us = phi float [ %.071.us, %.preheader.us ], [ %i.az, %bb.b ]
  %.05963.us = phi i32 [ 0, %.preheader.us ], [ %i.s, %bb.b ] ; 3 uses
  %.06062.us = phi i32 [ 0, %.preheader.us ], [ %i.o, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 5 uses
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %i.r = icmp eq i8 %i.q, 45                      ; 5 uses
  %i.s = zext i1 %i.r to i32
  %i.t = xor i32 %.06062.us, 1                    ; 3 uses
  %i.u = select i1 %i.n, i32 %i.t, i32 0
  %i.v = xor i32 %.05963.us, 1                    ; 2 uses
  %i.w = select i1 %i.n, i32 0, i32 %.06062.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.n, i32 %i.t, i32 %.06062.us
  %i.z = select i1 %i.n, i32 0, i32 %i.t          ; 2 uses
  %.v.us = select i1 %i.r, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us, %i.v
  %i.ab = mul nuw nsw i32 %i.z, %.05963.us
  %i.ac = select i1 %i.r, i32 0, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.aa, %i.ac
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = mul nuw nsw i32 %i.u, %.05963.us
  %i.ag = uitofp nneg i32 %i.af to double
  %i.ah = select i1 %i.r, double 0.000000e+00, double %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double %i.ae)
  %i.aj = uitofp nneg i32 %i.x to double
  %i.ak = select i1 %i.r, double %i.aj, double 0.000000e+00
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double 2.000000e+00, double %i.ai)
  %i.am = fptosi double %i.al to i32
  %i.an = sitofp i32 %i.am to float
  %i.ao = fpext nnan ninf float %i.an to double
  %i.ap = fmul nnan double %i.ao, 5.000000e-01
  %i.aq = fpext float %.166.us to double
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.i, double %i.aq)
  %i.as = fptrunc double %i.ar to float
  %i.at = sext i8 %i.m to i64
  %i.au = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.at
  %i.av = sext i8 %i.q to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fadd float %i.ay, %i.as                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !406

..loopexit_crit_edge.us:                          ; preds = %bb.b, %.lr.ph72.split.us
  %.2.us = phi float [ %.071.us, %.lr.ph72.split.us ], [ %i.az, %bb.b ] ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge.loopexit, label %.lr.ph72.split.us, !llvm.loop !407

.preheader.us:                                    ; preds = %.lr.ph72.split.us
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv78
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.bd = fpext float %.2.us to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph72, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bd, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph72 ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add i32 %0, -1
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count94 = zext nneg i32 %i.c to i64
  %wide.trip.count89 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.preheader.lr.ph.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !408

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92, %.loopexit.us ] ; 2 uses
  %indvars.iv84 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next85, %.loopexit.us ] ; 2 uses
  %.077.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.us.us ], [ %indvars.iv84, %.preheader.lr.ph.us ] ; 2 uses
  %.171.us.us = phi float [ %i.aq, %._crit_edge.us.us ], [ %.077.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv86
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.267.us.us = phi float [ %i.aq, %bb.b ], [ %.171.us.us, %.preheader.us.us ]
  %.06065.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06164.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 4 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 3 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.06164.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.06065.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.06164.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.06164.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.06065.us.us
  %i.ac = select i1 %i.s, i32 %i.x, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fpext nnan ninf float %i.ae to double
  %i.ag = fmul nnan double %i.af, 5.000000e-01
  %i.ah = fpext float %.267.us.us to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.h, double %i.ah)
  %i.aj = fptrunc double %i.ai to float
  %i.ak = sext i8 %i.n to i64
  %i.al = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ak
  %i.am = sext i8 %i.r to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fadd float %i.ap, %i.aj                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !409

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !410

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.ar = fpext float %i.aq to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ar, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @DSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -2                     ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  %i.h = load i32, ptr @penalty, align 4
  %i.i = sitofp i32 %i.h to double                ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count108 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph84.us

.loopexit.us:                                     ; preds = %._crit_edge75.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph84.us, !llvm.loop !411

.lr.ph84.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv105 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next106, %.loopexit.us ] ; 2 uses
  %indvars.iv100 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 2 uses
  %.05486.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bk, %.loopexit.us ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 4 uses
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %._crit_edge75.us.us, %.lr.ph84.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge75.us.us ], [ %indvars.iv100, %.lr.ph84.us ] ; 2 uses
  %.15581.us.us = phi double [ %i.bk, %._crit_edge75.us.us ], [ %.05486.us, %.lr.ph84.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv102
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph74.us.us
  %.05372.us.us = phi double [ 0.000000e+00, %.lr.ph74.us.us ], [ %.3.us.us, %bb.g ] ; 3 uses
  %.05671.us.us = phi i32 [ 0, %.lr.ph74.us.us ], [ %i.bv, %bb.g ] ; 7 uses
  %i.n = sext i32 %.05671.us.us to i64            ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8     ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sext i8 %i.p to i64
  %i.s = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sitofp i32 %i.x to double
  %i.z = fadd double %.05372.us.us, %i.y          ; 2 uses
  %i.aa = icmp eq i8 %i.u, 45
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ab = fadd double %i.z, %i.i                  ; 2 uses
  %i.ac = add nsw i32 %.05671.us.us, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %.lr.ph.us.us, label %._crit_edge.us.us

._crit_edge.us.us.loopexit:                       ; preds = %.lr.ph.us.us
  %i.ah = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %bb.d
  %.258.lcssa.us.us = phi i32 [ %.05671.us.us, %bb.d ], [ %i.ah, %._crit_edge.us.us.loopexit ] ; 2 uses
  %.2.lcssa.us.us = phi double [ %i.ab, %bb.d ], [ %i.aq, %._crit_edge.us.us.loopexit ] ; 2 uses
  %i.ai = icmp sgt i32 %.258.lcssa.us.us, %i.f
  br i1 %i.ai, label %._crit_edge75.us.us, label %bb.g

.lr.ph.us.us:                                     ; preds = %bb.d, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us.us ], [ %i.ad, %bb.d ] ; 3 uses
  %.263.us.us = phi double [ %i.aq, %.lr.ph.us.us ], [ %i.ab, %bb.d ]
  %i.aj = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = sext i8 %i.ak to i64
  %i.am = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 180
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fadd double %.263.us.us, %i.ap          ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = icmp eq i8 %i.as, 45
  br i1 %i.at, label %.lr.ph.us.us, label %._crit_edge.us.us.loopexit, !llvm.loop !412

bb.e:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8   ; 2 uses
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sext i8 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fadd double %.05372.us.us, %i.ba
  %i.bc = fadd double %i.bb, %i.i                 ; 2 uses
  %i.bd = add nsw i32 %.05671.us.us, 1
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.k, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = icmp eq i8 %i.bg, 45
  br i1 %i.bh, label %.lr.ph67.us.us, label %._crit_edge68.us.us

._crit_edge68.us.us.loopexit:                     ; preds = %.lr.ph67.us.us
  %i.bi = trunc nsw i64 %indvars.iv97 to i32
  br label %._crit_edge68.us.us

._crit_edge68.us.us:                              ; preds = %._crit_edge68.us.us.loopexit, %bb.f
  %.157.lcssa.us.us = phi i32 [ %.05671.us.us, %bb.f ], [ %i.bi, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %.1.lcssa.us.us = phi double [ %i.bc, %bb.f ], [ %i.br, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %i.bj = icmp sgt i32 %.157.lcssa.us.us, %i.f
  br i1 %i.bj, label %._crit_edge75.us.us, label %bb.g

._crit_edge75.us.us:                              ; preds = %bb.g, %._crit_edge68.us.us, %._crit_edge.us.us
  %.4.us.us = phi double [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.3.us.us, %bb.g ]
  %i.bk = fadd double %.15581.us.us, %.4.us.us    ; 3 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph74.us.us, !llvm.loop !413

.lr.ph67.us.us:                                   ; preds = %bb.f, %.lr.ph67.us.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph67.us.us ], [ %i.be, %bb.f ] ; 3 uses
  %.165.us.us = phi double [ %i.br, %.lr.ph67.us.us ], [ %i.bc, %bb.f ]
  %i.bl = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv97
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = sitofp i32 %i.bp to double
  %i.br = fadd double %.165.us.us, %i.bq          ; 2 uses
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next98
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = icmp eq i8 %i.bt, 45
  br i1 %i.bu, label %.lr.ph67.us.us, label %._crit_edge68.us.us.loopexit, !llvm.loop !414

bb.g:                                             ; preds = %._crit_edge68.us.us, %bb.e, %._crit_edge.us.us, %bb.c
  %.359.us.us = phi i32 [ %.05671.us.us, %bb.e ], [ %.157.lcssa.us.us, %._crit_edge68.us.us ], [ %.258.lcssa.us.us, %._crit_edge.us.us ], [ %.05671.us.us, %bb.c ]
  %.3.us.us = phi double [ %.05372.us.us, %bb.e ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %i.z, %bb.c ] ; 2 uses
  %i.bv = add nsw i32 %.359.us.us, 1              ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.c
  br i1 %i.bw, label %bb.b, label %._crit_edge75.us.us, !llvm.loop !415

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.054.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph ], [ %i.bk, %.loopexit.us ]
  ret double %.054.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @searchAnchors(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = load i32, ptr @searchAnchors.alloclen, align 4, !tbaa !4 ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @searchAnchors.stra, align 8, !tbaa !52
  tail call void @FreeDoubleVec(ptr noundef %i.f) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr @divThreshold, align 4, !tbaa !4
  %i.h = sitofp i32 %i.g to double
  %i.i = fdiv nnan double %i.h, 1.000000e+02
  %i.j = fmul nnan double %i.i, 6.000000e+02
  %i.k = load i32, ptr @divWinSize, align 4, !tbaa !4
  %i.l = sitofp i32 %i.k to double
  %i.m = fmul double %i.j, %i.l
  store double %i.m, ptr @searchAnchors.threshold, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call ptr @AllocateDoubleVec(i32 noundef %i.c) #33
  store ptr %i.n, ptr @searchAnchors.stra, align 8, !tbaa !52
  store i32 %i.c, ptr @searchAnchors.alloclen, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.o = icmp sgt i32 %i.c, 0
  br i1 %i.o, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.f
end_hunk_4
