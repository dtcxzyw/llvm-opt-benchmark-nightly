Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imageio?download=true
inline.NumInlined: 4864
inline.NumDeleted: 1339
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt10contiguizeEPKvilllPviiiNS0_8TypeDescE:bb.a
  %i.rd = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245.prol, i64 8 ; 3 uses
  store double %i.rc, ptr %.581.us.us.us.us.us.i245.prol, align 8, !tbaa !78
  %indvars.iv.next.i246.prol = add nuw nsw i64 %indvars.iv.i244.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !483

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa580.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.rd, %scalar.ph.prol ]
  %indvars.iv.i244.unr = phi i64 [ %indvars.iv.i244.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i246.prol, %scalar.ph.prol ]
  %.581.us.us.us.us.us.i245.unr = phi ptr [ %.581.us.us.us.us.us.i245.ph, %scalar.ph.preheader ], [ %i.rd, %scalar.ph.prol ]
  %i.re = sub nsw i64 %indvars.iv.i244.ph, %wide.trip.count.i231
  %i.rf = icmp ugt i64 %i.re, -8
  br i1 %i.rf, label %._crit_edge.us.us.us.us.us.i248, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i246.7, %scalar.ph ], [ %indvars.iv.i244.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.581.us.us.us.us.us.i245 = phi ptr [ %i.sk, %scalar.ph ], [ %.581.us.us.us.us.us.i245.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.06084.us.us.us.us.us.i242, i64 %indvars.iv.i244
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !78
  %i.ri = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 8
  store double %i.rh, ptr %.581.us.us.us.us.us.i245, align 8, !tbaa !78
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %.06084.us.us.us.us.us.i242, i64 %indvars.iv.i244
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !78
  %i.rm = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 16
  store double %i.rl, ptr %i.ri, align 8, !tbaa !78
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %.06084.us.us.us.us.us.i242, i64 %indvars.iv.i244
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !78
  %i.rq = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 24
  store double %i.rp, ptr %i.rm, align 8, !tbaa !78
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.06084.us.us.us.us.us.i242, i64 %indvars.iv.i244
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !78
  %i.ru = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 32
  store double %i.rt, ptr %i.rq, align 8, !tbaa !78
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %.06084.us.us.us.us.us.i242, i64 %indvars.iv.i244
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !78
  %i.ry = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 40
  store double %i.rx, ptr %i.ru, align 8, !tbaa !78
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %.06084.us.us.us.us.us.i242, i64 %indvars.iv.i244
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 40
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !78
  %i.sc = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 48
  store double %i.sb, ptr %i.ry, align 8, !tbaa !78
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %.06084.us.us.us.us.us.i242, i64 %indvars.iv.i244
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 48
  %i.sf = load double, ptr %i.se, align 8, !tbaa !78
  %i.sg = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 56
  store double %i.sf, ptr %i.sc, align 8, !tbaa !78
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %.06084.us.us.us.us.us.i242, i64 %indvars.iv.i244
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 56
  %i.sj = load double, ptr %i.si, align 8, !tbaa !78
  %i.sk = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 64 ; 2 uses
  store double %i.sj, ptr %i.sg, align 8, !tbaa !78
  %indvars.iv.next.i246.7 = add nuw nsw i64 %indvars.iv.i244, 8 ; 2 uses
  %exitcond.not.i247.7 = icmp eq i64 %indvars.iv.next.i246.7, %wide.trip.count.i231
  br i1 %exitcond.not.i247.7, label %._crit_edge.us.us.us.us.us.i248, label %scalar.ph, !llvm.loop !484

._crit_edge.us.us.us.us.us.i248:                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa411 = phi ptr [ %i.qu, %middle.block ], [ %.lcssa580.unr, %scalar.ph.prol.loopexit ], [ %i.sk, %scalar.ph ] ; 3 uses
  %i.sl = add nuw nsw i32 %.05985.us.us.us.us.us.i241, 1 ; 2 uses
  %i.sm = getelementptr inbounds i8, ptr %.06084.us.us.us.us.us.i242, i64 %2
  %exitcond122.not.i249 = icmp eq i32 %i.sl, %6
  %indvar.next416 = add i64 %indvar415, 1
  br i1 %exitcond122.not.i249, label %._crit_edge86.split.us.us.us.us.us.i250, label %.preheader76.us.us.us.us.us.i240, !llvm.loop !485

._crit_edge86.split.us.us.us.us.us.i250:          ; preds = %._crit_edge.us.us.us.us.us.i248
  %i.sn = add nuw nsw i32 %.06191.us.us.us.us.i237, 1 ; 2 uses
  %i.so = getelementptr inbounds i8, ptr %.06289.us.us.us.us.i238, i64 %3
  %exitcond123.not.i251 = icmp eq i32 %i.sn, %7
  %indvar.next414 = add i64 %indvar413, 1
  br i1 %exitcond123.not.i251, label %._crit_edge.split.us.split.us.us.us.i252, label %.preheader77.us.us.us.us.i236, !llvm.loop !486

._crit_edge.split.us.split.us.us.us.i252:         ; preds = %._crit_edge86.split.us.us.us.us.us.i250
  %i.sp = add nuw nsw i32 %.063103.us.us.i233, 1  ; 2 uses
  %i.sq = getelementptr inbounds i8, ptr %.1100.us.us.i234, i64 %4
  %exitcond124.not.i253 = icmp eq i32 %i.sp, %smax.i230
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond124.not.i253, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit, label %.preheader78.us.us.i232, !llvm.loop !487

.preheader75.i255:                                ; preds = %bb.x, %bb.w
  %i.sr = icmp sgt i32 %7, 0
  %i.ss = mul nsw i32 %6, %1
  %i.st = sext i32 %i.ss to i64                   ; 5 uses
  br i1 %i.sr, label %.preheader.preheader.i256, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit

.preheader.preheader.i256:                        ; preds = %.preheader75.i255
  %smax126.i257 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %i.su = add nsw i32 %7, -1
  %xtraiter581 = and i32 %7, 3                    ; 3 uses
  %i.sv = icmp ult i32 %i.su, 3
  %unroll_iter = and i32 %7, 2147483644
  %lcmp.mod582.not = icmp eq i32 %xtraiter581, 0
  %lcmp.mod584 = icmp ne i32 %xtraiter581, 0
  br label %.preheader.i258

.preheader.i258:                                  ; preds = %._crit_edge.i266, %.preheader.preheader.i256
  %.066116.i259 = phi i32 [ %i.sy, %._crit_edge.i266 ], [ 0, %.preheader.preheader.i256 ]
  %.068115.i260 = phi ptr [ %i.sz, %._crit_edge.i266 ], [ %0, %.preheader.preheader.i256 ] ; 3 uses
  %.069114.i261 = phi ptr [ %.lcssa578, %._crit_edge.i266 ], [ %5, %.preheader.preheader.i256 ] ; 2 uses
  br i1 %i.sv, label %.epil.preheader, label %.preheader.i258.new

._crit_edge.i266.unr-lcssa:                       ; preds = %.preheader.i258.new
  br i1 %lcmp.mod582.not, label %._crit_edge.i266, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i266.unr-lcssa, %.preheader.i258
  %.065112.i263.epil.init = phi ptr [ %.068115.i260, %.preheader.i258 ], [ %i.th, %._crit_edge.i266.unr-lcssa ]
  %.170111.i264.epil.init = phi ptr [ %.069114.i261, %.preheader.i258 ], [ %i.tg, %._crit_edge.i266.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod584)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.065112.i263.epil = phi ptr [ %.065112.i263.epil.init, %.epil.preheader ], [ %i.sx, %bb.y ] ; 2 uses
  %.170111.i264.epil = phi ptr [ %.170111.i264.epil.init, %.epil.preheader ], [ %i.sw, %bb.y ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.170111.i264.epil, ptr align 8 %.065112.i263.epil, i64 %i.qd, i1 false)
  %i.sw = getelementptr inbounds [8 x i8], ptr %.170111.i264.epil, i64 %i.st ; 2 uses
  %i.sx = getelementptr inbounds i8, ptr %.065112.i263.epil, i64 %3
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter581
  br i1 %epil.iter.cmp.not, label %._crit_edge.i266, label %bb.y, !llvm.loop !488

._crit_edge.i266:                                 ; preds = %bb.y, %._crit_edge.i266.unr-lcssa
  %.lcssa578 = phi ptr [ %i.tg, %._crit_edge.i266.unr-lcssa ], [ %i.sw, %bb.y ]
  %i.sy = add nuw nsw i32 %.066116.i259, 1        ; 2 uses
  %i.sz = getelementptr inbounds i8, ptr %.068115.i260, i64 %4
  %exitcond127.not.i267 = icmp eq i32 %i.sy, %smax126.i257
  br i1 %exitcond127.not.i267, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit, label %.preheader.i258, !llvm.loop !489

.preheader.i258.new:                              ; preds = %.preheader.i258, %.preheader.i258.new
  %.065112.i263 = phi ptr [ %i.th, %.preheader.i258.new ], [ %.068115.i260, %.preheader.i258 ] ; 2 uses
  %.170111.i264 = phi ptr [ %i.tg, %.preheader.i258.new ], [ %.069114.i261, %.preheader.i258 ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.i258.new ], [ 0, %.preheader.i258 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.170111.i264, ptr align 8 %.065112.i263, i64 %i.qd, i1 false)
  %i.ta = getelementptr inbounds [8 x i8], ptr %.170111.i264, i64 %i.st ; 2 uses
  %i.tb = getelementptr inbounds i8, ptr %.065112.i263, i64 %3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ta, ptr align 8 %i.tb, i64 %i.qd, i1 false)
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.ta, i64 %i.st ; 2 uses
  %i.td = getelementptr inbounds i8, ptr %i.tb, i64 %3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.tc, ptr align 8 %i.td, i64 %i.qd, i1 false)
  %i.te = getelementptr inbounds [8 x i8], ptr %i.tc, i64 %i.st ; 2 uses
  %i.tf = getelementptr inbounds i8, ptr %i.td, i64 %3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.te, ptr align 8 %i.tf, i64 %i.qd, i1 false)
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.st ; 3 uses
  %i.th = getelementptr inbounds i8, ptr %i.tf, i64 %3 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i266.unr-lcssa, label %.preheader.i258.new, !llvm.loop !490

