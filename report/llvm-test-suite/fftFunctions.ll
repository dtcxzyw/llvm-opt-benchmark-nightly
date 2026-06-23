inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@alignableReagion:bb.a
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !11
  %i.gc = fadd double %.0144206, %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv260
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !11
  %i.gg = fadd double %i.gc, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv260
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !11
  %i.gk = fadd double %i.gg, %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv260
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !11
  %i.go = fadd double %i.gk, %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv260
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !11
  %i.gs = fadd double %i.go, %i.gr
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv260
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !11
  %i.gw = fadd double %i.gs, %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv260
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !11
  %i.ha = fadd double %i.gw, %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv260
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !11
  %i.he = fadd double %i.ha, %i.hd                ; 3 uses
  %indvars.iv.next261.7 = add nuw nsw i64 %indvars.iv260, 8 ; 2 uses
  %niter322.next.7 = add i64 %niter322, 8         ; 2 uses
  %niter322.ncmp.7 = icmp eq i64 %niter322.next.7, %unroll_iter321
  br i1 %niter322.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %bb.r, !llvm.loop !69

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %bb.y
  %i.hf = phi i32 [ %i.fr, %.lr.ph217.preheader ], [ %i.io, %bb.y ] ; 4 uses
  %i.hg = phi double [ %.pre271, %.lr.ph217.preheader ], [ %i.ip, %bb.y ] ; 4 uses
  %i.hh = phi ptr [ %.pre269, %.lr.ph217.preheader ], [ %i.iq, %bb.y ] ; 4 uses
  %indvars.iv265 = phi i64 [ 1, %.lr.ph217.preheader ], [ %indvars.iv.next266, %bb.y ] ; 3 uses
  %.0126216 = phi double [ 0.000000e+00, %.lr.ph217.preheader ], [ %.3, %bb.y ] ; 2 uses
  %.0130215 = phi i32 [ 0, %.lr.ph217.preheader ], [ %.3133, %bb.y ] ; 2 uses
  %.0134214 = phi ptr [ %6, %.lr.ph217.preheader ], [ %.2136, %bb.y ] ; 9 uses
  %.0140212 = phi i32 [ 0, %.lr.ph217.preheader ], [ %.2142, %bb.y ] ; 3 uses
  %.1145211 = phi double [ %.0144.lcssa, %.lr.ph217.preheader ], [ %i.hs, %bb.y ]
  %.0146210 = phi i32 [ 0, %.lr.ph217.preheader ], [ %.3149, %bb.y ] ; 2 uses
  %.0150209 = phi i32 [ 0, %.lr.ph217.preheader ], [ %.3153, %bb.y ] ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hh, i64 %indvars.iv265
  %i.hj = getelementptr i8, ptr %i.hi, i64 -8
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !11
  %i.hl = fsub double %.1145211, %i.hk
  %i.hm = trunc nuw nsw i64 %indvars.iv265 to i32 ; 6 uses
  %i.hn = add nsw i32 %i.hf, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr [8 x i8], ptr %i.hh, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 -8
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !11
  %i.hs = fadd double %i.hl, %i.hr                ; 4 uses
  %i.ht = fcmp ogt double %i.hs, %i.hg
  br i1 %i.ht, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph217
  %.not169 = icmp eq i32 %.0150209, 0             ; 3 uses
  %.1147 = select i1 %.not169, i32 %i.hm, i32 %.0146210
  %.1127 = select i1 %.not169, double 0.000000e+00, double %.0126216
  %i.hu = add nsw i32 %.0130215, 1
  %i.hv = select i1 %.not169, i32 1, i32 %i.hu
  %i.hw = fadd double %.1127, %i.hs
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph217
  %.2152 = phi i32 [ 1, %bb.s ], [ %.0150209, %.lr.ph217 ] ; 2 uses
  %.2148 = phi i32 [ %.1147, %bb.s ], [ %.0146210, %.lr.ph217 ] ; 3 uses
  %.2132 = phi i32 [ %i.hv, %bb.s ], [ %.0130215, %.lr.ph217 ] ; 3 uses
  %.2 = phi double [ %i.hw, %bb.s ], [ %.0126216, %.lr.ph217 ] ; 2 uses
  %i.hx = fcmp ole double %i.hs, %i.hg
  %i.hy = icmp sgt i32 %.2132, 150                ; 2 uses
  %or.cond = select i1 %i.hx, i1 true, i1 %i.hy
  %i.hz = icmp ne i32 %.2152, 0
  %or.cond3 = select i1 %or.cond, i1 %i.hz, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ia = icmp sgt i32 %.2132, %i.hf
  br i1 %i.ia, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %.2148, ptr %.0134214, align 8, !tbaa !70
  %i.ib = getelementptr inbounds nuw i8, ptr %.0134214, i64 4
  store i32 %i.hm, ptr %i.ib, align 4, !tbaa !71
  %i.ic = add nsw i32 %.2148, %i.hm
  %i.id = load i32, ptr @fftWinSize, align 4, !tbaa !4 ; 2 uses
  %i.ie = add nsw i32 %i.ic, %i.id
  %i.if = sdiv i32 %i.ie, 2
  %i.ig = getelementptr inbounds nuw i8, ptr %.0134214, i64 8
  store i32 %i.if, ptr %i.ig, align 8, !tbaa !72
  %i.ih = getelementptr inbounds nuw i8, ptr %.0134214, i64 16
  store double %.2, ptr %i.ih, align 8, !tbaa !73
  %spec.select = zext i1 %i.hy to i32             ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0134214, i64 24
  store i32 %spec.select, ptr %i.ii, align 8, !tbaa !64
  %i.ij = getelementptr inbounds nuw i8, ptr %.0134214, i64 76
  store i32 %spec.select, ptr %i.ij, align 4, !tbaa !67
  %i.ik = add nsw i32 %.0140212, 1
  %i.il = getelementptr inbounds nuw i8, ptr %.0134214, i64 48
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.im = phi i32 [ %i.id, %bb.v ], [ %i.hf, %bb.u ]
  %.1141 = phi i32 [ %i.ik, %bb.v ], [ %.0140212, %bb.u ] ; 3 uses
  %.1135 = phi ptr [ %i.il, %bb.v ], [ %.0134214, %bb.u ] ; 2 uses
  %i.in = icmp sgt i32 %.1141, 99997
  br i1 %i.in, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @ErrorExit(ptr noundef nonnull @.str.7) #25
  %.pre = load ptr, ptr @alignableReagion.stra, align 8, !tbaa !52
  %.pre270 = load double, ptr @alignableReagion.threshold, align 8, !tbaa !11
  %.pre272 = load i32, ptr @fftWinSize, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.x
  %i.io = phi i32 [ %.pre272, %bb.x ], [ %i.im, %bb.w ], [ %i.hf, %bb.t ] ; 3 uses
  %i.ip = phi double [ %.pre270, %bb.x ], [ %i.hg, %bb.w ], [ %i.hg, %bb.t ]
  %i.iq = phi ptr [ %.pre, %bb.x ], [ %i.hh, %bb.w ], [ %i.hh, %bb.t ]
  %.3153 = phi i32 [ 0, %bb.x ], [ 0, %bb.w ], [ %.2152, %bb.t ] ; 2 uses
  %.3149 = phi i32 [ %i.hm, %bb.x ], [ %i.hm, %bb.w ], [ %.2148, %bb.t ] ; 3 uses
  %.2142 = phi i32 [ %.1141, %bb.x ], [ %.1141, %bb.w ], [ %.0140212, %bb.t ] ; 3 uses
  %.2136 = phi ptr [ %.1135, %bb.x ], [ %.1135, %bb.w ], [ %.0134214, %bb.t ] ; 5 uses
  %.3133 = phi i32 [ 0, %bb.x ], [ 0, %bb.w ], [ %.2132, %bb.t ] ; 2 uses
  %.3 = phi double [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %bb.w ], [ %.2, %bb.t ] ; 2 uses
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 3 uses
  %i.ir = sub nsw i32 %i.e, %i.io
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp slt i64 %indvars.iv.next266, %i.is
  br i1 %i.it, label %.lr.ph217, label %._crit_edge218, !llvm.loop !74

