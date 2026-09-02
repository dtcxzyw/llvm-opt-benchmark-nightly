Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imageio?download=true
inline.NumInlined: 4864
inline.NumDeleted: 1339
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt10contiguizeEPKvilllPviiiNS0_8TypeDescE:bb.a
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 56
  %i.sj = load double, ptr %i.si, align 8, !tbaa !78
  %i.sk = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i245, i64 64 ; 2 uses
  store double %i.sj, ptr %i.sg, align 8, !tbaa !78
  %indvars.iv.next.i246.7 = add nuw nsw i64 %indvars.iv.i244, 8 ; 2 uses
  %exitcond.not.i247.7 = icmp eq i64 %indvars.iv.next.i246.7, %wide.trip.count.i231
  br i1 %exitcond.not.i247.7, label %._crit_edge.us.us.us.us.us.i248, label %scalar.ph, !llvm.loop !483

._crit_edge.us.us.us.us.us.i248:                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa411 = phi ptr [ %i.qu, %middle.block ], [ %.lcssa580.unr, %scalar.ph.prol.loopexit ], [ %i.sk, %scalar.ph ] ; 3 uses
  %i.sl = add nuw nsw i32 %.05985.us.us.us.us.us.i241, 1 ; 2 uses
  %i.sm = getelementptr inbounds i8, ptr %.06084.us.us.us.us.us.i242, i64 %2
  %exitcond122.not.i249 = icmp eq i32 %i.sl, %6
  %indvar.next416 = add i64 %indvar415, 1
  br i1 %exitcond122.not.i249, label %._crit_edge86.split.us.us.us.us.us.i250, label %.preheader76.us.us.us.us.us.i240, !llvm.loop !484

._crit_edge86.split.us.us.us.us.us.i250:          ; preds = %._crit_edge.us.us.us.us.us.i248
  %i.sn = add nuw nsw i32 %.06191.us.us.us.us.i237, 1 ; 2 uses
  %i.so = getelementptr inbounds i8, ptr %.06289.us.us.us.us.i238, i64 %3
  %exitcond123.not.i251 = icmp eq i32 %i.sn, %7
  %indvar.next414 = add i64 %indvar413, 1
  br i1 %exitcond123.not.i251, label %._crit_edge.split.us.split.us.us.us.i252, label %.preheader77.us.us.us.us.i236, !llvm.loop !485

._crit_edge.split.us.split.us.us.us.i252:         ; preds = %._crit_edge86.split.us.us.us.us.us.i250
  %i.sp = add nuw nsw i32 %.063103.us.us.i233, 1  ; 2 uses
  %i.sq = getelementptr inbounds i8, ptr %.1100.us.us.i234, i64 %4
  %exitcond124.not.i253 = icmp eq i32 %i.sp, %smax.i230
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond124.not.i253, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit, label %.preheader78.us.us.i232, !llvm.loop !486

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
  br i1 %epil.iter.cmp.not, label %._crit_edge.i266, label %bb.y, !llvm.loop !487

._crit_edge.i266:                                 ; preds = %bb.y, %._crit_edge.i266.unr-lcssa
  %.lcssa578 = phi ptr [ %i.tg, %._crit_edge.i266.unr-lcssa ], [ %i.sw, %bb.y ]
  %i.sy = add nuw nsw i32 %.066116.i259, 1        ; 2 uses
  %i.sz = getelementptr inbounds i8, ptr %.068115.i260, i64 %4
  %exitcond127.not.i267 = icmp eq i32 %i.sy, %smax126.i257
  br i1 %exitcond127.not.i267, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit, label %.preheader.i258, !llvm.loop !488

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
  br i1 %niter.ncmp.3, label %._crit_edge.i266.unr-lcssa, label %.preheader.i258.new, !llvm.loop !489

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
  %.012.lcssa.i.i = phi i64 [ %i.a, %bb.b ], [ %i.ag, %.lr.ph.i.i ] ; 9 uses
  %.010.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.ai, %.lr.ph.i.i ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %0, %bb.b ], [ %i.ah, %.lr.ph.i.i ] ; 6 uses
  %.not24.i.i = icmp eq i64 %.012.lcssa.i.i, 0
  br i1 %.not24.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i.preheader

.lr.ph28.i.i.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check78 = icmp ult i64 %.012.lcssa.i.i, 8
  br i1 %min.iters.check78, label %.lr.ph28.i.i.preheader93, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph28.i.i.preheader
  %i.c = shl i64 %.012.lcssa.i.i, 2
  %scevgep = getelementptr i8, ptr %.010.lcssa.i.i, i64 %i.c
  %scevgep76 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %.012.lcssa.i.i
  %bound0 = icmp ult ptr %.010.lcssa.i.i, %scevgep76
  %bound1 = icmp ult ptr %.0.lcssa.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph28.i.i.preheader93, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck
  %n.vec80 = and i64 %.012.lcssa.i.i, -8          ; 4 uses
  %i.d = getelementptr i8, ptr %.0.lcssa.i.i, i64 %n.vec80
  %i.e = shl i64 %n.vec80, 2
  %i.f = getelementptr i8, ptr %.010.lcssa.i.i, i64 %i.e
  %i.g = and i64 %.012.lcssa.i.i, 7
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 3 uses
  %next.gep83 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %index82 ; 2 uses
  %i.h = shl i64 %index82, 2
  %next.gep84 = getelementptr i8, ptr %.010.lcssa.i.i, i64 %i.h ; 2 uses
  %i.i = getelementptr i8, ptr %next.gep83, i64 4
  %wide.load85 = load <4 x i8>, ptr %next.gep83, align 1, !tbaa !68, !alias.scope !501
  %wide.load86 = load <4 x i8>, ptr %i.i, align 1, !tbaa !68, !alias.scope !501
  %i.j = uitofp <4 x i8> %wide.load85 to <4 x float>
  %i.k = uitofp <4 x i8> %wide.load86 to <4 x float>
  %i.l = fmul nnan <4 x float> %i.j, splat (float f0x3B808081)
  %i.m = fmul nnan <4 x float> %i.k, splat (float f0x3B808081)
  %i.n = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x float> %i.l, ptr %next.gep84, align 4, !tbaa !94, !alias.scope !502, !noalias !501
  store <4 x float> %i.m, ptr %i.n, align 4, !tbaa !94, !alias.scope !502, !noalias !501
  %index.next87 = add nuw i64 %index82, 8         ; 2 uses
  %i.o = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.o, label %middle.block88, label %vector.body81, !llvm.loop !493

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %.012.lcssa.i.i, %n.vec80
  br i1 %cmp.n89, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i.preheader93

.lr.ph28.i.i.preheader93:                         ; preds = %vector.memcheck, %.lr.ph28.i.i.preheader, %middle.block88
  %.127.i.i.ph = phi ptr [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %.lr.ph28.i.i.preheader ], [ %i.d, %middle.block88 ] ; 2 uses
  %.11126.i.i.ph = phi ptr [ %.010.lcssa.i.i, %vector.memcheck ], [ %.010.lcssa.i.i, %.lr.ph28.i.i.preheader ], [ %i.f, %middle.block88 ] ; 2 uses
  %.11325.i.i.ph = phi i64 [ %.012.lcssa.i.i, %vector.memcheck ], [ %.012.lcssa.i.i, %.lr.ph28.i.i.preheader ], [ %i.g, %middle.block88 ] ; 4 uses
  %i.p = add nsw i64 %.11325.i.i.ph, -1
  %xtraiter101 = and i64 %.11325.i.i.ph, 3        ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph28.i.i.prol.loopexit, label %.lr.ph28.i.i.prol

.lr.ph28.i.i.prol:                                ; preds = %.lr.ph28.i.i.preheader93, %.lr.ph28.i.i.prol
  %.127.i.i.prol = phi ptr [ %i.r, %.lr.ph28.i.i.prol ], [ %.127.i.i.ph, %.lr.ph28.i.i.preheader93 ] ; 2 uses
  %.11126.i.i.prol = phi ptr [ %i.v, %.lr.ph28.i.i.prol ], [ %.11126.i.i.ph, %.lr.ph28.i.i.preheader93 ] ; 2 uses
  %.11325.i.i.prol = phi i64 [ %i.q, %.lr.ph28.i.i.prol ], [ %.11325.i.i.ph, %.lr.ph28.i.i.preheader93 ]
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph28.i.i.prol ], [ 0, %.lr.ph28.i.i.preheader93 ]
  %i.q = add i64 %.11325.i.i.prol, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.127.i.i.prol, i64 1 ; 2 uses
  %i.s = load i8, ptr %.127.i.i.prol, align 1, !tbaa !68
  %i.t = uitofp i8 %i.s to float
  %i.u = fmul nnan float %i.t, f0x3B808081
  %i.v = getelementptr inbounds nuw i8, ptr %.11126.i.i.prol, i64 4 ; 2 uses
  store float %i.u, ptr %.11126.i.i.prol, align 4, !tbaa !94
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph28.i.i.prol.loopexit, label %.lr.ph28.i.i.prol, !llvm.loop !494

.lr.ph28.i.i.prol.loopexit:                       ; preds = %.lr.ph28.i.i.prol, %.lr.ph28.i.i.preheader93
  %.127.i.i.unr = phi ptr [ %.127.i.i.ph, %.lr.ph28.i.i.preheader93 ], [ %i.r, %.lr.ph28.i.i.prol ]
  %.11126.i.i.unr = phi ptr [ %.11126.i.i.ph, %.lr.ph28.i.i.preheader93 ], [ %i.v, %.lr.ph28.i.i.prol ]
  %.11325.i.i.unr = phi i64 [ %.11325.i.i.ph, %.lr.ph28.i.i.preheader93 ], [ %i.q, %.lr.ph28.i.i.prol ]
  %i.w = icmp ult i64 %i.p, 3
  br i1 %i.w, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.021.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %0, %bb.b ] ; 2 uses
  %.01020.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %1, %bb.b ] ; 2 uses
  %.01219.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.a, %bb.b ]
  %i.x = load float, ptr %.021.i.i, align 1, !tbaa !68
  %i.y = insertelement <4 x float> poison, float %i.x, i64 0
  %i.z = bitcast <4 x float> %i.y to <16 x i8>
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ab = bitcast <16 x i8> %i.aa to <8 x i16>
  %i.ac = shufflevector <8 x i16> %i.ab, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ad = bitcast <8 x i16> %i.ac to <4 x i32>
  %i.ae = uitofp nneg <4 x i32> %i.ad to <4 x float>
  %i.af = fmul nnan <4 x float> %i.ae, splat (float f0x3B808081)
  store <4 x float> %i.af, ptr %.01020.i.i, align 1, !tbaa !68
  %i.ag = add i64 %.01219.i.i, -4                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01020.i.i, i64 16 ; 2 uses
  %i.aj = icmp ugt i64 %i.ag, 3
  br i1 %i.aj, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !495

.lr.ph28.i.i:                                     ; preds = %.lr.ph28.i.i.prol.loopexit, %.lr.ph28.i.i
  %.127.i.i = phi ptr [ %i.ba, %.lr.ph28.i.i ], [ %.127.i.i.unr, %.lr.ph28.i.i.prol.loopexit ] ; 5 uses
  %.11126.i.i = phi ptr [ %i.be, %.lr.ph28.i.i ], [ %.11126.i.i.unr, %.lr.ph28.i.i.prol.loopexit ] ; 5 uses
  %.11325.i.i = phi i64 [ %i.az, %.lr.ph28.i.i ], [ %.11325.i.i.unr, %.lr.ph28.i.i.prol.loopexit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 1
  %i.al = load i8, ptr %.127.i.i, align 1, !tbaa !68
  %i.am = uitofp i8 %i.al to float
  %i.an = fmul nnan float %i.am, f0x3B808081
  %i.ao = getelementptr inbounds nuw i8, ptr %.11126.i.i, i64 4
  store float %i.an, ptr %.11126.i.i, align 4, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 2
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !68
  %i.ar = uitofp i8 %i.aq to float
  %i.as = fmul nnan float %i.ar, f0x3B808081
  %i.at = getelementptr inbounds nuw i8, ptr %.11126.i.i, i64 8
  store float %i.as, ptr %i.ao, align 4, !tbaa !94
  %i.au = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 3
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !68
  %i.aw = uitofp i8 %i.av to float
  %i.ax = fmul nnan float %i.aw, f0x3B808081
  %i.ay = getelementptr inbounds nuw i8, ptr %.11126.i.i, i64 12
  store float %i.ax, ptr %i.at, align 4, !tbaa !94
  %i.az = add i64 %.11325.i.i, -4                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.127.i.i, i64 4
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !68
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = fmul nnan float %i.bc, f0x3B808081
  %i.be = getelementptr inbounds nuw i8, ptr %.11126.i.i, i64 16
  store float %i.bd, ptr %i.ay, align 4, !tbaa !94
  %.not.i.i.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.3, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i, !llvm.loop !496

bb.c:                                             ; preds = %bb.a
  %i.bf = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIN9Imath_3_14halfEfEEvPKT_PT0_mS7_S7_(ptr noundef %0, ptr noundef %1, i64 noundef %i.bf, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.d:                                             ; preds = %bb.a
  %i.bg = sext i32 %2 to i64                      ; 4 uses
  %i.bh = icmp ugt i32 %2, 3
  br i1 %i.bh, label %.lr.ph.i.i42.preheader, label %.preheader.i.i32

.lr.ph.i.i42.preheader:                           ; preds = %bb.d
  %i.bi = add nsw i64 %i.bg, -4                   ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1
  %xtraiter = and i64 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.prol.loopexit, label %.lr.ph.i.i42.prol

.lr.ph.i.i42.prol:                                ; preds = %.lr.ph.i.i42.preheader, %.lr.ph.i.i42.prol
  %.021.i.i43.prol = phi ptr [ %i.bp, %.lr.ph.i.i42.prol ], [ %0, %.lr.ph.i.i42.preheader ] ; 2 uses
  %.01020.i.i44.prol = phi ptr [ %i.bq, %.lr.ph.i.i42.prol ], [ %1, %.lr.ph.i.i42.preheader ] ; 2 uses
  %.01219.i.i45.prol = phi i64 [ %i.bo, %.lr.ph.i.i42.prol ], [ %i.bg, %.lr.ph.i.i42.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i42.prol ], [ 0, %.lr.ph.i.i42.preheader ]
  %i.bl = load <4 x i16>, ptr %.021.i.i43.prol, align 2, !tbaa !136
  %i.bm = uitofp <4 x i16> %i.bl to <4 x float>
  %i.bn = fmul nnan <4 x float> %i.bm, splat (float f0x37800080)
  store <4 x float> %i.bn, ptr %.01020.i.i44.prol, align 1, !tbaa !68
  %i.bo = add i64 %.01219.i.i45.prol, -4          ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.021.i.i43.prol, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01020.i.i44.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i42.prol.loopexit, label %.lr.ph.i.i42.prol, !llvm.loop !497

.lr.ph.i.i42.prol.loopexit:                       ; preds = %.lr.ph.i.i42.prol, %.lr.ph.i.i42.preheader
  %.021.i.i43.unr = phi ptr [ %0, %.lr.ph.i.i42.preheader ], [ %i.bp, %.lr.ph.i.i42.prol ]
  %.01020.i.i44.unr = phi ptr [ %1, %.lr.ph.i.i42.preheader ], [ %i.bq, %.lr.ph.i.i42.prol ]
  %.01219.i.i45.unr = phi i64 [ %i.bg, %.lr.ph.i.i42.preheader ], [ %i.bo, %.lr.ph.i.i42.prol ]
  %.lcssa100.unr = phi i64 [ poison, %.lr.ph.i.i42.preheader ], [ %i.bo, %.lr.ph.i.i42.prol ]
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i42.preheader ], [ %i.bp, %.lr.ph.i.i42.prol ]
  %.lcssa98.unr = phi ptr [ poison, %.lr.ph.i.i42.preheader ], [ %i.bq, %.lr.ph.i.i42.prol ]
  %i.br = icmp ult i64 %i.bi, 12
  br i1 %i.br, label %.preheader.i.i32, label %.lr.ph.i.i42

.preheader.i.i32:                                 ; preds = %.lr.ph.i.i42.prol.loopexit, %.lr.ph.i.i42, %bb.d
  %.012.lcssa.i.i33 = phi i64 [ %i.bg, %bb.d ], [ %.lcssa100.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.cy, %.lr.ph.i.i42 ] ; 6 uses
  %.010.lcssa.i.i34 = phi ptr [ %1, %bb.d ], [ %.lcssa98.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.da, %.lr.ph.i.i42 ] ; 3 uses
  %.0.lcssa.i.i35 = phi ptr [ %0, %bb.d ], [ %.lcssa99.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.cz, %.lr.ph.i.i42 ] ; 3 uses
  %.not24.i.i36 = icmp eq i64 %.012.lcssa.i.i33, 0
  br i1 %.not24.i.i36, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i37.preheader

.lr.ph28.i.i37.preheader:                         ; preds = %.preheader.i.i32
  %min.iters.check = icmp ult i64 %.012.lcssa.i.i33, 8
  br i1 %min.iters.check, label %.lr.ph28.i.i37.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph28.i.i37.preheader
  %n.vec = and i64 %.012.lcssa.i.i33, -8          ; 4 uses
  %i.bs = shl i64 %n.vec, 1
  %i.bt = getelementptr i8, ptr %.0.lcssa.i.i35, i64 %i.bs
  %i.bu = shl i64 %n.vec, 2
  %i.bv = getelementptr i8, ptr %.010.lcssa.i.i34, i64 %i.bu
  %i.bw = and i64 %.012.lcssa.i.i33, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i35, i64 %i.bx ; 2 uses
  %i.by = shl i64 %index, 2
  %next.gep72 = getelementptr i8, ptr %.010.lcssa.i.i34, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !136
  %wide.load73 = load <4 x i16>, ptr %i.bz, align 2, !tbaa !136
  %i.ca = uitofp <4 x i16> %wide.load to <4 x float>
  %i.cb = uitofp <4 x i16> %wide.load73 to <4 x float>
  %i.cc = fmul nnan <4 x float> %i.ca, splat (float f0x37800080)
  %i.cd = fmul nnan <4 x float> %i.cb, splat (float f0x37800080)
  %i.ce = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x float> %i.cc, ptr %next.gep72, align 4, !tbaa !94
  store <4 x float> %i.cd, ptr %i.ce, align 4, !tbaa !94
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !498

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.012.lcssa.i.i33, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i37.preheader96

.lr.ph28.i.i37.preheader96:                       ; preds = %.lr.ph28.i.i37.preheader, %middle.block
  %.127.i.i38.ph = phi ptr [ %.0.lcssa.i.i35, %.lr.ph28.i.i37.preheader ], [ %i.bt, %middle.block ]
  %.11126.i.i39.ph = phi ptr [ %.010.lcssa.i.i34, %.lr.ph28.i.i37.preheader ], [ %i.bv, %middle.block ]
  %.11325.i.i40.ph = phi i64 [ %.012.lcssa.i.i33, %.lr.ph28.i.i37.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph28.i.i37

.lr.ph.i.i42:                                     ; preds = %.lr.ph.i.i42.prol.loopexit, %.lr.ph.i.i42
  %.021.i.i43 = phi ptr [ %i.cz, %.lr.ph.i.i42 ], [ %.021.i.i43.unr, %.lr.ph.i.i42.prol.loopexit ] ; 5 uses
  %.01020.i.i44 = phi ptr [ %i.da, %.lr.ph.i.i42 ], [ %.01020.i.i44.unr, %.lr.ph.i.i42.prol.loopexit ] ; 5 uses
  %.01219.i.i45 = phi i64 [ %i.cy, %.lr.ph.i.i42 ], [ %.01219.i.i45.unr, %.lr.ph.i.i42.prol.loopexit ]
  %i.cg = load <4 x i16>, ptr %.021.i.i43, align 2, !tbaa !136
  %i.ch = uitofp <4 x i16> %i.cg to <4 x float>
  %i.ci = fmul nnan <4 x float> %i.ch, splat (float f0x37800080)
  store <4 x float> %i.ci, ptr %.01020.i.i44, align 1, !tbaa !68
  %i.cj = getelementptr inbounds nuw i8, ptr %.021.i.i43, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.01020.i.i44, i64 16
  %i.cl = load <4 x i16>, ptr %i.cj, align 2, !tbaa !136
  %i.cm = uitofp <4 x i16> %i.cl to <4 x float>
  %i.cn = fmul nnan <4 x float> %i.cm, splat (float f0x37800080)
  store <4 x float> %i.cn, ptr %i.ck, align 1, !tbaa !68
  %i.co = getelementptr inbounds nuw i8, ptr %.021.i.i43, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.01020.i.i44, i64 32
  %i.cq = load <4 x i16>, ptr %i.co, align 2, !tbaa !136
  %i.cr = uitofp <4 x i16> %i.cq to <4 x float>
  %i.cs = fmul nnan <4 x float> %i.cr, splat (float f0x37800080)
  store <4 x float> %i.cs, ptr %i.cp, align 1, !tbaa !68
  %i.ct = getelementptr inbounds nuw i8, ptr %.021.i.i43, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %.01020.i.i44, i64 48
  %i.cv = load <4 x i16>, ptr %i.ct, align 2, !tbaa !136
  %i.cw = uitofp <4 x i16> %i.cv to <4 x float>
  %i.cx = fmul nnan <4 x float> %i.cw, splat (float f0x37800080)
  store <4 x float> %i.cx, ptr %i.cu, align 1, !tbaa !68
  %i.cy = add i64 %.01219.i.i45, -16              ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.021.i.i43, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01020.i.i44, i64 64 ; 2 uses
  %i.db = icmp ugt i64 %i.cy, 3
  br i1 %i.db, label %.lr.ph.i.i42, label %.preheader.i.i32, !llvm.loop !499

.lr.ph28.i.i37:                                   ; preds = %.lr.ph28.i.i37.preheader96, %.lr.ph28.i.i37
  %.127.i.i38 = phi ptr [ %i.dd, %.lr.ph28.i.i37 ], [ %.127.i.i38.ph, %.lr.ph28.i.i37.preheader96 ] ; 2 uses
  %.11126.i.i39 = phi ptr [ %i.dh, %.lr.ph28.i.i37 ], [ %.11126.i.i39.ph, %.lr.ph28.i.i37.preheader96 ] ; 2 uses
  %.11325.i.i40 = phi i64 [ %i.dc, %.lr.ph28.i.i37 ], [ %.11325.i.i40.ph, %.lr.ph28.i.i37.preheader96 ]
  %i.dc = add i64 %.11325.i.i40, -1               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.127.i.i38, i64 2
  %i.de = load i16, ptr %.127.i.i38, align 2, !tbaa !136
  %i.df = uitofp i16 %i.de to float
  %i.dg = fmul nnan float %i.df, f0x37800080
  %i.dh = getelementptr inbounds nuw i8, ptr %.11126.i.i39, i64 4
  store float %i.dg, ptr %.11126.i.i39, align 4, !tbaa !94
  %.not.i.i41 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i41, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i37, !llvm.loop !500

bb.e:                                             ; preds = %bb.a
  %i.di = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIcfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.di, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.f:                                             ; preds = %bb.a
  %i.dj = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIsfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dj, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.g:                                             ; preds = %bb.a
  %i.dk = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIifEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dk, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.h:                                             ; preds = %bb.a
  %i.dl = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIjfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dl, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.i:                                             ; preds = %bb.a
  %i.dm = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIxfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dm, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.j:                                             ; preds = %bb.a
  %i.dn = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIyfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dn, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.k:                                             ; preds = %bb.a
  %i.do = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIdfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.do, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.l:                                             ; preds = %bb.a
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef 864, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE, ptr noundef nonnull @.str.78) #45 ; 0 uses
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit: ; preds = %.lr.ph28.i.i37, %.lr.ph28.i.i.prol.loopexit, %.lr.ph28.i.i, %middle.block, %middle.block88, %.preheader.i.i32, %.preheader.i.i, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.a, %bb.l
  %.0 = phi ptr [ null, %bb.l ], [ %0, %bb.a ], [ %1, %bb.k ], [ %1, %bb.j ], [ %1, %bb.i ], [ %1, %bb.h ], [ %1, %bb.g ], [ %1, %bb.f ], [ %1, %bb.e ], [ %1, %middle.block88 ], [ %1, %bb.c ], [ %1, %.preheader.i.i ], [ %1, %.preheader.i.i32 ], [ %1, %middle.block ], [ %1, %.lr.ph28.i.i.prol.loopexit ], [ %1, %.lr.ph28.i.i ], [ %1, %.lr.ph28.i.i37 ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_13pvt18convert_from_floatEPKfPvmNS0_8TypeDescE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %3, ptr %4, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = lshr i64 %3, 8
  %i.b = lshr i64 %3, 32
  %i.c = trunc nuw i64 %i.b to i32
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.d = and i64 %i.a, 255
  %i.e = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %4) #39
  %i.f = mul i64 %2, %i.d
  %i.g = mul i64 %i.f, %i.e
  %i.h = mul i64 %i.g, %spec.select.i
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.h, i1 false)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %3 to i8
  switch i8 %i.i, label %bb.n [
    i8 11, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit
    i8 10, label %bb.d
    i8 2, label %bb.e
    i8 4, label %bb.f
    i8 6, label %bb.g
    i8 3, label %bb.h
    i8 5, label %bb.i
    i8 7, label %bb.j
    i8 12, label %bb.k
    i8 9, label %bb.l
    i8 8, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIfN9Imath_3_14halfEEEvPKT_PT0_mS7_S7_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i16 1024, i16 31743)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %2, 3
  br i1 %i.j, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, %bb.e
  %.015.lcssa.i.i = phi i64 [ %2, %bb.e ], [ %i.an, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 3 uses
  %.013.lcssa.i.i = phi ptr [ %1, %bb.e ], [ %i.ap, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %0, %bb.e ], [ %i.ao, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 3 uses
  %.not70.i.i = icmp eq i64 %.015.lcssa.i.i, 0
  br i1 %.not70.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i: ; preds = %bb.e, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i
  %.067.i.i = phi ptr [ %i.ao, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %0, %bb.e ] ; 2 uses
  %.01366.i.i = phi ptr [ %i.ap, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %1, %bb.e ] ; 2 uses
  %.01565.i.i = phi i64 [ %i.an, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %2, %bb.e ]
  %i.k = load <4 x float>, ptr %.067.i.i, align 1, !tbaa !68
  %i.l = fmul <4 x float> %i.k, splat (float 2.550000e+02) ; 4 uses
  %i.m = extractelement <4 x float> %i.l, i64 0
  %i.n = extractelement <4 x float> %i.l, i64 1
  %i.o = extractelement <4 x float> %i.l, i64 2
  %i.p = extractelement <4 x float> %i.l, i64 3
  %i.q = tail call float @llvm.round.f32(float %i.o)
  %i.r = tail call float @llvm.round.f32(float %i.m)
  %i.s = tail call float @llvm.round.f32(float %i.p)
  %i.t = tail call float @llvm.round.f32(float %i.n)
  %i.u = insertelement <2 x float> poison, float %i.r, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.q, i64 1
  %i.w = bitcast <2 x float> %i.v to <2 x i32>
  %i.x = insertelement <2 x float> poison, float %i.t, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.s, i64 1
  %i.z = bitcast <2 x float> %i.y to <2 x i32>
  %i.aa = zext <2 x i32> %i.z to <2 x i64>
  %i.ab = shl nuw <2 x i64> %i.aa, splat (i64 32)
  %i.ac = zext <2 x i32> %i.w to <2 x i64>
  %i.ad = or disjoint <2 x i64> %i.ab, %i.ac
  %i.ae = bitcast <2 x i64> %i.ad to <4 x float>
  %i.af = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.ae)
  %i.ag = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.550000e+02), <4 x float> %i.af)
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ag)
  %i.ai = and <4 x i32> %i.ah, splat (i32 255)
  %i.aj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ai, <4 x i32> poison)
  %i.ak = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aj, <8 x i16> poison)
  %i.al = bitcast <16 x i8> %i.ak to <4 x float>
  %i.am = extractelement <4 x float> %i.al, i64 0
  store float %i.am, ptr %.01366.i.i, align 1, !tbaa !68
  %i.an = add i64 %.01565.i.i, -4                 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01366.i.i, i64 4 ; 2 uses
  %i.aq = icmp ugt i64 %i.an, 3
  br i1 %i.aq, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i, !llvm.loop !3

.lr.ph74.i.i:                                     ; preds = %.preheader.i.i
  %i.ar = load float, ptr %.0.lcssa.i.i, align 4, !tbaa !94
  %i.as = fmul float %i.ar, 2.550000e+02          ; 2 uses
  %i.at = fcmp olt float %i.as, 0.000000e+00
  %i.au = select i1 %i.at, float -5.000000e-01, float 5.000000e-01
  %i.av = fadd float %i.as, %i.au                 ; 2 uses
  %.inv.i.i.i = fcmp oge float %i.av, 0.000000e+00
  %.0.i.i.i.i = select i1 %.inv.i.i.i, float %i.av, float 0.000000e+00 ; 2 uses
  %i.aw = fcmp ogt float %.0.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i = select i1 %i.aw, float 2.550000e+02, float %.0.i.i.i.i
  %i.ax = fptoui float %.1.i.i.i.i to i8
  store i8 %i.ax, ptr %.013.lcssa.i.i, align 1, !tbaa !68
  %.not.i.i = icmp eq i64 %.015.lcssa.i.i, 1
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.1

.lr.ph74.i.i.1:                                   ; preds = %.lr.ph74.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !94
  %i.bb = fmul float %i.ba, 2.550000e+02          ; 2 uses
  %i.bc = fcmp olt float %i.bb, 0.000000e+00
  %i.bd = select i1 %i.bc, float -5.000000e-01, float 5.000000e-01
  %i.be = fadd float %i.bb, %i.bd                 ; 2 uses
  %.inv.i.i.i.1 = fcmp oge float %i.be, 0.000000e+00
  %.0.i.i.i.i.1 = select i1 %.inv.i.i.i.1, float %i.be, float 0.000000e+00 ; 2 uses
  %i.bf = fcmp ogt float %.0.i.i.i.i.1, 2.550000e+02
  %.1.i.i.i.i.1 = select i1 %i.bf, float 2.550000e+02, float %.0.i.i.i.i.1
  %i.bg = fptoui float %.1.i.i.i.i.1 to i8
  store i8 %i.bg, ptr %i.ay, align 1, !tbaa !68
  %.not.i.i.1 = icmp eq i64 %.015.lcssa.i.i, 2
  br i1 %.not.i.i.1, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.2

.lr.ph74.i.i.2:                                   ; preds = %.lr.ph74.i.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !94
  %i.bk = fmul float %i.bj, 2.550000e+02          ; 2 uses
  %i.bl = fcmp olt float %i.bk, 0.000000e+00
  %i.bm = select i1 %i.bl, float -5.000000e-01, float 5.000000e-01
  %i.bn = fadd float %i.bk, %i.bm                 ; 2 uses
  %.inv.i.i.i.2 = fcmp oge float %i.bn, 0.000000e+00
  %.0.i.i.i.i.2 = select i1 %.inv.i.i.i.2, float %i.bn, float 0.000000e+00 ; 2 uses
  %i.bo = fcmp ogt float %.0.i.i.i.i.2, 2.550000e+02
  %.1.i.i.i.i.2 = select i1 %i.bo, float 2.550000e+02, float %.0.i.i.i.i.2
  %i.bp = fptoui float %.1.i.i.i.i.2 to i8
  store i8 %i.bp, ptr %i.bh, align 1, !tbaa !68
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.f:                                             ; preds = %bb.c
  %i.bq = icmp ugt i64 %2, 3
  br i1 %i.bq, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46, label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46, %bb.f
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_120convert_pixel_valuesENS0_8TypeDescEPKvS1_Pvi:_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit
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
  %.015.lcssa.i.i = phi i64 [ %i.ak, %bb.i ], [ %i.cf, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 9 uses
  %.013.lcssa.i.i = phi ptr [ %3, %bb.i ], [ %i.ch, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %.151, %bb.i ], [ %i.cg, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 6 uses
  %.not70.i.i = icmp eq i64 %.015.lcssa.i.i, 0
  br i1 %.not70.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.preheader

.lr.ph74.i.i.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check137 = icmp ult i64 %.015.lcssa.i.i, 4
  br i1 %min.iters.check137, label %.lr.ph74.i.i.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph74.i.i.preheader
  %scevgep = getelementptr i8, ptr %.013.lcssa.i.i, i64 %.015.lcssa.i.i
  %i.am = shl i64 %.015.lcssa.i.i, 2
  %scevgep135 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.am
  %bound0 = icmp ult ptr %.013.lcssa.i.i, %scevgep135
  %bound1 = icmp ult ptr %.0.lcssa.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph74.i.i.preheader151, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck
  %n.vec139 = and i64 %.015.lcssa.i.i, -4         ; 4 uses
  %i.an = shl i64 %n.vec139, 2
  %i.ao = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %.013.lcssa.i.i, i64 %n.vec139
  %i.aq = and i64 %.015.lcssa.i.i, 3
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next145, %vector.body140 ] ; 3 uses
  %i.ar = shl i64 %index141, 2
  %next.gep142 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ar
  %next.gep143 = getelementptr i8, ptr %.013.lcssa.i.i, i64 %index141
  %wide.load144 = load <4 x float>, ptr %next.gep142, align 4, !tbaa !94, !alias.scope !510
  %i.as = fmul <4 x float> %wide.load144, splat (float 2.550000e+02) ; 2 uses
  %i.at = fcmp olt <4 x float> %i.as, zeroinitializer
  %i.au = select <4 x i1> %i.at, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.av = fadd <4 x float> %i.as, %i.au           ; 2 uses
  %i.aw = fcmp oge <4 x float> %i.av, zeroinitializer
  %i.ax = select <4 x i1> %i.aw, <4 x float> %i.av, <4 x float> zeroinitializer ; 2 uses
  %i.ay = fcmp ogt <4 x float> %i.ax, splat (float 2.550000e+02)
  %i.az = select <4 x i1> %i.ay, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ax
  %i.ba = fptoui <4 x float> %i.az to <4 x i8>
  store <4 x i8> %i.ba, ptr %next.gep143, align 1, !tbaa !68, !alias.scope !511, !noalias !510
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next145, %n.vec139
  br i1 %i.bb, label %middle.block146, label %vector.body140, !llvm.loop !506

middle.block146:                                  ; preds = %vector.body140
  %cmp.n147 = icmp eq i64 %.015.lcssa.i.i, %n.vec139
  br i1 %cmp.n147, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.preheader151

.lr.ph74.i.i.preheader151:                        ; preds = %vector.memcheck, %.lr.ph74.i.i.preheader, %middle.block146
  %.173.i.i.ph = phi ptr [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.ao, %middle.block146 ]
  %.11472.i.i.ph = phi ptr [ %.013.lcssa.i.i, %vector.memcheck ], [ %.013.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.ap, %middle.block146 ]
  %.11671.i.i.ph = phi i64 [ %.015.lcssa.i.i, %vector.memcheck ], [ %.015.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.aq, %middle.block146 ]
  br label %.lr.ph74.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i: ; preds = %bb.i, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i
  %.067.i.i = phi ptr [ %i.cg, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %.151, %bb.i ] ; 2 uses
  %.01366.i.i = phi ptr [ %i.ch, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %3, %bb.i ] ; 2 uses
  %.01565.i.i = phi i64 [ %i.cf, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %i.ak, %bb.i ]
  %i.bc = load <4 x float>, ptr %.067.i.i, align 1, !tbaa !68
  %i.bd = fmul <4 x float> %i.bc, splat (float 2.550000e+02) ; 4 uses
  %i.be = extractelement <4 x float> %i.bd, i64 0
  %i.bf = extractelement <4 x float> %i.bd, i64 1
  %i.bg = extractelement <4 x float> %i.bd, i64 2
  %i.bh = extractelement <4 x float> %i.bd, i64 3
  %i.bi = call float @llvm.round.f32(float %i.bg)
  %i.bj = call float @llvm.round.f32(float %i.be)
  %i.bk = call float @llvm.round.f32(float %i.bh)
  %i.bl = call float @llvm.round.f32(float %i.bf)
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1
  %i.bo = bitcast <2 x float> %i.bn to <2 x i32>
  %i.bp = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bk, i64 1
  %i.br = bitcast <2 x float> %i.bq to <2 x i32>
  %i.bs = zext <2 x i32> %i.br to <2 x i64>
  %i.bt = shl nuw <2 x i64> %i.bs, splat (i64 32)
  %i.bu = zext <2 x i32> %i.bo to <2 x i64>
  %i.bv = or disjoint <2 x i64> %i.bt, %i.bu
  %i.bw = bitcast <2 x i64> %i.bv to <4 x float>
  %i.bx = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.bw)
  %i.by = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.550000e+02), <4 x float> %i.bx)
  %i.bz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.by)
  %i.ca = and <4 x i32> %i.bz, splat (i32 255)
  %i.cb = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ca, <4 x i32> poison)
  %i.cc = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cb, <8 x i16> poison)
  %i.cd = bitcast <16 x i8> %i.cc to <4 x float>
  %i.ce = extractelement <4 x float> %i.cd, i64 0
  store float %i.ce, ptr %.01366.i.i, align 1, !tbaa !68
  %i.cf = add i64 %.01565.i.i, -4                 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01366.i.i, i64 4 ; 2 uses
  %i.ci = icmp ugt i64 %i.cf, 3
  br i1 %i.ci, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i, !llvm.loop !3