bb.z:                                             ; preds = %bb.a
  %i.ti = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.tj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ti, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef 832, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_13pvt10contiguizeEPKvilllPviiiNS0_8TypeDescE, ptr noundef nonnull @.str.77) #45 ; 0 uses
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit

_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit: ; preds = %._crit_edge.split.us.split.us.us.us.i252, %._crit_edge.i266, %._crit_edge.split.us.split.us.us.us.i209, %._crit_edge.i223, %._crit_edge.split.us.split.us.us.us.i166, %._crit_edge.i180, %._crit_edge.split.us.split.us.us.us.i123, %._crit_edge.i137, %._crit_edge.split.us.split.us.us.us.i80, %._crit_edge.i94, %._crit_edge.split.us.split.us.us.us.i, %._crit_edge.i, %.preheader75.i255, %.preheader79.i226, %bb.x, %.preheader75.i212, %.preheader79.i183, %bb.t, %.preheader75.i169, %.preheader79.i140, %bb.p, %.preheader75.i126, %.preheader79.i97, %bb.l, %.preheader75.i83, %.preheader79.i54, %bb.h, %.preheader75.i, %.preheader79.i, %bb.d, %bb.z
  %.0 = phi ptr [ null, %bb.z ], [ %5, %._crit_edge.i266 ], [ %5, %._crit_edge.i94 ], [ %5, %._crit_edge.i137 ], [ %5, %._crit_edge.i180 ], [ %5, %._crit_edge.i223 ], [ %0, %bb.d ], [ %5, %.preheader75.i ], [ %5, %.preheader79.i ], [ %5, %._crit_edge.split.us.split.us.us.us.i ], [ %0, %bb.h ], [ %5, %.preheader75.i83 ], [ %5, %.preheader79.i54 ], [ %5, %._crit_edge.split.us.split.us.us.us.i80 ], [ %0, %bb.l ], [ %5, %.preheader75.i126 ], [ %5, %.preheader79.i97 ], [ %5, %._crit_edge.split.us.split.us.us.us.i123 ], [ %0, %bb.p ], [ %5, %.preheader75.i169 ], [ %5, %.preheader79.i140 ], [ %5, %._crit_edge.split.us.split.us.us.us.i166 ], [ %0, %bb.t ], [ %5, %.preheader75.i212 ], [ %5, %.preheader79.i183 ], [ %5, %._crit_edge.split.us.split.us.us.us.i209 ], [ %0, %bb.x ], [ %5, %.preheader75.i255 ], [ %5, %.preheader79.i226 ], [ %5, %._crit_edge.i ], [ %5, %._crit_edge.split.us.split.us.us.us.i252 ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 %3) local_unnamed_addr #9 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i8
  switch i8 %.sroa.0.0.extract.trunc, label %bb.l [
    i8 11, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit
    i8 2, label %bb.b
    i8 10, label %bb.c
    i8 4, label %bb.d
    i8 3, label %bb.e
    i8 5, label %bb.f
    i8 7, label %bb.g
    i8 6, label %bb.h
    i8 9, label %bb.i
    i8 8, label %bb.j
    i8 12, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp ugt i32 %2, 3
  br i1 %i.b, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.b
  %.012.lcssa.i.i = phi i64 [ %i.a, %bb.b ], [ %i.ai, %.lr.ph.i.i ] ; 9 uses
  %.010.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.ak, %.lr.ph.i.i ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %0, %bb.b ], [ %i.aj, %.lr.ph.i.i ] ; 6 uses
  %.not24.i.i = icmp eq i64 %.012.lcssa.i.i, 0
  br i1 %.not24.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i.preheader

.lr.ph28.i.i.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check78 = icmp ult i64 %.012.lcssa.i.i, 8
  br i1 %min.iters.check78, label %.lr.ph28.i.i.preheader93, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph28.i.i.preheader
  %i.c = shl i64 %.012.lcssa.i.i, 2
  %i.d = getelementptr i8, ptr %.010.lcssa.i.i, i64 %i.c
  %i.e = getelementptr i8, ptr %.0.lcssa.i.i, i64 %.012.lcssa.i.i
  %bound0 = icmp ult ptr %.010.lcssa.i.i, %i.e
  %bound1 = icmp ult ptr %.0.lcssa.i.i, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph28.i.i.preheader93, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck
  %n.vec80 = and i64 %.012.lcssa.i.i, -8          ; 4 uses
  %i.f = getelementptr i8, ptr %.0.lcssa.i.i, i64 %n.vec80
  %i.g = shl i64 %n.vec80, 2
  %i.h = getelementptr i8, ptr %.010.lcssa.i.i, i64 %i.g
  %i.i = and i64 %.012.lcssa.i.i, 7
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 3 uses
  %next.gep83 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %index82 ; 2 uses
  %i.j = shl i64 %index82, 2
  %next.gep84 = getelementptr i8, ptr %.010.lcssa.i.i, i64 %i.j ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep83, i64 4
  %wide.load85 = load <4 x i8>, ptr %next.gep83, align 1, !tbaa !68, !alias.scope !502
  %wide.load86 = load <4 x i8>, ptr %i.k, align 1, !tbaa !68, !alias.scope !502
  %i.l = uitofp <4 x i8> %wide.load85 to <4 x float>
  %i.m = uitofp <4 x i8> %wide.load86 to <4 x float>
  %i.n = fmul nnan <4 x float> %i.l, splat (float f0x3B808081)
  %i.o = fmul nnan <4 x float> %i.m, splat (float f0x3B808081)
  %i.p = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x float> %i.n, ptr %next.gep84, align 4, !tbaa !94, !alias.scope !503, !noalias !502
  store <4 x float> %i.o, ptr %i.p, align 4, !tbaa !94, !alias.scope !503, !noalias !502
  %index.next87 = add nuw i64 %index82, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.q, label %middle.block88, label %vector.body81, !llvm.loop !494

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %.012.lcssa.i.i, %n.vec80
  br i1 %cmp.n89, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i.preheader93

