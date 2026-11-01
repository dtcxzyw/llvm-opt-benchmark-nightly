Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/morph.dispatch?download=true
inline.NumInlined: 2480
inline.NumDeleted: 1141
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpItEENS1_16MorphColumnNoVecEEclEPPKhPhiii:bb.a
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv160.ph
  store i16 %.sroa.speculated.i77.us99.prol, ptr %gep.prol, align 2, !tbaa !81
  %indvars.iv.next161.prol = or disjoint i64 %indvars.iv160.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next161.prol, %vec.epilog.scalar.ph.prol ]
  %i.dj = icmp eq i64 %indvars.iv160.ph, %i.bk
  br i1 %i.dj, label %._crit_edge88.split.us100, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %vec.epilog.scalar.ph ], [ %indvars.iv160.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv160
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !81 ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv160
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !81
  %.sroa.speculated.i76.us98 = call noundef i16 @llvm.umin.i16(i16 %i.dn, i16 %i.dl)
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.06592.us, i64 %indvars.iv160
  store i16 %.sroa.speculated.i76.us98, ptr %i.do, align 2, !tbaa !81
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv160
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !81
  %.sroa.speculated.i77.us99 = call noundef i16 @llvm.umin.i16(i16 %i.dq, i16 %i.dl)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv160
  store i16 %.sroa.speculated.i77.us99, ptr %gep, align 2, !tbaa !81
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 5 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv.next161
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !81 ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv.next161
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !81
  %.sroa.speculated.i76.us98.1 = call noundef i16 @llvm.umin.i16(i16 %i.du, i16 %i.ds)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.06592.us, i64 %indvars.iv.next161
  store i16 %.sroa.speculated.i76.us98.1, ptr %i.dv, align 2, !tbaa !81
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv.next161
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !81
  %.sroa.speculated.i77.us99.1 = call noundef i16 @llvm.umin.i16(i16 %i.dx, i16 %i.ds)
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next161
  store i16 %.sroa.speculated.i77.us99.1, ptr %gep.1, align 2, !tbaa !81
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %exitcond164.not.1 = icmp eq i64 %indvars.iv.next161.1, %wide.trip.count181
  br i1 %exitcond164.not.1, label %._crit_edge88.split.us100, label %vec.epilog.scalar.ph, !llvm.loop !437

._crit_edge88.split.us100:                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dy = add nsw i32 %.07289.us, -2              ; 2 uses
  %i.dz = getelementptr inbounds [2 x i8], ptr %.06592.us, i64 %i.j ; 2 uses
  %i.ea = icmp sgt i32 %.07289.us, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ea, label %iter.check, label %.preheader81, !llvm.loop !434

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.eb = add nsw i32 %4, -2
  %i.ec = call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %i.ed = add nuw i32 %i.ec, 1                    ; 2 uses
  %i.ee = and i32 %i.ed, -2
  %i.ef = sub nsw i32 %i.eb, %i.ee
  %i.eg = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.eh = and i64 %i.eg, 2147483646
  %i.ei = add nuw nsw i64 %i.eh, 2
  %i.ej = mul nsw i64 %i.ei, %i.j
  %scevgep = getelementptr i8, ptr %2, i64 %i.ej
  %i.ek = shl nuw nsw i64 %i.eg, 3
  %i.el = and i64 %i.ek, 17179869168
  %i.em = getelementptr i8, ptr %1, i64 %i.el
  %scevgep158 = getelementptr i8, ptr %i.em, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %._crit_edge88.split.us100, %._crit_edge88.split.us.us.us, %.preheader82.preheader, %bb.a
  %.072.lcssa = phi i32 [ %4, %bb.a ], [ %i.ef, %.preheader82.preheader ], [ %i.az, %._crit_edge88.split.us.us.us ], [ %i.dy, %._crit_edge88.split.us100 ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep158, %.preheader82.preheader ], [ %i.bb, %._crit_edge88.split.us.us.us ], [ %i.bo, %._crit_edge88.split.us100 ] ; 2 uses
  %.065.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader82.preheader ], [ %i.ba, %._crit_edge88.split.us.us.us ], [ %i.dz, %._crit_edge88.split.us100 ] ; 3 uses
  %.065.lcssa256 = ptrtoaddr ptr %.065.lcssa to i64
  %i.en = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.en, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.eo = icmp sgt i32 %5, 0
  %i.ep = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.eo, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %wide.trip.count195 = zext nneg i32 %5 to i64   ; 9 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.eq = shl nsw i64 %i.ep, 1
  %min.iters.check257 = icmp ult i32 %5, 4
  %min.iters.check261 = icmp ult i32 %5, 16
  %i.er = and i64 %wide.trip.count195, 12
  %n.vec263 = and i64 %wide.trip.count195, 2147483632 ; 4 uses
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count195
  %min.epilog.iters.check274 = icmp eq i64 %i.er, 0
  %n.vec277 = and i64 %wide.trip.count195, 2147483644 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec277, %wide.trip.count195
  %xtraiter296 = and i64 %wide.trip.count195, 3   ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br label %iter.check271

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count190 = zext nneg i32 %.fr144 to i64
  %i.es = add nsw i64 %wide.trip.count190, -1     ; 2 uses
  %xtraiter299 = and i64 %i.es, 3                 ; 3 uses
  %i.et = add nsw i32 %.fr144, -2
  %i.eu = icmp ult i32 %i.et, 3
  %unroll_iter304 = and i64 %i.es, -4
  %lcmp.mod301.not = icmp eq i64 %xtraiter299, 0
  %lcmp.mod303 = icmp ne i64 %xtraiter299, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge136.split.us.us
  %.1140.us = phi ptr [ %i.fx, %._crit_edge136.split.us.us ], [ %.065.lcssa, %.preheader.us.preheader ] ; 2 uses
  %.167138.us = phi ptr [ %i.fy, %._crit_edge136.split.us.us ], [ %.066.lcssa, %.preheader.us.preheader ] ; 7 uses
  %.173137.us = phi i32 [ %i.fw, %._crit_edge136.split.us.us ], [ %.072.lcssa, %.preheader.us.preheader ] ; 2 uses
  %i.ev = load ptr, ptr %.167138.us, align 8, !tbaa !87
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 8 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %indvars.iv192
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !81 ; 2 uses
  br i1 %i.eu, label %.epil.preheader298, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.3, %.lr.ph.us.us.new ], [ 1, %.lr.ph.us.us ] ; 5 uses
  %.0132.us.us = phi i16 [ %.sroa.speculated.i78.us.us.3, %.lr.ph.us.us.new ], [ %i.ex, %.lr.ph.us.us ]
  %niter305 = phi i64 [ %niter305.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !87
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv192
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us = call noundef i16 @llvm.umin.i16(i16 %i.fb, i16 %.0132.us.us)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !87
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv192
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.1 = call noundef i16 @llvm.umin.i16(i16 %i.fg, i16 %.sroa.speculated.i78.us.us)
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !87
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv192
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.2 = call noundef i16 @llvm.umin.i16(i16 %i.fl, i16 %.sroa.speculated.i78.us.us.1)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv192
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.3 = call noundef i16 @llvm.umin.i16(i16 %i.fq, i16 %.sroa.speculated.i78.us.us.2) ; 3 uses
  %indvars.iv.next189.3 = add nuw nsw i64 %indvars.iv188, 4 ; 2 uses
  %niter305.next.3 = add nuw i64 %niter305, 4     ; 2 uses
  %niter305.ncmp.3 = icmp eq i64 %niter305.next.3, %unroll_iter304
  br i1 %niter305.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !438

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod301.not, label %._crit_edge.us.us, label %.epil.preheader298

.epil.preheader298:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph.us.us ], [ %indvars.iv.next189.3, %._crit_edge.us.us.unr-lcssa ]
  %.0132.us.us.epil.init = phi i16 [ %i.ex, %.lr.ph.us.us ], [ %.sroa.speculated.i78.us.us.3, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod303)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader298
  %indvars.iv188.epil = phi i64 [ %indvars.iv.next189.epil, %bb.c ], [ %indvars.iv188.epil.init, %.epil.preheader298 ] ; 2 uses
  %.0132.us.us.epil = phi i16 [ %.sroa.speculated.i78.us.us.epil, %bb.c ], [ %.0132.us.us.epil.init, %.epil.preheader298 ]
  %epil.iter300 = phi i64 [ %epil.iter300.next, %bb.c ], [ 0, %.epil.preheader298 ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188.epil
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !87
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv192
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.epil = call noundef i16 @llvm.umin.i16(i16 %i.fu, i16 %.0132.us.us.epil) ; 2 uses
  %indvars.iv.next189.epil = add nuw nsw i64 %indvars.iv188.epil, 1
  %epil.iter300.next = add i64 %epil.iter300, 1   ; 2 uses
  %epil.iter300.cmp.not = icmp eq i64 %epil.iter300.next, %xtraiter299
  br i1 %epil.iter300.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !439

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.sroa.speculated.i78.us.us.lcssa = phi i16 [ %.sroa.speculated.i78.us.us.3, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.i78.us.us.epil, %bb.c ]
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.1140.us, i64 %indvars.iv192
  store i16 %.sroa.speculated.i78.us.us.lcssa, ptr %i.fv, align 2, !tbaa !81
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %._crit_edge136.split.us.us, label %.lr.ph.us.us, !llvm.loop !440

._crit_edge136.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.fw = add nsw i32 %.173137.us, -1
  %i.fx = getelementptr inbounds [2 x i8], ptr %.1140.us, i64 %i.ep
  %i.fy = getelementptr inbounds nuw i8, ptr %.167138.us, i64 8
  %i.fz = icmp sgt i32 %.173137.us, 1
  br i1 %i.fz, label %.preheader.us, label %._crit_edge.split, !llvm.loop !441

iter.check271:                                    ; preds = %.preheader.preheader, %._crit_edge136.split
  %indvar254 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next255, %._crit_edge136.split ] ; 2 uses
  %.1140 = phi ptr [ %.065.lcssa, %.preheader.preheader ], [ %i.hf, %._crit_edge136.split ] ; 8 uses
  %.167138 = phi ptr [ %.066.lcssa, %.preheader.preheader ], [ %i.hg, %._crit_edge136.split ] ; 2 uses
  %.173137 = phi i32 [ %.072.lcssa, %.preheader.preheader ], [ %i.he, %._crit_edge136.split ] ; 2 uses
  %i.ga = load ptr, ptr %.167138, align 8, !tbaa !87 ; 8 uses
  br i1 %min.iters.check257, label %vec.epilog.scalar.ph273.preheader, label %vector.memcheck258

vector.memcheck258:                               ; preds = %iter.check271
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = mul nsw i64 %indvar254, %i.eq
  %i.gd = add i64 %i.gc, %.065.lcssa256
  %i.ge = sub i64 %i.gb, %i.gd
  %diff.check259 = icmp ugt i64 %i.ge, -32
  br i1 %diff.check259, label %vec.epilog.scalar.ph273.preheader, label %vector.main.loop.iter.check260

vector.main.loop.iter.check260:                   ; preds = %vector.memcheck258
  br i1 %min.iters.check261, label %vec.epilog.ph275, label %vector.body264

vector.body264:                                   ; preds = %vector.main.loop.iter.check260, %vector.body264
  %index265 = phi i64 [ %index.next268, %vector.body264 ], [ 0, %vector.main.loop.iter.check260 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index265 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load266 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !81
  %wide.load267 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !81
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %index265 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <8 x i16> %wide.load266, ptr %i.gh, align 2, !tbaa !81
  store <8 x i16> %wide.load267, ptr %i.gi, align 2, !tbaa !81
  %index.next268 = add nuw i64 %index265, 16      ; 2 uses
  %i.gj = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.gj, label %middle.block269, label %vector.body264, !llvm.loop !442

middle.block269:                                  ; preds = %vector.body264
  br i1 %cmp.n270, label %._crit_edge136.split, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block269
  br i1 %min.epilog.iters.check274, label %vec.epilog.scalar.ph273.preheader, label %vec.epilog.ph275, !prof !82

vec.epilog.ph275:                                 ; preds = %vector.main.loop.iter.check260, %vec.epilog.iter.check272
  %vec.epilog.resume.val276 = phi i64 [ %n.vec263, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check260 ]
  br label %vec.epilog.vector.body278

vec.epilog.vector.body278:                        ; preds = %vec.epilog.vector.body278, %vec.epilog.ph275
  %index279 = phi i64 [ %vec.epilog.resume.val276, %vec.epilog.ph275 ], [ %index.next281, %vec.epilog.vector.body278 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index279
  %wide.load280 = load <4 x i16>, ptr %i.gk, align 2, !tbaa !81
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %index279
  store <4 x i16> %wide.load280, ptr %i.gl, align 2, !tbaa !81
  %index.next281 = add nuw i64 %index279, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next281, %n.vec277
  br i1 %i.gm, label %vec.epilog.middle.block282, label %vec.epilog.vector.body278, !llvm.loop !443

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body278
  br i1 %cmp.n283, label %._crit_edge136.split, label %vec.epilog.scalar.ph273.preheader

vec.epilog.scalar.ph273.preheader:                ; preds = %iter.check271, %vector.memcheck258, %vec.epilog.iter.check272, %vec.epilog.middle.block282
  %indvars.iv183.ph = phi i64 [ 0, %iter.check271 ], [ 0, %vector.memcheck258 ], [ %n.vec263, %vec.epilog.iter.check272 ], [ %n.vec277, %vec.epilog.middle.block282 ] ; 3 uses
  br i1 %lcmp.mod297.not, label %vec.epilog.scalar.ph273.prol.loopexit, label %vec.epilog.scalar.ph273.prol

vec.epilog.scalar.ph273.prol:                     ; preds = %vec.epilog.scalar.ph273.preheader, %vec.epilog.scalar.ph273.prol
  %indvars.iv183.prol = phi i64 [ %indvars.iv.next184.prol, %vec.epilog.scalar.ph273.prol ], [ %indvars.iv183.ph, %vec.epilog.scalar.ph273.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph273.prol ], [ 0, %vec.epilog.scalar.ph273.preheader ]
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv183.prol
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !81
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv183.prol
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !81
  %indvars.iv.next184.prol = add nuw nsw i64 %indvars.iv183.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter296
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph273.prol.loopexit, label %vec.epilog.scalar.ph273.prol, !llvm.loop !444

vec.epilog.scalar.ph273.prol.loopexit:            ; preds = %vec.epilog.scalar.ph273.prol, %vec.epilog.scalar.ph273.preheader
  %indvars.iv183.unr = phi i64 [ %indvars.iv183.ph, %vec.epilog.scalar.ph273.preheader ], [ %indvars.iv.next184.prol, %vec.epilog.scalar.ph273.prol ]
  %i.gq = sub nsw i64 %indvars.iv183.ph, %wide.trip.count195
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge136.split, label %vec.epilog.scalar.ph273

vec.epilog.scalar.ph273:                          ; preds = %vec.epilog.scalar.ph273.prol.loopexit, %vec.epilog.scalar.ph273
  %indvars.iv183 = phi i64 [ %indvars.iv.next184.3, %vec.epilog.scalar.ph273 ], [ %indvars.iv183.unr, %vec.epilog.scalar.ph273.prol.loopexit ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv183
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !81
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv183
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !81
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !81
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !81
  %indvars.iv.next184.1 = add nuw nsw i64 %indvars.iv183, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184.1
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !81
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184.1
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !81
  %indvars.iv.next184.2 = add nuw nsw i64 %indvars.iv183, 3 ; 2 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184.2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !81
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184.2
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !81
  %indvars.iv.next184.3 = add nuw nsw i64 %indvars.iv183, 4 ; 2 uses
  %exitcond187.not.3 = icmp eq i64 %indvars.iv.next184.3, %wide.trip.count195
  br i1 %exitcond187.not.3, label %._crit_edge136.split, label %vec.epilog.scalar.ph273, !llvm.loop !445

._crit_edge136.split:                             ; preds = %vec.epilog.scalar.ph273.prol.loopexit, %vec.epilog.scalar.ph273, %vec.epilog.middle.block282, %middle.block269
  %i.he = add nsw i32 %.173137, -1
  %i.hf = getelementptr inbounds [2 x i8], ptr %.1140, i64 %i.ep
  %i.hg = getelementptr inbounds nuw i8, ptr %.167138, i64 8
  %i.hh = icmp sgt i32 %.173137, 1
  %indvar.next255 = add i64 %indvar254, 1
  br i1 %i.hh, label %iter.check271, label %._crit_edge.split, !llvm.loop !441

._crit_edge.split:                                ; preds = %._crit_edge136.split, %._crit_edge136.split.us.us, %.preheader.lr.ph, %.preheader81
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !32
  %.not.i79 = icmp eq i32 %i.hj, 0
  br i1 %.not.i79, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80, label %bb.d

bb.d:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit80:     ; preds = %._crit_edge.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpItEENS1_16MorphColumnNoVecEE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIsEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIsEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #24, !inline_history !446
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIsEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS3_5MinOpIsEENS3_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIsEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIsEENS1_16MorphColumnNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIsEENS1_16MorphColumnNoVecEEclEPPKhPhiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIsEENS1_16MorphColumnNoVecEEclEPPKhPhiiiE25__cv_trace_location_fn561)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIsEENS1_16MorphColumnNoVecEEclEPPKhPhiii:bb.a
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv160.ph
  store i16 %.sroa.speculated.i77.us99.prol, ptr %gep.prol, align 2, !tbaa !81
  %indvars.iv.next161.prol = or disjoint i64 %indvars.iv160.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next161.prol, %vec.epilog.scalar.ph.prol ]
  %i.dj = icmp eq i64 %indvars.iv160.ph, %i.bk
  br i1 %i.dj, label %._crit_edge88.split.us100, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %vec.epilog.scalar.ph ], [ %indvars.iv160.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv160
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !81 ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv160
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !81
  %.sroa.speculated.i76.us98 = call noundef i16 @llvm.smin.i16(i16 %i.dn, i16 %i.dl)
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.06592.us, i64 %indvars.iv160
  store i16 %.sroa.speculated.i76.us98, ptr %i.do, align 2, !tbaa !81
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv160
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !81
  %.sroa.speculated.i77.us99 = call noundef i16 @llvm.smin.i16(i16 %i.dq, i16 %i.dl)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv160
  store i16 %.sroa.speculated.i77.us99, ptr %gep, align 2, !tbaa !81
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 5 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv.next161
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !81 ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv.next161
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !81
  %.sroa.speculated.i76.us98.1 = call noundef i16 @llvm.smin.i16(i16 %i.du, i16 %i.ds)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.06592.us, i64 %indvars.iv.next161
  store i16 %.sroa.speculated.i76.us98.1, ptr %i.dv, align 2, !tbaa !81
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv.next161
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !81
  %.sroa.speculated.i77.us99.1 = call noundef i16 @llvm.smin.i16(i16 %i.dx, i16 %i.ds)
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next161
  store i16 %.sroa.speculated.i77.us99.1, ptr %gep.1, align 2, !tbaa !81
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %exitcond164.not.1 = icmp eq i64 %indvars.iv.next161.1, %wide.trip.count181
  br i1 %exitcond164.not.1, label %._crit_edge88.split.us100, label %vec.epilog.scalar.ph, !llvm.loop !453

._crit_edge88.split.us100:                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dy = add nsw i32 %.07289.us, -2              ; 2 uses
  %i.dz = getelementptr inbounds [2 x i8], ptr %.06592.us, i64 %i.j ; 2 uses
  %i.ea = icmp sgt i32 %.07289.us, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ea, label %iter.check, label %.preheader81, !llvm.loop !450

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.eb = add nsw i32 %4, -2
  %i.ec = call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %i.ed = add nuw i32 %i.ec, 1                    ; 2 uses
  %i.ee = and i32 %i.ed, -2
  %i.ef = sub nsw i32 %i.eb, %i.ee
  %i.eg = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.eh = and i64 %i.eg, 2147483646
  %i.ei = add nuw nsw i64 %i.eh, 2
  %i.ej = mul nsw i64 %i.ei, %i.j
  %scevgep = getelementptr i8, ptr %2, i64 %i.ej
  %i.ek = shl nuw nsw i64 %i.eg, 3
  %i.el = and i64 %i.ek, 17179869168
  %i.em = getelementptr i8, ptr %1, i64 %i.el
  %scevgep158 = getelementptr i8, ptr %i.em, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %._crit_edge88.split.us100, %._crit_edge88.split.us.us.us, %.preheader82.preheader, %bb.a
  %.072.lcssa = phi i32 [ %4, %bb.a ], [ %i.ef, %.preheader82.preheader ], [ %i.az, %._crit_edge88.split.us.us.us ], [ %i.dy, %._crit_edge88.split.us100 ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep158, %.preheader82.preheader ], [ %i.bb, %._crit_edge88.split.us.us.us ], [ %i.bo, %._crit_edge88.split.us100 ] ; 2 uses
  %.065.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader82.preheader ], [ %i.ba, %._crit_edge88.split.us.us.us ], [ %i.dz, %._crit_edge88.split.us100 ] ; 3 uses
  %.065.lcssa256 = ptrtoaddr ptr %.065.lcssa to i64
  %i.en = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.en, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.eo = icmp sgt i32 %5, 0
  %i.ep = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.eo, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %wide.trip.count195 = zext nneg i32 %5 to i64   ; 9 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.eq = shl nsw i64 %i.ep, 1
  %min.iters.check257 = icmp ult i32 %5, 4
  %min.iters.check261 = icmp ult i32 %5, 16
  %i.er = and i64 %wide.trip.count195, 12
  %n.vec263 = and i64 %wide.trip.count195, 2147483632 ; 4 uses
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count195
  %min.epilog.iters.check274 = icmp eq i64 %i.er, 0
  %n.vec277 = and i64 %wide.trip.count195, 2147483644 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec277, %wide.trip.count195
  %xtraiter296 = and i64 %wide.trip.count195, 3   ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br label %iter.check271

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count190 = zext nneg i32 %.fr144 to i64
  %i.es = add nsw i64 %wide.trip.count190, -1     ; 2 uses
  %xtraiter299 = and i64 %i.es, 3                 ; 3 uses
  %i.et = add nsw i32 %.fr144, -2
  %i.eu = icmp ult i32 %i.et, 3
  %unroll_iter304 = and i64 %i.es, -4
  %lcmp.mod301.not = icmp eq i64 %xtraiter299, 0
  %lcmp.mod303 = icmp ne i64 %xtraiter299, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge136.split.us.us
  %.1140.us = phi ptr [ %i.fx, %._crit_edge136.split.us.us ], [ %.065.lcssa, %.preheader.us.preheader ] ; 2 uses
  %.167138.us = phi ptr [ %i.fy, %._crit_edge136.split.us.us ], [ %.066.lcssa, %.preheader.us.preheader ] ; 7 uses
  %.173137.us = phi i32 [ %i.fw, %._crit_edge136.split.us.us ], [ %.072.lcssa, %.preheader.us.preheader ] ; 2 uses
  %i.ev = load ptr, ptr %.167138.us, align 8, !tbaa !87
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 8 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %indvars.iv192
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !81 ; 2 uses
  br i1 %i.eu, label %.epil.preheader298, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.3, %.lr.ph.us.us.new ], [ 1, %.lr.ph.us.us ] ; 5 uses
  %.0132.us.us = phi i16 [ %.sroa.speculated.i78.us.us.3, %.lr.ph.us.us.new ], [ %i.ex, %.lr.ph.us.us ]
  %niter305 = phi i64 [ %niter305.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !87
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv192
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us = call noundef i16 @llvm.smin.i16(i16 %i.fb, i16 %.0132.us.us)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !87
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv192
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.1 = call noundef i16 @llvm.smin.i16(i16 %i.fg, i16 %.sroa.speculated.i78.us.us)
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !87
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv192
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.2 = call noundef i16 @llvm.smin.i16(i16 %i.fl, i16 %.sroa.speculated.i78.us.us.1)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv192
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.3 = call noundef i16 @llvm.smin.i16(i16 %i.fq, i16 %.sroa.speculated.i78.us.us.2) ; 3 uses
  %indvars.iv.next189.3 = add nuw nsw i64 %indvars.iv188, 4 ; 2 uses
  %niter305.next.3 = add nuw i64 %niter305, 4     ; 2 uses
  %niter305.ncmp.3 = icmp eq i64 %niter305.next.3, %unroll_iter304
  br i1 %niter305.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !454

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod301.not, label %._crit_edge.us.us, label %.epil.preheader298

.epil.preheader298:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph.us.us ], [ %indvars.iv.next189.3, %._crit_edge.us.us.unr-lcssa ]
  %.0132.us.us.epil.init = phi i16 [ %i.ex, %.lr.ph.us.us ], [ %.sroa.speculated.i78.us.us.3, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod303)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader298
  %indvars.iv188.epil = phi i64 [ %indvars.iv.next189.epil, %bb.c ], [ %indvars.iv188.epil.init, %.epil.preheader298 ] ; 2 uses
  %.0132.us.us.epil = phi i16 [ %.sroa.speculated.i78.us.us.epil, %bb.c ], [ %.0132.us.us.epil.init, %.epil.preheader298 ]
  %epil.iter300 = phi i64 [ %epil.iter300.next, %bb.c ], [ 0, %.epil.preheader298 ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188.epil
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !87
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv192
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.epil = call noundef i16 @llvm.smin.i16(i16 %i.fu, i16 %.0132.us.us.epil) ; 2 uses
  %indvars.iv.next189.epil = add nuw nsw i64 %indvars.iv188.epil, 1
  %epil.iter300.next = add i64 %epil.iter300, 1   ; 2 uses
  %epil.iter300.cmp.not = icmp eq i64 %epil.iter300.next, %xtraiter299
  br i1 %epil.iter300.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !455

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.sroa.speculated.i78.us.us.lcssa = phi i16 [ %.sroa.speculated.i78.us.us.3, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.i78.us.us.epil, %bb.c ]
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.1140.us, i64 %indvars.iv192
  store i16 %.sroa.speculated.i78.us.us.lcssa, ptr %i.fv, align 2, !tbaa !81
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %._crit_edge136.split.us.us, label %.lr.ph.us.us, !llvm.loop !456

._crit_edge136.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.fw = add nsw i32 %.173137.us, -1
  %i.fx = getelementptr inbounds [2 x i8], ptr %.1140.us, i64 %i.ep
  %i.fy = getelementptr inbounds nuw i8, ptr %.167138.us, i64 8
  %i.fz = icmp sgt i32 %.173137.us, 1
  br i1 %i.fz, label %.preheader.us, label %._crit_edge.split, !llvm.loop !457

iter.check271:                                    ; preds = %.preheader.preheader, %._crit_edge136.split
  %indvar254 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next255, %._crit_edge136.split ] ; 2 uses
  %.1140 = phi ptr [ %.065.lcssa, %.preheader.preheader ], [ %i.hf, %._crit_edge136.split ] ; 8 uses
  %.167138 = phi ptr [ %.066.lcssa, %.preheader.preheader ], [ %i.hg, %._crit_edge136.split ] ; 2 uses
  %.173137 = phi i32 [ %.072.lcssa, %.preheader.preheader ], [ %i.he, %._crit_edge136.split ] ; 2 uses
  %i.ga = load ptr, ptr %.167138, align 8, !tbaa !87 ; 8 uses
  br i1 %min.iters.check257, label %vec.epilog.scalar.ph273.preheader, label %vector.memcheck258

vector.memcheck258:                               ; preds = %iter.check271
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = mul nsw i64 %indvar254, %i.eq
  %i.gd = add i64 %i.gc, %.065.lcssa256
  %i.ge = sub i64 %i.gb, %i.gd
  %diff.check259 = icmp ugt i64 %i.ge, -32
  br i1 %diff.check259, label %vec.epilog.scalar.ph273.preheader, label %vector.main.loop.iter.check260

vector.main.loop.iter.check260:                   ; preds = %vector.memcheck258
  br i1 %min.iters.check261, label %vec.epilog.ph275, label %vector.body264

