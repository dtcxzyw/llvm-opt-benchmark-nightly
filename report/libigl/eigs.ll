Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_ZN5Eigen8internal6ColamdL14init_rows_colsIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_SA_:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph231
  %i.dz = icmp ult ptr %i.dn, %i.di
  br i1 %i.dz, label %.lr.ph231, label %.loopexit197, !llvm.loop !498

.loopexit200:                                     ; preds = %.lr.ph226, %.lr.ph228
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %.pre-phi307
  br i1 %exitcond280.not, label %.loopexit199, label %.lr.ph228, !llvm.loop !499

.lr.ph228:                                        ; preds = %.preheader201, %.loopexit200
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.loopexit200 ], [ 0, %.preheader201 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv276
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !142 ; 2 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next277
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !142 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ee
  %i.eg = icmp slt i32 %i.eb, %i.ed
  br i1 %i.eg, label %.lr.ph226.preheader, label %.loopexit200

.lr.ph226.preheader:                              ; preds = %.lr.ph228
  %i.eh = sext i32 %i.eb to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eh
  %i.ej = trunc nuw nsw i64 %indvars.iv276 to i32
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %.lr.ph226
  %.2224 = phi ptr [ %i.ek, %.lr.ph226 ], [ %i.ei, %.lr.ph226.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2224, i64 4 ; 2 uses
  %i.el = load i32, ptr %.2224, align 4, !tbaa !142
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [16 x i8], ptr %2, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !131 ; 2 uses
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !131
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %4, i64 %i.er
  store i32 %i.ej, ptr %i.es, align 4, !tbaa !142
  %i.et = icmp ult ptr %i.ek, %i.ef
  br i1 %i.et, label %.lr.ph226, label %.loopexit200, !llvm.loop !500

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
  br i1 %niter351.ncmp.3, label %._crit_edge237.loopexit.unr-lcssa, label %.lr.ph236, !llvm.loop !501

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
  br i1 %epil.iter347.cmp.not, label %._crit_edge237, label %.lr.ph236.epil, !llvm.loop !502

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
  br i1 %niter357.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph240, !llvm.loop !503

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %._crit_edge244
  %indvars.iv296 = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next297, %._crit_edge244 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !201
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !200 ; 2 uses
  %7 = zext nneg i32 %i.gz to i64
  %.idx = shl nuw nsw i64 %7, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx
  %i.hb = icmp sgt i32 %i.gz, 0
  br i1 %i.hb, label %.lr.ph243.preheader, label %._crit_edge244

.lr.ph243.preheader:                              ; preds = %.lr.ph246
  %i.hc = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %.lr.ph243
  %.0181241 = phi ptr [ %i.hd, %.lr.ph243 ], [ %i.gx, %.lr.ph243.preheader ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0181241, i64 4 ; 2 uses
  %i.he = load i32, ptr %.0181241, align 4, !tbaa !142
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hf ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !142 ; 2 uses
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !142
  %i.hj = sext i32 %i.hh to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hj
  store i32 %i.hc, ptr %i.hk, align 4, !tbaa !142
  %i.hl = icmp ult ptr %i.hd, %i.ha
  br i1 %i.hl, label %.lr.ph243, label %._crit_edge244, !llvm.loop !504

._crit_edge244:                                   ; preds = %.lr.ph243, %.lr.ph246
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.loopexit, label %.lr.ph246, !llvm.loop !505

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
  %.sroa.speculated9 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.c) ; 2 uses
  %i.d = uitofp nneg i32 %0 to double
  %i.e = fmul nnan double %.8.val, %i.d
  %i.f = fptosi double %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.f)
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
  br i1 %i.ac, label %.lr.ph, label %.lr.ph77.preheader, !llvm.loop !506

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
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.speculated9, i64 0
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
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal6ColamdL13find_orderingIiEET_S3_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_S3_S3_S3_:bb.a
  %.28295.i.epil.init = phi ptr [ %.181103.i, %.lr.ph99.i.preheader ], [ %i.dw, %._crit_edge100.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i32 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.ed = getelementptr inbounds nuw i8, ptr %.28295.i.epil.init, i64 4 ; 2 uses
  %i.ee = load i32, ptr %.28295.i.epil.init, align 4, !tbaa !142 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !197
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %bb.x, label %._crit_edge100.loopexit.i

bb.x:                                             ; preds = %.lr.ph99.i.epil.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %.596.i.epil.init, i64 4
  store i32 %i.ee, ptr %.596.i.epil.init, align 4, !tbaa !142
  br label %._crit_edge100.loopexit.i

._crit_edge100.loopexit.i:                        ; preds = %.lr.ph99.i.epil.preheader, %bb.x, %._crit_edge100.loopexit.i.unr-lcssa
  %.6.i.lcssa = phi ptr [ %.6.i.1, %._crit_edge100.loopexit.i.unr-lcssa ], [ %i.ej, %bb.x ], [ %.596.i.epil.init, %.lr.ph99.i.epil.preheader ] ; 2 uses
  %.lcssa = phi ptr [ %i.dw, %._crit_edge100.loopexit.i.unr-lcssa ], [ %i.ed, %bb.x ], [ %i.ed, %.lr.ph99.i.epil.preheader ]
  %.pre116.i = load i32, ptr %i.de, align 4, !tbaa !201
  %.pre118.i = ptrtoint ptr %.6.i.lcssa to i64
  br label %._crit_edge100.i

._crit_edge100.i:                                 ; preds = %._crit_edge100.loopexit.i, %bb.t
  %.pre-phi119.i = phi i64 [ %.pre118.i, %._crit_edge100.loopexit.i ], [ %i.dh, %bb.t ]
  %i.ek = phi i32 [ %.pre116.i, %._crit_edge100.loopexit.i ], [ %i.dk, %bb.t ]
  %.282.lcssa.i = phi ptr [ %.lcssa, %._crit_edge100.loopexit.i ], [ %.181103.i, %bb.t ]
  %.5.lcssa.i = phi ptr [ %.6.i.lcssa, %._crit_edge100.loopexit.i ], [ %.4104.i, %bb.t ]
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %5, i64 %i.el
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %.pre-phi119.i, %i.en
  %i.ep = lshr exact i64 %i.eo, 2
  %i.eq = trunc i64 %i.ep to i32
  store i32 %i.eq, ptr %i.dl, align 4, !tbaa !200
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge100.i, %.lr.ph105.i
  %.383.i = phi ptr [ %.282.lcssa.i, %._crit_edge100.i ], [ %i.cz, %.lr.ph105.i ] ; 2 uses
  %.7.i = phi ptr [ %.5.lcssa.i, %._crit_edge100.i ], [ %.4104.i, %.lr.ph105.i ] ; 2 uses
  %i.er = icmp ult ptr %.383.i, %i.at
  br i1 %i.er, label %.lr.ph105.i, label %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit, !llvm.loop !520

_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit: ; preds = %bb.y, %.preheader.i
  %.4.lcssa.i = phi ptr [ %.078.lcssa.i, %.preheader.i ], [ %.7.i, %bb.y ]
  %i.es = ptrtoint ptr %.4.lcssa.i to i64
  %i.et = sub i64 %i.es, %i.p
  %i.eu = lshr exact i64 %i.et, 2
  %i.ev = trunc i64 %i.eu to i32                  ; 4 uses
  %i.ew = add nsw i32 %.0459, 1                   ; 4 uses
  br i1 %.not.i, label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328, label %.lr.ph.i323.preheader

.lr.ph.i323.preheader:                            ; preds = %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit
  br i1 %i.t, label %.lr.ph.i323.epil.preheader, label %.lr.ph.i323

.lr.ph.i323:                                      ; preds = %.lr.ph.i323.preheader, %bb.ab
  %indvars.iv.i324 = phi i64 [ %indvars.iv.next.i325.1, %bb.ab ], [ 0, %.lr.ph.i323.preheader ] ; 3 uses
  %niter41 = phi i64 [ %niter41.next.1, %bb.ab ], [ 0, %.lr.ph.i323.preheader ]
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i324
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !131
  %i.fa = icmp sgt i32 %i.ez, -1
  br i1 %i.fa, label %bb.z, label %.lr.ph.i323.1

bb.z:                                             ; preds = %.lr.ph.i323
  store i32 0, ptr %i.ey, align 4, !tbaa !131
  br label %.lr.ph.i323.1

.lr.ph.i323.1:                                    ; preds = %bb.z, %.lr.ph.i323
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i324
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 28 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !131
  %i.fe = icmp sgt i32 %i.fd, -1
  br i1 %i.fe, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i323.1
  store i32 0, ptr %i.fc, align 4, !tbaa !131
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i323.1
  %indvars.iv.next.i325.1 = add nuw nsw i64 %indvars.iv.i324, 2 ; 2 uses
  %niter41.next.1 = add i64 %niter41, 2           ; 2 uses
  %niter41.ncmp.1 = icmp eq i64 %niter41.next.1, %unroll_iter40
  br i1 %niter41.ncmp.1, label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa, label %.lr.ph.i323, !llvm.loop !514

_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa: ; preds = %bb.ab
  br i1 %lcmp.mod38.not, label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328, label %.lr.ph.i323.epil.preheader

.lr.ph.i323.epil.preheader:                       ; preds = %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa, %.lr.ph.i323.preheader
  %indvars.iv.i324.epil.init = phi i64 [ 0, %.lr.ph.i323.preheader ], [ %indvars.iv.next.i325.1, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i324.epil.init
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !131
  %i.fi = icmp sgt i32 %i.fh, -1
  br i1 %i.fi, label %bb.ac, label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328

bb.ac:                                            ; preds = %.lr.ph.i323.epil.preheader
  store i32 0, ptr %i.fg, align 4, !tbaa !131
  br label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328

_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328: ; preds = %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa, %bb.ac, %.lr.ph.i323.epil.preheader, %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit, %bb.h
  %.1294 = phi i32 [ %.0293456, %bb.h ], [ %i.ev, %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit ], [ %i.ev, %.lr.ph.i323.epil.preheader ], [ %i.ev, %bb.ac ], [ %i.ev, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa ] ; 5 uses
  %.1277 = phi i32 [ %.0276458, %bb.h ], [ 1, %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit ], [ 1, %.lr.ph.i323.epil.preheader ], [ 1, %bb.ac ], [ 1, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa ] ; 4 uses
  %.1 = phi i32 [ %.0459, %bb.h ], [ %i.ew, %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit ], [ %i.ew, %.lr.ph.i323.epil.preheader ], [ %i.ew, %bb.ac ], [ %i.ew, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa ]
  %i.fj = sub nsw i32 0, %i.ao
  store i32 %i.fj, ptr %i.an, align 4, !tbaa !131
  %i.fk = load i32, ptr %i.af, align 4, !tbaa !197
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !198
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fp
  br label %.outer420.outer

..loopexit418_crit_edge:                          ; preds = %bb.aj
  br label %.outer420.outer, !llvm.loop !521

.outer420.outer:                                  ; preds = %..loopexit418_crit_edge, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328
  %.0410.ph.ph = phi i32 [ %.2412, %..loopexit418_crit_edge ], [ 0, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328 ] ; 4 uses
  %.2295.ph.ph = phi i32 [ %.4, %..loopexit418_crit_edge ], [ %.1294, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328 ] ; 3 uses
  %.0286.ph.ph = phi ptr [ %i.fs, %..loopexit418_crit_edge ], [ %i.fm, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328 ]
  br label %.outer420

.outer420:                                        ; preds = %.outer420.outer, %bb.af
  %.0286.ph = phi ptr [ %i.fs, %bb.af ], [ %.0286.ph.ph, %.outer420.outer ]
  br label %bb.ad

bb.ad:                                            ; preds = %.outer420, %bb.ae
  %.0286 = phi ptr [ %i.fs, %bb.ae ], [ %.0286.ph, %.outer420 ] ; 3 uses
  %i.fr = icmp ult ptr %.0286, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.fs = getelementptr inbounds nuw i8, ptr %.0286, i64 4 ; 3 uses
  %i.ft = load i32, ptr %.0286, align 4, !tbaa !142
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [16 x i8], ptr %3, i64 %i.fu ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !131
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %bb.ad, label %bb.af, !llvm.loop !521

bb.af:                                            ; preds = %bb.ae
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !200 ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph436, label %.outer420, !llvm.loop !521

.lr.ph436:                                        ; preds = %bb.af
  %i.gc = load i32, ptr %i.fv, align 4, !tbaa !201
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gd ; 2 uses
  %i.gf = sext i32 %i.ga to i64
  %.idx464.le = shl nsw i64 %i.gf, 2
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %.idx464.le
  br label %bb.ag, !llvm.loop !521

bb.ag:                                            ; preds = %.lr.ph436, %bb.aj
  %.0283435 = phi ptr [ %i.ge, %.lr.ph436 ], [ %i.gh, %bb.aj ] ; 2 uses
  %.3296434 = phi i32 [ %.2295.ph.ph, %.lr.ph436 ], [ %.4, %bb.aj ] ; 4 uses
  %.1411433 = phi i32 [ %.0410.ph.ph, %.lr.ph436 ], [ %.2412, %bb.aj ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0283435, i64 4 ; 2 uses
  %i.gi = load i32, ptr %.0283435, align 4, !tbaa !142 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [24 x i8], ptr %4, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !131 ; 3 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.go = load i32, ptr %i.gk, align 4, !tbaa !197
  %i.gp = icmp sgt i32 %i.go, -1
  br i1 %i.gp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gq = sub nsw i32 0, %i.gm
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !131
  %i.gr = add nsw i32 %.3296434, 1
  %i.gs = sext i32 %.3296434 to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gs
  store i32 %i.gi, ptr %i.gt, align 4, !tbaa !142
  %i.gu = add nuw nsw i32 %i.gm, %.1411433
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.2412 = phi i32 [ %i.gu, %bb.ai ], [ %.1411433, %bb.ah ], [ %.1411433, %bb.ag ] ; 2 uses
  %.4 = phi i32 [ %i.gr, %bb.ai ], [ %.3296434, %bb.ah ], [ %.3296434, %bb.ag ] ; 2 uses
  %i.gv = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gv, label %bb.ag, label %..loopexit418_crit_edge, !llvm.loop !522

bb.ak:                                            ; preds = %bb.ad
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !131
  %.sroa.speculated386 = tail call i32 @llvm.smax.i32(i32 %.0405455, i32 %.0410.ph.ph) ; 2 uses
  %i.gw = load i32, ptr %i.af, align 4, !tbaa !197
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.fn, align 4, !tbaa !198 ; 2 uses
  %10 = zext nneg i32 %i.gz to i64
  %.idx = shl nuw nsw i64 %10, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx
  %i.hb = icmp sgt i32 %i.gz, 0
  br i1 %i.hb, label %.lr.ph440, label %._crit_edge

.lr.ph440:                                        ; preds = %bb.ak, %.lr.ph440
  %.1287439 = phi ptr [ %i.hc, %.lr.ph440 ], [ %i.gy, %bb.ak ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1287439, i64 4 ; 2 uses
  %i.hd = load i32, ptr %.1287439, align 4, !tbaa !142
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [16 x i8], ptr %3, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 -1, ptr %i.hg, align 4, !tbaa !131
  %i.hh = icmp ult ptr %i.hc, %i.ha
  br i1 %i.hh, label %.lr.ph440, label %._crit_edge, !llvm.loop !523

._crit_edge:                                      ; preds = %.lr.ph440, %bb.ak
  %i.hi = sub nsw i32 %.2295.ph.ph, %.1294        ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph446.preheader, label %.preheader.thread

.preheader.thread:                                ; preds = %._crit_edge
  %i.hk = sext i32 %.1294 to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hk ; 2 uses
  %i.hm = sext i32 %i.hi to i64
  %.idx462 = shl nsw i64 %i.hm, 2
  %i.hn = getelementptr inbounds i8, ptr %i.hl, i64 %.idx462
  br label %_ZN5Eigen8internal6ColamdL17detect_super_colsIiEEvPNS1_12ColStructureIT_EEPS4_S7_S4_S4_.exit

.lr.ph446.preheader:                              ; preds = %._crit_edge
  %i.ho = load i32, ptr %i.af, align 4, !tbaa !197
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !142
  %i.hs = sext i32 %.1294 to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hs ; 5 uses
  %i.hu = zext nneg i32 %i.hi to i64
  %.idx462504 = shl nuw nsw i64 %i.hu, 2
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx462504 ; 4 uses
  br label %.lr.ph446

.loopexit:                                        ; preds = %.backedge, %bb.ap
  %i.hw = icmp ult ptr %i.hx, %i.hv
  br i1 %i.hw, label %.lr.ph446, label %.lr.ph450, !llvm.loop !524

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %.loopexit
  %.1284444 = phi ptr [ %i.hx, %.loopexit ], [ %i.ht, %.lr.ph446.preheader ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.1284444, i64 4 ; 2 uses
  %i.hy = load i32, ptr %.1284444, align 4, !tbaa !142
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [24 x i8], ptr %4, i64 %i.hz ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !131 ; 2 uses
  %i.id = sub nsw i32 0, %i.ic
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !131
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !131 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 20
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !131 ; 4 uses
  %i.ii = icmp eq i32 %i.if, -1
  br i1 %i.ii, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph446
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !131
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %6, i64 %i.il
  store i32 %i.ih, ptr %i.im, align 4, !tbaa !142
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph446
  %i.in = sext i32 %i.if to i64
  %i.io = getelementptr inbounds [24 x i8], ptr %4, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 20
  store i32 %i.ih, ptr %i.ip, align 4, !tbaa !131
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not312 = icmp eq i32 %i.ih, -1
  br i1 %.not312, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iq = sext i32 %i.ih to i64
  %i.ir = getelementptr inbounds [24 x i8], ptr %4, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 %i.if, ptr %i.is, align 4, !tbaa !131
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.it = load i32, ptr %i.ia, align 4, !tbaa !197
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !198 ; 2 uses
  %i.iy = sext i32 %i.ix to i64
  %.idx463 = shl nsw i64 %i.iy, 2
  %i.iz = getelementptr inbounds i8, ptr %i.iv, i64 %.idx463
  %i.ja = icmp sgt i32 %i.ix, 0
  br i1 %i.ja, label %.lr.ph443, label %.loopexit

.lr.ph443:                                        ; preds = %bb.ap, %.backedge
  %.2288441 = phi ptr [ %i.jb, %.backedge ], [ %i.iv, %bb.ap ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.2288441, i64 4 ; 2 uses
  %i.jc = load i32, ptr %.2288441, align 4, !tbaa !142
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [16 x i8], ptr %3, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 12 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !131 ; 2 uses
  %i.jh = icmp slt i32 %i.jg, 0
  br i1 %i.jh, label %.backedge, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph443
  %i.ji = sub nsw i32 %i.jg, %.1277               ; 2 uses
  %i.jj = icmp slt i32 %i.ji, 0
  br i1 %i.jj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !131
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0275 = phi i32 [ %i.jl, %bb.ar ], [ %i.ji, %bb.aq ]
  %i.jm = add nsw i32 %.0275, %i.ic               ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 0
  %i.jo = add nsw i32 %i.jm, %.1277
  %storemerge = select i1 %i.jn, i32 -1, i32 %i.jo
  store i32 %storemerge, ptr %i.jf, align 4, !tbaa !131
  br label %.backedge

.backedge:                                        ; preds = %bb.as, %.lr.ph443
  %i.jp = icmp ult ptr %i.jb, %i.iz
  br i1 %i.jp, label %.lr.ph443, label %.loopexit, !llvm.loop !525

.lr.ph450:                                        ; preds = %.loopexit, %bb.bc
  %.2285449 = phi ptr [ %i.km, %bb.bc ], [ %i.ht, %.loopexit ] ; 2 uses
  %.1291448 = phi i32 [ %.2292, %bb.bc ], [ %i.ap, %.loopexit ] ; 3 uses
  %.3413447 = phi i32 [ %.4414, %bb.bc ], [ %.0410.ph.ph, %.loopexit ] ; 2 uses
  %i.jq = load i32, ptr %.2285449, align 4, !tbaa !142 ; 3 uses
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [24 x i8], ptr %4, i64 %i.jr ; 9 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !197
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ju ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 4 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !198
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jy
  br label %.outer

.outer:                                           ; preds = %bb.av, %.lr.ph450
  %.0409.ph = phi i32 [ %.sroa.speculated366, %bb.av ], [ 0, %.lr.ph450 ] ; 2 uses
  %.3289.ph = phi ptr [ %i.kb, %bb.av ], [ %i.jv, %.lr.ph450 ]
  %.0281.ph = phi ptr [ %i.ki, %bb.av ], [ %i.jv, %.lr.ph450 ] ; 3 uses
  %.0279.ph = phi i32 [ %i.kj, %bb.av ], [ 0, %.lr.ph450 ] ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %.outer, %bb.au
  %.3289 = phi ptr [ %i.kb, %bb.au ], [ %.3289.ph, %.outer ] ; 3 uses
  %i.ka = icmp ult ptr %.3289, %i.jz
  br i1 %i.ka, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kb = getelementptr inbounds nuw i8, ptr %.3289, i64 4 ; 2 uses
  %i.kc = load i32, ptr %.3289, align 4, !tbaa !142 ; 3 uses
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [16 x i8], ptr %3, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !131 ; 2 uses
  %i.kh = icmp slt i32 %i.kg, 0
  br i1 %i.kh, label %bb.at, label %bb.av, !llvm.loop !526

bb.av:                                            ; preds = %bb.au
  %i.ki = getelementptr inbounds nuw i8, ptr %.0281.ph, i64 4
  store i32 %i.kc, ptr %.0281.ph, align 4, !tbaa !142
  %i.kj = add i32 %i.kc, %.0279.ph
  %i.kk = sub i32 %.0409.ph, %.1277
  %i.kl = add i32 %i.kk, %i.kg
  %.sroa.speculated366 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.kl)
  br label %.outer, !llvm.loop !526

bb.aw:                                            ; preds = %bb.at
  %i.km = getelementptr inbounds nuw i8, ptr %.2285449, i64 4 ; 2 uses
  %i.kn = load i32, ptr %i.js, align 4, !tbaa !197
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ko
  %i.kq = ptrtoint ptr %.0281.ph to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = lshr exact i64 %i.ks, 2
  %i.ku = trunc i64 %i.kt to i32                  ; 2 uses
  store i32 %i.ku, ptr %i.jw, align 4, !tbaa !198
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 -1, ptr %i.js, align 4, !tbaa !197
  %i.kw = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !131 ; 2 uses
  %i.ky = sub nsw i32 %.3413447, %i.kx
end_hunk_1