.lr.ph28.i.i.preheader93:                         ; preds = %vector.memcheck, %.lr.ph28.i.i.preheader, %middle.block88
  %.127.i.i.ph = phi ptr [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %.lr.ph28.i.i.preheader ], [ %i.f, %middle.block88 ] ; 2 uses
  %.11126.i.i.ph = phi ptr [ %.010.lcssa.i.i, %vector.memcheck ], [ %.010.lcssa.i.i, %.lr.ph28.i.i.preheader ], [ %i.h, %middle.block88 ] ; 2 uses
  %.11325.i.i.ph = phi i64 [ %.012.lcssa.i.i, %vector.memcheck ], [ %.012.lcssa.i.i, %.lr.ph28.i.i.preheader ], [ %i.i, %middle.block88 ] ; 4 uses
  %i.r = add nsw i64 %.11325.i.i.ph, -1
  %xtraiter101 = and i64 %.11325.i.i.ph, 3        ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph28.i.i.prol.loopexit, label %.lr.ph28.i.i.prol

.lr.ph28.i.i.prol:                                ; preds = %.lr.ph28.i.i.preheader93, %.lr.ph28.i.i.prol
  %.127.i.i.prol = phi ptr [ %i.t, %.lr.ph28.i.i.prol ], [ %.127.i.i.ph, %.lr.ph28.i.i.preheader93 ] ; 2 uses
  %.11126.i.i.prol = phi ptr [ %i.x, %.lr.ph28.i.i.prol ], [ %.11126.i.i.ph, %.lr.ph28.i.i.preheader93 ] ; 2 uses
  %.11325.i.i.prol = phi i64 [ %i.s, %.lr.ph28.i.i.prol ], [ %.11325.i.i.ph, %.lr.ph28.i.i.preheader93 ]
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph28.i.i.prol ], [ 0, %.lr.ph28.i.i.preheader93 ]
  %i.s = add nsw i64 %.11325.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.127.i.i.prol, i64 1 ; 2 uses
  %i.u = load i8, ptr %.127.i.i.prol, align 1, !tbaa !68
  %i.v = uitofp i8 %i.u to float
  %i.w = fmul nnan float %i.v, f0x3B808081
  %i.x = getelementptr inbounds nuw i8, ptr %.11126.i.i.prol, i64 4 ; 2 uses
  store float %i.w, ptr %.11126.i.i.prol, align 4, !tbaa !94
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph28.i.i.prol.loopexit, label %.lr.ph28.i.i.prol, !llvm.loop !495

.lr.ph28.i.i.prol.loopexit:                       ; preds = %.lr.ph28.i.i.prol, %.lr.ph28.i.i.preheader93
  %.127.i.i.unr = phi ptr [ %.127.i.i.ph, %.lr.ph28.i.i.preheader93 ], [ %i.t, %.lr.ph28.i.i.prol ]
  %.11126.i.i.unr = phi ptr [ %.11126.i.i.ph, %.lr.ph28.i.i.preheader93 ], [ %i.x, %.lr.ph28.i.i.prol ]
  %.11325.i.i.unr = phi i64 [ %.11325.i.i.ph, %.lr.ph28.i.i.preheader93 ], [ %i.s, %.lr.ph28.i.i.prol ]
  %i.y = icmp ult i64 %i.r, 3
  br i1 %i.y, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.021.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %0, %bb.b ] ; 2 uses
  %.01020.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %1, %bb.b ] ; 2 uses
  %.01219.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %i.a, %bb.b ]
  %i.z = load float, ptr %.021.i.i, align 1, !tbaa !68
  %i.aa = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ab = bitcast <4 x float> %i.aa to <16 x i8>
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ad = bitcast <16 x i8> %i.ac to <8 x i16>
  %i.ae = shufflevector <8 x i16> %i.ad, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.af = bitcast <8 x i16> %i.ae to <4 x i32>
  %i.ag = uitofp nneg <4 x i32> %i.af to <4 x float>
  %i.ah = fmul nnan <4 x float> %i.ag, splat (float f0x3B808081)
  store <4 x float> %i.ah, ptr %.01020.i.i, align 1, !tbaa !68
  %i.ai = add i64 %.01219.i.i, -4                 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01020.i.i, i64 16 ; 2 uses
  %i.al = icmp ugt i64 %i.ai, 3
  br i1 %i.al, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !496