._crit_edge218:                                   ; preds = %bb.y
  %i.iu = icmp ne i32 %.3153, 0
  %i.iv = icmp sgt i32 %.3133, %i.io
  %or.cond172 = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %or.cond172, label %bb.z, label %._crit_edge218.thread

bb.z:                                             ; preds = %._crit_edge218
  %i.iw = trunc nuw nsw i64 %indvars.iv.next266 to i32 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.2136, i64 4
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !71
  store i32 %.3149, ptr %.2136, align 8, !tbaa !70
  %i.iy = add nsw i32 %.3149, %i.iw
  %i.iz = load i32, ptr @fftWinSize, align 4, !tbaa !4
  %i.ja = add nsw i32 %i.iy, %i.iz
  %i.jb = sdiv i32 %i.ja, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %.2136, i64 8
  store i32 %i.jb, ptr %i.jc, align 8, !tbaa !72
  %i.jd = getelementptr inbounds nuw i8, ptr %.2136, i64 16
  store double %.3, ptr %i.jd, align 8, !tbaa !73
  %i.je = add nsw i32 %.2142, 1
  br label %._crit_edge218.thread

._crit_edge218.thread:                            ; preds = %.preheader, %bb.z, %._crit_edge218
  %.3143 = phi i32 [ %i.je, %bb.z ], [ %.2142, %._crit_edge218 ], [ 0, %.preheader ]
  ret i32 %.3143
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare void @FreeDoubleVec(ptr noundef) local_unnamed_addr #9

declare ptr @AllocateDoubleVec(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @blockAlign(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @blockAlign.crossscore, align 8, !tbaa !75
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @AllocateDoubleMtx(i32 noundef 100000, i32 noundef 100000) #25
  store ptr %i.c, ptr @blockAlign.crossscore, align 8, !tbaa !75
  %i.d = tail call ptr @AllocateIntMtx(i32 noundef 100000, i32 noundef 100000) #25
  store ptr %i.d, ptr @blockAlign.track, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr %3, align 4, !tbaa !4      ; 8 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader146.lr.ph, label %._crit_edge169

.preheader146.lr.ph:                              ; preds = %bb.c
  %i.g = load ptr, ptr @blockAlign.crossscore, align 8
  %wide.trip.count188 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %n.vec = and i64 %wide.trip.count188, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count188
  %xtraiter = and i64 %wide.trip.count188, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader146.us

.preheader146.us:                                 ; preds = %._crit_edge.us, %.preheader146.lr.ph
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %._crit_edge.us ], [ 0, %.preheader146.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv185
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv185
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 7 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = ptrtoaddr ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond256 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond256, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader146.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader146.us ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !11
  %wide.load253 = load <2 x double>, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> %wide.load, ptr %i.q, align 8, !tbaa !11
  store <2 x double> %wide.load253, ptr %i.r, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader146.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader146.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.prol
  store double %i.u, ptr %i.v, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.ph, %wide.trip.count188
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.z, ptr %i.aa, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store double %i.ac, ptr %i.ad, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.af = load double, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.1
  store double %i.af, ptr %i.ag, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.2
  store double %i.ai, ptr %i.aj, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count188
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !81

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.preheader143, label %.preheader146.us, !llvm.loop !82

.preheader143:                                    ; preds = %._crit_edge.us
  %i.ak = zext nneg i32 %i.e to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @blockAlign.ocut1, ptr align 4 %0, i64 %i.al, i1 false), !tbaa !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @blockAlign.ocut2, ptr align 4 %1, i64 %i.al, i1 false), !tbaa !4
  %i.am = zext nneg i32 %i.e to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @blockAlign.max, i8 0, i64 %i.an, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @blockAlign.point, i8 0, i64 %i.an, i1 false), !tbaa !11
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %.preheader.preheader, label %.lr.ph158.split.preheader