.lr.ph74.i.i:                                     ; preds = %.lr.ph74.i.i.preheader151, %.lr.ph74.i.i
  %.173.i.i = phi ptr [ %i.ck, %.lr.ph74.i.i ], [ %.173.i.i.ph, %.lr.ph74.i.i.preheader151 ] ; 2 uses
  %.11472.i.i = phi ptr [ %i.cs, %.lr.ph74.i.i ], [ %.11472.i.i.ph, %.lr.ph74.i.i.preheader151 ] ; 2 uses
  %.11671.i.i = phi i64 [ %i.cj, %.lr.ph74.i.i ], [ %.11671.i.i.ph, %.lr.ph74.i.i.preheader151 ]
  %i.cj = add i64 %.11671.i.i, -1                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.173.i.i, i64 4
  %i.cl = load float, ptr %.173.i.i, align 4, !tbaa !94
  %i.cm = fmul float %i.cl, 2.550000e+02          ; 2 uses
  %i.cn = fcmp olt float %i.cm, 0.000000e+00
  %i.co = select i1 %i.cn, float -5.000000e-01, float 5.000000e-01
  %i.cp = fadd float %i.cm, %i.co                 ; 2 uses
  %.inv.i.i.i = fcmp oge float %i.cp, 0.000000e+00
  %.0.i.i.i.i = select i1 %.inv.i.i.i, float %i.cp, float 0.000000e+00 ; 2 uses
  %i.cq = fcmp ogt float %.0.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i = select i1 %i.cq, float 2.550000e+02, float %.0.i.i.i.i
  %i.cr = fptoui float %.1.i.i.i.i to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.11472.i.i, i64 1
  store i8 %i.cr, ptr %.11472.i.i, align 1, !tbaa !68
  %.not.i.i54 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i54, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i, !llvm.loop !507

bb.j:                                             ; preds = %bb.h
  %i.ct = sext i32 %4 to i64                      ; 2 uses
  %i.cu = icmp ugt i32 %4, 3
  br i1 %i.cu, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63, label %.preheader.i.i55

.preheader.i.i55:                                 ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63, %bb.j
  %.015.lcssa.i.i56 = phi i64 [ %i.ct, %bb.j ], [ %i.et, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 6 uses
  %.013.lcssa.i.i57 = phi ptr [ %3, %bb.j ], [ %i.ev, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 3 uses
  %.0.lcssa.i.i58 = phi ptr [ %.151, %bb.j ], [ %i.eu, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 3 uses
  %.not83.i.i = icmp eq i64 %.015.lcssa.i.i56, 0
  br i1 %.not83.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph87.i.i.preheader

.lr.ph87.i.i.preheader:                           ; preds = %.preheader.i.i55
  %min.iters.check = icmp ult i64 %.015.lcssa.i.i56, 4
  br i1 %min.iters.check, label %.lr.ph87.i.i.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph87.i.i.preheader
  %n.vec = and i64 %.015.lcssa.i.i56, -4          ; 4 uses
  %i.cv = shl i64 %n.vec, 2
  %i.cw = getelementptr i8, ptr %.0.lcssa.i.i58, i64 %i.cv
  %i.cx = shl i64 %n.vec, 1
  %i.cy = getelementptr i8, ptr %.013.lcssa.i.i57, i64 %i.cx
  %i.cz = and i64 %.015.lcssa.i.i56, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i58, i64 %i.da
  %i.db = shl i64 %index, 1
  %next.gep132 = getelementptr i8, ptr %.013.lcssa.i.i57, i64 %i.db
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !94
  %i.dc = fmul <4 x float> %wide.load, splat (float 6.553500e+04) ; 2 uses
  %i.dd = fcmp olt <4 x float> %i.dc, zeroinitializer
  %i.de = select <4 x i1> %i.dd, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.df = fadd <4 x float> %i.dc, %i.de           ; 2 uses
  %i.dg = fcmp oge <4 x float> %i.df, zeroinitializer
  %i.dh = select <4 x i1> %i.dg, <4 x float> %i.df, <4 x float> zeroinitializer ; 2 uses
  %i.di = fcmp ogt <4 x float> %i.dh, splat (float 6.553500e+04)
  %i.dj = select <4 x i1> %i.di, <4 x float> splat (float 6.553500e+04), <4 x float> %i.dh
  %i.dk = fptoui <4 x float> %i.dj to <4 x i16>
  store <4 x i16> %i.dk, ptr %next.gep132, align 2, !tbaa !136
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !508

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.015.lcssa.i.i56, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph87.i.i.preheader154

.lr.ph87.i.i.preheader154:                        ; preds = %.lr.ph87.i.i.preheader, %middle.block
  %.186.i.i.ph = phi ptr [ %.0.lcssa.i.i58, %.lr.ph87.i.i.preheader ], [ %i.cw, %middle.block ]
  %.11485.i.i.ph = phi ptr [ %.013.lcssa.i.i57, %.lr.ph87.i.i.preheader ], [ %i.cy, %middle.block ]
  %.11684.i.i.ph = phi i64 [ %.015.lcssa.i.i56, %.lr.ph87.i.i.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph87.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63: ; preds = %bb.j, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63
  %.080.i.i = phi ptr [ %i.eu, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %.151, %bb.j ] ; 2 uses
  %.01379.i.i = phi ptr [ %i.ev, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %3, %bb.j ] ; 2 uses
  %.01578.i.i = phi i64 [ %i.et, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %i.ct, %bb.j ]
  %i.dm = load <4 x float>, ptr %.080.i.i, align 1, !tbaa !68
  %i.dn = fmul <4 x float> %i.dm, splat (float 6.553500e+04) ; 4 uses
  %i.do = extractelement <4 x float> %i.dn, i64 0
  %i.dp = extractelement <4 x float> %i.dn, i64 1
  %i.dq = extractelement <4 x float> %i.dn, i64 2
  %i.dr = extractelement <4 x float> %i.dn, i64 3
  %i.ds = call float @llvm.round.f32(float %i.dq)
  %i.dt = call float @llvm.round.f32(float %i.do)
  %i.du = call float @llvm.round.f32(float %i.dr)
  %i.dv = call float @llvm.round.f32(float %i.dp)
  %i.dw = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.ds, i64 1
  %i.dy = bitcast <2 x float> %i.dx to <2 x i32>
  %i.dz = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.du, i64 1
  %i.eb = bitcast <2 x float> %i.ea to <2 x i32>
  %i.ec = zext <2 x i32> %i.eb to <2 x i64>
  %i.ed = shl nuw <2 x i64> %i.ec, splat (i64 32)
  %i.ee = zext <2 x i32> %i.dy to <2 x i64>
  %i.ef = or disjoint <2 x i64> %i.ed, %i.ee
  %i.eg = bitcast <2 x i64> %i.ef to <4 x float>
  %i.eh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.eg)
  %i.ei = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 6.553500e+04), <4 x float> %i.eh)
  %i.ej = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ei)
  %i.ek = bitcast <4 x i32> %i.ej to <8 x i16>
  %i.el = and <8 x i16> %i.ek, <i16 -1, i16 0, i16 -1, i16 poison, i16 -1, i16 0, i16 -1, i16 poison>
  %i.em = shufflevector <8 x i16> %i.el, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 1, i32 5, i32 5, i32 4, i32 6> ; 2 uses
  %i.en = bitcast <8 x i16> %i.em to <2 x i64>
  %i.eo = bitcast <8 x i16> %i.em to <2 x i64>
  %i.ep = shufflevector <2 x i64> %i.eo, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.eq = or <2 x i64> %i.ep, %i.en
  %i.er = bitcast <2 x i64> %i.eq to <2 x double>
  %i.es = extractelement <2 x double> %i.er, i64 0
  store double %i.es, ptr %.01379.i.i, align 1, !tbaa !68
  %i.et = add i64 %.01578.i.i, -4                 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.080.i.i, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.01379.i.i, i64 8 ; 2 uses
  %i.ew = icmp ugt i64 %i.et, 3
  br i1 %i.ew, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63, label %.preheader.i.i55, !llvm.loop !4

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.preheader154, %.lr.ph87.i.i
  %.186.i.i = phi ptr [ %i.ey, %.lr.ph87.i.i ], [ %.186.i.i.ph, %.lr.ph87.i.i.preheader154 ] ; 2 uses
  %.11485.i.i = phi ptr [ %i.fg, %.lr.ph87.i.i ], [ %.11485.i.i.ph, %.lr.ph87.i.i.preheader154 ] ; 2 uses
  %.11684.i.i = phi i64 [ %i.ex, %.lr.ph87.i.i ], [ %.11684.i.i.ph, %.lr.ph87.i.i.preheader154 ]
  %i.ex = add i64 %.11684.i.i, -1                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.186.i.i, i64 4
  %i.ez = load float, ptr %.186.i.i, align 4, !tbaa !94
  %i.fa = fmul float %i.ez, 6.553500e+04          ; 2 uses
  %i.fb = fcmp olt float %i.fa, 0.000000e+00
  %i.fc = select i1 %i.fb, float -5.000000e-01, float 5.000000e-01
  %i.fd = fadd float %i.fa, %i.fc                 ; 2 uses
  %.inv.i.i.i59 = fcmp oge float %i.fd, 0.000000e+00
  %.0.i.i.i.i60 = select i1 %.inv.i.i.i59, float %i.fd, float 0.000000e+00 ; 2 uses
  %i.fe = fcmp ogt float %.0.i.i.i.i60, 6.553500e+04
  %.1.i.i.i.i61 = select i1 %i.fe, float 6.553500e+04, float %.0.i.i.i.i60
  %i.ff = fptoui float %.1.i.i.i.i61 to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %.11485.i.i, i64 2
  store i16 %i.ff, ptr %.11485.i.i, align 2, !tbaa !136
  %.not.i.i62 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i62, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph87.i.i, !llvm.loop !509

bb.k:                                             ; preds = %bb.h
  %i.fh = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfN9Imath_3_14halfEEEvPKT_PT0_mS7_S7_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fh, i16 1024, i16 31743)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.l:                                             ; preds = %bb.h
  %i.fi = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfcEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fi, i8 noundef signext -128, i8 noundef signext 127)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.m:                                             ; preds = %bb.h
  %i.fj = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfsEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fj, i16 noundef signext -32768, i16 noundef signext 32767)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.n:                                             ; preds = %bb.h
  %i.fk = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfiEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fk, i32 noundef -2147483648, i32 noundef 2147483647)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.o:                                             ; preds = %bb.h
  %i.fl = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfjEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fl, i32 noundef 0, i32 noundef -1)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.p:                                             ; preds = %bb.h
  %i.fm = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfxEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fm, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.q:                                             ; preds = %bb.h
  %i.fn = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfyEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fn, i64 noundef 0, i64 noundef -1)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.r:                                             ; preds = %bb.h
  %i.fo = sext i32 %4 to i64
  call void @_ZN11OpenImageIO4v3_112convert_typeIfdEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fo, double noundef f0x0010000000000000, double noundef f0x7FEFFFFFFFFFFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit: ; preds = %.lr.ph87.i.i, %.lr.ph74.i.i, %middle.block, %middle.block146, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.preheader.i.i55, %.preheader.i.i, %bb.r, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %middle.block146 ], [ true, %bb.q ], [ true, %.preheader.i.i ], [ true, %.preheader.i.i55 ], [ true, %middle.block ], [ true, %.lr.ph74.i.i ], [ true, %.lr.ph87.i.i ] ; 2 uses
  %.not.i66 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67: ; preds = %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.2) #40
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67, %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ %.0, %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit ], [ %.0, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67 ]
  ret i1 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_lll(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef %9, i64 %10, i64 noundef %11, i64 noundef %12, i64 noundef %13) local_unnamed_addr #2 {
bb.a:
  %14 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %15 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %16 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 7 uses
  %17 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  store i64 %5, ptr %16, align 8
  store i64 %10, ptr %17, align 8
  %i.a = trunc i64 %5 to i8
  %i.b = trunc i64 %10 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %i.d = lshr i64 %5, 8                           ; 3 uses
  %i.e = lshr i64 %10, 8                          ; 3 uses
  %i.f = lshr i64 %5, 16
  %i.g = trunc i64 %i.f to i8
  %i.h = lshr i64 %10, 16
  %i.i = trunc i64 %i.h to i8
  %i.j = lshr i64 %5, 32                          ; 2 uses
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.l = lshr i64 %10, 32                         ; 2 uses
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = trunc i64 %i.d to i8
  %i.o = trunc i64 %i.e to i8
  %i.p = icmp eq i8 %i.n, %i.o
  %or.cond = and i1 %i.c, %i.p
  %i.q = icmp eq i8 %i.g, %i.i
  %or.cond151 = and i1 %or.cond, %i.q
  %i.r = icmp eq i64 %i.j, %i.l
  %or.cond152 = and i1 %or.cond151, %i.r
  br i1 %or.cond152, label %bb.b, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.s = and i64 %i.d, 255
  %i.t = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %16) #39
  %i.u = sext i32 %0 to i64                       ; 2 uses
  %i.v = mul nsw i64 %i.s, %i.u
  %i.w = mul i64 %i.v, %i.t
  %i.x = mul i64 %i.w, %spec.select.i             ; 9 uses
  %i.y = icmp eq i64 %6, -9223372036854775808
  %i.z = srem i64 %i.x, %i.u
  %i.aa = sub nsw i64 %i.x, %i.z                  ; 2 uses
  %spec.select.i54 = select i1 %i.y, i64 %i.aa, i64 %6 ; 8 uses
  %i.ab = icmp eq i64 %7, -9223372036854775808
  %i.ac = sext i32 %1 to i64                      ; 3 uses
  %i.ad = mul nsw i64 %spec.select.i54, %i.ac
  %.058.i = select i1 %i.ab, i64 %i.ad, i64 %7    ; 5 uses
  %i.ae = icmp eq i64 %8, -9223372036854775808
  %i.af = sext i32 %2 to i64                      ; 2 uses
  %i.ag = mul nsw i64 %.058.i, %i.af
  %.057.i = select i1 %i.ae, i64 %i.ag, i64 %8    ; 2 uses
  %i.ah = icmp eq i64 %11, -9223372036854775808
  %.056.i = select i1 %i.ah, i64 %i.aa, i64 %11   ; 7 uses
  %i.ai = icmp eq i64 %12, -9223372036854775808
  %i.aj = mul nsw i64 %.056.i, %i.ac
  %.055.i = select i1 %i.ai, i64 %i.aj, i64 %12   ; 5 uses
  %i.ak = icmp eq i64 %13, -9223372036854775808
  %i.al = mul nsw i64 %.055.i, %i.af
  %.054.i = select i1 %i.ak, i64 %i.al, i64 %13   ; 2 uses
  %i.am = icmp eq i64 %spec.select.i54, %.056.i
  %i.an = icmp eq i64 %spec.select.i54, %i.x
  %i.ao = and i1 %i.am, %i.an
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.preheader61.lr.ph.i, label %_ZN11OpenImageIO4v3_110copy_imageEiiiiPKvllllPvlll.exit

.preheader61.lr.ph.i:                             ; preds = %bb.b
  %i.aq = icmp sgt i32 %2, 0
  %i.ar = icmp sgt i32 %1, 0
  %i.as = mul nsw i64 %i.x, %i.ac                 ; 3 uses
  br i1 %i.aq, label %.preheader61.lr.ph.split.i, label %_ZN11OpenImageIO4v3_110copy_imageEiiiiPKvllllPvlll.exit

.preheader61.lr.ph.split.i:                       ; preds = %.preheader61.lr.ph.i
  br i1 %i.ao, label %.preheader61.us.preheader.i, label %.preheader61.lr.ph.split.split.i

.preheader61.us.preheader.i:                      ; preds = %.preheader61.lr.ph.split.i
  %wide.trip.count87.i = zext nneg i32 %3 to i64
  %wide.trip.count82.i = zext nneg i32 %2 to i64  ; 2 uses
  %xtraiter163 = and i64 %wide.trip.count82.i, 1
  %i.at = icmp eq i32 %2, 1
  %unroll_iter167 = and i64 %wide.trip.count82.i, 2147483646
  %lcmp.mod165.not = icmp eq i64 %xtraiter163, 0
  %lcmp.mod166 = trunc i32 %2 to i1
  br label %.preheader61.us.i

.preheader61.us.i:                                ; preds = %._crit_edge.split.us.us.i, %.preheader61.us.preheader.i
  %indvars.iv84.i = phi i64 [ 0, %.preheader61.us.preheader.i ], [ %indvars.iv.next85.i, %._crit_edge.split.us.us.i ] ; 3 uses
  %i.au = mul nsw i64 %indvars.iv84.i, %.057.i
  %i.av = getelementptr i8, ptr %4, i64 %i.au     ; 3 uses
  %i.aw = mul nsw i64 %indvars.iv84.i, %.054.i
  %i.ax = getelementptr i8, ptr %9, i64 %i.aw     ; 3 uses
  br i1 %i.at, label %.epil.preheader162, label %.preheader61.us.i.new

.preheader61.us.i.new:                            ; preds = %.preheader61.us.i, %.preheader61.us.i.new
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.1, %.preheader61.us.i.new ], [ 0, %.preheader61.us.i ] ; 4 uses
  %niter168 = phi i64 [ %niter168.next.1, %.preheader61.us.i.new ], [ 0, %.preheader61.us.i ]
  %i.ay = mul nsw i64 %indvars.iv79.i, %.058.i
  %i.az = getelementptr i8, ptr %i.av, i64 %i.ay
  %i.ba = mul nsw i64 %indvars.iv79.i, %.055.i
  %i.bb = getelementptr i8, ptr %i.ax, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr readonly align 1 %i.az, i64 %i.as, i1 false)
  %indvars.iv.next80.i = or disjoint i64 %indvars.iv79.i, 1 ; 2 uses
  %i.bc = mul nsw i64 %indvars.iv.next80.i, %.058.i
  %i.bd = getelementptr i8, ptr %i.av, i64 %i.bc
  %i.be = mul nsw i64 %indvars.iv.next80.i, %.055.i
  %i.bf = getelementptr i8, ptr %i.ax, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr readonly align 1 %i.bd, i64 %i.as, i1 false)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %niter168.next.1 = add i64 %niter168, 2         ; 2 uses
  %niter168.ncmp.1 = icmp eq i64 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %._crit_edge.split.us.us.i.unr-lcssa, label %.preheader61.us.i.new, !llvm.loop !5

._crit_edge.split.us.us.i.unr-lcssa:              ; preds = %.preheader61.us.i.new
  br i1 %lcmp.mod165.not, label %._crit_edge.split.us.us.i, label %.epil.preheader162

.epil.preheader162:                               ; preds = %._crit_edge.split.us.us.i.unr-lcssa, %.preheader61.us.i
  %indvars.iv79.i.epil.init = phi i64 [ 0, %.preheader61.us.i ], [ %indvars.iv.next80.i.1, %._crit_edge.split.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod166)
  %i.bg = mul nsw i64 %indvars.iv79.i.epil.init, %.058.i
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bg
  %i.bi = mul nsw i64 %indvars.iv79.i.epil.init, %.055.i
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr readonly align 1 %i.bh, i64 %i.as, i1 false)
  br label %._crit_edge.split.us.us.i