.lr.ph28.i.i:                                     ; preds = %.lr.ph28.i.i.prol.loopexit, %.lr.ph28.i.i
  %.127.i.i = phi ptr [ %i.bc, %.lr.ph28.i.i ], [ %.127.i.i.unr, %.lr.ph28.i.i.prol.loopexit ] ; 5 uses
  %.11126.i.i = phi ptr [ %i.bg, %.lr.ph28.i.i ], [ %.11126.i.i.unr, %.lr.ph28.i.i.prol.loopexit ] ; 5 uses
  %.11325.i.i = phi i64 [ %i.bb, %.lr.ph28.i.i ], [ %.11325.i.i.unr, %.lr.ph28.i.i.prol.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 1
  %i.an = load i8, ptr %.127.i.i, align 1, !tbaa !68
  %i.ao = uitofp i8 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x3B808081
  %i.aq = getelementptr inbounds nuw i8, ptr %.11126.i.i, i64 4
  store float %i.ap, ptr %.11126.i.i, align 4, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 2
  %i.as = load i8, ptr %i.am, align 1, !tbaa !68
  %i.at = uitofp i8 %i.as to float
  %i.au = fmul nnan float %i.at, f0x3B808081
  %i.av = getelementptr inbounds nuw i8, ptr %.11126.i.i, i64 8
  store float %i.au, ptr %i.aq, align 4, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 3
  %i.ax = load i8, ptr %i.ar, align 1, !tbaa !68
  %i.ay = uitofp i8 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x3B808081
  %i.ba = getelementptr inbounds nuw i8, ptr %.11126.i.i, i64 12
  store float %i.az, ptr %i.av, align 4, !tbaa !94
  %i.bb = add nsw i64 %.11325.i.i, -4             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 4
  %i.bd = load i8, ptr %i.aw, align 1, !tbaa !68
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fmul nnan float %i.be, f0x3B808081
  %i.bg = getelementptr inbounds nuw i8, ptr %.11126.i.i, i64 16
  store float %i.bf, ptr %i.ba, align 4, !tbaa !94
  %.not.i.i.3 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.3, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i, !llvm.loop !497

bb.c:                                             ; preds = %bb.a
  %i.bh = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIN9Imath_3_14halfEfEEvPKT_PT0_mS7_S7_(ptr noundef %0, ptr noundef %1, i64 noundef %i.bh, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.d:                                             ; preds = %bb.a
  %i.bi = sext i32 %2 to i64                      ; 4 uses
  %i.bj = icmp ugt i32 %2, 3
  br i1 %i.bj, label %.lr.ph.i.i42.preheader, label %.preheader.i.i32

.lr.ph.i.i42.preheader:                           ; preds = %bb.d
  %i.bk = add nsw i64 %i.bi, -4                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter = and i64 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.prol.loopexit, label %.lr.ph.i.i42.prol

.lr.ph.i.i42.prol:                                ; preds = %.lr.ph.i.i42.preheader, %.lr.ph.i.i42.prol
  %.021.i.i43.prol = phi ptr [ %i.br, %.lr.ph.i.i42.prol ], [ %0, %.lr.ph.i.i42.preheader ] ; 2 uses
  %.01020.i.i44.prol = phi ptr [ %i.bs, %.lr.ph.i.i42.prol ], [ %1, %.lr.ph.i.i42.preheader ] ; 2 uses
  %.01219.i.i45.prol = phi i64 [ %i.bq, %.lr.ph.i.i42.prol ], [ %i.bi, %.lr.ph.i.i42.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i42.prol ], [ 0, %.lr.ph.i.i42.preheader ]
  %i.bn = load <4 x i16>, ptr %.021.i.i43.prol, align 2, !tbaa !136
  %i.bo = uitofp <4 x i16> %i.bn to <4 x float>
  %i.bp = fmul nnan <4 x float> %i.bo, splat (float f0x37800080)
  store <4 x float> %i.bp, ptr %.01020.i.i44.prol, align 1, !tbaa !68
  %i.bq = add i64 %.01219.i.i45.prol, -4          ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.021.i.i43.prol, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01020.i.i44.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i42.prol.loopexit, label %.lr.ph.i.i42.prol, !llvm.loop !498

.lr.ph.i.i42.prol.loopexit:                       ; preds = %.lr.ph.i.i42.prol, %.lr.ph.i.i42.preheader
  %.021.i.i43.unr = phi ptr [ %0, %.lr.ph.i.i42.preheader ], [ %i.br, %.lr.ph.i.i42.prol ]
  %.01020.i.i44.unr = phi ptr [ %1, %.lr.ph.i.i42.preheader ], [ %i.bs, %.lr.ph.i.i42.prol ]
  %.01219.i.i45.unr = phi i64 [ %i.bi, %.lr.ph.i.i42.preheader ], [ %i.bq, %.lr.ph.i.i42.prol ]
  %.lcssa100.unr = phi i64 [ poison, %.lr.ph.i.i42.preheader ], [ %i.bq, %.lr.ph.i.i42.prol ]
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i42.preheader ], [ %i.br, %.lr.ph.i.i42.prol ]
  %.lcssa98.unr = phi ptr [ poison, %.lr.ph.i.i42.preheader ], [ %i.bs, %.lr.ph.i.i42.prol ]
  %i.bt = icmp ult i64 %i.bk, 12
  br i1 %i.bt, label %.preheader.i.i32, label %.lr.ph.i.i42

.preheader.i.i32:                                 ; preds = %.lr.ph.i.i42.prol.loopexit, %.lr.ph.i.i42, %bb.d
  %.012.lcssa.i.i33 = phi i64 [ %i.bi, %bb.d ], [ %.lcssa100.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.da, %.lr.ph.i.i42 ] ; 6 uses
  %.010.lcssa.i.i34 = phi ptr [ %1, %bb.d ], [ %.lcssa98.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.dc, %.lr.ph.i.i42 ] ; 3 uses
  %.0.lcssa.i.i35 = phi ptr [ %0, %bb.d ], [ %.lcssa99.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.db, %.lr.ph.i.i42 ] ; 3 uses
  %.not24.i.i36 = icmp eq i64 %.012.lcssa.i.i33, 0
  br i1 %.not24.i.i36, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i37.preheader

.lr.ph28.i.i37.preheader:                         ; preds = %.preheader.i.i32
  %min.iters.check = icmp ult i64 %.012.lcssa.i.i33, 8
  br i1 %min.iters.check, label %.lr.ph28.i.i37.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph28.i.i37.preheader
  %n.vec = and i64 %.012.lcssa.i.i33, -8          ; 4 uses
  %i.bu = shl i64 %n.vec, 1
  %i.bv = getelementptr i8, ptr %.0.lcssa.i.i35, i64 %i.bu
  %i.bw = shl i64 %n.vec, 2
  %i.bx = getelementptr i8, ptr %.010.lcssa.i.i34, i64 %i.bw
  %i.by = and i64 %.012.lcssa.i.i33, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i35, i64 %i.bz ; 2 uses
  %i.ca = shl i64 %index, 2
  %next.gep72 = getelementptr i8, ptr %.010.lcssa.i.i34, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !136
  %wide.load73 = load <4 x i16>, ptr %i.cb, align 2, !tbaa !136
  %i.cc = uitofp <4 x i16> %wide.load to <4 x float>
  %i.cd = uitofp <4 x i16> %wide.load73 to <4 x float>
  %i.ce = fmul nnan <4 x float> %i.cc, splat (float f0x37800080)
  %i.cf = fmul nnan <4 x float> %i.cd, splat (float f0x37800080)
  %i.cg = getelementptr i8, ptr %next.gep72, i64 16
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS0_8TypeDescE:bb.a
  store i16 0, ptr %i.g, align 4, !tbaa !151
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 1, ptr %i.h, align 2, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !153
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !154
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !155
  invoke void @_ZN11OpenImageIO4v3_120parallel_for_chunkedElllOSt8functionIFvllEENS0_6paroptE(i64 noundef 0, i64 noundef %2, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %"_ZNSt8functionIFvllEEC2IZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS4_8TypeDescEE3$_0vEEOT_.exit"
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.h

bb.e:                                             ; preds = %"_ZNSt8functionIFvllEEC2IZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS4_8TypeDescEE3$_0vEEOT_.exit"
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %.not.i7 = icmp eq ptr %i.q, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit
  %.0 = phi ptr [ %1, %_ZNSt14_Function_baseD2Ev.exit ], [ %0, %bb.a ]
  ret ptr %.0
}

declare void @_ZN11OpenImageIO4v3_120parallel_for_chunkedElllOSt8functionIFvllEENS0_6paroptE(i64 noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_120convert_pixel_valuesENS0_8TypeDescEPKvS1_Pvi(i64 %0, ptr noundef %1, i64 %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit:
  %5 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %0, ptr %5, align 8
  %.sroa.072.0.extract.trunc = trunc i64 %2 to i8 ; 4 uses
  %.sroa.5.0.extract.shift = lshr i64 %2, 8
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i64 %2, 16
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %.sroa.978.0.extract.shift = lshr i64 %2, 32    ; 2 uses
  %i.a = trunc i64 %0 to i8                       ; 2 uses
  %i.b = icmp eq i8 %i.a, %.sroa.072.0.extract.trunc
  %i.c = lshr i64 %0, 8                           ; 2 uses
  %i.d = trunc i64 %i.c to i8                     ; 2 uses
  %i.e = icmp eq i8 %i.d, %.sroa.5.0.extract.trunc
  %or.cond84 = and i1 %i.b, %i.e
  %i.f = lshr i64 %0, 16
  %i.g = trunc i64 %i.f to i8                     ; 2 uses
  %i.h = icmp eq i8 %i.g, %.sroa.7.0.extract.trunc
  %or.cond87 = and i1 %or.cond84, %i.h
  %i.i = lshr i64 %0, 32                          ; 3 uses
  %i.j = icmp eq i64 %i.i, %.sroa.978.0.extract.shift
  %spec.select = and i1 %or.cond87, %i.j
  %i.k = icmp eq i8 %.sroa.072.0.extract.trunc, 0
  %or.cond = or i1 %i.k, %spec.select
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit
  %i.l = trunc nuw i64 %i.i to i32
  %i.m = sext i32 %4 to i64
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.n = and i64 %i.c, 255
  %i.o = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %5) #39
  %i.p = mul nsw i64 %i.n, %i.m
  %i.q = mul i64 %i.p, %i.o
  %i.r = mul i64 %i.q, %spec.select.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %i.r, i1 false)
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68

bb.b:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit
  %i.s = icmp eq i8 %.sroa.072.0.extract.trunc, 11
  %i.t = icmp eq i8 %.sroa.5.0.extract.trunc, 1
  %or.cond88 = and i1 %i.s, %i.t
  %i.u = icmp eq i8 %.sroa.7.0.extract.trunc, 0
  %or.cond89 = and i1 %i.u, %or.cond88
  %i.v = icmp eq i64 %.sroa.978.0.extract.shift, 0
  %or.cond90 = and i1 %i.v, %or.cond89
  br i1 %or.cond90, label %bb.c, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef ptr @_ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE(ptr noundef %1, ptr noundef %3, i32 noundef %4, i64 %0) ; 0 uses
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread: ; preds = %bb.b
  %i.x = icmp ne i8 %i.a, 11
  %i.y = icmp ne i8 %i.d, 1
  %or.cond93.not104 = or i1 %i.x, %i.y
  %i.z = icmp ne i8 %i.g, 0
  %or.cond96.not101 = or i1 %or.cond93.not104, %i.z
  %i.aa = icmp ne i64 %i.i, 0
  %or.cond99 = or i1 %or.cond96.not101, %i.aa
  br i1 %or.cond99, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread, label %bb.h

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread
  %i.ab = icmp slt i32 %4, 4097
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = sext i32 %4 to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = alloca i8, i64 %i.ad, align 16
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread
  %i.af = zext nneg i32 %4 to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #44 ; 2 uses
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

bb.g:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %bb.k ], [ %.sroa.0.2, %bb.l ], [ %.sroa.0.2, %bb.m ], [ %.sroa.0.2, %bb.n ], [ %.sroa.0.2, %bb.o ], [ %.sroa.0.2, %bb.p ], [ %.sroa.0.2, %bb.q ], [ %.sroa.0.1, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ] ; 2 uses
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #40
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  resume { ptr, i32 } %i.ai

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.1 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  %.050 = phi ptr [ null, %bb.d ], [ %i.ae, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  %i.aj = invoke noundef ptr @_ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE(ptr noundef %1, ptr noundef %.050, i32 noundef %4, i64 %0)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ null, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread ] ; 9 uses
  %.151 = phi ptr [ %.050, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread ] ; 12 uses
  switch i8 %.sroa.072.0.extract.trunc, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit [
    i8 2, label %bb.i
    i8 4, label %bb.j
    i8 10, label %bb.k
    i8 3, label %bb.l
    i8 5, label %bb.m
    i8 7, label %bb.n
    i8 6, label %bb.o
    i8 9, label %bb.p
    i8 8, label %bb.q
    i8 12, label %bb.r
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = sext i32 %4 to i64                      ; 2 uses
  %i.al = icmp ugt i32 %4, 3
  br i1 %i.al, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, %bb.i
  %.015.lcssa.i.i = phi i64 [ %i.ak, %bb.i ], [ %i.ch, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 9 uses
  %.013.lcssa.i.i = phi ptr [ %3, %bb.i ], [ %i.cj, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %.151, %bb.i ], [ %i.ci, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 6 uses
  %.not70.i.i = icmp eq i64 %.015.lcssa.i.i, 0
  br i1 %.not70.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.preheader

.lr.ph74.i.i.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check137 = icmp ult i64 %.015.lcssa.i.i, 4
  br i1 %min.iters.check137, label %.lr.ph74.i.i.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph74.i.i.preheader
  %i.am = getelementptr i8, ptr %.013.lcssa.i.i, i64 %.015.lcssa.i.i
  %i.an = shl i64 %.015.lcssa.i.i, 2
  %i.ao = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.an
  %bound0 = icmp ult ptr %.013.lcssa.i.i, %i.ao
  %bound1 = icmp ult ptr %.0.lcssa.i.i, %i.am
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph74.i.i.preheader151, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck
  %n.vec139 = and i64 %.015.lcssa.i.i, -4         ; 4 uses
  %i.ap = shl i64 %n.vec139, 2
  %i.aq = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ap
  %i.ar = getelementptr i8, ptr %.013.lcssa.i.i, i64 %n.vec139
  %i.as = and i64 %.015.lcssa.i.i, 3
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next145, %vector.body140 ] ; 3 uses
  %i.at = shl i64 %index141, 2
  %next.gep142 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.at
  %next.gep143 = getelementptr i8, ptr %.013.lcssa.i.i, i64 %index141
  %wide.load144 = load <4 x float>, ptr %next.gep142, align 4, !tbaa !94, !alias.scope !511
  %i.au = fmul <4 x float> %wide.load144, splat (float 2.550000e+02) ; 2 uses
  %i.av = fcmp olt <4 x float> %i.au, zeroinitializer
  %i.aw = select <4 x i1> %i.av, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ax = fadd <4 x float> %i.au, %i.aw           ; 2 uses
  %i.ay = fcmp oge <4 x float> %i.ax, zeroinitializer
  %i.az = select <4 x i1> %i.ay, <4 x float> %i.ax, <4 x float> zeroinitializer ; 2 uses
  %i.ba = fcmp ogt <4 x float> %i.az, splat (float 2.550000e+02)
  %i.bb = select <4 x i1> %i.ba, <4 x float> splat (float 2.550000e+02), <4 x float> %i.az
  %i.bc = fptoui <4 x float> %i.bb to <4 x i8>
  store <4 x i8> %i.bc, ptr %next.gep143, align 1, !tbaa !68, !alias.scope !512, !noalias !511
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next145, %n.vec139
  br i1 %i.bd, label %middle.block146, label %vector.body140, !llvm.loop !507

middle.block146:                                  ; preds = %vector.body140
  %cmp.n147 = icmp eq i64 %.015.lcssa.i.i, %n.vec139
  br i1 %cmp.n147, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.preheader151

.lr.ph74.i.i.preheader151:                        ; preds = %vector.memcheck, %.lr.ph74.i.i.preheader, %middle.block146
  %.173.i.i.ph = phi ptr [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.aq, %middle.block146 ]
  %.11472.i.i.ph = phi ptr [ %.013.lcssa.i.i, %vector.memcheck ], [ %.013.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.ar, %middle.block146 ]
  %.11671.i.i.ph = phi i64 [ %.015.lcssa.i.i, %vector.memcheck ], [ %.015.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.as, %middle.block146 ]
  br label %.lr.ph74.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i: ; preds = %bb.i, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i
  %.067.i.i = phi ptr [ %i.ci, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %.151, %bb.i ] ; 2 uses
  %.01366.i.i = phi ptr [ %i.cj, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %3, %bb.i ] ; 2 uses
  %.01565.i.i = phi i64 [ %i.ch, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %i.ak, %bb.i ]
  %i.be = load <4 x float>, ptr %.067.i.i, align 1, !tbaa !68
  %i.bf = fmul <4 x float> %i.be, splat (float 2.550000e+02) ; 4 uses
  %i.bg = extractelement <4 x float> %i.bf, i64 0
  %i.bh = extractelement <4 x float> %i.bf, i64 1
  %i.bi = extractelement <4 x float> %i.bf, i64 2
  %i.bj = extractelement <4 x float> %i.bf, i64 3
  %i.bk = call float @llvm.round.f32(float %i.bg)
  %i.bl = call float @llvm.round.f32(float %i.bh)
  %i.bm = call float @llvm.round.f32(float %i.bi)
  %i.bn = call float @llvm.round.f32(float %i.bj)
  %i.bo = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bm, i64 1
  %i.bq = bitcast <2 x float> %i.bp to <2 x i32>
  %i.br = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bn, i64 1
  %i.bt = bitcast <2 x float> %i.bs to <2 x i32>
  %i.bu = zext <2 x i32> %i.bt to <2 x i64>
  %i.bv = shl nuw <2 x i64> %i.bu, splat (i64 32)
  %i.bw = zext <2 x i32> %i.bq to <2 x i64>
  %i.bx = or disjoint <2 x i64> %i.bv, %i.bw
  %i.by = bitcast <2 x i64> %i.bx to <4 x float>
  %i.bz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.by)
  %i.ca = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.550000e+02), <4 x float> %i.bz)
  %i.cb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ca)
  %i.cc = and <4 x i32> %i.cb, splat (i32 255)
  %i.cd = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cc, <4 x i32> poison)
  %i.ce = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cd, <8 x i16> poison)
  %i.cf = bitcast <16 x i8> %i.ce to <4 x float>
  %i.cg = extractelement <4 x float> %i.cf, i64 0
  store float %i.cg, ptr %.01366.i.i, align 1, !tbaa !68
  %i.ch = add i64 %.01565.i.i, -4                 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01366.i.i, i64 4 ; 2 uses
  %i.ck = icmp ugt i64 %i.ch, 3
  br i1 %i.ck, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i, !llvm.loop !3