.lr.ph158.split.preheader:                        ; preds = %.preheader143
  %i.ao = load ptr, ptr @blockAlign.crossscore, align 8 ; 2 uses
  %i.ap = load ptr, ptr @blockAlign.track, align 8
  br label %.lr.ph158.split

.preheader142:                                    ; preds = %._crit_edge
  %i.aq = icmp sgt i32 %i.co, 0
  br i1 %i.aq, label %.preheader.preheader, label %._crit_edge169

.preheader.preheader:                             ; preds = %.preheader143, %.preheader142
  %.ph = phi i32 [ 1, %.preheader143 ], [ %i.co, %.preheader142 ]
  br label %.preheader

.lr.ph158.split:                                  ; preds = %.lr.ph158.split.preheader, %._crit_edge
  %i.ar = phi i32 [ %i.e, %.lr.ph158.split.preheader ], [ %i.co, %._crit_edge ] ; 3 uses
  %indvars.iv199 = phi i64 [ 1, %.lr.ph158.split.preheader ], [ %indvars.iv.next200, %._crit_edge ] ; 5 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph154, label %.lr.ph158.split.._crit_edge_crit_edge

.lr.ph158.split.._crit_edge_crit_edge:            ; preds = %.lr.ph158.split
  %.pre218 = sext i32 %i.ar to i64
  br label %._crit_edge

