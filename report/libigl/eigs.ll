Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 189
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN5Eigen8internal6ColamdL14init_rows_colsIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_SA_:bb.a
  %i.et = icmp ult ptr %i.ek, %i.ef
  br i1 %i.et, label %.lr.ph226, label %.loopexit200, !llvm.loop !501

.loopexit199:                                     ; preds = %.loopexit200, %.loopexit197, %.preheader201, %.preheader198
  br i1 %.not248, label %._crit_edge237, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %.loopexit199
  %wide.trip.count289 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter346 = and i64 %wide.trip.count289, 3   ; 3 uses
  %i.eu = icmp samesign ult i32 %0, 4
  br i1 %i.eu, label %.lr.ph236.epil.preheader, label %.lr.ph236.preheader.new

.lr.ph236.preheader.new:                          ; preds = %.lr.ph236.preheader
  %unroll_iter350 = and i64 %wide.trip.count289, 2147483644
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236, %.lr.ph236.preheader.new
  %indvars.iv286 = phi i64 [ 0, %.lr.ph236.preheader.new ], [ %indvars.iv.next287.3, %.lr.ph236 ] ; 5 uses
  %niter351 = phi i64 [ 0, %.lr.ph236.preheader.new ], [ %niter351.next.3, %.lr.ph236 ]
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !131
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !200
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !131
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 28
  store i32 0, ptr %i.fb, align 4, !tbaa !131
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !200
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !131
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 44
  store i32 0, ptr %i.fg, align 4, !tbaa !131
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 36
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !200
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !131
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 60
  store i32 0, ptr %i.fl, align 4, !tbaa !131
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 52
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !200
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !131
  %indvars.iv.next287.3 = add nuw nsw i64 %indvars.iv286, 4 ; 2 uses
  %niter351.next.3 = add i64 %niter351, 4         ; 2 uses
  %niter351.ncmp.3 = icmp eq i64 %niter351.next.3, %unroll_iter350
  br i1 %niter351.ncmp.3, label %._crit_edge237.loopexit.unr-lcssa, label %.lr.ph236, !llvm.loop !502

._crit_edge237.loopexit.unr-lcssa:                ; preds = %.lr.ph236
  %lcmp.mod348.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod348.not, label %._crit_edge237, label %.lr.ph236.epil.preheader

.lr.ph236.epil.preheader:                         ; preds = %._crit_edge237.loopexit.unr-lcssa, %.lr.ph236.preheader
  %indvars.iv286.epil.init = phi i64 [ 0, %.lr.ph236.preheader ], [ %indvars.iv.next287.3, %._crit_edge237.loopexit.unr-lcssa ]
  %lcmp.mod349 = icmp ne i64 %xtraiter346, 0
  tail call void @llvm.assume(i1 %lcmp.mod349)
  br label %.lr.ph236.epil

.lr.ph236.epil:                                   ; preds = %.lr.ph236.epil, %.lr.ph236.epil.preheader
  %indvars.iv286.epil = phi i64 [ %indvars.iv286.epil.init, %.lr.ph236.epil.preheader ], [ %indvars.iv.next287.epil, %.lr.ph236.epil ] ; 2 uses
  %epil.iter347 = phi i64 [ 0, %.lr.ph236.epil.preheader ], [ %epil.iter347.next, %.lr.ph236.epil ]
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286.epil ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !131
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !200
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !131
  %indvars.iv.next287.epil = add nuw nsw i64 %indvars.iv286.epil, 1
  %epil.iter347.next = add i64 %epil.iter347, 1   ; 2 uses
  %epil.iter347.cmp.not = icmp eq i64 %epil.iter347.next, %xtraiter346
  br i1 %epil.iter347.cmp.not, label %._crit_edge237, label %.lr.ph236.epil, !llvm.loop !503

._crit_edge237:                                   ; preds = %._crit_edge237.loopexit.unr-lcssa, %.lr.ph236.epil, %.loopexit199
  %i.fu = load i32, ptr %i.da, align 4, !tbaa !142
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge237
  store i32 0, ptr %3, align 4, !tbaa !197
  store i32 0, ptr %5, align 4, !tbaa !142
  %i.fw = icmp samesign ugt i32 %1, 1
  br i1 %i.fw, label %.lr.ph240.preheader, label %.preheader

.lr.ph240.preheader:                              ; preds = %bb.n
  %i.fx = add nsw i64 %.pre-phi307, -1            ; 3 uses
  %xtraiter352 = and i64 %i.fx, 1
  %i.fy = icmp eq i64 %.pre-phi307, 2
  br i1 %i.fy, label %.lr.ph240.epil.preheader, label %.lr.ph240.preheader.new

.lr.ph240.preheader.new:                          ; preds = %.lr.ph240.preheader
  %unroll_iter356 = and i64 %i.fx, -2
  br label %.lr.ph240

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph240
  %lcmp.mod354.not = icmp eq i64 %xtraiter352, 0
  br i1 %lcmp.mod354.not, label %.preheader, label %.lr.ph240.epil.preheader