.lr.ph74.i.i:                                     ; preds = %.lr.ph74.i.i.preheader151, %.lr.ph74.i.i
  %.173.i.i = phi ptr [ %i.cm, %.lr.ph74.i.i ], [ %.173.i.i.ph, %.lr.ph74.i.i.preheader151 ] ; 2 uses
  %.11472.i.i = phi ptr [ %i.cu, %.lr.ph74.i.i ], [ %.11472.i.i.ph, %.lr.ph74.i.i.preheader151 ] ; 2 uses
  %.11671.i.i = phi i64 [ %i.cl, %.lr.ph74.i.i ], [ %.11671.i.i.ph, %.lr.ph74.i.i.preheader151 ]
  %i.cl = add nsw i64 %.11671.i.i, -1             ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.173.i.i, i64 4
  %i.cn = load float, ptr %.173.i.i, align 4, !tbaa !94
  %i.co = fmul float %i.cn, 2.550000e+02          ; 2 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  %i.cq = select i1 %i.cp, float -5.000000e-01, float 5.000000e-01
  %i.cr = fadd float %i.co, %i.cq                 ; 2 uses
  %.inv.i.i.i = fcmp oge float %i.cr, 0.000000e+00
  %.0.i.i.i.i = select i1 %.inv.i.i.i, float %i.cr, float 0.000000e+00 ; 2 uses
  %i.cs = fcmp ogt float %.0.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i = select i1 %i.cs, float 2.550000e+02, float %.0.i.i.i.i
  %i.ct = fptoui float %.1.i.i.i.i to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.11472.i.i, i64 1
  store i8 %i.ct, ptr %.11472.i.i, align 1, !tbaa !68
  %.not.i.i54 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i54, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i, !llvm.loop !508