.lr.ph154:                                        ; preds = %.lr.ph158.split
  %i.at = add nsw i64 %indvars.iv199, -1          ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv199
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.ay = trunc nuw nsw i64 %indvars.iv199 to i32
  %i.az = uitofp nneg i32 %i.ay to double
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv199
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bc = trunc nuw nsw i64 %i.at to i32
  %i.bd = uitofp nneg i32 %i.bc to double
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph154, %bb.j
  %indvars.iv196 = phi i64 [ 1, %.lr.ph154 ], [ %indvars.iv.next197, %bb.j ] ; 8 uses
  %i.be = phi double [ 0.000000e+00, %.lr.ph154 ], [ %i.ci, %bb.j ] ; 3 uses
  %i.bf = phi double [ 0.000000e+00, %.lr.ph154 ], [ %i.ch, %bb.j ] ; 2 uses
  %i.bg = add nsw i64 %indvars.iv196, -1          ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bg ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv196 ; 3 uses
  store i32 0, ptr %i.bj, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @blockAlign.max, i64 %indvars.iv196 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bm = load i32, ptr @penalty, align 4, !tbaa !4
  %i.bn = sitofp i32 %i.bm to double              ; 2 uses
  %i.bo = fadd double %i.bl, %i.bn                ; 2 uses
  %i.bp = fcmp olt double %i.bi, %i.bo
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @blockAlign.point, i64 %indvars.iv196
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  %i.bs = fsub double %i.br, %i.az
  %i.bt = fptosi double %i.bs to i32
  store i32 %i.bt, ptr %i.bj, align 4, !tbaa !4
  %.pre = load i32, ptr @penalty, align 4, !tbaa !4
  %.pre215.a = sitofp i32 %.pre to double
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi216 = phi double [ %.pre215.a, %bb.e ], [ %i.bn, %bb.d ]
  %.0 = phi double [ %i.bo, %bb.e ], [ %i.bi, %bb.d ] ; 2 uses
  %i.bu = fadd double %i.be, %.pre-phi216         ; 2 uses
  %i.bv = fcmp olt double %.0, %i.bu
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = trunc nuw nsw i64 %indvars.iv196 to i32
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = fsub double %i.bx, %i.bf
  %i.bz = fptosi double %i.by to i32
  store i32 %i.bz, ptr %i.bj, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi double [ %i.bu, %bb.g ], [ %.0, %bb.f ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv196 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = fadd double %.1, %i.cb
  store double %i.cc, ptr %i.ca, align 8, !tbaa !11
  %i.cd = load double, ptr %i.bh, align 8, !tbaa !11 ; 4 uses
  %i.ce = fcmp olt double %i.be, %i.cd            ; 2 uses
  %i.cf = trunc nuw nsw i64 %i.bg to i32
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = select i1 %i.ce, double %i.cg, double %i.bf
  %i.ci = select i1 %i.ce, double %i.cd, double %i.be
  %i.cj = fcmp olt double %i.bl, %i.cd
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.cd, ptr %i.bk, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @blockAlign.point, i64 %indvars.iv196
  store double %i.bd, ptr %i.ck, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.cl = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = icmp slt i64 %indvars.iv.next197, %i.cm
  br i1 %i.cn, label %bb.d, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.j, %.lr.ph158.split.._crit_edge_crit_edge
end_hunk_0
begin_hunk_1_@blockAlign:bb.a
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result2, i64 %i.di
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 5 uses
  %i.dn = icmp eq i32 %i.dk, 0
  %i.do = icmp eq i32 %i.dm, 0
  %or.cond = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dp = sext i32 %i.dk to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !83
  %i.ds = sext i32 %i.dm to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4  ; 4 uses
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = add nsw i32 %.4171, -1                  ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64              ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result1, i64 %i.dx ; 3 uses
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dz = add nsw i32 %i.dk, -1
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !4
  %i.ea = add nsw i32 %i.dm, -1
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result2, i64 %i.dx
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !4
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ec = icmp sgt i32 %i.du, 0
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result2, i64 %i.dx ; 2 uses
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ee = add nsw i32 %i.dk, -1
  store i32 %i.ee, ptr %i.dy, align 4, !tbaa !4
  %i.ef = sub nsw i32 %i.dm, %i.du
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.eg = add nsw i32 %i.du, %i.dk
  store i32 %i.eg, ptr %i.dy, align 4, !tbaa !4
  %i.eh = add nsw i32 %i.dm, -1
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.ei = icmp samesign ugt i32 %.4171, 1
  br i1 %i.ei, label %bb.k, label %.lr.ph175.preheader, !llvm.loop !90

bb.r:                                             ; preds = %bb.k
  %i.ej = icmp slt i32 %.4171, 100000
  br i1 %i.ej, label %.lr.ph175.preheader, label %._crit_edge176

.lr.ph175.preheader:                              ; preds = %bb.q, %bb.r
  %.4.lcssa238 = phi i32 [ %.4171, %bb.r ], [ 0, %bb.q ]
  %i.ek = zext nneg i32 %.4.lcssa238 to i64
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %bb.x
  %indvars.iv208 = phi i64 [ %i.ek, %.lr.ph175.preheader ], [ %indvars.iv.next209, %bb.x ] ; 4 uses
  %.0123173 = phi i32 [ 0, %.lr.ph175.preheader ], [ %.2, %bb.x ] ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result1, i64 %indvars.iv208
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4  ; 2 uses
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !52
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result2, i64 %indvars.iv208
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4  ; 2 uses
  %i.es = sext i32 %i.er to i64                   ; 3 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !11 ; 2 uses
  %i.ev = fcmp oeq double %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.x, label %bb.s

bb.s:                                             ; preds = %.lr.ph175
  %i.ew = add nsw i64 %indvars.iv208, -1          ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr @blockAlign.result1, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4  ; 2 uses
  %i.ez = icmp eq i32 %i.em, %i.ey
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr @blockAlign.result2, i64 %i.ew
  %.pre213 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4 ; 2 uses
  br i1 %i.ez, label %._crit_edge212, label %bb.t

._crit_edge212:                                   ; preds = %bb.s
  %.pre214 = sext i32 %.pre213 to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fa = icmp eq i32 %i.er, %.pre213
  br i1 %i.fa, label %bb.u, label %bb.w

bb.u:                                             ; preds = %._crit_edge212, %bb.t
  %.pre-phi = phi i64 [ %.pre214, %._crit_edge212 ], [ %i.es, %bb.t ]
  %i.fb = sext i32 %i.ey to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !52
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %.pre-phi
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !11
  %i.fg = fcmp ogt double %i.eu, %i.ff
  br i1 %i.fg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fh = add nsw i32 %.0123173, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.1124 = phi i32 [ %i.fh, %bb.v ], [ %.0123173, %bb.u ], [ %.0123173, %bb.t ] ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr @blockAlign.ocut1, i64 %i.en
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %i.fk = sext i32 %.1124 to i64                  ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fk
  store i32 %i.fj, ptr %i.fl, align 4, !tbaa !4
  %i.fm = getelementptr inbounds [4 x i8], ptr @blockAlign.ocut2, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fk
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !4
  %i.fp = add nsw i32 %.1124, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph175, %bb.w
  %.2 = phi i32 [ %.0123173, %.lr.ph175 ], [ %i.fp, %bb.w ] ; 2 uses
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next209, 100000
  br i1 %exitcond211.not, label %._crit_edge176, label %.lr.ph175, !llvm.loop !91

._crit_edge176:                                   ; preds = %bb.x, %bb.r
  %.0123.lcssa = phi i32 [ 0, %bb.r ], [ %.2, %bb.x ]
  store i32 %.0123.lcssa, ptr %3, align 4, !tbaa !4
  ret void
}

declare ptr @AllocateDoubleMtx(i32 noundef, i32 noundef) local_unnamed_addr #9