vector.body264:                                   ; preds = %vector.main.loop.iter.check260, %vector.body264
  %index265 = phi i64 [ %index.next268, %vector.body264 ], [ 0, %vector.main.loop.iter.check260 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index265 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load266 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !81
  %wide.load267 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !81
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %index265 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <8 x i16> %wide.load266, ptr %i.gh, align 2, !tbaa !81
  store <8 x i16> %wide.load267, ptr %i.gi, align 2, !tbaa !81
  %index.next268 = add nuw i64 %index265, 16      ; 2 uses
  %i.gj = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.gj, label %middle.block269, label %vector.body264, !llvm.loop !458

middle.block269:                                  ; preds = %vector.body264
  br i1 %cmp.n270, label %._crit_edge136.split, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block269
  br i1 %min.epilog.iters.check274, label %vec.epilog.scalar.ph273.preheader, label %vec.epilog.ph275, !prof !82

vec.epilog.ph275:                                 ; preds = %vector.main.loop.iter.check260, %vec.epilog.iter.check272
  %vec.epilog.resume.val276 = phi i64 [ %n.vec263, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check260 ]
  br label %vec.epilog.vector.body278

vec.epilog.vector.body278:                        ; preds = %vec.epilog.vector.body278, %vec.epilog.ph275
  %index279 = phi i64 [ %vec.epilog.resume.val276, %vec.epilog.ph275 ], [ %index.next281, %vec.epilog.vector.body278 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index279
  %wide.load280 = load <4 x i16>, ptr %i.gk, align 2, !tbaa !81
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %index279
  store <4 x i16> %wide.load280, ptr %i.gl, align 2, !tbaa !81
  %index.next281 = add nuw i64 %index279, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next281, %n.vec277
  br i1 %i.gm, label %vec.epilog.middle.block282, label %vec.epilog.vector.body278, !llvm.loop !459

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body278
  br i1 %cmp.n283, label %._crit_edge136.split, label %vec.epilog.scalar.ph273.preheader

vec.epilog.scalar.ph273.preheader:                ; preds = %iter.check271, %vector.memcheck258, %vec.epilog.iter.check272, %vec.epilog.middle.block282
  %indvars.iv183.ph = phi i64 [ 0, %iter.check271 ], [ 0, %vector.memcheck258 ], [ %n.vec263, %vec.epilog.iter.check272 ], [ %n.vec277, %vec.epilog.middle.block282 ] ; 3 uses
  br i1 %lcmp.mod297.not, label %vec.epilog.scalar.ph273.prol.loopexit, label %vec.epilog.scalar.ph273.prol

vec.epilog.scalar.ph273.prol:                     ; preds = %vec.epilog.scalar.ph273.preheader, %vec.epilog.scalar.ph273.prol
  %indvars.iv183.prol = phi i64 [ %indvars.iv.next184.prol, %vec.epilog.scalar.ph273.prol ], [ %indvars.iv183.ph, %vec.epilog.scalar.ph273.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph273.prol ], [ 0, %vec.epilog.scalar.ph273.preheader ]
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv183.prol
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !81
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv183.prol
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !81
  %indvars.iv.next184.prol = add nuw nsw i64 %indvars.iv183.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter296
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph273.prol.loopexit, label %vec.epilog.scalar.ph273.prol, !llvm.loop !460

vec.epilog.scalar.ph273.prol.loopexit:            ; preds = %vec.epilog.scalar.ph273.prol, %vec.epilog.scalar.ph273.preheader
  %indvars.iv183.unr = phi i64 [ %indvars.iv183.ph, %vec.epilog.scalar.ph273.preheader ], [ %indvars.iv.next184.prol, %vec.epilog.scalar.ph273.prol ]
  %i.gq = sub nsw i64 %indvars.iv183.ph, %wide.trip.count195
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge136.split, label %vec.epilog.scalar.ph273

vec.epilog.scalar.ph273:                          ; preds = %vec.epilog.scalar.ph273.prol.loopexit, %vec.epilog.scalar.ph273
  %indvars.iv183 = phi i64 [ %indvars.iv.next184.3, %vec.epilog.scalar.ph273 ], [ %indvars.iv183.unr, %vec.epilog.scalar.ph273.prol.loopexit ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv183
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !81
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv183
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !81
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !81
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !81
  %indvars.iv.next184.1 = add nuw nsw i64 %indvars.iv183, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184.1
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !81
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184.1
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !81
  %indvars.iv.next184.2 = add nuw nsw i64 %indvars.iv183, 3 ; 2 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184.2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !81
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184.2
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !81
  %indvars.iv.next184.3 = add nuw nsw i64 %indvars.iv183, 4 ; 2 uses
  %exitcond187.not.3 = icmp eq i64 %indvars.iv.next184.3, %wide.trip.count195
  br i1 %exitcond187.not.3, label %._crit_edge136.split, label %vec.epilog.scalar.ph273, !llvm.loop !461

._crit_edge136.split:                             ; preds = %vec.epilog.scalar.ph273.prol.loopexit, %vec.epilog.scalar.ph273, %vec.epilog.middle.block282, %middle.block269
  %i.he = add nsw i32 %.173137, -1
  %i.hf = getelementptr inbounds [2 x i8], ptr %.1140, i64 %i.ep
  %i.hg = getelementptr inbounds nuw i8, ptr %.167138, i64 8
  %i.hh = icmp sgt i32 %.173137, 1
  %indvar.next255 = add i64 %indvar254, 1
  br i1 %i.hh, label %iter.check271, label %._crit_edge.split, !llvm.loop !457

._crit_edge.split:                                ; preds = %._crit_edge136.split, %._crit_edge136.split.us.us, %.preheader.lr.ph, %.preheader81
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !32
  %.not.i79 = icmp eq i32 %i.hj, 0
  br i1 %.not.i79, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80, label %bb.d

bb.d:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit80:     ; preds = %._crit_edge.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIsEENS1_16MorphColumnNoVecEE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIfEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIfEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #24, !inline_history !462
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIfEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS3_5MinOpIfEENS3_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIfEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIfEENS1_16MorphColumnNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIfEENS1_16MorphColumnNoVecEEclEPPKhPhiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIfEENS1_16MorphColumnNoVecEEclEPPKhPhiiiE25__cv_trace_location_fn561)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIfEENS1_16MorphColumnNoVecEEclEPPKhPhiii:bb.a
  %i.bq = mul nsw i64 %indvar, %i.bb
  %i.br = sub i64 %i.bq, %i.a
  %i.bs = add i64 %i.br, %i.bj
  %i.bt = add i64 %i.bs, -1
  %diff.check231 = icmp ult i64 %i.bt, 15
  %conflict.rdx232 = or i1 %conflict.rdx230, %diff.check231
  %i.bu = add i64 %i.ba, %i.bm                    ; 3 uses
  %i.bv = sub i64 %i.bk, %i.bu
  %diff.check233 = icmp ugt i64 %i.bv, -16
  %conflict.rdx234 = or i1 %conflict.rdx232, %diff.check233
  %i.bw = sub i64 %i.bl, %i.bu
  %diff.check235 = icmp ugt i64 %i.bw, -16
  %conflict.rdx236 = or i1 %conflict.rdx234, %diff.check235
  %i.bx = sub i64 %i.bj, %i.bu
  %diff.check237 = icmp ugt i64 %i.bx, -16
  %conflict.rdx238 = or i1 %conflict.rdx236, %diff.check237
  br i1 %conflict.rdx238, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  %wide.load = load <4 x float>, ptr %i.by, align 4, !tbaa !84 ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index
  %wide.load239 = load <4 x float>, ptr %i.bz, align 4, !tbaa !84 ; 2 uses
  %i.ca = fcmp olt <4 x float> %wide.load239, %wide.load
  %i.cb = select <4 x i1> %i.ca, <4 x float> %wide.load239, <4 x float> %wide.load
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.06592.us, i64 %index
  store <4 x float> %i.cb, ptr %i.cc, align 4, !tbaa !84
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index
  %wide.load240 = load <4 x float>, ptr %i.cd, align 4, !tbaa !84 ; 2 uses
  %i.ce = fcmp olt <4 x float> %wide.load240, %wide.load
  %i.cf = select <4 x i1> %i.ce, <4 x float> %wide.load240, <4 x float> %wide.load
  %i.cg = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.cf, ptr %i.cg, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !466

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge88.split.us100, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader82.us, %middle.block
  %indvars.iv160.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader82.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %scalar.ph ], [ %indvars.iv160.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv160
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !84 ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv160
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !84 ; 2 uses
  %i.cm = fcmp olt float %i.cl, %i.cj
  %.sroa.speculated.i76.us98 = select i1 %i.cm, float %i.cl, float %i.cj
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.06592.us, i64 %indvars.iv160
  store float %.sroa.speculated.i76.us98, ptr %i.cn, align 4, !tbaa !84
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv160
  %i.cp = load float, ptr %i.co, align 4, !tbaa !84 ; 2 uses
  %i.cq = fcmp olt float %i.cp, %i.cj
  %.sroa.speculated.i77.us99 = select i1 %i.cq, float %i.cp, float %i.cj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv160
  store float %.sroa.speculated.i77.us99, ptr %gep, align 4, !tbaa !84
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count183
  br i1 %exitcond164.not, label %._crit_edge88.split.us100, label %scalar.ph, !llvm.loop !467

._crit_edge88.split.us100:                        ; preds = %scalar.ph, %middle.block
  %i.cr = add nsw i32 %.07289.us, -2              ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %.06592.us, i64 %i.j ; 2 uses
  %i.ct = icmp sgt i32 %.07289.us, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ct, label %.preheader82.us, label %.preheader81, !llvm.loop !465

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.cu = add nsw i32 %4, -2
  %i.cv = call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %i.cw = add nuw i32 %i.cv, 1                    ; 2 uses
  %i.cx = and i32 %i.cw, -2
  %i.cy = sub nsw i32 %i.cu, %i.cx
  %i.cz = lshr i32 %i.cw, 1
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 4
  %i.dd = mul nsw i64 %i.dc, %i.j
  %scevgep = getelementptr i8, ptr %2, i64 %i.dd
  %i.de = shl nuw nsw i64 %i.da, 4
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %scevgep158 = getelementptr i8, ptr %i.df, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %._crit_edge88.split.us100, %._crit_edge88.split.us.us.us, %.preheader82.preheader, %bb.a
  %.072.lcssa = phi i32 [ %4, %bb.a ], [ %i.cy, %.preheader82.preheader ], [ %i.au, %._crit_edge88.split.us.us.us ], [ %i.cr, %._crit_edge88.split.us100 ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep158, %.preheader82.preheader ], [ %i.aw, %._crit_edge88.split.us.us.us ], [ %i.bh, %._crit_edge88.split.us100 ] ; 2 uses
  %.065.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader82.preheader ], [ %i.av, %._crit_edge88.split.us.us.us ], [ %i.cs, %._crit_edge88.split.us100 ] ; 3 uses
  %.065.lcssa248 = ptrtoaddr ptr %.065.lcssa to i64
  %i.dg = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.dg, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.dh = icmp sgt i32 %5, 0
  %i.di = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.dh, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %wide.trip.count198 = zext nneg i32 %5 to i64   ; 6 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.dj = shl nsw i64 %i.di, 2
  %min.iters.check250 = icmp ult i32 %5, 8
  %n.vec254 = and i64 %wide.trip.count198, 2147483640 ; 3 uses
  %cmp.n261 = icmp eq i64 %n.vec254, %wide.trip.count198
  %xtraiter272 = and i64 %wide.trip.count198, 3   ; 2 uses
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count193 = zext nneg i32 %.fr144 to i64
  %i.dk = add nsw i64 %wide.trip.count193, -1     ; 3 uses
  %xtraiter275 = and i64 %i.dk, 1
  %i.dl = icmp eq i32 %.fr144, 2
  %unroll_iter279 = and i64 %i.dk, -2
  %lcmp.mod276.not = icmp eq i64 %xtraiter275, 0
  %lcmp.mod278 = trunc i64 %i.dk to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge136.split.us.us
  %.1140.us = phi ptr [ %i.eh, %._crit_edge136.split.us.us ], [ %.065.lcssa, %.preheader.us.preheader ] ; 2 uses
  %.167138.us = phi ptr [ %i.ei, %._crit_edge136.split.us.us ], [ %.066.lcssa, %.preheader.us.preheader ] ; 5 uses
  %.173137.us = phi i32 [ %i.eg, %._crit_edge136.split.us.us ], [ %.072.lcssa, %.preheader.us.preheader ] ; 2 uses
  %i.dm = load ptr, ptr %.167138.us, align 8, !tbaa !89
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv195
  %i.do = load float, ptr %i.dn, align 4, !tbaa !84 ; 2 uses
  br i1 %i.dl, label %.epil.preheader274, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv190 = phi i64 [ %indvars.iv.next191.1, %.lr.ph.us.us.new ], [ 1, %.lr.ph.us.us ] ; 3 uses
  %.0132.us.us = phi float [ %.sroa.speculated.i78.us.us.1, %.lr.ph.us.us.new ], [ %i.do, %.lr.ph.us.us ] ; 2 uses
  %niter280 = phi i64 [ %niter280.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !89
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv195
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !84 ; 2 uses
  %i.dt = fcmp olt float %i.ds, %.0132.us.us
  %.sroa.speculated.i78.us.us = select i1 %i.dt, float %i.ds, float %.0132.us.us ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !89
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv195
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !84 ; 2 uses
  %i.dz = fcmp olt float %i.dy, %.sroa.speculated.i78.us.us
  %.sroa.speculated.i78.us.us.1 = select i1 %i.dz, float %i.dy, float %.sroa.speculated.i78.us.us ; 3 uses
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %niter280.next.1 = add nuw i64 %niter280, 2     ; 2 uses
  %niter280.ncmp.1 = icmp eq i64 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !468

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod276.not, label %._crit_edge.us.us, label %.epil.preheader274

.epil.preheader274:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv190.epil.init = phi i64 [ 1, %.lr.ph.us.us ], [ %indvars.iv.next191.1, %._crit_edge.us.us.unr-lcssa ]
  %.0132.us.us.epil.init = phi float [ %i.do, %.lr.ph.us.us ], [ %.sroa.speculated.i78.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190.epil.init
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !89
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv195
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !84 ; 2 uses
  %i.ee = fcmp olt float %i.ed, %.0132.us.us.epil.init
  %.sroa.speculated.i78.us.us.epil = select i1 %i.ee, float %i.ed, float %.0132.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader274
  %.sroa.speculated.i78.us.us.lcssa = phi float [ %.sroa.speculated.i78.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.i78.us.us.epil, %.epil.preheader274 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.1140.us, i64 %indvars.iv195
  store float %.sroa.speculated.i78.us.us.lcssa, ptr %i.ef, align 4, !tbaa !84
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge136.split.us.us, label %.lr.ph.us.us, !llvm.loop !469

._crit_edge136.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.eg = add nsw i32 %.173137.us, -1
  %i.eh = getelementptr inbounds [4 x i8], ptr %.1140.us, i64 %i.di
  %i.ei = getelementptr inbounds nuw i8, ptr %.167138.us, i64 8
  %i.ej = icmp sgt i32 %.173137.us, 1
  br i1 %i.ej, label %.preheader.us, label %._crit_edge.split, !llvm.loop !470

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge136.split
  %indvar246 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next247, %._crit_edge136.split ] ; 2 uses
  %.1140 = phi ptr [ %.065.lcssa, %.preheader.preheader ], [ %i.fm, %._crit_edge136.split ] ; 7 uses
  %.167138 = phi ptr [ %.066.lcssa, %.preheader.preheader ], [ %i.fn, %._crit_edge136.split ] ; 2 uses
  %.173137 = phi i32 [ %.072.lcssa, %.preheader.preheader ], [ %i.fl, %._crit_edge136.split ] ; 2 uses
  %i.ek = load ptr, ptr %.167138, align 8, !tbaa !89 ; 7 uses
  br i1 %min.iters.check250, label %scalar.ph249.preheader, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.preheader
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = mul nsw i64 %indvar246, %i.dj
  %i.en = add i64 %i.em, %.065.lcssa248
  %i.eo = sub i64 %i.el, %i.en
  %diff.check252 = icmp ugt i64 %i.eo, -32
  br i1 %diff.check252, label %scalar.ph249.preheader, label %vector.body255

vector.body255:                                   ; preds = %vector.memcheck251, %vector.body255
  %index256 = phi i64 [ %index.next259, %vector.body255 ], [ 0, %vector.memcheck251 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index256 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load257 = load <4 x float>, ptr %i.ep, align 4, !tbaa !84
  %wide.load258 = load <4 x float>, ptr %i.eq, align 4, !tbaa !84
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %index256 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x float> %wide.load257, ptr %i.er, align 4, !tbaa !84
  store <4 x float> %wide.load258, ptr %i.es, align 4, !tbaa !84
  %index.next259 = add nuw i64 %index256, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next259, %n.vec254
  br i1 %i.et, label %middle.block260, label %vector.body255, !llvm.loop !471

middle.block260:                                  ; preds = %vector.body255
  br i1 %cmp.n261, label %._crit_edge136.split, label %scalar.ph249.preheader

scalar.ph249.preheader:                           ; preds = %vector.memcheck251, %.preheader, %middle.block260
  %indvars.iv185.ph = phi i64 [ 0, %vector.memcheck251 ], [ 0, %.preheader ], [ %n.vec254, %middle.block260 ] ; 3 uses
  br i1 %lcmp.mod273.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol

scalar.ph249.prol:                                ; preds = %scalar.ph249.preheader, %scalar.ph249.prol
  %indvars.iv185.prol = phi i64 [ %indvars.iv.next186.prol, %scalar.ph249.prol ], [ %indvars.iv185.ph, %scalar.ph249.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph249.prol ], [ 0, %scalar.ph249.preheader ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv185.prol
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !84
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv185.prol
  store float %i.ev, ptr %i.ew, align 4, !tbaa !84
  %indvars.iv.next186.prol = add nuw nsw i64 %indvars.iv185.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter272
  br i1 %prol.iter.cmp.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol, !llvm.loop !472

scalar.ph249.prol.loopexit:                       ; preds = %scalar.ph249.prol, %scalar.ph249.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %scalar.ph249.preheader ], [ %indvars.iv.next186.prol, %scalar.ph249.prol ]
  %i.ex = sub nsw i64 %indvars.iv185.ph, %wide.trip.count198
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %._crit_edge136.split, label %scalar.ph249

scalar.ph249:                                     ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.3, %scalar.ph249 ], [ %indvars.iv185.unr, %scalar.ph249.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv185
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !84
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv185
  store float %i.fa, ptr %i.fb, align 4, !tbaa !84
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next186
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !84
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv.next186
  store float %i.fd, ptr %i.fe, align 4, !tbaa !84
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next186.1
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !84
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv.next186.1
  store float %i.fg, ptr %i.fh, align 4, !tbaa !84
  %indvars.iv.next186.2 = add nuw nsw i64 %indvars.iv185, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next186.2
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !84
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv.next186.2
  store float %i.fj, ptr %i.fk, align 4, !tbaa !84
  %indvars.iv.next186.3 = add nuw nsw i64 %indvars.iv185, 4 ; 2 uses
  %exitcond189.not.3 = icmp eq i64 %indvars.iv.next186.3, %wide.trip.count198
  br i1 %exitcond189.not.3, label %._crit_edge136.split, label %scalar.ph249, !llvm.loop !473

._crit_edge136.split:                             ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249, %middle.block260
  %i.fl = add nsw i32 %.173137, -1
  %i.fm = getelementptr inbounds [4 x i8], ptr %.1140, i64 %i.di
  %i.fn = getelementptr inbounds nuw i8, ptr %.167138, i64 8
  %i.fo = icmp sgt i32 %.173137, 1
  %indvar.next247 = add i64 %indvar246, 1
  br i1 %i.fo, label %.preheader, label %._crit_edge.split, !llvm.loop !470

._crit_edge.split:                                ; preds = %._crit_edge136.split, %._crit_edge136.split.us.us, %.preheader.lr.ph, %.preheader81
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !32
  %.not.i79 = icmp eq i32 %i.fq, 0
  br i1 %.not.i79, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80, label %bb.b

bb.b:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit80:     ; preds = %._crit_edge.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIfEENS1_16MorphColumnNoVecEE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIdEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIdEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #24, !inline_history !474
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIdEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS3_5MinOpIdEENS3_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MinOpIdEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIdEENS1_16MorphColumnNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIdEENS1_16MorphColumnNoVecEEclEPPKhPhiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIdEENS1_16MorphColumnNoVecEEclEPPKhPhiiiE25__cv_trace_location_fn561)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  %.fr144 = freeze i32 %i.c                       ; 8 uses
  %i.d = ashr i32 %3, 3                           ; 4 uses
  %i.e = icmp sgt i32 %.fr144, 1                  ; 2 uses
  %i.f = icmp sgt i32 %4, 1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.preheader82.lr.ph, label %.preheader81

.preheader82.lr.ph:                               ; preds = %bb.a
  %i.h = icmp sgt i32 %5, 0
  %i.i = shl nsw i32 %i.d, 1
  %i.j = sext i32 %i.i to i64                     ; 5 uses
  br i1 %i.h, label %.preheader82.lr.ph.split.us, label %.preheader82.preheader

.preheader82.lr.ph.split.us:                      ; preds = %.preheader82.lr.ph
  %i.k = icmp samesign ugt i32 %.fr144, 2
  %wide.trip.count183 = zext nneg i32 %5 to i64   ; 4 uses
  br i1 %i.k, label %.preheader82.us.us.preheader, label %.preheader82.us.preheader

.preheader82.us.us.preheader:                     ; preds = %.preheader82.lr.ph.split.us
  %i.l = zext nneg i32 %.fr144 to i64
  %i.m = sext i32 %i.d to i64
  %wide.trip.count178 = zext nneg i32 %.fr144 to i64 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIdEENS1_16MorphColumnNoVecEEclEPPKhPhiii:bb.a
  %i.bq = mul nsw i64 %indvar, %i.bb
  %i.br = sub i64 %i.bq, %i.a
  %i.bs = add i64 %i.br, %i.bj
  %i.bt = add i64 %i.bs, -1
  %diff.check231 = icmp ult i64 %i.bt, 15
  %conflict.rdx232 = or i1 %conflict.rdx230, %diff.check231
  %i.bu = add i64 %i.ba, %i.bm                    ; 3 uses
  %i.bv = sub i64 %i.bk, %i.bu
  %diff.check233 = icmp ugt i64 %i.bv, -16
  %conflict.rdx234 = or i1 %conflict.rdx232, %diff.check233
  %i.bw = sub i64 %i.bl, %i.bu
  %diff.check235 = icmp ugt i64 %i.bw, -16
  %conflict.rdx236 = or i1 %conflict.rdx234, %diff.check235
  %i.bx = sub i64 %i.bj, %i.bu
  %diff.check237 = icmp ugt i64 %i.bx, -16
  %conflict.rdx238 = or i1 %conflict.rdx236, %diff.check237
  br i1 %conflict.rdx238, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index
  %wide.load = load <2 x double>, ptr %i.by, align 8, !tbaa !65 ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load239 = load <2 x double>, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  %i.ca = fcmp olt <2 x double> %wide.load239, %wide.load
  %i.cb = select <2 x i1> %i.ca, <2 x double> %wide.load239, <2 x double> %wide.load
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.06592.us, i64 %index
  store <2 x double> %i.cb, ptr %i.cc, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index
  %wide.load240 = load <2 x double>, ptr %i.cd, align 8, !tbaa !65 ; 2 uses
  %i.ce = fcmp olt <2 x double> %wide.load240, %wide.load
  %i.cf = select <2 x i1> %i.ce, <2 x double> %wide.load240, <2 x double> %wide.load
  %i.cg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.cf, ptr %i.cg, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !478

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge88.split.us100, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader82.us, %middle.block
  %indvars.iv160.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader82.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %scalar.ph ], [ %indvars.iv160.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv160
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !65 ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv160
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !65 ; 2 uses
  %i.cm = fcmp olt double %i.cl, %i.cj
  %.sroa.speculated.i76.us98 = select i1 %i.cm, double %i.cl, double %i.cj
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.06592.us, i64 %indvars.iv160
  store double %.sroa.speculated.i76.us98, ptr %i.cn, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv160
  %i.cp = load double, ptr %i.co, align 8, !tbaa !65 ; 2 uses
  %i.cq = fcmp olt double %i.cp, %i.cj
  %.sroa.speculated.i77.us99 = select i1 %i.cq, double %i.cp, double %i.cj
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv160
  store double %.sroa.speculated.i77.us99, ptr %gep, align 8, !tbaa !65
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count183
  br i1 %exitcond164.not, label %._crit_edge88.split.us100, label %scalar.ph, !llvm.loop !479

._crit_edge88.split.us100:                        ; preds = %scalar.ph, %middle.block
  %i.cr = add nsw i32 %.07289.us, -2              ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %.06592.us, i64 %i.j ; 2 uses
  %i.ct = icmp sgt i32 %.07289.us, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ct, label %.preheader82.us, label %.preheader81, !llvm.loop !477

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.cu = add nsw i32 %4, -2
  %i.cv = call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %i.cw = add nuw i32 %i.cv, 1                    ; 2 uses
  %i.cx = and i32 %i.cw, -2
  %i.cy = sub nsw i32 %i.cu, %i.cx
  %i.cz = lshr i32 %i.cw, 1
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 8
  %i.dd = mul nsw i64 %i.dc, %i.j
  %scevgep = getelementptr i8, ptr %2, i64 %i.dd
  %i.de = shl nuw nsw i64 %i.da, 4
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %scevgep158 = getelementptr i8, ptr %i.df, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %._crit_edge88.split.us100, %._crit_edge88.split.us.us.us, %.preheader82.preheader, %bb.a
  %.072.lcssa = phi i32 [ %4, %bb.a ], [ %i.cy, %.preheader82.preheader ], [ %i.au, %._crit_edge88.split.us.us.us ], [ %i.cr, %._crit_edge88.split.us100 ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep158, %.preheader82.preheader ], [ %i.aw, %._crit_edge88.split.us.us.us ], [ %i.bh, %._crit_edge88.split.us100 ] ; 2 uses
  %.065.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader82.preheader ], [ %i.av, %._crit_edge88.split.us.us.us ], [ %i.cs, %._crit_edge88.split.us100 ] ; 3 uses
  %.065.lcssa248 = ptrtoaddr ptr %.065.lcssa to i64
  %i.dg = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.dg, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.dh = icmp sgt i32 %5, 0
  %i.di = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.dh, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %wide.trip.count198 = zext nneg i32 %5 to i64   ; 6 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.dj = shl nsw i64 %i.di, 3
  %min.iters.check250 = icmp ult i32 %5, 4
  %n.vec254 = and i64 %wide.trip.count198, 2147483644 ; 3 uses
  %cmp.n261 = icmp eq i64 %n.vec254, %wide.trip.count198
  %xtraiter272 = and i64 %wide.trip.count198, 3   ; 2 uses
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count193 = zext nneg i32 %.fr144 to i64
  %i.dk = add nsw i64 %wide.trip.count193, -1     ; 3 uses
  %xtraiter275 = and i64 %i.dk, 1
  %i.dl = icmp eq i32 %.fr144, 2
  %unroll_iter279 = and i64 %i.dk, -2
  %lcmp.mod276.not = icmp eq i64 %xtraiter275, 0
  %lcmp.mod278 = trunc i64 %i.dk to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge136.split.us.us
  %.1140.us = phi ptr [ %i.eh, %._crit_edge136.split.us.us ], [ %.065.lcssa, %.preheader.us.preheader ] ; 2 uses
  %.167138.us = phi ptr [ %i.ei, %._crit_edge136.split.us.us ], [ %.066.lcssa, %.preheader.us.preheader ] ; 5 uses
  %.173137.us = phi i32 [ %i.eg, %._crit_edge136.split.us.us ], [ %.072.lcssa, %.preheader.us.preheader ] ; 2 uses
  %i.dm = load ptr, ptr %.167138.us, align 8, !tbaa !91
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv195
  %i.do = load double, ptr %i.dn, align 8, !tbaa !65 ; 2 uses
  br i1 %i.dl, label %.epil.preheader274, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv190 = phi i64 [ %indvars.iv.next191.1, %.lr.ph.us.us.new ], [ 1, %.lr.ph.us.us ] ; 3 uses
  %.0132.us.us = phi double [ %.sroa.speculated.i78.us.us.1, %.lr.ph.us.us.new ], [ %i.do, %.lr.ph.us.us ] ; 2 uses
  %niter280 = phi i64 [ %niter280.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !91
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv195
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !65 ; 2 uses
  %i.dt = fcmp olt double %i.ds, %.0132.us.us
  %.sroa.speculated.i78.us.us = select i1 %i.dt, double %i.ds, double %.0132.us.us ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !91
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv195
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !65 ; 2 uses
  %i.dz = fcmp olt double %i.dy, %.sroa.speculated.i78.us.us
  %.sroa.speculated.i78.us.us.1 = select i1 %i.dz, double %i.dy, double %.sroa.speculated.i78.us.us ; 3 uses
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %niter280.next.1 = add nuw i64 %niter280, 2     ; 2 uses
  %niter280.ncmp.1 = icmp eq i64 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !480

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod276.not, label %._crit_edge.us.us, label %.epil.preheader274

.epil.preheader274:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv190.epil.init = phi i64 [ 1, %.lr.ph.us.us ], [ %indvars.iv.next191.1, %._crit_edge.us.us.unr-lcssa ]
  %.0132.us.us.epil.init = phi double [ %i.do, %.lr.ph.us.us ], [ %.sroa.speculated.i78.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190.epil.init
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !91
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv195
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !65 ; 2 uses
  %i.ee = fcmp olt double %i.ed, %.0132.us.us.epil.init
  %.sroa.speculated.i78.us.us.epil = select i1 %i.ee, double %i.ed, double %.0132.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader274
  %.sroa.speculated.i78.us.us.lcssa = phi double [ %.sroa.speculated.i78.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.i78.us.us.epil, %.epil.preheader274 ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.1140.us, i64 %indvars.iv195
  store double %.sroa.speculated.i78.us.us.lcssa, ptr %i.ef, align 8, !tbaa !65
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge136.split.us.us, label %.lr.ph.us.us, !llvm.loop !481

._crit_edge136.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.eg = add nsw i32 %.173137.us, -1
  %i.eh = getelementptr inbounds [8 x i8], ptr %.1140.us, i64 %i.di
  %i.ei = getelementptr inbounds nuw i8, ptr %.167138.us, i64 8
  %i.ej = icmp sgt i32 %.173137.us, 1
  br i1 %i.ej, label %.preheader.us, label %._crit_edge.split, !llvm.loop !482

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge136.split
  %indvar246 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next247, %._crit_edge136.split ] ; 2 uses
  %.1140 = phi ptr [ %.065.lcssa, %.preheader.preheader ], [ %i.fm, %._crit_edge136.split ] ; 7 uses
  %.167138 = phi ptr [ %.066.lcssa, %.preheader.preheader ], [ %i.fn, %._crit_edge136.split ] ; 2 uses
  %.173137 = phi i32 [ %.072.lcssa, %.preheader.preheader ], [ %i.fl, %._crit_edge136.split ] ; 2 uses
  %i.ek = load ptr, ptr %.167138, align 8, !tbaa !91 ; 7 uses
  br i1 %min.iters.check250, label %scalar.ph249.preheader, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.preheader
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = mul nsw i64 %indvar246, %i.dj
  %i.en = add i64 %i.em, %.065.lcssa248
  %i.eo = sub i64 %i.el, %i.en
  %diff.check252 = icmp ugt i64 %i.eo, -32
  br i1 %diff.check252, label %scalar.ph249.preheader, label %vector.body255

vector.body255:                                   ; preds = %vector.memcheck251, %vector.body255
  %index256 = phi i64 [ %index.next259, %vector.body255 ], [ 0, %vector.memcheck251 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %index256 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load257 = load <2 x double>, ptr %i.ep, align 8, !tbaa !65
  %wide.load258 = load <2 x double>, ptr %i.eq, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %index256 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x double> %wide.load257, ptr %i.er, align 8, !tbaa !65
  store <2 x double> %wide.load258, ptr %i.es, align 8, !tbaa !65
  %index.next259 = add nuw i64 %index256, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next259, %n.vec254
  br i1 %i.et, label %middle.block260, label %vector.body255, !llvm.loop !483

middle.block260:                                  ; preds = %vector.body255
  br i1 %cmp.n261, label %._crit_edge136.split, label %scalar.ph249.preheader

scalar.ph249.preheader:                           ; preds = %vector.memcheck251, %.preheader, %middle.block260
  %indvars.iv185.ph = phi i64 [ 0, %vector.memcheck251 ], [ 0, %.preheader ], [ %n.vec254, %middle.block260 ] ; 3 uses
  br i1 %lcmp.mod273.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol

scalar.ph249.prol:                                ; preds = %scalar.ph249.preheader, %scalar.ph249.prol
  %indvars.iv185.prol = phi i64 [ %indvars.iv.next186.prol, %scalar.ph249.prol ], [ %indvars.iv185.ph, %scalar.ph249.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph249.prol ], [ 0, %scalar.ph249.preheader ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv185.prol
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !65
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv185.prol
  store double %i.ev, ptr %i.ew, align 8, !tbaa !65
  %indvars.iv.next186.prol = add nuw nsw i64 %indvars.iv185.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter272
  br i1 %prol.iter.cmp.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol, !llvm.loop !484

scalar.ph249.prol.loopexit:                       ; preds = %scalar.ph249.prol, %scalar.ph249.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %scalar.ph249.preheader ], [ %indvars.iv.next186.prol, %scalar.ph249.prol ]
  %i.ex = sub nsw i64 %indvars.iv185.ph, %wide.trip.count198
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %._crit_edge136.split, label %scalar.ph249

scalar.ph249:                                     ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.3, %scalar.ph249 ], [ %indvars.iv185.unr, %scalar.ph249.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv185
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !65
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv185
  store double %i.fa, ptr %i.fb, align 8, !tbaa !65
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next186
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !65
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv.next186
  store double %i.fd, ptr %i.fe, align 8, !tbaa !65
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next186.1
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !65
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv.next186.1
  store double %i.fg, ptr %i.fh, align 8, !tbaa !65
  %indvars.iv.next186.2 = add nuw nsw i64 %indvars.iv185, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next186.2
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !65
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv.next186.2
  store double %i.fj, ptr %i.fk, align 8, !tbaa !65
  %indvars.iv.next186.3 = add nuw nsw i64 %indvars.iv185, 4 ; 2 uses
  %exitcond189.not.3 = icmp eq i64 %indvars.iv.next186.3, %wide.trip.count198
  br i1 %exitcond189.not.3, label %._crit_edge136.split, label %scalar.ph249, !llvm.loop !485

._crit_edge136.split:                             ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249, %middle.block260
  %i.fl = add nsw i32 %.173137, -1
  %i.fm = getelementptr inbounds [8 x i8], ptr %.1140, i64 %i.di
  %i.fn = getelementptr inbounds nuw i8, ptr %.167138, i64 8
  %i.fo = icmp sgt i32 %.173137, 1
  %indvar.next247 = add i64 %indvar246, 1
  br i1 %i.fo, label %.preheader, label %._crit_edge.split, !llvm.loop !482

._crit_edge.split:                                ; preds = %._crit_edge136.split, %._crit_edge136.split.us.us, %.preheader.lr.ph, %.preheader81
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !32
  %.not.i79 = icmp eq i32 %i.fq, 0
  br i1 %.not.i79, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80, label %bb.b

bb.b:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit80:     ; preds = %._crit_edge.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MinOpIdEENS1_16MorphColumnNoVecEE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIhEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIhEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #24, !inline_history !486
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIhEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS3_5MaxOpIhEENS3_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIhEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIhEENS1_16MorphColumnNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIhEENS1_16MorphColumnNoVecEEclEPPKhPhiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIhEENS1_16MorphColumnNoVecEEclEPPKhPhiiiE25__cv_trace_location_fn561)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %.fr144 = freeze i32 %i.b                       ; 7 uses
  %i.c = sext i32 %3 to i64                       ; 4 uses
  %i.d = icmp sgt i32 %.fr144, 1                  ; 2 uses
  %i.e = icmp sgt i32 %4, 1
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %.preheader82.lr.ph, label %.preheader81

.preheader82.lr.ph:                               ; preds = %bb.a
  %i.g = icmp sgt i32 %5, 0
  %i.h = shl i32 %3, 1
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  br i1 %i.g, label %.preheader82.lr.ph.split.us, label %.preheader82.preheader

.preheader82.lr.ph.split.us:                      ; preds = %.preheader82.lr.ph
  %i.j = icmp samesign ugt i32 %.fr144, 2
  br i1 %i.j, label %.preheader82.us.us.preheader, label %.preheader82.us.preheader

.preheader82.us.us.preheader:                     ; preds = %.preheader82.lr.ph.split.us
  %i.k = zext nneg i32 %.fr144 to i64
  %wide.trip.count181 = zext nneg i32 %5 to i64
  %wide.trip.count176 = zext nneg i32 %.fr144 to i64
  %i.l = add nsw i64 %wide.trip.count176, -2      ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpItEENS1_16MorphColumnNoVecEEclEPPKhPhiii:bb.a
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv160.ph
  store i16 %.sroa.speculated.i77.us99.prol, ptr %gep.prol, align 2, !tbaa !81
  %indvars.iv.next161.prol = or disjoint i64 %indvars.iv160.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next161.prol, %vec.epilog.scalar.ph.prol ]
  %i.dj = icmp eq i64 %indvars.iv160.ph, %i.bk
  br i1 %i.dj, label %._crit_edge88.split.us100, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %vec.epilog.scalar.ph ], [ %indvars.iv160.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv160
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !81 ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv160
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !81
  %.sroa.speculated.i76.us98 = call noundef i16 @llvm.umax.i16(i16 %i.dl, i16 %i.dn)
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.06592.us, i64 %indvars.iv160
  store i16 %.sroa.speculated.i76.us98, ptr %i.do, align 2, !tbaa !81
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv160
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !81
  %.sroa.speculated.i77.us99 = call noundef i16 @llvm.umax.i16(i16 %i.dl, i16 %i.dq)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv160
  store i16 %.sroa.speculated.i77.us99, ptr %gep, align 2, !tbaa !81
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 5 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv.next161
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !81 ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv.next161
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !81
  %.sroa.speculated.i76.us98.1 = call noundef i16 @llvm.umax.i16(i16 %i.ds, i16 %i.du)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.06592.us, i64 %indvars.iv.next161
  store i16 %.sroa.speculated.i76.us98.1, ptr %i.dv, align 2, !tbaa !81
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv.next161
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !81
  %.sroa.speculated.i77.us99.1 = call noundef i16 @llvm.umax.i16(i16 %i.ds, i16 %i.dx)
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next161
  store i16 %.sroa.speculated.i77.us99.1, ptr %gep.1, align 2, !tbaa !81
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %exitcond164.not.1 = icmp eq i64 %indvars.iv.next161.1, %wide.trip.count181
  br i1 %exitcond164.not.1, label %._crit_edge88.split.us100, label %vec.epilog.scalar.ph, !llvm.loop !503

._crit_edge88.split.us100:                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dy = add nsw i32 %.07289.us, -2              ; 2 uses
  %i.dz = getelementptr inbounds [2 x i8], ptr %.06592.us, i64 %i.j ; 2 uses
  %i.ea = icmp sgt i32 %.07289.us, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ea, label %iter.check, label %.preheader81, !llvm.loop !500

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.eb = add nsw i32 %4, -2
  %i.ec = call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %i.ed = add nuw i32 %i.ec, 1                    ; 2 uses
  %i.ee = and i32 %i.ed, -2
  %i.ef = sub nsw i32 %i.eb, %i.ee
  %i.eg = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.eh = and i64 %i.eg, 2147483646
  %i.ei = add nuw nsw i64 %i.eh, 2
  %i.ej = mul nsw i64 %i.ei, %i.j
  %scevgep = getelementptr i8, ptr %2, i64 %i.ej
  %i.ek = shl nuw nsw i64 %i.eg, 3
  %i.el = and i64 %i.ek, 17179869168
  %i.em = getelementptr i8, ptr %1, i64 %i.el
  %scevgep158 = getelementptr i8, ptr %i.em, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %._crit_edge88.split.us100, %._crit_edge88.split.us.us.us, %.preheader82.preheader, %bb.a
  %.072.lcssa = phi i32 [ %4, %bb.a ], [ %i.ef, %.preheader82.preheader ], [ %i.az, %._crit_edge88.split.us.us.us ], [ %i.dy, %._crit_edge88.split.us100 ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep158, %.preheader82.preheader ], [ %i.bb, %._crit_edge88.split.us.us.us ], [ %i.bo, %._crit_edge88.split.us100 ] ; 2 uses
  %.065.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader82.preheader ], [ %i.ba, %._crit_edge88.split.us.us.us ], [ %i.dz, %._crit_edge88.split.us100 ] ; 3 uses
  %.065.lcssa256 = ptrtoaddr ptr %.065.lcssa to i64
  %i.en = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.en, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.eo = icmp sgt i32 %5, 0
  %i.ep = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.eo, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %wide.trip.count195 = zext nneg i32 %5 to i64   ; 9 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.eq = shl nsw i64 %i.ep, 1
  %min.iters.check257 = icmp ult i32 %5, 4
  %min.iters.check261 = icmp ult i32 %5, 16
  %i.er = and i64 %wide.trip.count195, 12
  %n.vec263 = and i64 %wide.trip.count195, 2147483632 ; 4 uses
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count195
  %min.epilog.iters.check274 = icmp eq i64 %i.er, 0
  %n.vec277 = and i64 %wide.trip.count195, 2147483644 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec277, %wide.trip.count195
  %xtraiter296 = and i64 %wide.trip.count195, 3   ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br label %iter.check271

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count190 = zext nneg i32 %.fr144 to i64
  %i.es = add nsw i64 %wide.trip.count190, -1     ; 2 uses
  %xtraiter299 = and i64 %i.es, 3                 ; 3 uses
  %i.et = add nsw i32 %.fr144, -2
  %i.eu = icmp ult i32 %i.et, 3
  %unroll_iter304 = and i64 %i.es, -4
  %lcmp.mod301.not = icmp eq i64 %xtraiter299, 0
  %lcmp.mod303 = icmp ne i64 %xtraiter299, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge136.split.us.us
  %.1140.us = phi ptr [ %i.fx, %._crit_edge136.split.us.us ], [ %.065.lcssa, %.preheader.us.preheader ] ; 2 uses
  %.167138.us = phi ptr [ %i.fy, %._crit_edge136.split.us.us ], [ %.066.lcssa, %.preheader.us.preheader ] ; 7 uses
  %.173137.us = phi i32 [ %i.fw, %._crit_edge136.split.us.us ], [ %.072.lcssa, %.preheader.us.preheader ] ; 2 uses
  %i.ev = load ptr, ptr %.167138.us, align 8, !tbaa !87
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 8 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %indvars.iv192
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !81 ; 2 uses
  br i1 %i.eu, label %.epil.preheader298, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.3, %.lr.ph.us.us.new ], [ 1, %.lr.ph.us.us ] ; 5 uses
  %.0132.us.us = phi i16 [ %.sroa.speculated.i78.us.us.3, %.lr.ph.us.us.new ], [ %i.ex, %.lr.ph.us.us ]
  %niter305 = phi i64 [ %niter305.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !87
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv192
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us = call noundef i16 @llvm.umax.i16(i16 %.0132.us.us, i16 %i.fb)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !87
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv192
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.1 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i78.us.us, i16 %i.fg)
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !87
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv192
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.2 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i78.us.us.1, i16 %i.fl)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv192
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.3 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i78.us.us.2, i16 %i.fq) ; 3 uses
  %indvars.iv.next189.3 = add nuw nsw i64 %indvars.iv188, 4 ; 2 uses
  %niter305.next.3 = add nuw i64 %niter305, 4     ; 2 uses
  %niter305.ncmp.3 = icmp eq i64 %niter305.next.3, %unroll_iter304
  br i1 %niter305.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !504

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod301.not, label %._crit_edge.us.us, label %.epil.preheader298