bb.j:                                             ; preds = %bb.h
  %i.cv = sext i32 %4 to i64                      ; 2 uses
  %i.cw = icmp ugt i32 %4, 3
  br i1 %i.cw, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63, label %.preheader.i.i55

.preheader.i.i55:                                 ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63, %bb.j
  %.015.lcssa.i.i56 = phi i64 [ %i.cv, %bb.j ], [ %i.ev, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 6 uses
  %.013.lcssa.i.i57 = phi ptr [ %3, %bb.j ], [ %i.ex, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 3 uses
  %.0.lcssa.i.i58 = phi ptr [ %.151, %bb.j ], [ %i.ew, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 3 uses
  %.not83.i.i = icmp eq i64 %.015.lcssa.i.i56, 0
  br i1 %.not83.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph87.i.i.preheader

.lr.ph87.i.i.preheader:                           ; preds = %.preheader.i.i55
  %min.iters.check = icmp ult i64 %.015.lcssa.i.i56, 4
  br i1 %min.iters.check, label %.lr.ph87.i.i.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph87.i.i.preheader
  %n.vec = and i64 %.015.lcssa.i.i56, -4          ; 4 uses
  %i.cx = shl i64 %n.vec, 2
  %i.cy = getelementptr i8, ptr %.0.lcssa.i.i58, i64 %i.cx
  %i.cz = shl i64 %n.vec, 1
  %i.da = getelementptr i8, ptr %.013.lcssa.i.i57, i64 %i.cz
  %i.db = and i64 %.015.lcssa.i.i56, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i58, i64 %i.dc
  %i.dd = shl i64 %index, 1
  %next.gep132 = getelementptr i8, ptr %.013.lcssa.i.i57, i64 %i.dd
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !94
  %i.de = fmul <4 x float> %wide.load, splat (float 6.553500e+04) ; 2 uses
  %i.df = fcmp olt <4 x float> %i.de, zeroinitializer
  %i.dg = select <4 x i1> %i.df, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.dh = fadd <4 x float> %i.de, %i.dg           ; 2 uses
  %i.di = fcmp oge <4 x float> %i.dh, zeroinitializer
  %i.dj = select <4 x i1> %i.di, <4 x float> %i.dh, <4 x float> zeroinitializer ; 2 uses
  %i.dk = fcmp ogt <4 x float> %i.dj, splat (float 6.553500e+04)
  %i.dl = select <4 x i1> %i.dk, <4 x float> splat (float 6.553500e+04), <4 x float> %i.dj
  %i.dm = fptoui <4 x float> %i.dl to <4 x i16>
  store <4 x i16> %i.dm, ptr %next.gep132, align 2, !tbaa !136
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !509

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.015.lcssa.i.i56, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph87.i.i.preheader154

.lr.ph87.i.i.preheader154:                        ; preds = %.lr.ph87.i.i.preheader, %middle.block
  %.186.i.i.ph = phi ptr [ %.0.lcssa.i.i58, %.lr.ph87.i.i.preheader ], [ %i.cy, %middle.block ]
  %.11485.i.i.ph = phi ptr [ %.013.lcssa.i.i57, %.lr.ph87.i.i.preheader ], [ %i.da, %middle.block ]
  %.11684.i.i.ph = phi i64 [ %.015.lcssa.i.i56, %.lr.ph87.i.i.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph87.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63: ; preds = %bb.j, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63
  %.080.i.i = phi ptr [ %i.ew, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %.151, %bb.j ] ; 2 uses
  %.01379.i.i = phi ptr [ %i.ex, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %3, %bb.j ] ; 2 uses
  %.01578.i.i = phi i64 [ %i.ev, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %i.cv, %bb.j ]
  %i.do = load <4 x float>, ptr %.080.i.i, align 1, !tbaa !68
  %i.dp = fmul <4 x float> %i.do, splat (float 6.553500e+04) ; 4 uses
  %i.dq = extractelement <4 x float> %i.dp, i64 0
  %i.dr = extractelement <4 x float> %i.dp, i64 1
  %i.ds = extractelement <4 x float> %i.dp, i64 2
  %i.dt = extractelement <4 x float> %i.dp, i64 3
  %i.du = call float @llvm.round.f32(float %i.dq)
  %i.dv = call float @llvm.round.f32(float %i.dr)
  %i.dw = call float @llvm.round.f32(float %i.ds)
  %i.dx = call float @llvm.round.f32(float %i.dt)
  %i.dy = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dw, i64 1
  %i.ea = bitcast <2 x float> %i.dz to <2 x i32>
  %i.eb = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dx, i64 1
  %i.ed = bitcast <2 x float> %i.ec to <2 x i32>
  %i.ee = zext <2 x i32> %i.ed to <2 x i64>
  %i.ef = shl nuw <2 x i64> %i.ee, splat (i64 32)
  %i.eg = zext <2 x i32> %i.ea to <2 x i64>
  %i.eh = or disjoint <2 x i64> %i.ef, %i.eg
  %i.ei = bitcast <2 x i64> %i.eh to <4 x float>
  %i.ej = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.ei)
  %i.ek = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 6.553500e+04), <4 x float> %i.ej)
  %i.el = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ek)
  %i.em = bitcast <4 x i32> %i.el to <8 x i16>
  %i.en = and <8 x i16> %i.em, <i16 -1, i16 0, i16 -1, i16 poison, i16 -1, i16 0, i16 -1, i16 poison>
  %i.eo = shufflevector <8 x i16> %i.en, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 1, i32 5, i32 5, i32 4, i32 6> ; 2 uses
  %i.ep = bitcast <8 x i16> %i.eo to <2 x i64>
  %i.eq = bitcast <8 x i16> %i.eo to <2 x i64>
  %i.er = shufflevector <2 x i64> %i.eq, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.es = or <2 x i64> %i.er, %i.ep
  %i.et = bitcast <2 x i64> %i.es to <2 x double>
  %i.eu = extractelement <2 x double> %i.et, i64 0
  store double %i.eu, ptr %.01379.i.i, align 1, !tbaa !68
  %i.ev = add i64 %.01578.i.i, -4                 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !164
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa), !inline_history !13
  %.pre.i.i33 = load i64, ptr %i.y, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i34 = add i64 %.pre.i.i33, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