._crit_edge.split.us.us.i:                        ; preds = %._crit_edge.split.us.us.i.unr-lcssa, %.epil.preheader162
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf:bb.a
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store float %i.ch, ptr %.07.i.i.i.i.i.i.i77, align 4, !tbaa !94
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1009

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !156

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load float, ptr %i.bq, align 4, !tbaa !94
  store float %i.ct, ptr %i.ce, align 4, !tbaa !94
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !156

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load float, ptr %1, align 4, !tbaa !94
  store float %i.cy, ptr %i.cu, align 4, !tbaa !94
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #40
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !62
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !97
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !63
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRKPKcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !102    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.151) #42
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #44 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !92     ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !56
  %.not.i28 = icmp eq ptr %i.r, null
  br i1 %.not.i28, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #39
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ 0, %_ZNKSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12_M_check_lenEmPKc.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !57
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ] ; 3 uses
  %i.v = load ptr, ptr %.01214.i.i.i.i.i, align 8, !tbaa !56
  store ptr %i.v, ptr %.015.i.i.i.i.i, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !57
  store i64 %i.y, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !44

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ], [ %i.aa, %.lr.ph.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not13.i.i.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i29, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i.i.i.i30
  %.015.i.i.i.i.i31 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i30 ], [ %i.ab, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.01214.i.i.i.i.i32 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i30 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %i.ac = load ptr, ptr %.01214.i.i.i.i.i32, align 8, !tbaa !56
  store ptr %i.ac, ptr %.015.i.i.i.i.i31, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i31, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i32, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !57
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i32, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i33, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i.i.i.i30, !llvm.loop !44

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit35: ; preds = %.lr.ph.i.i.i.i.i30, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i34 = phi ptr [ %i.ab, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ah, %.lr.ph.i.i.i.i.i30 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit35
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #40
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit35, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !102
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !103
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_112convert_typeIN9Imath_3_14halfEfEEvPKT_PT0_mS7_S7_(ptr noundef, ptr noundef, i64 noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIcfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %i.ck, %.lr.ph ] ; 5 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %i.cj, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.cf, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.055.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.165.prol = phi ptr [ %i.c, %.lr.ph66.prol ], [ %.0.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15464.prol = phi ptr [ %i.g, %.lr.ph66.prol ], [ %.053.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15663.prol = phi i64 [ %i.b, %.lr.ph66.prol ], [ %.055.lcssa, %.lr.ph66.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.b = add i64 %.15663.prol, -1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.165.prol, i64 1 ; 2 uses
  %i.d = load i8, ptr %.165.prol, align 1, !tbaa !68
  %i.e = sitofp i8 %i.d to float
  %i.f = fmul nnan float %i.e, f0x3C010204
  %i.g = getelementptr inbounds nuw i8, ptr %.15464.prol, i64 4 ; 2 uses
  store float %i.f, ptr %.15464.prol, align 4, !tbaa !94
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !1010

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.c, %.lr.ph66.prol ]
  %.15464.unr = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.g, %.lr.ph66.prol ]
  %.15663.unr = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.b, %.lr.ph66.prol ]
  %i.h = icmp ult i64 %.055.lcssa, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %i.cf, %.lr.ph ], [ %0, %bb.a ] ; 17 uses
  %.05358 = phi ptr [ %i.cj, %.lr.ph ], [ %1, %bb.a ] ; 17 uses
  %.05557 = phi i64 [ %i.ck, %.lr.ph ], [ %2, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.059, i64 1
  %i.j = load i8, ptr %.059, align 1, !tbaa !68
  %i.k = sitofp i8 %i.j to float
  %i.l = fmul nnan float %i.k, f0x3C010204
  %i.m = getelementptr inbounds nuw i8, ptr %.05358, i64 4
  store float %i.l, ptr %.05358, align 4, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %.059, i64 2
  %i.o = load i8, ptr %i.i, align 1, !tbaa !68
  %i.p = sitofp i8 %i.o to float
  %i.q = fmul nnan float %i.p, f0x3C010204
  %i.r = getelementptr inbounds nuw i8, ptr %.05358, i64 8
  store float %i.q, ptr %i.m, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %.059, i64 3
  %i.t = load i8, ptr %i.n, align 1, !tbaa !68
  %i.u = sitofp i8 %i.t to float
  %i.v = fmul nnan float %i.u, f0x3C010204
  %i.w = getelementptr inbounds nuw i8, ptr %.05358, i64 12
  store float %i.v, ptr %i.r, align 4, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %.059, i64 4
  %i.y = load i8, ptr %i.s, align 1, !tbaa !68
  %i.z = sitofp i8 %i.y to float
  %i.aa = fmul nnan float %i.z, f0x3C010204
  %i.ab = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  store float %i.aa, ptr %i.w, align 4, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %.059, i64 5
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !68
  %i.ae = sitofp i8 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x3C010204
  %i.ag = getelementptr inbounds nuw i8, ptr %.05358, i64 20
  store float %i.af, ptr %i.ab, align 4, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %.059, i64 6
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !68
  %i.aj = sitofp i8 %i.ai to float
  %i.ak = fmul nnan float %i.aj, f0x3C010204
  %i.al = getelementptr inbounds nuw i8, ptr %.05358, i64 24
  store float %i.ak, ptr %i.ag, align 4, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %.059, i64 7
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !68
  %i.ao = sitofp i8 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x3C010204
  %i.aq = getelementptr inbounds nuw i8, ptr %.05358, i64 28
  store float %i.ap, ptr %i.al, align 4, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.as = load i8, ptr %i.am, align 1, !tbaa !68
  %i.at = sitofp i8 %i.as to float
  %i.au = fmul nnan float %i.at, f0x3C010204
  %i.av = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  store float %i.au, ptr %i.aq, align 4, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %.059, i64 9
  %i.ax = load i8, ptr %i.ar, align 1, !tbaa !68
  %i.ay = sitofp i8 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x3C010204
  %i.ba = getelementptr inbounds nuw i8, ptr %.05358, i64 36
  store float %i.az, ptr %i.av, align 4, !tbaa !94
  %i.bb = getelementptr inbounds nuw i8, ptr %.059, i64 10
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !68
  %i.bd = sitofp i8 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x3C010204
  %i.bf = getelementptr inbounds nuw i8, ptr %.05358, i64 40
  store float %i.be, ptr %i.ba, align 4, !tbaa !94
  %i.bg = getelementptr inbounds nuw i8, ptr %.059, i64 11
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !68
  %i.bi = sitofp i8 %i.bh to float
  %i.bj = fmul nnan float %i.bi, f0x3C010204
  %i.bk = getelementptr inbounds nuw i8, ptr %.05358, i64 44
  store float %i.bj, ptr %i.bf, align 4, !tbaa !94
  %i.bl = getelementptr inbounds nuw i8, ptr %.059, i64 12
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !68
  %i.bn = sitofp i8 %i.bm to float
  %i.bo = fmul nnan float %i.bn, f0x3C010204
  %i.bp = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  store float %i.bo, ptr %i.bk, align 4, !tbaa !94
  %i.bq = getelementptr inbounds nuw i8, ptr %.059, i64 13
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !68
  %i.bs = sitofp i8 %i.br to float
  %i.bt = fmul nnan float %i.bs, f0x3C010204
  %i.bu = getelementptr inbounds nuw i8, ptr %.05358, i64 52
  store float %i.bt, ptr %i.bp, align 4, !tbaa !94
  %i.bv = getelementptr inbounds nuw i8, ptr %.059, i64 14
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !68
  %i.bx = sitofp i8 %i.bw to float
  %i.by = fmul nnan float %i.bx, f0x3C010204
  %i.bz = getelementptr inbounds nuw i8, ptr %.05358, i64 56
  store float %i.by, ptr %i.bu, align 4, !tbaa !94
  %i.ca = getelementptr inbounds nuw i8, ptr %.059, i64 15
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !68
  %i.cc = sitofp i8 %i.cb to float
  %i.cd = fmul nnan float %i.cc, f0x3C010204
  %i.ce = getelementptr inbounds nuw i8, ptr %.05358, i64 60
  store float %i.cd, ptr %i.bz, align 4, !tbaa !94
  %i.cf = getelementptr inbounds nuw i8, ptr %.059, i64 16 ; 2 uses
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !68
  %i.ch = sitofp i8 %i.cg to float
  %i.ci = fmul nnan float %i.ch, f0x3C010204
  %i.cj = getelementptr inbounds nuw i8, ptr %.05358, i64 64 ; 2 uses
  store float %i.ci, ptr %i.ce, align 4, !tbaa !94
  %i.ck = add i64 %.05557, -16                    ; 3 uses
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.lr.ph, label %.preheader, !llvm.loop !1011

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.dc, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15464 = phi ptr [ %i.dg, %.lr.ph66 ], [ %.15464.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15663 = phi i64 [ %i.db, %.lr.ph66 ], [ %.15663.unr, %.lr.ph66.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.165, i64 1
  %i.cn = load i8, ptr %.165, align 1, !tbaa !68
  %i.co = sitofp i8 %i.cn to float
  %i.cp = fmul nnan float %i.co, f0x3C010204
  %i.cq = getelementptr inbounds nuw i8, ptr %.15464, i64 4
  store float %i.cp, ptr %.15464, align 4, !tbaa !94
  %i.cr = getelementptr inbounds nuw i8, ptr %.165, i64 2
  %i.cs = load i8, ptr %i.cm, align 1, !tbaa !68
  %i.ct = sitofp i8 %i.cs to float
  %i.cu = fmul nnan float %i.ct, f0x3C010204
  %i.cv = getelementptr inbounds nuw i8, ptr %.15464, i64 8
  store float %i.cu, ptr %i.cq, align 4, !tbaa !94
  %i.cw = getelementptr inbounds nuw i8, ptr %.165, i64 3
  %i.cx = load i8, ptr %i.cr, align 1, !tbaa !68
  %i.cy = sitofp i8 %i.cx to float
  %i.cz = fmul nnan float %i.cy, f0x3C010204
  %i.da = getelementptr inbounds nuw i8, ptr %.15464, i64 12
  store float %i.cz, ptr %i.cv, align 4, !tbaa !94
  %i.db = add i64 %.15663, -4                     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.165, i64 4
  %i.dd = load i8, ptr %i.cw, align 1, !tbaa !68
  %i.de = sitofp i8 %i.dd to float
  %i.df = fmul nnan float %i.de, f0x3C010204
  %i.dg = getelementptr inbounds nuw i8, ptr %.15464, i64 16
  store float %i.df, ptr %i.da, align 4, !tbaa !94
  %.not.3 = icmp eq i64 %i.db, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph66, !llvm.loop !1012

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIsfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %2, -16                          ; 2 uses
  %i.c = lshr i64 %i.b, 4
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 48
  br i1 %min.iters.check, label %.lr.ph.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, 2305843009213693948      ; 5 uses
  %i.e = shl i64 %n.vec, 5
  %i.f = getelementptr i8, ptr %0, i64 %i.e       ; 2 uses
  %i.g = shl i64 %n.vec, 6
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 2 uses
  %i.i = shl i64 %n.vec, 4
  %i.j = sub i64 %2, %i.i                         ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 5                        ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.k  ; 16 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k       ; 16 uses
  %next.gep74 = getelementptr i8, ptr %i.l, i64 32
  %i.m = getelementptr i8, ptr %0, i64 %i.k       ; 16 uses
  %next.gep75 = getelementptr i8, ptr %i.m, i64 64
  %i.n = getelementptr i8, ptr %0, i64 %i.k       ; 16 uses
  %next.gep76 = getelementptr i8, ptr %i.n, i64 96
  %i.o = shl i64 %index, 6                        ; 4 uses
  %next.gep77 = getelementptr i8, ptr %1, i64 %i.o ; 16 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep78 = getelementptr i8, ptr %i.p, i64 64
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep79 = getelementptr i8, ptr %i.q, i64 128
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep80 = getelementptr i8, ptr %i.r, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.t = getelementptr i8, ptr %i.l, i64 34
  %i.u = getelementptr i8, ptr %i.m, i64 66
  %i.v = getelementptr i8, ptr %i.n, i64 98
  %i.w = load i16, ptr %next.gep, align 2, !tbaa !136
  %i.x = load i16, ptr %next.gep74, align 2, !tbaa !136
  %i.y = load i16, ptr %next.gep75, align 2, !tbaa !136
  %i.z = load i16, ptr %next.gep76, align 2, !tbaa !136
  %i.aa = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %i.ab = insertelement <4 x i16> %i.aa, i16 %i.x, i64 1
  %i.ac = insertelement <4 x i16> %i.ab, i16 %i.y, i64 2
  %i.ad = insertelement <4 x i16> %i.ac, i16 %i.z, i64 3
  %i.ae = sitofp <4 x i16> %i.ad to <4 x float>
  %i.af = fmul nnan <4 x float> %i.ae, splat (float f0x38000100) ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep77, i64 4
  %i.ah = extractelement <4 x float> %i.af, i64 0
  store float %i.ah, ptr %next.gep77, align 4, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aj = getelementptr i8, ptr %i.l, i64 36
  %i.ak = getelementptr i8, ptr %i.m, i64 68
  %i.al = getelementptr i8, ptr %i.n, i64 100
  %i.am = load i16, ptr %i.s, align 2, !tbaa !136
  %i.an = load i16, ptr %i.t, align 2, !tbaa !136
  %i.ao = load i16, ptr %i.u, align 2, !tbaa !136
  %i.ap = load i16, ptr %i.v, align 2, !tbaa !136
  %i.aq = insertelement <4 x i16> poison, i16 %i.am, i64 0
  %i.ar = insertelement <4 x i16> %i.aq, i16 %i.an, i64 1
  %i.as = insertelement <4 x i16> %i.ar, i16 %i.ao, i64 2
  %i.at = insertelement <4 x i16> %i.as, i16 %i.ap, i64 3
  %i.au = sitofp <4 x i16> %i.at to <4 x float>
  %i.av = fmul nnan <4 x float> %i.au, splat (float f0x38000100) ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep77, i64 8
  %i.ax = getelementptr i8, ptr %i.p, i64 72
  %i.ay = getelementptr i8, ptr %i.q, i64 136
  %i.az = getelementptr i8, ptr %i.r, i64 200
  %i.ba = extractelement <4 x float> %i.av, i64 0
  store float %i.ba, ptr %i.ag, align 4, !tbaa !94
  %i.bb = shufflevector <4 x float> %i.af, <4 x float> %i.av, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bb, ptr %next.gep78, align 4, !tbaa !94
  %i.bc = shufflevector <4 x float> %i.af, <4 x float> %i.av, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bc, ptr %next.gep79, align 4, !tbaa !94
  %i.bd = shufflevector <4 x float> %i.af, <4 x float> %i.av, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bd, ptr %next.gep80, align 4, !tbaa !94
  %i.be = getelementptr inbounds nuw i8, ptr %next.gep, i64 6
  %i.bf = getelementptr i8, ptr %i.l, i64 38
  %i.bg = getelementptr i8, ptr %i.m, i64 70
  %i.bh = getelementptr i8, ptr %i.n, i64 102
  %i.bi = load i16, ptr %i.ai, align 2, !tbaa !136
  %i.bj = load i16, ptr %i.aj, align 2, !tbaa !136
  %i.bk = load i16, ptr %i.ak, align 2, !tbaa !136
  %i.bl = load i16, ptr %i.al, align 2, !tbaa !136
  %i.bm = insertelement <4 x i16> poison, i16 %i.bi, i64 0
  %i.bn = insertelement <4 x i16> %i.bm, i16 %i.bj, i64 1
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bk, i64 2
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 3
  %i.bq = sitofp <4 x i16> %i.bp to <4 x float>
  %i.br = fmul nnan <4 x float> %i.bq, splat (float f0x38000100) ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %next.gep77, i64 12
  %i.bt = extractelement <4 x float> %i.br, i64 0
  store float %i.bt, ptr %i.aw, align 4, !tbaa !94
  %i.bu = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.bv = getelementptr i8, ptr %i.l, i64 40
  %i.bw = getelementptr i8, ptr %i.m, i64 72
  %i.bx = getelementptr i8, ptr %i.n, i64 104
  %i.by = load i16, ptr %i.be, align 2, !tbaa !136
  %i.bz = load i16, ptr %i.bf, align 2, !tbaa !136
  %i.ca = load i16, ptr %i.bg, align 2, !tbaa !136
  %i.cb = load i16, ptr %i.bh, align 2, !tbaa !136
  %i.cc = insertelement <4 x i16> poison, i16 %i.by, i64 0
  %i.cd = insertelement <4 x i16> %i.cc, i16 %i.bz, i64 1
  %i.ce = insertelement <4 x i16> %i.cd, i16 %i.ca, i64 2
  %i.cf = insertelement <4 x i16> %i.ce, i16 %i.cb, i64 3
  %i.cg = sitofp <4 x i16> %i.cf to <4 x float>
  %i.ch = fmul nnan <4 x float> %i.cg, splat (float f0x38000100) ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep77, i64 16
  %i.cj = getelementptr i8, ptr %i.p, i64 80
  %i.ck = getelementptr i8, ptr %i.q, i64 144
  %i.cl = getelementptr i8, ptr %i.r, i64 208
  %i.cm = extractelement <4 x float> %i.ch, i64 0
  store float %i.cm, ptr %i.bs, align 4, !tbaa !94
  %i.cn = shufflevector <4 x float> %i.br, <4 x float> %i.ch, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cn, ptr %i.ax, align 4, !tbaa !94
  %i.co = shufflevector <4 x float> %i.br, <4 x float> %i.ch, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.co, ptr %i.ay, align 4, !tbaa !94
  %i.cp = shufflevector <4 x float> %i.br, <4 x float> %i.ch, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cp, ptr %i.az, align 4, !tbaa !94
  %i.cq = getelementptr inbounds nuw i8, ptr %next.gep, i64 10
  %i.cr = getelementptr i8, ptr %i.l, i64 42
  %i.cs = getelementptr i8, ptr %i.m, i64 74
  %i.ct = getelementptr i8, ptr %i.n, i64 106
  %i.cu = load i16, ptr %i.bu, align 2, !tbaa !136
  %i.cv = load i16, ptr %i.bv, align 2, !tbaa !136
  %i.cw = load i16, ptr %i.bw, align 2, !tbaa !136
  %i.cx = load i16, ptr %i.bx, align 2, !tbaa !136
  %i.cy = insertelement <4 x i16> poison, i16 %i.cu, i64 0
  %i.cz = insertelement <4 x i16> %i.cy, i16 %i.cv, i64 1
  %i.da = insertelement <4 x i16> %i.cz, i16 %i.cw, i64 2
  %i.db = insertelement <4 x i16> %i.da, i16 %i.cx, i64 3
  %i.dc = sitofp <4 x i16> %i.db to <4 x float>
  %i.dd = fmul nnan <4 x float> %i.dc, splat (float f0x38000100) ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %next.gep77, i64 20
  %i.df = extractelement <4 x float> %i.dd, i64 0
  store float %i.df, ptr %i.ci, align 4, !tbaa !94
  %i.dg = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.dh = getelementptr i8, ptr %i.l, i64 44
  %i.di = getelementptr i8, ptr %i.m, i64 76
  %i.dj = getelementptr i8, ptr %i.n, i64 108
  %i.dk = load i16, ptr %i.cq, align 2, !tbaa !136
  %i.dl = load i16, ptr %i.cr, align 2, !tbaa !136
  %i.dm = load i16, ptr %i.cs, align 2, !tbaa !136
  %i.dn = load i16, ptr %i.ct, align 2, !tbaa !136
  %i.do = insertelement <4 x i16> poison, i16 %i.dk, i64 0
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.dl, i64 1
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.dm, i64 2
  %i.dr = insertelement <4 x i16> %i.dq, i16 %i.dn, i64 3
  %i.ds = sitofp <4 x i16> %i.dr to <4 x float>
  %i.dt = fmul nnan <4 x float> %i.ds, splat (float f0x38000100) ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %next.gep77, i64 24
  %i.dv = getelementptr i8, ptr %i.p, i64 88
  %i.dw = getelementptr i8, ptr %i.q, i64 152
  %i.dx = getelementptr i8, ptr %i.r, i64 216
  %i.dy = extractelement <4 x float> %i.dt, i64 0
  store float %i.dy, ptr %i.de, align 4, !tbaa !94
  %i.dz = shufflevector <4 x float> %i.dd, <4 x float> %i.dt, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.dz, ptr %i.cj, align 4, !tbaa !94
  %i.ea = shufflevector <4 x float> %i.dd, <4 x float> %i.dt, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ea, ptr %i.ck, align 4, !tbaa !94
  %i.eb = shufflevector <4 x float> %i.dd, <4 x float> %i.dt, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.eb, ptr %i.cl, align 4, !tbaa !94
  %i.ec = getelementptr inbounds nuw i8, ptr %next.gep, i64 14
  %i.ed = getelementptr i8, ptr %i.l, i64 46
  %i.ee = getelementptr i8, ptr %i.m, i64 78
  %i.ef = getelementptr i8, ptr %i.n, i64 110
  %i.eg = load i16, ptr %i.dg, align 2, !tbaa !136
  %i.eh = load i16, ptr %i.dh, align 2, !tbaa !136
  %i.ei = load i16, ptr %i.di, align 2, !tbaa !136
  %i.ej = load i16, ptr %i.dj, align 2, !tbaa !136
  %i.ek = insertelement <4 x i16> poison, i16 %i.eg, i64 0
  %i.el = insertelement <4 x i16> %i.ek, i16 %i.eh, i64 1
  %i.em = insertelement <4 x i16> %i.el, i16 %i.ei, i64 2
  %i.en = insertelement <4 x i16> %i.em, i16 %i.ej, i64 3
  %i.eo = sitofp <4 x i16> %i.en to <4 x float>
  %i.ep = fmul nnan <4 x float> %i.eo, splat (float f0x38000100) ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %next.gep77, i64 28
  %i.er = extractelement <4 x float> %i.ep, i64 0
  store float %i.er, ptr %i.du, align 4, !tbaa !94
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_112convert_typeIsfEEvPKT_PT0_mS5_S5_:bb.a
  %i.hu = load i16, ptr %i.ha, align 2, !tbaa !136
  %i.hv = load i16, ptr %i.hb, align 2, !tbaa !136
  %i.hw = load i16, ptr %i.hc, align 2, !tbaa !136
  %i.hx = load i16, ptr %i.hd, align 2, !tbaa !136
  %i.hy = insertelement <4 x i16> poison, i16 %i.hu, i64 0
  %i.hz = insertelement <4 x i16> %i.hy, i16 %i.hv, i64 1
  %i.ia = insertelement <4 x i16> %i.hz, i16 %i.hw, i64 2
  %i.ib = insertelement <4 x i16> %i.ia, i16 %i.hx, i64 3
  %i.ic = sitofp <4 x i16> %i.ib to <4 x float>
  %i.id = fmul nnan <4 x float> %i.ic, splat (float f0x38000100) ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %next.gep77, i64 48
  %i.if = getelementptr i8, ptr %i.p, i64 112
  %i.ig = getelementptr i8, ptr %i.q, i64 176
  %i.ih = getelementptr i8, ptr %i.r, i64 240
  %i.ii = extractelement <4 x float> %i.id, i64 0
  store float %i.ii, ptr %i.ho, align 4, !tbaa !94
  %i.ij = shufflevector <4 x float> %i.hn, <4 x float> %i.id, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ij, ptr %i.gt, align 4, !tbaa !94
  %i.ik = shufflevector <4 x float> %i.hn, <4 x float> %i.id, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ik, ptr %i.gu, align 4, !tbaa !94
  %i.il = shufflevector <4 x float> %i.hn, <4 x float> %i.id, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.il, ptr %i.gv, align 4, !tbaa !94
  %i.im = getelementptr inbounds nuw i8, ptr %next.gep, i64 26
  %i.in = getelementptr i8, ptr %i.l, i64 58
  %i.io = getelementptr i8, ptr %i.m, i64 90
  %i.ip = getelementptr i8, ptr %i.n, i64 122
  %i.iq = load i16, ptr %i.hq, align 2, !tbaa !136
  %i.ir = load i16, ptr %i.hr, align 2, !tbaa !136
  %i.is = load i16, ptr %i.hs, align 2, !tbaa !136
  %i.it = load i16, ptr %i.ht, align 2, !tbaa !136
  %i.iu = insertelement <4 x i16> poison, i16 %i.iq, i64 0
  %i.iv = insertelement <4 x i16> %i.iu, i16 %i.ir, i64 1
  %i.iw = insertelement <4 x i16> %i.iv, i16 %i.is, i64 2
  %i.ix = insertelement <4 x i16> %i.iw, i16 %i.it, i64 3
  %i.iy = sitofp <4 x i16> %i.ix to <4 x float>
  %i.iz = fmul nnan <4 x float> %i.iy, splat (float f0x38000100) ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %next.gep77, i64 52
  %i.jb = extractelement <4 x float> %i.iz, i64 0
  store float %i.jb, ptr %i.ie, align 4, !tbaa !94
  %i.jc = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.jd = getelementptr i8, ptr %i.l, i64 60
  %i.je = getelementptr i8, ptr %i.m, i64 92
  %i.jf = getelementptr i8, ptr %i.n, i64 124
  %i.jg = load i16, ptr %i.im, align 2, !tbaa !136
  %i.jh = load i16, ptr %i.in, align 2, !tbaa !136
  %i.ji = load i16, ptr %i.io, align 2, !tbaa !136
  %i.jj = load i16, ptr %i.ip, align 2, !tbaa !136
  %i.jk = insertelement <4 x i16> poison, i16 %i.jg, i64 0
  %i.jl = insertelement <4 x i16> %i.jk, i16 %i.jh, i64 1
  %i.jm = insertelement <4 x i16> %i.jl, i16 %i.ji, i64 2
  %i.jn = insertelement <4 x i16> %i.jm, i16 %i.jj, i64 3
  %i.jo = sitofp <4 x i16> %i.jn to <4 x float>
  %i.jp = fmul nnan <4 x float> %i.jo, splat (float f0x38000100) ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep77, i64 56
  %i.jr = getelementptr i8, ptr %i.p, i64 120
  %i.js = getelementptr i8, ptr %i.q, i64 184
  %i.jt = getelementptr i8, ptr %i.r, i64 248
  %i.ju = extractelement <4 x float> %i.jp, i64 0
  store float %i.ju, ptr %i.ja, align 4, !tbaa !94
  %i.jv = shufflevector <4 x float> %i.iz, <4 x float> %i.jp, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.jv, ptr %i.if, align 4, !tbaa !94
  %i.jw = shufflevector <4 x float> %i.iz, <4 x float> %i.jp, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.jw, ptr %i.ig, align 4, !tbaa !94
  %i.jx = shufflevector <4 x float> %i.iz, <4 x float> %i.jp, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.jx, ptr %i.ih, align 4, !tbaa !94
  %i.jy = getelementptr inbounds nuw i8, ptr %next.gep, i64 30
  %i.jz = getelementptr i8, ptr %i.l, i64 62
  %i.ka = getelementptr i8, ptr %i.m, i64 94
  %i.kb = getelementptr i8, ptr %i.n, i64 126
  %i.kc = load i16, ptr %i.jc, align 2, !tbaa !136
  %i.kd = load i16, ptr %i.jd, align 2, !tbaa !136
  %i.ke = load i16, ptr %i.je, align 2, !tbaa !136
  %i.kf = load i16, ptr %i.jf, align 2, !tbaa !136
  %i.kg = insertelement <4 x i16> poison, i16 %i.kc, i64 0
  %i.kh = insertelement <4 x i16> %i.kg, i16 %i.kd, i64 1
  %i.ki = insertelement <4 x i16> %i.kh, i16 %i.ke, i64 2
  %i.kj = insertelement <4 x i16> %i.ki, i16 %i.kf, i64 3
  %i.kk = sitofp <4 x i16> %i.kj to <4 x float>
  %i.kl = fmul nnan <4 x float> %i.kk, splat (float f0x38000100) ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %next.gep77, i64 60
  %i.kn = extractelement <4 x float> %i.kl, i64 0
  store float %i.kn, ptr %i.jq, align 4, !tbaa !94
  %i.ko = load i16, ptr %i.jy, align 2, !tbaa !136
  %i.kp = load i16, ptr %i.jz, align 2, !tbaa !136
  %i.kq = load i16, ptr %i.ka, align 2, !tbaa !136
  %i.kr = load i16, ptr %i.kb, align 2, !tbaa !136
  %i.ks = insertelement <4 x i16> poison, i16 %i.ko, i64 0
  %i.kt = insertelement <4 x i16> %i.ks, i16 %i.kp, i64 1
  %i.ku = insertelement <4 x i16> %i.kt, i16 %i.kq, i64 2
  %i.kv = insertelement <4 x i16> %i.ku, i16 %i.kr, i64 3
  %i.kw = sitofp <4 x i16> %i.kv to <4 x float>
  %i.kx = fmul nnan <4 x float> %i.kw, splat (float f0x38000100) ; 4 uses
  %i.ky = extractelement <4 x float> %i.kx, i64 0
  store float %i.ky, ptr %i.km, align 4, !tbaa !94
  %i.kz = shufflevector <4 x float> %i.kl, <4 x float> %i.kx, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.kz, ptr %i.jr, align 4, !tbaa !94
  %i.la = shufflevector <4 x float> %i.kl, <4 x float> %i.kx, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.la, ptr %i.js, align 4, !tbaa !94
  %i.lb = shufflevector <4 x float> %i.kl, <4 x float> %i.kx, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.lb, ptr %i.jt, align 4, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lc = icmp eq i64 %index.next, %n.vec
  br i1 %i.lc, label %middle.block, label %vector.body, !llvm.loop !1013

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader99

.lr.ph.preheader99:                               ; preds = %.lr.ph.preheader, %middle.block
  %.059.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.05358.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  %.05557.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %i.j, %middle.block ], [ %i.ml, %.lr.ph ] ; 6 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %i.h, %middle.block ], [ %i.mh, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %middle.block ], [ %i.mg, %.lr.ph ] ; 3 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %min.iters.check84 = icmp ult i64 %.055.lcssa, 8
  br i1 %min.iters.check84, label %.lr.ph66.preheader98, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph66.preheader
  %n.vec86 = and i64 %.055.lcssa, -8              ; 4 uses
  %i.ld = shl i64 %n.vec86, 1
  %i.le = getelementptr i8, ptr %.0.lcssa, i64 %i.ld
  %i.lf = shl i64 %n.vec86, 2
  %i.lg = getelementptr i8, ptr %.053.lcssa, i64 %i.lf
  %i.lh = and i64 %.055.lcssa, 7
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next92, %vector.body87 ] ; 3 uses
  %i.li = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %.0.lcssa, i64 %i.li ; 2 uses
  %i.lj = shl i64 %index88, 2
  %next.gep90 = getelementptr i8, ptr %.053.lcssa, i64 %i.lj ; 2 uses
  %i.lk = getelementptr i8, ptr %next.gep89, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep89, align 2, !tbaa !136
  %wide.load91 = load <4 x i16>, ptr %i.lk, align 2, !tbaa !136
  %i.ll = sitofp <4 x i16> %wide.load to <4 x float>
  %i.lm = sitofp <4 x i16> %wide.load91 to <4 x float>
  %i.ln = fmul nnan <4 x float> %i.ll, splat (float f0x38000100)
  %i.lo = fmul nnan <4 x float> %i.lm, splat (float f0x38000100)
  %i.lp = getelementptr i8, ptr %next.gep90, i64 16
  store <4 x float> %i.ln, ptr %next.gep90, align 4, !tbaa !94
  store <4 x float> %i.lo, ptr %i.lp, align 4, !tbaa !94
  %index.next92 = add nuw i64 %index88, 8         ; 2 uses
  %i.lq = icmp eq i64 %index.next92, %n.vec86
  br i1 %i.lq, label %middle.block93, label %vector.body87, !llvm.loop !1014

middle.block93:                                   ; preds = %vector.body87
  %cmp.n94 = icmp eq i64 %.055.lcssa, %n.vec86
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph66.preheader98

.lr.ph66.preheader98:                             ; preds = %.lr.ph66.preheader, %middle.block93
  %.165.ph = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.le, %middle.block93 ]
  %.15464.ph = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.lg, %middle.block93 ]
  %.15663.ph = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.lh, %middle.block93 ]
  br label %.lr.ph66