.epil.preheader298:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph.us.us ], [ %indvars.iv.next189.3, %._crit_edge.us.us.unr-lcssa ]
  %.0132.us.us.epil.init = phi i16 [ %i.ex, %.lr.ph.us.us ], [ %.sroa.speculated.i78.us.us.3, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod303)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader298
  %indvars.iv188.epil = phi i64 [ %indvars.iv.next189.epil, %bb.c ], [ %indvars.iv188.epil.init, %.epil.preheader298 ] ; 2 uses
  %.0132.us.us.epil = phi i16 [ %.sroa.speculated.i78.us.us.epil, %bb.c ], [ %.0132.us.us.epil.init, %.epil.preheader298 ]
  %epil.iter300 = phi i64 [ %epil.iter300.next, %bb.c ], [ 0, %.epil.preheader298 ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188.epil
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !87
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv192
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.epil = call noundef i16 @llvm.umax.i16(i16 %.0132.us.us.epil, i16 %i.fu) ; 2 uses
  %indvars.iv.next189.epil = add nuw nsw i64 %indvars.iv188.epil, 1
  %epil.iter300.next = add i64 %epil.iter300, 1   ; 2 uses
  %epil.iter300.cmp.not = icmp eq i64 %epil.iter300.next, %xtraiter299
  br i1 %epil.iter300.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !505

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.sroa.speculated.i78.us.us.lcssa = phi i16 [ %.sroa.speculated.i78.us.us.3, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.i78.us.us.epil, %bb.c ]
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.1140.us, i64 %indvars.iv192
  store i16 %.sroa.speculated.i78.us.us.lcssa, ptr %i.fv, align 2, !tbaa !81
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %._crit_edge136.split.us.us, label %.lr.ph.us.us, !llvm.loop !506

._crit_edge136.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.fw = add nsw i32 %.173137.us, -1
  %i.fx = getelementptr inbounds [2 x i8], ptr %.1140.us, i64 %i.ep
  %i.fy = getelementptr inbounds nuw i8, ptr %.167138.us, i64 8
  %i.fz = icmp sgt i32 %.173137.us, 1
  br i1 %i.fz, label %.preheader.us, label %._crit_edge.split, !llvm.loop !507

iter.check271:                                    ; preds = %.preheader.preheader, %._crit_edge136.split
  %indvar254 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next255, %._crit_edge136.split ] ; 2 uses
  %.1140 = phi ptr [ %.065.lcssa, %.preheader.preheader ], [ %i.hf, %._crit_edge136.split ] ; 8 uses
  %.167138 = phi ptr [ %.066.lcssa, %.preheader.preheader ], [ %i.hg, %._crit_edge136.split ] ; 2 uses
  %.173137 = phi i32 [ %.072.lcssa, %.preheader.preheader ], [ %i.he, %._crit_edge136.split ] ; 2 uses
  %i.ga = load ptr, ptr %.167138, align 8, !tbaa !87 ; 8 uses
  br i1 %min.iters.check257, label %vec.epilog.scalar.ph273.preheader, label %vector.memcheck258

vector.memcheck258:                               ; preds = %iter.check271
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = mul nsw i64 %indvar254, %i.eq
  %i.gd = add i64 %i.gc, %.065.lcssa256
  %i.ge = sub i64 %i.gb, %i.gd
  %diff.check259 = icmp ugt i64 %i.ge, -32
  br i1 %diff.check259, label %vec.epilog.scalar.ph273.preheader, label %vector.main.loop.iter.check260

vector.main.loop.iter.check260:                   ; preds = %vector.memcheck258
  br i1 %min.iters.check261, label %vec.epilog.ph275, label %vector.body264

vector.body264:                                   ; preds = %vector.main.loop.iter.check260, %vector.body264
  %index265 = phi i64 [ %index.next268, %vector.body264 ], [ 0, %vector.main.loop.iter.check260 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index265 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load266 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !81
  %wide.load267 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !81
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %index265 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <8 x i16> %wide.load266, ptr %i.gh, align 2, !tbaa !81
  store <8 x i16> %wide.load267, ptr %i.gi, align 2, !tbaa !81
  %index.next268 = add nuw i64 %index265, 16      ; 2 uses
  %i.gj = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.gj, label %middle.block269, label %vector.body264, !llvm.loop !508

middle.block269:                                  ; preds = %vector.body264
  br i1 %cmp.n270, label %._crit_edge136.split, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block269
  br i1 %min.epilog.iters.check274, label %vec.epilog.scalar.ph273.preheader, label %vec.epilog.ph275, !prof !82

vec.epilog.ph275:                                 ; preds = %vector.main.loop.iter.check260, %vec.epilog.iter.check272
  %vec.epilog.resume.val276 = phi i64 [ %n.vec263, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check260 ]
  br label %vec.epilog.vector.body278

vec.epilog.vector.body278:                        ; preds = %vec.epilog.vector.body278, %vec.epilog.ph275
  %index279 = phi i64 [ %vec.epilog.resume.val276, %vec.epilog.ph275 ], [ %index.next281, %vec.epilog.vector.body278 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index279
  %wide.load280 = load <4 x i16>, ptr %i.gk, align 2, !tbaa !81
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %index279
  store <4 x i16> %wide.load280, ptr %i.gl, align 2, !tbaa !81
  %index.next281 = add nuw i64 %index279, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next281, %n.vec277
  br i1 %i.gm, label %vec.epilog.middle.block282, label %vec.epilog.vector.body278, !llvm.loop !509

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body278
  br i1 %cmp.n283, label %._crit_edge136.split, label %vec.epilog.scalar.ph273.preheader

vec.epilog.scalar.ph273.preheader:                ; preds = %iter.check271, %vector.memcheck258, %vec.epilog.iter.check272, %vec.epilog.middle.block282
  %indvars.iv183.ph = phi i64 [ 0, %iter.check271 ], [ 0, %vector.memcheck258 ], [ %n.vec263, %vec.epilog.iter.check272 ], [ %n.vec277, %vec.epilog.middle.block282 ] ; 3 uses
  br i1 %lcmp.mod297.not, label %vec.epilog.scalar.ph273.prol.loopexit, label %vec.epilog.scalar.ph273.prol

vec.epilog.scalar.ph273.prol:                     ; preds = %vec.epilog.scalar.ph273.preheader, %vec.epilog.scalar.ph273.prol
  %indvars.iv183.prol = phi i64 [ %indvars.iv.next184.prol, %vec.epilog.scalar.ph273.prol ], [ %indvars.iv183.ph, %vec.epilog.scalar.ph273.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph273.prol ], [ 0, %vec.epilog.scalar.ph273.preheader ]
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv183.prol
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !81
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv183.prol
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !81
  %indvars.iv.next184.prol = add nuw nsw i64 %indvars.iv183.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter296
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph273.prol.loopexit, label %vec.epilog.scalar.ph273.prol, !llvm.loop !510

vec.epilog.scalar.ph273.prol.loopexit:            ; preds = %vec.epilog.scalar.ph273.prol, %vec.epilog.scalar.ph273.preheader
  %indvars.iv183.unr = phi i64 [ %indvars.iv183.ph, %vec.epilog.scalar.ph273.preheader ], [ %indvars.iv.next184.prol, %vec.epilog.scalar.ph273.prol ]
  %i.gq = sub nsw i64 %indvars.iv183.ph, %wide.trip.count195
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge136.split, label %vec.epilog.scalar.ph273

vec.epilog.scalar.ph273:                          ; preds = %vec.epilog.scalar.ph273.prol.loopexit, %vec.epilog.scalar.ph273
  %indvars.iv183 = phi i64 [ %indvars.iv.next184.3, %vec.epilog.scalar.ph273 ], [ %indvars.iv183.unr, %vec.epilog.scalar.ph273.prol.loopexit ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv183
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !81
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv183
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !81
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !81
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !81
  %indvars.iv.next184.1 = add nuw nsw i64 %indvars.iv183, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184.1
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !81
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184.1
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !81
  %indvars.iv.next184.2 = add nuw nsw i64 %indvars.iv183, 3 ; 2 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184.2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !81
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184.2
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !81
  %indvars.iv.next184.3 = add nuw nsw i64 %indvars.iv183, 4 ; 2 uses
  %exitcond187.not.3 = icmp eq i64 %indvars.iv.next184.3, %wide.trip.count195
  br i1 %exitcond187.not.3, label %._crit_edge136.split, label %vec.epilog.scalar.ph273, !llvm.loop !511

._crit_edge136.split:                             ; preds = %vec.epilog.scalar.ph273.prol.loopexit, %vec.epilog.scalar.ph273, %vec.epilog.middle.block282, %middle.block269
  %i.he = add nsw i32 %.173137, -1
  %i.hf = getelementptr inbounds [2 x i8], ptr %.1140, i64 %i.ep
  %i.hg = getelementptr inbounds nuw i8, ptr %.167138, i64 8
  %i.hh = icmp sgt i32 %.173137, 1
  %indvar.next255 = add i64 %indvar254, 1
  br i1 %i.hh, label %iter.check271, label %._crit_edge.split, !llvm.loop !507

._crit_edge.split:                                ; preds = %._crit_edge136.split, %._crit_edge136.split.us.us, %.preheader.lr.ph, %.preheader81
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !32
  %.not.i79 = icmp eq i32 %i.hj, 0
  br i1 %.not.i79, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80, label %bb.d

bb.d:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit80:     ; preds = %._crit_edge.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpItEENS1_16MorphColumnNoVecEE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIsEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIsEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #24, !inline_history !512
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIsEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS3_5MaxOpIsEENS3_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIsEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIsEENS1_16MorphColumnNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIsEENS1_16MorphColumnNoVecEEclEPPKhPhiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIsEENS1_16MorphColumnNoVecEEclEPPKhPhiiiE25__cv_trace_location_fn561)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
begin_hunk_5_@_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIsEENS1_16MorphColumnNoVecEEclEPPKhPhiii:bb.a
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv160.ph
  store i16 %.sroa.speculated.i77.us99.prol, ptr %gep.prol, align 2, !tbaa !81
  %indvars.iv.next161.prol = or disjoint i64 %indvars.iv160.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next161.prol, %vec.epilog.scalar.ph.prol ]
  %i.dj = icmp eq i64 %indvars.iv160.ph, %i.bk
  br i1 %i.dj, label %._crit_edge88.split.us100, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %vec.epilog.scalar.ph ], [ %indvars.iv160.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv160
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !81 ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv160
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !81
  %.sroa.speculated.i76.us98 = call noundef i16 @llvm.smax.i16(i16 %i.dl, i16 %i.dn)
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.06592.us, i64 %indvars.iv160
  store i16 %.sroa.speculated.i76.us98, ptr %i.do, align 2, !tbaa !81
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv160
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !81
  %.sroa.speculated.i77.us99 = call noundef i16 @llvm.smax.i16(i16 %i.dl, i16 %i.dq)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv160
  store i16 %.sroa.speculated.i77.us99, ptr %gep, align 2, !tbaa !81
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 5 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv.next161
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !81 ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv.next161
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !81
  %.sroa.speculated.i76.us98.1 = call noundef i16 @llvm.smax.i16(i16 %i.ds, i16 %i.du)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.06592.us, i64 %indvars.iv.next161
  store i16 %.sroa.speculated.i76.us98.1, ptr %i.dv, align 2, !tbaa !81
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv.next161
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !81
  %.sroa.speculated.i77.us99.1 = call noundef i16 @llvm.smax.i16(i16 %i.ds, i16 %i.dx)
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next161
  store i16 %.sroa.speculated.i77.us99.1, ptr %gep.1, align 2, !tbaa !81
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %exitcond164.not.1 = icmp eq i64 %indvars.iv.next161.1, %wide.trip.count181
  br i1 %exitcond164.not.1, label %._crit_edge88.split.us100, label %vec.epilog.scalar.ph, !llvm.loop !519

._crit_edge88.split.us100:                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dy = add nsw i32 %.07289.us, -2              ; 2 uses
  %i.dz = getelementptr inbounds [2 x i8], ptr %.06592.us, i64 %i.j ; 2 uses
  %i.ea = icmp sgt i32 %.07289.us, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ea, label %iter.check, label %.preheader81, !llvm.loop !516

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.eb = add nsw i32 %4, -2
  %i.ec = call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %i.ed = add nuw i32 %i.ec, 1                    ; 2 uses
  %i.ee = and i32 %i.ed, -2
  %i.ef = sub nsw i32 %i.eb, %i.ee
  %i.eg = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.eh = and i64 %i.eg, 2147483646
  %i.ei = add nuw nsw i64 %i.eh, 2
  %i.ej = mul nsw i64 %i.ei, %i.j
  %scevgep = getelementptr i8, ptr %2, i64 %i.ej
  %i.ek = shl nuw nsw i64 %i.eg, 3
  %i.el = and i64 %i.ek, 17179869168
  %i.em = getelementptr i8, ptr %1, i64 %i.el
  %scevgep158 = getelementptr i8, ptr %i.em, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %._crit_edge88.split.us100, %._crit_edge88.split.us.us.us, %.preheader82.preheader, %bb.a
  %.072.lcssa = phi i32 [ %4, %bb.a ], [ %i.ef, %.preheader82.preheader ], [ %i.az, %._crit_edge88.split.us.us.us ], [ %i.dy, %._crit_edge88.split.us100 ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep158, %.preheader82.preheader ], [ %i.bb, %._crit_edge88.split.us.us.us ], [ %i.bo, %._crit_edge88.split.us100 ] ; 2 uses
  %.065.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader82.preheader ], [ %i.ba, %._crit_edge88.split.us.us.us ], [ %i.dz, %._crit_edge88.split.us100 ] ; 3 uses
  %.065.lcssa256 = ptrtoaddr ptr %.065.lcssa to i64
  %i.en = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.en, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.eo = icmp sgt i32 %5, 0
  %i.ep = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.eo, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %wide.trip.count195 = zext nneg i32 %5 to i64   ; 9 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.eq = shl nsw i64 %i.ep, 1
  %min.iters.check257 = icmp ult i32 %5, 4
  %min.iters.check261 = icmp ult i32 %5, 16
  %i.er = and i64 %wide.trip.count195, 12
  %n.vec263 = and i64 %wide.trip.count195, 2147483632 ; 4 uses
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count195
  %min.epilog.iters.check274 = icmp eq i64 %i.er, 0
  %n.vec277 = and i64 %wide.trip.count195, 2147483644 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec277, %wide.trip.count195
  %xtraiter296 = and i64 %wide.trip.count195, 3   ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br label %iter.check271

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count190 = zext nneg i32 %.fr144 to i64
  %i.es = add nsw i64 %wide.trip.count190, -1     ; 2 uses
  %xtraiter299 = and i64 %i.es, 3                 ; 3 uses
  %i.et = add nsw i32 %.fr144, -2
  %i.eu = icmp ult i32 %i.et, 3
  %unroll_iter304 = and i64 %i.es, -4
  %lcmp.mod301.not = icmp eq i64 %xtraiter299, 0
  %lcmp.mod303 = icmp ne i64 %xtraiter299, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge136.split.us.us
  %.1140.us = phi ptr [ %i.fx, %._crit_edge136.split.us.us ], [ %.065.lcssa, %.preheader.us.preheader ] ; 2 uses
  %.167138.us = phi ptr [ %i.fy, %._crit_edge136.split.us.us ], [ %.066.lcssa, %.preheader.us.preheader ] ; 7 uses
  %.173137.us = phi i32 [ %i.fw, %._crit_edge136.split.us.us ], [ %.072.lcssa, %.preheader.us.preheader ] ; 2 uses
  %i.ev = load ptr, ptr %.167138.us, align 8, !tbaa !87
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 8 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %indvars.iv192
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !81 ; 2 uses
  br i1 %i.eu, label %.epil.preheader298, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.3, %.lr.ph.us.us.new ], [ 1, %.lr.ph.us.us ] ; 5 uses
  %.0132.us.us = phi i16 [ %.sroa.speculated.i78.us.us.3, %.lr.ph.us.us.new ], [ %i.ex, %.lr.ph.us.us ]
  %niter305 = phi i64 [ %niter305.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !87
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv192
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us = call noundef i16 @llvm.smax.i16(i16 %.0132.us.us, i16 %i.fb)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !87
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv192
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.1 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i78.us.us, i16 %i.fg)
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !87
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv192
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.2 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i78.us.us.1, i16 %i.fl)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv192
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.3 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i78.us.us.2, i16 %i.fq) ; 3 uses
  %indvars.iv.next189.3 = add nuw nsw i64 %indvars.iv188, 4 ; 2 uses
  %niter305.next.3 = add nuw i64 %niter305, 4     ; 2 uses
  %niter305.ncmp.3 = icmp eq i64 %niter305.next.3, %unroll_iter304
  br i1 %niter305.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !520

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod301.not, label %._crit_edge.us.us, label %.epil.preheader298