declare ptr @AllocateIntMtx(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @blockAlign2(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @blockAlign2.crossscoresize, align 4, !tbaa !4
  %i.b = load i32, ptr %5, align 4, !tbaa !4      ; 2 uses
  %i.c = add nsw i32 %i.b, 2                      ; 3 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr @blockAlign2.crossscoresize, align 4, !tbaa !4
  %i.e = load i32, ptr @fftkeika, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.10, i32 noundef %i.c) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @blockAlign2.track, align 8, !tbaa !77 ; 2 uses
  %.not154 = icmp eq ptr %i.h, null
  br i1 %.not154, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @FreeIntMtx(ptr noundef nonnull %i.h) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr @blockAlign2.crossscore, align 8, !tbaa !75 ; 2 uses
  %.not155 = icmp eq ptr %i.i, null
  br i1 %.not155, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @FreeDoubleMtx(ptr noundef nonnull %i.i) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = load i32, ptr @blockAlign2.crossscoresize, align 4, !tbaa !4 ; 2 uses
  %i.k = tail call ptr @AllocateIntMtx(i32 noundef %i.j, i32 noundef %i.j) #25
  store ptr %i.k, ptr @blockAlign2.track, align 8, !tbaa !77
  %i.l = load i32, ptr @blockAlign2.crossscoresize, align 4, !tbaa !4 ; 2 uses
  %i.m = tail call ptr @AllocateDoubleMtx(i32 noundef %i.l, i32 noundef %i.l) #25
  store ptr %i.m, ptr @blockAlign2.crossscore, align 8, !tbaa !75
  %.pre = load i32, ptr %5, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.n = phi i32 [ %.pre, %bb.h ], [ %i.b, %bb.a ] ; 7 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.preheader162.lr.ph, label %.preheader160.thread

.preheader162.lr.ph:                              ; preds = %bb.i
  %i.p = load ptr, ptr @blockAlign2.crossscore, align 8
  %wide.trip.count233 = zext nneg i32 %i.n to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.n, 4
  %n.vec = and i64 %wide.trip.count233, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count233
  %xtraiter = and i64 %wide.trip.count233, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader162.us

.preheader162.us:                                 ; preds = %._crit_edge.us, %.preheader162.lr.ph
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %._crit_edge.us ], [ 0, %.preheader162.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv230
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv230
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = ptrtoaddr ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond326 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond326, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader162.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader162.us ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x double>, ptr %i.x, align 8, !tbaa !11
  %wide.load323 = load <2 x double>, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> %wide.load, ptr %i.z, align 8, !tbaa !11
  store <2 x double> %wide.load323, ptr %i.aa, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader162.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader162.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.prol
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.prol
  store double %i.ad, ptr %i.ae, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !93

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv.ph, %wide.trip.count233
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store double %i.ai, ptr %i.aj, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.al = load double, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  store double %i.al, ptr %i.am, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.1
  %i.ao = load double, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.1
  store double %i.ao, ptr %i.ap, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.2
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.2
  store double %i.ar, ptr %i.as, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count233
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !94

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %.preheader160, label %.preheader162.us, !llvm.loop !95

.preheader160.thread:                             ; preds = %bb.i
  %.pre276299 = load ptr, ptr @blockAlign2.track, align 8
  br label %._crit_edge208

.preheader160:                                    ; preds = %._crit_edge.us
  %i.at = zext nneg i32 %i.n to i64
  %i.au = shl nuw nsw i64 %i.at, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @blockAlign2.ocut1, ptr align 4 %0, i64 %i.au, i1 false), !tbaa !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @blockAlign2.ocut2, ptr align 4 %1, i64 %i.au, i1 false), !tbaa !4
  %.not313 = icmp eq i32 %i.n, 1
  %.pre276 = load ptr, ptr @blockAlign2.track, align 8 ; 3 uses
  br i1 %.not313, label %._crit_edge208, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader160
  %i.av = load ptr, ptr @blockAlign2.crossscore, align 8 ; 5 uses
  %blockAlign2.maxj.promoted = load double, ptr @blockAlign2.maxj, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.m
  %i.aw = phi i32 [ %i.n, %.preheader.preheader ], [ %i.em, %bb.m ] ; 4 uses
  %indvars.iv267 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next268, %bb.m ] ; 6 uses
  %indvars.iv254 = phi i32 [ -1, %.preheader.preheader ], [ %indvars.iv.next255, %bb.m ] ; 4 uses
  %.lcssa199205206 = phi double [ %blockAlign2.maxj.promoted, %.preheader.preheader ], [ %.lcssa199204, %bb.m ] ; 2 uses
  %i.ax = zext i32 %indvars.iv254 to i64          ; 2 uses
  %i.ay = icmp sgt i32 %i.aw, 1
  br i1 %i.ay, label %.lr.ph192, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre281 = sext i32 %i.aw to i64
  br label %bb.m

.lr.ph192:                                        ; preds = %.preheader
  %i.az = getelementptr [8 x i8], ptr %i.av, i64 %indvars.iv267 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = icmp samesign ugt i64 %indvars.iv267, 2
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.pre276, i64 %indvars.iv267
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bg = trunc nuw nsw i64 %indvars.iv267 to i32
  %xtraiter339 = and i64 %i.ax, 1
  %i.bh = icmp eq i32 %indvars.iv254, 1
  %unroll_iter346 = and i64 %i.ax, 4294967294
  %lcmp.mod342.not = icmp eq i64 %xtraiter339, 0
  %lcmp.mod345 = trunc i32 %indvars.iv254 to i1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph192, %._crit_edge172
  %indvars.iv264 = phi i64 [ 1, %.lr.ph192 ], [ %indvars.iv.next265, %._crit_edge172 ] ; 11 uses
  %indvars.iv241 = phi i32 [ -1, %.lr.ph192 ], [ %indvars.iv.next242, %._crit_edge172 ] ; 4 uses
  %i.bi = phi i32 [ %i.aw, %.lr.ph192 ], [ %i.ej, %._crit_edge172 ] ; 2 uses
  %i.bj = phi double [ %.lcssa199205206, %.lr.ph192 ], [ %i.dw, %._crit_edge172 ] ; 4 uses
  %i.bk = zext i32 %indvars.iv241 to i64          ; 2 uses
  %i.bl = icmp samesign ugt i64 %indvars.iv264, 2
  br i1 %i.bl, label %.lr.ph168, label %._crit_edge

.lr.ph168:                                        ; preds = %bb.j
  %i.bm = add nsw i32 %i.bi, -1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv264, %i.bn
  %.fr = freeze i1 %i.bo
  br i1 %.fr, label %bb.k, label %.lr.ph168.split.preheader

.lr.ph168.split.preheader:                        ; preds = %.lr.ph168
  %xtraiter334 = and i64 %i.bk, 1
  %i.bp = icmp eq i32 %indvars.iv241, 1
  br i1 %i.bp, label %.lr.ph168.split.epil.preheader, label %.lr.ph168.split.preheader.new