.lr.ph240.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph240.preheader
  %indvars.iv291.epil.init = phi i64 [ 1, %.lr.ph240.preheader ], [ %indvars.iv.next292.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod355 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod355)
  %i.fz = getelementptr [24 x i8], ptr %3, i64 %indvars.iv291.epil.init ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -24
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !197
  %i.gc = getelementptr i8, ptr %i.fz, i64 -20
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !198
  %i.ge = add nsw i32 %i.gd, %i.gb                ; 2 uses
  store i32 %i.ge, ptr %i.fz, align 4, !tbaa !197
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv291.epil.init
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !142
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph240.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.n
  br i1 %.not248, label %.loopexit, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %.preheader
  %wide.trip.count299 = zext nneg i32 %0 to i64
  br label %.lr.ph246

.lr.ph240:                                        ; preds = %.lr.ph240, %.lr.ph240.preheader.new
  %indvars.iv291 = phi i64 [ 1, %.lr.ph240.preheader.new ], [ %indvars.iv.next292.1, %.lr.ph240 ] ; 4 uses
  %niter357 = phi i64 [ 0, %.lr.ph240.preheader.new ], [ %niter357.next.1, %.lr.ph240 ]
  %i.gg = getelementptr [24 x i8], ptr %3, i64 %indvars.iv291 ; 3 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !197
  %i.gj = getelementptr i8, ptr %i.gg, i64 -20
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !198
  %i.gl = add nsw i32 %i.gk, %i.gi                ; 2 uses
  store i32 %i.gl, ptr %i.gg, align 4, !tbaa !197
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv291
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !142
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.gn = getelementptr [24 x i8], ptr %3, i64 %indvars.iv.next292 ; 3 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !197
  %i.gq = getelementptr i8, ptr %i.gn, i64 -20
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !198
  %i.gs = add nsw i32 %i.gr, %i.gp                ; 2 uses
  store i32 %i.gs, ptr %i.gn, align 4, !tbaa !197
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next292
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !142
  %indvars.iv.next292.1 = add nuw nsw i64 %indvars.iv291, 2 ; 2 uses
  %niter357.next.1 = add nuw i64 %niter357, 2     ; 2 uses
  %niter357.ncmp.1 = icmp eq i64 %niter357.next.1, %unroll_iter356
  br i1 %niter357.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph240, !llvm.loop !504

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %._crit_edge244
  %indvars.iv296 = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next297, %._crit_edge244 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !201
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !200 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %.idx = shl nuw nsw i64 %i.ha, 2
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx
  %i.hc = icmp sgt i32 %i.gz, 0
  br i1 %i.hc, label %.lr.ph243.preheader, label %._crit_edge244

.lr.ph243.preheader:                              ; preds = %.lr.ph246
  %i.hd = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %.lr.ph243
  %.0181241 = phi ptr [ %i.he, %.lr.ph243 ], [ %i.gx, %.lr.ph243.preheader ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0181241, i64 4 ; 2 uses
  %i.hf = load i32, ptr %.0181241, align 4, !tbaa !142
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !142 ; 2 uses
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !142
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hk
  store i32 %i.hd, ptr %i.hl, align 4, !tbaa !142
  %i.hm = icmp ult ptr %i.he, %i.hb
  br i1 %i.hm, label %.lr.ph243, label %._crit_edge244, !llvm.loop !505

._crit_edge244:                                   ; preds = %.lr.ph243, %.lr.ph246
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.loopexit, label %.lr.ph246, !llvm.loop !506

.loopexit:                                        ; preds = %._crit_edge244, %.preheader, %._crit_edge237, %bb.f, %bb.b
  %.0190 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 1, %._crit_edge237 ], [ 1, %.preheader ], [ 1, %._crit_edge244 ]
  ret i32 %.0190
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5Eigen8internal6ColamdL12init_scoringIiEEvT_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_PdSA_SA_SA_(i32 noundef range(i32 0, -2147483648) %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef nonnull %4, ptr nofree noundef nonnull captures(none) %5, double nofpclass(nan inf zero sub nnorm) %.0.val, double nofpclass(nan inf zero sub nnorm) %.8.val, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8) unnamed_addr #17 {
bb.a:
  %i.a = uitofp nneg i32 %1 to double
  %i.b = fmul nnan double %.0.val, %i.a
  %i.c = fptosi double %i.b to i32
  %.sroa.speculated13 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.c) ; 2 uses
  %i.d = uitofp nneg i32 %0 to double
  %i.e = fmul nnan double %.8.val, %i.d
  %i.f = fptosi double %i.e to i32
  %.sroa.speculated3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.f)
  %.not96 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not96, label %.preheader65, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64                  ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.g, -1    ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.next.prol ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.lr.ph.prol.loopexit