.epil.preheader298:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph.us.us ], [ %indvars.iv.next189.3, %._crit_edge.us.us.unr-lcssa ]
  %.0132.us.us.epil.init = phi i16 [ %i.ex, %.lr.ph.us.us ], [ %.sroa.speculated.i78.us.us.3, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod303)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader298
  %indvars.iv188.epil = phi i64 [ %indvars.iv.next189.epil, %bb.c ], [ %indvars.iv188.epil.init, %.epil.preheader298 ] ; 2 uses
  %.0132.us.us.epil = phi i16 [ %.sroa.speculated.i78.us.us.epil, %bb.c ], [ %.0132.us.us.epil.init, %.epil.preheader298 ]
  %epil.iter300 = phi i64 [ %epil.iter300.next, %bb.c ], [ 0, %.epil.preheader298 ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv188.epil
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !87
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv192
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !81
  %.sroa.speculated.i78.us.us.epil = call noundef i16 @llvm.smax.i16(i16 %.0132.us.us.epil, i16 %i.fu) ; 2 uses
  %indvars.iv.next189.epil = add nuw nsw i64 %indvars.iv188.epil, 1
  %epil.iter300.next = add i64 %epil.iter300, 1   ; 2 uses
  %epil.iter300.cmp.not = icmp eq i64 %epil.iter300.next, %xtraiter299
  br i1 %epil.iter300.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !521

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.sroa.speculated.i78.us.us.lcssa = phi i16 [ %.sroa.speculated.i78.us.us.3, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.i78.us.us.epil, %bb.c ]
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.1140.us, i64 %indvars.iv192
  store i16 %.sroa.speculated.i78.us.us.lcssa, ptr %i.fv, align 2, !tbaa !81
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %._crit_edge136.split.us.us, label %.lr.ph.us.us, !llvm.loop !522

._crit_edge136.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.fw = add nsw i32 %.173137.us, -1
  %i.fx = getelementptr inbounds [2 x i8], ptr %.1140.us, i64 %i.ep
  %i.fy = getelementptr inbounds nuw i8, ptr %.167138.us, i64 8
  %i.fz = icmp sgt i32 %.173137.us, 1
  br i1 %i.fz, label %.preheader.us, label %._crit_edge.split, !llvm.loop !523

iter.check271:                                    ; preds = %.preheader.preheader, %._crit_edge136.split
  %indvar254 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next255, %._crit_edge136.split ] ; 2 uses
  %.1140 = phi ptr [ %.065.lcssa, %.preheader.preheader ], [ %i.hf, %._crit_edge136.split ] ; 8 uses
  %.167138 = phi ptr [ %.066.lcssa, %.preheader.preheader ], [ %i.hg, %._crit_edge136.split ] ; 2 uses
  %.173137 = phi i32 [ %.072.lcssa, %.preheader.preheader ], [ %i.he, %._crit_edge136.split ] ; 2 uses
  %i.ga = load ptr, ptr %.167138, align 8, !tbaa !87 ; 8 uses
  br i1 %min.iters.check257, label %vec.epilog.scalar.ph273.preheader, label %vector.memcheck258

vector.memcheck258:                               ; preds = %iter.check271
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = mul nsw i64 %indvar254, %i.eq
  %i.gd = add i64 %i.gc, %.065.lcssa256
  %i.ge = sub i64 %i.gb, %i.gd
  %diff.check259 = icmp ugt i64 %i.ge, -32
  br i1 %diff.check259, label %vec.epilog.scalar.ph273.preheader, label %vector.main.loop.iter.check260

vector.main.loop.iter.check260:                   ; preds = %vector.memcheck258
  br i1 %min.iters.check261, label %vec.epilog.ph275, label %vector.body264