.lr.ph168.split.preheader.new:                    ; preds = %.lr.ph168.split.preheader
  %unroll_iter = and i64 %i.bk, 4294967294
  br label %.lr.ph168.split

bb.k:                                             ; preds = %.lr.ph168
  %i.bq = load double, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.br = fcmp ogt double %i.bq, %i.bj
  %i.bs = select i1 %i.br, double %i.bq, double 0.000000e+00
  br label %._crit_edge

.lr.ph168.split:                                  ; preds = %.lr.ph168.split, %.lr.ph168.split.preheader.new
  %indvars.iv238 = phi i64 [ 0, %.lr.ph168.split.preheader.new ], [ %indvars.iv.next239.1, %.lr.ph168.split ] ; 4 uses
  %i.bt = phi double [ 0.000000e+00, %.lr.ph168.split.preheader.new ], [ %i.cc, %.lr.ph168.split ]
  %.0140167.us177 = phi i32 [ 0, %.lr.ph168.split.preheader.new ], [ %.0140167.us176.1, %.lr.ph168.split ]
  %niter = phi i64 [ 0, %.lr.ph168.split.preheader.new ], [ %niter.next.1, %.lr.ph168.split ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv238
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %i.bw = fcmp ogt double %i.bv, %i.bj            ; 2 uses
  %i.bx = select i1 %i.bw, double %i.bv, double %i.bt
  %i.by = trunc nuw nsw i64 %indvars.iv238 to i32
  %.0140167.us176 = select i1 %i.bw, i32 %i.by, i32 %.0140167.us177
  %indvars.iv.next239 = or disjoint i64 %indvars.iv238, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next239
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !11 ; 2 uses
  %i.cb = fcmp ogt double %i.ca, %i.bj            ; 2 uses
  %i.cc = select i1 %i.cb, double %i.ca, double %i.bx ; 3 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv.next239 to i32
  %.0140167.us176.1 = select i1 %i.cb, i32 %i.cd, i32 %.0140167.us176 ; 3 uses
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph168.split, !llvm.loop !96

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph168.split
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %._crit_edge, label %.lr.ph168.split.epil.preheader

.lr.ph168.split.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph168.split.preheader
  %indvars.iv238.epil.init = phi i64 [ 0, %.lr.ph168.split.preheader ], [ %indvars.iv.next239.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph168.split.preheader ], [ %i.cc, %._crit_edge.loopexit.unr-lcssa ]
  %.0140167.us177.epil.init = phi i32 [ 0, %.lr.ph168.split.preheader ], [ %.0140167.us176.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod338 = trunc i32 %indvars.iv241 to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv238.epil.init
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.cg = fcmp ogt double %i.cf, %i.bj            ; 2 uses
  %i.ch = select i1 %i.cg, double %i.cf, double %.epil.init
  %i.ci = trunc nuw nsw i64 %indvars.iv238.epil.init to i32
  %.0140167.us176.epil = select i1 %i.cg, i32 %i.ci, i32 %.0140167.us177.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph168.split.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.k, %bb.j
end_hunk_1
begin_hunk_2_@blockAlign2:bb.a
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @blockAlign2.result2, i64 %i.fe
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !4
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.fj = icmp sgt i32 %i.fb, 0
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @blockAlign2.result2, i64 %i.fe ; 2 uses
  br i1 %i.fj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fl = add nsw i32 %i.er, -1
  store i32 %i.fl, ptr %i.ff, align 4, !tbaa !4
  %i.fm = sub nsw i32 %i.et, %i.fb
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fn = add nsw i32 %i.fb, %i.er
  store i32 %i.fn, ptr %i.ff, align 4, !tbaa !4
  %i.fo = add nsw i32 %i.et, -1
  store i32 %i.fo, ptr %i.fk, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %i.fp = icmp samesign ugt i32 %.3211, 1
  br i1 %i.fp, label %bb.n, label %.lr.ph215.preheader, !llvm.loop !100

bb.u:                                             ; preds = %bb.n
  %i.fq = icmp slt i32 %.3211, 100000
  br i1 %i.fq, label %.lr.ph215.preheader, label %._crit_edge216

.lr.ph215.preheader:                              ; preds = %bb.t, %bb.u
  %.3.lcssa302 = phi i32 [ %.3211, %bb.u ], [ 0, %bb.t ]
  %i.fr = zext nneg i32 %.3.lcssa302 to i64
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %bb.aa
  %indvars.iv270 = phi i64 [ %i.fr, %.lr.ph215.preheader ], [ %indvars.iv.next271, %bb.aa ] ; 4 uses
  %.0132213 = phi i32 [ 0, %.lr.ph215.preheader ], [ %.2, %bb.aa ] ; 4 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr @blockAlign2.result1, i64 %indvars.iv270
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !4  ; 2 uses
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !52
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr @blockAlign2.result2, i64 %indvars.iv270
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !4  ; 2 uses
  %i.fz = sext i32 %i.fy to i64                   ; 3 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !11 ; 2 uses
  %i.gc = fcmp oeq double %i.gb, 0.000000e+00
  br i1 %i.gc, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %.lr.ph215
  %i.gd = add nsw i64 %indvars.iv270, -1          ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr @blockAlign2.result1, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 2 uses
  %i.gg = icmp eq i32 %i.ft, %i.gf
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr @blockAlign2.result2, i64 %i.gd
  %.pre278 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4 ; 2 uses
  br i1 %i.gg, label %._crit_edge277, label %bb.w

._crit_edge277:                                   ; preds = %bb.v
  %.pre279 = sext i32 %.pre278 to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gh = icmp eq i32 %i.fy, %.pre278
  br i1 %i.gh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %._crit_edge277, %bb.w
  %.pre-phi = phi i64 [ %.pre279, %._crit_edge277 ], [ %i.fz, %bb.w ]
  %i.gi = sext i32 %i.gf to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !52
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %.pre-phi
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !11
  %i.gn = fcmp ogt double %i.gb, %i.gm
  br i1 %i.gn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.go = add nsw i32 %.0132213, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %.1133 = phi i32 [ %i.go, %bb.y ], [ %.0132213, %bb.x ], [ %.0132213, %bb.w ] ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr @blockAlign2.ocut1, i64 %i.fu
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4
  %i.gr = sext i32 %.1133 to i64                  ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gr
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !4
  %i.gt = getelementptr inbounds [4 x i8], ptr @blockAlign2.ocut2, i64 %i.fz
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %i.gv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gr
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !4
  %i.gw = add nsw i32 %.1133, 1
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph215, %bb.z
  %.2 = phi i32 [ %.0132213, %.lr.ph215 ], [ %i.gw, %bb.z ] ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next271, 100000
  br i1 %exitcond273.not, label %._crit_edge216, label %.lr.ph215, !llvm.loop !101

._crit_edge216:                                   ; preds = %bb.aa, %bb.u
  %.0132.lcssa = phi i32 [ 0, %bb.u ], [ %.2, %bb.aa ]
  store i32 %.0132.lcssa, ptr %5, align 4, !tbaa !4
  ret void
}

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #9

declare void @FreeDoubleMtx(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @blockAlign3(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @blockAlign3.crossscoresize, align 4, !tbaa !4
  %i.b = load i32, ptr %5, align 4, !tbaa !4      ; 2 uses
  %i.c = add nsw i32 %i.b, 2                      ; 3 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr @blockAlign3.crossscoresize, align 4, !tbaa !4
  %i.e = load i32, ptr @fftkeika, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.10, i32 noundef %i.c) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @blockAlign3.track, align 8, !tbaa !77 ; 2 uses
  %.not148 = icmp eq ptr %i.h, null
  br i1 %.not148, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @FreeIntMtx(ptr noundef nonnull %i.h) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr @blockAlign3.crossscore, align 8, !tbaa !75 ; 2 uses
  %.not149 = icmp eq ptr %i.i, null
  br i1 %.not149, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @FreeDoubleMtx(ptr noundef nonnull %i.i) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = load ptr, ptr @blockAlign3.jumppos, align 8, !tbaa !83 ; 2 uses
  %.not150 = icmp eq ptr %i.j, null
  br i1 %.not150, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @FreeIntVec(ptr noundef nonnull %i.j) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.k = load ptr, ptr @blockAlign3.jumpscore, align 8, !tbaa !52 ; 2 uses
  %.not151 = icmp eq ptr %i.k, null
  br i1 %.not151, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @FreeDoubleVec(ptr noundef nonnull %i.k) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.l = load i32, ptr @blockAlign3.crossscoresize, align 4, !tbaa !4 ; 2 uses
  %i.m = tail call ptr @AllocateIntMtx(i32 noundef %i.l, i32 noundef %i.l) #25
  store ptr %i.m, ptr @blockAlign3.track, align 8, !tbaa !77
  %i.n = load i32, ptr @blockAlign3.crossscoresize, align 4, !tbaa !4 ; 2 uses
  %i.o = tail call ptr @AllocateDoubleMtx(i32 noundef %i.n, i32 noundef %i.n) #25
  store ptr %i.o, ptr @blockAlign3.crossscore, align 8, !tbaa !75
  %i.p = load i32, ptr @blockAlign3.crossscoresize, align 4, !tbaa !4
  %i.q = tail call ptr @AllocateIntVec(i32 noundef %i.p) #25
  store ptr %i.q, ptr @blockAlign3.jumppos, align 8, !tbaa !83
  %i.r = load i32, ptr @blockAlign3.crossscoresize, align 4, !tbaa !4
  %i.s = tail call ptr @AllocateDoubleVec(i32 noundef %i.r) #25
  store ptr %i.s, ptr @blockAlign3.jumpscore, align 8, !tbaa !52
  %.pre = load i32, ptr %5, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  %i.t = phi i32 [ %.pre, %bb.l ], [ %i.b, %bb.a ] ; 5 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader154.lr.ph, label %._crit_edge165

.preheader154.lr.ph:                              ; preds = %bb.m
  %i.v = load ptr, ptr @blockAlign3.crossscore, align 8
  %wide.trip.count181 = zext nneg i32 %i.t to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.t, 4
  %n.vec = and i64 %wide.trip.count181, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count181
  %xtraiter = and i64 %wide.trip.count181, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader154.us

.preheader154.us:                                 ; preds = %._crit_edge.us, %.preheader154.lr.ph
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %._crit_edge.us ], [ 0, %.preheader154.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv178
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52   ; 7 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv178
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52   ; 7 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond237 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond237, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader154.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader154.us ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x double>, ptr %i.ad, align 8, !tbaa !11
  %wide.load234 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> %wide.load, ptr %i.af, align 8, !tbaa !11
  store <2 x double> %wide.load234, ptr %i.ag, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader154.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader154.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.prol
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.prol
  store double %i.aj, ptr %i.ak, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !103

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv.ph, %wide.trip.count181
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.ao = load double, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  store double %i.ao, ptr %i.ap, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next
  store double %i.ar, ptr %i.as, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.1
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next.1
  store double %i.au, ptr %i.av, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.2
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next.2
  store double %i.ax, ptr %i.ay, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count181
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !104

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %.lr.ph160, label %.preheader154.us, !llvm.loop !105

.lr.ph160:                                        ; preds = %._crit_edge.us
  %i.az = zext nneg i32 %i.t to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @blockAlign3.ocut1, ptr align 4 %0, i64 %i.ba, i1 false), !tbaa !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @blockAlign3.ocut2, ptr align 4 %1, i64 %i.ba, i1 false), !tbaa !4
  %i.bb = load ptr, ptr @blockAlign3.jumpscore, align 8, !tbaa !52
  %i.bc = load ptr, ptr @blockAlign3.jumppos, align 8, !tbaa !83
  br label %bb.n