_ZN3fmt3v1214basic_appenderIcEaSEc.exit35:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i32 = phi i64 [ %i.aa, %bb.f ], [ %.pre2.i.i34, %bb.g ]
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %.pre.i.i33, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !165
  store i64 %.pre-phi.i.i32, ptr %i.y, align 8, !tbaa !172
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 92, ptr %i.ai, align 1, !tbaa !68
  br label %bb.q

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = trunc nuw nsw i32 %i.b to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !172 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !166
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !164
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am), !inline_history !13
  %.pre.i.i38 = load i64, ptr %i.ak, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i39 = add i64 %.pre.i.i38, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40

_ZN3fmt3v1214basic_appenderIcEaSEc.exit40:        ; preds = %bb.h, %bb.i
  %.pre-phi.i.i37 = phi i64 [ %i.am, %bb.h ], [ %.pre2.i.i39, %bb.i ]
  %i.as = phi i64 [ %i.al, %bb.h ], [ %.pre.i.i38, %bb.i ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !165
  store i64 %.pre-phi.i.i37, ptr %i.ak, align 8, !tbaa !172
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 92, ptr %i.au, align 1, !tbaa !68
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.av = icmp ult i32 %i.b, 256
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v126detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !217   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !218 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !68
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !172 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !166
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !164
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk), !inline_history !13
  %.pre.i.i43 = load i64, ptr %i.bi, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i44 = add i64 %.pre.i.i43, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