.lr.ph:                                           ; preds = %.lr.ph.preheader99, %.lr.ph
  %.059 = phi ptr [ %i.mg, %.lr.ph ], [ %.059.ph, %.lr.ph.preheader99 ] ; 5 uses
  %.05358 = phi ptr [ %i.mh, %.lr.ph ], [ %.05358.ph, %.lr.ph.preheader99 ] ; 5 uses
  %.05557 = phi i64 [ %i.ml, %.lr.ph ], [ %.05557.ph, %.lr.ph.preheader99 ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  %i.lt = load <4 x i16>, ptr %.059, align 2, !tbaa !136
  %i.lu = sitofp <4 x i16> %i.lt to <4 x float>
  %i.lv = fmul nnan <4 x float> %i.lu, splat (float f0x38000100)
  store <4 x float> %i.lv, ptr %.05358, align 4, !tbaa !94
  %i.lw = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.lx = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  %i.ly = load <4 x i16>, ptr %i.lr, align 2, !tbaa !136
  %i.lz = sitofp <4 x i16> %i.ly to <4 x float>
  %i.ma = fmul nnan <4 x float> %i.lz, splat (float f0x38000100)
  store <4 x float> %i.ma, ptr %i.ls, align 4, !tbaa !94
  %i.mb = getelementptr inbounds nuw i8, ptr %.059, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  %i.md = load <4 x i16>, ptr %i.lw, align 2, !tbaa !136
  %i.me = sitofp <4 x i16> %i.md to <4 x float>
  %i.mf = fmul nnan <4 x float> %i.me, splat (float f0x38000100)
  store <4 x float> %i.mf, ptr %i.lx, align 4, !tbaa !94
  %i.mg = getelementptr inbounds nuw i8, ptr %.059, i64 32 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.05358, i64 64 ; 2 uses
  %i.mi = load <4 x i16>, ptr %i.mb, align 2, !tbaa !136
  %i.mj = sitofp <4 x i16> %i.mi to <4 x float>
  %i.mk = fmul nnan <4 x float> %i.mj, splat (float f0x38000100)
  store <4 x float> %i.mk, ptr %i.mc, align 4, !tbaa !94
  %i.ml = add i64 %.05557, -16                    ; 3 uses
  %i.mm = icmp ugt i64 %i.ml, 15
  br i1 %i.mm, label %.lr.ph, label %.preheader, !llvm.loop !1015

.lr.ph66:                                         ; preds = %.lr.ph66.preheader98, %.lr.ph66
  %.165 = phi ptr [ %i.mo, %.lr.ph66 ], [ %.165.ph, %.lr.ph66.preheader98 ] ; 2 uses
  %.15464 = phi ptr [ %i.ms, %.lr.ph66 ], [ %.15464.ph, %.lr.ph66.preheader98 ] ; 2 uses
  %.15663 = phi i64 [ %i.mn, %.lr.ph66 ], [ %.15663.ph, %.lr.ph66.preheader98 ]
  %i.mn = add i64 %.15663, -1                     ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.165, i64 2
  %i.mp = load i16, ptr %.165, align 2, !tbaa !136
  %i.mq = sitofp i16 %i.mp to float
  %i.mr = fmul nnan float %i.mq, f0x38000100
  %i.ms = getelementptr inbounds nuw i8, ptr %.15464, i64 4
  store float %i.mr, ptr %.15464, align 4, !tbaa !94
  %.not = icmp eq i64 %i.mn, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph66, !llvm.loop !1016

._crit_edge:                                      ; preds = %.lr.ph66, %middle.block93, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIifEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.055.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.165.prol = phi ptr [ %i.c, %.lr.ph66.prol ], [ %.0.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15464.prol = phi ptr [ %i.g, %.lr.ph66.prol ], [ %.053.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15663.prol = phi i64 [ %i.b, %.lr.ph66.prol ], [ %.055.lcssa, %.lr.ph66.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.b = add i64 %.15663.prol, -1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.165.prol, i64 4 ; 2 uses
  %i.d = load i32, ptr %.165.prol, align 4, !tbaa !51
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul nnan float %i.e, f0x30000000
  %i.g = getelementptr inbounds nuw i8, ptr %.15464.prol, i64 4 ; 2 uses
  store float %i.f, ptr %.15464.prol, align 4, !tbaa !94
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !1017

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.c, %.lr.ph66.prol ]
  %.15464.unr = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.g, %.lr.ph66.prol ]
  %.15663.unr = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.b, %.lr.ph66.prol ]
  %i.h = icmp ult i64 %.055.lcssa, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %i.x, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.05358 = phi ptr [ %i.y, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.05557 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  %i.k = load <4 x i32>, ptr %.059, align 4, !tbaa !51
  %i.l = sitofp <4 x i32> %i.k to <4 x float>
  %i.m = fmul nnan <4 x float> %i.l, splat (float f0x30000000)
  store <4 x float> %i.m, ptr %.05358, align 4, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  %i.p = load <4 x i32>, ptr %i.i, align 4, !tbaa !51
  %i.q = sitofp <4 x i32> %i.p to <4 x float>
  %i.r = fmul nnan <4 x float> %i.q, splat (float f0x30000000)
  store <4 x float> %i.r, ptr %i.j, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %.059, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  %i.u = load <4 x i32>, ptr %i.n, align 4, !tbaa !51
  %i.v = sitofp <4 x i32> %i.u to <4 x float>
  %i.w = fmul nnan <4 x float> %i.v, splat (float f0x30000000)
  store <4 x float> %i.w, ptr %i.o, align 4, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05358, i64 64 ; 2 uses
  %i.z = load <4 x i32>, ptr %i.s, align 4, !tbaa !51
  %i.aa = sitofp <4 x i32> %i.z to <4 x float>
  %i.ab = fmul nnan <4 x float> %i.aa, splat (float f0x30000000)
  store <4 x float> %i.ab, ptr %i.t, align 4, !tbaa !94
  %i.ac = add i64 %.05557, -16                    ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.lr.ph, label %.preheader, !llvm.loop !1018

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.au, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15464 = phi ptr [ %i.ay, %.lr.ph66 ], [ %.15464.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15663 = phi i64 [ %i.at, %.lr.ph66 ], [ %.15663.unr, %.lr.ph66.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.165, i64 4
  %i.af = load i32, ptr %.165, align 4, !tbaa !51
  %i.ag = sitofp i32 %i.af to float
  %i.ah = fmul nnan float %i.ag, f0x30000000
  %i.ai = getelementptr inbounds nuw i8, ptr %.15464, i64 4
  store float %i.ah, ptr %.15464, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.al = sitofp i32 %i.ak to float
  %i.am = fmul nnan float %i.al, f0x30000000
  %i.an = getelementptr inbounds nuw i8, ptr %.15464, i64 8
  store float %i.am, ptr %i.ai, align 4, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %.165, i64 12
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !51
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x30000000
  %i.as = getelementptr inbounds nuw i8, ptr %.15464, i64 12
  store float %i.ar, ptr %i.an, align 4, !tbaa !94
  %i.at = add i64 %.15663, -4                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.165, i64 16
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aw = sitofp i32 %i.av to float
  %i.ax = fmul nnan float %i.aw, f0x30000000
  %i.ay = getelementptr inbounds nuw i8, ptr %.15464, i64 16
  store float %i.ax, ptr %i.as, align 4, !tbaa !94
  %.not.3 = icmp eq i64 %i.at, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph66, !llvm.loop !1019

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIjfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.055.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.165.prol = phi ptr [ %i.c, %.lr.ph66.prol ], [ %.0.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15464.prol = phi ptr [ %i.g, %.lr.ph66.prol ], [ %.053.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15663.prol = phi i64 [ %i.b, %.lr.ph66.prol ], [ %.055.lcssa, %.lr.ph66.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.b = add i64 %.15663.prol, -1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.165.prol, i64 4 ; 2 uses
  %i.d = load i32, ptr %.165.prol, align 4, !tbaa !51
  %i.e = uitofp i32 %i.d to float
  %i.f = fmul nnan float %i.e, f0x2F800000
  %i.g = getelementptr inbounds nuw i8, ptr %.15464.prol, i64 4 ; 2 uses
  store float %i.f, ptr %.15464.prol, align 4, !tbaa !94
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !1020

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.c, %.lr.ph66.prol ]
  %.15464.unr = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.g, %.lr.ph66.prol ]
  %.15663.unr = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.b, %.lr.ph66.prol ]
  %i.h = icmp ult i64 %.055.lcssa, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %i.x, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.05358 = phi ptr [ %i.y, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.05557 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  %i.k = load <4 x i32>, ptr %.059, align 4, !tbaa !51
  %i.l = uitofp <4 x i32> %i.k to <4 x float>
  %i.m = fmul nnan <4 x float> %i.l, splat (float f0x2F800000)
  store <4 x float> %i.m, ptr %.05358, align 4, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  %i.p = load <4 x i32>, ptr %i.i, align 4, !tbaa !51
  %i.q = uitofp <4 x i32> %i.p to <4 x float>
  %i.r = fmul nnan <4 x float> %i.q, splat (float f0x2F800000)
  store <4 x float> %i.r, ptr %i.j, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %.059, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  %i.u = load <4 x i32>, ptr %i.n, align 4, !tbaa !51
  %i.v = uitofp <4 x i32> %i.u to <4 x float>
  %i.w = fmul nnan <4 x float> %i.v, splat (float f0x2F800000)
  store <4 x float> %i.w, ptr %i.o, align 4, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05358, i64 64 ; 2 uses
  %i.z = load <4 x i32>, ptr %i.s, align 4, !tbaa !51
  %i.aa = uitofp <4 x i32> %i.z to <4 x float>
  %i.ab = fmul nnan <4 x float> %i.aa, splat (float f0x2F800000)
  store <4 x float> %i.ab, ptr %i.t, align 4, !tbaa !94
  %i.ac = add i64 %.05557, -16                    ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.lr.ph, label %.preheader, !llvm.loop !1021

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.au, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15464 = phi ptr [ %i.ay, %.lr.ph66 ], [ %.15464.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15663 = phi i64 [ %i.at, %.lr.ph66 ], [ %.15663.unr, %.lr.ph66.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.165, i64 4
  %i.af = load i32, ptr %.165, align 4, !tbaa !51
  %i.ag = uitofp i32 %i.af to float
  %i.ah = fmul nnan float %i.ag, f0x2F800000
  %i.ai = getelementptr inbounds nuw i8, ptr %.15464, i64 4
  store float %i.ah, ptr %.15464, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.al = uitofp i32 %i.ak to float
  %i.am = fmul nnan float %i.al, f0x2F800000
  %i.an = getelementptr inbounds nuw i8, ptr %.15464, i64 8
  store float %i.am, ptr %i.ai, align 4, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %.165, i64 12
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !51
  %i.aq = uitofp i32 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x2F800000
  %i.as = getelementptr inbounds nuw i8, ptr %.15464, i64 12
  store float %i.ar, ptr %i.an, align 4, !tbaa !94
  %i.at = add i64 %.15663, -4                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.165, i64 16
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aw = uitofp i32 %i.av to float
  %i.ax = fmul nnan float %i.aw, f0x2F800000
  %i.ay = getelementptr inbounds nuw i8, ptr %.15464, i64 16
  store float %i.ax, ptr %i.as, align 4, !tbaa !94
  %.not.3 = icmp eq i64 %i.at, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph66, !llvm.loop !1022

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIxfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.055.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.165.prol = phi ptr [ %i.c, %.lr.ph66.prol ], [ %.0.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15464.prol = phi ptr [ %i.g, %.lr.ph66.prol ], [ %.053.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15663.prol = phi i64 [ %i.b, %.lr.ph66.prol ], [ %.055.lcssa, %.lr.ph66.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.b = add i64 %.15663.prol, -1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.165.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %.165.prol, align 8, !tbaa !106
  %i.e = sitofp i64 %i.d to float
  %i.f = fmul nnan float %i.e, f0x20000000
  %i.g = getelementptr inbounds nuw i8, ptr %.15464.prol, i64 4 ; 2 uses
  store float %i.f, ptr %.15464.prol, align 4, !tbaa !94
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !1023

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.c, %.lr.ph66.prol ]
  %.15464.unr = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.g, %.lr.ph66.prol ]
  %.15663.unr = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.b, %.lr.ph66.prol ]
  %i.h = icmp ult i64 %.055.lcssa, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %i.x, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.05358 = phi ptr [ %i.y, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.05557 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  %i.k = load <4 x i64>, ptr %.059, align 8, !tbaa !106
  %i.l = sitofp <4 x i64> %i.k to <4 x float>
  %i.m = fmul nnan <4 x float> %i.l, splat (float f0x20000000)
  store <4 x float> %i.m, ptr %.05358, align 4, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %.059, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  %i.p = load <4 x i64>, ptr %i.i, align 8, !tbaa !106
  %i.q = sitofp <4 x i64> %i.p to <4 x float>
  %i.r = fmul nnan <4 x float> %i.q, splat (float f0x20000000)
  store <4 x float> %i.r, ptr %i.j, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %.059, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  %i.u = load <4 x i64>, ptr %i.n, align 8, !tbaa !106
  %i.v = sitofp <4 x i64> %i.u to <4 x float>
  %i.w = fmul nnan <4 x float> %i.v, splat (float f0x20000000)
  store <4 x float> %i.w, ptr %i.o, align 4, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %.059, i64 128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05358, i64 64 ; 2 uses
  %i.z = load <4 x i64>, ptr %i.s, align 8, !tbaa !106
  %i.aa = sitofp <4 x i64> %i.z to <4 x float>
  %i.ab = fmul nnan <4 x float> %i.aa, splat (float f0x20000000)
  store <4 x float> %i.ab, ptr %i.t, align 4, !tbaa !94
  %i.ac = add i64 %.05557, -16                    ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.lr.ph, label %.preheader, !llvm.loop !1024

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.au, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15464 = phi ptr [ %i.ay, %.lr.ph66 ], [ %.15464.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15663 = phi i64 [ %i.at, %.lr.ph66 ], [ %.15663.unr, %.lr.ph66.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %i.af = load i64, ptr %.165, align 8, !tbaa !106
  %i.ag = sitofp i64 %i.af to float
  %i.ah = fmul nnan float %i.ag, f0x20000000
  %i.ai = getelementptr inbounds nuw i8, ptr %.15464, i64 4
  store float %i.ah, ptr %.15464, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %.165, i64 16
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !106
  %i.al = sitofp i64 %i.ak to float
  %i.am = fmul nnan float %i.al, f0x20000000
  %i.an = getelementptr inbounds nuw i8, ptr %.15464, i64 8
  store float %i.am, ptr %i.ai, align 4, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %.165, i64 24
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.aq = sitofp i64 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x20000000
  %i.as = getelementptr inbounds nuw i8, ptr %.15464, i64 12
  store float %i.ar, ptr %i.an, align 4, !tbaa !94
  %i.at = add i64 %.15663, -4                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.165, i64 32
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !106
  %i.aw = sitofp i64 %i.av to float
  %i.ax = fmul nnan float %i.aw, f0x20000000
  %i.ay = getelementptr inbounds nuw i8, ptr %.15464, i64 16
  store float %i.ax, ptr %i.as, align 4, !tbaa !94
  %.not.3 = icmp eq i64 %i.at, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph66, !llvm.loop !1025

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIyfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.055.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.165.prol = phi ptr [ %i.c, %.lr.ph66.prol ], [ %.0.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15464.prol = phi ptr [ %i.g, %.lr.ph66.prol ], [ %.053.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15663.prol = phi i64 [ %i.b, %.lr.ph66.prol ], [ %.055.lcssa, %.lr.ph66.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.b = add i64 %.15663.prol, -1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.165.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %.165.prol, align 8, !tbaa !106
  %i.e = uitofp i64 %i.d to float
  %i.f = fmul nnan float %i.e, f0x1F800000
  %i.g = getelementptr inbounds nuw i8, ptr %.15464.prol, i64 4 ; 2 uses
  store float %i.f, ptr %.15464.prol, align 4, !tbaa !94
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !1026

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.c, %.lr.ph66.prol ]
  %.15464.unr = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.g, %.lr.ph66.prol ]
  %.15663.unr = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.b, %.lr.ph66.prol ]
  %i.h = icmp ult i64 %.055.lcssa, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %i.x, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.05358 = phi ptr [ %i.y, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.05557 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  %i.k = load <4 x i64>, ptr %.059, align 8, !tbaa !106
  %i.l = uitofp <4 x i64> %i.k to <4 x float>
  %i.m = fmul nnan <4 x float> %i.l, splat (float f0x1F800000)
  store <4 x float> %i.m, ptr %.05358, align 4, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %.059, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  %i.p = load <4 x i64>, ptr %i.i, align 8, !tbaa !106
  %i.q = uitofp <4 x i64> %i.p to <4 x float>
  %i.r = fmul nnan <4 x float> %i.q, splat (float f0x1F800000)
  store <4 x float> %i.r, ptr %i.j, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %.059, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  %i.u = load <4 x i64>, ptr %i.n, align 8, !tbaa !106
  %i.v = uitofp <4 x i64> %i.u to <4 x float>
  %i.w = fmul nnan <4 x float> %i.v, splat (float f0x1F800000)
  store <4 x float> %i.w, ptr %i.o, align 4, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %.059, i64 128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05358, i64 64 ; 2 uses
  %i.z = load <4 x i64>, ptr %i.s, align 8, !tbaa !106
  %i.aa = uitofp <4 x i64> %i.z to <4 x float>
  %i.ab = fmul nnan <4 x float> %i.aa, splat (float f0x1F800000)
  store <4 x float> %i.ab, ptr %i.t, align 4, !tbaa !94
  %i.ac = add i64 %.05557, -16                    ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.lr.ph, label %.preheader, !llvm.loop !1027

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.au, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15464 = phi ptr [ %i.ay, %.lr.ph66 ], [ %.15464.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15663 = phi i64 [ %i.at, %.lr.ph66 ], [ %.15663.unr, %.lr.ph66.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %i.af = load i64, ptr %.165, align 8, !tbaa !106
  %i.ag = uitofp i64 %i.af to float
  %i.ah = fmul nnan float %i.ag, f0x1F800000
  %i.ai = getelementptr inbounds nuw i8, ptr %.15464, i64 4
  store float %i.ah, ptr %.15464, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %.165, i64 16
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !106
  %i.al = uitofp i64 %i.ak to float
  %i.am = fmul nnan float %i.al, f0x1F800000
  %i.an = getelementptr inbounds nuw i8, ptr %.15464, i64 8
  store float %i.am, ptr %i.ai, align 4, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %.165, i64 24
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.aq = uitofp i64 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x1F800000
  %i.as = getelementptr inbounds nuw i8, ptr %.15464, i64 12
  store float %i.ar, ptr %i.an, align 4, !tbaa !94
  %i.at = add i64 %.15663, -4                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.165, i64 32
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !106
  %i.aw = uitofp i64 %i.av to float
  %i.ax = fmul nnan float %i.aw, f0x1F800000
  %i.ay = getelementptr inbounds nuw i8, ptr %.15464, i64 16
  store float %i.ax, ptr %i.as, align 4, !tbaa !94
  %.not.3 = icmp eq i64 %i.at, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph66, !llvm.loop !1028

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIdfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %2, -16                          ; 2 uses
  %i.c = and i64 %i.b, 16
  %lcmp.mod.not.not = icmp eq i64 %i.c, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load <4 x double>, ptr %0, align 8, !tbaa !78
  %i.g = fptrunc <4 x double> %i.f to <4 x float>
  store <4 x float> %i.g, ptr %1, align 4, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load <4 x double>, ptr %i.d, align 8, !tbaa !78
  %i.k = fptrunc <4 x double> %i.j to <4 x float>
  store <4 x float> %i.k, ptr %i.e, align 4, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load <4 x double>, ptr %i.h, align 8, !tbaa !78
  %i.o = fptrunc <4 x double> %i.n to <4 x float>
  store <4 x float> %i.o, ptr %i.i, align 4, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = load <4 x double>, ptr %i.l, align 8, !tbaa !78
  %i.s = fptrunc <4 x double> %i.r to <4 x float>
  store <4 x float> %i.s, ptr %i.m, align 4, !tbaa !94
  %i.t = add i64 %2, -16                          ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.059.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.05358.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.05557.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.lcssa75.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.lcssa74.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.u = icmp ult i64 %i.b, 16
  br i1 %i.u, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bh, %.lr.ph ] ; 5 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %.lcssa74.unr, %.lr.ph.prol.loopexit ], [ %i.be, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa75.unr, %.lr.ph.prol.loopexit ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %xtraiter76 = and i64 %.055.lcssa, 3            ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.165.prol = phi ptr [ %i.w, %.lr.ph66.prol ], [ %.0.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15464.prol = phi ptr [ %i.z, %.lr.ph66.prol ], [ %.053.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15663.prol = phi i64 [ %i.v, %.lr.ph66.prol ], [ %.055.lcssa, %.lr.ph66.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.v = add i64 %.15663.prol, -1                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.165.prol, i64 8 ; 2 uses
  %i.x = load double, ptr %.165.prol, align 8, !tbaa !78
  %i.y = fptrunc double %i.x to float
  %i.z = getelementptr inbounds nuw i8, ptr %.15464.prol, i64 4 ; 2 uses
  store float %i.y, ptr %.15464.prol, align 4, !tbaa !94
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter76
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !1029

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.w, %.lr.ph66.prol ]
  %.15464.unr = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.z, %.lr.ph66.prol ]
  %.15663.unr = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.v, %.lr.ph66.prol ]
  %i.aa = icmp ult i64 %.055.lcssa, 4
  br i1 %i.aa, label %._crit_edge, label %.lr.ph66

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.059 = phi ptr [ %i.bd, %.lr.ph ], [ %.059.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.05358 = phi ptr [ %i.be, %.lr.ph ], [ %.05358.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.05557 = phi i64 [ %i.bh, %.lr.ph ], [ %.05557.unr, %.lr.ph.prol.loopexit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  %i.ad = load <4 x double>, ptr %.059, align 8, !tbaa !78
  %i.ae = fptrunc <4 x double> %i.ad to <4 x float>
  store <4 x float> %i.ae, ptr %.05358, align 4, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %.059, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  %i.ah = load <4 x double>, ptr %i.ab, align 8, !tbaa !78
  %i.ai = fptrunc <4 x double> %i.ah to <4 x float>
  store <4 x float> %i.ai, ptr %i.ac, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %.059, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  %i.al = load <4 x double>, ptr %i.af, align 8, !tbaa !78
  %i.am = fptrunc <4 x double> %i.al to <4 x float>
  store <4 x float> %i.am, ptr %i.ag, align 4, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %.059, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %.05358, i64 64
  %i.ap = load <4 x double>, ptr %i.aj, align 8, !tbaa !78
  %i.aq = fptrunc <4 x double> %i.ap to <4 x float>
  store <4 x float> %i.aq, ptr %i.ak, align 4, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %.059, i64 160
  %i.as = getelementptr inbounds nuw i8, ptr %.05358, i64 80
  %i.at = load <4 x double>, ptr %i.an, align 8, !tbaa !78
  %i.au = fptrunc <4 x double> %i.at to <4 x float>
  store <4 x float> %i.au, ptr %i.ao, align 4, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %.059, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %.05358, i64 96
  %i.ax = load <4 x double>, ptr %i.ar, align 8, !tbaa !78
  %i.ay = fptrunc <4 x double> %i.ax to <4 x float>
  store <4 x float> %i.ay, ptr %i.as, align 4, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %.059, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %.05358, i64 112
  %i.bb = load <4 x double>, ptr %i.av, align 8, !tbaa !78
  %i.bc = fptrunc <4 x double> %i.bb to <4 x float>
  store <4 x float> %i.bc, ptr %i.aw, align 4, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %.059, i64 256 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05358, i64 128 ; 2 uses
  %i.bf = load <4 x double>, ptr %i.az, align 8, !tbaa !78
  %i.bg = fptrunc <4 x double> %i.bf to <4 x float>
  store <4 x float> %i.bg, ptr %i.ba, align 4, !tbaa !94
  %i.bh = add i64 %.05557, -32                    ; 3 uses
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.lr.ph, label %.preheader, !llvm.loop !1030

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.bw, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15464 = phi ptr [ %i.bz, %.lr.ph66 ], [ %.15464.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15663 = phi i64 [ %i.bv, %.lr.ph66 ], [ %.15663.unr, %.lr.ph66.prol.loopexit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %i.bk = load double, ptr %.165, align 8, !tbaa !78
  %i.bl = fptrunc double %i.bk to float
  %i.bm = getelementptr inbounds nuw i8, ptr %.15464, i64 4
  store float %i.bl, ptr %.15464, align 4, !tbaa !94
  %i.bn = getelementptr inbounds nuw i8, ptr %.165, i64 16
  %i.bo = load double, ptr %i.bj, align 8, !tbaa !78
  %i.bp = fptrunc double %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %.15464, i64 8
  store float %i.bp, ptr %i.bm, align 4, !tbaa !94
  %i.br = getelementptr inbounds nuw i8, ptr %.165, i64 24
  %i.bs = load double, ptr %i.bn, align 8, !tbaa !78
  %i.bt = fptrunc double %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %.15464, i64 12
  store float %i.bt, ptr %i.bq, align 4, !tbaa !94
  %i.bv = add i64 %.15663, -4                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.165, i64 32
  %i.bx = load double, ptr %i.br, align 8, !tbaa !78
  %i.by = fptrunc double %i.bx to float
  %i.bz = getelementptr inbounds nuw i8, ptr %.15464, i64 16
  store float %i.by, ptr %i.bu, align 4, !tbaa !94
  %.not.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph66, !llvm.loop !1031

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %.preheader
  ret void
}

declare void @_ZN11OpenImageIO4v3_112convert_typeIfN9Imath_3_14halfEEEvPKT_PT0_mS7_S7_(ptr noundef, ptr noundef, i64 noundef, i16, i16) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #35

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfjEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = uitofp i32 %3 to double                  ; 5 uses
  %i.b = uitofp i32 %4 to double                  ; 6 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %2, -16
  %i.e = lshr i64 %i.d, 4                         ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.iters.check, label %.lr.ph.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, 2305843009213693950      ; 4 uses
  %i.g = shl i64 %n.vec, 6                        ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.g       ; 2 uses
  %i.j = shl i64 %n.vec, 4
  %i.k = sub i64 %2, %i.j                         ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 48 uses
  %broadcast.splatinsert160 = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat161 = shufflevector <2 x double> %broadcast.splatinsert160, <2 x double> poison, <2 x i32> zeroinitializer ; 32 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 6                        ; 3 uses
  %i.m = or disjoint i64 %i.l, 64                 ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.l  ; 16 uses
  %next.gep162 = getelementptr i8, ptr %0, i64 %i.m ; 16 uses
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.l ; 8 uses
  %next.gep164 = getelementptr i8, ptr %1, i64 %i.m ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %next.gep162, i64 4
  %i.p = load float, ptr %next.gep, align 4, !tbaa !94
  %i.q = load float, ptr %next.gep162, align 4, !tbaa !94
  %i.r = insertelement <2 x float> poison, float %i.p, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = fpext <2 x float> %i.s to <2 x double>
  %i.u = fmul <2 x double> %broadcast.splat, %i.t ; 2 uses
  %i.v = fcmp olt <2 x double> %i.u, zeroinitializer
  %i.w = select <2 x i1> %i.v, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.x = fadd <2 x double> %i.u, %i.w             ; 2 uses
  %i.y = fcmp oge <2 x double> %i.x, %broadcast.splat161
  %i.z = select <2 x i1> %i.y, <2 x double> %i.x, <2 x double> %broadcast.splat161 ; 2 uses
  %i.aa = fcmp ogt <2 x double> %i.z, %broadcast.splat
  %i.ab = select <2 x i1> %i.aa, <2 x double> %broadcast.splat, <2 x double> %i.z
  %i.ac = fptoui <2 x double> %i.ab to <2 x i32>  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep162, i64 8
  %i.af = load float, ptr %i.n, align 4, !tbaa !94
  %i.ag = load float, ptr %i.o, align 4, !tbaa !94
  %i.ah = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  %i.ak = fmul <2 x double> %broadcast.splat, %i.aj ; 2 uses
  %i.al = fcmp olt <2 x double> %i.ak, zeroinitializer
  %i.am = select <2 x i1> %i.al, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.an = fadd <2 x double> %i.ak, %i.am          ; 2 uses
  %i.ao = fcmp oge <2 x double> %i.an, %broadcast.splat161
  %i.ap = select <2 x i1> %i.ao, <2 x double> %i.an, <2 x double> %broadcast.splat161 ; 2 uses
  %i.aq = fcmp ogt <2 x double> %i.ap, %broadcast.splat
  %i.ar = select <2 x i1> %i.aq, <2 x double> %broadcast.splat, <2 x double> %i.ap
  %i.as = fptoui <2 x double> %i.ar to <2 x i32>  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %next.gep163, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep164, i64 8
  %i.av = shufflevector <2 x i32> %i.ac, <2 x i32> %i.as, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.av, ptr %next.gep163, align 4, !tbaa !51
  %i.aw = shufflevector <2 x i32> %i.ac, <2 x i32> %i.as, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.aw, ptr %next.gep164, align 4, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep162, i64 12
  %i.az = load float, ptr %i.ad, align 4, !tbaa !94
  %i.ba = load float, ptr %i.ae, align 4, !tbaa !94
  %i.bb = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ba, i64 1
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  %i.be = fmul <2 x double> %broadcast.splat, %i.bd ; 2 uses
  %i.bf = fcmp olt <2 x double> %i.be, zeroinitializer
  %i.bg = select <2 x i1> %i.bf, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bh = fadd <2 x double> %i.be, %i.bg          ; 2 uses
  %i.bi = fcmp oge <2 x double> %i.bh, %broadcast.splat161
  %i.bj = select <2 x i1> %i.bi, <2 x double> %i.bh, <2 x double> %broadcast.splat161 ; 2 uses
  %i.bk = fcmp ogt <2 x double> %i.bj, %broadcast.splat
  %i.bl = select <2 x i1> %i.bk, <2 x double> %broadcast.splat, <2 x double> %i.bj
  %i.bm = fptoui <2 x double> %i.bl to <2 x i32>  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep162, i64 16
  %i.bp = load float, ptr %i.ax, align 4, !tbaa !94
  %i.bq = load float, ptr %i.ay, align 4, !tbaa !94
  %i.br = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bq, i64 1
  %i.bt = fpext <2 x float> %i.bs to <2 x double>
  %i.bu = fmul <2 x double> %broadcast.splat, %i.bt ; 2 uses
  %i.bv = fcmp olt <2 x double> %i.bu, zeroinitializer
  %i.bw = select <2 x i1> %i.bv, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bx = fadd <2 x double> %i.bu, %i.bw          ; 2 uses
  %i.by = fcmp oge <2 x double> %i.bx, %broadcast.splat161
  %i.bz = select <2 x i1> %i.by, <2 x double> %i.bx, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ca = fcmp ogt <2 x double> %i.bz, %broadcast.splat
  %i.cb = select <2 x i1> %i.ca, <2 x double> %broadcast.splat, <2 x double> %i.bz
  %i.cc = fptoui <2 x double> %i.cb to <2 x i32>  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %next.gep163, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %next.gep164, i64 16
  %i.cf = shufflevector <2 x i32> %i.bm, <2 x i32> %i.cc, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.cf, ptr %i.at, align 4, !tbaa !51
  %i.cg = shufflevector <2 x i32> %i.bm, <2 x i32> %i.cc, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.cg, ptr %i.au, align 4, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep162, i64 20
  %i.cj = load float, ptr %i.bn, align 4, !tbaa !94
  %i.ck = load float, ptr %i.bo, align 4, !tbaa !94
  %i.cl = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ck, i64 1
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = fmul <2 x double> %broadcast.splat, %i.cn ; 2 uses
  %i.cp = fcmp olt <2 x double> %i.co, zeroinitializer
  %i.cq = select <2 x i1> %i.cp, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cr = fadd <2 x double> %i.co, %i.cq          ; 2 uses
  %i.cs = fcmp oge <2 x double> %i.cr, %broadcast.splat161
  %i.ct = select <2 x i1> %i.cs, <2 x double> %i.cr, <2 x double> %broadcast.splat161 ; 2 uses
  %i.cu = fcmp ogt <2 x double> %i.ct, %broadcast.splat
  %i.cv = select <2 x i1> %i.cu, <2 x double> %broadcast.splat, <2 x double> %i.ct
  %i.cw = fptoui <2 x double> %i.cv to <2 x i32>  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %next.gep162, i64 24
  %i.cz = load float, ptr %i.ch, align 4, !tbaa !94
  %i.da = load float, ptr %i.ci, align 4, !tbaa !94
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.da, i64 1
  %i.dd = fpext <2 x float> %i.dc to <2 x double>
  %i.de = fmul <2 x double> %broadcast.splat, %i.dd ; 2 uses
  %i.df = fcmp olt <2 x double> %i.de, zeroinitializer
  %i.dg = select <2 x i1> %i.df, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.dh = fadd <2 x double> %i.de, %i.dg          ; 2 uses
  %i.di = fcmp oge <2 x double> %i.dh, %broadcast.splat161
  %i.dj = select <2 x i1> %i.di, <2 x double> %i.dh, <2 x double> %broadcast.splat161 ; 2 uses
  %i.dk = fcmp ogt <2 x double> %i.dj, %broadcast.splat
  %i.dl = select <2 x i1> %i.dk, <2 x double> %broadcast.splat, <2 x double> %i.dj
  %i.dm = fptoui <2 x double> %i.dl to <2 x i32>  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep163, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %next.gep164, i64 24
  %i.dp = shufflevector <2 x i32> %i.cw, <2 x i32> %i.dm, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.dp, ptr %i.cd, align 4, !tbaa !51
  %i.dq = shufflevector <2 x i32> %i.cw, <2 x i32> %i.dm, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.dq, ptr %i.ce, align 4, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.ds = getelementptr inbounds nuw i8, ptr %next.gep162, i64 28
  %i.dt = load float, ptr %i.cx, align 4, !tbaa !94
  %i.du = load float, ptr %i.cy, align 4, !tbaa !94
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.du, i64 1
  %i.dx = fpext <2 x float> %i.dw to <2 x double>
  %i.dy = fmul <2 x double> %broadcast.splat, %i.dx ; 2 uses
  %i.dz = fcmp olt <2 x double> %i.dy, zeroinitializer
  %i.ea = select <2 x i1> %i.dz, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.eb = fadd <2 x double> %i.dy, %i.ea          ; 2 uses
  %i.ec = fcmp oge <2 x double> %i.eb, %broadcast.splat161
  %i.ed = select <2 x i1> %i.ec, <2 x double> %i.eb, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ee = fcmp ogt <2 x double> %i.ed, %broadcast.splat
  %i.ef = select <2 x i1> %i.ee, <2 x double> %broadcast.splat, <2 x double> %i.ed
  %i.eg = fptoui <2 x double> %i.ef to <2 x i32>  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %next.gep162, i64 32
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_112convert_typeIfjEEvPKT_PT0_mS5_S5_:bb.a
  %i.ih = select <2 x i1> %i.ig, <2 x double> %i.if, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ii = fcmp ogt <2 x double> %i.ih, %broadcast.splat
  %i.ij = select <2 x i1> %i.ii, <2 x double> %broadcast.splat, <2 x double> %i.ih
  %i.ik = fptoui <2 x double> %i.ij to <2 x i32>  ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %next.gep, i64 56
  %i.im = getelementptr inbounds nuw i8, ptr %next.gep162, i64 56
  %i.in = load float, ptr %i.hv, align 4, !tbaa !94
  %i.io = load float, ptr %i.hw, align 4, !tbaa !94
  %i.ip = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.io, i64 1
  %i.ir = fpext <2 x float> %i.iq to <2 x double>
  %i.is = fmul <2 x double> %broadcast.splat, %i.ir ; 2 uses
  %i.it = fcmp olt <2 x double> %i.is, zeroinitializer
  %i.iu = select <2 x i1> %i.it, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.iv = fadd <2 x double> %i.is, %i.iu          ; 2 uses
  %i.iw = fcmp oge <2 x double> %i.iv, %broadcast.splat161
  %i.ix = select <2 x i1> %i.iw, <2 x double> %i.iv, <2 x double> %broadcast.splat161 ; 2 uses
  %i.iy = fcmp ogt <2 x double> %i.ix, %broadcast.splat
  %i.iz = select <2 x i1> %i.iy, <2 x double> %broadcast.splat, <2 x double> %i.ix
  %i.ja = fptoui <2 x double> %i.iz to <2 x i32>  ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %next.gep163, i64 56
  %i.jc = getelementptr inbounds nuw i8, ptr %next.gep164, i64 56
  %i.jd = shufflevector <2 x i32> %i.ik, <2 x i32> %i.ja, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.jd, ptr %i.hr, align 4, !tbaa !51
  %i.je = shufflevector <2 x i32> %i.ik, <2 x i32> %i.ja, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.je, ptr %i.hs, align 4, !tbaa !51
  %i.jf = getelementptr inbounds nuw i8, ptr %next.gep, i64 60
  %i.jg = getelementptr inbounds nuw i8, ptr %next.gep162, i64 60
  %i.jh = load float, ptr %i.il, align 4, !tbaa !94
  %i.ji = load float, ptr %i.im, align 4, !tbaa !94
  %i.jj = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jk = insertelement <2 x float> %i.jj, float %i.ji, i64 1
  %i.jl = fpext <2 x float> %i.jk to <2 x double>
  %i.jm = fmul <2 x double> %broadcast.splat, %i.jl ; 2 uses
  %i.jn = fcmp olt <2 x double> %i.jm, zeroinitializer
  %i.jo = select <2 x i1> %i.jn, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.jp = fadd <2 x double> %i.jm, %i.jo          ; 2 uses
  %i.jq = fcmp oge <2 x double> %i.jp, %broadcast.splat161
  %i.jr = select <2 x i1> %i.jq, <2 x double> %i.jp, <2 x double> %broadcast.splat161 ; 2 uses
  %i.js = fcmp ogt <2 x double> %i.jr, %broadcast.splat
  %i.jt = select <2 x i1> %i.js, <2 x double> %broadcast.splat, <2 x double> %i.jr
  %i.ju = fptoui <2 x double> %i.jt to <2 x i32>  ; 2 uses
  %i.jv = load float, ptr %i.jf, align 4, !tbaa !94
  %i.jw = load float, ptr %i.jg, align 4, !tbaa !94
  %i.jx = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %i.jw, i64 1
  %i.jz = fpext <2 x float> %i.jy to <2 x double>
  %i.ka = fmul <2 x double> %broadcast.splat, %i.jz ; 2 uses
  %i.kb = fcmp olt <2 x double> %i.ka, zeroinitializer
  %i.kc = select <2 x i1> %i.kb, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.kd = fadd <2 x double> %i.ka, %i.kc          ; 2 uses
  %i.ke = fcmp oge <2 x double> %i.kd, %broadcast.splat161
  %i.kf = select <2 x i1> %i.ke, <2 x double> %i.kd, <2 x double> %broadcast.splat161 ; 2 uses
  %i.kg = fcmp ogt <2 x double> %i.kf, %broadcast.splat
  %i.kh = select <2 x i1> %i.kg, <2 x double> %broadcast.splat, <2 x double> %i.kf
  %i.ki = fptoui <2 x double> %i.kh to <2 x i32>  ; 2 uses
  %i.kj = shufflevector <2 x i32> %i.ju, <2 x i32> %i.ki, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.kj, ptr %i.jb, align 4, !tbaa !51
  %i.kk = shufflevector <2 x i32> %i.ju, <2 x i32> %i.ki, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.kk, ptr %i.jc, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !1032

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader186

.lr.ph.preheader186:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0145.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  %.091144.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.093143.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %i.km = insertelement <4 x double> poison, double %i.b, i64 0
  %i.kn = shufflevector <4 x double> %i.km, <4 x double> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.ko = insertelement <4 x double> poison, double %i.a, i64 0
  %i.kp = shufflevector <4 x double> %i.ko, <4 x double> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.k, %middle.block ], [ %i.ng, %.lr.ph ] ; 6 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.i, %middle.block ], [ %i.mu, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %middle.block ], [ %i.mt, %.lr.ph ] ; 3 uses
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %.preheader
  %min.iters.check168 = icmp ult i64 %.093.lcssa, 4
  br i1 %min.iters.check168, label %.lr.ph152.preheader185, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph152.preheader
  %n.vec170 = and i64 %.093.lcssa, -4             ; 3 uses
  %i.kq = shl i64 %n.vec170, 2                    ; 2 uses
  %i.kr = getelementptr i8, ptr %.0.lcssa, i64 %i.kq
  %i.ks = getelementptr i8, ptr %.091.lcssa, i64 %i.kq
  %i.kt = and i64 %.093.lcssa, 3
  %broadcast.splatinsert171 = insertelement <4 x double> poison, double %i.b, i64 0
  %broadcast.splat172 = shufflevector <4 x double> %broadcast.splatinsert171, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert173 = insertelement <4 x double> poison, double %i.a, i64 0
  %broadcast.splat174 = shufflevector <4 x double> %broadcast.splatinsert173, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph169
  %index176 = phi i64 [ 0, %vector.ph169 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %i.ku = shl i64 %index176, 2                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.0.lcssa, i64 %i.ku
  %next.gep178 = getelementptr i8, ptr %.091.lcssa, i64 %i.ku
  %wide.load = load <4 x float>, ptr %next.gep177, align 4, !tbaa !94
  %i.kv = fpext <4 x float> %wide.load to <4 x double>
  %i.kw = fmul <4 x double> %broadcast.splat172, %i.kv ; 2 uses
  %i.kx = fcmp olt <4 x double> %i.kw, zeroinitializer
  %i.ky = select <4 x i1> %i.kx, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.kz = fadd <4 x double> %i.kw, %i.ky          ; 2 uses
  %i.la = fcmp oge <4 x double> %i.kz, %broadcast.splat174
  %i.lb = select <4 x i1> %i.la, <4 x double> %i.kz, <4 x double> %broadcast.splat174 ; 2 uses
  %i.lc = fcmp ogt <4 x double> %i.lb, %broadcast.splat172
  %i.ld = select <4 x i1> %i.lc, <4 x double> %broadcast.splat172, <4 x double> %i.lb
  %i.le = fptoui <4 x double> %i.ld to <4 x i32>
  store <4 x i32> %i.le, ptr %next.gep178, align 4, !tbaa !51
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.lf, label %middle.block180, label %vector.body175, !llvm.loop !1033

middle.block180:                                  ; preds = %vector.body175
  %cmp.n181 = icmp eq i64 %.093.lcssa, %n.vec170
  br i1 %cmp.n181, label %._crit_edge, label %.lr.ph152.preheader185

.lr.ph152.preheader185:                           ; preds = %.lr.ph152.preheader, %middle.block180
  %.1151.ph = phi ptr [ %.0.lcssa, %.lr.ph152.preheader ], [ %i.kr, %middle.block180 ]
  %.192150.ph = phi ptr [ %.091.lcssa, %.lr.ph152.preheader ], [ %i.ks, %middle.block180 ]
  %.194149.ph = phi i64 [ %.093.lcssa, %.lr.ph152.preheader ], [ %i.kt, %middle.block180 ]
  br label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader186, %.lr.ph
  %.0145 = phi ptr [ %i.mt, %.lr.ph ], [ %.0145.ph, %.lr.ph.preheader186 ] ; 5 uses
  %.091144 = phi ptr [ %i.mu, %.lr.ph ], [ %.091144.ph, %.lr.ph.preheader186 ] ; 5 uses
  %.093143 = phi i64 [ %i.ng, %.lr.ph ], [ %.093143.ph, %.lr.ph.preheader186 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.li = load <4 x float>, ptr %.0145, align 4, !tbaa !94
  %i.lj = fpext <4 x float> %i.li to <4 x double>
  %i.lk = fmul <4 x double> %i.kn, %i.lj          ; 2 uses
  %i.ll = fcmp olt <4 x double> %i.lk, zeroinitializer
  %i.lm = select <4 x i1> %i.ll, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.ln = fadd <4 x double> %i.lk, %i.lm          ; 2 uses
  %i.lo = fcmp oge <4 x double> %i.ln, %i.kp
  %i.lp = select <4 x i1> %i.lo, <4 x double> %i.ln, <4 x double> %i.kp ; 2 uses
  %i.lq = fcmp ogt <4 x double> %i.lp, %i.kn
  %i.lr = select <4 x i1> %i.lq, <4 x double> %i.kn, <4 x double> %i.lp
  %i.ls = fptoui <4 x double> %i.lr to <4 x i32>
  store <4 x i32> %i.ls, ptr %.091144, align 4, !tbaa !51
  %i.lt = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.lu = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.lv = load <4 x float>, ptr %i.lg, align 4, !tbaa !94
  %i.lw = fpext <4 x float> %i.lv to <4 x double>
  %i.lx = fmul <4 x double> %i.kn, %i.lw          ; 2 uses
  %i.ly = fcmp olt <4 x double> %i.lx, zeroinitializer
  %i.lz = select <4 x i1> %i.ly, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.ma = fadd <4 x double> %i.lx, %i.lz          ; 2 uses
  %i.mb = fcmp oge <4 x double> %i.ma, %i.kp
  %i.mc = select <4 x i1> %i.mb, <4 x double> %i.ma, <4 x double> %i.kp ; 2 uses
  %i.md = fcmp ogt <4 x double> %i.mc, %i.kn
  %i.me = select <4 x i1> %i.md, <4 x double> %i.kn, <4 x double> %i.mc
  %i.mf = fptoui <4 x double> %i.me to <4 x i32>
  store <4 x i32> %i.mf, ptr %i.lh, align 4, !tbaa !51
  %i.mg = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.mh = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.mi = load <4 x float>, ptr %i.lt, align 4, !tbaa !94
  %i.mj = fpext <4 x float> %i.mi to <4 x double>
  %i.mk = fmul <4 x double> %i.kn, %i.mj          ; 2 uses
  %i.ml = fcmp olt <4 x double> %i.mk, zeroinitializer
  %i.mm = select <4 x i1> %i.ml, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.mn = fadd <4 x double> %i.mk, %i.mm          ; 2 uses
  %i.mo = fcmp oge <4 x double> %i.mn, %i.kp
  %i.mp = select <4 x i1> %i.mo, <4 x double> %i.mn, <4 x double> %i.kp ; 2 uses
  %i.mq = fcmp ogt <4 x double> %i.mp, %i.kn
  %i.mr = select <4 x i1> %i.mq, <4 x double> %i.kn, <4 x double> %i.mp
  %i.ms = fptoui <4 x double> %i.mr to <4 x i32>
  store <4 x i32> %i.ms, ptr %i.lu, align 4, !tbaa !51
  %i.mt = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.091144, i64 64 ; 2 uses
  %i.mv = load <4 x float>, ptr %i.mg, align 4, !tbaa !94
  %i.mw = fpext <4 x float> %i.mv to <4 x double>
  %i.mx = fmul <4 x double> %i.kn, %i.mw          ; 2 uses
  %i.my = fcmp olt <4 x double> %i.mx, zeroinitializer
  %i.mz = select <4 x i1> %i.my, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.na = fadd <4 x double> %i.mx, %i.mz          ; 2 uses
  %i.nb = fcmp oge <4 x double> %i.na, %i.kp
  %i.nc = select <4 x i1> %i.nb, <4 x double> %i.na, <4 x double> %i.kp ; 2 uses
  %i.nd = fcmp ogt <4 x double> %i.nc, %i.kn
  %i.ne = select <4 x i1> %i.nd, <4 x double> %i.kn, <4 x double> %i.nc
  %i.nf = fptoui <4 x double> %i.ne to <4 x i32>
  store <4 x i32> %i.nf, ptr %i.mh, align 4, !tbaa !51
  %i.ng = add i64 %.093143, -16                   ; 3 uses
  %i.nh = icmp ugt i64 %i.ng, 15
  br i1 %i.nh, label %.lr.ph, label %.preheader, !llvm.loop !1034

.lr.ph152:                                        ; preds = %.lr.ph152.preheader185, %.lr.ph152
  %.1151 = phi ptr [ %i.nj, %.lr.ph152 ], [ %.1151.ph, %.lr.ph152.preheader185 ] ; 2 uses
  %.192150 = phi ptr [ %i.ns, %.lr.ph152 ], [ %.192150.ph, %.lr.ph152.preheader185 ] ; 2 uses
  %.194149 = phi i64 [ %i.ni, %.lr.ph152 ], [ %.194149.ph, %.lr.ph152.preheader185 ]
  %i.ni = add i64 %.194149, -1                    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.nk = load float, ptr %.1151, align 4, !tbaa !94
  %i.nl = fpext float %i.nk to double
  %i.nm = fmul double %i.b, %i.nl                 ; 2 uses
  %i.nn = fcmp olt double %i.nm, 0.000000e+00
  %i.no = select i1 %i.nn, double -5.000000e-01, double 5.000000e-01
  %i.np = fadd double %i.nm, %i.no                ; 2 uses
  %.inv.i140 = fcmp oge double %i.np, %i.a
  %.0.i.i141 = select i1 %.inv.i140, double %i.np, double %i.a ; 2 uses
  %i.nq = fcmp ogt double %.0.i.i141, %i.b
  %.1.i.i142 = select i1 %i.nq, double %i.b, double %.0.i.i141
  %i.nr = fptoui double %.1.i.i142 to i32
  %i.ns = getelementptr inbounds nuw i8, ptr %.192150, i64 4
  store i32 %i.nr, ptr %.192150, align 4, !tbaa !51
  %.not = icmp eq i64 %i.ni, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1035

._crit_edge:                                      ; preds = %.lr.ph152, %middle.block180, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfaEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3, i8 noundef signext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i8 %3 to float                    ; 36 uses
  %i.b = sitofp i8 %4 to float                    ; 53 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %2, -16                          ; 2 uses
  %i.e = lshr i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %.lr.ph.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = add i64 %2, -16                          ; 2 uses
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 16
  %i.j = shl i64 %i.g, 2
  %i.k = and i64 %i.j, -64
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %scevgep160 = getelementptr i8, ptr %i.l, i64 64
  %bound0 = icmp ult ptr %1, %scevgep160
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2305843009213693948      ; 5 uses
  %i.m = shl i64 %n.vec, 6
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = shl i64 %n.vec, 4
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 2 uses
  %i.q = shl i64 %n.vec, 4
  %i.r = sub i64 %2, %i.q                         ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 48 uses
  %broadcast.splatinsert161 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat162 = shufflevector <4 x float> %broadcast.splatinsert161, <4 x float> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 6                        ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.s  ; 16 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep163 = getelementptr i8, ptr %i.t, i64 64
  %i.u = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep164 = getelementptr i8, ptr %i.u, i64 128
  %i.v = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep165 = getelementptr i8, ptr %i.v, i64 192
  %i.w = shl i64 %index, 4                        ; 4 uses
  %next.gep166 = getelementptr i8, ptr %1, i64 %i.w ; 16 uses
  %i.x = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep167 = getelementptr i8, ptr %i.x, i64 16
  %i.y = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep168 = getelementptr i8, ptr %i.y, i64 32
  %i.z = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep169 = getelementptr i8, ptr %i.z, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ab = getelementptr i8, ptr %i.t, i64 68
  %i.ac = getelementptr i8, ptr %i.u, i64 132
  %i.ad = getelementptr i8, ptr %i.v, i64 196
  %i.ae = load float, ptr %next.gep, align 4, !tbaa !94, !alias.scope !1046
  %i.af = load float, ptr %next.gep163, align 4, !tbaa !94, !alias.scope !1046
  %i.ag = load float, ptr %next.gep164, align 4, !tbaa !94, !alias.scope !1046
  %i.ah = load float, ptr %next.gep165, align 4, !tbaa !94, !alias.scope !1046
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = fmul <4 x float> %i.al, %broadcast.splat ; 2 uses
  %i.an = fcmp olt <4 x float> %i.am, zeroinitializer
  %i.ao = select <4 x i1> %i.an, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ap = fadd <4 x float> %i.am, %i.ao           ; 2 uses
  %i.aq = fcmp oge <4 x float> %i.ap, %broadcast.splat162
  %i.ar = select <4 x i1> %i.aq, <4 x float> %i.ap, <4 x float> %broadcast.splat162 ; 2 uses
  %i.as = fcmp ogt <4 x float> %i.ar, %broadcast.splat
  %i.at = select <4 x i1> %i.as, <4 x float> %broadcast.splat, <4 x float> %i.ar
  %i.au = fptosi <4 x float> %i.at to <4 x i8>    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep166, i64 1
  %i.aw = getelementptr i8, ptr %i.x, i64 17
  %i.ax = getelementptr i8, ptr %i.y, i64 33
  %i.ay = getelementptr i8, ptr %i.z, i64 49
  %i.az = extractelement <4 x i8> %i.au, i64 0
  store i8 %i.az, ptr %next.gep166, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.ba = extractelement <4 x i8> %i.au, i64 1
  store i8 %i.ba, ptr %next.gep167, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.bb = extractelement <4 x i8> %i.au, i64 2
  store i8 %i.bb, ptr %next.gep168, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.bc = extractelement <4 x i8> %i.au, i64 3
  store i8 %i.bc, ptr %next.gep169, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.be = getelementptr i8, ptr %i.t, i64 72
  %i.bf = getelementptr i8, ptr %i.u, i64 136
  %i.bg = getelementptr i8, ptr %i.v, i64 200
  %i.bh = load float, ptr %i.aa, align 4, !tbaa !94, !alias.scope !1046
  %i.bi = load float, ptr %i.ab, align 4, !tbaa !94, !alias.scope !1046
  %i.bj = load float, ptr %i.ac, align 4, !tbaa !94, !alias.scope !1046
  %i.bk = load float, ptr %i.ad, align 4, !tbaa !94, !alias.scope !1046
  %i.bl = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 1
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 2
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 3
  %i.bp = fmul <4 x float> %i.bo, %broadcast.splat ; 2 uses
  %i.bq = fcmp olt <4 x float> %i.bp, zeroinitializer
  %i.br = select <4 x i1> %i.bq, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.bs = fadd <4 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = fcmp oge <4 x float> %i.bs, %broadcast.splat162
  %i.bu = select <4 x i1> %i.bt, <4 x float> %i.bs, <4 x float> %broadcast.splat162 ; 2 uses
  %i.bv = fcmp ogt <4 x float> %i.bu, %broadcast.splat
  %i.bw = select <4 x i1> %i.bv, <4 x float> %broadcast.splat, <4 x float> %i.bu
  %i.bx = fptosi <4 x float> %i.bw to <4 x i8>    ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep166, i64 2
  %i.bz = getelementptr i8, ptr %i.x, i64 18
  %i.ca = getelementptr i8, ptr %i.y, i64 34
  %i.cb = getelementptr i8, ptr %i.z, i64 50
  %i.cc = extractelement <4 x i8> %i.bx, i64 0
  store i8 %i.cc, ptr %i.av, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.cd = extractelement <4 x i8> %i.bx, i64 1
  store i8 %i.cd, ptr %i.aw, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.ce = extractelement <4 x i8> %i.bx, i64 2
  store i8 %i.ce, ptr %i.ax, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.cf = extractelement <4 x i8> %i.bx, i64 3
  store i8 %i.cf, ptr %i.ay, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.cg = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ch = getelementptr i8, ptr %i.t, i64 76
  %i.ci = getelementptr i8, ptr %i.u, i64 140
  %i.cj = getelementptr i8, ptr %i.v, i64 204
  %i.ck = load float, ptr %i.bd, align 4, !tbaa !94, !alias.scope !1046
  %i.cl = load float, ptr %i.be, align 4, !tbaa !94, !alias.scope !1046
  %i.cm = load float, ptr %i.bf, align 4, !tbaa !94, !alias.scope !1046
  %i.cn = load float, ptr %i.bg, align 4, !tbaa !94, !alias.scope !1046
  %i.co = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 1
  %i.cq = insertelement <4 x float> %i.cp, float %i.cm, i64 2
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 3
  %i.cs = fmul <4 x float> %i.cr, %broadcast.splat ; 2 uses
  %i.ct = fcmp olt <4 x float> %i.cs, zeroinitializer
  %i.cu = select <4 x i1> %i.ct, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.cv = fadd <4 x float> %i.cs, %i.cu           ; 2 uses
  %i.cw = fcmp oge <4 x float> %i.cv, %broadcast.splat162
  %i.cx = select <4 x i1> %i.cw, <4 x float> %i.cv, <4 x float> %broadcast.splat162 ; 2 uses
  %i.cy = fcmp ogt <4 x float> %i.cx, %broadcast.splat
  %i.cz = select <4 x i1> %i.cy, <4 x float> %broadcast.splat, <4 x float> %i.cx
  %i.da = fptosi <4 x float> %i.cz to <4 x i8>    ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %next.gep166, i64 3
  %i.dc = getelementptr i8, ptr %i.x, i64 19
  %i.dd = getelementptr i8, ptr %i.y, i64 35
  %i.de = getelementptr i8, ptr %i.z, i64 51
  %i.df = extractelement <4 x i8> %i.da, i64 0
  store i8 %i.df, ptr %i.by, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.dg = extractelement <4 x i8> %i.da, i64 1
  store i8 %i.dg, ptr %i.bz, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.dh = extractelement <4 x i8> %i.da, i64 2
  store i8 %i.dh, ptr %i.ca, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.di = extractelement <4 x i8> %i.da, i64 3
  store i8 %i.di, ptr %i.cb, align 1, !tbaa !68, !alias.scope !1047, !noalias !1046
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.dk = getelementptr i8, ptr %i.t, i64 80
  %i.dl = getelementptr i8, ptr %i.u, i64 144
  %i.dm = getelementptr i8, ptr %i.v, i64 208
  %i.dn = load float, ptr %i.cg, align 4, !tbaa !94, !alias.scope !1046
  %i.do = load float, ptr %i.ch, align 4, !tbaa !94, !alias.scope !1046
  %i.dp = load float, ptr %i.ci, align 4, !tbaa !94, !alias.scope !1046
  %i.dq = load float, ptr %i.cj, align 4, !tbaa !94, !alias.scope !1046
  %i.dr = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 1
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 2
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 3
  %i.dv = fmul <4 x float> %i.du, %broadcast.splat ; 2 uses
  %i.dw = fcmp olt <4 x float> %i.dv, zeroinitializer
  %i.dx = select <4 x i1> %i.dw, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.dy = fadd <4 x float> %i.dv, %i.dx           ; 2 uses
  %i.dz = fcmp oge <4 x float> %i.dy, %broadcast.splat162
  %i.ea = select <4 x i1> %i.dz, <4 x float> %i.dy, <4 x float> %broadcast.splat162 ; 2 uses
  %i.eb = fcmp ogt <4 x float> %i.ea, %broadcast.splat
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_112convert_typeIfaEEvPKT_PT0_mS5_S5_:bb.a
  %i.sr = fcmp olt float %i.sq, 0.000000e+00
  %i.ss = select i1 %i.sr, float -5.000000e-01, float 5.000000e-01
  %i.st = fadd float %i.sq, %i.ss                 ; 2 uses
  %.inv.i95 = fcmp oge float %i.st, %i.a
  %.0.i.i96 = select i1 %.inv.i95, float %i.st, float %i.a ; 2 uses
  %i.su = fcmp ogt float %.0.i.i96, %i.b
  %.1.i.i97 = select i1 %i.su, float %i.b, float %.0.i.i96
  %i.sv = fptosi float %.1.i.i97 to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %.091144, i64 2
  store i8 %i.sv, ptr %i.sn, align 1, !tbaa !68
  %i.sx = getelementptr inbounds nuw i8, ptr %.0145, i64 12
  %i.sy = load float, ptr %i.so, align 4, !tbaa !94
  %i.sz = fmul float %i.sy, %i.b                  ; 2 uses
  %i.ta = fcmp olt float %i.sz, 0.000000e+00
  %i.tb = select i1 %i.ta, float -5.000000e-01, float 5.000000e-01
  %i.tc = fadd float %i.sz, %i.tb                 ; 2 uses
  %.inv.i98 = fcmp oge float %i.tc, %i.a
  %.0.i.i99 = select i1 %.inv.i98, float %i.tc, float %i.a ; 2 uses
  %i.td = fcmp ogt float %.0.i.i99, %i.b
  %.1.i.i100 = select i1 %i.td, float %i.b, float %.0.i.i99
  %i.te = fptosi float %.1.i.i100 to i8
  %i.tf = getelementptr inbounds nuw i8, ptr %.091144, i64 3
  store i8 %i.te, ptr %i.sw, align 1, !tbaa !68
  %i.tg = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.th = load float, ptr %i.sx, align 4, !tbaa !94
  %i.ti = fmul float %i.th, %i.b                  ; 2 uses
  %i.tj = fcmp olt float %i.ti, 0.000000e+00
  %i.tk = select i1 %i.tj, float -5.000000e-01, float 5.000000e-01
  %i.tl = fadd float %i.ti, %i.tk                 ; 2 uses
  %.inv.i101 = fcmp oge float %i.tl, %i.a
  %.0.i.i102 = select i1 %.inv.i101, float %i.tl, float %i.a ; 2 uses
  %i.tm = fcmp ogt float %.0.i.i102, %i.b
  %.1.i.i103 = select i1 %i.tm, float %i.b, float %.0.i.i102
  %i.tn = fptosi float %.1.i.i103 to i8
  %i.to = getelementptr inbounds nuw i8, ptr %.091144, i64 4
  store i8 %i.tn, ptr %i.tf, align 1, !tbaa !68
  %i.tp = getelementptr inbounds nuw i8, ptr %.0145, i64 20
  %i.tq = load float, ptr %i.tg, align 4, !tbaa !94
  %i.tr = fmul float %i.tq, %i.b                  ; 2 uses
  %i.ts = fcmp olt float %i.tr, 0.000000e+00
  %i.tt = select i1 %i.ts, float -5.000000e-01, float 5.000000e-01
  %i.tu = fadd float %i.tr, %i.tt                 ; 2 uses
  %.inv.i104 = fcmp oge float %i.tu, %i.a
  %.0.i.i105 = select i1 %.inv.i104, float %i.tu, float %i.a ; 2 uses
  %i.tv = fcmp ogt float %.0.i.i105, %i.b
  %.1.i.i106 = select i1 %i.tv, float %i.b, float %.0.i.i105
  %i.tw = fptosi float %.1.i.i106 to i8
  %i.tx = getelementptr inbounds nuw i8, ptr %.091144, i64 5
  store i8 %i.tw, ptr %i.to, align 1, !tbaa !68
  %i.ty = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %i.tz = load float, ptr %i.tp, align 4, !tbaa !94
  %i.ua = fmul float %i.tz, %i.b                  ; 2 uses
  %i.ub = fcmp olt float %i.ua, 0.000000e+00
  %i.uc = select i1 %i.ub, float -5.000000e-01, float 5.000000e-01
  %i.ud = fadd float %i.ua, %i.uc                 ; 2 uses
  %.inv.i107 = fcmp oge float %i.ud, %i.a
  %.0.i.i108 = select i1 %.inv.i107, float %i.ud, float %i.a ; 2 uses
  %i.ue = fcmp ogt float %.0.i.i108, %i.b
  %.1.i.i109 = select i1 %i.ue, float %i.b, float %.0.i.i108
  %i.uf = fptosi float %.1.i.i109 to i8
  %i.ug = getelementptr inbounds nuw i8, ptr %.091144, i64 6
  store i8 %i.uf, ptr %i.tx, align 1, !tbaa !68
  %i.uh = getelementptr inbounds nuw i8, ptr %.0145, i64 28
  %i.ui = load float, ptr %i.ty, align 4, !tbaa !94
  %i.uj = fmul float %i.ui, %i.b                  ; 2 uses
  %i.uk = fcmp olt float %i.uj, 0.000000e+00
  %i.ul = select i1 %i.uk, float -5.000000e-01, float 5.000000e-01
  %i.um = fadd float %i.uj, %i.ul                 ; 2 uses
  %.inv.i110 = fcmp oge float %i.um, %i.a
  %.0.i.i111 = select i1 %.inv.i110, float %i.um, float %i.a ; 2 uses
  %i.un = fcmp ogt float %.0.i.i111, %i.b
  %.1.i.i112 = select i1 %i.un, float %i.b, float %.0.i.i111
  %i.uo = fptosi float %.1.i.i112 to i8
  %i.up = getelementptr inbounds nuw i8, ptr %.091144, i64 7
  store i8 %i.uo, ptr %i.ug, align 1, !tbaa !68
  %i.uq = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.ur = load float, ptr %i.uh, align 4, !tbaa !94
  %i.us = fmul float %i.ur, %i.b                  ; 2 uses
  %i.ut = fcmp olt float %i.us, 0.000000e+00
  %i.uu = select i1 %i.ut, float -5.000000e-01, float 5.000000e-01
  %i.uv = fadd float %i.us, %i.uu                 ; 2 uses
  %.inv.i113 = fcmp oge float %i.uv, %i.a
  %.0.i.i114 = select i1 %.inv.i113, float %i.uv, float %i.a ; 2 uses
  %i.uw = fcmp ogt float %.0.i.i114, %i.b
  %.1.i.i115 = select i1 %i.uw, float %i.b, float %.0.i.i114
  %i.ux = fptosi float %.1.i.i115 to i8
  %i.uy = getelementptr inbounds nuw i8, ptr %.091144, i64 8
  store i8 %i.ux, ptr %i.up, align 1, !tbaa !68
  %i.uz = getelementptr inbounds nuw i8, ptr %.0145, i64 36
  %i.va = load float, ptr %i.uq, align 4, !tbaa !94
  %i.vb = fmul float %i.va, %i.b                  ; 2 uses
  %i.vc = fcmp olt float %i.vb, 0.000000e+00
  %i.vd = select i1 %i.vc, float -5.000000e-01, float 5.000000e-01
  %i.ve = fadd float %i.vb, %i.vd                 ; 2 uses
  %.inv.i116 = fcmp oge float %i.ve, %i.a
  %.0.i.i117 = select i1 %.inv.i116, float %i.ve, float %i.a ; 2 uses
  %i.vf = fcmp ogt float %.0.i.i117, %i.b
  %.1.i.i118 = select i1 %i.vf, float %i.b, float %.0.i.i117
  %i.vg = fptosi float %.1.i.i118 to i8
  %i.vh = getelementptr inbounds nuw i8, ptr %.091144, i64 9
  store i8 %i.vg, ptr %i.uy, align 1, !tbaa !68
  %i.vi = getelementptr inbounds nuw i8, ptr %.0145, i64 40
  %i.vj = load float, ptr %i.uz, align 4, !tbaa !94
  %i.vk = fmul float %i.vj, %i.b                  ; 2 uses
  %i.vl = fcmp olt float %i.vk, 0.000000e+00
  %i.vm = select i1 %i.vl, float -5.000000e-01, float 5.000000e-01
  %i.vn = fadd float %i.vk, %i.vm                 ; 2 uses
  %.inv.i119 = fcmp oge float %i.vn, %i.a
  %.0.i.i120 = select i1 %.inv.i119, float %i.vn, float %i.a ; 2 uses
  %i.vo = fcmp ogt float %.0.i.i120, %i.b
  %.1.i.i121 = select i1 %i.vo, float %i.b, float %.0.i.i120
  %i.vp = fptosi float %.1.i.i121 to i8
  %i.vq = getelementptr inbounds nuw i8, ptr %.091144, i64 10
  store i8 %i.vp, ptr %i.vh, align 1, !tbaa !68
  %i.vr = getelementptr inbounds nuw i8, ptr %.0145, i64 44
  %i.vs = load float, ptr %i.vi, align 4, !tbaa !94
  %i.vt = fmul float %i.vs, %i.b                  ; 2 uses
  %i.vu = fcmp olt float %i.vt, 0.000000e+00
  %i.vv = select i1 %i.vu, float -5.000000e-01, float 5.000000e-01
  %i.vw = fadd float %i.vt, %i.vv                 ; 2 uses
  %.inv.i122 = fcmp oge float %i.vw, %i.a
  %.0.i.i123 = select i1 %.inv.i122, float %i.vw, float %i.a ; 2 uses
  %i.vx = fcmp ogt float %.0.i.i123, %i.b
  %.1.i.i124 = select i1 %i.vx, float %i.b, float %.0.i.i123
  %i.vy = fptosi float %.1.i.i124 to i8
  %i.vz = getelementptr inbounds nuw i8, ptr %.091144, i64 11
  store i8 %i.vy, ptr %i.vq, align 1, !tbaa !68
  %i.wa = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.wb = load float, ptr %i.vr, align 4, !tbaa !94
  %i.wc = fmul float %i.wb, %i.b                  ; 2 uses
  %i.wd = fcmp olt float %i.wc, 0.000000e+00
  %i.we = select i1 %i.wd, float -5.000000e-01, float 5.000000e-01
  %i.wf = fadd float %i.wc, %i.we                 ; 2 uses
  %.inv.i125 = fcmp oge float %i.wf, %i.a
  %.0.i.i126 = select i1 %.inv.i125, float %i.wf, float %i.a ; 2 uses
  %i.wg = fcmp ogt float %.0.i.i126, %i.b
  %.1.i.i127 = select i1 %i.wg, float %i.b, float %.0.i.i126
  %i.wh = fptosi float %.1.i.i127 to i8
  %i.wi = getelementptr inbounds nuw i8, ptr %.091144, i64 12
  store i8 %i.wh, ptr %i.vz, align 1, !tbaa !68
  %i.wj = getelementptr inbounds nuw i8, ptr %.0145, i64 52
  %i.wk = load float, ptr %i.wa, align 4, !tbaa !94
  %i.wl = fmul float %i.wk, %i.b                  ; 2 uses
  %i.wm = fcmp olt float %i.wl, 0.000000e+00
  %i.wn = select i1 %i.wm, float -5.000000e-01, float 5.000000e-01
  %i.wo = fadd float %i.wl, %i.wn                 ; 2 uses
  %.inv.i128 = fcmp oge float %i.wo, %i.a
  %.0.i.i129 = select i1 %.inv.i128, float %i.wo, float %i.a ; 2 uses
  %i.wp = fcmp ogt float %.0.i.i129, %i.b
  %.1.i.i130 = select i1 %i.wp, float %i.b, float %.0.i.i129
  %i.wq = fptosi float %.1.i.i130 to i8
  %i.wr = getelementptr inbounds nuw i8, ptr %.091144, i64 13
  store i8 %i.wq, ptr %i.wi, align 1, !tbaa !68
  %i.ws = getelementptr inbounds nuw i8, ptr %.0145, i64 56
  %i.wt = load float, ptr %i.wj, align 4, !tbaa !94
  %i.wu = fmul float %i.wt, %i.b                  ; 2 uses
  %i.wv = fcmp olt float %i.wu, 0.000000e+00
  %i.ww = select i1 %i.wv, float -5.000000e-01, float 5.000000e-01
  %i.wx = fadd float %i.wu, %i.ww                 ; 2 uses
  %.inv.i131 = fcmp oge float %i.wx, %i.a
  %.0.i.i132 = select i1 %.inv.i131, float %i.wx, float %i.a ; 2 uses
  %i.wy = fcmp ogt float %.0.i.i132, %i.b
  %.1.i.i133 = select i1 %i.wy, float %i.b, float %.0.i.i132
  %i.wz = fptosi float %.1.i.i133 to i8
  %i.xa = getelementptr inbounds nuw i8, ptr %.091144, i64 14
  store i8 %i.wz, ptr %i.wr, align 1, !tbaa !68
  %i.xb = getelementptr inbounds nuw i8, ptr %.0145, i64 60
  %i.xc = load float, ptr %i.ws, align 4, !tbaa !94
  %i.xd = fmul float %i.xc, %i.b                  ; 2 uses
  %i.xe = fcmp olt float %i.xd, 0.000000e+00
  %i.xf = select i1 %i.xe, float -5.000000e-01, float 5.000000e-01
  %i.xg = fadd float %i.xd, %i.xf                 ; 2 uses
  %.inv.i134 = fcmp oge float %i.xg, %i.a
  %.0.i.i135 = select i1 %.inv.i134, float %i.xg, float %i.a ; 2 uses
  %i.xh = fcmp ogt float %.0.i.i135, %i.b
  %.1.i.i136 = select i1 %i.xh, float %i.b, float %.0.i.i135
  %i.xi = fptosi float %.1.i.i136 to i8
  %i.xj = getelementptr inbounds nuw i8, ptr %.091144, i64 15
  store i8 %i.xi, ptr %i.xa, align 1, !tbaa !68
  %i.xk = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.xl = load float, ptr %i.xb, align 4, !tbaa !94
  %i.xm = fmul float %i.xl, %i.b                  ; 2 uses
  %i.xn = fcmp olt float %i.xm, 0.000000e+00
  %i.xo = select i1 %i.xn, float -5.000000e-01, float 5.000000e-01
  %i.xp = fadd float %i.xm, %i.xo                 ; 2 uses
  %.inv.i137 = fcmp oge float %i.xp, %i.a
  %.0.i.i138 = select i1 %.inv.i137, float %i.xp, float %i.a ; 2 uses
  %i.xq = fcmp ogt float %.0.i.i138, %i.b
  %.1.i.i139 = select i1 %i.xq, float %i.b, float %.0.i.i138
  %i.xr = fptosi float %.1.i.i139 to i8
  %i.xs = getelementptr inbounds nuw i8, ptr %.091144, i64 16 ; 2 uses
  store i8 %i.xr, ptr %i.xj, align 1, !tbaa !68
  %i.xt = add i64 %.093143, -16                   ; 3 uses
  %i.xu = icmp ugt i64 %i.xt, 15
  br i1 %i.xu, label %.lr.ph, label %.preheader, !llvm.loop !1044

.lr.ph152:                                        ; preds = %.lr.ph152.preheader196, %.lr.ph152
  %.1151 = phi ptr [ %i.xw, %.lr.ph152 ], [ %.1151.ph, %.lr.ph152.preheader196 ] ; 2 uses
  %.192150 = phi ptr [ %i.ye, %.lr.ph152 ], [ %.192150.ph, %.lr.ph152.preheader196 ] ; 2 uses
  %.194149 = phi i64 [ %i.xv, %.lr.ph152 ], [ %.194149.ph, %.lr.ph152.preheader196 ]
  %i.xv = add i64 %.194149, -1                    ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.xx = load float, ptr %.1151, align 4, !tbaa !94
  %i.xy = fmul float %i.xx, %i.b                  ; 2 uses
  %i.xz = fcmp olt float %i.xy, 0.000000e+00
  %i.ya = select i1 %i.xz, float -5.000000e-01, float 5.000000e-01
  %i.yb = fadd float %i.xy, %i.ya                 ; 2 uses
  %.inv.i140 = fcmp oge float %i.yb, %i.a
  %.0.i.i141 = select i1 %.inv.i140, float %i.yb, float %i.a ; 2 uses
  %i.yc = fcmp ogt float %.0.i.i141, %i.b
  %.1.i.i142 = select i1 %i.yc, float %i.b, float %.0.i.i141
  %i.yd = fptosi float %.1.i.i142 to i8
  %i.ye = getelementptr inbounds nuw i8, ptr %.192150, i64 1
  store i8 %i.yd, ptr %.192150, align 1, !tbaa !68
  %.not = icmp eq i64 %i.xv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1045

._crit_edge:                                      ; preds = %.lr.ph152, %middle.block191, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfsEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %4, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %3, i64 1
  %i.c = sitofp <2 x i16> %i.b to <2 x float>     ; 8 uses
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %2, -16                          ; 2 uses
  %i.f = lshr i64 %i.e, 4
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 48
  br i1 %min.iters.check, label %.lr.ph.preheader190, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, 2305843009213693948      ; 5 uses
  %i.h = shl i64 %n.vec, 6
  %i.i = getelementptr i8, ptr %0, i64 %i.h       ; 2 uses
  %i.j = shl i64 %n.vec, 5
  %i.k = getelementptr i8, ptr %1, i64 %i.j       ; 2 uses
  %i.l = shl i64 %n.vec, 4
  %i.m = sub i64 %2, %i.l                         ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> zeroinitializer ; 48 uses
  %broadcast.splat161 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 32 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 6                        ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 16 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n       ; 16 uses
  %next.gep162 = getelementptr i8, ptr %i.o, i64 64
  %i.p = getelementptr i8, ptr %0, i64 %i.n       ; 16 uses
  %next.gep163 = getelementptr i8, ptr %i.p, i64 128
  %i.q = getelementptr i8, ptr %0, i64 %i.n       ; 16 uses
  %next.gep164 = getelementptr i8, ptr %i.q, i64 192
  %i.r = shl i64 %index, 5                        ; 4 uses
  %next.gep165 = getelementptr i8, ptr %1, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.s, i64 32
  %i.t = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.t, i64 64
  %i.u = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.u, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.w = getelementptr i8, ptr %i.o, i64 68
  %i.x = getelementptr i8, ptr %i.p, i64 132
  %i.y = getelementptr i8, ptr %i.q, i64 196
  %i.z = load float, ptr %next.gep, align 4, !tbaa !94
  %i.aa = load float, ptr %next.gep162, align 4, !tbaa !94
  %i.ab = load float, ptr %next.gep163, align 4, !tbaa !94
  %i.ac = load float, ptr %next.gep164, align 4, !tbaa !94
  %i.ad = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 3
  %i.ah = fmul <4 x float> %i.ag, %broadcast.splat ; 2 uses
  %i.ai = fcmp olt <4 x float> %i.ah, zeroinitializer
  %i.aj = select <4 x i1> %i.ai, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ak = fadd <4 x float> %i.ah, %i.aj           ; 2 uses
  %i.al = fcmp oge <4 x float> %i.ak, %broadcast.splat161
  %i.am = select <4 x i1> %i.al, <4 x float> %i.ak, <4 x float> %broadcast.splat161 ; 2 uses
  %i.an = fcmp ogt <4 x float> %i.am, %broadcast.splat
  %i.ao = select <4 x i1> %i.an, <4 x float> %broadcast.splat, <4 x float> %i.am
  %i.ap = fptosi <4 x float> %i.ao to <4 x i16>   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ar = getelementptr i8, ptr %i.o, i64 72
  %i.as = getelementptr i8, ptr %i.p, i64 136
  %i.at = getelementptr i8, ptr %i.q, i64 200
  %i.au = load float, ptr %i.v, align 4, !tbaa !94
  %i.av = load float, ptr %i.w, align 4, !tbaa !94
  %i.aw = load float, ptr %i.x, align 4, !tbaa !94
  %i.ax = load float, ptr %i.y, align 4, !tbaa !94
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = fmul <4 x float> %i.bb, %broadcast.splat ; 2 uses
  %i.bd = fcmp olt <4 x float> %i.bc, zeroinitializer
  %i.be = select <4 x i1> %i.bd, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.bf = fadd <4 x float> %i.bc, %i.be           ; 2 uses
  %i.bg = fcmp oge <4 x float> %i.bf, %broadcast.splat161
  %i.bh = select <4 x i1> %i.bg, <4 x float> %i.bf, <4 x float> %broadcast.splat161 ; 2 uses
  %i.bi = fcmp ogt <4 x float> %i.bh, %broadcast.splat
  %i.bj = select <4 x i1> %i.bi, <4 x float> %broadcast.splat, <4 x float> %i.bh
  %i.bk = fptosi <4 x float> %i.bj to <4 x i16>   ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.bm = getelementptr i8, ptr %i.o, i64 76
  %i.bn = getelementptr i8, ptr %i.p, i64 140
  %i.bo = getelementptr i8, ptr %i.q, i64 204
  %i.bp = load float, ptr %i.aq, align 4, !tbaa !94
  %i.bq = load float, ptr %i.ar, align 4, !tbaa !94
  %i.br = load float, ptr %i.as, align 4, !tbaa !94
  %i.bs = load float, ptr %i.at, align 4, !tbaa !94
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3
  %i.bx = fmul <4 x float> %i.bw, %broadcast.splat ; 2 uses
  %i.by = fcmp olt <4 x float> %i.bx, zeroinitializer
  %i.bz = select <4 x i1> %i.by, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ca = fadd <4 x float> %i.bx, %i.bz           ; 2 uses
  %i.cb = fcmp oge <4 x float> %i.ca, %broadcast.splat161
  %i.cc = select <4 x i1> %i.cb, <4 x float> %i.ca, <4 x float> %broadcast.splat161 ; 2 uses
  %i.cd = fcmp ogt <4 x float> %i.cc, %broadcast.splat
  %i.ce = select <4 x i1> %i.cd, <4 x float> %broadcast.splat, <4 x float> %i.cc
  %i.cf = fptosi <4 x float> %i.ce to <4 x i16>   ; 4 uses
  %i.cg = shufflevector <4 x i16> %i.cf, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x i16> %i.cf, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x i16> %i.cf, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x i16> %i.cf, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.cl = getelementptr i8, ptr %i.o, i64 80
  %i.cm = getelementptr i8, ptr %i.p, i64 144
  %i.cn = getelementptr i8, ptr %i.q, i64 208
  %i.co = load float, ptr %i.bl, align 4, !tbaa !94
  %i.cp = load float, ptr %i.bm, align 4, !tbaa !94
  %i.cq = load float, ptr %i.bn, align 4, !tbaa !94
  %i.cr = load float, ptr %i.bo, align 4, !tbaa !94
  %i.cs = insertelement <4 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3
  %i.cw = fmul <4 x float> %i.cv, %broadcast.splat ; 2 uses
  %i.cx = fcmp olt <4 x float> %i.cw, zeroinitializer
  %i.cy = select <4 x i1> %i.cx, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.cz = fadd <4 x float> %i.cw, %i.cy           ; 2 uses
  %i.da = fcmp oge <4 x float> %i.cz, %broadcast.splat161
  %i.db = select <4 x i1> %i.da, <4 x float> %i.cz, <4 x float> %broadcast.splat161 ; 2 uses
  %i.dc = fcmp ogt <4 x float> %i.db, %broadcast.splat
  %i.dd = select <4 x i1> %i.dc, <4 x float> %broadcast.splat, <4 x float> %i.db
  %i.de = fptosi <4 x float> %i.dd to <4 x i16>   ; 4 uses
  %i.df = shufflevector <4 x i16> %i.de, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x i16> %i.de, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x i16> %i.de, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <4 x i16> %i.de, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.dk = getelementptr i8, ptr %i.o, i64 84
  %i.dl = getelementptr i8, ptr %i.p, i64 148
  %i.dm = getelementptr i8, ptr %i.q, i64 212
  %i.dn = load float, ptr %i.ck, align 4, !tbaa !94
  %i.do = load float, ptr %i.cl, align 4, !tbaa !94
  %i.dp = load float, ptr %i.cm, align 4, !tbaa !94
  %i.dq = load float, ptr %i.cn, align 4, !tbaa !94
  %i.dr = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 1
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 2
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 3
  %i.dv = fmul <4 x float> %i.du, %broadcast.splat ; 2 uses
  %i.dw = fcmp olt <4 x float> %i.dv, zeroinitializer
  %i.dx = select <4 x i1> %i.dw, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.dy = fadd <4 x float> %i.dv, %i.dx           ; 2 uses
  %i.dz = fcmp oge <4 x float> %i.dy, %broadcast.splat161
  %i.ea = select <4 x i1> %i.dz, <4 x float> %i.dy, <4 x float> %broadcast.splat161 ; 2 uses
  %i.eb = fcmp ogt <4 x float> %i.ea, %broadcast.splat
  %i.ec = select <4 x i1> %i.eb, <4 x float> %broadcast.splat, <4 x float> %i.ea
  %i.ed = fptosi <4 x float> %i.ec to <4 x i16>   ; 4 uses
  %i.ee = shufflevector <4 x i16> %i.ed, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <4 x i16> %i.ed, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <4 x i16> %i.ed, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <4 x i16> %i.ed, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.ej = getelementptr i8, ptr %i.o, i64 88
  %i.ek = getelementptr i8, ptr %i.p, i64 152
  %i.el = getelementptr i8, ptr %i.q, i64 216
  %i.em = load float, ptr %i.dj, align 4, !tbaa !94
  %i.en = load float, ptr %i.dk, align 4, !tbaa !94
  %i.eo = load float, ptr %i.dl, align 4, !tbaa !94
  %i.ep = load float, ptr %i.dm, align 4, !tbaa !94
  %i.eq = insertelement <4 x float> poison, float %i.em, i64 0
  %i.er = insertelement <4 x float> %i.eq, float %i.en, i64 1
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 3
  %i.eu = fmul <4 x float> %i.et, %broadcast.splat ; 2 uses
  %i.ev = fcmp olt <4 x float> %i.eu, zeroinitializer
  %i.ew = select <4 x i1> %i.ev, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ex = fadd <4 x float> %i.eu, %i.ew           ; 2 uses
  %i.ey = fcmp oge <4 x float> %i.ex, %broadcast.splat161
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_112convert_typeIfsEEvPKT_PT0_mS5_S5_:bb.a
  %i.nk = fmul <4 x float> %i.nj, %broadcast.splat ; 2 uses
  %i.nl = fcmp olt <4 x float> %i.nk, zeroinitializer
  %i.nm = select <4 x i1> %i.nl, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.nn = fadd <4 x float> %i.nk, %i.nm           ; 2 uses
  %i.no = fcmp oge <4 x float> %i.nn, %broadcast.splat161
  %i.np = select <4 x i1> %i.no, <4 x float> %i.nn, <4 x float> %broadcast.splat161 ; 2 uses
  %i.nq = fcmp ogt <4 x float> %i.np, %broadcast.splat
  %i.nr = select <4 x i1> %i.nq, <4 x float> %broadcast.splat, <4 x float> %i.np
  %i.ns = fptosi <4 x float> %i.nr to <4 x i16>   ; 4 uses
  %i.nt = shufflevector <4 x i16> %i.ns, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nu = shufflevector <4 x i16> %i.ns, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nv = shufflevector <4 x i16> %i.ns, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nw = shufflevector <4 x i16> %i.ns, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nx = getelementptr inbounds nuw i8, ptr %next.gep, i64 60
  %i.ny = getelementptr i8, ptr %i.o, i64 124
  %i.nz = getelementptr i8, ptr %i.p, i64 188
  %i.oa = getelementptr i8, ptr %i.q, i64 252
  %i.ob = load float, ptr %i.my, align 4, !tbaa !94
  %i.oc = load float, ptr %i.mz, align 4, !tbaa !94
  %i.od = load float, ptr %i.na, align 4, !tbaa !94
  %i.oe = load float, ptr %i.nb, align 4, !tbaa !94
  %i.of = insertelement <4 x float> poison, float %i.ob, i64 0
  %i.og = insertelement <4 x float> %i.of, float %i.oc, i64 1
  %i.oh = insertelement <4 x float> %i.og, float %i.od, i64 2
  %i.oi = insertelement <4 x float> %i.oh, float %i.oe, i64 3
  %i.oj = fmul <4 x float> %i.oi, %broadcast.splat ; 2 uses
  %i.ok = fcmp olt <4 x float> %i.oj, zeroinitializer
  %i.ol = select <4 x i1> %i.ok, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.om = fadd <4 x float> %i.oj, %i.ol           ; 2 uses
  %i.on = fcmp oge <4 x float> %i.om, %broadcast.splat161
  %i.oo = select <4 x i1> %i.on, <4 x float> %i.om, <4 x float> %broadcast.splat161 ; 2 uses
  %i.op = fcmp ogt <4 x float> %i.oo, %broadcast.splat
  %i.oq = select <4 x i1> %i.op, <4 x float> %broadcast.splat, <4 x float> %i.oo
  %i.or = fptosi <4 x float> %i.oq to <4 x i16>   ; 4 uses
  %i.os = shufflevector <4 x i16> %i.or, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ot = shufflevector <4 x i16> %i.or, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ou = shufflevector <4 x i16> %i.or, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ov = shufflevector <4 x i16> %i.or, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ow = load float, ptr %i.nx, align 4, !tbaa !94
  %i.ox = load float, ptr %i.ny, align 4, !tbaa !94
  %i.oy = load float, ptr %i.nz, align 4, !tbaa !94
  %i.oz = load float, ptr %i.oa, align 4, !tbaa !94
  %i.pa = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.pb = insertelement <4 x float> %i.pa, float %i.ox, i64 1
  %i.pc = insertelement <4 x float> %i.pb, float %i.oy, i64 2
  %i.pd = insertelement <4 x float> %i.pc, float %i.oz, i64 3
  %i.pe = fmul <4 x float> %i.pd, %broadcast.splat ; 2 uses
  %i.pf = fcmp olt <4 x float> %i.pe, zeroinitializer
  %i.pg = select <4 x i1> %i.pf, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ph = fadd <4 x float> %i.pe, %i.pg           ; 2 uses
  %i.pi = fcmp oge <4 x float> %i.ph, %broadcast.splat161
  %i.pj = select <4 x i1> %i.pi, <4 x float> %i.ph, <4 x float> %broadcast.splat161 ; 2 uses
  %i.pk = fcmp ogt <4 x float> %i.pj, %broadcast.splat
  %i.pl = select <4 x i1> %i.pk, <4 x float> %broadcast.splat, <4 x float> %i.pj
  %i.pm = fptosi <4 x float> %i.pl to <4 x i16>   ; 4 uses
  %i.pn = shufflevector <4 x i16> %i.pm, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.po = shufflevector <4 x i16> %i.pm, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pp = shufflevector <4 x i16> %i.pm, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pq = shufflevector <4 x i16> %i.pm, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pr = shufflevector <4 x i16> %i.jf, <4 x i16> %i.ka, <8 x i32> <i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ps = shufflevector <8 x i16> %i.pr, <8 x i16> %i.kz, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pt = shufflevector <8 x i16> %i.ps, <8 x i16> %i.ly, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pu = shufflevector <8 x i16> %i.pt, <8 x i16> %i.mx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.pv = shufflevector <8 x i16> %i.pu, <8 x i16> %i.nw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.pw = shufflevector <8 x i16> %i.pv, <8 x i16> %i.ov, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.px = shufflevector <8 x i16> %i.pw, <8 x i16> %i.pq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  store <8 x i16> %i.px, ptr %i.hf, align 2, !tbaa !136
  %i.py = shufflevector <4 x i16> %i.jf, <4 x i16> %i.ka, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pz = shufflevector <8 x i16> %i.py, <8 x i16> %i.ky, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qa = shufflevector <8 x i16> %i.pz, <8 x i16> %i.lx, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qb = shufflevector <8 x i16> %i.qa, <8 x i16> %i.mw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 poison, i32 poison, i32 poison>
  %i.qc = shufflevector <8 x i16> %i.qb, <8 x i16> %i.nv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 poison, i32 poison>
  %i.qd = shufflevector <8 x i16> %i.qc, <8 x i16> %i.ou, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.qe = shufflevector <8 x i16> %i.qd, <8 x i16> %i.pp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  store <8 x i16> %i.qe, ptr %i.hg, align 2, !tbaa !136
  %i.qf = shufflevector <4 x i16> %i.jf, <4 x i16> %i.ka, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qg = shufflevector <8 x i16> %i.qf, <8 x i16> %i.kx, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qh = shufflevector <8 x i16> %i.qg, <8 x i16> %i.lw, <8 x i32> <i32 0, i32 1, i32 2, i32 10, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qi = shufflevector <8 x i16> %i.qh, <8 x i16> %i.mv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 poison, i32 poison, i32 poison>
  %i.qj = shufflevector <8 x i16> %i.qi, <8 x i16> %i.nu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 10, i32 poison, i32 poison>
  %i.qk = shufflevector <8 x i16> %i.qj, <8 x i16> %i.ot, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.ql = shufflevector <8 x i16> %i.qk, <8 x i16> %i.po, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x i16> %i.ql, ptr %i.hh, align 2, !tbaa !136
  %i.qm = shufflevector <4 x i16> %i.jf, <4 x i16> %i.ka, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qn = shufflevector <8 x i16> %i.qm, <8 x i16> %i.kw, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qo = shufflevector <8 x i16> %i.qn, <8 x i16> %i.lv, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qp = shufflevector <8 x i16> %i.qo, <8 x i16> %i.mu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.qq = shufflevector <8 x i16> %i.qp, <8 x i16> %i.nt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.qr = shufflevector <8 x i16> %i.qq, <8 x i16> %i.os, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.qs = shufflevector <8 x i16> %i.qr, <8 x i16> %i.pn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i16> %i.qs, ptr %i.hi, align 2, !tbaa !136
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qt = icmp eq i64 %index.next, %n.vec
  br i1 %i.qt, label %middle.block, label %vector.body, !llvm.loop !1050

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader190

.lr.ph.preheader190:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0145.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.091144.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.093143.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %i.qu = shufflevector <2 x float> %i.c, <2 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.qv = shufflevector <2 x float> %i.c, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.m, %middle.block ], [ %i.sn, %.lr.ph ] ; 6 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %middle.block ], [ %i.sc, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %middle.block ], [ %i.sb, %.lr.ph ] ; 3 uses
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %.preheader
  %min.iters.check172 = icmp ult i64 %.093.lcssa, 4
  br i1 %min.iters.check172, label %.lr.ph152.preheader189, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph152.preheader
  %n.vec174 = and i64 %.093.lcssa, -4             ; 4 uses
  %i.qw = shl i64 %n.vec174, 2
  %i.qx = getelementptr i8, ptr %.0.lcssa, i64 %i.qw
  %i.qy = shl i64 %n.vec174, 1
  %i.qz = getelementptr i8, ptr %.091.lcssa, i64 %i.qy
  %i.ra = and i64 %.093.lcssa, 3
  %broadcast.splat176 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splat178 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph173
  %index180 = phi i64 [ 0, %vector.ph173 ], [ %index.next183, %vector.body179 ] ; 3 uses
  %i.rb = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.0.lcssa, i64 %i.rb
  %i.rc = shl i64 %index180, 1
  %next.gep182 = getelementptr i8, ptr %.091.lcssa, i64 %i.rc
  %wide.load = load <4 x float>, ptr %next.gep181, align 4, !tbaa !94
  %i.rd = fmul <4 x float> %wide.load, %broadcast.splat176 ; 2 uses
  %i.re = fcmp olt <4 x float> %i.rd, zeroinitializer
  %i.rf = select <4 x i1> %i.re, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.rg = fadd <4 x float> %i.rd, %i.rf           ; 2 uses
  %i.rh = fcmp oge <4 x float> %i.rg, %broadcast.splat178
  %i.ri = select <4 x i1> %i.rh, <4 x float> %i.rg, <4 x float> %broadcast.splat178 ; 2 uses
  %i.rj = fcmp ogt <4 x float> %i.ri, %broadcast.splat176
  %i.rk = select <4 x i1> %i.rj, <4 x float> %broadcast.splat176, <4 x float> %i.ri
  %i.rl = fptosi <4 x float> %i.rk to <4 x i16>
  store <4 x i16> %i.rl, ptr %next.gep182, align 2, !tbaa !136
  %index.next183 = add nuw i64 %index180, 4       ; 2 uses
  %i.rm = icmp eq i64 %index.next183, %n.vec174
  br i1 %i.rm, label %middle.block184, label %vector.body179, !llvm.loop !1051

middle.block184:                                  ; preds = %vector.body179
  %cmp.n185 = icmp eq i64 %.093.lcssa, %n.vec174
  br i1 %cmp.n185, label %._crit_edge, label %.lr.ph152.preheader189

.lr.ph152.preheader189:                           ; preds = %.lr.ph152.preheader, %middle.block184
  %.1151.ph = phi ptr [ %.0.lcssa, %.lr.ph152.preheader ], [ %i.qx, %middle.block184 ]
  %.192150.ph = phi ptr [ %.091.lcssa, %.lr.ph152.preheader ], [ %i.qz, %middle.block184 ]
  %.194149.ph = phi i64 [ %.093.lcssa, %.lr.ph152.preheader ], [ %i.ra, %middle.block184 ]
  %i.rn = extractelement <2 x float> %i.c, i64 0  ; 3 uses
  %i.ro = extractelement <2 x float> %i.c, i64 1  ; 2 uses
  br label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader190, %.lr.ph
  %.0145 = phi ptr [ %i.sb, %.lr.ph ], [ %.0145.ph, %.lr.ph.preheader190 ] ; 3 uses
  %.091144 = phi ptr [ %i.sc, %.lr.ph ], [ %.091144.ph, %.lr.ph.preheader190 ] ; 3 uses
  %.093143 = phi i64 [ %i.sn, %.lr.ph ], [ %.093143.ph, %.lr.ph.preheader190 ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.rq = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.rr = load <8 x float>, ptr %.0145, align 4, !tbaa !94
  %i.rs = fmul <8 x float> %i.rr, %i.qu           ; 2 uses
  %i.rt = fcmp olt <8 x float> %i.rs, zeroinitializer
  %i.ru = select <8 x i1> %i.rt, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.rv = fadd <8 x float> %i.rs, %i.ru           ; 2 uses
  %i.rw = fcmp oge <8 x float> %i.rv, %i.qv
  %i.rx = select <8 x i1> %i.rw, <8 x float> %i.rv, <8 x float> %i.qv ; 2 uses
  %i.ry = fcmp ogt <8 x float> %i.rx, %i.qu
  %i.rz = select <8 x i1> %i.ry, <8 x float> %i.qu, <8 x float> %i.rx
  %i.sa = fptosi <8 x float> %i.rz to <8 x i16>
  store <8 x i16> %i.sa, ptr %.091144, align 2, !tbaa !136
  %i.sb = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.091144, i64 32 ; 2 uses
  %i.sd = load <8 x float>, ptr %i.rp, align 4, !tbaa !94
  %i.se = fmul <8 x float> %i.sd, %i.qu           ; 2 uses
  %i.sf = fcmp olt <8 x float> %i.se, zeroinitializer
  %i.sg = select <8 x i1> %i.sf, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.sh = fadd <8 x float> %i.se, %i.sg           ; 2 uses
  %i.si = fcmp oge <8 x float> %i.sh, %i.qv
  %i.sj = select <8 x i1> %i.si, <8 x float> %i.sh, <8 x float> %i.qv ; 2 uses
  %i.sk = fcmp ogt <8 x float> %i.sj, %i.qu
  %i.sl = select <8 x i1> %i.sk, <8 x float> %i.qu, <8 x float> %i.sj
  %i.sm = fptosi <8 x float> %i.sl to <8 x i16>
  store <8 x i16> %i.sm, ptr %i.rq, align 2, !tbaa !136
  %i.sn = add i64 %.093143, -16                   ; 3 uses
  %i.so = icmp ugt i64 %i.sn, 15
  br i1 %i.so, label %.lr.ph, label %.preheader, !llvm.loop !1052

.lr.ph152:                                        ; preds = %.lr.ph152.preheader189, %.lr.ph152
  %.1151 = phi ptr [ %i.sq, %.lr.ph152 ], [ %.1151.ph, %.lr.ph152.preheader189 ] ; 2 uses
  %.192150 = phi ptr [ %i.sy, %.lr.ph152 ], [ %.192150.ph, %.lr.ph152.preheader189 ] ; 2 uses
  %.194149 = phi i64 [ %i.sp, %.lr.ph152 ], [ %.194149.ph, %.lr.ph152.preheader189 ]
  %i.sp = add i64 %.194149, -1                    ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.sr = load float, ptr %.1151, align 4, !tbaa !94
  %i.ss = fmul float %i.sr, %i.rn                 ; 2 uses
  %i.st = fcmp olt float %i.ss, 0.000000e+00
  %i.su = select i1 %i.st, float -5.000000e-01, float 5.000000e-01
  %i.sv = fadd float %i.ss, %i.su                 ; 2 uses
  %.inv.i140 = fcmp oge float %i.sv, %i.ro
  %.0.i.i141 = select i1 %.inv.i140, float %i.sv, float %i.ro ; 2 uses
  %i.sw = fcmp ogt float %.0.i.i141, %i.rn
  %.1.i.i142 = select i1 %i.sw, float %i.rn, float %.0.i.i141
  %i.sx = fptosi float %.1.i.i142 to i16
  %i.sy = getelementptr inbounds nuw i8, ptr %.192150, i64 2
  store i16 %i.sx, ptr %.192150, align 2, !tbaa !136
  %.not = icmp eq i64 %i.sp, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1053

._crit_edge:                                      ; preds = %.lr.ph152, %middle.block184, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfiEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %3, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 8 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 3 uses
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %2, -16
  %i.g = lshr i64 %i.f, 4                         ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.iters.check, label %.lr.ph.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 2305843009213693950      ; 4 uses
  %i.i = shl i64 %n.vec, 6                        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.l = shl i64 %n.vec, 4
  %i.m = sub i64 %2, %i.l                         ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer ; 48 uses
  %broadcast.splat161 = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 32 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 6                        ; 3 uses
  %i.o = or disjoint i64 %i.n, 64                 ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 16 uses
  %next.gep162 = getelementptr i8, ptr %0, i64 %i.o ; 16 uses
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.n ; 8 uses
  %next.gep164 = getelementptr i8, ptr %1, i64 %i.o ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %next.gep162, i64 4
  %i.r = load float, ptr %next.gep, align 4, !tbaa !94
  %i.s = load float, ptr %next.gep162, align 4, !tbaa !94
  %i.t = insertelement <2 x float> poison, float %i.r, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>
  %i.w = fmul <2 x double> %broadcast.splat, %i.v ; 2 uses
  %i.x = fcmp olt <2 x double> %i.w, zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.z = fadd <2 x double> %i.w, %i.y             ; 2 uses
  %i.aa = fcmp oge <2 x double> %i.z, %broadcast.splat161
  %i.ab = select <2 x i1> %i.aa, <2 x double> %i.z, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ac = fcmp ogt <2 x double> %i.ab, %broadcast.splat
  %i.ad = select <2 x i1> %i.ac, <2 x double> %broadcast.splat, <2 x double> %i.ab
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep162, i64 8
  %i.ah = load float, ptr %i.p, align 4, !tbaa !94
  %i.ai = load float, ptr %i.q, align 4, !tbaa !94
  %i.aj = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fmul <2 x double> %broadcast.splat, %i.al ; 2 uses
  %i.an = fcmp olt <2 x double> %i.am, zeroinitializer
  %i.ao = select <2 x i1> %i.an, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ap = fadd <2 x double> %i.am, %i.ao          ; 2 uses
  %i.aq = fcmp oge <2 x double> %i.ap, %broadcast.splat161
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %broadcast.splat161 ; 2 uses
  %i.as = fcmp ogt <2 x double> %i.ar, %broadcast.splat
  %i.at = select <2 x i1> %i.as, <2 x double> %broadcast.splat, <2 x double> %i.ar
  %i.au = fptosi <2 x double> %i.at to <2 x i32>  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep163, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep164, i64 8
  %i.ax = shufflevector <2 x i32> %i.ae, <2 x i32> %i.au, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.ax, ptr %next.gep163, align 4, !tbaa !51
  %i.ay = shufflevector <2 x i32> %i.ae, <2 x i32> %i.au, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.ay, ptr %next.gep164, align 4, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep162, i64 12
  %i.bb = load float, ptr %i.af, align 4, !tbaa !94
  %i.bc = load float, ptr %i.ag, align 4, !tbaa !94
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.bc, i64 1
  %i.bf = fpext <2 x float> %i.be to <2 x double>
  %i.bg = fmul <2 x double> %broadcast.splat, %i.bf ; 2 uses
  %i.bh = fcmp olt <2 x double> %i.bg, zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bj = fadd <2 x double> %i.bg, %i.bi          ; 2 uses
  %i.bk = fcmp oge <2 x double> %i.bj, %broadcast.splat161
  %i.bl = select <2 x i1> %i.bk, <2 x double> %i.bj, <2 x double> %broadcast.splat161 ; 2 uses
  %i.bm = fcmp ogt <2 x double> %i.bl, %broadcast.splat
  %i.bn = select <2 x i1> %i.bm, <2 x double> %broadcast.splat, <2 x double> %i.bl
  %i.bo = fptosi <2 x double> %i.bn to <2 x i32>  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %next.gep162, i64 16
  %i.br = load float, ptr %i.az, align 4, !tbaa !94
  %i.bs = load float, ptr %i.ba, align 4, !tbaa !94
  %i.bt = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bs, i64 1
  %i.bv = fpext <2 x float> %i.bu to <2 x double>
  %i.bw = fmul <2 x double> %broadcast.splat, %i.bv ; 2 uses
  %i.bx = fcmp olt <2 x double> %i.bw, zeroinitializer
  %i.by = select <2 x i1> %i.bx, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bz = fadd <2 x double> %i.bw, %i.by          ; 2 uses
  %i.ca = fcmp oge <2 x double> %i.bz, %broadcast.splat161
  %i.cb = select <2 x i1> %i.ca, <2 x double> %i.bz, <2 x double> %broadcast.splat161 ; 2 uses
  %i.cc = fcmp ogt <2 x double> %i.cb, %broadcast.splat
  %i.cd = select <2 x i1> %i.cc, <2 x double> %broadcast.splat, <2 x double> %i.cb
  %i.ce = fptosi <2 x double> %i.cd to <2 x i32>  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %next.gep163, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %next.gep164, i64 16
  %i.ch = shufflevector <2 x i32> %i.bo, <2 x i32> %i.ce, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.ch, ptr %i.av, align 4, !tbaa !51
  %i.ci = shufflevector <2 x i32> %i.bo, <2 x i32> %i.ce, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.ci, ptr %i.aw, align 4, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep162, i64 20
  %i.cl = load float, ptr %i.bp, align 4, !tbaa !94
  %i.cm = load float, ptr %i.bq, align 4, !tbaa !94
  %i.cn = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cm, i64 1
  %i.cp = fpext <2 x float> %i.co to <2 x double>
  %i.cq = fmul <2 x double> %broadcast.splat, %i.cp ; 2 uses
  %i.cr = fcmp olt <2 x double> %i.cq, zeroinitializer
  %i.cs = select <2 x i1> %i.cr, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ct = fadd <2 x double> %i.cq, %i.cs          ; 2 uses
  %i.cu = fcmp oge <2 x double> %i.ct, %broadcast.splat161
  %i.cv = select <2 x i1> %i.cu, <2 x double> %i.ct, <2 x double> %broadcast.splat161 ; 2 uses
  %i.cw = fcmp ogt <2 x double> %i.cv, %broadcast.splat
  %i.cx = select <2 x i1> %i.cw, <2 x double> %broadcast.splat, <2 x double> %i.cv
  %i.cy = fptosi <2 x double> %i.cx to <2 x i32>  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %next.gep162, i64 24
  %i.db = load float, ptr %i.cj, align 4, !tbaa !94
  %i.dc = load float, ptr %i.ck, align 4, !tbaa !94
  %i.dd = insertelement <2 x float> poison, float %i.db, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.dc, i64 1
  %i.df = fpext <2 x float> %i.de to <2 x double>
  %i.dg = fmul <2 x double> %broadcast.splat, %i.df ; 2 uses
  %i.dh = fcmp olt <2 x double> %i.dg, zeroinitializer
  %i.di = select <2 x i1> %i.dh, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.dj = fadd <2 x double> %i.dg, %i.di          ; 2 uses
  %i.dk = fcmp oge <2 x double> %i.dj, %broadcast.splat161
  %i.dl = select <2 x i1> %i.dk, <2 x double> %i.dj, <2 x double> %broadcast.splat161 ; 2 uses
  %i.dm = fcmp ogt <2 x double> %i.dl, %broadcast.splat
  %i.dn = select <2 x i1> %i.dm, <2 x double> %broadcast.splat, <2 x double> %i.dl
  %i.do = fptosi <2 x double> %i.dn to <2 x i32>  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %next.gep163, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep164, i64 24
  %i.dr = shufflevector <2 x i32> %i.cy, <2 x i32> %i.do, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.dr, ptr %i.cf, align 4, !tbaa !51
  %i.ds = shufflevector <2 x i32> %i.cy, <2 x i32> %i.do, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.ds, ptr %i.cg, align 4, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.du = getelementptr inbounds nuw i8, ptr %next.gep162, i64 28
  %i.dv = load float, ptr %i.cz, align 4, !tbaa !94
  %i.dw = load float, ptr %i.da, align 4, !tbaa !94
  %i.dx = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.dw, i64 1
  %i.dz = fpext <2 x float> %i.dy to <2 x double>
  %i.ea = fmul <2 x double> %broadcast.splat, %i.dz ; 2 uses
  %i.eb = fcmp olt <2 x double> %i.ea, zeroinitializer
  %i.ec = select <2 x i1> %i.eb, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ed = fadd <2 x double> %i.ea, %i.ec          ; 2 uses
  %i.ee = fcmp oge <2 x double> %i.ed, %broadcast.splat161
  %i.ef = select <2 x i1> %i.ee, <2 x double> %i.ed, <2 x double> %broadcast.splat161 ; 2 uses
  %i.eg = fcmp ogt <2 x double> %i.ef, %broadcast.splat
  %i.eh = select <2 x i1> %i.eg, <2 x double> %broadcast.splat, <2 x double> %i.ef
  %i.ei = fptosi <2 x double> %i.eh to <2 x i32>  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %next.gep, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %next.gep162, i64 32
  %i.el = load float, ptr %i.dt, align 4, !tbaa !94
  %i.em = load float, ptr %i.du, align 4, !tbaa !94
  %i.en = insertelement <2 x float> poison, float %i.el, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.em, i64 1
  %i.ep = fpext <2 x float> %i.eo to <2 x double>
  %i.eq = fmul <2 x double> %broadcast.splat, %i.ep ; 2 uses
  %i.er = fcmp olt <2 x double> %i.eq, zeroinitializer
  %i.es = select <2 x i1> %i.er, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.et = fadd <2 x double> %i.eq, %i.es          ; 2 uses
  %i.eu = fcmp oge <2 x double> %i.et, %broadcast.splat161
  %i.ev = select <2 x i1> %i.eu, <2 x double> %i.et, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ew = fcmp ogt <2 x double> %i.ev, %broadcast.splat
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_112convert_typeIfiEEvPKT_PT0_mS5_S5_:bb.a
  %i.ig = select <2 x i1> %i.if, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ih = fadd <2 x double> %i.ie, %i.ig          ; 2 uses
  %i.ii = fcmp oge <2 x double> %i.ih, %broadcast.splat161
  %i.ij = select <2 x i1> %i.ii, <2 x double> %i.ih, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ik = fcmp ogt <2 x double> %i.ij, %broadcast.splat
  %i.il = select <2 x i1> %i.ik, <2 x double> %broadcast.splat, <2 x double> %i.ij
  %i.im = fptosi <2 x double> %i.il to <2 x i32>  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %next.gep, i64 56
  %i.io = getelementptr inbounds nuw i8, ptr %next.gep162, i64 56
  %i.ip = load float, ptr %i.hx, align 4, !tbaa !94
  %i.iq = load float, ptr %i.hy, align 4, !tbaa !94
  %i.ir = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %i.iq, i64 1
  %i.it = fpext <2 x float> %i.is to <2 x double>
  %i.iu = fmul <2 x double> %broadcast.splat, %i.it ; 2 uses
  %i.iv = fcmp olt <2 x double> %i.iu, zeroinitializer
  %i.iw = select <2 x i1> %i.iv, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ix = fadd <2 x double> %i.iu, %i.iw          ; 2 uses
  %i.iy = fcmp oge <2 x double> %i.ix, %broadcast.splat161
  %i.iz = select <2 x i1> %i.iy, <2 x double> %i.ix, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ja = fcmp ogt <2 x double> %i.iz, %broadcast.splat
  %i.jb = select <2 x i1> %i.ja, <2 x double> %broadcast.splat, <2 x double> %i.iz
  %i.jc = fptosi <2 x double> %i.jb to <2 x i32>  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %next.gep163, i64 56
  %i.je = getelementptr inbounds nuw i8, ptr %next.gep164, i64 56
  %i.jf = shufflevector <2 x i32> %i.im, <2 x i32> %i.jc, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.jf, ptr %i.ht, align 4, !tbaa !51
  %i.jg = shufflevector <2 x i32> %i.im, <2 x i32> %i.jc, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.jg, ptr %i.hu, align 4, !tbaa !51
  %i.jh = getelementptr inbounds nuw i8, ptr %next.gep, i64 60
  %i.ji = getelementptr inbounds nuw i8, ptr %next.gep162, i64 60
  %i.jj = load float, ptr %i.in, align 4, !tbaa !94
  %i.jk = load float, ptr %i.io, align 4, !tbaa !94
  %i.jl = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jm = insertelement <2 x float> %i.jl, float %i.jk, i64 1
  %i.jn = fpext <2 x float> %i.jm to <2 x double>
  %i.jo = fmul <2 x double> %broadcast.splat, %i.jn ; 2 uses
  %i.jp = fcmp olt <2 x double> %i.jo, zeroinitializer
  %i.jq = select <2 x i1> %i.jp, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.jr = fadd <2 x double> %i.jo, %i.jq          ; 2 uses
  %i.js = fcmp oge <2 x double> %i.jr, %broadcast.splat161
  %i.jt = select <2 x i1> %i.js, <2 x double> %i.jr, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ju = fcmp ogt <2 x double> %i.jt, %broadcast.splat
  %i.jv = select <2 x i1> %i.ju, <2 x double> %broadcast.splat, <2 x double> %i.jt
  %i.jw = fptosi <2 x double> %i.jv to <2 x i32>  ; 2 uses
  %i.jx = load float, ptr %i.jh, align 4, !tbaa !94
  %i.jy = load float, ptr %i.ji, align 4, !tbaa !94
  %i.jz = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.ka = insertelement <2 x float> %i.jz, float %i.jy, i64 1
  %i.kb = fpext <2 x float> %i.ka to <2 x double>
  %i.kc = fmul <2 x double> %broadcast.splat, %i.kb ; 2 uses
  %i.kd = fcmp olt <2 x double> %i.kc, zeroinitializer
  %i.ke = select <2 x i1> %i.kd, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.kf = fadd <2 x double> %i.kc, %i.ke          ; 2 uses
  %i.kg = fcmp oge <2 x double> %i.kf, %broadcast.splat161
  %i.kh = select <2 x i1> %i.kg, <2 x double> %i.kf, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ki = fcmp ogt <2 x double> %i.kh, %broadcast.splat
  %i.kj = select <2 x i1> %i.ki, <2 x double> %broadcast.splat, <2 x double> %i.kh
  %i.kk = fptosi <2 x double> %i.kj to <2 x i32>  ; 2 uses
  %i.kl = shufflevector <2 x i32> %i.jw, <2 x i32> %i.kk, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.kl, ptr %i.jd, align 4, !tbaa !51
  %i.km = shufflevector <2 x i32> %i.jw, <2 x i32> %i.kk, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.km, ptr %i.je, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !1054

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader186

.lr.ph.preheader186:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0145.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.091144.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.093143.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %i.ko = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.kp = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 8 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.m, %middle.block ], [ %i.nh, %.lr.ph ] ; 6 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %middle.block ], [ %i.mv, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %middle.block ], [ %i.mu, %.lr.ph ] ; 3 uses
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %.preheader
  %min.iters.check168 = icmp ult i64 %.093.lcssa, 4
  br i1 %min.iters.check168, label %.lr.ph152.preheader185, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph152.preheader
  %n.vec170 = and i64 %.093.lcssa, -4             ; 3 uses
  %i.kq = shl i64 %n.vec170, 2                    ; 2 uses
  %i.kr = getelementptr i8, ptr %.0.lcssa, i64 %i.kq
  %i.ks = getelementptr i8, ptr %.091.lcssa, i64 %i.kq
  %i.kt = and i64 %.093.lcssa, 3
  %broadcast.splat172 = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splat174 = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph169
  %index176 = phi i64 [ 0, %vector.ph169 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %i.ku = shl i64 %index176, 2                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.0.lcssa, i64 %i.ku
  %next.gep178 = getelementptr i8, ptr %.091.lcssa, i64 %i.ku
  %wide.load = load <4 x float>, ptr %next.gep177, align 4, !tbaa !94
  %i.kv = fpext <4 x float> %wide.load to <4 x double>
  %i.kw = fmul <4 x double> %broadcast.splat172, %i.kv ; 2 uses
  %i.kx = fcmp olt <4 x double> %i.kw, zeroinitializer
  %i.ky = select <4 x i1> %i.kx, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.kz = fadd <4 x double> %i.kw, %i.ky          ; 2 uses
  %i.la = fcmp oge <4 x double> %i.kz, %broadcast.splat174
  %i.lb = select <4 x i1> %i.la, <4 x double> %i.kz, <4 x double> %broadcast.splat174 ; 2 uses
  %i.lc = fcmp ogt <4 x double> %i.lb, %broadcast.splat172
  %i.ld = select <4 x i1> %i.lc, <4 x double> %broadcast.splat172, <4 x double> %i.lb
  %i.le = fptosi <4 x double> %i.ld to <4 x i32>
  store <4 x i32> %i.le, ptr %next.gep178, align 4, !tbaa !51
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.lf, label %middle.block180, label %vector.body175, !llvm.loop !1055

middle.block180:                                  ; preds = %vector.body175
  %cmp.n181 = icmp eq i64 %.093.lcssa, %n.vec170
  br i1 %cmp.n181, label %._crit_edge, label %.lr.ph152.preheader185

.lr.ph152.preheader185:                           ; preds = %.lr.ph152.preheader, %middle.block180
  %.1151.ph = phi ptr [ %.0.lcssa, %.lr.ph152.preheader ], [ %i.kr, %middle.block180 ]
  %.192150.ph = phi ptr [ %.091.lcssa, %.lr.ph152.preheader ], [ %i.ks, %middle.block180 ]
  %.194149.ph = phi i64 [ %.093.lcssa, %.lr.ph152.preheader ], [ %i.kt, %middle.block180 ]
  %i.lg = extractelement <2 x double> %i.c, i64 1 ; 2 uses
  br label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader186, %.lr.ph
  %.0145 = phi ptr [ %i.mu, %.lr.ph ], [ %.0145.ph, %.lr.ph.preheader186 ] ; 5 uses
  %.091144 = phi ptr [ %i.mv, %.lr.ph ], [ %.091144.ph, %.lr.ph.preheader186 ] ; 5 uses
  %.093143 = phi i64 [ %i.nh, %.lr.ph ], [ %.093143.ph, %.lr.ph.preheader186 ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.lj = load <4 x float>, ptr %.0145, align 4, !tbaa !94
  %i.lk = fpext <4 x float> %i.lj to <4 x double>
  %i.ll = fmul <4 x double> %i.ko, %i.lk          ; 2 uses
  %i.lm = fcmp olt <4 x double> %i.ll, zeroinitializer
  %i.ln = select <4 x i1> %i.lm, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.lo = fadd <4 x double> %i.ll, %i.ln          ; 2 uses
  %i.lp = fcmp oge <4 x double> %i.lo, %i.kp
  %i.lq = select <4 x i1> %i.lp, <4 x double> %i.lo, <4 x double> %i.kp ; 2 uses
  %i.lr = fcmp ogt <4 x double> %i.lq, %i.ko
  %i.ls = select <4 x i1> %i.lr, <4 x double> %i.ko, <4 x double> %i.lq
  %i.lt = fptosi <4 x double> %i.ls to <4 x i32>
  store <4 x i32> %i.lt, ptr %.091144, align 4, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.lw = load <4 x float>, ptr %i.lh, align 4, !tbaa !94
  %i.lx = fpext <4 x float> %i.lw to <4 x double>
  %i.ly = fmul <4 x double> %i.ko, %i.lx          ; 2 uses
  %i.lz = fcmp olt <4 x double> %i.ly, zeroinitializer
  %i.ma = select <4 x i1> %i.lz, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.mb = fadd <4 x double> %i.ly, %i.ma          ; 2 uses
  %i.mc = fcmp oge <4 x double> %i.mb, %i.kp
  %i.md = select <4 x i1> %i.mc, <4 x double> %i.mb, <4 x double> %i.kp ; 2 uses
  %i.me = fcmp ogt <4 x double> %i.md, %i.ko
  %i.mf = select <4 x i1> %i.me, <4 x double> %i.ko, <4 x double> %i.md
  %i.mg = fptosi <4 x double> %i.mf to <4 x i32>
  store <4 x i32> %i.mg, ptr %i.li, align 4, !tbaa !51
  %i.mh = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.mi = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.mj = load <4 x float>, ptr %i.lu, align 4, !tbaa !94
  %i.mk = fpext <4 x float> %i.mj to <4 x double>
  %i.ml = fmul <4 x double> %i.ko, %i.mk          ; 2 uses
  %i.mm = fcmp olt <4 x double> %i.ml, zeroinitializer
  %i.mn = select <4 x i1> %i.mm, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.mo = fadd <4 x double> %i.ml, %i.mn          ; 2 uses
  %i.mp = fcmp oge <4 x double> %i.mo, %i.kp
  %i.mq = select <4 x i1> %i.mp, <4 x double> %i.mo, <4 x double> %i.kp ; 2 uses
  %i.mr = fcmp ogt <4 x double> %i.mq, %i.ko
  %i.ms = select <4 x i1> %i.mr, <4 x double> %i.ko, <4 x double> %i.mq
  %i.mt = fptosi <4 x double> %i.ms to <4 x i32>
  store <4 x i32> %i.mt, ptr %i.lv, align 4, !tbaa !51
  %i.mu = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.091144, i64 64 ; 2 uses
  %i.mw = load <4 x float>, ptr %i.mh, align 4, !tbaa !94
  %i.mx = fpext <4 x float> %i.mw to <4 x double>
  %i.my = fmul <4 x double> %i.ko, %i.mx          ; 2 uses
  %i.mz = fcmp olt <4 x double> %i.my, zeroinitializer
  %i.na = select <4 x i1> %i.mz, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.nb = fadd <4 x double> %i.my, %i.na          ; 2 uses
  %i.nc = fcmp oge <4 x double> %i.nb, %i.kp
  %i.nd = select <4 x i1> %i.nc, <4 x double> %i.nb, <4 x double> %i.kp ; 2 uses
  %i.ne = fcmp ogt <4 x double> %i.nd, %i.ko
  %i.nf = select <4 x i1> %i.ne, <4 x double> %i.ko, <4 x double> %i.nd
  %i.ng = fptosi <4 x double> %i.nf to <4 x i32>
  store <4 x i32> %i.ng, ptr %i.mi, align 4, !tbaa !51
  %i.nh = add i64 %.093143, -16                   ; 3 uses
  %i.ni = icmp ugt i64 %i.nh, 15
  br i1 %i.ni, label %.lr.ph, label %.preheader, !llvm.loop !1056

.lr.ph152:                                        ; preds = %.lr.ph152.preheader185, %.lr.ph152
  %.1151 = phi ptr [ %i.nk, %.lr.ph152 ], [ %.1151.ph, %.lr.ph152.preheader185 ] ; 2 uses
  %.192150 = phi ptr [ %i.nt, %.lr.ph152 ], [ %.192150.ph, %.lr.ph152.preheader185 ] ; 2 uses
  %.194149 = phi i64 [ %i.nj, %.lr.ph152 ], [ %.194149.ph, %.lr.ph152.preheader185 ]
  %i.nj = add i64 %.194149, -1                    ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.nl = load float, ptr %.1151, align 4, !tbaa !94
  %i.nm = fpext float %i.nl to double
  %i.nn = fmul double %i.d, %i.nm                 ; 2 uses
  %i.no = fcmp olt double %i.nn, 0.000000e+00
  %i.np = select i1 %i.no, double -5.000000e-01, double 5.000000e-01
  %i.nq = fadd double %i.nn, %i.np                ; 2 uses
  %.inv.i140 = fcmp oge double %i.nq, %i.lg
  %.0.i.i141 = select i1 %.inv.i140, double %i.nq, double %i.lg ; 2 uses
  %i.nr = fcmp ogt double %.0.i.i141, %i.d
  %.1.i.i142 = select i1 %i.nr, double %i.d, double %.0.i.i141
  %i.ns = fptosi double %.1.i.i142 to i32
  %i.nt = getelementptr inbounds nuw i8, ptr %.192150, i64 4
  store i32 %i.ns, ptr %.192150, align 4, !tbaa !51
  %.not = icmp eq i64 %i.nj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1057

._crit_edge:                                      ; preds = %.lr.ph152, %middle.block180, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfdEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %i.an, %.lr.ph ] ; 5 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.055.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.165.prol = phi ptr [ %i.c, %.lr.ph66.prol ], [ %.0.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15464.prol = phi ptr [ %i.f, %.lr.ph66.prol ], [ %.053.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15663.prol = phi i64 [ %i.b, %.lr.ph66.prol ], [ %.055.lcssa, %.lr.ph66.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.b = add i64 %.15663.prol, -1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.165.prol, i64 4 ; 2 uses
  %i.d = load float, ptr %.165.prol, align 4, !tbaa !94
  %i.e = fpext float %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %.15464.prol, i64 8 ; 2 uses
  store double %i.e, ptr %.15464.prol, align 8, !tbaa !78
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !1058

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.c, %.lr.ph66.prol ]
  %.15464.unr = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.f, %.lr.ph66.prol ]
  %.15663.unr = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.b, %.lr.ph66.prol ]
  %i.g = icmp ult i64 %.055.lcssa, 4
  br i1 %i.g, label %._crit_edge, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %i.aj, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.05358 = phi ptr [ %i.ak, %.lr.ph ], [ %1, %bb.a ] ; 9 uses
  %.05557 = phi i64 [ %i.an, %.lr.ph ], [ %2, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  %i.j = load <2 x float>, ptr %.059, align 4, !tbaa !94
  %i.k = fpext <2 x float> %i.j to <2 x double>
  store <2 x double> %i.k, ptr %.05358, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  %i.n = load <2 x float>, ptr %i.h, align 4, !tbaa !94
  %i.o = fpext <2 x float> %i.n to <2 x double>
  store <2 x double> %i.o, ptr %i.i, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %.059, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  %i.r = load <2 x float>, ptr %i.l, align 4, !tbaa !94
  %i.s = fpext <2 x float> %i.r to <2 x double>
  store <2 x double> %i.s, ptr %i.m, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.05358, i64 64
  %i.v = load <2 x float>, ptr %i.p, align 4, !tbaa !94
  %i.w = fpext <2 x float> %i.v to <2 x double>
  store <2 x double> %i.w, ptr %i.q, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %.059, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.05358, i64 80
  %i.z = load <2 x float>, ptr %i.t, align 4, !tbaa !94
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  store <2 x double> %i.aa, ptr %i.u, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %.059, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.05358, i64 96
  %i.ad = load <2 x float>, ptr %i.x, align 4, !tbaa !94
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  store <2 x double> %i.ae, ptr %i.y, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %.059, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.05358, i64 112
  %i.ah = load <2 x float>, ptr %i.ab, align 4, !tbaa !94
  %i.ai = fpext <2 x float> %i.ah to <2 x double>
  store <2 x double> %i.ai, ptr %i.ac, align 8, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05358, i64 128 ; 2 uses
  %i.al = load <2 x float>, ptr %i.af, align 4, !tbaa !94
  %i.am = fpext <2 x float> %i.al to <2 x double>
  store <2 x double> %i.am, ptr %i.ag, align 8, !tbaa !78
  %i.an = add i64 %.05557, -16                    ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.lr.ph, label %.preheader, !llvm.loop !1059

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.bc, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15464 = phi ptr [ %i.bf, %.lr.ph66 ], [ %.15464.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15663 = phi i64 [ %i.bb, %.lr.ph66 ], [ %.15663.unr, %.lr.ph66.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.165, i64 4
  %i.aq = load float, ptr %.165, align 4, !tbaa !94
  %i.ar = fpext float %i.aq to double
  %i.as = getelementptr inbounds nuw i8, ptr %.15464, i64 8
  store double %i.ar, ptr %.15464, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %i.au = load float, ptr %i.ap, align 4, !tbaa !94
  %i.av = fpext float %i.au to double
  %i.aw = getelementptr inbounds nuw i8, ptr %.15464, i64 16
  store double %i.av, ptr %i.as, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %.165, i64 12
  %i.ay = load float, ptr %i.at, align 4, !tbaa !94
  %i.az = fpext float %i.ay to double
  %i.ba = getelementptr inbounds nuw i8, ptr %.15464, i64 24
  store double %i.az, ptr %i.aw, align 8, !tbaa !78
  %i.bb = add i64 %.15663, -4                     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.165, i64 16
  %i.bd = load float, ptr %i.ax, align 4, !tbaa !94
  %i.be = fpext float %i.bd to double
  %i.bf = getelementptr inbounds nuw i8, ptr %.15464, i64 32
  store double %i.be, ptr %i.ba, align 8, !tbaa !78
  %.not.3 = icmp eq i64 %i.bb, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph66, !llvm.loop !1060

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIflEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i64 %3 to double                  ; 3 uses
  %i.b = sitofp i64 %4 to double                  ; 4 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = insertelement <2 x double> poison, double %i.b, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 24 uses
  %i.f = insertelement <2 x double> poison, double %i.a, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 16 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.cv, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.cu, %.lr.ph ]
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0145 = phi ptr [ %i.cu, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %.091144 = phi ptr [ %i.cv, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.093143 = phi i64 [ %i.dh, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.j = load <2 x float>, ptr %.0145, align 4, !tbaa !94
  %i.k = fpext <2 x float> %i.j to <2 x double>
  %i.l = fmul <2 x double> %i.e, %i.k             ; 2 uses
  %i.m = fcmp olt <2 x double> %i.l, zeroinitializer
  %i.n = select <2 x i1> %i.m, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.o = fadd <2 x double> %i.l, %i.n             ; 2 uses
  %i.p = fcmp oge <2 x double> %i.o, %i.g
  %i.q = select <2 x i1> %i.p, <2 x double> %i.o, <2 x double> %i.g ; 2 uses
  %i.r = fcmp ogt <2 x double> %i.q, %i.e
  %i.s = select <2 x i1> %i.r, <2 x double> %i.e, <2 x double> %i.q
  %i.t = fptosi <2 x double> %i.s to <2 x i64>
  store <2 x i64> %i.t, ptr %.091144, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.w = load <2 x float>, ptr %i.h, align 4, !tbaa !94
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = fmul <2 x double> %i.e, %i.x             ; 2 uses
  %i.z = fcmp olt <2 x double> %i.y, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ab = fadd <2 x double> %i.y, %i.aa           ; 2 uses
  %i.ac = fcmp oge <2 x double> %i.ab, %i.g
  %i.ad = select <2 x i1> %i.ac, <2 x double> %i.ab, <2 x double> %i.g ; 2 uses
  %i.ae = fcmp ogt <2 x double> %i.ad, %i.e
  %i.af = select <2 x i1> %i.ae, <2 x double> %i.e, <2 x double> %i.ad
  %i.ag = fptosi <2 x double> %i.af to <2 x i64>
  store <2 x i64> %i.ag, ptr %i.i, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.aj = load <2 x float>, ptr %i.u, align 4, !tbaa !94
  %i.ak = fpext <2 x float> %i.aj to <2 x double>
  %i.al = fmul <2 x double> %i.e, %i.ak           ; 2 uses
  %i.am = fcmp olt <2 x double> %i.al, zeroinitializer
  %i.an = select <2 x i1> %i.am, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ao = fadd <2 x double> %i.al, %i.an          ; 2 uses
  %i.ap = fcmp oge <2 x double> %i.ao, %i.g
  %i.aq = select <2 x i1> %i.ap, <2 x double> %i.ao, <2 x double> %i.g ; 2 uses
  %i.ar = fcmp ogt <2 x double> %i.aq, %i.e
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.e, <2 x double> %i.aq
  %i.at = fptosi <2 x double> %i.as to <2 x i64>
  store <2 x i64> %i.at, ptr %i.v, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.091144, i64 64
  %i.aw = load <2 x float>, ptr %i.ah, align 4, !tbaa !94
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fmul <2 x double> %i.e, %i.ax           ; 2 uses
  %i.az = fcmp olt <2 x double> %i.ay, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bb = fadd <2 x double> %i.ay, %i.ba          ; 2 uses
  %i.bc = fcmp oge <2 x double> %i.bb, %i.g
  %i.bd = select <2 x i1> %i.bc, <2 x double> %i.bb, <2 x double> %i.g ; 2 uses
  %i.be = fcmp ogt <2 x double> %i.bd, %i.e
  %i.bf = select <2 x i1> %i.be, <2 x double> %i.e, <2 x double> %i.bd
  %i.bg = fptosi <2 x double> %i.bf to <2 x i64>
  store <2 x i64> %i.bg, ptr %i.ai, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %.0145, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %.091144, i64 80
  %i.bj = load <2 x float>, ptr %i.au, align 4, !tbaa !94
  %i.bk = fpext <2 x float> %i.bj to <2 x double>
  %i.bl = fmul <2 x double> %i.e, %i.bk           ; 2 uses
  %i.bm = fcmp olt <2 x double> %i.bl, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bo = fadd <2 x double> %i.bl, %i.bn          ; 2 uses
  %i.bp = fcmp oge <2 x double> %i.bo, %i.g
  %i.bq = select <2 x i1> %i.bp, <2 x double> %i.bo, <2 x double> %i.g ; 2 uses
  %i.br = fcmp ogt <2 x double> %i.bq, %i.e
  %i.bs = select <2 x i1> %i.br, <2 x double> %i.e, <2 x double> %i.bq
  %i.bt = fptosi <2 x double> %i.bs to <2 x i64>
  store <2 x i64> %i.bt, ptr %i.av, align 8, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.091144, i64 96
  %i.bw = load <2 x float>, ptr %i.bh, align 4, !tbaa !94
  %i.bx = fpext <2 x float> %i.bw to <2 x double>
  %i.by = fmul <2 x double> %i.e, %i.bx           ; 2 uses
  %i.bz = fcmp olt <2 x double> %i.by, zeroinitializer
  %i.ca = select <2 x i1> %i.bz, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cb = fadd <2 x double> %i.by, %i.ca          ; 2 uses
  %i.cc = fcmp oge <2 x double> %i.cb, %i.g
  %i.cd = select <2 x i1> %i.cc, <2 x double> %i.cb, <2 x double> %i.g ; 2 uses
  %i.ce = fcmp ogt <2 x double> %i.cd, %i.e
  %i.cf = select <2 x i1> %i.ce, <2 x double> %i.e, <2 x double> %i.cd
  %i.cg = fptosi <2 x double> %i.cf to <2 x i64>
  store <2 x i64> %i.cg, ptr %i.bi, align 8, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %.0145, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %.091144, i64 112
  %i.cj = load <2 x float>, ptr %i.bu, align 4, !tbaa !94
  %i.ck = fpext <2 x float> %i.cj to <2 x double>
  %i.cl = fmul <2 x double> %i.e, %i.ck           ; 2 uses
  %i.cm = fcmp olt <2 x double> %i.cl, zeroinitializer
  %i.cn = select <2 x i1> %i.cm, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.co = fadd <2 x double> %i.cl, %i.cn          ; 2 uses
  %i.cp = fcmp oge <2 x double> %i.co, %i.g
  %i.cq = select <2 x i1> %i.cp, <2 x double> %i.co, <2 x double> %i.g ; 2 uses
  %i.cr = fcmp ogt <2 x double> %i.cq, %i.e
  %i.cs = select <2 x i1> %i.cr, <2 x double> %i.e, <2 x double> %i.cq
  %i.ct = fptosi <2 x double> %i.cs to <2 x i64>
  store <2 x i64> %i.ct, ptr %i.bv, align 8, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.091144, i64 128 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.ch, align 4, !tbaa !94
  %i.cx = fpext <2 x float> %i.cw to <2 x double>
  %i.cy = fmul <2 x double> %i.e, %i.cx           ; 2 uses
  %i.cz = fcmp olt <2 x double> %i.cy, zeroinitializer
  %i.da = select <2 x i1> %i.cz, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.db = fadd <2 x double> %i.cy, %i.da          ; 2 uses
  %i.dc = fcmp oge <2 x double> %i.db, %i.g
  %i.dd = select <2 x i1> %i.dc, <2 x double> %i.db, <2 x double> %i.g ; 2 uses
  %i.de = fcmp ogt <2 x double> %i.dd, %i.e
  %i.df = select <2 x i1> %i.de, <2 x double> %i.e, <2 x double> %i.dd
  %i.dg = fptosi <2 x double> %i.df to <2 x i64>
  store <2 x i64> %i.dg, ptr %i.ci, align 8, !tbaa !83
  %i.dh = add i64 %.093143, -16                   ; 3 uses
  %i.di = icmp ugt i64 %i.dh, 15
  br i1 %i.di, label %.lr.ph, label %.preheader, !llvm.loop !1061

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.1151 = phi ptr [ %i.dk, %.lr.ph152 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.192150 = phi ptr [ %i.dt, %.lr.ph152 ], [ %.091.lcssa, %.preheader ] ; 2 uses
  %.194149 = phi i64 [ %i.dj, %.lr.ph152 ], [ %.093.lcssa, %.preheader ]
  %i.dj = add i64 %.194149, -1                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.dl = load float, ptr %.1151, align 4, !tbaa !94
  %i.dm = fpext float %i.dl to double
  %i.dn = fmul double %i.b, %i.dm                 ; 2 uses
  %i.do = fcmp olt double %i.dn, 0.000000e+00
  %i.dp = select i1 %i.do, double -5.000000e-01, double 5.000000e-01
  %i.dq = fadd double %i.dn, %i.dp                ; 2 uses
  %.inv.i140 = fcmp oge double %i.dq, %i.a
  %.0.i.i141 = select i1 %.inv.i140, double %i.dq, double %i.a ; 2 uses
  %i.dr = fcmp ogt double %.0.i.i141, %i.b
  %.1.i.i142 = select i1 %i.dr, double %i.b, double %.0.i.i141
  %i.ds = fptosi double %.1.i.i142 to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.192150, i64 8
  store i64 %i.ds, ptr %.192150, align 8, !tbaa !83
  %.not = icmp eq i64 %i.dj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1062

._crit_edge:                                      ; preds = %.lr.ph152, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfmEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x i64> poison, i64 %4, i64 0
  %i.b = insertelement <2 x i64> %i.a, i64 %3, i64 1
  %i.c = uitofp <2 x i64> %i.b to <2 x double>    ; 4 uses
  %i.d = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  %i.e = extractelement <2 x double> %i.c, i64 0  ; 3 uses
  %i.f = icmp ugt i64 %2, 15
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer ; 24 uses
  %i.h = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 16 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.di, %.lr.ph ] ; 2 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.cw, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.cv, %.lr.ph ]
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0145 = phi ptr [ %i.cv, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %.091144 = phi ptr [ %i.cw, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.093143 = phi i64 [ %i.di, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.k = load <2 x float>, ptr %.0145, align 4, !tbaa !94
  %i.l = fpext <2 x float> %i.k to <2 x double>
  %i.m = fmul <2 x double> %i.g, %i.l             ; 2 uses
  %i.n = fcmp olt <2 x double> %i.m, zeroinitializer
  %i.o = select <2 x i1> %i.n, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.p = fadd <2 x double> %i.m, %i.o             ; 2 uses
  %i.q = fcmp oge <2 x double> %i.p, %i.h
  %i.r = select <2 x i1> %i.q, <2 x double> %i.p, <2 x double> %i.h ; 2 uses
  %i.s = fcmp ogt <2 x double> %i.r, %i.g
  %i.t = select <2 x i1> %i.s, <2 x double> %i.g, <2 x double> %i.r
  %i.u = fptoui <2 x double> %i.t to <2 x i64>
  store <2 x i64> %i.u, ptr %.091144, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.x = load <2 x float>, ptr %i.i, align 4, !tbaa !94
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = fmul <2 x double> %i.g, %i.y             ; 2 uses
  %i.aa = fcmp olt <2 x double> %i.z, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ac = fadd <2 x double> %i.z, %i.ab           ; 2 uses
  %i.ad = fcmp oge <2 x double> %i.ac, %i.h
  %i.ae = select <2 x i1> %i.ad, <2 x double> %i.ac, <2 x double> %i.h ; 2 uses
  %i.af = fcmp ogt <2 x double> %i.ae, %i.g
  %i.ag = select <2 x i1> %i.af, <2 x double> %i.g, <2 x double> %i.ae
  %i.ah = fptoui <2 x double> %i.ag to <2 x i64>
  store <2 x i64> %i.ah, ptr %i.j, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.ak = load <2 x float>, ptr %i.v, align 4, !tbaa !94
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fmul <2 x double> %i.g, %i.al           ; 2 uses
  %i.an = fcmp olt <2 x double> %i.am, zeroinitializer
  %i.ao = select <2 x i1> %i.an, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ap = fadd <2 x double> %i.am, %i.ao          ; 2 uses
  %i.aq = fcmp oge <2 x double> %i.ap, %i.h
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.h ; 2 uses
  %i.as = fcmp ogt <2 x double> %i.ar, %i.g
  %i.at = select <2 x i1> %i.as, <2 x double> %i.g, <2 x double> %i.ar
  %i.au = fptoui <2 x double> %i.at to <2 x i64>
  store <2 x i64> %i.au, ptr %i.w, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.091144, i64 64
  %i.ax = load <2 x float>, ptr %i.ai, align 4, !tbaa !94
  %i.ay = fpext <2 x float> %i.ax to <2 x double>
  %i.az = fmul <2 x double> %i.g, %i.ay           ; 2 uses
  %i.ba = fcmp olt <2 x double> %i.az, zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bc = fadd <2 x double> %i.az, %i.bb          ; 2 uses
  %i.bd = fcmp oge <2 x double> %i.bc, %i.h
  %i.be = select <2 x i1> %i.bd, <2 x double> %i.bc, <2 x double> %i.h ; 2 uses
  %i.bf = fcmp ogt <2 x double> %i.be, %i.g
  %i.bg = select <2 x i1> %i.bf, <2 x double> %i.g, <2 x double> %i.be
  %i.bh = fptoui <2 x double> %i.bg to <2 x i64>
  store <2 x i64> %i.bh, ptr %i.aj, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %.0145, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.091144, i64 80
  %i.bk = load <2 x float>, ptr %i.av, align 4, !tbaa !94
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  %i.bm = fmul <2 x double> %i.g, %i.bl           ; 2 uses
  %i.bn = fcmp olt <2 x double> %i.bm, zeroinitializer
  %i.bo = select <2 x i1> %i.bn, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bp = fadd <2 x double> %i.bm, %i.bo          ; 2 uses
  %i.bq = fcmp oge <2 x double> %i.bp, %i.h
  %i.br = select <2 x i1> %i.bq, <2 x double> %i.bp, <2 x double> %i.h ; 2 uses
  %i.bs = fcmp ogt <2 x double> %i.br, %i.g
  %i.bt = select <2 x i1> %i.bs, <2 x double> %i.g, <2 x double> %i.br
  %i.bu = fptoui <2 x double> %i.bt to <2 x i64>
  store <2 x i64> %i.bu, ptr %i.aw, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %.091144, i64 96
  %i.bx = load <2 x float>, ptr %i.bi, align 4, !tbaa !94
  %i.by = fpext <2 x float> %i.bx to <2 x double>
  %i.bz = fmul <2 x double> %i.g, %i.by           ; 2 uses
  %i.ca = fcmp olt <2 x double> %i.bz, zeroinitializer
  %i.cb = select <2 x i1> %i.ca, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cc = fadd <2 x double> %i.bz, %i.cb          ; 2 uses
  %i.cd = fcmp oge <2 x double> %i.cc, %i.h
  %i.ce = select <2 x i1> %i.cd, <2 x double> %i.cc, <2 x double> %i.h ; 2 uses
  %i.cf = fcmp ogt <2 x double> %i.ce, %i.g
  %i.cg = select <2 x i1> %i.cf, <2 x double> %i.g, <2 x double> %i.ce
  %i.ch = fptoui <2 x double> %i.cg to <2 x i64>
  store <2 x i64> %i.ch, ptr %i.bj, align 8, !tbaa !83
  %i.ci = getelementptr inbounds nuw i8, ptr %.0145, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %.091144, i64 112
  %i.ck = load <2 x float>, ptr %i.bv, align 4, !tbaa !94
  %i.cl = fpext <2 x float> %i.ck to <2 x double>
  %i.cm = fmul <2 x double> %i.g, %i.cl           ; 2 uses
  %i.cn = fcmp olt <2 x double> %i.cm, zeroinitializer
  %i.co = select <2 x i1> %i.cn, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cp = fadd <2 x double> %i.cm, %i.co          ; 2 uses
  %i.cq = fcmp oge <2 x double> %i.cp, %i.h
  %i.cr = select <2 x i1> %i.cq, <2 x double> %i.cp, <2 x double> %i.h ; 2 uses
  %i.cs = fcmp ogt <2 x double> %i.cr, %i.g
  %i.ct = select <2 x i1> %i.cs, <2 x double> %i.g, <2 x double> %i.cr
  %i.cu = fptoui <2 x double> %i.ct to <2 x i64>
  store <2 x i64> %i.cu, ptr %i.bw, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.091144, i64 128 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.ci, align 4, !tbaa !94
  %i.cy = fpext <2 x float> %i.cx to <2 x double>
  %i.cz = fmul <2 x double> %i.g, %i.cy           ; 2 uses
  %i.da = fcmp olt <2 x double> %i.cz, zeroinitializer
  %i.db = select <2 x i1> %i.da, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.dc = fadd <2 x double> %i.cz, %i.db          ; 2 uses
  %i.dd = fcmp oge <2 x double> %i.dc, %i.h
  %i.de = select <2 x i1> %i.dd, <2 x double> %i.dc, <2 x double> %i.h ; 2 uses
  %i.df = fcmp ogt <2 x double> %i.de, %i.g
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.g, <2 x double> %i.de
  %i.dh = fptoui <2 x double> %i.dg to <2 x i64>
  store <2 x i64> %i.dh, ptr %i.cj, align 8, !tbaa !83
  %i.di = add i64 %.093143, -16                   ; 3 uses
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.lr.ph, label %.preheader, !llvm.loop !1063

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.1151 = phi ptr [ %i.dl, %.lr.ph152 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.192150 = phi ptr [ %i.du, %.lr.ph152 ], [ %.091.lcssa, %.preheader ] ; 2 uses
  %.194149 = phi i64 [ %i.dk, %.lr.ph152 ], [ %.093.lcssa, %.preheader ]
  %i.dk = add i64 %.194149, -1                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.dm = load float, ptr %.1151, align 4, !tbaa !94
  %i.dn = fpext float %i.dm to double
  %i.do = fmul double %i.e, %i.dn                 ; 2 uses
  %i.dp = fcmp olt double %i.do, 0.000000e+00
  %i.dq = select i1 %i.dp, double -5.000000e-01, double 5.000000e-01
  %i.dr = fadd double %i.do, %i.dq                ; 2 uses
  %.inv.i140 = fcmp oge double %i.dr, %i.d
  %.0.i.i141 = select i1 %.inv.i140, double %i.dr, double %i.d ; 2 uses
  %i.ds = fcmp ogt double %.0.i.i141, %i.e
  %.1.i.i142 = select i1 %i.ds, double %i.e, double %.0.i.i141
  %i.dt = fptoui double %.1.i.i142 to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.192150, i64 8
  store i64 %i.dt, ptr %.192150, align 8, !tbaa !83
  %.not = icmp eq i64 %i.dk, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1064

._crit_edge:                                      ; preds = %.lr.ph152, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E9_M_invokeERKSt9_Any_dataOlSD_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !141   ; 5 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !83   ; 3 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !83
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1066
  %i.b = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.val3
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1067
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !90
  %narrow.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %spec.select.i.i.i.i = zext nneg i32 %narrow.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 17
  %i.i = load i8, ptr %i.h, align 1, !tbaa !91
  %i.j = zext i8 %i.i to i64
  %i.k = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.e) #39
  %i.l = mul i64 %.val3, %i.j
  %i.m = mul i64 %i.l, %i.k
  %i.n = mul i64 %i.m, %spec.select.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  %i.p = sub nsw i64 %.val4, %.val3
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.e, align 8
  %i.q = tail call noundef ptr @_ZN11OpenImageIO4v3_13pvt18convert_from_floatEPKfPvmNS0_8TypeDescE(ptr noundef %i.b, ptr noundef %i.o, i64 noundef %i.p, i64 %.sroa.0.0.copyload.i.i.i) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS0_8TypeDescEE3$_0", ptr %0, align 8, !tbaa !307
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !141
  store ptr %.val, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1068
  store ptr %i.a, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !141 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #40
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfcEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3, i8 noundef signext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i8 %3 to float                    ; 36 uses
  %i.b = sitofp i8 %4 to float                    ; 53 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %2, -16                          ; 2 uses
  %i.e = lshr i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %.lr.ph.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = add i64 %2, -16                          ; 2 uses
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 16
  %i.j = shl i64 %i.g, 2
  %i.k = and i64 %i.j, -64
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %scevgep160 = getelementptr i8, ptr %i.l, i64 64
  %bound0 = icmp ult ptr %1, %scevgep160
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2305843009213693948      ; 5 uses
  %i.m = shl i64 %n.vec, 6
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = shl i64 %n.vec, 4
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 2 uses
  %i.q = shl i64 %n.vec, 4
  %i.r = sub i64 %2, %i.q                         ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 48 uses
  %broadcast.splatinsert161 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat162 = shufflevector <4 x float> %broadcast.splatinsert161, <4 x float> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 6                        ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.s  ; 16 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep163 = getelementptr i8, ptr %i.t, i64 64
  %i.u = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep164 = getelementptr i8, ptr %i.u, i64 128
  %i.v = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep165 = getelementptr i8, ptr %i.v, i64 192
  %i.w = shl i64 %index, 4                        ; 4 uses
  %next.gep166 = getelementptr i8, ptr %1, i64 %i.w ; 16 uses
  %i.x = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep167 = getelementptr i8, ptr %i.x, i64 16
  %i.y = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep168 = getelementptr i8, ptr %i.y, i64 32
  %i.z = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep169 = getelementptr i8, ptr %i.z, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ab = getelementptr i8, ptr %i.t, i64 68
  %i.ac = getelementptr i8, ptr %i.u, i64 132
  %i.ad = getelementptr i8, ptr %i.v, i64 196
  %i.ae = load float, ptr %next.gep, align 4, !tbaa !94, !alias.scope !1079
  %i.af = load float, ptr %next.gep163, align 4, !tbaa !94, !alias.scope !1079
  %i.ag = load float, ptr %next.gep164, align 4, !tbaa !94, !alias.scope !1079
  %i.ah = load float, ptr %next.gep165, align 4, !tbaa !94, !alias.scope !1079
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = fmul <4 x float> %i.al, %broadcast.splat ; 2 uses
  %i.an = fcmp olt <4 x float> %i.am, zeroinitializer
  %i.ao = select <4 x i1> %i.an, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ap = fadd <4 x float> %i.am, %i.ao           ; 2 uses
  %i.aq = fcmp oge <4 x float> %i.ap, %broadcast.splat162
  %i.ar = select <4 x i1> %i.aq, <4 x float> %i.ap, <4 x float> %broadcast.splat162 ; 2 uses
  %i.as = fcmp ogt <4 x float> %i.ar, %broadcast.splat
  %i.at = select <4 x i1> %i.as, <4 x float> %broadcast.splat, <4 x float> %i.ar
  %i.au = fptosi <4 x float> %i.at to <4 x i8>    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep166, i64 1
  %i.aw = getelementptr i8, ptr %i.x, i64 17
  %i.ax = getelementptr i8, ptr %i.y, i64 33
  %i.ay = getelementptr i8, ptr %i.z, i64 49
  %i.az = extractelement <4 x i8> %i.au, i64 0
  store i8 %i.az, ptr %next.gep166, align 1, !tbaa !68, !alias.scope !1080, !noalias !1079
  %i.ba = extractelement <4 x i8> %i.au, i64 1
  store i8 %i.ba, ptr %next.gep167, align 1, !tbaa !68, !alias.scope !1080, !noalias !1079
  %i.bb = extractelement <4 x i8> %i.au, i64 2
  store i8 %i.bb, ptr %next.gep168, align 1, !tbaa !68, !alias.scope !1080, !noalias !1079
  %i.bc = extractelement <4 x i8> %i.au, i64 3
  store i8 %i.bc, ptr %next.gep169, align 1, !tbaa !68, !alias.scope !1080, !noalias !1079
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.be = getelementptr i8, ptr %i.t, i64 72
  %i.bf = getelementptr i8, ptr %i.u, i64 136
  %i.bg = getelementptr i8, ptr %i.v, i64 200
  %i.bh = load float, ptr %i.aa, align 4, !tbaa !94, !alias.scope !1079
  %i.bi = load float, ptr %i.ab, align 4, !tbaa !94, !alias.scope !1079
  %i.bj = load float, ptr %i.ac, align 4, !tbaa !94, !alias.scope !1079
  %i.bk = load float, ptr %i.ad, align 4, !tbaa !94, !alias.scope !1079
  %i.bl = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 1
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 2
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 3
  %i.bp = fmul <4 x float> %i.bo, %broadcast.splat ; 2 uses
  %i.bq = fcmp olt <4 x float> %i.bp, zeroinitializer
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_112convert_typeIfcEEvPKT_PT0_mS5_S5_:bb.a
  %i.sr = fcmp olt float %i.sq, 0.000000e+00
  %i.ss = select i1 %i.sr, float -5.000000e-01, float 5.000000e-01
  %i.st = fadd float %i.sq, %i.ss                 ; 2 uses
  %.inv.i95 = fcmp oge float %i.st, %i.a
  %.0.i.i96 = select i1 %.inv.i95, float %i.st, float %i.a ; 2 uses
  %i.su = fcmp ogt float %.0.i.i96, %i.b
  %.1.i.i97 = select i1 %i.su, float %i.b, float %.0.i.i96
  %i.sv = fptosi float %.1.i.i97 to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %.091144, i64 2
  store i8 %i.sv, ptr %i.sn, align 1, !tbaa !68
  %i.sx = getelementptr inbounds nuw i8, ptr %.0145, i64 12
  %i.sy = load float, ptr %i.so, align 4, !tbaa !94
  %i.sz = fmul float %i.sy, %i.b                  ; 2 uses
  %i.ta = fcmp olt float %i.sz, 0.000000e+00
  %i.tb = select i1 %i.ta, float -5.000000e-01, float 5.000000e-01
  %i.tc = fadd float %i.sz, %i.tb                 ; 2 uses
  %.inv.i98 = fcmp oge float %i.tc, %i.a
  %.0.i.i99 = select i1 %.inv.i98, float %i.tc, float %i.a ; 2 uses
  %i.td = fcmp ogt float %.0.i.i99, %i.b
  %.1.i.i100 = select i1 %i.td, float %i.b, float %.0.i.i99
  %i.te = fptosi float %.1.i.i100 to i8
  %i.tf = getelementptr inbounds nuw i8, ptr %.091144, i64 3
  store i8 %i.te, ptr %i.sw, align 1, !tbaa !68
  %i.tg = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.th = load float, ptr %i.sx, align 4, !tbaa !94
  %i.ti = fmul float %i.th, %i.b                  ; 2 uses
  %i.tj = fcmp olt float %i.ti, 0.000000e+00
  %i.tk = select i1 %i.tj, float -5.000000e-01, float 5.000000e-01
  %i.tl = fadd float %i.ti, %i.tk                 ; 2 uses
  %.inv.i101 = fcmp oge float %i.tl, %i.a
  %.0.i.i102 = select i1 %.inv.i101, float %i.tl, float %i.a ; 2 uses
  %i.tm = fcmp ogt float %.0.i.i102, %i.b
  %.1.i.i103 = select i1 %i.tm, float %i.b, float %.0.i.i102
  %i.tn = fptosi float %.1.i.i103 to i8
  %i.to = getelementptr inbounds nuw i8, ptr %.091144, i64 4
  store i8 %i.tn, ptr %i.tf, align 1, !tbaa !68
  %i.tp = getelementptr inbounds nuw i8, ptr %.0145, i64 20
  %i.tq = load float, ptr %i.tg, align 4, !tbaa !94
  %i.tr = fmul float %i.tq, %i.b                  ; 2 uses
  %i.ts = fcmp olt float %i.tr, 0.000000e+00
  %i.tt = select i1 %i.ts, float -5.000000e-01, float 5.000000e-01
  %i.tu = fadd float %i.tr, %i.tt                 ; 2 uses
  %.inv.i104 = fcmp oge float %i.tu, %i.a
  %.0.i.i105 = select i1 %.inv.i104, float %i.tu, float %i.a ; 2 uses
  %i.tv = fcmp ogt float %.0.i.i105, %i.b
  %.1.i.i106 = select i1 %i.tv, float %i.b, float %.0.i.i105
  %i.tw = fptosi float %.1.i.i106 to i8
  %i.tx = getelementptr inbounds nuw i8, ptr %.091144, i64 5
  store i8 %i.tw, ptr %i.to, align 1, !tbaa !68
  %i.ty = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %i.tz = load float, ptr %i.tp, align 4, !tbaa !94
  %i.ua = fmul float %i.tz, %i.b                  ; 2 uses
  %i.ub = fcmp olt float %i.ua, 0.000000e+00
  %i.uc = select i1 %i.ub, float -5.000000e-01, float 5.000000e-01
  %i.ud = fadd float %i.ua, %i.uc                 ; 2 uses
  %.inv.i107 = fcmp oge float %i.ud, %i.a
  %.0.i.i108 = select i1 %.inv.i107, float %i.ud, float %i.a ; 2 uses
  %i.ue = fcmp ogt float %.0.i.i108, %i.b
  %.1.i.i109 = select i1 %i.ue, float %i.b, float %.0.i.i108
  %i.uf = fptosi float %.1.i.i109 to i8
  %i.ug = getelementptr inbounds nuw i8, ptr %.091144, i64 6
  store i8 %i.uf, ptr %i.tx, align 1, !tbaa !68
  %i.uh = getelementptr inbounds nuw i8, ptr %.0145, i64 28
  %i.ui = load float, ptr %i.ty, align 4, !tbaa !94
  %i.uj = fmul float %i.ui, %i.b                  ; 2 uses
  %i.uk = fcmp olt float %i.uj, 0.000000e+00
  %i.ul = select i1 %i.uk, float -5.000000e-01, float 5.000000e-01
  %i.um = fadd float %i.uj, %i.ul                 ; 2 uses
  %.inv.i110 = fcmp oge float %i.um, %i.a
  %.0.i.i111 = select i1 %.inv.i110, float %i.um, float %i.a ; 2 uses
  %i.un = fcmp ogt float %.0.i.i111, %i.b
  %.1.i.i112 = select i1 %i.un, float %i.b, float %.0.i.i111
  %i.uo = fptosi float %.1.i.i112 to i8
  %i.up = getelementptr inbounds nuw i8, ptr %.091144, i64 7
  store i8 %i.uo, ptr %i.ug, align 1, !tbaa !68
  %i.uq = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.ur = load float, ptr %i.uh, align 4, !tbaa !94
  %i.us = fmul float %i.ur, %i.b                  ; 2 uses
  %i.ut = fcmp olt float %i.us, 0.000000e+00
  %i.uu = select i1 %i.ut, float -5.000000e-01, float 5.000000e-01
  %i.uv = fadd float %i.us, %i.uu                 ; 2 uses
  %.inv.i113 = fcmp oge float %i.uv, %i.a
  %.0.i.i114 = select i1 %.inv.i113, float %i.uv, float %i.a ; 2 uses
  %i.uw = fcmp ogt float %.0.i.i114, %i.b
  %.1.i.i115 = select i1 %i.uw, float %i.b, float %.0.i.i114
  %i.ux = fptosi float %.1.i.i115 to i8
  %i.uy = getelementptr inbounds nuw i8, ptr %.091144, i64 8
  store i8 %i.ux, ptr %i.up, align 1, !tbaa !68
  %i.uz = getelementptr inbounds nuw i8, ptr %.0145, i64 36
  %i.va = load float, ptr %i.uq, align 4, !tbaa !94
  %i.vb = fmul float %i.va, %i.b                  ; 2 uses
  %i.vc = fcmp olt float %i.vb, 0.000000e+00
  %i.vd = select i1 %i.vc, float -5.000000e-01, float 5.000000e-01
  %i.ve = fadd float %i.vb, %i.vd                 ; 2 uses
  %.inv.i116 = fcmp oge float %i.ve, %i.a
  %.0.i.i117 = select i1 %.inv.i116, float %i.ve, float %i.a ; 2 uses
  %i.vf = fcmp ogt float %.0.i.i117, %i.b
  %.1.i.i118 = select i1 %i.vf, float %i.b, float %.0.i.i117
  %i.vg = fptosi float %.1.i.i118 to i8
  %i.vh = getelementptr inbounds nuw i8, ptr %.091144, i64 9
  store i8 %i.vg, ptr %i.uy, align 1, !tbaa !68
  %i.vi = getelementptr inbounds nuw i8, ptr %.0145, i64 40
  %i.vj = load float, ptr %i.uz, align 4, !tbaa !94
  %i.vk = fmul float %i.vj, %i.b                  ; 2 uses
  %i.vl = fcmp olt float %i.vk, 0.000000e+00
  %i.vm = select i1 %i.vl, float -5.000000e-01, float 5.000000e-01
  %i.vn = fadd float %i.vk, %i.vm                 ; 2 uses
  %.inv.i119 = fcmp oge float %i.vn, %i.a
  %.0.i.i120 = select i1 %.inv.i119, float %i.vn, float %i.a ; 2 uses
  %i.vo = fcmp ogt float %.0.i.i120, %i.b
  %.1.i.i121 = select i1 %i.vo, float %i.b, float %.0.i.i120
  %i.vp = fptosi float %.1.i.i121 to i8
  %i.vq = getelementptr inbounds nuw i8, ptr %.091144, i64 10
  store i8 %i.vp, ptr %i.vh, align 1, !tbaa !68
  %i.vr = getelementptr inbounds nuw i8, ptr %.0145, i64 44
  %i.vs = load float, ptr %i.vi, align 4, !tbaa !94
  %i.vt = fmul float %i.vs, %i.b                  ; 2 uses
  %i.vu = fcmp olt float %i.vt, 0.000000e+00
  %i.vv = select i1 %i.vu, float -5.000000e-01, float 5.000000e-01
  %i.vw = fadd float %i.vt, %i.vv                 ; 2 uses
  %.inv.i122 = fcmp oge float %i.vw, %i.a
  %.0.i.i123 = select i1 %.inv.i122, float %i.vw, float %i.a ; 2 uses
  %i.vx = fcmp ogt float %.0.i.i123, %i.b
  %.1.i.i124 = select i1 %i.vx, float %i.b, float %.0.i.i123
  %i.vy = fptosi float %.1.i.i124 to i8
  %i.vz = getelementptr inbounds nuw i8, ptr %.091144, i64 11
  store i8 %i.vy, ptr %i.vq, align 1, !tbaa !68
  %i.wa = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.wb = load float, ptr %i.vr, align 4, !tbaa !94
  %i.wc = fmul float %i.wb, %i.b                  ; 2 uses
  %i.wd = fcmp olt float %i.wc, 0.000000e+00
  %i.we = select i1 %i.wd, float -5.000000e-01, float 5.000000e-01
  %i.wf = fadd float %i.wc, %i.we                 ; 2 uses
  %.inv.i125 = fcmp oge float %i.wf, %i.a
  %.0.i.i126 = select i1 %.inv.i125, float %i.wf, float %i.a ; 2 uses
  %i.wg = fcmp ogt float %.0.i.i126, %i.b
  %.1.i.i127 = select i1 %i.wg, float %i.b, float %.0.i.i126
  %i.wh = fptosi float %.1.i.i127 to i8
  %i.wi = getelementptr inbounds nuw i8, ptr %.091144, i64 12
  store i8 %i.wh, ptr %i.vz, align 1, !tbaa !68
  %i.wj = getelementptr inbounds nuw i8, ptr %.0145, i64 52
  %i.wk = load float, ptr %i.wa, align 4, !tbaa !94
  %i.wl = fmul float %i.wk, %i.b                  ; 2 uses
  %i.wm = fcmp olt float %i.wl, 0.000000e+00
  %i.wn = select i1 %i.wm, float -5.000000e-01, float 5.000000e-01
  %i.wo = fadd float %i.wl, %i.wn                 ; 2 uses
  %.inv.i128 = fcmp oge float %i.wo, %i.a
  %.0.i.i129 = select i1 %.inv.i128, float %i.wo, float %i.a ; 2 uses
  %i.wp = fcmp ogt float %.0.i.i129, %i.b
  %.1.i.i130 = select i1 %i.wp, float %i.b, float %.0.i.i129
  %i.wq = fptosi float %.1.i.i130 to i8
  %i.wr = getelementptr inbounds nuw i8, ptr %.091144, i64 13
  store i8 %i.wq, ptr %i.wi, align 1, !tbaa !68
  %i.ws = getelementptr inbounds nuw i8, ptr %.0145, i64 56
  %i.wt = load float, ptr %i.wj, align 4, !tbaa !94
  %i.wu = fmul float %i.wt, %i.b                  ; 2 uses
  %i.wv = fcmp olt float %i.wu, 0.000000e+00
  %i.ww = select i1 %i.wv, float -5.000000e-01, float 5.000000e-01
  %i.wx = fadd float %i.wu, %i.ww                 ; 2 uses
  %.inv.i131 = fcmp oge float %i.wx, %i.a
  %.0.i.i132 = select i1 %.inv.i131, float %i.wx, float %i.a ; 2 uses
  %i.wy = fcmp ogt float %.0.i.i132, %i.b
  %.1.i.i133 = select i1 %i.wy, float %i.b, float %.0.i.i132
  %i.wz = fptosi float %.1.i.i133 to i8
  %i.xa = getelementptr inbounds nuw i8, ptr %.091144, i64 14
  store i8 %i.wz, ptr %i.wr, align 1, !tbaa !68
  %i.xb = getelementptr inbounds nuw i8, ptr %.0145, i64 60
  %i.xc = load float, ptr %i.ws, align 4, !tbaa !94
  %i.xd = fmul float %i.xc, %i.b                  ; 2 uses
  %i.xe = fcmp olt float %i.xd, 0.000000e+00
  %i.xf = select i1 %i.xe, float -5.000000e-01, float 5.000000e-01
  %i.xg = fadd float %i.xd, %i.xf                 ; 2 uses
  %.inv.i134 = fcmp oge float %i.xg, %i.a
  %.0.i.i135 = select i1 %.inv.i134, float %i.xg, float %i.a ; 2 uses
  %i.xh = fcmp ogt float %.0.i.i135, %i.b
  %.1.i.i136 = select i1 %i.xh, float %i.b, float %.0.i.i135
  %i.xi = fptosi float %.1.i.i136 to i8
  %i.xj = getelementptr inbounds nuw i8, ptr %.091144, i64 15
  store i8 %i.xi, ptr %i.xa, align 1, !tbaa !68
  %i.xk = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.xl = load float, ptr %i.xb, align 4, !tbaa !94
  %i.xm = fmul float %i.xl, %i.b                  ; 2 uses
  %i.xn = fcmp olt float %i.xm, 0.000000e+00
  %i.xo = select i1 %i.xn, float -5.000000e-01, float 5.000000e-01
  %i.xp = fadd float %i.xm, %i.xo                 ; 2 uses
  %.inv.i137 = fcmp oge float %i.xp, %i.a
  %.0.i.i138 = select i1 %.inv.i137, float %i.xp, float %i.a ; 2 uses
  %i.xq = fcmp ogt float %.0.i.i138, %i.b
  %.1.i.i139 = select i1 %i.xq, float %i.b, float %.0.i.i138
  %i.xr = fptosi float %.1.i.i139 to i8
  %i.xs = getelementptr inbounds nuw i8, ptr %.091144, i64 16 ; 2 uses
  store i8 %i.xr, ptr %i.xj, align 1, !tbaa !68
  %i.xt = add i64 %.093143, -16                   ; 3 uses
  %i.xu = icmp ugt i64 %i.xt, 15
  br i1 %i.xu, label %.lr.ph, label %.preheader, !llvm.loop !1077

.lr.ph152:                                        ; preds = %.lr.ph152.preheader196, %.lr.ph152
  %.1151 = phi ptr [ %i.xw, %.lr.ph152 ], [ %.1151.ph, %.lr.ph152.preheader196 ] ; 2 uses
  %.192150 = phi ptr [ %i.ye, %.lr.ph152 ], [ %.192150.ph, %.lr.ph152.preheader196 ] ; 2 uses
  %.194149 = phi i64 [ %i.xv, %.lr.ph152 ], [ %.194149.ph, %.lr.ph152.preheader196 ]
  %i.xv = add i64 %.194149, -1                    ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.xx = load float, ptr %.1151, align 4, !tbaa !94
  %i.xy = fmul float %i.xx, %i.b                  ; 2 uses
  %i.xz = fcmp olt float %i.xy, 0.000000e+00
  %i.ya = select i1 %i.xz, float -5.000000e-01, float 5.000000e-01
  %i.yb = fadd float %i.xy, %i.ya                 ; 2 uses
  %.inv.i140 = fcmp oge float %i.yb, %i.a
  %.0.i.i141 = select i1 %.inv.i140, float %i.yb, float %i.a ; 2 uses
  %i.yc = fcmp ogt float %.0.i.i141, %i.b
  %.1.i.i142 = select i1 %i.yc, float %i.b, float %.0.i.i141
  %i.yd = fptosi float %.1.i.i142 to i8
  %i.ye = getelementptr inbounds nuw i8, ptr %.192150, i64 1
  store i8 %i.yd, ptr %.192150, align 1, !tbaa !68
  %.not = icmp eq i64 %i.xv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1078

._crit_edge:                                      ; preds = %.lr.ph152, %middle.block191, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfxEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i64 %3 to float                   ; 3 uses
  %i.b = sitofp i64 %4 to float                   ; 4 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = insertelement <2 x float> poison, float %i.b, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer ; 24 uses
  %i.f = insertelement <2 x float> poison, float %i.a, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer ; 16 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.cz, %.lr.ph ] ; 2 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.co, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.cn, %.lr.ph ]
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0145 = phi ptr [ %i.cn, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %.091144 = phi ptr [ %i.co, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.093143 = phi i64 [ %i.cz, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.j = load <2 x float>, ptr %.0145, align 4, !tbaa !94
  %i.k = fmul <2 x float> %i.j, %i.e              ; 2 uses
  %i.l = fcmp olt <2 x float> %i.k, zeroinitializer
  %i.m = select <2 x i1> %i.l, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.n = fadd <2 x float> %i.k, %i.m              ; 2 uses
  %i.o = fcmp oge <2 x float> %i.n, %i.g
  %i.p = select <2 x i1> %i.o, <2 x float> %i.n, <2 x float> %i.g ; 2 uses
  %i.q = fcmp ogt <2 x float> %i.p, %i.e
  %i.r = select <2 x i1> %i.q, <2 x float> %i.e, <2 x float> %i.p
  %i.s = fptosi <2 x float> %i.r to <2 x i64>
  store <2 x i64> %i.s, ptr %.091144, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.v = load <2 x float>, ptr %i.h, align 4, !tbaa !94
  %i.w = fmul <2 x float> %i.v, %i.e              ; 2 uses
  %i.x = fcmp olt <2 x float> %i.w, zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.z = fadd <2 x float> %i.w, %i.y              ; 2 uses
  %i.aa = fcmp oge <2 x float> %i.z, %i.g
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %i.g ; 2 uses
  %i.ac = fcmp ogt <2 x float> %i.ab, %i.e
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.e, <2 x float> %i.ab
  %i.ae = fptosi <2 x float> %i.ad to <2 x i64>
  store <2 x i64> %i.ae, ptr %i.i, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.ah = load <2 x float>, ptr %i.t, align 4, !tbaa !94
  %i.ai = fmul <2 x float> %i.ah, %i.e            ; 2 uses
  %i.aj = fcmp olt <2 x float> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.al = fadd <2 x float> %i.ai, %i.ak           ; 2 uses
  %i.am = fcmp oge <2 x float> %i.al, %i.g
  %i.an = select <2 x i1> %i.am, <2 x float> %i.al, <2 x float> %i.g ; 2 uses
  %i.ao = fcmp ogt <2 x float> %i.an, %i.e
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.e, <2 x float> %i.an
  %i.aq = fptosi <2 x float> %i.ap to <2 x i64>
  store <2 x i64> %i.aq, ptr %i.u, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.091144, i64 64
  %i.at = load <2 x float>, ptr %i.af, align 4, !tbaa !94
  %i.au = fmul <2 x float> %i.at, %i.e            ; 2 uses
  %i.av = fcmp olt <2 x float> %i.au, zeroinitializer
  %i.aw = select <2 x i1> %i.av, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ax = fadd <2 x float> %i.au, %i.aw           ; 2 uses
  %i.ay = fcmp oge <2 x float> %i.ax, %i.g
  %i.az = select <2 x i1> %i.ay, <2 x float> %i.ax, <2 x float> %i.g ; 2 uses
  %i.ba = fcmp ogt <2 x float> %i.az, %i.e
  %i.bb = select <2 x i1> %i.ba, <2 x float> %i.e, <2 x float> %i.az
  %i.bc = fptosi <2 x float> %i.bb to <2 x i64>
  store <2 x i64> %i.bc, ptr %i.ag, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %.0145, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.091144, i64 80
  %i.bf = load <2 x float>, ptr %i.ar, align 4, !tbaa !94
  %i.bg = fmul <2 x float> %i.bf, %i.e            ; 2 uses
  %i.bh = fcmp olt <2 x float> %i.bg, zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.bj = fadd <2 x float> %i.bg, %i.bi           ; 2 uses
  %i.bk = fcmp oge <2 x float> %i.bj, %i.g
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bj, <2 x float> %i.g ; 2 uses
  %i.bm = fcmp ogt <2 x float> %i.bl, %i.e
  %i.bn = select <2 x i1> %i.bm, <2 x float> %i.e, <2 x float> %i.bl
  %i.bo = fptosi <2 x float> %i.bn to <2 x i64>
  store <2 x i64> %i.bo, ptr %i.as, align 8, !tbaa !106
  %i.bp = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.091144, i64 96
  %i.br = load <2 x float>, ptr %i.bd, align 4, !tbaa !94
  %i.bs = fmul <2 x float> %i.br, %i.e            ; 2 uses
  %i.bt = fcmp olt <2 x float> %i.bs, zeroinitializer
  %i.bu = select <2 x i1> %i.bt, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.bv = fadd <2 x float> %i.bs, %i.bu           ; 2 uses
  %i.bw = fcmp oge <2 x float> %i.bv, %i.g
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.bv, <2 x float> %i.g ; 2 uses
  %i.by = fcmp ogt <2 x float> %i.bx, %i.e
  %i.bz = select <2 x i1> %i.by, <2 x float> %i.e, <2 x float> %i.bx
  %i.ca = fptosi <2 x float> %i.bz to <2 x i64>
  store <2 x i64> %i.ca, ptr %i.be, align 8, !tbaa !106
  %i.cb = getelementptr inbounds nuw i8, ptr %.0145, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %.091144, i64 112
  %i.cd = load <2 x float>, ptr %i.bp, align 4, !tbaa !94
  %i.ce = fmul <2 x float> %i.cd, %i.e            ; 2 uses
  %i.cf = fcmp olt <2 x float> %i.ce, zeroinitializer
  %i.cg = select <2 x i1> %i.cf, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ch = fadd <2 x float> %i.ce, %i.cg           ; 2 uses
  %i.ci = fcmp oge <2 x float> %i.ch, %i.g
  %i.cj = select <2 x i1> %i.ci, <2 x float> %i.ch, <2 x float> %i.g ; 2 uses
  %i.ck = fcmp ogt <2 x float> %i.cj, %i.e
  %i.cl = select <2 x i1> %i.ck, <2 x float> %i.e, <2 x float> %i.cj
  %i.cm = fptosi <2 x float> %i.cl to <2 x i64>
  store <2 x i64> %i.cm, ptr %i.bq, align 8, !tbaa !106
  %i.cn = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.091144, i64 128 ; 2 uses
  %i.cp = load <2 x float>, ptr %i.cb, align 4, !tbaa !94
  %i.cq = fmul <2 x float> %i.cp, %i.e            ; 2 uses
  %i.cr = fcmp olt <2 x float> %i.cq, zeroinitializer
  %i.cs = select <2 x i1> %i.cr, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ct = fadd <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fcmp oge <2 x float> %i.ct, %i.g
  %i.cv = select <2 x i1> %i.cu, <2 x float> %i.ct, <2 x float> %i.g ; 2 uses
  %i.cw = fcmp ogt <2 x float> %i.cv, %i.e
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.e, <2 x float> %i.cv
  %i.cy = fptosi <2 x float> %i.cx to <2 x i64>
  store <2 x i64> %i.cy, ptr %i.cc, align 8, !tbaa !106
  %i.cz = add i64 %.093143, -16                   ; 3 uses
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.lr.ph, label %.preheader, !llvm.loop !1083

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.1151 = phi ptr [ %i.dc, %.lr.ph152 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.192150 = phi ptr [ %i.dk, %.lr.ph152 ], [ %.091.lcssa, %.preheader ] ; 2 uses
  %.194149 = phi i64 [ %i.db, %.lr.ph152 ], [ %.093.lcssa, %.preheader ]
  %i.db = add i64 %.194149, -1                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.dd = load float, ptr %.1151, align 4, !tbaa !94
  %i.de = fmul float %i.dd, %i.b                  ; 2 uses
  %i.df = fcmp olt float %i.de, 0.000000e+00
  %i.dg = select i1 %i.df, float -5.000000e-01, float 5.000000e-01
  %i.dh = fadd float %i.de, %i.dg                 ; 2 uses
  %.inv.i140 = fcmp oge float %i.dh, %i.a
  %.0.i.i141 = select i1 %.inv.i140, float %i.dh, float %i.a ; 2 uses
  %i.di = fcmp ogt float %.0.i.i141, %i.b
  %.1.i.i142 = select i1 %i.di, float %i.b, float %.0.i.i141
  %i.dj = fptosi float %.1.i.i142 to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.192150, i64 8
  store i64 %i.dj, ptr %.192150, align 8, !tbaa !106
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1084

._crit_edge:                                      ; preds = %.lr.ph152, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfyEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = uitofp i64 %3 to float                   ; 3 uses
  %i.b = uitofp i64 %4 to float                   ; 4 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = insertelement <2 x float> poison, float %i.b, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer ; 24 uses
  %i.f = insertelement <2 x float> poison, float %i.a, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer ; 16 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.cz, %.lr.ph ] ; 2 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.co, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.cn, %.lr.ph ]
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0145 = phi ptr [ %i.cn, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %.091144 = phi ptr [ %i.co, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.093143 = phi i64 [ %i.cz, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.j = load <2 x float>, ptr %.0145, align 4, !tbaa !94
  %i.k = fmul <2 x float> %i.j, %i.e              ; 2 uses
  %i.l = fcmp olt <2 x float> %i.k, zeroinitializer
  %i.m = select <2 x i1> %i.l, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.n = fadd <2 x float> %i.k, %i.m              ; 2 uses
  %i.o = fcmp oge <2 x float> %i.n, %i.g
  %i.p = select <2 x i1> %i.o, <2 x float> %i.n, <2 x float> %i.g ; 2 uses
  %i.q = fcmp ogt <2 x float> %i.p, %i.e
  %i.r = select <2 x i1> %i.q, <2 x float> %i.e, <2 x float> %i.p
  %i.s = fptoui <2 x float> %i.r to <2 x i64>
  store <2 x i64> %i.s, ptr %.091144, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.v = load <2 x float>, ptr %i.h, align 4, !tbaa !94
  %i.w = fmul <2 x float> %i.v, %i.e              ; 2 uses
  %i.x = fcmp olt <2 x float> %i.w, zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.z = fadd <2 x float> %i.w, %i.y              ; 2 uses
  %i.aa = fcmp oge <2 x float> %i.z, %i.g
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %i.g ; 2 uses
  %i.ac = fcmp ogt <2 x float> %i.ab, %i.e
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.e, <2 x float> %i.ab
  %i.ae = fptoui <2 x float> %i.ad to <2 x i64>
  store <2 x i64> %i.ae, ptr %i.i, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.ah = load <2 x float>, ptr %i.t, align 4, !tbaa !94
  %i.ai = fmul <2 x float> %i.ah, %i.e            ; 2 uses
  %i.aj = fcmp olt <2 x float> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.al = fadd <2 x float> %i.ai, %i.ak           ; 2 uses
  %i.am = fcmp oge <2 x float> %i.al, %i.g
  %i.an = select <2 x i1> %i.am, <2 x float> %i.al, <2 x float> %i.g ; 2 uses
  %i.ao = fcmp ogt <2 x float> %i.an, %i.e
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.e, <2 x float> %i.an
  %i.aq = fptoui <2 x float> %i.ap to <2 x i64>
  store <2 x i64> %i.aq, ptr %i.u, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.091144, i64 64
  %i.at = load <2 x float>, ptr %i.af, align 4, !tbaa !94
  %i.au = fmul <2 x float> %i.at, %i.e            ; 2 uses
  %i.av = fcmp olt <2 x float> %i.au, zeroinitializer
  %i.aw = select <2 x i1> %i.av, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ax = fadd <2 x float> %i.au, %i.aw           ; 2 uses
  %i.ay = fcmp oge <2 x float> %i.ax, %i.g
  %i.az = select <2 x i1> %i.ay, <2 x float> %i.ax, <2 x float> %i.g ; 2 uses
  %i.ba = fcmp ogt <2 x float> %i.az, %i.e
  %i.bb = select <2 x i1> %i.ba, <2 x float> %i.e, <2 x float> %i.az
  %i.bc = fptoui <2 x float> %i.bb to <2 x i64>
  store <2 x i64> %i.bc, ptr %i.ag, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %.0145, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.091144, i64 80
  %i.bf = load <2 x float>, ptr %i.ar, align 4, !tbaa !94
  %i.bg = fmul <2 x float> %i.bf, %i.e            ; 2 uses
  %i.bh = fcmp olt <2 x float> %i.bg, zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.bj = fadd <2 x float> %i.bg, %i.bi           ; 2 uses
  %i.bk = fcmp oge <2 x float> %i.bj, %i.g
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bj, <2 x float> %i.g ; 2 uses
  %i.bm = fcmp ogt <2 x float> %i.bl, %i.e
  %i.bn = select <2 x i1> %i.bm, <2 x float> %i.e, <2 x float> %i.bl
  %i.bo = fptoui <2 x float> %i.bn to <2 x i64>
  store <2 x i64> %i.bo, ptr %i.as, align 8, !tbaa !106
  %i.bp = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.091144, i64 96
  %i.br = load <2 x float>, ptr %i.bd, align 4, !tbaa !94
  %i.bs = fmul <2 x float> %i.br, %i.e            ; 2 uses
  %i.bt = fcmp olt <2 x float> %i.bs, zeroinitializer
  %i.bu = select <2 x i1> %i.bt, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.bv = fadd <2 x float> %i.bs, %i.bu           ; 2 uses
  %i.bw = fcmp oge <2 x float> %i.bv, %i.g
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.bv, <2 x float> %i.g ; 2 uses
  %i.by = fcmp ogt <2 x float> %i.bx, %i.e
  %i.bz = select <2 x i1> %i.by, <2 x float> %i.e, <2 x float> %i.bx
  %i.ca = fptoui <2 x float> %i.bz to <2 x i64>
  store <2 x i64> %i.ca, ptr %i.be, align 8, !tbaa !106
  %i.cb = getelementptr inbounds nuw i8, ptr %.0145, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %.091144, i64 112
  %i.cd = load <2 x float>, ptr %i.bp, align 4, !tbaa !94
  %i.ce = fmul <2 x float> %i.cd, %i.e            ; 2 uses
  %i.cf = fcmp olt <2 x float> %i.ce, zeroinitializer
  %i.cg = select <2 x i1> %i.cf, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ch = fadd <2 x float> %i.ce, %i.cg           ; 2 uses
  %i.ci = fcmp oge <2 x float> %i.ch, %i.g
  %i.cj = select <2 x i1> %i.ci, <2 x float> %i.ch, <2 x float> %i.g ; 2 uses
  %i.ck = fcmp ogt <2 x float> %i.cj, %i.e
  %i.cl = select <2 x i1> %i.ck, <2 x float> %i.e, <2 x float> %i.cj
  %i.cm = fptoui <2 x float> %i.cl to <2 x i64>
  store <2 x i64> %i.cm, ptr %i.bq, align 8, !tbaa !106
  %i.cn = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.091144, i64 128 ; 2 uses
  %i.cp = load <2 x float>, ptr %i.cb, align 4, !tbaa !94
  %i.cq = fmul <2 x float> %i.cp, %i.e            ; 2 uses
  %i.cr = fcmp olt <2 x float> %i.cq, zeroinitializer
  %i.cs = select <2 x i1> %i.cr, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ct = fadd <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fcmp oge <2 x float> %i.ct, %i.g
  %i.cv = select <2 x i1> %i.cu, <2 x float> %i.ct, <2 x float> %i.g ; 2 uses
  %i.cw = fcmp ogt <2 x float> %i.cv, %i.e
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.e, <2 x float> %i.cv
  %i.cy = fptoui <2 x float> %i.cx to <2 x i64>
  store <2 x i64> %i.cy, ptr %i.cc, align 8, !tbaa !106
  %i.cz = add i64 %.093143, -16                   ; 3 uses
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.lr.ph, label %.preheader, !llvm.loop !1085

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.1151 = phi ptr [ %i.dc, %.lr.ph152 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.192150 = phi ptr [ %i.dk, %.lr.ph152 ], [ %.091.lcssa, %.preheader ] ; 2 uses
  %.194149 = phi i64 [ %i.db, %.lr.ph152 ], [ %.093.lcssa, %.preheader ]
  %i.db = add i64 %.194149, -1                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.dd = load float, ptr %.1151, align 4, !tbaa !94
  %i.de = fmul float %i.dd, %i.b                  ; 2 uses
  %i.df = fcmp olt float %i.de, 0.000000e+00
  %i.dg = select i1 %i.df, float -5.000000e-01, float 5.000000e-01
  %i.dh = fadd float %i.de, %i.dg                 ; 2 uses
  %.inv.i140 = fcmp oge float %i.dh, %i.a
  %.0.i.i141 = select i1 %.inv.i140, float %i.dh, float %i.a ; 2 uses
  %i.di = fcmp ogt float %.0.i.i141, %i.b
  %.1.i.i142 = select i1 %i.di, float %i.b, float %.0.i.i141
  %i.dj = fptoui float %.1.i.i142 to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.192150, i64 8
  store i64 %i.dj, ptr %.192150, align 8, !tbaa !106
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1086

._crit_edge:                                      ; preds = %.lr.ph152, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E9_M_invokeERKSt9_Any_dataOlSC_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !141   ; 13 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !83   ; 3 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !83
  %i.a = load i32, ptr %.val, align 8, !tbaa !1088
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1089
  %i.d = sub nsw i64 %.val4, %.val3
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1090
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1091
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1092 ; 2 uses
  %i.l = mul nsw i64 %i.k, %.val3
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1093
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1094
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1095
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1096 ; 2 uses
  %i.w = mul nsw i64 %i.v, %.val3
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1097
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1098
  %i.ad = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_113convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_lll(i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef %i.m, i64 %.sroa.01.0.copyload.i.i.i, i64 noundef %i.p, i64 noundef %i.k, i64 noundef %i.r, ptr noundef %i.x, i64 %.sroa.0.0.copyload.i.i.i, i64 noundef %i.aa, i64 noundef %i.v, i64 noundef %i.ac) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_llliE3$_0", ptr %0, align 8, !tbaa !307
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !141
  store ptr %.val, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(96) %.val6, i64 96, i1 false), !tbaa.struct !1099
  store ptr %i.a, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !141 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 96) #40
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_122parallel_convert_imageEiiiiPKvNS2_8TypeDescElllPvS5_llliE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_imageio.cpp() #36 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  store ptr @.str.82, ptr %21, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 19, ptr %i.a, align 8, !tbaa !57
  store ptr @.str.83, ptr %23, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 11, ptr %i.b, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  call void @_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %22, ptr noundef nonnull dead_on_return %23, ptr noundef nonnull dead_on_return %24)
  call void @_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %20, ptr noundef nonnull dead_on_return %21, ptr noundef nonnull dead_on_return %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.c = load ptr, ptr %20, align 8, !tbaa !56
  store ptr %i.c, ptr %19, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  store i64 %i.f, ptr %i.d, align 8, !tbaa !57
  %i.g = call noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef nonnull dead_on_return %19, ptr noundef null, i32 noundef 10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %__cxx_global_var_init.exit

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef i32 @_ZN11OpenImageIO4v3_17Sysutil20hardware_concurrencyEv()
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  store i32 %.0.i.i, ptr @_ZN11OpenImageIO4v3_13pvt12oiio_threadsE, align 4, !tbaa !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr @.str.82, ptr %15, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 19, ptr %i.j, align 8, !tbaa !57
  store ptr @.str.83, ptr %17, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 11, ptr %i.k, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %16, ptr noundef nonnull dead_on_return %17, ptr noundef nonnull dead_on_return %18)
  call void @_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %14, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.l = load ptr, ptr %14, align 8, !tbaa !56
  store ptr %i.l, ptr %13, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !57
  store i64 %i.o, ptr %i.m, align 8, !tbaa !57
  %i.p = call noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef nonnull dead_on_return %13, ptr noundef null, i32 noundef 10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %__cxx_global_var_init.1.exit

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  %i.r = call noundef i32 @_ZN11OpenImageIO4v3_17Sysutil20hardware_concurrencyEv()
  br label %__cxx_global_var_init.1.exit

__cxx_global_var_init.1.exit:                     ; preds = %__cxx_global_var_init.exit, %bb.c
  %.0.i.i1 = phi i32 [ %i.r, %bb.c ], [ %i.p, %__cxx_global_var_init.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
end_hunk_8