.preheader:                                       ; preds = %bb.n
  %i.bd = icmp sgt i32 %i.bg, 1
  br i1 %i.bd, label %.lr.ph164.split, label %._crit_edge165

bb.n:                                             ; preds = %.lr.ph160, %bb.n
  %indvars.iv186 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next187, %bb.n ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv186
  store double -9.999990e+02, ptr %i.be, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv186
  store i32 -1, ptr %i.bf, align 4, !tbaa !4
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %i.bg = load i32, ptr %5, align 4, !tbaa !4     ; 4 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next187, %i.bh
  br i1 %i.bi, label %bb.n, label %.preheader, !llvm.loop !106

.lr.ph164.split:                                  ; preds = %.preheader, %._crit_edge
  %i.bj = phi i32 [ %i.ct, %._crit_edge ], [ %i.bg, %.preheader ] ; 3 uses
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %._crit_edge ], [ 1, %.preheader ] ; 4 uses
  store double -9.999990e+02, ptr @blockAlign3.jumpscorei, align 8, !tbaa !11
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %.lr.ph162, label %.lr.ph164.split.._crit_edge_crit_edge

.lr.ph164.split.._crit_edge_crit_edge:            ; preds = %.lr.ph164.split
  %.pre203 = sext i32 %i.bj to i64
  br label %._crit_edge