_ZN3fmt3v1214basic_appenderIcEaSEc.exit45:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i42 = phi i64 [ %i.bk, %bb.q ], [ %.pre2.i.i44, %bb.r ]
  %i.bq = phi i64 [ %i.bj, %bb.q ], [ %.pre.i.i43, %bb.r ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !165
  store i64 %.pre-phi.i.i42, ptr %i.bi, align 8, !tbaa !172
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %.0, ptr %i.bs, align 1, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45, %bb.o, %bb.m, %bb.k
  %.sroa.022.0 = phi ptr [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45 ], [ %0, %bb.p ], [ %i.bg, %.lr.ph ]
  ret ptr %.sroa.022.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %0) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp ult i32 %0, 65536
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 8                           ; 2 uses
  %i.c = trunc i32 %0 to i8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %.04871.i = phi i64 [ 0, %bb.b ], [ %i.o, %.loopexit.i ] ; 2 uses
  %.04970.i = phi i32 [ 0, %bb.b ], [ %i.f, %.loopexit.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZZN3fmt3v126detail12is_printableEjE11singletons0, i64 %.04871.i ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.d, align 2, !tbaa !68
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !68
  %i.e = zext i8 %.sroa.5.0.copyload.i to i32
  %i.f = add nuw nsw i32 %.04970.i, %i.e          ; 2 uses
  %i.g = zext i8 %.sroa.0.0.copyload.i to i32     ; 2 uses
  %i.h = icmp samesign ult i32 %i.b, %i.g
  br i1 %i.h, label %.lr.ph78.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.b, %i.g
  br i1 %i.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.j = zext nneg i32 %.04970.i to i64
  %i.k = zext nneg i32 %i.f to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.k
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !637

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !68
  %i.n = icmp eq i8 %i.m, %i.c
  br i1 %i.n, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %i.o = add nuw nsw i64 %.04871.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, 41
  br i1 %exitcond.not.i, label %.lr.ph78.i.preheader, label %bb.c, !llvm.loop !638

.lr.ph78.i.preheader:                             ; preds = %.loopexit.i, %bb.c
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %bb.h
  %.076.i = phi i64 [ %i.ad, %bb.h ], [ 0, %.lr.ph78.i.preheader ] ; 3 uses
  %.04175.i = phi i1 [ %i.ac, %bb.h ], [ true, %.lr.ph78.i.preheader ] ; 2 uses
  %.04374.i = phi i32 [ %i.aa, %bb.h ], [ %0, %.lr.ph78.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE7normal0, i64 %.076.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !68    ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %.not57.i = icmp sgt i8 %i.q, -1
  br i1 %.not57.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph78.i
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = and i32 %i.s, 32512
  %i.u = add nuw nsw i64 %.076.i, 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE7normal0, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !68
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.t, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph78.i
  %.1.i = phi i64 [ %i.u, %bb.f ], [ %.076.i, %.lr.ph78.i ]
  %i.z = phi i32 [ %i.y, %bb.f ], [ %i.r, %.lr.ph78.i ]
  %i.aa = sub nsw i32 %.04374.i, %i.z             ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.h, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = xor i1 %.04175.i, true                  ; 2 uses
  %i.ad = add i64 %.1.i, 1                        ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 309
  br i1 %i.ae, label %.lr.ph78.i, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit, !llvm.loop !639

bb.i:                                             ; preds = %bb.a
  %i.af = icmp ult i32 %0, 131072
  br i1 %i.af, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %0, 65535                       ; 2 uses
  %i.ah = lshr i32 %i.ag, 8                       ; 2 uses
  %i.ai = trunc i32 %0 to i8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i52, %bb.j
  %.04871.i45 = phi i64 [ 0, %bb.j ], [ %i.au, %.loopexit.i52 ] ; 2 uses
  %.04970.i46 = phi i32 [ 0, %bb.j ], [ %i.al, %.loopexit.i52 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @_ZZN3fmt3v126detail12is_printableEjE11singletons1, i64 %.04871.i45 ; 2 uses
  %.sroa.0.0.copyload.i47 = load i8, ptr %i.aj, align 2, !tbaa !68
  %.sroa.5.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %.sroa.5.0.copyload.i49 = load i8, ptr %.sroa.5.0..sroa_idx.i48, align 1, !tbaa !68
  %i.ak = zext i8 %.sroa.5.0.copyload.i49 to i32
  %i.al = add nuw nsw i32 %.04970.i46, %i.ak      ; 2 uses
  %i.am = zext i8 %.sroa.0.0.copyload.i47 to i32  ; 2 uses
  %i.an = icmp samesign ult i32 %i.ah, %i.am
  br i1 %i.an, label %.lr.ph78.i55.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i32 %i.ah, %i.am
  br i1 %i.ao, label %.lr.ph.preheader.i62, label %.loopexit.i52

.lr.ph.preheader.i62:                             ; preds = %bb.l
  %i.ap = zext nneg i32 %.04970.i46 to i64
  %i.aq = zext nneg i32 %i.al to i64
  br label %.lr.ph.i63

bb.m:                                             ; preds = %.lr.ph.i63
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %.not.i66 = icmp samesign ult i64 %indvars.iv.next.i65, %i.aq
  br i1 %.not.i66, label %.lr.ph.i63, label %.loopexit.i52, !llvm.loop !637

.lr.ph.i63:                                       ; preds = %bb.m, %.lr.ph.preheader.i62
  %indvars.iv.i64 = phi i64 [ %i.ap, %.lr.ph.preheader.i62 ], [ %indvars.iv.next.i65, %bb.m ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower, i64 %indvars.iv.i64
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !68
  %i.at = icmp eq i8 %i.as, %i.ai
  br i1 %i.at, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit, label %bb.m

.loopexit.i52:                                    ; preds = %bb.m, %bb.l
  %i.au = add nuw nsw i64 %.04871.i45, 1          ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.au, 38
  br i1 %exitcond.not.i53, label %.lr.ph78.i55.preheader, label %bb.k, !llvm.loop !638

.lr.ph78.i55.preheader:                           ; preds = %.loopexit.i52, %bb.k
  br label %.lr.ph78.i55

.lr.ph78.i55:                                     ; preds = %.lr.ph78.i55.preheader, %bb.p
  %.076.i56 = phi i64 [ %i.bj, %bb.p ], [ 0, %.lr.ph78.i55.preheader ] ; 3 uses
  %.04175.i57 = phi i1 [ %i.bi, %bb.p ], [ true, %.lr.ph78.i55.preheader ] ; 2 uses
  %.04374.i58 = phi i32 [ %i.bg, %bb.p ], [ %i.ag, %.lr.ph78.i55.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE7normal1, i64 %.076.i56
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !68  ; 2 uses
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %.not57.i59 = icmp sgt i8 %i.aw, -1
  br i1 %.not57.i59, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph78.i55
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = and i32 %i.ay, 32512
  %i.ba = add nuw nsw i64 %.076.i56, 1            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE7normal1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !68
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.az, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph78.i55
  %.1.i60 = phi i64 [ %i.ba, %bb.n ], [ %.076.i56, %.lr.ph78.i55 ]
  %i.bf = phi i32 [ %i.be, %bb.n ], [ %i.ax, %.lr.ph78.i55 ]
  %i.bg = sub nsw i32 %.04374.i58, %i.bf          ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %bb.p, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit

bb.p:                                             ; preds = %bb.o
  %i.bi = xor i1 %.04175.i57, true                ; 2 uses
  %i.bj = add i64 %.1.i60, 1                      ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 419
  br i1 %i.bk, label %.lr.ph78.i55, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit, !llvm.loop !639

bb.q:                                             ; preds = %bb.i
  %i.bl = insertelement <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 poison>, i32 %0, i64 7 ; 2 uses
  %i.bm = and <8 x i32> %i.bl, <i32 34, i32 11, i32 14, i32 3103, i32 1506, i32 716213, i32 196112, i32 -2> ; 2 uses
  %i.bn = shufflevector <8 x i32> %i.bl, <8 x i32> <i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 9>
  %i.bo = add <8 x i32> %i.bn, <i32 -173790, i32 -177973, i32 -183970, i32 -191457, i32 -195102, i32 -201547, i32 -918000, i32 178206> ; 2 uses
  %i.bp = icmp ult <8 x i32> %i.bo, %i.bm
  %i.bq = icmp eq <8 x i32> %i.bo, %i.bm
  %i.br = shufflevector <8 x i1> %i.bp, <8 x i1> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %i.bs = bitcast <8 x i1> %i.br to i8
  %.not = icmp eq i8 %i.bs, 0
  %i.bt = icmp ult i32 %0, 1114112
  %spec.select = and i1 %i.bt, %.not
  br label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit

_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit: ; preds = %.lr.ph.i63, %bb.p, %bb.o, %.lr.ph.i, %bb.h, %bb.g, %bb.q
  %.0 = phi i1 [ %spec.select, %bb.q ], [ false, %.lr.ph.i ], [ %.04175.i57, %bb.o ], [ %i.ac, %bb.h ], [ %.04175.i, %bb.g ], [ %i.bi, %bb.p ], [ false, %.lr.ph.i63 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !13
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !165
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !172
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 92, ptr %i.l, align 1, !tbaa !68
  %i.m = load i64, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !166
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !164
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n), !inline_history !13
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit7:         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.s = phi i64 [ %i.m, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !165
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !172
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.u, align 1, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i16 12336, ptr %i.a, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7
  %.012.i.i = phi i32 [ %i.ab, %.split.i.i ], [ %2, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aa, %.split.i.i ], [ %i.v, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ]
  %i.w = and i32 %.012.i.i, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.96, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !68
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !68
  %i.ab = lshr i32 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i.i, !llvm.loop !18

_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i8 = load i64, ptr %i.b, align 8, !tbaa !172
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.ad = phi i64 [ %.pre.i.i8, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.aq, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !166
  %i.af = sub i64 %i.ae, %i.ad
  %gepdiff = sub nsw i64 2, %.02732.i.i.idx       ; 4 uses
  %i.ag = icmp ult i64 %i.af, %gepdiff
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !164
  %i.ai = add i64 %gepdiff, %i.ad
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai), !inline_history !14
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !166
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %.025.i.i = phi i64 [ %i.am, %bb.e ], [ %gepdiff, %bb.d ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.an = load ptr, ptr %0, align 8, !tbaa !165
  %i.ao = getelementptr i8, ptr %i.an, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !68
  %.pre37.i.i = load i64, ptr %i.b, align 8, !tbaa !172
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.f
  %i.ap = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.f ]
  %i.aq = add i64 %i.ap, %.025.i.i                ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !172
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i9 = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i9, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.d, !llvm.loop !15

_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !13
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !165
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !172
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 92, ptr %i.l, align 1, !tbaa !68
  %i.m = load i64, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !166
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !164
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n), !inline_history !13
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit7:         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.s = phi i64 [ %i.m, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !165
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !172
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.u, align 1, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i32 808464432, ptr %i.a, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7
  %.012.i.i = phi i32 [ %i.ab, %.split.i.i ], [ %2, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aa, %.split.i.i ], [ %i.v, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ]
  %i.w = and i32 %.012.i.i, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.96, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !68
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
end_hunk_2