bb.b:                                             ; preds = %.lr.ph.prol
  %i.l = add nsw i32 %1, -1                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !131
  store i32 -1, ptr %i.h, align 4, !tbaa !197
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %bb.b, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %bb.b ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.010370.unr = phi i32 [ %1, %.lr.ph.preheader ], [ %i.l, %bb.b ], [ %1, %.lr.ph.prol ]
  %.1104.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.l, %bb.b ], [ %1, %.lr.ph.prol ]
  %i.n = icmp eq i32 %1, 1
  br i1 %i.n, label %.lr.ph77.preheader, label %.lr.ph

.lr.ph77.preheader:                               ; preds = %bb.e, %.lr.ph.prol.loopexit
  %.1104.lcssa = phi i32 [ %.1104.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1104.1, %bb.e ]
  %i.o = zext nneg i32 %1 to i64
  br label %.lr.ph77

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.010370 = phi i32 [ %.1104.1, %bb.e ], [ %.010370.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.p = getelementptr [24 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.p, i64 -24
  %i.u = add nsw i32 %.010370, -1                 ; 2 uses
  %i.v = getelementptr i8, ptr %i.p, i64 -12
  store i32 %i.u, ptr %i.v, align 4, !tbaa !131
  store i32 -1, ptr %i.t, align 4, !tbaa !197
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %.1104 = phi i32 [ %i.u, %bb.c ], [ %.010370, %.lr.ph ] ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.next.1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !198
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.1
  %i.aa = add nsw i32 %.1104, -1                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !131
  store i32 -1, ptr %i.w, align 4, !tbaa !197
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.1104.1 = phi i32 [ %i.aa, %bb.d ], [ %.1104, %.lr.ph.1 ] ; 2 uses
  %i.ac = icmp sgt i64 %indvars.iv, 2
  br i1 %i.ac, label %.lr.ph, label %.lr.ph77.preheader, !llvm.loop !507

.preheader65:                                     ; preds = %bb.g, %bb.a
  %.2.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %bb.g ] ; 2 uses
  %.not98 = icmp eq i32 %0, 0
  br i1 %.not98, label %.preheader64, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader65
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp samesign ult i32 %0, 9
  br i1 %min.iters.check, label %.lr.ph82.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph82.preheader
  %i.ad = and i64 %wide.trip.count, 7             ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %wide.trip.count, %i.af    ; 2 uses
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %0, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.speculated13, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue154, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue154 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.ag, %vector.ph ], [ %predphi156, %pred.store.continue154 ]
  %vec.phi138 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi157, %pred.store.continue154 ]
  %vec.phi139 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %pred.store.continue154 ] ; 2 uses
  %vec.phi140 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi155, %pred.store.continue154 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.ax = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.ay = load i32, ptr %i.aq, align 4, !tbaa !131
  %i.az = load i32, ptr %i.ar, align 4, !tbaa !131
  %i.ba = load i32, ptr %i.as, align 4, !tbaa !131
  %i.bb = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 1
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 2
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 3 ; 3 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !131
  %i.bg = load i32, ptr %i.au, align 4, !tbaa !131
  %i.bh = load i32, ptr %i.av, align 4, !tbaa !131
  %i.bi = load i32, ptr %i.aw, align 4, !tbaa !131
  %i.bj = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.bg, i64 1
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 2
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 3 ; 3 uses
  %i.bn = icmp sgt <4 x i32> %i.be, %broadcast.splat
  %i.bo = icmp sgt <4 x i32> %i.bm, %broadcast.splat
  %i.bp = icmp eq <4 x i32> %i.be, zeroinitializer
  %i.bq = icmp eq <4 x i32> %i.bm, zeroinitializer
  %i.br = or <4 x i1> %i.bn, %i.bp                ; 6 uses
  %i.bs = or <4 x i1> %i.bo, %i.bq                ; 6 uses
  %i.bt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi139, <4 x i32> %i.be)
  %i.bu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi140, <4 x i32> %i.bm)
  %i.bv = extractelement <4 x i1> %i.br, i64 0
  br i1 %i.bv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 -1, ptr %i.bw, align 4, !tbaa !131
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bx = extractelement <4 x i1> %i.br, i64 1
  br i1 %i.bx, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.by, align 4, !tbaa !131
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue
  %i.bz = extractelement <4 x i1> %i.br, i64 2
  br i1 %i.bz, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  store i32 -1, ptr %i.ca, align 4, !tbaa !131
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.cb = extractelement <4 x i1> %i.br, i64 3
  br i1 %i.cb, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  store i32 -1, ptr %i.cc, align 4, !tbaa !131
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.cd = extractelement <4 x i1> %i.bs, i64 0
  br i1 %i.cd, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.ce = getelementptr inbounds nuw i8, ptr %i.al, i64 76
  store i32 -1, ptr %i.ce, align 4, !tbaa !131
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.cf = extractelement <4 x i1> %i.bs, i64 1
  br i1 %i.cf, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 92
  store i32 -1, ptr %i.cg, align 4, !tbaa !131
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.ch = extractelement <4 x i1> %i.bs, i64 2
  br i1 %i.ch, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 108
  store i32 -1, ptr %i.ci, align 4, !tbaa !131
end_hunk_0