.lr.ph162:                                        ; preds = %.lr.ph164.split
  %i.bl = trunc nuw nsw i64 %indvars.iv192 to i32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph162, %bb.s
  %indvars.iv189 = phi i64 [ 1, %.lr.ph162 ], [ %indvars.iv.next190, %bb.s ] ; 8 uses
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.bn = trunc nuw nsw i64 %indvars.iv189 to i32
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.11, i32 noundef %i.bl, i32 noundef %i.bn) #21 ; 0 uses
  %i.bp = load ptr, ptr @blockAlign3.crossscore, align 8, !tbaa !75
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %indvars.iv192 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52 ; 2 uses
  %i.bt = add nsw i64 %indvars.iv189, -1          ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = load ptr, ptr @blockAlign3.track, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv192
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv189
  store i32 0, ptr %i.bz, align 4, !tbaa !4
  %i.ca = load double, ptr @blockAlign3.jumpscorei, align 8, !tbaa !11
  %i.cb = load ptr, ptr @blockAlign3.jumpscore, align 8, !tbaa !52
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv189 ; 2 uses
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !52 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv189 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cg = fadd double %i.bv, %i.cf
  store double %i.cg, ptr %i.ce, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv189
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11 ; 2 uses
  %i.cj = fcmp olt double %i.ca, %i.ci
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.ci, ptr @blockAlign3.jumpscorei, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ck = load double, ptr %i.cc, align 8, !tbaa !11
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bt
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !11 ; 2 uses
  %i.cn = fcmp olt double %i.ck, %i.cm
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.cm, ptr %i.cc, align 8, !tbaa !11
  %i.co = load ptr, ptr @blockAlign3.jumppos, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv189
  store i32 %i.bl, ptr %i.cp, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.cq = load i32, ptr %5, align 4, !tbaa !4     ; 2 uses
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next190, %i.cr
  br i1 %i.cs, label %bb.o, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.s, %.lr.ph164.split.._crit_edge_crit_edge
  %.pre-phi204 = phi i64 [ %.pre203, %.lr.ph164.split.._crit_edge_crit_edge ], [ %i.cr, %bb.s ]
  %i.ct = phi i32 [ %i.bj, %.lr.ph164.split.._crit_edge_crit_edge ], [ %i.cq, %bb.s ] ; 2 uses
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.cu = icmp slt i64 %indvars.iv.next193, %.pre-phi204
  br i1 %i.cu, label %.lr.ph164.split, label %._crit_edge165, !llvm.loop !108

._crit_edge165:                                   ; preds = %._crit_edge, %bb.m, %.preheader
  %.lcssa = phi i32 [ %i.bg, %.preheader ], [ %i.t, %bb.m ], [ %i.ct, %._crit_edge ]
  %i.cv = add nsw i32 %.lcssa, -1                 ; 2 uses
  store i32 %i.cv, ptr getelementptr inbounds nuw (i8, ptr @blockAlign3.result1, i64 399996), align 4, !tbaa !4
  store i32 %i.cv, ptr getelementptr inbounds nuw (i8, ptr @blockAlign3.result2, i64 399996), align 4, !tbaa !4
  %i.cw = load ptr, ptr @blockAlign3.track, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge165, %bb.z
  %.3168 = phi i32 [ 99999, %._crit_edge165 ], [ %i.dl, %bb.z ] ; 5 uses
  %i.cx = zext nneg i32 %.3168 to i64             ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @blockAlign3.result1, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4  ; 5 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @blockAlign3.result2, i64 %i.cx
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4  ; 5 uses
  %i.dc = icmp eq i32 %i.cz, 0
  %i.dd = icmp eq i32 %i.db, 0
  %or.cond = select i1 %i.dc, i1 true, i1 %i.dd
end_hunk_2