vector.body264:                                   ; preds = %vector.main.loop.iter.check260, %vector.body264
  %index265 = phi i64 [ %index.next268, %vector.body264 ], [ 0, %vector.main.loop.iter.check260 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index265 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load266 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !81
  %wide.load267 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !81
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %index265 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <8 x i16> %wide.load266, ptr %i.gh, align 2, !tbaa !81
  store <8 x i16> %wide.load267, ptr %i.gi, align 2, !tbaa !81
  %index.next268 = add nuw i64 %index265, 16      ; 2 uses
  %i.gj = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.gj, label %middle.block269, label %vector.body264, !llvm.loop !524

middle.block269:                                  ; preds = %vector.body264
  br i1 %cmp.n270, label %._crit_edge136.split, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block269
  br i1 %min.epilog.iters.check274, label %vec.epilog.scalar.ph273.preheader, label %vec.epilog.ph275, !prof !82

vec.epilog.ph275:                                 ; preds = %vector.main.loop.iter.check260, %vec.epilog.iter.check272
  %vec.epilog.resume.val276 = phi i64 [ %n.vec263, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check260 ]
  br label %vec.epilog.vector.body278

vec.epilog.vector.body278:                        ; preds = %vec.epilog.vector.body278, %vec.epilog.ph275
  %index279 = phi i64 [ %vec.epilog.resume.val276, %vec.epilog.ph275 ], [ %index.next281, %vec.epilog.vector.body278 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index279
  %wide.load280 = load <4 x i16>, ptr %i.gk, align 2, !tbaa !81
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %index279
  store <4 x i16> %wide.load280, ptr %i.gl, align 2, !tbaa !81
  %index.next281 = add nuw i64 %index279, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next281, %n.vec277
  br i1 %i.gm, label %vec.epilog.middle.block282, label %vec.epilog.vector.body278, !llvm.loop !525

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body278
  br i1 %cmp.n283, label %._crit_edge136.split, label %vec.epilog.scalar.ph273.preheader

vec.epilog.scalar.ph273.preheader:                ; preds = %iter.check271, %vector.memcheck258, %vec.epilog.iter.check272, %vec.epilog.middle.block282
  %indvars.iv183.ph = phi i64 [ 0, %iter.check271 ], [ 0, %vector.memcheck258 ], [ %n.vec263, %vec.epilog.iter.check272 ], [ %n.vec277, %vec.epilog.middle.block282 ] ; 3 uses
  br i1 %lcmp.mod297.not, label %vec.epilog.scalar.ph273.prol.loopexit, label %vec.epilog.scalar.ph273.prol

vec.epilog.scalar.ph273.prol:                     ; preds = %vec.epilog.scalar.ph273.preheader, %vec.epilog.scalar.ph273.prol
  %indvars.iv183.prol = phi i64 [ %indvars.iv.next184.prol, %vec.epilog.scalar.ph273.prol ], [ %indvars.iv183.ph, %vec.epilog.scalar.ph273.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph273.prol ], [ 0, %vec.epilog.scalar.ph273.preheader ]
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv183.prol
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !81
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv183.prol
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !81
  %indvars.iv.next184.prol = add nuw nsw i64 %indvars.iv183.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter296
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph273.prol.loopexit, label %vec.epilog.scalar.ph273.prol, !llvm.loop !526

vec.epilog.scalar.ph273.prol.loopexit:            ; preds = %vec.epilog.scalar.ph273.prol, %vec.epilog.scalar.ph273.preheader
  %indvars.iv183.unr = phi i64 [ %indvars.iv183.ph, %vec.epilog.scalar.ph273.preheader ], [ %indvars.iv.next184.prol, %vec.epilog.scalar.ph273.prol ]
  %i.gq = sub nsw i64 %indvars.iv183.ph, %wide.trip.count195
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge136.split, label %vec.epilog.scalar.ph273

vec.epilog.scalar.ph273:                          ; preds = %vec.epilog.scalar.ph273.prol.loopexit, %vec.epilog.scalar.ph273
  %indvars.iv183 = phi i64 [ %indvars.iv.next184.3, %vec.epilog.scalar.ph273 ], [ %indvars.iv183.unr, %vec.epilog.scalar.ph273.prol.loopexit ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv183
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !81
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv183
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !81
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !81
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !81
  %indvars.iv.next184.1 = add nuw nsw i64 %indvars.iv183, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184.1
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !81
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184.1
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !81
  %indvars.iv.next184.2 = add nuw nsw i64 %indvars.iv183, 3 ; 2 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.next184.2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !81
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.1140, i64 %indvars.iv.next184.2
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !81
  %indvars.iv.next184.3 = add nuw nsw i64 %indvars.iv183, 4 ; 2 uses
  %exitcond187.not.3 = icmp eq i64 %indvars.iv.next184.3, %wide.trip.count195
  br i1 %exitcond187.not.3, label %._crit_edge136.split, label %vec.epilog.scalar.ph273, !llvm.loop !527

._crit_edge136.split:                             ; preds = %vec.epilog.scalar.ph273.prol.loopexit, %vec.epilog.scalar.ph273, %vec.epilog.middle.block282, %middle.block269
  %i.he = add nsw i32 %.173137, -1
  %i.hf = getelementptr inbounds [2 x i8], ptr %.1140, i64 %i.ep
  %i.hg = getelementptr inbounds nuw i8, ptr %.167138, i64 8
  %i.hh = icmp sgt i32 %.173137, 1
  %indvar.next255 = add i64 %indvar254, 1
  br i1 %i.hh, label %iter.check271, label %._crit_edge.split, !llvm.loop !523

._crit_edge.split:                                ; preds = %._crit_edge136.split, %._crit_edge136.split.us.us, %.preheader.lr.ph, %.preheader81
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !32
  %.not.i79 = icmp eq i32 %i.hj, 0
  br i1 %.not.i79, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80, label %bb.d

bb.d:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit80:     ; preds = %._crit_edge.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIsEENS1_16MorphColumnNoVecEE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIfEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIfEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #24, !inline_history !528
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIfEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS3_5MaxOpIfEENS3_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIfEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIfEENS1_16MorphColumnNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIfEENS1_16MorphColumnNoVecEEclEPPKhPhiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIfEENS1_16MorphColumnNoVecEEclEPPKhPhiiiE25__cv_trace_location_fn561)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_5
begin_hunk_6_@_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIfEENS1_16MorphColumnNoVecEEclEPPKhPhiii:bb.a
  %i.bq = mul nsw i64 %indvar, %i.bb
  %i.br = sub i64 %i.bq, %i.a
  %i.bs = add i64 %i.br, %i.bj
  %i.bt = add i64 %i.bs, -1
  %diff.check231 = icmp ult i64 %i.bt, 15
  %conflict.rdx232 = or i1 %conflict.rdx230, %diff.check231
  %i.bu = add i64 %i.ba, %i.bm                    ; 3 uses
  %i.bv = sub i64 %i.bk, %i.bu
  %diff.check233 = icmp ugt i64 %i.bv, -16
  %conflict.rdx234 = or i1 %conflict.rdx232, %diff.check233
  %i.bw = sub i64 %i.bl, %i.bu
  %diff.check235 = icmp ugt i64 %i.bw, -16
  %conflict.rdx236 = or i1 %conflict.rdx234, %diff.check235
  %i.bx = sub i64 %i.bj, %i.bu
  %diff.check237 = icmp ugt i64 %i.bx, -16
  %conflict.rdx238 = or i1 %conflict.rdx236, %diff.check237
  br i1 %conflict.rdx238, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  %wide.load = load <4 x float>, ptr %i.by, align 4, !tbaa !84 ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index
  %wide.load239 = load <4 x float>, ptr %i.bz, align 4, !tbaa !84 ; 2 uses
  %i.ca = fcmp olt <4 x float> %wide.load, %wide.load239
  %i.cb = select <4 x i1> %i.ca, <4 x float> %wide.load239, <4 x float> %wide.load
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.06592.us, i64 %index
  store <4 x float> %i.cb, ptr %i.cc, align 4, !tbaa !84
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index
  %wide.load240 = load <4 x float>, ptr %i.cd, align 4, !tbaa !84 ; 2 uses
  %i.ce = fcmp olt <4 x float> %wide.load, %wide.load240
  %i.cf = select <4 x i1> %i.ce, <4 x float> %wide.load240, <4 x float> %wide.load
  %i.cg = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.cf, ptr %i.cg, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !532

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge88.split.us100, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader82.us, %middle.block
  %indvars.iv160.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader82.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %scalar.ph ], [ %indvars.iv160.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv160
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !84 ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv160
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !84 ; 2 uses
  %i.cm = fcmp olt float %i.cj, %i.cl
  %.sroa.speculated.i76.us98 = select i1 %i.cm, float %i.cl, float %i.cj
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.06592.us, i64 %indvars.iv160
  store float %.sroa.speculated.i76.us98, ptr %i.cn, align 4, !tbaa !84
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv160
  %i.cp = load float, ptr %i.co, align 4, !tbaa !84 ; 2 uses
  %i.cq = fcmp olt float %i.cj, %i.cp
  %.sroa.speculated.i77.us99 = select i1 %i.cq, float %i.cp, float %i.cj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv160
  store float %.sroa.speculated.i77.us99, ptr %gep, align 4, !tbaa !84
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count183
  br i1 %exitcond164.not, label %._crit_edge88.split.us100, label %scalar.ph, !llvm.loop !533

._crit_edge88.split.us100:                        ; preds = %scalar.ph, %middle.block
  %i.cr = add nsw i32 %.07289.us, -2              ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %.06592.us, i64 %i.j ; 2 uses
  %i.ct = icmp sgt i32 %.07289.us, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ct, label %.preheader82.us, label %.preheader81, !llvm.loop !531

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.cu = add nsw i32 %4, -2
  %i.cv = call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %i.cw = add nuw i32 %i.cv, 1                    ; 2 uses
  %i.cx = and i32 %i.cw, -2
  %i.cy = sub nsw i32 %i.cu, %i.cx
  %i.cz = lshr i32 %i.cw, 1
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 4
  %i.dd = mul nsw i64 %i.dc, %i.j
  %scevgep = getelementptr i8, ptr %2, i64 %i.dd
  %i.de = shl nuw nsw i64 %i.da, 4
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %scevgep158 = getelementptr i8, ptr %i.df, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %._crit_edge88.split.us100, %._crit_edge88.split.us.us.us, %.preheader82.preheader, %bb.a
  %.072.lcssa = phi i32 [ %4, %bb.a ], [ %i.cy, %.preheader82.preheader ], [ %i.au, %._crit_edge88.split.us.us.us ], [ %i.cr, %._crit_edge88.split.us100 ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep158, %.preheader82.preheader ], [ %i.aw, %._crit_edge88.split.us.us.us ], [ %i.bh, %._crit_edge88.split.us100 ] ; 2 uses
  %.065.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader82.preheader ], [ %i.av, %._crit_edge88.split.us.us.us ], [ %i.cs, %._crit_edge88.split.us100 ] ; 3 uses
  %.065.lcssa248 = ptrtoaddr ptr %.065.lcssa to i64
  %i.dg = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.dg, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.dh = icmp sgt i32 %5, 0
  %i.di = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.dh, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %wide.trip.count198 = zext nneg i32 %5 to i64   ; 6 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.dj = shl nsw i64 %i.di, 2
  %min.iters.check250 = icmp ult i32 %5, 8
  %n.vec254 = and i64 %wide.trip.count198, 2147483640 ; 3 uses
  %cmp.n261 = icmp eq i64 %n.vec254, %wide.trip.count198
  %xtraiter272 = and i64 %wide.trip.count198, 3   ; 2 uses
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count193 = zext nneg i32 %.fr144 to i64
  %i.dk = add nsw i64 %wide.trip.count193, -1     ; 3 uses
  %xtraiter275 = and i64 %i.dk, 1
  %i.dl = icmp eq i32 %.fr144, 2
  %unroll_iter279 = and i64 %i.dk, -2
  %lcmp.mod276.not = icmp eq i64 %xtraiter275, 0
  %lcmp.mod278 = trunc i64 %i.dk to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge136.split.us.us
  %.1140.us = phi ptr [ %i.eh, %._crit_edge136.split.us.us ], [ %.065.lcssa, %.preheader.us.preheader ] ; 2 uses
  %.167138.us = phi ptr [ %i.ei, %._crit_edge136.split.us.us ], [ %.066.lcssa, %.preheader.us.preheader ] ; 5 uses
  %.173137.us = phi i32 [ %i.eg, %._crit_edge136.split.us.us ], [ %.072.lcssa, %.preheader.us.preheader ] ; 2 uses
  %i.dm = load ptr, ptr %.167138.us, align 8, !tbaa !89
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv195
  %i.do = load float, ptr %i.dn, align 4, !tbaa !84 ; 2 uses
  br i1 %i.dl, label %.epil.preheader274, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv190 = phi i64 [ %indvars.iv.next191.1, %.lr.ph.us.us.new ], [ 1, %.lr.ph.us.us ] ; 3 uses
  %.0132.us.us = phi float [ %.sroa.speculated.i78.us.us.1, %.lr.ph.us.us.new ], [ %i.do, %.lr.ph.us.us ] ; 2 uses
  %niter280 = phi i64 [ %niter280.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !89
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv195
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !84 ; 2 uses
  %i.dt = fcmp olt float %.0132.us.us, %i.ds
  %.sroa.speculated.i78.us.us = select i1 %i.dt, float %i.ds, float %.0132.us.us ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !89
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv195
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !84 ; 2 uses
  %i.dz = fcmp olt float %.sroa.speculated.i78.us.us, %i.dy
  %.sroa.speculated.i78.us.us.1 = select i1 %i.dz, float %i.dy, float %.sroa.speculated.i78.us.us ; 3 uses
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %niter280.next.1 = add nuw i64 %niter280, 2     ; 2 uses
  %niter280.ncmp.1 = icmp eq i64 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !534

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod276.not, label %._crit_edge.us.us, label %.epil.preheader274

.epil.preheader274:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv190.epil.init = phi i64 [ 1, %.lr.ph.us.us ], [ %indvars.iv.next191.1, %._crit_edge.us.us.unr-lcssa ]
  %.0132.us.us.epil.init = phi float [ %i.do, %.lr.ph.us.us ], [ %.sroa.speculated.i78.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190.epil.init
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !89
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv195
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !84 ; 2 uses
  %i.ee = fcmp olt float %.0132.us.us.epil.init, %i.ed
  %.sroa.speculated.i78.us.us.epil = select i1 %i.ee, float %i.ed, float %.0132.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader274
  %.sroa.speculated.i78.us.us.lcssa = phi float [ %.sroa.speculated.i78.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.i78.us.us.epil, %.epil.preheader274 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.1140.us, i64 %indvars.iv195
  store float %.sroa.speculated.i78.us.us.lcssa, ptr %i.ef, align 4, !tbaa !84
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge136.split.us.us, label %.lr.ph.us.us, !llvm.loop !535

._crit_edge136.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.eg = add nsw i32 %.173137.us, -1
  %i.eh = getelementptr inbounds [4 x i8], ptr %.1140.us, i64 %i.di
  %i.ei = getelementptr inbounds nuw i8, ptr %.167138.us, i64 8
  %i.ej = icmp sgt i32 %.173137.us, 1
  br i1 %i.ej, label %.preheader.us, label %._crit_edge.split, !llvm.loop !536

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge136.split
  %indvar246 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next247, %._crit_edge136.split ] ; 2 uses
  %.1140 = phi ptr [ %.065.lcssa, %.preheader.preheader ], [ %i.fm, %._crit_edge136.split ] ; 7 uses
  %.167138 = phi ptr [ %.066.lcssa, %.preheader.preheader ], [ %i.fn, %._crit_edge136.split ] ; 2 uses
  %.173137 = phi i32 [ %.072.lcssa, %.preheader.preheader ], [ %i.fl, %._crit_edge136.split ] ; 2 uses
  %i.ek = load ptr, ptr %.167138, align 8, !tbaa !89 ; 7 uses
  br i1 %min.iters.check250, label %scalar.ph249.preheader, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.preheader
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = mul nsw i64 %indvar246, %i.dj
  %i.en = add i64 %i.em, %.065.lcssa248
  %i.eo = sub i64 %i.el, %i.en
  %diff.check252 = icmp ugt i64 %i.eo, -32
  br i1 %diff.check252, label %scalar.ph249.preheader, label %vector.body255

vector.body255:                                   ; preds = %vector.memcheck251, %vector.body255
  %index256 = phi i64 [ %index.next259, %vector.body255 ], [ 0, %vector.memcheck251 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index256 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load257 = load <4 x float>, ptr %i.ep, align 4, !tbaa !84
  %wide.load258 = load <4 x float>, ptr %i.eq, align 4, !tbaa !84
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %index256 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x float> %wide.load257, ptr %i.er, align 4, !tbaa !84
  store <4 x float> %wide.load258, ptr %i.es, align 4, !tbaa !84
  %index.next259 = add nuw i64 %index256, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next259, %n.vec254
  br i1 %i.et, label %middle.block260, label %vector.body255, !llvm.loop !537

middle.block260:                                  ; preds = %vector.body255
  br i1 %cmp.n261, label %._crit_edge136.split, label %scalar.ph249.preheader

scalar.ph249.preheader:                           ; preds = %vector.memcheck251, %.preheader, %middle.block260
  %indvars.iv185.ph = phi i64 [ 0, %vector.memcheck251 ], [ 0, %.preheader ], [ %n.vec254, %middle.block260 ] ; 3 uses
  br i1 %lcmp.mod273.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol

scalar.ph249.prol:                                ; preds = %scalar.ph249.preheader, %scalar.ph249.prol
  %indvars.iv185.prol = phi i64 [ %indvars.iv.next186.prol, %scalar.ph249.prol ], [ %indvars.iv185.ph, %scalar.ph249.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph249.prol ], [ 0, %scalar.ph249.preheader ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv185.prol
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !84
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv185.prol
  store float %i.ev, ptr %i.ew, align 4, !tbaa !84
  %indvars.iv.next186.prol = add nuw nsw i64 %indvars.iv185.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter272
  br i1 %prol.iter.cmp.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol, !llvm.loop !538

scalar.ph249.prol.loopexit:                       ; preds = %scalar.ph249.prol, %scalar.ph249.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %scalar.ph249.preheader ], [ %indvars.iv.next186.prol, %scalar.ph249.prol ]
  %i.ex = sub nsw i64 %indvars.iv185.ph, %wide.trip.count198
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %._crit_edge136.split, label %scalar.ph249

scalar.ph249:                                     ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.3, %scalar.ph249 ], [ %indvars.iv185.unr, %scalar.ph249.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv185
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !84
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv185
  store float %i.fa, ptr %i.fb, align 4, !tbaa !84
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next186
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !84
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv.next186
  store float %i.fd, ptr %i.fe, align 4, !tbaa !84
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next186.1
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !84
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv.next186.1
  store float %i.fg, ptr %i.fh, align 4, !tbaa !84
  %indvars.iv.next186.2 = add nuw nsw i64 %indvars.iv185, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next186.2
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !84
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.1140, i64 %indvars.iv.next186.2
  store float %i.fj, ptr %i.fk, align 4, !tbaa !84
  %indvars.iv.next186.3 = add nuw nsw i64 %indvars.iv185, 4 ; 2 uses
  %exitcond189.not.3 = icmp eq i64 %indvars.iv.next186.3, %wide.trip.count198
  br i1 %exitcond189.not.3, label %._crit_edge136.split, label %scalar.ph249, !llvm.loop !539

._crit_edge136.split:                             ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249, %middle.block260
  %i.fl = add nsw i32 %.173137, -1
  %i.fm = getelementptr inbounds [4 x i8], ptr %.1140, i64 %i.di
  %i.fn = getelementptr inbounds nuw i8, ptr %.167138, i64 8
  %i.fo = icmp sgt i32 %.173137, 1
  %indvar.next247 = add i64 %indvar246, 1
  br i1 %i.fo, label %.preheader, label %._crit_edge.split, !llvm.loop !536

._crit_edge.split:                                ; preds = %._crit_edge136.split, %._crit_edge136.split.us.us, %.preheader.lr.ph, %.preheader81
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !32
  %.not.i79 = icmp eq i32 %i.fq, 0
  br i1 %.not.i79, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80, label %bb.b

bb.b:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit80:     ; preds = %._crit_edge.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIfEENS1_16MorphColumnNoVecEE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIdEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIdEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #24, !inline_history !540
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIdEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS3_5MaxOpIdEENS3_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS2_5MaxOpIdEENS2_16MorphColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIdEENS1_16MorphColumnNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIdEENS1_16MorphColumnNoVecEEclEPPKhPhiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIdEENS1_16MorphColumnNoVecEEclEPPKhPhiiiE25__cv_trace_location_fn561)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  %.fr144 = freeze i32 %i.c                       ; 8 uses
  %i.d = ashr i32 %3, 3                           ; 4 uses
  %i.e = icmp sgt i32 %.fr144, 1                  ; 2 uses
  %i.f = icmp sgt i32 %4, 1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.preheader82.lr.ph, label %.preheader81

.preheader82.lr.ph:                               ; preds = %bb.a
  %i.h = icmp sgt i32 %5, 0
  %i.i = shl nsw i32 %i.d, 1
  %i.j = sext i32 %i.i to i64                     ; 5 uses
  br i1 %i.h, label %.preheader82.lr.ph.split.us, label %.preheader82.preheader

.preheader82.lr.ph.split.us:                      ; preds = %.preheader82.lr.ph
  %i.k = icmp samesign ugt i32 %.fr144, 2
  %wide.trip.count183 = zext nneg i32 %5 to i64   ; 4 uses
  br i1 %i.k, label %.preheader82.us.us.preheader, label %.preheader82.us.preheader

.preheader82.us.us.preheader:                     ; preds = %.preheader82.lr.ph.split.us
end_hunk_6
begin_hunk_7_@_ZN2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIdEENS1_16MorphColumnNoVecEEclEPPKhPhiii:bb.a
  %i.bq = mul nsw i64 %indvar, %i.bb
  %i.br = sub i64 %i.bq, %i.a
  %i.bs = add i64 %i.br, %i.bj
  %i.bt = add i64 %i.bs, -1
  %diff.check231 = icmp ult i64 %i.bt, 15
  %conflict.rdx232 = or i1 %conflict.rdx230, %diff.check231
  %i.bu = add i64 %i.ba, %i.bm                    ; 3 uses
  %i.bv = sub i64 %i.bk, %i.bu
  %diff.check233 = icmp ugt i64 %i.bv, -16
  %conflict.rdx234 = or i1 %conflict.rdx232, %diff.check233
  %i.bw = sub i64 %i.bl, %i.bu
  %diff.check235 = icmp ugt i64 %i.bw, -16
  %conflict.rdx236 = or i1 %conflict.rdx234, %diff.check235
  %i.bx = sub i64 %i.bj, %i.bu
  %diff.check237 = icmp ugt i64 %i.bx, -16
  %conflict.rdx238 = or i1 %conflict.rdx236, %diff.check237
  br i1 %conflict.rdx238, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index
  %wide.load = load <2 x double>, ptr %i.by, align 8, !tbaa !65 ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load239 = load <2 x double>, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  %i.ca = fcmp olt <2 x double> %wide.load, %wide.load239
  %i.cb = select <2 x i1> %i.ca, <2 x double> %wide.load239, <2 x double> %wide.load
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.06592.us, i64 %index
  store <2 x double> %i.cb, ptr %i.cc, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index
  %wide.load240 = load <2 x double>, ptr %i.cd, align 8, !tbaa !65 ; 2 uses
  %i.ce = fcmp olt <2 x double> %wide.load, %wide.load240
  %i.cf = select <2 x i1> %i.ce, <2 x double> %wide.load240, <2 x double> %wide.load
  %i.cg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.cf, ptr %i.cg, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !544

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge88.split.us100, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader82.us, %middle.block
  %indvars.iv160.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader82.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %scalar.ph ], [ %indvars.iv160.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv160
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !65 ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv160
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !65 ; 2 uses
  %i.cm = fcmp olt double %i.cj, %i.cl
  %.sroa.speculated.i76.us98 = select i1 %i.cm, double %i.cl, double %i.cj
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.06592.us, i64 %indvars.iv160
  store double %.sroa.speculated.i76.us98, ptr %i.cn, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv160
  %i.cp = load double, ptr %i.co, align 8, !tbaa !65 ; 2 uses
  %i.cq = fcmp olt double %i.cj, %i.cp
  %.sroa.speculated.i77.us99 = select i1 %i.cq, double %i.cp, double %i.cj
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv160
  store double %.sroa.speculated.i77.us99, ptr %gep, align 8, !tbaa !65
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count183
  br i1 %exitcond164.not, label %._crit_edge88.split.us100, label %scalar.ph, !llvm.loop !545

._crit_edge88.split.us100:                        ; preds = %scalar.ph, %middle.block
  %i.cr = add nsw i32 %.07289.us, -2              ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %.06592.us, i64 %i.j ; 2 uses
  %i.ct = icmp sgt i32 %.07289.us, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ct, label %.preheader82.us, label %.preheader81, !llvm.loop !543

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.cu = add nsw i32 %4, -2
  %i.cv = call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %i.cw = add nuw i32 %i.cv, 1                    ; 2 uses
  %i.cx = and i32 %i.cw, -2
  %i.cy = sub nsw i32 %i.cu, %i.cx
  %i.cz = lshr i32 %i.cw, 1
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 8
  %i.dd = mul nsw i64 %i.dc, %i.j
  %scevgep = getelementptr i8, ptr %2, i64 %i.dd
  %i.de = shl nuw nsw i64 %i.da, 4
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %scevgep158 = getelementptr i8, ptr %i.df, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %._crit_edge88.split.us100, %._crit_edge88.split.us.us.us, %.preheader82.preheader, %bb.a
  %.072.lcssa = phi i32 [ %4, %bb.a ], [ %i.cy, %.preheader82.preheader ], [ %i.au, %._crit_edge88.split.us.us.us ], [ %i.cr, %._crit_edge88.split.us100 ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep158, %.preheader82.preheader ], [ %i.aw, %._crit_edge88.split.us.us.us ], [ %i.bh, %._crit_edge88.split.us100 ] ; 2 uses
  %.065.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader82.preheader ], [ %i.av, %._crit_edge88.split.us.us.us ], [ %i.cs, %._crit_edge88.split.us100 ] ; 3 uses
  %.065.lcssa248 = ptrtoaddr ptr %.065.lcssa to i64
  %i.dg = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.dg, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.dh = icmp sgt i32 %5, 0
  %i.di = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.dh, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %wide.trip.count198 = zext nneg i32 %5 to i64   ; 6 uses
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.dj = shl nsw i64 %i.di, 3
  %min.iters.check250 = icmp ult i32 %5, 4
  %n.vec254 = and i64 %wide.trip.count198, 2147483644 ; 3 uses
  %cmp.n261 = icmp eq i64 %n.vec254, %wide.trip.count198
  %xtraiter272 = and i64 %wide.trip.count198, 3   ; 2 uses
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count193 = zext nneg i32 %.fr144 to i64
  %i.dk = add nsw i64 %wide.trip.count193, -1     ; 3 uses
  %xtraiter275 = and i64 %i.dk, 1
  %i.dl = icmp eq i32 %.fr144, 2
  %unroll_iter279 = and i64 %i.dk, -2
  %lcmp.mod276.not = icmp eq i64 %xtraiter275, 0
  %lcmp.mod278 = trunc i64 %i.dk to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge136.split.us.us
  %.1140.us = phi ptr [ %i.eh, %._crit_edge136.split.us.us ], [ %.065.lcssa, %.preheader.us.preheader ] ; 2 uses
  %.167138.us = phi ptr [ %i.ei, %._crit_edge136.split.us.us ], [ %.066.lcssa, %.preheader.us.preheader ] ; 5 uses
  %.173137.us = phi i32 [ %i.eg, %._crit_edge136.split.us.us ], [ %.072.lcssa, %.preheader.us.preheader ] ; 2 uses
  %i.dm = load ptr, ptr %.167138.us, align 8, !tbaa !91
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv195
  %i.do = load double, ptr %i.dn, align 8, !tbaa !65 ; 2 uses
  br i1 %i.dl, label %.epil.preheader274, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv190 = phi i64 [ %indvars.iv.next191.1, %.lr.ph.us.us.new ], [ 1, %.lr.ph.us.us ] ; 3 uses
  %.0132.us.us = phi double [ %.sroa.speculated.i78.us.us.1, %.lr.ph.us.us.new ], [ %i.do, %.lr.ph.us.us ] ; 2 uses
  %niter280 = phi i64 [ %niter280.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !91
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv195
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !65 ; 2 uses
  %i.dt = fcmp olt double %.0132.us.us, %i.ds
  %.sroa.speculated.i78.us.us = select i1 %i.dt, double %i.ds, double %.0132.us.us ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !91
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv195
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !65 ; 2 uses
  %i.dz = fcmp olt double %.sroa.speculated.i78.us.us, %i.dy
  %.sroa.speculated.i78.us.us.1 = select i1 %i.dz, double %i.dy, double %.sroa.speculated.i78.us.us ; 3 uses
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %niter280.next.1 = add nuw i64 %niter280, 2     ; 2 uses
  %niter280.ncmp.1 = icmp eq i64 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !546

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod276.not, label %._crit_edge.us.us, label %.epil.preheader274

.epil.preheader274:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv190.epil.init = phi i64 [ 1, %.lr.ph.us.us ], [ %indvars.iv.next191.1, %._crit_edge.us.us.unr-lcssa ]
  %.0132.us.us.epil.init = phi double [ %i.do, %.lr.ph.us.us ], [ %.sroa.speculated.i78.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.167138.us, i64 %indvars.iv190.epil.init
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !91
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv195
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !65 ; 2 uses
  %i.ee = fcmp olt double %.0132.us.us.epil.init, %i.ed
  %.sroa.speculated.i78.us.us.epil = select i1 %i.ee, double %i.ed, double %.0132.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader274
  %.sroa.speculated.i78.us.us.lcssa = phi double [ %.sroa.speculated.i78.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.i78.us.us.epil, %.epil.preheader274 ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.1140.us, i64 %indvars.iv195
  store double %.sroa.speculated.i78.us.us.lcssa, ptr %i.ef, align 8, !tbaa !65
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge136.split.us.us, label %.lr.ph.us.us, !llvm.loop !547

._crit_edge136.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.eg = add nsw i32 %.173137.us, -1
  %i.eh = getelementptr inbounds [8 x i8], ptr %.1140.us, i64 %i.di
  %i.ei = getelementptr inbounds nuw i8, ptr %.167138.us, i64 8
  %i.ej = icmp sgt i32 %.173137.us, 1
  br i1 %i.ej, label %.preheader.us, label %._crit_edge.split, !llvm.loop !548

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge136.split
  %indvar246 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next247, %._crit_edge136.split ] ; 2 uses
  %.1140 = phi ptr [ %.065.lcssa, %.preheader.preheader ], [ %i.fm, %._crit_edge136.split ] ; 7 uses
  %.167138 = phi ptr [ %.066.lcssa, %.preheader.preheader ], [ %i.fn, %._crit_edge136.split ] ; 2 uses
  %.173137 = phi i32 [ %.072.lcssa, %.preheader.preheader ], [ %i.fl, %._crit_edge136.split ] ; 2 uses
  %i.ek = load ptr, ptr %.167138, align 8, !tbaa !91 ; 7 uses
  br i1 %min.iters.check250, label %scalar.ph249.preheader, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.preheader
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = mul nsw i64 %indvar246, %i.dj
  %i.en = add i64 %i.em, %.065.lcssa248
  %i.eo = sub i64 %i.el, %i.en
  %diff.check252 = icmp ugt i64 %i.eo, -32
  br i1 %diff.check252, label %scalar.ph249.preheader, label %vector.body255

vector.body255:                                   ; preds = %vector.memcheck251, %vector.body255
  %index256 = phi i64 [ %index.next259, %vector.body255 ], [ 0, %vector.memcheck251 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %index256 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load257 = load <2 x double>, ptr %i.ep, align 8, !tbaa !65
  %wide.load258 = load <2 x double>, ptr %i.eq, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %index256 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x double> %wide.load257, ptr %i.er, align 8, !tbaa !65
  store <2 x double> %wide.load258, ptr %i.es, align 8, !tbaa !65
  %index.next259 = add nuw i64 %index256, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next259, %n.vec254
  br i1 %i.et, label %middle.block260, label %vector.body255, !llvm.loop !549

middle.block260:                                  ; preds = %vector.body255
  br i1 %cmp.n261, label %._crit_edge136.split, label %scalar.ph249.preheader

scalar.ph249.preheader:                           ; preds = %vector.memcheck251, %.preheader, %middle.block260
  %indvars.iv185.ph = phi i64 [ 0, %vector.memcheck251 ], [ 0, %.preheader ], [ %n.vec254, %middle.block260 ] ; 3 uses
  br i1 %lcmp.mod273.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol

scalar.ph249.prol:                                ; preds = %scalar.ph249.preheader, %scalar.ph249.prol
  %indvars.iv185.prol = phi i64 [ %indvars.iv.next186.prol, %scalar.ph249.prol ], [ %indvars.iv185.ph, %scalar.ph249.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph249.prol ], [ 0, %scalar.ph249.preheader ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv185.prol
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !65
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv185.prol
  store double %i.ev, ptr %i.ew, align 8, !tbaa !65
  %indvars.iv.next186.prol = add nuw nsw i64 %indvars.iv185.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter272
  br i1 %prol.iter.cmp.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol, !llvm.loop !550

scalar.ph249.prol.loopexit:                       ; preds = %scalar.ph249.prol, %scalar.ph249.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %scalar.ph249.preheader ], [ %indvars.iv.next186.prol, %scalar.ph249.prol ]
  %i.ex = sub nsw i64 %indvars.iv185.ph, %wide.trip.count198
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %._crit_edge136.split, label %scalar.ph249

scalar.ph249:                                     ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.3, %scalar.ph249 ], [ %indvars.iv185.unr, %scalar.ph249.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv185
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !65
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv185
  store double %i.fa, ptr %i.fb, align 8, !tbaa !65
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next186
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !65
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv.next186
  store double %i.fd, ptr %i.fe, align 8, !tbaa !65
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next186.1
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !65
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv.next186.1
  store double %i.fg, ptr %i.fh, align 8, !tbaa !65
  %indvars.iv.next186.2 = add nuw nsw i64 %indvars.iv185, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next186.2
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !65
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.1140, i64 %indvars.iv.next186.2
  store double %i.fj, ptr %i.fk, align 8, !tbaa !65
  %indvars.iv.next186.3 = add nuw nsw i64 %indvars.iv185, 4 ; 2 uses
  %exitcond189.not.3 = icmp eq i64 %indvars.iv.next186.3, %wide.trip.count198
  br i1 %exitcond189.not.3, label %._crit_edge136.split, label %scalar.ph249, !llvm.loop !551

._crit_edge136.split:                             ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249, %middle.block260
  %i.fl = add nsw i32 %.173137, -1
  %i.fm = getelementptr inbounds [8 x i8], ptr %.1140, i64 %i.di
  %i.fn = getelementptr inbounds nuw i8, ptr %.167138, i64 8
  %i.fo = icmp sgt i32 %.173137, 1
  %indvar.next247 = add i64 %indvar246, 1
  br i1 %i.fo, label %.preheader, label %._crit_edge.split, !llvm.loop !548

._crit_edge.split:                                ; preds = %._crit_edge136.split, %._crit_edge136.split.us.us, %.preheader.lr.ph, %.preheader81
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !32
  %.not.i79 = icmp eq i32 %i.fq, 0
  br i1 %.not.i79, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80, label %bb.b

bb.b:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit80 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit80:     ; preds = %._crit_edge.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_117MorphColumnFilterINS1_5MaxOpIdEENS1_16MorphColumnNoVecEE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS2_5MinOpIhEENS2_10MorphNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS2_5MinOpIhEENS2_10MorphNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.a) #24, !inline_history !552
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS2_5MinOpIhEENS2_10MorphNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS3_5MinOpIhEENS3_10MorphNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS2_5MinOpIhEENS2_10MorphNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN2cv10BaseFilterC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN2cv18preprocess2DKernelERKNS_3MatERSt6vectorINS_6Point_IiEESaIS5_EERS3_IhSaIhEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv10BaseFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIhEENS1_10MorphNoVecEED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIhEENS1_10MorphNoVecEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv10BaseFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIhEENS1_10MorphNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(49) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIhEENS1_10MorphNoVecEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIhEENS1_10MorphNoVecEED2Ev.exit, label %bb.b

end_hunk_7
begin_hunk_8_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIhEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %lcmp.mod179 = trunc i64 %i.i to i1
  %xtraiter183 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter187 = and i64 %i.y, -4
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  %lcmp.mod186 = icmp ne i64 %xtraiter183, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.ck, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader176, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter181 = phi i64 [ %niter181.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.am, ptr %i.an, align 8, !tbaa !85
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !85
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter181.next.1 = add i64 %niter181, 2         ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %.lr.ph60.us.us.us.us.preheader.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !554

.lr.ph60.us.us.us.us.preheader.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod178.not, label %.lr.ph60.us.us.us.us.preheader, label %.epil.preheader176

.epil.preheader176:                               ; preds = %.lr.ph60.us.us.us.us.preheader.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %.lr.ph60.us.us.us.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !85
  br label %.lr.ph60.us.us.us.us.preheader

.lr.ph60.us.us.us.us.preheader:                   ; preds = %.lr.ph60.us.us.us.us.preheader.unr-lcssa, %.epil.preheader176
  %.pre113 = load ptr, ptr %i.r, align 8, !tbaa !85
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %.lr.ph60.us.us.us.us.preheader, %._crit_edge.us.us.us.us
  %indvars.iv107 = phi i64 [ 0, %.lr.ph60.us.us.us.us.preheader ], [ %indvars.iv.next108, %._crit_edge.us.us.us.us ] ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre113, i64 %indvars.iv107
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15  ; 2 uses
  br i1 %i.ac, label %.epil.preheader182, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i8 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ]
  %niter188 = phi i64 [ %niter188.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv107
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us = call noundef i8 @llvm.umin.i8(i8 %i.bp, i8 %.059.us.us.us.us)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !85
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv107
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i8 @llvm.umin.i8(i8 %i.bu, i8 %.sroa.speculated.i.us.us.us.us)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !85
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv107
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i8 @llvm.umin.i8(i8 %i.bz, i8 %.sroa.speculated.i.us.us.us.us.1)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv107
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i8 @llvm.umin.i8(i8 %i.ce, i8 %.sroa.speculated.i.us.us.us.us.2) ; 3 uses
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter188.next.3 = add nuw i64 %niter188, 4     ; 2 uses
  %niter188.ncmp.3 = icmp eq i64 %niter188.next.3, %unroll_iter187
  br i1 %niter188.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !555

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod184.not, label %._crit_edge.us.us.us.us, label %.epil.preheader182

.epil.preheader182:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i8 [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod186)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader182
  %indvars.iv103.epil = phi i64 [ %indvars.iv.next104.epil, %bb.c ], [ %indvars.iv103.epil.init, %.epil.preheader182 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i8 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader182 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader182 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !85
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv107
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i8 @llvm.umin.i8(i8 %i.ci, i8 %.059.us.us.us.us.epil) ; 2 uses
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter183
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !556

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i8 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.04764.us.us.us, i64 %indvars.iv107
  store i8 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cj, align 1, !tbaa !15
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !557

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.ck = add nsw i32 %.04666.us.us.us, -1
  %i.cl = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cm = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cn = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cn, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !558

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 16 uses
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.us.preheader

.preheader56.us.preheader:                        ; preds = %.preheader56.lr.ph.split.us.split
  %.pre.pre = load ptr, ptr %i.r, align 8, !tbaa !85 ; 8 uses
  %.pre.pre125 = ptrtoaddr ptr %.pre.pre to i64
  %i.co = sub i64 %i.a, %.pre.pre125
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.co, -1
  %min.iters.check126 = icmp ult i32 %i.s, 32
  %i.cp = and i64 %wide.trip.count96, 28
  %n.vec = and i64 %wide.trip.count96, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count96
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  %n.vec128 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n132 = icmp eq i64 %n.vec128, %wide.trip.count96
  %xtraiter171 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br label %iter.check

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %min.iters.check139 = icmp ult i32 %i.s, 4
  %min.iters.check143 = icmp ult i32 %i.s, 32
  %i.cr = and i64 %wide.trip.count96, 28
  %n.vec145 = and i64 %wide.trip.count96, 2147483616 ; 4 uses
  %cmp.n152 = icmp eq i64 %n.vec145, %wide.trip.count96
  %min.epilog.iters.check156 = icmp eq i64 %i.cr, 0
  %n.vec159 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n165 = icmp eq i64 %n.vec159, %wide.trip.count96
  %xtraiter173 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br label %iter.check153

iter.check153:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar137 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next138, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.eg, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ee, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.ef, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !74
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !85 ; 2 uses
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cx = mul nsw i32 %i.cw, %6
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 %i.cy ; 8 uses
  store ptr %i.cz, ptr %i.r, align 8, !tbaa !85
  br i1 %min.iters.check139, label %..preheader_crit_edge.us.us77.preheader, label %vector.memcheck140

vector.memcheck140:                               ; preds = %iter.check153
  %i.da = ptrtoaddr ptr %i.cv to i64
  %i.db = mul nsw i64 %indvar137, %i.w
  %i.dc = add i64 %i.db, %i.a
  %i.dd = add i64 %i.da, %i.cy
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check141 = icmp ugt i64 %i.de, -32
  br i1 %diff.check141, label %..preheader_crit_edge.us.us77.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %vector.memcheck140
  br i1 %min.iters.check143, label %vec.epilog.ph157, label %vector.body146

vector.body146:                                   ; preds = %vector.main.loop.iter.check142, %vector.body146
  %index147 = phi i64 [ %index.next150, %vector.body146 ], [ 0, %vector.main.loop.iter.check142 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index147 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load148 = load <16 x i8>, ptr %i.df, align 1, !tbaa !15
  %wide.load149 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %index147 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <16 x i8> %wide.load148, ptr %i.dh, align 1, !tbaa !15
  store <16 x i8> %wide.load149, ptr %i.di, align 1, !tbaa !15
  %index.next150 = add nuw i64 %index147, 32      ; 2 uses
  %i.dj = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.dj, label %middle.block151, label %vector.body146, !llvm.loop !559

middle.block151:                                  ; preds = %vector.body146
  br i1 %cmp.n152, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check154

vec.epilog.iter.check154:                         ; preds = %middle.block151
  br i1 %min.epilog.iters.check156, label %..preheader_crit_edge.us.us77.preheader, label %vec.epilog.ph157, !prof !79

vec.epilog.ph157:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check154
  %vec.epilog.resume.val158 = phi i64 [ %n.vec145, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check142 ]
  br label %vec.epilog.vector.body160

vec.epilog.vector.body160:                        ; preds = %vec.epilog.vector.body160, %vec.epilog.ph157
  %index161 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph157 ], [ %index.next163, %vec.epilog.vector.body160 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index161
  %wide.load162 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %index161
  store <4 x i8> %wide.load162, ptr %i.dl, align 1, !tbaa !15
  %index.next163 = add nuw i64 %index161, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next163, %n.vec159
  br i1 %i.dm, label %vec.epilog.middle.block164, label %vec.epilog.vector.body160, !llvm.loop !560

vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body160
  br i1 %cmp.n165, label %._crit_edge63.split.us70.us, label %..preheader_crit_edge.us.us77.preheader

..preheader_crit_edge.us.us77.preheader:          ; preds = %iter.check153, %vector.memcheck140, %vec.epilog.iter.check154, %vec.epilog.middle.block164
  %indvars.iv93.ph = phi i64 [ 0, %iter.check153 ], [ 0, %vector.memcheck140 ], [ %n.vec145, %vec.epilog.iter.check154 ], [ %n.vec159, %vec.epilog.middle.block164 ] ; 3 uses
  br i1 %lcmp.mod174.not, label %..preheader_crit_edge.us.us77.prol.loopexit, label %..preheader_crit_edge.us.us77.prol

..preheader_crit_edge.us.us77.prol:               ; preds = %..preheader_crit_edge.us.us77.preheader, %..preheader_crit_edge.us.us77.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %..preheader_crit_edge.us.us77.prol ], [ %indvars.iv93.ph, %..preheader_crit_edge.us.us77.preheader ] ; 3 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %..preheader_crit_edge.us.us77.prol ], [ 0, %..preheader_crit_edge.us.us77.preheader ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv93.prol
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !15
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %..preheader_crit_edge.us.us77.prol.loopexit, label %..preheader_crit_edge.us.us77.prol, !llvm.loop !561

..preheader_crit_edge.us.us77.prol.loopexit:      ; preds = %..preheader_crit_edge.us.us77.prol, %..preheader_crit_edge.us.us77.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %..preheader_crit_edge.us.us77.preheader ], [ %indvars.iv.next94.prol, %..preheader_crit_edge.us.us77.prol ]
  %i.dq = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge63.split.us70.us, label %..preheader_crit_edge.us.us77

..preheader_crit_edge.us.us77:                    ; preds = %..preheader_crit_edge.us.us77.prol.loopexit, %..preheader_crit_edge.us.us77
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %..preheader_crit_edge.us.us77 ], [ %indvars.iv93.unr, %..preheader_crit_edge.us.us77.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv93
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv93
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !15
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next94
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv.next94
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !15
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next94.1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !15
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next94.2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !15
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %..preheader_crit_edge.us.us77, !llvm.loop !562

._crit_edge63.split.us70.us:                      ; preds = %..preheader_crit_edge.us.us77.prol.loopexit, %..preheader_crit_edge.us.us77, %vec.epilog.middle.block164, %middle.block151
  %i.ee = add nsw i32 %.04666.us.us73, -1
  %i.ef = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.eg = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.eh = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next138 = add i64 %indvar137, 1
  br i1 %i.eh, label %iter.check153, label %._crit_edge, !llvm.loop !558

iter.check:                                       ; preds = %.preheader56.us.preheader, %._crit_edge63.split.us70
  %indvar = phi i64 [ 0, %.preheader56.us.preheader ], [ %indvar.next, %._crit_edge63.split.us70 ] ; 2 uses
  %.04666.us = phi i32 [ %4, %.preheader56.us.preheader ], [ %i.fi, %._crit_edge63.split.us70 ] ; 2 uses
  %.04764.us = phi ptr [ %2, %.preheader56.us.preheader ], [ %i.fj, %._crit_edge63.split.us70 ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.ei, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load = load <16 x i8>, ptr %i.ej, align 1, !tbaa !15
  %wide.load127 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <16 x i8> %wide.load, ptr %i.el, align 1, !tbaa !15
  store <16 x i8> %wide.load127, ptr %i.em, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !563

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %index129
  %wide.load130 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %index129
  store <4 x i8> %wide.load130, ptr %i.ep, align 1, !tbaa !15
  %index.next131 = add nuw i64 %index129, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next131, %n.vec128
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !564

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n132, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv83.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec128, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod172.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.er = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv83.prol
  %i.es = load i8, ptr %i.er, align 1, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv83.prol
  store i8 %i.es, ptr %i.et, align 1, !tbaa !15
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter171
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !565

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ]
  %i.eu = sub nsw i64 %indvars.iv83.ph, %wide.trip.count96
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %vec.epilog.scalar.ph ], [ %indvars.iv83.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv83
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv83
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !15
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv.next84
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv.next84
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !15
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv.next84.1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv.next84.1
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !15
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv.next84.2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv.next84.2
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !15
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count96
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph, !llvm.loop !566

._crit_edge63.split.us70:                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fi = add nsw i32 %.04666.us, -1
  %i.fj = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.fk = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fk, label %iter.check, label %._crit_edge, !llvm.loop !558

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.fl = and i64 %i.h, 17179869176
  %i.fm = icmp eq i64 %i.fl, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fn = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fn, 0
  %lcmp.mod170 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.ga, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.fz, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fm, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod170)
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !74
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !85
  %i.fu = load i32, ptr %i.fo, align 4, !tbaa !73
  %i.fv = mul nsw i32 %i.fu, %6
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !85
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.fz = add nsw i32 %.04666, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.gb = icmp sgt i32 %.04666, 1
  br i1 %i.gb, label %.preheader56, label %._crit_edge, !llvm.loop !558

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !74
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !85
  %i.gi = load i32, ptr %i.gc, align 4, !tbaa !73
  %i.gj = mul nsw i32 %i.gi, %6
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.gh, i64 %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !85
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !74
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !85
  %i.gt = load i32, ptr %i.gn, align 4, !tbaa !73
  %i.gu = mul nsw i32 %i.gt, %6
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gs, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !554

bb.d:                                             ; preds = %bb.b
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.ha, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.h

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us70.us, %._crit_edge63.split.us.us.us.us, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit53, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit53
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
end_hunk_8
begin_hunk_9_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpItEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count101 = and i64 %i.i, 2147483647  ; 2 uses
  %wide.trip.count110 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count101, -1      ; 3 uses
  %i.z = add nsw i64 %wide.trip.count101, -2
  %i.aa = icmp eq i64 %i.y, 0
  %unroll_iter174 = and i64 %i.i, 2147483646
  %i.ab = and i64 %i.h, 8
  %lcmp.mod172.not = icmp eq i64 %i.ab, 0
  %lcmp.mod173 = trunc i64 %i.i to i1
  %xtraiter177 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter181 = and i64 %i.y, -4
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod180 = icmp ne i64 %xtraiter177, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cn, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader170, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter175 = phi i64 [ %niter175.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !569

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod172.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader170

.epil.preheader170:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !87
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader170
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv107
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !81 ; 2 uses
  br i1 %i.ac, label %.epil.preheader176, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bm, %.lr.ph60.us.us.us.us ]
  %niter182 = phi i64 [ %niter182.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv107
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us = call noundef i16 @llvm.umin.i16(i16 %i.bq, i16 %.059.us.us.us.us)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv107
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i16 @llvm.umin.i16(i16 %i.bv, i16 %.sroa.speculated.i.us.us.us.us)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv107
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i16 @llvm.umin.i16(i16 %i.ca, i16 %.sroa.speculated.i.us.us.us.us.1)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv107
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i16 @llvm.umin.i16(i16 %i.cf, i16 %.sroa.speculated.i.us.us.us.us.2) ; 3 uses
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter182.next.3 = add nuw i64 %niter182, 4     ; 2 uses
  %niter182.ncmp.3 = icmp eq i64 %niter182.next.3, %unroll_iter181
  br i1 %niter182.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !570

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod178.not, label %._crit_edge.us.us.us.us, label %.epil.preheader176

.epil.preheader176:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i16 [ %i.bm, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader176
  %indvars.iv103.epil = phi i64 [ %indvars.iv.next104.epil, %bb.c ], [ %indvars.iv103.epil.init, %.epil.preheader176 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i16 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader176 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader176 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv107
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i16 @llvm.umin.i16(i16 %i.cj, i16 %.059.us.us.us.us.epil) ; 2 uses
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter177
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !571

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us.us, i64 %indvars.iv107
  store i16 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.ck, align 2, !tbaa !81
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !572

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cl = add nsw i32 %.04666.us.us.us, -1
  %i.cm = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.co = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.co, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !573

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !74
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ct = mul nsw i32 %i.cs, %6
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.cv = shl nsw i64 %i.cu, 1
  %min.iters.check134 = icmp ult i32 %i.s, 4
  %min.iters.check138 = icmp ult i32 %i.s, 16
  %i.cw = and i64 %wide.trip.count96, 12
  %n.vec140 = and i64 %wide.trip.count96, 2147483632 ; 4 uses
  %cmp.n147 = icmp eq i64 %n.vec140, %wide.trip.count96
  %min.epilog.iters.check151 = icmp eq i64 %i.cw, 0
  %n.vec154 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec154, %wide.trip.count96
  %xtraiter167 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %iter.check148

iter.check148:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar132 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next133, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.eg, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ee, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.ef, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !85 ; 2 uses
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.cu ; 8 uses
  br i1 %min.iters.check134, label %vec.epilog.scalar.ph150.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %iter.check148
  %i.da = ptrtoaddr ptr %i.cy to i64
  %i.db = mul nsw i64 %indvar132, %i.w
  %i.dc = add i64 %i.db, %i.a
  %i.dd = add i64 %i.cv, %i.da
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check136 = icmp ugt i64 %i.de, -32
  br i1 %diff.check136, label %vec.epilog.scalar.ph150.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck135
  br i1 %min.iters.check138, label %vec.epilog.ph152, label %vector.body141

vector.body141:                                   ; preds = %vector.main.loop.iter.check137, %vector.body141
  %index142 = phi i64 [ %index.next145, %vector.body141 ], [ 0, %vector.main.loop.iter.check137 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index142 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load143 = load <8 x i16>, ptr %i.df, align 2, !tbaa !81
  %wide.load144 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !81
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index142 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <8 x i16> %wide.load143, ptr %i.dh, align 2, !tbaa !81
  store <8 x i16> %wide.load144, ptr %i.di, align 2, !tbaa !81
  %index.next145 = add nuw i64 %index142, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.dj, label %middle.block146, label %vector.body141, !llvm.loop !574

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check149

vec.epilog.iter.check149:                         ; preds = %middle.block146
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph150.preheader, label %vec.epilog.ph152, !prof !82

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check149
  %vec.epilog.resume.val153 = phi i64 [ %n.vec140, %vec.epilog.iter.check149 ], [ 0, %vector.main.loop.iter.check137 ]
  br label %vec.epilog.vector.body155

vec.epilog.vector.body155:                        ; preds = %vec.epilog.vector.body155, %vec.epilog.ph152
  %index156 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph152 ], [ %index.next158, %vec.epilog.vector.body155 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index156
  %wide.load157 = load <4 x i16>, ptr %i.dk, align 2, !tbaa !81
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index156
  store <4 x i16> %wide.load157, ptr %i.dl, align 2, !tbaa !81
  %index.next158 = add nuw i64 %index156, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next158, %n.vec154
  br i1 %i.dm, label %vec.epilog.middle.block159, label %vec.epilog.vector.body155, !llvm.loop !575

vec.epilog.middle.block159:                       ; preds = %vec.epilog.vector.body155
  br i1 %cmp.n160, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150.preheader

vec.epilog.scalar.ph150.preheader:                ; preds = %iter.check148, %vector.memcheck135, %vec.epilog.iter.check149, %vec.epilog.middle.block159
  %indvars.iv93.ph = phi i64 [ 0, %iter.check148 ], [ 0, %vector.memcheck135 ], [ %n.vec140, %vec.epilog.iter.check149 ], [ %n.vec154, %vec.epilog.middle.block159 ] ; 3 uses
  br i1 %lcmp.mod168.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol

vec.epilog.scalar.ph150.prol:                     ; preds = %vec.epilog.scalar.ph150.preheader, %vec.epilog.scalar.ph150.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %vec.epilog.scalar.ph150.prol ], [ %indvars.iv93.ph, %vec.epilog.scalar.ph150.preheader ] ; 3 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %vec.epilog.scalar.ph150.prol ], [ 0, %vec.epilog.scalar.ph150.preheader ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv93.prol
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !81
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !81
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol, !llvm.loop !576

vec.epilog.scalar.ph150.prol.loopexit:            ; preds = %vec.epilog.scalar.ph150.prol, %vec.epilog.scalar.ph150.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %vec.epilog.scalar.ph150.preheader ], [ %indvars.iv.next94.prol, %vec.epilog.scalar.ph150.prol ]
  %i.dq = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150

vec.epilog.scalar.ph150:                          ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %vec.epilog.scalar.ph150 ], [ %indvars.iv93.unr, %vec.epilog.scalar.ph150.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv93
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !81
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv93
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !81
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !81
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !81
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94.1
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !81
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !81
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94.2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !81
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !81
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150, !llvm.loop !577

._crit_edge63.split.us70.us:                      ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150, %vec.epilog.middle.block159, %middle.block146
  %i.ee = add nsw i32 %.04666.us.us73, -1
  %i.ef = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.eg = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.eh = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next133 = add i64 %indvar132, 1
  br i1 %i.eh, label %iter.check148, label %._crit_edge.loopexit116, !llvm.loop !573

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !87  ; 8 uses
  %i.ej = ptrtoaddr ptr %i.ei to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.ek = sub i64 %i.a, %i.ej
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.ek, -1
  %min.iters.check121 = icmp ult i32 %i.s, 16
  %i.el = and i64 %wide.trip.count86, 12
  %n.vec = and i64 %wide.trip.count86, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %min.epilog.iters.check = icmp eq i64 %i.el, 0
  %n.vec123 = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n127 = icmp eq i64 %n.vec123, %wide.trip.count86
  %xtraiter165 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.fm, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.fn, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.em = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.em, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <8 x i16>, ptr %i.en, align 2, !tbaa !81
  %wide.load122 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !81
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <8 x i16> %wide.load, ptr %i.ep, align 2, !tbaa !81
  store <8 x i16> %wide.load122, ptr %i.eq, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !578

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index124
  %wide.load125 = load <4 x i16>, ptr %i.es, align 2, !tbaa !81
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index124
  store <4 x i16> %wide.load125, ptr %i.et, align 2, !tbaa !81
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !579

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv83.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod166.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv83.prol
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !81
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !81
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !580

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ]
  %i.ey = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %vec.epilog.scalar.ph ], [ %indvars.iv83.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv83
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !81
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv83
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !81
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !81
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !81
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84.1
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !81
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !81
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84.2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !81
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !81
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph, !llvm.loop !581

._crit_edge63.split.us70:                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fm = add nsw i32 %.04666.us, -1
  %i.fn = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.fo = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fo, label %iter.check, label %._crit_edge, !llvm.loop !573

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.fp = and i64 %i.h, 17179869176
  %i.fq = icmp eq i64 %i.fp, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fr = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fr, 0
  %lcmp.mod164 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.ge, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.gd, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fq, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod164)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !74
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !85
  %i.fy = load i32, ptr %i.fs, align 4, !tbaa !73
  %i.fz = mul nsw i32 %i.fy, %6
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !87
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.gd = add nsw i32 %.04666, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.gf = icmp sgt i32 %.04666, 1
  br i1 %i.gf, label %.preheader56, label %._crit_edge, !llvm.loop !573

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !74
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !85
  %i.gm = load i32, ptr %i.gg, align 4, !tbaa !73
  %i.gn = mul nsw i32 %i.gm, %6
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.gl, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !87
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !74
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !85
  %i.gx = load i32, ptr %i.gr, align 4, !tbaa !73
  %i.gy = mul nsw i32 %i.gx, %6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !569

bb.d:                                             ; preds = %bb.b
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.he, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.h

._crit_edge.loopexit116:                          ; preds = %._crit_edge63.split.us70.us
  store ptr %i.cz, ptr %i.r, align 8, !tbaa !87
  br label %._crit_edge

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us.us.us.us, %._crit_edge.loopexit116, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKtLm136EED2Ev.exit53, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKtLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKtLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.hg, 0
end_hunk_9
begin_hunk_10_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIsEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count101 = and i64 %i.i, 2147483647  ; 2 uses
  %wide.trip.count110 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count101, -1      ; 3 uses
  %i.z = add nsw i64 %wide.trip.count101, -2
  %i.aa = icmp eq i64 %i.y, 0
  %unroll_iter174 = and i64 %i.i, 2147483646
  %i.ab = and i64 %i.h, 8
  %lcmp.mod172.not = icmp eq i64 %i.ab, 0
  %lcmp.mod173 = trunc i64 %i.i to i1
  %xtraiter177 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter181 = and i64 %i.y, -4
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod180 = icmp ne i64 %xtraiter177, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cn, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader170, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter175 = phi i64 [ %niter175.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !584

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod172.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader170

.epil.preheader170:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !87
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader170
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv107
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !81 ; 2 uses
  br i1 %i.ac, label %.epil.preheader176, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bm, %.lr.ph60.us.us.us.us ]
  %niter182 = phi i64 [ %niter182.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv107
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us = call noundef i16 @llvm.smin.i16(i16 %i.bq, i16 %.059.us.us.us.us)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv107
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i16 @llvm.smin.i16(i16 %i.bv, i16 %.sroa.speculated.i.us.us.us.us)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv107
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i16 @llvm.smin.i16(i16 %i.ca, i16 %.sroa.speculated.i.us.us.us.us.1)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv107
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i16 @llvm.smin.i16(i16 %i.cf, i16 %.sroa.speculated.i.us.us.us.us.2) ; 3 uses
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter182.next.3 = add nuw i64 %niter182, 4     ; 2 uses
  %niter182.ncmp.3 = icmp eq i64 %niter182.next.3, %unroll_iter181
  br i1 %niter182.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !585

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod178.not, label %._crit_edge.us.us.us.us, label %.epil.preheader176

.epil.preheader176:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i16 [ %i.bm, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader176
  %indvars.iv103.epil = phi i64 [ %indvars.iv.next104.epil, %bb.c ], [ %indvars.iv103.epil.init, %.epil.preheader176 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i16 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader176 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader176 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv107
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i16 @llvm.smin.i16(i16 %i.cj, i16 %.059.us.us.us.us.epil) ; 2 uses
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter177
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !586

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us.us, i64 %indvars.iv107
  store i16 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.ck, align 2, !tbaa !81
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !587

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cl = add nsw i32 %.04666.us.us.us, -1
  %i.cm = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.co = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.co, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !588

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !74
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ct = mul nsw i32 %i.cs, %6
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.cv = shl nsw i64 %i.cu, 1
  %min.iters.check134 = icmp ult i32 %i.s, 4
  %min.iters.check138 = icmp ult i32 %i.s, 16
  %i.cw = and i64 %wide.trip.count96, 12
  %n.vec140 = and i64 %wide.trip.count96, 2147483632 ; 4 uses
  %cmp.n147 = icmp eq i64 %n.vec140, %wide.trip.count96
  %min.epilog.iters.check151 = icmp eq i64 %i.cw, 0
  %n.vec154 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec154, %wide.trip.count96
  %xtraiter167 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %iter.check148

iter.check148:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar132 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next133, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.eg, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ee, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.ef, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !85 ; 2 uses
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.cu ; 8 uses
  br i1 %min.iters.check134, label %vec.epilog.scalar.ph150.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %iter.check148
  %i.da = ptrtoaddr ptr %i.cy to i64
  %i.db = mul nsw i64 %indvar132, %i.w
  %i.dc = add i64 %i.db, %i.a
  %i.dd = add i64 %i.cv, %i.da
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check136 = icmp ugt i64 %i.de, -32
  br i1 %diff.check136, label %vec.epilog.scalar.ph150.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck135
  br i1 %min.iters.check138, label %vec.epilog.ph152, label %vector.body141

vector.body141:                                   ; preds = %vector.main.loop.iter.check137, %vector.body141
  %index142 = phi i64 [ %index.next145, %vector.body141 ], [ 0, %vector.main.loop.iter.check137 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index142 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load143 = load <8 x i16>, ptr %i.df, align 2, !tbaa !81
  %wide.load144 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !81
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index142 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <8 x i16> %wide.load143, ptr %i.dh, align 2, !tbaa !81
  store <8 x i16> %wide.load144, ptr %i.di, align 2, !tbaa !81
  %index.next145 = add nuw i64 %index142, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.dj, label %middle.block146, label %vector.body141, !llvm.loop !589

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check149

vec.epilog.iter.check149:                         ; preds = %middle.block146
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph150.preheader, label %vec.epilog.ph152, !prof !82

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check149
  %vec.epilog.resume.val153 = phi i64 [ %n.vec140, %vec.epilog.iter.check149 ], [ 0, %vector.main.loop.iter.check137 ]
  br label %vec.epilog.vector.body155

vec.epilog.vector.body155:                        ; preds = %vec.epilog.vector.body155, %vec.epilog.ph152
  %index156 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph152 ], [ %index.next158, %vec.epilog.vector.body155 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index156
  %wide.load157 = load <4 x i16>, ptr %i.dk, align 2, !tbaa !81
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index156
  store <4 x i16> %wide.load157, ptr %i.dl, align 2, !tbaa !81
  %index.next158 = add nuw i64 %index156, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next158, %n.vec154
  br i1 %i.dm, label %vec.epilog.middle.block159, label %vec.epilog.vector.body155, !llvm.loop !590

vec.epilog.middle.block159:                       ; preds = %vec.epilog.vector.body155
  br i1 %cmp.n160, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150.preheader

vec.epilog.scalar.ph150.preheader:                ; preds = %iter.check148, %vector.memcheck135, %vec.epilog.iter.check149, %vec.epilog.middle.block159
  %indvars.iv93.ph = phi i64 [ 0, %iter.check148 ], [ 0, %vector.memcheck135 ], [ %n.vec140, %vec.epilog.iter.check149 ], [ %n.vec154, %vec.epilog.middle.block159 ] ; 3 uses
  br i1 %lcmp.mod168.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol

vec.epilog.scalar.ph150.prol:                     ; preds = %vec.epilog.scalar.ph150.preheader, %vec.epilog.scalar.ph150.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %vec.epilog.scalar.ph150.prol ], [ %indvars.iv93.ph, %vec.epilog.scalar.ph150.preheader ] ; 3 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %vec.epilog.scalar.ph150.prol ], [ 0, %vec.epilog.scalar.ph150.preheader ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv93.prol
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !81
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !81
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol, !llvm.loop !591

vec.epilog.scalar.ph150.prol.loopexit:            ; preds = %vec.epilog.scalar.ph150.prol, %vec.epilog.scalar.ph150.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %vec.epilog.scalar.ph150.preheader ], [ %indvars.iv.next94.prol, %vec.epilog.scalar.ph150.prol ]
  %i.dq = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150

vec.epilog.scalar.ph150:                          ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %vec.epilog.scalar.ph150 ], [ %indvars.iv93.unr, %vec.epilog.scalar.ph150.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv93
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !81
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv93
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !81
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !81
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !81
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94.1
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !81
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !81
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94.2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !81
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !81
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150, !llvm.loop !592

._crit_edge63.split.us70.us:                      ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150, %vec.epilog.middle.block159, %middle.block146
  %i.ee = add nsw i32 %.04666.us.us73, -1
  %i.ef = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.eg = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.eh = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next133 = add i64 %indvar132, 1
  br i1 %i.eh, label %iter.check148, label %._crit_edge.loopexit116, !llvm.loop !588

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !87  ; 8 uses
  %i.ej = ptrtoaddr ptr %i.ei to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.ek = sub i64 %i.a, %i.ej
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.ek, -1
  %min.iters.check121 = icmp ult i32 %i.s, 16
  %i.el = and i64 %wide.trip.count86, 12
  %n.vec = and i64 %wide.trip.count86, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %min.epilog.iters.check = icmp eq i64 %i.el, 0
  %n.vec123 = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n127 = icmp eq i64 %n.vec123, %wide.trip.count86
  %xtraiter165 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.fm, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.fn, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.em = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.em, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <8 x i16>, ptr %i.en, align 2, !tbaa !81
  %wide.load122 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !81
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <8 x i16> %wide.load, ptr %i.ep, align 2, !tbaa !81
  store <8 x i16> %wide.load122, ptr %i.eq, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !593

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index124
  %wide.load125 = load <4 x i16>, ptr %i.es, align 2, !tbaa !81
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index124
  store <4 x i16> %wide.load125, ptr %i.et, align 2, !tbaa !81
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !594

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv83.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod166.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv83.prol
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !81
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !81
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !595

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ]
  %i.ey = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %vec.epilog.scalar.ph ], [ %indvars.iv83.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv83
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !81
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv83
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !81
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !81
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !81
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84.1
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !81
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !81
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84.2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !81
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !81
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph, !llvm.loop !596

._crit_edge63.split.us70:                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fm = add nsw i32 %.04666.us, -1
  %i.fn = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.fo = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fo, label %iter.check, label %._crit_edge, !llvm.loop !588

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.fp = and i64 %i.h, 17179869176
  %i.fq = icmp eq i64 %i.fp, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fr = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fr, 0
  %lcmp.mod164 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.ge, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.gd, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fq, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod164)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !74
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !85
  %i.fy = load i32, ptr %i.fs, align 4, !tbaa !73
  %i.fz = mul nsw i32 %i.fy, %6
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !87
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.gd = add nsw i32 %.04666, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.gf = icmp sgt i32 %.04666, 1
  br i1 %i.gf, label %.preheader56, label %._crit_edge, !llvm.loop !588

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !74
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !85
  %i.gm = load i32, ptr %i.gg, align 4, !tbaa !73
  %i.gn = mul nsw i32 %i.gm, %6
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.gl, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !87
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !74
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !85
  %i.gx = load i32, ptr %i.gr, align 4, !tbaa !73
  %i.gy = mul nsw i32 %i.gx, %6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !584

bb.d:                                             ; preds = %bb.b
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.he, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.h

._crit_edge.loopexit116:                          ; preds = %._crit_edge63.split.us70.us
  store ptr %i.cz, ptr %i.r, align 8, !tbaa !87
  br label %._crit_edge

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us.us.us.us, %._crit_edge.loopexit116, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKsLm136EED2Ev.exit53, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKsLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKsLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.hg, 0
end_hunk_10
begin_hunk_11_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIfEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !108
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !107
  br label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 14 uses
  %i.s = mul i32 %6, %5                           ; 6 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count101 = and i64 %i.i, 2147483647  ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count101, -1      ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  %unroll_iter155 = and i64 %i.i, 2147483646
  %i.aa = and i64 %i.h, 8
  %lcmp.mod153.not = icmp eq i64 %i.aa, 0
  %lcmp.mod154 = trunc i64 %i.i to i1
  %xtraiter158 = and i64 %i.y, 1
  %i.ab = icmp eq i64 %wide.trip.count101, 2
  %unroll_iter162 = and i64 %i.y, -2
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod161 = trunc i64 %i.y to i1
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cf, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cd, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.ce, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader151, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter156 = phi i64 [ %niter156.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.aj = mul nsw i32 %i.ai, %6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.al, ptr %i.am, align 8, !tbaa !89
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = load i32, ptr %i.an, align 4, !tbaa !73
  %i.au = mul nsw i32 %i.at, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !89
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !599

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod153.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader151

.epil.preheader151:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.bf = mul nsw i32 %i.be, %6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !89
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader151
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !89
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv108
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !84 ; 2 uses
  br i1 %i.ab, label %.epil.preheader157, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 3 uses
  %.059.us.us.us.us = phi float [ %.sroa.speculated.i.us.us.us.us.1, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ] ; 2 uses
  %niter163 = phi i64 [ %niter163.next.1, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv108
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !84 ; 2 uses
  %i.bq = fcmp olt float %i.bp, %.059.us.us.us.us
  %.sroa.speculated.i.us.us.us.us = select i1 %i.bq, float %i.bp, float %.059.us.us.us.us ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !89
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv108
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !84 ; 2 uses
  %i.bw = fcmp olt float %i.bv, %.sroa.speculated.i.us.us.us.us
  %.sroa.speculated.i.us.us.us.us.1 = select i1 %i.bw, float %i.bv, float %.sroa.speculated.i.us.us.us.us ; 3 uses
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %niter163.next.1 = add nuw i64 %niter163, 2     ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !600

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod159.not, label %._crit_edge.us.us.us.us, label %.epil.preheader157

.epil.preheader157:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi float [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv108
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !84 ; 2 uses
  %i.cb = fcmp olt float %i.ca, %.059.us.us.us.us.epil.init
  %.sroa.speculated.i.us.us.us.us.epil = select i1 %i.cb, float %i.ca, float %.059.us.us.us.us.epil.init
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader157
  %.sroa.speculated.i.us.us.us.us.lcssa = phi float [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %.epil.preheader157 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us.us, i64 %indvars.iv108
  store float %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cc, align 4, !tbaa !84
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !601

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cd = add nsw i32 %.04666.us.us.us, -1
  %i.ce = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cg = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cg, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !602

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !74
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cl = mul nsw i32 %i.ck, %6
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.cn = shl nsw i64 %i.cm, 2
  %min.iters.check130 = icmp ult i32 %i.s, 8
  %n.vec134 = and i64 %wide.trip.count96, 2147483640 ; 3 uses
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count96
  %xtraiter148 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br label %..preheader_crit_edge.us.us77

..preheader_crit_edge.us.us77:                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar127 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next128, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.du, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ds, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.dt, %._crit_edge63.split.us70.us ] ; 7 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.cj
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !85 ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cm ; 7 uses
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %..preheader_crit_edge.us.us77
  %i.cr = ptrtoaddr ptr %i.cp to i64
  %i.cs = mul nsw i64 %indvar127, %i.w
  %i.ct = add i64 %i.cs, %i.a
  %i.cu = add i64 %i.cn, %i.cr
  %i.cv = sub i64 %i.cu, %i.ct
  %diff.check132 = icmp ugt i64 %i.cv, -32
  br i1 %diff.check132, label %scalar.ph129.preheader, label %vector.body135

vector.body135:                                   ; preds = %vector.memcheck131, %vector.body135
  %index136 = phi i64 [ %index.next139, %vector.body135 ], [ 0, %vector.memcheck131 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index136 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load137 = load <4 x float>, ptr %i.cw, align 4, !tbaa !84
  %wide.load138 = load <4 x float>, ptr %i.cx, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %index136 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x float> %wide.load137, ptr %i.cy, align 4, !tbaa !84
  store <4 x float> %wide.load138, ptr %i.cz, align 4, !tbaa !84
  %index.next139 = add nuw i64 %index136, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.da, label %middle.block140, label %vector.body135, !llvm.loop !603

middle.block140:                                  ; preds = %vector.body135
  br i1 %cmp.n141, label %._crit_edge63.split.us70.us, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck131, %..preheader_crit_edge.us.us77, %middle.block140
  %indvars.iv93.ph = phi i64 [ 0, %vector.memcheck131 ], [ 0, %..preheader_crit_edge.us.us77 ], [ %n.vec134, %middle.block140 ] ; 3 uses
  br i1 %lcmp.mod149.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %scalar.ph129.prol ], [ %indvars.iv93.ph, %scalar.ph129.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv93.prol
  %i.dc = load float, ptr %i.db, align 4, !tbaa !84
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store float %i.dc, ptr %i.dd, align 4, !tbaa !84
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !604

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %scalar.ph129.preheader ], [ %indvars.iv.next94.prol, %scalar.ph129.prol ]
  %i.de = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge63.split.us70.us, label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %scalar.ph129 ], [ %indvars.iv93.unr, %scalar.ph129.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv93
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !84
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv93
  store float %i.dh, ptr %i.di, align 4, !tbaa !84
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next94
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !84
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94
  store float %i.dk, ptr %i.dl, align 4, !tbaa !84
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next94.1
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !84
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store float %i.dn, ptr %i.do, align 4, !tbaa !84
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next94.2
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !84
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store float %i.dq, ptr %i.dr, align 4, !tbaa !84
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %scalar.ph129, !llvm.loop !605

._crit_edge63.split.us70.us:                      ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block140
  %i.ds = add nsw i32 %.04666.us.us73, -1
  %i.dt = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.du = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.dv = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next128 = add i64 %indvar127, 1
  br i1 %i.dv, label %..preheader_crit_edge.us.us77, label %._crit_edge.loopexit117, !llvm.loop !602

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !89  ; 7 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.dy = sub i64 %i.a, %i.dx
  %min.iters.check = icmp ult i32 %i.s, 8
  %invariant.op = add i64 %i.dy, -1
  %n.vec = and i64 %wide.trip.count86, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %xtraiter146 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.preheader56.us

.preheader56.us:                                  ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.ew, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.ex, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader56.us
  %i.dz = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.dz, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load = load <4 x float>, ptr %i.ea, align 4, !tbaa !84
  %wide.load122 = load <4 x float>, ptr %i.eb, align 4, !tbaa !84
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %wide.load, ptr %i.ec, align 4, !tbaa !84
  store <4 x float> %wide.load122, ptr %i.ed, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !606

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader56.us, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader56.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod147.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %scalar.ph.prol ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv83.prol
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !84
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store float %i.eg, ptr %i.eh, align 4, !tbaa !84
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !607

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %i.ei = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %._crit_edge63.split.us70, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv83
  %i.el = load float, ptr %i.ek, align 4, !tbaa !84
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv83
  store float %i.el, ptr %i.em, align 4, !tbaa !84
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next84
  %i.eo = load float, ptr %i.en, align 4, !tbaa !84
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store float %i.eo, ptr %i.ep, align 4, !tbaa !84
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next84.1
  %i.er = load float, ptr %i.eq, align 4, !tbaa !84
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store float %i.er, ptr %i.es, align 4, !tbaa !84
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next84.2
  %i.eu = load float, ptr %i.et, align 4, !tbaa !84
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store float %i.eu, ptr %i.ev, align 4, !tbaa !84
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %scalar.ph, !llvm.loop !608

._crit_edge63.split.us70:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ew = add nsw i32 %.04666.us, -1
  %i.ex = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.ey = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ey, label %.preheader56.us, label %._crit_edge, !llvm.loop !602

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.ez = and i64 %i.h, 17179869176
  %i.fa = icmp eq i64 %i.ez, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fb = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fb, 0
  %lcmp.mod145 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.fo, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.fn, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fa, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod145)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !74
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !85
  %i.fi = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fj = mul nsw i32 %i.fi, %6
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !89
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.fn = add nsw i32 %.04666, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.fp = icmp sgt i32 %.04666, 1
  br i1 %i.fp, label %.preheader56, label %._crit_edge, !llvm.loop !602

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !74
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !85
  %i.fw = load i32, ptr %i.fq, align 4, !tbaa !73
  %i.fx = mul nsw i32 %i.fw, %6
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !89
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !74
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !85
  %i.gh = load i32, ptr %i.gb, align 4, !tbaa !73
  %i.gi = mul nsw i32 %i.gh, %6
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !89
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !599

bb.c:                                             ; preds = %bb.b
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.go, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.g

._crit_edge.loopexit117:                          ; preds = %._crit_edge63.split.us70.us
  store ptr %i.cq, ptr %i.r, align 8, !tbaa !89
  br label %._crit_edge

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us.us.us.us, %._crit_edge.loopexit117, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.g:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gt = landingpad { ptr, i32 }
end_hunk_11
begin_hunk_12_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIdEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !112
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !111
  br label %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 14 uses
  %i.s = mul i32 %6, %5                           ; 6 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count101 = and i64 %i.i, 2147483647  ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count101, -1      ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  %unroll_iter155 = and i64 %i.i, 2147483646
  %i.aa = and i64 %i.h, 8
  %lcmp.mod153.not = icmp eq i64 %i.aa, 0
  %lcmp.mod154 = trunc i64 %i.i to i1
  %xtraiter158 = and i64 %i.y, 1
  %i.ab = icmp eq i64 %wide.trip.count101, 2
  %unroll_iter162 = and i64 %i.y, -2
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod161 = trunc i64 %i.y to i1
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cf, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cd, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.ce, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader151, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter156 = phi i64 [ %niter156.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.aj = mul nsw i32 %i.ai, %6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.al, ptr %i.am, align 8, !tbaa !91
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = load i32, ptr %i.an, align 4, !tbaa !73
  %i.au = mul nsw i32 %i.at, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !91
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !611

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod153.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader151

.epil.preheader151:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.bf = mul nsw i32 %i.be, %6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !91
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader151
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !91
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv108
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !65 ; 2 uses
  br i1 %i.ab, label %.epil.preheader157, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 3 uses
  %.059.us.us.us.us = phi double [ %.sroa.speculated.i.us.us.us.us.1, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ] ; 2 uses
  %niter163 = phi i64 [ %niter163.next.1, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv108
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !65 ; 2 uses
  %i.bq = fcmp olt double %i.bp, %.059.us.us.us.us
  %.sroa.speculated.i.us.us.us.us = select i1 %i.bq, double %i.bp, double %.059.us.us.us.us ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv108
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !65 ; 2 uses
  %i.bw = fcmp olt double %i.bv, %.sroa.speculated.i.us.us.us.us
  %.sroa.speculated.i.us.us.us.us.1 = select i1 %i.bw, double %i.bv, double %.sroa.speculated.i.us.us.us.us ; 3 uses
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %niter163.next.1 = add nuw i64 %niter163, 2     ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !612

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod159.not, label %._crit_edge.us.us.us.us, label %.epil.preheader157

.epil.preheader157:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi double [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !91
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv108
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  %i.cb = fcmp olt double %i.ca, %.059.us.us.us.us.epil.init
  %.sroa.speculated.i.us.us.us.us.epil = select i1 %i.cb, double %i.ca, double %.059.us.us.us.us.epil.init
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader157
  %.sroa.speculated.i.us.us.us.us.lcssa = phi double [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %.epil.preheader157 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us.us, i64 %indvars.iv108
  store double %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cc, align 8, !tbaa !65
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !613

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cd = add nsw i32 %.04666.us.us.us, -1
  %i.ce = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cg = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cg, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !614

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !74
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cl = mul nsw i32 %i.ck, %6
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.cn = shl nsw i64 %i.cm, 3
  %min.iters.check130 = icmp ult i32 %i.s, 4
  %n.vec134 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count96
  %xtraiter148 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br label %..preheader_crit_edge.us.us77

..preheader_crit_edge.us.us77:                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar127 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next128, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.du, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ds, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.dt, %._crit_edge63.split.us70.us ] ; 7 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.cj
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !85 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cm ; 7 uses
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %..preheader_crit_edge.us.us77
  %i.cr = ptrtoaddr ptr %i.cp to i64
  %i.cs = mul nsw i64 %indvar127, %i.w
  %i.ct = add i64 %i.cs, %i.a
  %i.cu = add i64 %i.cn, %i.cr
  %i.cv = sub i64 %i.cu, %i.ct
  %diff.check132 = icmp ugt i64 %i.cv, -32
  br i1 %diff.check132, label %scalar.ph129.preheader, label %vector.body135

vector.body135:                                   ; preds = %vector.memcheck131, %vector.body135
  %index136 = phi i64 [ %index.next139, %vector.body135 ], [ 0, %vector.memcheck131 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %index136 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load137 = load <2 x double>, ptr %i.cw, align 8, !tbaa !65
  %wide.load138 = load <2 x double>, ptr %i.cx, align 8, !tbaa !65
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %index136 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x double> %wide.load137, ptr %i.cy, align 8, !tbaa !65
  store <2 x double> %wide.load138, ptr %i.cz, align 8, !tbaa !65
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.da, label %middle.block140, label %vector.body135, !llvm.loop !615

middle.block140:                                  ; preds = %vector.body135
  br i1 %cmp.n141, label %._crit_edge63.split.us70.us, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck131, %..preheader_crit_edge.us.us77, %middle.block140
  %indvars.iv93.ph = phi i64 [ 0, %vector.memcheck131 ], [ 0, %..preheader_crit_edge.us.us77 ], [ %n.vec134, %middle.block140 ] ; 3 uses
  br i1 %lcmp.mod149.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %scalar.ph129.prol ], [ %indvars.iv93.ph, %scalar.ph129.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv93.prol
  %i.dc = load double, ptr %i.db, align 8, !tbaa !65
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store double %i.dc, ptr %i.dd, align 8, !tbaa !65
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !616

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %scalar.ph129.preheader ], [ %indvars.iv.next94.prol, %scalar.ph129.prol ]
  %i.de = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge63.split.us70.us, label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %scalar.ph129 ], [ %indvars.iv93.unr, %scalar.ph129.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv93
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !65
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv93
  store double %i.dh, ptr %i.di, align 8, !tbaa !65
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next94
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !65
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94
  store double %i.dk, ptr %i.dl, align 8, !tbaa !65
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next94.1
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !65
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store double %i.dn, ptr %i.do, align 8, !tbaa !65
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next94.2
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !65
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store double %i.dq, ptr %i.dr, align 8, !tbaa !65
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %scalar.ph129, !llvm.loop !617

._crit_edge63.split.us70.us:                      ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block140
  %i.ds = add nsw i32 %.04666.us.us73, -1
  %i.dt = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.du = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.dv = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next128 = add i64 %indvar127, 1
  br i1 %i.dv, label %..preheader_crit_edge.us.us77, label %._crit_edge.loopexit117, !llvm.loop !614

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !91  ; 7 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.dy = sub i64 %i.a, %i.dx
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.dy, -1
  %n.vec = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %xtraiter146 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.preheader56.us

.preheader56.us:                                  ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.ew, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.ex, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader56.us
  %i.dz = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.dz, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load = load <2 x double>, ptr %i.ea, align 8, !tbaa !65
  %wide.load122 = load <2 x double>, ptr %i.eb, align 8, !tbaa !65
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x double> %wide.load, ptr %i.ec, align 8, !tbaa !65
  store <2 x double> %wide.load122, ptr %i.ed, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !618

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader56.us, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader56.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod147.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %scalar.ph.prol ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv83.prol
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !65
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store double %i.eg, ptr %i.eh, align 8, !tbaa !65
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !619

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %i.ei = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %._crit_edge63.split.us70, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv83
  %i.el = load double, ptr %i.ek, align 8, !tbaa !65
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv83
  store double %i.el, ptr %i.em, align 8, !tbaa !65
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next84
  %i.eo = load double, ptr %i.en, align 8, !tbaa !65
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store double %i.eo, ptr %i.ep, align 8, !tbaa !65
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next84.1
  %i.er = load double, ptr %i.eq, align 8, !tbaa !65
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store double %i.er, ptr %i.es, align 8, !tbaa !65
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next84.2
  %i.eu = load double, ptr %i.et, align 8, !tbaa !65
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store double %i.eu, ptr %i.ev, align 8, !tbaa !65
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %scalar.ph, !llvm.loop !620

._crit_edge63.split.us70:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ew = add nsw i32 %.04666.us, -1
  %i.ex = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.ey = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ey, label %.preheader56.us, label %._crit_edge, !llvm.loop !614

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.ez = and i64 %i.h, 17179869176
  %i.fa = icmp eq i64 %i.ez, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fb = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fb, 0
  %lcmp.mod145 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.fo, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.fn, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fa, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod145)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !74
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !85
  %i.fi = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fj = mul nsw i32 %i.fi, %6
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !91
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.fn = add nsw i32 %.04666, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.fp = icmp sgt i32 %.04666, 1
  br i1 %i.fp, label %.preheader56, label %._crit_edge, !llvm.loop !614

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !74
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !85
  %i.fw = load i32, ptr %i.fq, align 4, !tbaa !73
  %i.fx = mul nsw i32 %i.fw, %6
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !91
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !74
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !85
  %i.gh = load i32, ptr %i.gb, align 4, !tbaa !73
  %i.gi = mul nsw i32 %i.gh, %6
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !91
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !611

bb.c:                                             ; preds = %bb.b
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.go, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.g

._crit_edge.loopexit117:                          ; preds = %._crit_edge63.split.us70.us
  store ptr %i.cq, ptr %i.r, align 8, !tbaa !91
  br label %._crit_edge

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us.us.us.us, %._crit_edge.loopexit117, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.g:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gt = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIhEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %lcmp.mod179 = trunc i64 %i.i to i1
  %xtraiter183 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter187 = and i64 %i.y, -4
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  %lcmp.mod186 = icmp ne i64 %xtraiter183, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.ck, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader176, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter181 = phi i64 [ %niter181.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.am, ptr %i.an, align 8, !tbaa !85
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !85
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter181.next.1 = add i64 %niter181, 2         ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %.lr.ph60.us.us.us.us.preheader.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !623

.lr.ph60.us.us.us.us.preheader.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod178.not, label %.lr.ph60.us.us.us.us.preheader, label %.epil.preheader176

.epil.preheader176:                               ; preds = %.lr.ph60.us.us.us.us.preheader.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %.lr.ph60.us.us.us.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !85
  br label %.lr.ph60.us.us.us.us.preheader

.lr.ph60.us.us.us.us.preheader:                   ; preds = %.lr.ph60.us.us.us.us.preheader.unr-lcssa, %.epil.preheader176
  %.pre113 = load ptr, ptr %i.r, align 8, !tbaa !85
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %.lr.ph60.us.us.us.us.preheader, %._crit_edge.us.us.us.us
  %indvars.iv107 = phi i64 [ 0, %.lr.ph60.us.us.us.us.preheader ], [ %indvars.iv.next108, %._crit_edge.us.us.us.us ] ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre113, i64 %indvars.iv107
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15  ; 2 uses
  br i1 %i.ac, label %.epil.preheader182, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i8 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ]
  %niter188 = phi i64 [ %niter188.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv107
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us = call noundef i8 @llvm.umax.i8(i8 %.059.us.us.us.us, i8 %i.bp)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !85
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv107
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i8 @llvm.umax.i8(i8 %.sroa.speculated.i.us.us.us.us, i8 %i.bu)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !85
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv107
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i8 @llvm.umax.i8(i8 %.sroa.speculated.i.us.us.us.us.1, i8 %i.bz)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv107
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i8 @llvm.umax.i8(i8 %.sroa.speculated.i.us.us.us.us.2, i8 %i.ce) ; 3 uses
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter188.next.3 = add nuw i64 %niter188, 4     ; 2 uses
  %niter188.ncmp.3 = icmp eq i64 %niter188.next.3, %unroll_iter187
  br i1 %niter188.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !624

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod184.not, label %._crit_edge.us.us.us.us, label %.epil.preheader182

.epil.preheader182:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i8 [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod186)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader182
  %indvars.iv103.epil = phi i64 [ %indvars.iv.next104.epil, %bb.c ], [ %indvars.iv103.epil.init, %.epil.preheader182 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i8 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader182 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader182 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !85
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv107
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i8 @llvm.umax.i8(i8 %.059.us.us.us.us.epil, i8 %i.ci) ; 2 uses
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter183
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !625

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i8 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.04764.us.us.us, i64 %indvars.iv107
  store i8 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cj, align 1, !tbaa !15
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !626

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.ck = add nsw i32 %.04666.us.us.us, -1
  %i.cl = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cm = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cn = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cn, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !627

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 16 uses
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.us.preheader

.preheader56.us.preheader:                        ; preds = %.preheader56.lr.ph.split.us.split
  %.pre.pre = load ptr, ptr %i.r, align 8, !tbaa !85 ; 8 uses
  %.pre.pre125 = ptrtoaddr ptr %.pre.pre to i64
  %i.co = sub i64 %i.a, %.pre.pre125
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.co, -1
  %min.iters.check126 = icmp ult i32 %i.s, 32
  %i.cp = and i64 %wide.trip.count96, 28
  %n.vec = and i64 %wide.trip.count96, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count96
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  %n.vec128 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n132 = icmp eq i64 %n.vec128, %wide.trip.count96
  %xtraiter171 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br label %iter.check

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %min.iters.check139 = icmp ult i32 %i.s, 4
  %min.iters.check143 = icmp ult i32 %i.s, 32
  %i.cr = and i64 %wide.trip.count96, 28
  %n.vec145 = and i64 %wide.trip.count96, 2147483616 ; 4 uses
  %cmp.n152 = icmp eq i64 %n.vec145, %wide.trip.count96
  %min.epilog.iters.check156 = icmp eq i64 %i.cr, 0
  %n.vec159 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n165 = icmp eq i64 %n.vec159, %wide.trip.count96
  %xtraiter173 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br label %iter.check153

iter.check153:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar137 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next138, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.eg, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ee, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.ef, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !74
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !85 ; 2 uses
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cx = mul nsw i32 %i.cw, %6
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 %i.cy ; 8 uses
  store ptr %i.cz, ptr %i.r, align 8, !tbaa !85
  br i1 %min.iters.check139, label %..preheader_crit_edge.us.us77.preheader, label %vector.memcheck140

vector.memcheck140:                               ; preds = %iter.check153
  %i.da = ptrtoaddr ptr %i.cv to i64
  %i.db = mul nsw i64 %indvar137, %i.w
  %i.dc = add i64 %i.db, %i.a
  %i.dd = add i64 %i.da, %i.cy
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check141 = icmp ugt i64 %i.de, -32
  br i1 %diff.check141, label %..preheader_crit_edge.us.us77.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %vector.memcheck140
  br i1 %min.iters.check143, label %vec.epilog.ph157, label %vector.body146

vector.body146:                                   ; preds = %vector.main.loop.iter.check142, %vector.body146
  %index147 = phi i64 [ %index.next150, %vector.body146 ], [ 0, %vector.main.loop.iter.check142 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index147 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load148 = load <16 x i8>, ptr %i.df, align 1, !tbaa !15
  %wide.load149 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %index147 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <16 x i8> %wide.load148, ptr %i.dh, align 1, !tbaa !15
  store <16 x i8> %wide.load149, ptr %i.di, align 1, !tbaa !15
  %index.next150 = add nuw i64 %index147, 32      ; 2 uses
  %i.dj = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.dj, label %middle.block151, label %vector.body146, !llvm.loop !628

middle.block151:                                  ; preds = %vector.body146
  br i1 %cmp.n152, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check154

vec.epilog.iter.check154:                         ; preds = %middle.block151
  br i1 %min.epilog.iters.check156, label %..preheader_crit_edge.us.us77.preheader, label %vec.epilog.ph157, !prof !79

vec.epilog.ph157:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check154
  %vec.epilog.resume.val158 = phi i64 [ %n.vec145, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check142 ]
  br label %vec.epilog.vector.body160

vec.epilog.vector.body160:                        ; preds = %vec.epilog.vector.body160, %vec.epilog.ph157
  %index161 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph157 ], [ %index.next163, %vec.epilog.vector.body160 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index161
  %wide.load162 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %index161
  store <4 x i8> %wide.load162, ptr %i.dl, align 1, !tbaa !15
  %index.next163 = add nuw i64 %index161, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next163, %n.vec159
  br i1 %i.dm, label %vec.epilog.middle.block164, label %vec.epilog.vector.body160, !llvm.loop !629

vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body160
  br i1 %cmp.n165, label %._crit_edge63.split.us70.us, label %..preheader_crit_edge.us.us77.preheader

..preheader_crit_edge.us.us77.preheader:          ; preds = %iter.check153, %vector.memcheck140, %vec.epilog.iter.check154, %vec.epilog.middle.block164
  %indvars.iv93.ph = phi i64 [ 0, %iter.check153 ], [ 0, %vector.memcheck140 ], [ %n.vec145, %vec.epilog.iter.check154 ], [ %n.vec159, %vec.epilog.middle.block164 ] ; 3 uses
  br i1 %lcmp.mod174.not, label %..preheader_crit_edge.us.us77.prol.loopexit, label %..preheader_crit_edge.us.us77.prol

..preheader_crit_edge.us.us77.prol:               ; preds = %..preheader_crit_edge.us.us77.preheader, %..preheader_crit_edge.us.us77.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %..preheader_crit_edge.us.us77.prol ], [ %indvars.iv93.ph, %..preheader_crit_edge.us.us77.preheader ] ; 3 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %..preheader_crit_edge.us.us77.prol ], [ 0, %..preheader_crit_edge.us.us77.preheader ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv93.prol
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !15
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %..preheader_crit_edge.us.us77.prol.loopexit, label %..preheader_crit_edge.us.us77.prol, !llvm.loop !630

..preheader_crit_edge.us.us77.prol.loopexit:      ; preds = %..preheader_crit_edge.us.us77.prol, %..preheader_crit_edge.us.us77.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %..preheader_crit_edge.us.us77.preheader ], [ %indvars.iv.next94.prol, %..preheader_crit_edge.us.us77.prol ]
  %i.dq = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge63.split.us70.us, label %..preheader_crit_edge.us.us77

..preheader_crit_edge.us.us77:                    ; preds = %..preheader_crit_edge.us.us77.prol.loopexit, %..preheader_crit_edge.us.us77
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %..preheader_crit_edge.us.us77 ], [ %indvars.iv93.unr, %..preheader_crit_edge.us.us77.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv93
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv93
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !15
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next94
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv.next94
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !15
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next94.1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !15
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next94.2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !15
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %..preheader_crit_edge.us.us77, !llvm.loop !631

._crit_edge63.split.us70.us:                      ; preds = %..preheader_crit_edge.us.us77.prol.loopexit, %..preheader_crit_edge.us.us77, %vec.epilog.middle.block164, %middle.block151
  %i.ee = add nsw i32 %.04666.us.us73, -1
  %i.ef = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.eg = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.eh = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next138 = add i64 %indvar137, 1
  br i1 %i.eh, label %iter.check153, label %._crit_edge, !llvm.loop !627

iter.check:                                       ; preds = %.preheader56.us.preheader, %._crit_edge63.split.us70
  %indvar = phi i64 [ 0, %.preheader56.us.preheader ], [ %indvar.next, %._crit_edge63.split.us70 ] ; 2 uses
  %.04666.us = phi i32 [ %4, %.preheader56.us.preheader ], [ %i.fi, %._crit_edge63.split.us70 ] ; 2 uses
  %.04764.us = phi ptr [ %2, %.preheader56.us.preheader ], [ %i.fj, %._crit_edge63.split.us70 ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.ei, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load = load <16 x i8>, ptr %i.ej, align 1, !tbaa !15
  %wide.load127 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <16 x i8> %wide.load, ptr %i.el, align 1, !tbaa !15
  store <16 x i8> %wide.load127, ptr %i.em, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %index129
  %wide.load130 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %index129
  store <4 x i8> %wide.load130, ptr %i.ep, align 1, !tbaa !15
  %index.next131 = add nuw i64 %index129, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next131, %n.vec128
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !633

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n132, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv83.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec128, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod172.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.er = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv83.prol
  %i.es = load i8, ptr %i.er, align 1, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv83.prol
  store i8 %i.es, ptr %i.et, align 1, !tbaa !15
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter171
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !634

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ]
  %i.eu = sub nsw i64 %indvars.iv83.ph, %wide.trip.count96
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %vec.epilog.scalar.ph ], [ %indvars.iv83.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv83
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv83
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !15
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv.next84
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv.next84
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !15
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv.next84.1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv.next84.1
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !15
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %indvars.iv.next84.2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %.04764.us, i64 %indvars.iv.next84.2
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !15
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count96
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph, !llvm.loop !635

._crit_edge63.split.us70:                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fi = add nsw i32 %.04666.us, -1
  %i.fj = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.fk = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fk, label %iter.check, label %._crit_edge, !llvm.loop !627

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.fl = and i64 %i.h, 17179869176
  %i.fm = icmp eq i64 %i.fl, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fn = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fn, 0
  %lcmp.mod170 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.ga, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.fz, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fm, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod170)
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !74
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !85
  %i.fu = load i32, ptr %i.fo, align 4, !tbaa !73
  %i.fv = mul nsw i32 %i.fu, %6
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !85
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.fz = add nsw i32 %.04666, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.gb = icmp sgt i32 %.04666, 1
  br i1 %i.gb, label %.preheader56, label %._crit_edge, !llvm.loop !627

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !74
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !85
  %i.gi = load i32, ptr %i.gc, align 4, !tbaa !73
  %i.gj = mul nsw i32 %i.gi, %6
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.gh, i64 %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !85
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !74
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !85
  %i.gt = load i32, ptr %i.gn, align 4, !tbaa !73
  %i.gu = mul nsw i32 %i.gt, %6
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gs, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !623

bb.d:                                             ; preds = %bb.b
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.ha, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.h

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us70.us, %._crit_edge63.split.us.us.us.us, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit53, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit53
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
end_hunk_13
begin_hunk_14_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpItEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count101 = and i64 %i.i, 2147483647  ; 2 uses
  %wide.trip.count110 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count101, -1      ; 3 uses
  %i.z = add nsw i64 %wide.trip.count101, -2
  %i.aa = icmp eq i64 %i.y, 0
  %unroll_iter174 = and i64 %i.i, 2147483646
  %i.ab = and i64 %i.h, 8
  %lcmp.mod172.not = icmp eq i64 %i.ab, 0
  %lcmp.mod173 = trunc i64 %i.i to i1
  %xtraiter177 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter181 = and i64 %i.y, -4
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod180 = icmp ne i64 %xtraiter177, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cn, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader170, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter175 = phi i64 [ %niter175.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !638

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod172.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader170

.epil.preheader170:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !87
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader170
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv107
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !81 ; 2 uses
  br i1 %i.ac, label %.epil.preheader176, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bm, %.lr.ph60.us.us.us.us ]
  %niter182 = phi i64 [ %niter182.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv107
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us = call noundef i16 @llvm.umax.i16(i16 %.059.us.us.us.us, i16 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv107
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i.us.us.us.us, i16 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv107
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i.us.us.us.us.1, i16 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv107
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i.us.us.us.us.2, i16 %i.cf) ; 3 uses
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter182.next.3 = add nuw i64 %niter182, 4     ; 2 uses
  %niter182.ncmp.3 = icmp eq i64 %niter182.next.3, %unroll_iter181
  br i1 %niter182.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !639

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod178.not, label %._crit_edge.us.us.us.us, label %.epil.preheader176

.epil.preheader176:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i16 [ %i.bm, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader176
  %indvars.iv103.epil = phi i64 [ %indvars.iv.next104.epil, %bb.c ], [ %indvars.iv103.epil.init, %.epil.preheader176 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i16 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader176 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader176 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv107
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i16 @llvm.umax.i16(i16 %.059.us.us.us.us.epil, i16 %i.cj) ; 2 uses
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter177
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !640

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us.us, i64 %indvars.iv107
  store i16 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.ck, align 2, !tbaa !81
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !641

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cl = add nsw i32 %.04666.us.us.us, -1
  %i.cm = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.co = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.co, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !642

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !74
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ct = mul nsw i32 %i.cs, %6
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.cv = shl nsw i64 %i.cu, 1
  %min.iters.check134 = icmp ult i32 %i.s, 4
  %min.iters.check138 = icmp ult i32 %i.s, 16
  %i.cw = and i64 %wide.trip.count96, 12
  %n.vec140 = and i64 %wide.trip.count96, 2147483632 ; 4 uses
  %cmp.n147 = icmp eq i64 %n.vec140, %wide.trip.count96
  %min.epilog.iters.check151 = icmp eq i64 %i.cw, 0
  %n.vec154 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec154, %wide.trip.count96
  %xtraiter167 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %iter.check148

iter.check148:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar132 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next133, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.eg, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ee, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.ef, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !85 ; 2 uses
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.cu ; 8 uses
  br i1 %min.iters.check134, label %vec.epilog.scalar.ph150.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %iter.check148
  %i.da = ptrtoaddr ptr %i.cy to i64
  %i.db = mul nsw i64 %indvar132, %i.w
  %i.dc = add i64 %i.db, %i.a
  %i.dd = add i64 %i.cv, %i.da
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check136 = icmp ugt i64 %i.de, -32
  br i1 %diff.check136, label %vec.epilog.scalar.ph150.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck135
  br i1 %min.iters.check138, label %vec.epilog.ph152, label %vector.body141

vector.body141:                                   ; preds = %vector.main.loop.iter.check137, %vector.body141
  %index142 = phi i64 [ %index.next145, %vector.body141 ], [ 0, %vector.main.loop.iter.check137 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index142 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load143 = load <8 x i16>, ptr %i.df, align 2, !tbaa !81
  %wide.load144 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !81
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index142 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <8 x i16> %wide.load143, ptr %i.dh, align 2, !tbaa !81
  store <8 x i16> %wide.load144, ptr %i.di, align 2, !tbaa !81
  %index.next145 = add nuw i64 %index142, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.dj, label %middle.block146, label %vector.body141, !llvm.loop !643

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check149

vec.epilog.iter.check149:                         ; preds = %middle.block146
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph150.preheader, label %vec.epilog.ph152, !prof !82

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check149
  %vec.epilog.resume.val153 = phi i64 [ %n.vec140, %vec.epilog.iter.check149 ], [ 0, %vector.main.loop.iter.check137 ]
  br label %vec.epilog.vector.body155

vec.epilog.vector.body155:                        ; preds = %vec.epilog.vector.body155, %vec.epilog.ph152
  %index156 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph152 ], [ %index.next158, %vec.epilog.vector.body155 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index156
  %wide.load157 = load <4 x i16>, ptr %i.dk, align 2, !tbaa !81
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index156
  store <4 x i16> %wide.load157, ptr %i.dl, align 2, !tbaa !81
  %index.next158 = add nuw i64 %index156, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next158, %n.vec154
  br i1 %i.dm, label %vec.epilog.middle.block159, label %vec.epilog.vector.body155, !llvm.loop !644

vec.epilog.middle.block159:                       ; preds = %vec.epilog.vector.body155
  br i1 %cmp.n160, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150.preheader

vec.epilog.scalar.ph150.preheader:                ; preds = %iter.check148, %vector.memcheck135, %vec.epilog.iter.check149, %vec.epilog.middle.block159
  %indvars.iv93.ph = phi i64 [ 0, %iter.check148 ], [ 0, %vector.memcheck135 ], [ %n.vec140, %vec.epilog.iter.check149 ], [ %n.vec154, %vec.epilog.middle.block159 ] ; 3 uses
  br i1 %lcmp.mod168.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol

vec.epilog.scalar.ph150.prol:                     ; preds = %vec.epilog.scalar.ph150.preheader, %vec.epilog.scalar.ph150.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %vec.epilog.scalar.ph150.prol ], [ %indvars.iv93.ph, %vec.epilog.scalar.ph150.preheader ] ; 3 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %vec.epilog.scalar.ph150.prol ], [ 0, %vec.epilog.scalar.ph150.preheader ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv93.prol
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !81
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !81
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol, !llvm.loop !645

vec.epilog.scalar.ph150.prol.loopexit:            ; preds = %vec.epilog.scalar.ph150.prol, %vec.epilog.scalar.ph150.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %vec.epilog.scalar.ph150.preheader ], [ %indvars.iv.next94.prol, %vec.epilog.scalar.ph150.prol ]
  %i.dq = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150

vec.epilog.scalar.ph150:                          ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %vec.epilog.scalar.ph150 ], [ %indvars.iv93.unr, %vec.epilog.scalar.ph150.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv93
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !81
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv93
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !81
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !81
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !81
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94.1
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !81
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !81
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94.2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !81
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !81
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150, !llvm.loop !646

._crit_edge63.split.us70.us:                      ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150, %vec.epilog.middle.block159, %middle.block146
  %i.ee = add nsw i32 %.04666.us.us73, -1
  %i.ef = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.eg = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.eh = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next133 = add i64 %indvar132, 1
  br i1 %i.eh, label %iter.check148, label %._crit_edge.loopexit116, !llvm.loop !642

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !87  ; 8 uses
  %i.ej = ptrtoaddr ptr %i.ei to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.ek = sub i64 %i.a, %i.ej
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.ek, -1
  %min.iters.check121 = icmp ult i32 %i.s, 16
  %i.el = and i64 %wide.trip.count86, 12
  %n.vec = and i64 %wide.trip.count86, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %min.epilog.iters.check = icmp eq i64 %i.el, 0
  %n.vec123 = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n127 = icmp eq i64 %n.vec123, %wide.trip.count86
  %xtraiter165 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.fm, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.fn, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.em = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.em, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <8 x i16>, ptr %i.en, align 2, !tbaa !81
  %wide.load122 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !81
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <8 x i16> %wide.load, ptr %i.ep, align 2, !tbaa !81
  store <8 x i16> %wide.load122, ptr %i.eq, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !647

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index124
  %wide.load125 = load <4 x i16>, ptr %i.es, align 2, !tbaa !81
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index124
  store <4 x i16> %wide.load125, ptr %i.et, align 2, !tbaa !81
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !648

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv83.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod166.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv83.prol
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !81
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !81
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !649

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ]
  %i.ey = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %vec.epilog.scalar.ph ], [ %indvars.iv83.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv83
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !81
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv83
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !81
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !81
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !81
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84.1
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !81
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !81
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84.2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !81
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !81
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph, !llvm.loop !650

._crit_edge63.split.us70:                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fm = add nsw i32 %.04666.us, -1
  %i.fn = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.fo = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fo, label %iter.check, label %._crit_edge, !llvm.loop !642

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.fp = and i64 %i.h, 17179869176
  %i.fq = icmp eq i64 %i.fp, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fr = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fr, 0
  %lcmp.mod164 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.ge, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.gd, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fq, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod164)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !74
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !85
  %i.fy = load i32, ptr %i.fs, align 4, !tbaa !73
  %i.fz = mul nsw i32 %i.fy, %6
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !87
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.gd = add nsw i32 %.04666, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.gf = icmp sgt i32 %.04666, 1
  br i1 %i.gf, label %.preheader56, label %._crit_edge, !llvm.loop !642

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !74
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !85
  %i.gm = load i32, ptr %i.gg, align 4, !tbaa !73
  %i.gn = mul nsw i32 %i.gm, %6
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.gl, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !87
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !74
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !85
  %i.gx = load i32, ptr %i.gr, align 4, !tbaa !73
  %i.gy = mul nsw i32 %i.gx, %6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !638

bb.d:                                             ; preds = %bb.b
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.he, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.h

._crit_edge.loopexit116:                          ; preds = %._crit_edge63.split.us70.us
  store ptr %i.cz, ptr %i.r, align 8, !tbaa !87
  br label %._crit_edge

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us.us.us.us, %._crit_edge.loopexit116, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKtLm136EED2Ev.exit53, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKtLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKtLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.hg, 0
end_hunk_14
begin_hunk_15_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIsEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count101 = and i64 %i.i, 2147483647  ; 2 uses
  %wide.trip.count110 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count101, -1      ; 3 uses
  %i.z = add nsw i64 %wide.trip.count101, -2
  %i.aa = icmp eq i64 %i.y, 0
  %unroll_iter174 = and i64 %i.i, 2147483646
  %i.ab = and i64 %i.h, 8
  %lcmp.mod172.not = icmp eq i64 %i.ab, 0
  %lcmp.mod173 = trunc i64 %i.i to i1
  %xtraiter177 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter181 = and i64 %i.y, -4
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod180 = icmp ne i64 %xtraiter177, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cn, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader170, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter175 = phi i64 [ %niter175.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !653

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod172.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader170

.epil.preheader170:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !87
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader170
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv107
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !81 ; 2 uses
  br i1 %i.ac, label %.epil.preheader176, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bm, %.lr.ph60.us.us.us.us ]
  %niter182 = phi i64 [ %niter182.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv107
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us = call noundef i16 @llvm.smax.i16(i16 %.059.us.us.us.us, i16 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv107
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i.us.us.us.us, i16 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv107
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i.us.us.us.us.1, i16 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv107
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i.us.us.us.us.2, i16 %i.cf) ; 3 uses
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter182.next.3 = add nuw i64 %niter182, 4     ; 2 uses
  %niter182.ncmp.3 = icmp eq i64 %niter182.next.3, %unroll_iter181
  br i1 %niter182.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !654

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod178.not, label %._crit_edge.us.us.us.us, label %.epil.preheader176

.epil.preheader176:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i16 [ %i.bm, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader176
  %indvars.iv103.epil = phi i64 [ %indvars.iv.next104.epil, %bb.c ], [ %indvars.iv103.epil.init, %.epil.preheader176 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i16 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader176 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader176 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv107
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i16 @llvm.smax.i16(i16 %.059.us.us.us.us.epil, i16 %i.cj) ; 2 uses
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter177
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !655

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us.us, i64 %indvars.iv107
  store i16 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.ck, align 2, !tbaa !81
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !656

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cl = add nsw i32 %.04666.us.us.us, -1
  %i.cm = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.co = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.co, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !657

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !74
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ct = mul nsw i32 %i.cs, %6
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.cv = shl nsw i64 %i.cu, 1
  %min.iters.check134 = icmp ult i32 %i.s, 4
  %min.iters.check138 = icmp ult i32 %i.s, 16
  %i.cw = and i64 %wide.trip.count96, 12
  %n.vec140 = and i64 %wide.trip.count96, 2147483632 ; 4 uses
  %cmp.n147 = icmp eq i64 %n.vec140, %wide.trip.count96
  %min.epilog.iters.check151 = icmp eq i64 %i.cw, 0
  %n.vec154 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec154, %wide.trip.count96
  %xtraiter167 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %iter.check148

iter.check148:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar132 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next133, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.eg, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ee, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.ef, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !85 ; 2 uses
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.cu ; 8 uses
  br i1 %min.iters.check134, label %vec.epilog.scalar.ph150.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %iter.check148
  %i.da = ptrtoaddr ptr %i.cy to i64
  %i.db = mul nsw i64 %indvar132, %i.w
  %i.dc = add i64 %i.db, %i.a
  %i.dd = add i64 %i.cv, %i.da
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check136 = icmp ugt i64 %i.de, -32
  br i1 %diff.check136, label %vec.epilog.scalar.ph150.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck135
  br i1 %min.iters.check138, label %vec.epilog.ph152, label %vector.body141

vector.body141:                                   ; preds = %vector.main.loop.iter.check137, %vector.body141
  %index142 = phi i64 [ %index.next145, %vector.body141 ], [ 0, %vector.main.loop.iter.check137 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index142 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load143 = load <8 x i16>, ptr %i.df, align 2, !tbaa !81
  %wide.load144 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !81
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index142 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <8 x i16> %wide.load143, ptr %i.dh, align 2, !tbaa !81
  store <8 x i16> %wide.load144, ptr %i.di, align 2, !tbaa !81
  %index.next145 = add nuw i64 %index142, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.dj, label %middle.block146, label %vector.body141, !llvm.loop !658

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check149

vec.epilog.iter.check149:                         ; preds = %middle.block146
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph150.preheader, label %vec.epilog.ph152, !prof !82

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check149
  %vec.epilog.resume.val153 = phi i64 [ %n.vec140, %vec.epilog.iter.check149 ], [ 0, %vector.main.loop.iter.check137 ]
  br label %vec.epilog.vector.body155

vec.epilog.vector.body155:                        ; preds = %vec.epilog.vector.body155, %vec.epilog.ph152
  %index156 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph152 ], [ %index.next158, %vec.epilog.vector.body155 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index156
  %wide.load157 = load <4 x i16>, ptr %i.dk, align 2, !tbaa !81
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index156
  store <4 x i16> %wide.load157, ptr %i.dl, align 2, !tbaa !81
  %index.next158 = add nuw i64 %index156, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next158, %n.vec154
  br i1 %i.dm, label %vec.epilog.middle.block159, label %vec.epilog.vector.body155, !llvm.loop !659

vec.epilog.middle.block159:                       ; preds = %vec.epilog.vector.body155
  br i1 %cmp.n160, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150.preheader

vec.epilog.scalar.ph150.preheader:                ; preds = %iter.check148, %vector.memcheck135, %vec.epilog.iter.check149, %vec.epilog.middle.block159
  %indvars.iv93.ph = phi i64 [ 0, %iter.check148 ], [ 0, %vector.memcheck135 ], [ %n.vec140, %vec.epilog.iter.check149 ], [ %n.vec154, %vec.epilog.middle.block159 ] ; 3 uses
  br i1 %lcmp.mod168.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol

vec.epilog.scalar.ph150.prol:                     ; preds = %vec.epilog.scalar.ph150.preheader, %vec.epilog.scalar.ph150.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %vec.epilog.scalar.ph150.prol ], [ %indvars.iv93.ph, %vec.epilog.scalar.ph150.preheader ] ; 3 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %vec.epilog.scalar.ph150.prol ], [ 0, %vec.epilog.scalar.ph150.preheader ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv93.prol
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !81
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !81
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol, !llvm.loop !660

vec.epilog.scalar.ph150.prol.loopexit:            ; preds = %vec.epilog.scalar.ph150.prol, %vec.epilog.scalar.ph150.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %vec.epilog.scalar.ph150.preheader ], [ %indvars.iv.next94.prol, %vec.epilog.scalar.ph150.prol ]
  %i.dq = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150

vec.epilog.scalar.ph150:                          ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %vec.epilog.scalar.ph150 ], [ %indvars.iv93.unr, %vec.epilog.scalar.ph150.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv93
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !81
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv93
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !81
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !81
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !81
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94.1
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !81
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !81
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next94.2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !81
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !81
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph150, !llvm.loop !661

._crit_edge63.split.us70.us:                      ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150, %vec.epilog.middle.block159, %middle.block146
  %i.ee = add nsw i32 %.04666.us.us73, -1
  %i.ef = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.eg = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.eh = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next133 = add i64 %indvar132, 1
  br i1 %i.eh, label %iter.check148, label %._crit_edge.loopexit116, !llvm.loop !657

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !87  ; 8 uses
  %i.ej = ptrtoaddr ptr %i.ei to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.ek = sub i64 %i.a, %i.ej
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.ek, -1
  %min.iters.check121 = icmp ult i32 %i.s, 16
  %i.el = and i64 %wide.trip.count86, 12
  %n.vec = and i64 %wide.trip.count86, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %min.epilog.iters.check = icmp eq i64 %i.el, 0
  %n.vec123 = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n127 = icmp eq i64 %n.vec123, %wide.trip.count86
  %xtraiter165 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.fm, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.fn, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.em = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.em, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <8 x i16>, ptr %i.en, align 2, !tbaa !81
  %wide.load122 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !81
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <8 x i16> %wide.load, ptr %i.ep, align 2, !tbaa !81
  store <8 x i16> %wide.load122, ptr %i.eq, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index124
  %wide.load125 = load <4 x i16>, ptr %i.es, align 2, !tbaa !81
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index124
  store <4 x i16> %wide.load125, ptr %i.et, align 2, !tbaa !81
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !663

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv83.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod166.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv83.prol
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !81
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !81
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !664

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next84.prol, %vec.epilog.scalar.ph.prol ]
  %i.ey = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %vec.epilog.scalar.ph ], [ %indvars.iv83.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv83
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !81
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv83
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !81
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !81
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !81
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84.1
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !81
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !81
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv.next84.2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !81
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !81
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph, !llvm.loop !665

._crit_edge63.split.us70:                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fm = add nsw i32 %.04666.us, -1
  %i.fn = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.fo = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fo, label %iter.check, label %._crit_edge, !llvm.loop !657

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.fp = and i64 %i.h, 17179869176
  %i.fq = icmp eq i64 %i.fp, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fr = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fr, 0
  %lcmp.mod164 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.ge, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.gd, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fq, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod164)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !74
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !85
  %i.fy = load i32, ptr %i.fs, align 4, !tbaa !73
  %i.fz = mul nsw i32 %i.fy, %6
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !87
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.gd = add nsw i32 %.04666, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.gf = icmp sgt i32 %.04666, 1
  br i1 %i.gf, label %.preheader56, label %._crit_edge, !llvm.loop !657

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !74
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !85
  %i.gm = load i32, ptr %i.gg, align 4, !tbaa !73
  %i.gn = mul nsw i32 %i.gm, %6
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.gl, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !87
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !74
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !85
  %i.gx = load i32, ptr %i.gr, align 4, !tbaa !73
  %i.gy = mul nsw i32 %i.gx, %6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !653

bb.d:                                             ; preds = %bb.b
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.he, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.h

._crit_edge.loopexit116:                          ; preds = %._crit_edge63.split.us70.us
  store ptr %i.cz, ptr %i.r, align 8, !tbaa !87
  br label %._crit_edge

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us.us.us.us, %._crit_edge.loopexit116, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKsLm136EED2Ev.exit53, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKsLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKsLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.hg, 0
end_hunk_15
begin_hunk_16_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIfEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !108
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !107
  br label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 14 uses
  %i.s = mul i32 %6, %5                           ; 6 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count101 = and i64 %i.i, 2147483647  ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count101, -1      ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  %unroll_iter155 = and i64 %i.i, 2147483646
  %i.aa = and i64 %i.h, 8
  %lcmp.mod153.not = icmp eq i64 %i.aa, 0
  %lcmp.mod154 = trunc i64 %i.i to i1
  %xtraiter158 = and i64 %i.y, 1
  %i.ab = icmp eq i64 %wide.trip.count101, 2
  %unroll_iter162 = and i64 %i.y, -2
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod161 = trunc i64 %i.y to i1
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cf, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cd, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.ce, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader151, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter156 = phi i64 [ %niter156.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.aj = mul nsw i32 %i.ai, %6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.al, ptr %i.am, align 8, !tbaa !89
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = load i32, ptr %i.an, align 4, !tbaa !73
  %i.au = mul nsw i32 %i.at, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !89
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !668

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod153.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader151

.epil.preheader151:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.bf = mul nsw i32 %i.be, %6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !89
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader151
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !89
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv108
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !84 ; 2 uses
  br i1 %i.ab, label %.epil.preheader157, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 3 uses
  %.059.us.us.us.us = phi float [ %.sroa.speculated.i.us.us.us.us.1, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ] ; 2 uses
  %niter163 = phi i64 [ %niter163.next.1, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv108
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !84 ; 2 uses
  %i.bq = fcmp olt float %.059.us.us.us.us, %i.bp
  %.sroa.speculated.i.us.us.us.us = select i1 %i.bq, float %i.bp, float %.059.us.us.us.us ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !89
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv108
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !84 ; 2 uses
  %i.bw = fcmp olt float %.sroa.speculated.i.us.us.us.us, %i.bv
  %.sroa.speculated.i.us.us.us.us.1 = select i1 %i.bw, float %i.bv, float %.sroa.speculated.i.us.us.us.us ; 3 uses
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %niter163.next.1 = add nuw i64 %niter163, 2     ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !669

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod159.not, label %._crit_edge.us.us.us.us, label %.epil.preheader157

.epil.preheader157:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi float [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv108
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !84 ; 2 uses
  %i.cb = fcmp olt float %.059.us.us.us.us.epil.init, %i.ca
  %.sroa.speculated.i.us.us.us.us.epil = select i1 %i.cb, float %i.ca, float %.059.us.us.us.us.epil.init
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader157
  %.sroa.speculated.i.us.us.us.us.lcssa = phi float [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %.epil.preheader157 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us.us, i64 %indvars.iv108
  store float %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cc, align 4, !tbaa !84
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !670

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cd = add nsw i32 %.04666.us.us.us, -1
  %i.ce = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cg = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cg, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !671

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !74
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cl = mul nsw i32 %i.ck, %6
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.cn = shl nsw i64 %i.cm, 2
  %min.iters.check130 = icmp ult i32 %i.s, 8
  %n.vec134 = and i64 %wide.trip.count96, 2147483640 ; 3 uses
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count96
  %xtraiter148 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br label %..preheader_crit_edge.us.us77

..preheader_crit_edge.us.us77:                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar127 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next128, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.du, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ds, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.dt, %._crit_edge63.split.us70.us ] ; 7 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.cj
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !85 ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cm ; 7 uses
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %..preheader_crit_edge.us.us77
  %i.cr = ptrtoaddr ptr %i.cp to i64
  %i.cs = mul nsw i64 %indvar127, %i.w
  %i.ct = add i64 %i.cs, %i.a
  %i.cu = add i64 %i.cn, %i.cr
  %i.cv = sub i64 %i.cu, %i.ct
  %diff.check132 = icmp ugt i64 %i.cv, -32
  br i1 %diff.check132, label %scalar.ph129.preheader, label %vector.body135

vector.body135:                                   ; preds = %vector.memcheck131, %vector.body135
  %index136 = phi i64 [ %index.next139, %vector.body135 ], [ 0, %vector.memcheck131 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index136 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load137 = load <4 x float>, ptr %i.cw, align 4, !tbaa !84
  %wide.load138 = load <4 x float>, ptr %i.cx, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %index136 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x float> %wide.load137, ptr %i.cy, align 4, !tbaa !84
  store <4 x float> %wide.load138, ptr %i.cz, align 4, !tbaa !84
  %index.next139 = add nuw i64 %index136, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.da, label %middle.block140, label %vector.body135, !llvm.loop !672

middle.block140:                                  ; preds = %vector.body135
  br i1 %cmp.n141, label %._crit_edge63.split.us70.us, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck131, %..preheader_crit_edge.us.us77, %middle.block140
  %indvars.iv93.ph = phi i64 [ 0, %vector.memcheck131 ], [ 0, %..preheader_crit_edge.us.us77 ], [ %n.vec134, %middle.block140 ] ; 3 uses
  br i1 %lcmp.mod149.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %scalar.ph129.prol ], [ %indvars.iv93.ph, %scalar.ph129.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv93.prol
  %i.dc = load float, ptr %i.db, align 4, !tbaa !84
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store float %i.dc, ptr %i.dd, align 4, !tbaa !84
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !673

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %scalar.ph129.preheader ], [ %indvars.iv.next94.prol, %scalar.ph129.prol ]
  %i.de = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge63.split.us70.us, label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %scalar.ph129 ], [ %indvars.iv93.unr, %scalar.ph129.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv93
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !84
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv93
  store float %i.dh, ptr %i.di, align 4, !tbaa !84
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next94
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !84
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94
  store float %i.dk, ptr %i.dl, align 4, !tbaa !84
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next94.1
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !84
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store float %i.dn, ptr %i.do, align 4, !tbaa !84
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next94.2
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !84
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store float %i.dq, ptr %i.dr, align 4, !tbaa !84
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %scalar.ph129, !llvm.loop !674

._crit_edge63.split.us70.us:                      ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block140
  %i.ds = add nsw i32 %.04666.us.us73, -1
  %i.dt = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.du = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.dv = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next128 = add i64 %indvar127, 1
  br i1 %i.dv, label %..preheader_crit_edge.us.us77, label %._crit_edge.loopexit117, !llvm.loop !671

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !89  ; 7 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.dy = sub i64 %i.a, %i.dx
  %min.iters.check = icmp ult i32 %i.s, 8
  %invariant.op = add i64 %i.dy, -1
  %n.vec = and i64 %wide.trip.count86, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %xtraiter146 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.preheader56.us

.preheader56.us:                                  ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.ew, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.ex, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader56.us
  %i.dz = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.dz, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load = load <4 x float>, ptr %i.ea, align 4, !tbaa !84
  %wide.load122 = load <4 x float>, ptr %i.eb, align 4, !tbaa !84
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %wide.load, ptr %i.ec, align 4, !tbaa !84
  store <4 x float> %wide.load122, ptr %i.ed, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !675

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader56.us, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader56.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod147.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %scalar.ph.prol ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv83.prol
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !84
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store float %i.eg, ptr %i.eh, align 4, !tbaa !84
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !676

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %i.ei = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %._crit_edge63.split.us70, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv83
  %i.el = load float, ptr %i.ek, align 4, !tbaa !84
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv83
  store float %i.el, ptr %i.em, align 4, !tbaa !84
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next84
  %i.eo = load float, ptr %i.en, align 4, !tbaa !84
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store float %i.eo, ptr %i.ep, align 4, !tbaa !84
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next84.1
  %i.er = load float, ptr %i.eq, align 4, !tbaa !84
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store float %i.er, ptr %i.es, align 4, !tbaa !84
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next84.2
  %i.eu = load float, ptr %i.et, align 4, !tbaa !84
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store float %i.eu, ptr %i.ev, align 4, !tbaa !84
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %scalar.ph, !llvm.loop !677

._crit_edge63.split.us70:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ew = add nsw i32 %.04666.us, -1
  %i.ex = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.ey = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ey, label %.preheader56.us, label %._crit_edge, !llvm.loop !671

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.ez = and i64 %i.h, 17179869176
  %i.fa = icmp eq i64 %i.ez, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fb = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fb, 0
  %lcmp.mod145 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.fo, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.fn, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fa, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod145)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !74
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !85
  %i.fi = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fj = mul nsw i32 %i.fi, %6
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !89
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.fn = add nsw i32 %.04666, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.fp = icmp sgt i32 %.04666, 1
  br i1 %i.fp, label %.preheader56, label %._crit_edge, !llvm.loop !671

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !74
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !85
  %i.fw = load i32, ptr %i.fq, align 4, !tbaa !73
  %i.fx = mul nsw i32 %i.fw, %6
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !89
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !74
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !85
  %i.gh = load i32, ptr %i.gb, align 4, !tbaa !73
  %i.gi = mul nsw i32 %i.gh, %6
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !89
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !668

bb.c:                                             ; preds = %bb.b
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.go, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.g

._crit_edge.loopexit117:                          ; preds = %._crit_edge63.split.us70.us
  store ptr %i.cq, ptr %i.r, align 8, !tbaa !89
  br label %._crit_edge

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us.us.us.us, %._crit_edge.loopexit117, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit53, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.g:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gt = landingpad { ptr, i32 }
end_hunk_16
begin_hunk_17_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIdEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !112
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !111
  br label %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 14 uses
  %i.s = mul i32 %6, %5                           ; 6 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count101 = and i64 %i.i, 2147483647  ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count101, -1      ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  %unroll_iter155 = and i64 %i.i, 2147483646
  %i.aa = and i64 %i.h, 8
  %lcmp.mod153.not = icmp eq i64 %i.aa, 0
  %lcmp.mod154 = trunc i64 %i.i to i1
  %xtraiter158 = and i64 %i.y, 1
  %i.ab = icmp eq i64 %wide.trip.count101, 2
  %unroll_iter162 = and i64 %i.y, -2
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod161 = trunc i64 %i.y to i1
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cf, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cd, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.ce, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader151, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter156 = phi i64 [ %niter156.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.aj = mul nsw i32 %i.ai, %6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98
  store ptr %i.al, ptr %i.am, align 8, !tbaa !91
  %indvars.iv.next99 = or disjoint i64 %indvars.iv98, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next99 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = load i32, ptr %i.an, align 4, !tbaa !73
  %i.au = mul nsw i32 %i.at, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !91
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !680

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod153.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader151

.epil.preheader151:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next99.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.bf = mul nsw i32 %i.be, %6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv98.epil.init
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !91
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader151
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !91
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv108
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !65 ; 2 uses
  br i1 %i.ab, label %.epil.preheader157, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 3 uses
  %.059.us.us.us.us = phi double [ %.sroa.speculated.i.us.us.us.us.1, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ] ; 2 uses
  %niter163 = phi i64 [ %niter163.next.1, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv108
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !65 ; 2 uses
  %i.bq = fcmp olt double %.059.us.us.us.us, %i.bp
  %.sroa.speculated.i.us.us.us.us = select i1 %i.bq, double %i.bp, double %.059.us.us.us.us ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv108
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !65 ; 2 uses
  %i.bw = fcmp olt double %.sroa.speculated.i.us.us.us.us, %i.bv
  %.sroa.speculated.i.us.us.us.us.1 = select i1 %i.bw, double %i.bv, double %.sroa.speculated.i.us.us.us.us ; 3 uses
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %niter163.next.1 = add nuw i64 %niter163, 2     ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !681

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod159.not, label %._crit_edge.us.us.us.us, label %.epil.preheader157

.epil.preheader157:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next104.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi double [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv103.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !91
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv108
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  %i.cb = fcmp olt double %.059.us.us.us.us.epil.init, %i.ca
  %.sroa.speculated.i.us.us.us.us.epil = select i1 %i.cb, double %i.ca, double %.059.us.us.us.us.epil.init
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader157
  %.sroa.speculated.i.us.us.us.us.lcssa = phi double [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %.epil.preheader157 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us.us, i64 %indvars.iv108
  store double %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cc, align 8, !tbaa !65
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !682

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cd = add nsw i32 %.04666.us.us.us, -1
  %i.ce = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cg = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cg, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !683

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !74
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cl = mul nsw i32 %i.ck, %6
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.cn = shl nsw i64 %i.cm, 3
  %min.iters.check130 = icmp ult i32 %i.s, 4
  %n.vec134 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count96
  %xtraiter148 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br label %..preheader_crit_edge.us.us77

..preheader_crit_edge.us.us77:                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar127 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next128, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.du, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ds, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.dt, %._crit_edge63.split.us70.us ] ; 7 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %i.cj
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !85 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cm ; 7 uses
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %..preheader_crit_edge.us.us77
  %i.cr = ptrtoaddr ptr %i.cp to i64
  %i.cs = mul nsw i64 %indvar127, %i.w
  %i.ct = add i64 %i.cs, %i.a
  %i.cu = add i64 %i.cn, %i.cr
  %i.cv = sub i64 %i.cu, %i.ct
  %diff.check132 = icmp ugt i64 %i.cv, -32
  br i1 %diff.check132, label %scalar.ph129.preheader, label %vector.body135

vector.body135:                                   ; preds = %vector.memcheck131, %vector.body135
  %index136 = phi i64 [ %index.next139, %vector.body135 ], [ 0, %vector.memcheck131 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %index136 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load137 = load <2 x double>, ptr %i.cw, align 8, !tbaa !65
  %wide.load138 = load <2 x double>, ptr %i.cx, align 8, !tbaa !65
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %index136 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x double> %wide.load137, ptr %i.cy, align 8, !tbaa !65
  store <2 x double> %wide.load138, ptr %i.cz, align 8, !tbaa !65
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.da, label %middle.block140, label %vector.body135, !llvm.loop !684

middle.block140:                                  ; preds = %vector.body135
  br i1 %cmp.n141, label %._crit_edge63.split.us70.us, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck131, %..preheader_crit_edge.us.us77, %middle.block140
  %indvars.iv93.ph = phi i64 [ 0, %vector.memcheck131 ], [ 0, %..preheader_crit_edge.us.us77 ], [ %n.vec134, %middle.block140 ] ; 3 uses
  br i1 %lcmp.mod149.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %scalar.ph129.prol ], [ %indvars.iv93.ph, %scalar.ph129.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv93.prol
  %i.dc = load double, ptr %i.db, align 8, !tbaa !65
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv93.prol
  store double %i.dc, ptr %i.dd, align 8, !tbaa !65
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !685

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %scalar.ph129.preheader ], [ %indvars.iv.next94.prol, %scalar.ph129.prol ]
  %i.de = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge63.split.us70.us, label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %scalar.ph129 ], [ %indvars.iv93.unr, %scalar.ph129.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv93
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !65
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv93
  store double %i.dh, ptr %i.di, align 8, !tbaa !65
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next94
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !65
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94
  store double %i.dk, ptr %i.dl, align 8, !tbaa !65
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next94.1
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !65
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.1
  store double %i.dn, ptr %i.do, align 8, !tbaa !65
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next94.2
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !65
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next94.2
  store double %i.dq, ptr %i.dr, align 8, !tbaa !65
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge63.split.us70.us, label %scalar.ph129, !llvm.loop !686

._crit_edge63.split.us70.us:                      ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block140
  %i.ds = add nsw i32 %.04666.us.us73, -1
  %i.dt = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.du = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.dv = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next128 = add i64 %indvar127, 1
  br i1 %i.dv, label %..preheader_crit_edge.us.us77, label %._crit_edge.loopexit117, !llvm.loop !683

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !91  ; 7 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.dy = sub i64 %i.a, %i.dx
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.dy, -1
  %n.vec = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %xtraiter146 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.preheader56.us

.preheader56.us:                                  ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.ew, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.ex, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader56.us
  %i.dz = mul nsw i64 %indvar, %i.w
  %.reass = add i64 %i.dz, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load = load <2 x double>, ptr %i.ea, align 8, !tbaa !65
  %wide.load122 = load <2 x double>, ptr %i.eb, align 8, !tbaa !65
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x double> %wide.load, ptr %i.ec, align 8, !tbaa !65
  store <2 x double> %wide.load122, ptr %i.ed, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader56.us, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader56.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod147.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %scalar.ph.prol ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv83.prol
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !65
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store double %i.eg, ptr %i.eh, align 8, !tbaa !65
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !688

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %i.ei = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %._crit_edge63.split.us70, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv83
  %i.el = load double, ptr %i.ek, align 8, !tbaa !65
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv83
  store double %i.el, ptr %i.em, align 8, !tbaa !65
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next84
  %i.eo = load double, ptr %i.en, align 8, !tbaa !65
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store double %i.eo, ptr %i.ep, align 8, !tbaa !65
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next84.1
  %i.er = load double, ptr %i.eq, align 8, !tbaa !65
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store double %i.er, ptr %i.es, align 8, !tbaa !65
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next84.2
  %i.eu = load double, ptr %i.et, align 8, !tbaa !65
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store double %i.eu, ptr %i.ev, align 8, !tbaa !65
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %scalar.ph, !llvm.loop !689

._crit_edge63.split.us70:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ew = add nsw i32 %.04666.us, -1
  %i.ex = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.ey = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ey, label %.preheader56.us, label %._crit_edge, !llvm.loop !683

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

.preheader56.preheader:                           ; preds = %.preheader56.lr.ph.split
  %i.ez = and i64 %i.h, 17179869176
  %i.fa = icmp eq i64 %i.ez, 8
  %unroll_iter = and i64 %i.i, 2147483646
  %i.fb = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.fb, 0
  %lcmp.mod145 = trunc i64 %i.i to i1
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader, %..preheader_crit_edge
  %.04567 = phi ptr [ %i.fo, %..preheader_crit_edge ], [ %1, %.preheader56.preheader ] ; 4 uses
  %.04666 = phi i32 [ %i.fn, %..preheader_crit_edge ], [ %4, %.preheader56.preheader ] ; 2 uses
  br i1 %i.fa, label %.epil.preheader, label %.preheader56.new

..preheader_crit_edge.unr-lcssa:                  ; preds = %.preheader56.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.preheader56
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader56 ], [ %indvars.iv.next.1, %..preheader_crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod145)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !74
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !85
  %i.fi = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fj = mul nsw i32 %i.fi, %6
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !91
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %.epil.preheader
  %i.fn = add nsw i32 %.04666, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %.04567, i64 8
  %i.fp = icmp sgt i32 %.04666, 1
  br i1 %i.fp, label %.preheader56, label %._crit_edge, !llvm.loop !683

.preheader56.new:                                 ; preds = %.preheader56, %.preheader56.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader56.new ], [ 0, %.preheader56 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader56.new ], [ 0, %.preheader56 ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !74
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !85
  %i.fw = load i32, ptr %i.fq, align 4, !tbaa !73
  %i.fx = mul nsw i32 %i.fw, %6
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !91
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !74
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %.04567, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !85
  %i.gh = load i32, ptr %i.gb, align 4, !tbaa !73
  %i.gi = mul nsw i32 %i.gh, %6
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !91
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.unr-lcssa, label %.preheader56.new, !llvm.loop !680

bb.c:                                             ; preds = %bb.b
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !32
  %.not.i54 = icmp eq i32 %i.go, 0
  br i1 %.not.i54, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55, label %bb.g

._crit_edge.loopexit117:                          ; preds = %._crit_edge63.split.us70.us
  store ptr %i.cq, ptr %i.r, align 8, !tbaa !91
  br label %._crit_edge

._crit_edge:                                      ; preds = %..preheader_crit_edge, %._crit_edge63.split.us70, %._crit_edge63.split.us.us.us.us, %._crit_edge.loopexit117, %.preheader56.lr.ph.split, %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit
  %.not.i.i51 = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i51, label %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53

_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53:         ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !32
  %.not.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit53, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.g:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit55 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gt = landingpad { ptr, i32 }
end_hunk_17
