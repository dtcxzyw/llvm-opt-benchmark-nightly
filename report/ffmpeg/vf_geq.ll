inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@geq_filter_frame:bb.a
  %min.iters.check112 = icmp ult i32 %i.bp, 4
  %n.vec114 = and i64 %i.fi, 2147483644           ; 3 uses
  %cmp.n123 = icmp eq i64 %n.vec114, %i.fi
  br label %.lr.ph120.split.split.us.i

.lr.ph120.split.split.us.i:                       ; preds = %.loopexit.us125.i, %.lr.ph120.split.split.us.preheader.i
  %indvars.iv181.i = phi i64 [ 0, %.lr.ph120.split.split.us.preheader.i ], [ %indvars.iv.next182.i, %.loopexit.us125.i ] ; 7 uses
  switch i32 %i.cr, label %.loopexit106.us.i [
    i32 8, label %.preheader103.us.i
    i32 32, label %.lr.ph.us.i
  ]

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 6 uses
  %.0109.us.i = phi double [ %i.fx, %.lr.ph.us.i.new ], [ 0.000000e+00, %.lr.ph.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.fm = load float, ptr %gep.i, align 4, !tbaa !91
  %i.fn = fpext nsz float %i.fm to double
  %i.fo = fadd nsz double %.0109.us.i, %i.fn      ; 2 uses
  %gep210.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep209.i, i64 %indvars.iv.i
  store double %i.fo, ptr %gep210.i, align 8, !tbaa !53
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.fp = load float, ptr %gep.i.1, align 4, !tbaa !91
  %i.fq = fpext nsz float %i.fp to double
  %i.fr = fadd nsz double %i.fo, %i.fq            ; 2 uses
  %gep210.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep209.i, i64 %indvars.iv.next.i
  store double %i.fr, ptr %gep210.i.1, align 8, !tbaa !53
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.fs = load float, ptr %gep.i.2, align 4, !tbaa !91
  %i.ft = fpext nsz float %i.fs to double
  %i.fu = fadd nsz double %i.fr, %i.ft            ; 2 uses
  %gep210.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep209.i, i64 %indvars.iv.next.i.1
  store double %i.fu, ptr %gep210.i.2, align 8, !tbaa !53
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.fv = load float, ptr %gep.i.3, align 4, !tbaa !91
  %i.fw = fpext nsz float %i.fv to double
  %i.fx = fadd nsz double %i.fu, %i.fw            ; 3 uses
  %gep210.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep209.i, i64 %indvars.iv.next.i.2
  store double %i.fx, ptr %gep210.i.3, align 8, !tbaa !53
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit106.us.i.loopexit126.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !93

.preheader103.us.i.new:                           ; preds = %.preheader103.us.i, %.preheader103.us.i.new
  %indvars.iv171.i = phi i64 [ %indvars.iv.next172.i.3, %.preheader103.us.i.new ], [ 0, %.preheader103.us.i ] ; 6 uses
  %.085111.us.i = phi double [ %i.gj, %.preheader103.us.i.new ], [ 0.000000e+00, %.preheader103.us.i ]
  %niter135 = phi i64 [ %niter135.next.3, %.preheader103.us.i.new ], [ 0, %.preheader103.us.i ]
  %gep212.i = getelementptr i8, ptr %invariant.gep211.i, i64 %indvars.iv171.i
  %i.fy = load i8, ptr %gep212.i, align 1, !tbaa !94
  %i.fz = uitofp i8 %i.fy to double
  %i.ga = fadd nsz double %.085111.us.i, %i.fz    ; 2 uses
  %gep214.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv171.i
  store double %i.ga, ptr %gep214.i, align 8, !tbaa !53
  %indvars.iv.next172.i = or disjoint i64 %indvars.iv171.i, 1 ; 2 uses
  %gep212.i.1 = getelementptr i8, ptr %invariant.gep211.i, i64 %indvars.iv.next172.i
  %i.gb = load i8, ptr %gep212.i.1, align 1, !tbaa !94
  %i.gc = uitofp i8 %i.gb to double
  %i.gd = fadd nsz double %i.ga, %i.gc            ; 2 uses
  %gep214.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next172.i
  store double %i.gd, ptr %gep214.i.1, align 8, !tbaa !53
  %indvars.iv.next172.i.1 = or disjoint i64 %indvars.iv171.i, 2 ; 2 uses
  %gep212.i.2 = getelementptr i8, ptr %invariant.gep211.i, i64 %indvars.iv.next172.i.1
  %i.ge = load i8, ptr %gep212.i.2, align 1, !tbaa !94
  %i.gf = uitofp i8 %i.ge to double
  %i.gg = fadd nsz double %i.gd, %i.gf            ; 2 uses
  %gep214.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next172.i.1
  store double %i.gg, ptr %gep214.i.2, align 8, !tbaa !53
  %indvars.iv.next172.i.2 = or disjoint i64 %indvars.iv171.i, 3 ; 2 uses
  %gep212.i.3 = getelementptr i8, ptr %invariant.gep211.i, i64 %indvars.iv.next172.i.2
  %i.gh = load i8, ptr %gep212.i.3, align 1, !tbaa !94
  %i.gi = uitofp i8 %i.gh to double
  %i.gj = fadd nsz double %i.gg, %i.gi            ; 3 uses
  %gep214.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next172.i.2
  store double %i.gj, ptr %gep214.i.3, align 8, !tbaa !53
  %indvars.iv.next172.i.3 = add nuw nsw i64 %indvars.iv171.i, 4 ; 2 uses
  %niter135.next.3 = add i64 %niter135, 4         ; 2 uses
  %niter135.ncmp.3 = icmp eq i64 %niter135.next.3, %unroll_iter134
  br i1 %niter135.ncmp.3, label %.loopexit106.us.i.loopexit.unr-lcssa, label %.preheader103.us.i.new, !llvm.loop !95

.loopexit106.us.i.loopexit.unr-lcssa:             ; preds = %.preheader103.us.i.new
  br i1 %lcmp.mod132.not, label %.loopexit106.us.i, label %.epil.preheader129

.epil.preheader129:                               ; preds = %.loopexit106.us.i.loopexit.unr-lcssa, %.preheader103.us.i
  %indvars.iv171.i.epil.init = phi i64 [ 0, %.preheader103.us.i ], [ %indvars.iv.next172.i.3, %.loopexit106.us.i.loopexit.unr-lcssa ]
  %.085111.us.i.epil.init = phi double [ 0.000000e+00, %.preheader103.us.i ], [ %i.gj, %.loopexit106.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod133)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader129
  %indvars.iv171.i.epil = phi i64 [ %indvars.iv171.i.epil.init, %.epil.preheader129 ], [ %indvars.iv.next172.i.epil, %bb.r ] ; 3 uses
  %.085111.us.i.epil = phi double [ %.085111.us.i.epil.init, %.epil.preheader129 ], [ %i.gm, %bb.r ]
  %epil.iter131 = phi i64 [ 0, %.epil.preheader129 ], [ %epil.iter131.next, %bb.r ]
  %gep212.i.epil = getelementptr i8, ptr %invariant.gep211.i, i64 %indvars.iv171.i.epil
  %i.gk = load i8, ptr %gep212.i.epil, align 1, !tbaa !94
  %i.gl = uitofp i8 %i.gk to double
  %i.gm = fadd nsz double %.085111.us.i.epil, %i.gl ; 2 uses
  %gep214.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv171.i.epil
  store double %i.gm, ptr %gep214.i.epil, align 8, !tbaa !53
  %indvars.iv.next172.i.epil = add nuw nsw i64 %indvars.iv171.i.epil, 1
  %epil.iter131.next = add i64 %epil.iter131, 1   ; 2 uses
  %epil.iter131.cmp.not = icmp eq i64 %epil.iter131.next, %xtraiter130
  br i1 %epil.iter131.cmp.not, label %.loopexit106.us.i, label %bb.r, !llvm.loop !96

.loopexit106.us.i.loopexit126.unr-lcssa:          ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %.loopexit106.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit106.us.i.loopexit126.unr-lcssa, %.lr.ph.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i.3, %.loopexit106.us.i.loopexit126.unr-lcssa ]
  %.0109.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.i ], [ %i.fx, %.loopexit106.us.i.loopexit126.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod128)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.s ] ; 3 uses
  %.0109.us.i.epil = phi double [ %.0109.us.i.epil.init, %.epil.preheader ], [ %i.gp, %bb.s ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  %i.gn = load float, ptr %gep.i.epil, align 4, !tbaa !91
  %i.go = fpext nsz float %i.gn to double
  %i.gp = fadd nsz double %.0109.us.i.epil, %i.go ; 2 uses
  %gep210.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep209.i, i64 %indvars.iv.i.epil
  store double %i.gp, ptr %gep210.i.epil, align 8, !tbaa !53
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit106.us.i, label %bb.s, !llvm.loop !97

.loopexit106.us.i:                                ; preds = %.loopexit106.us.i.loopexit126.unr-lcssa, %bb.s, %.loopexit106.us.i.loopexit.unr-lcssa, %bb.r, %.lr.ph120.split.split.us.i
  %.not98.us122.i = icmp eq i64 %indvars.iv181.i, 0
  br i1 %.not98.us122.i, label %.loopexit.us125.i, label %.lr.ph117.us126.i

scalar.ph111:                                     ; preds = %scalar.ph111.preheader, %scalar.ph111
  %indvars.iv176.i = phi i64 [ %indvars.iv.next177.i, %scalar.ph111 ], [ %indvars.iv176.i.ph, %scalar.ph111.preheader ] ; 2 uses
  %i.gq = add nuw nsw i64 %indvars.iv176.i, %i.hb ; 2 uses
  %i.gr = sub nsw i64 %i.gq, %i.fi
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !53
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.gq ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !53
  %i.gw = fadd nsz double %i.gt, %i.gv
  store double %i.gw, ptr %i.gu, align 8, !tbaa !53
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond180.not.i = icmp eq i64 %indvars.iv.next177.i, %i.fi
  br i1 %exitcond180.not.i, label %.loopexit.us125.i, label %scalar.ph111, !llvm.loop !98

.loopexit.us125.i:                                ; preds = %scalar.ph111, %middle.block122, %.loopexit106.us.i
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next182.i, %wide.trip.count184.i
  br i1 %exitcond185.not.i, label %calculate_sums.exit, label %.lr.ph120.split.split.us.i, !llvm.loop !81

.preheader103.us.i:                               ; preds = %.lr.ph120.split.split.us.i
  %i.gx = mul nsw i64 %indvars.iv181.i, %i.fj
  %i.gy = mul nuw nsw i64 %indvars.iv181.i, %i.fi
  %invariant.gep211.i = getelementptr i8, ptr %i.cg, i64 %i.gx ; 5 uses
  %invariant.gep213.i = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.gy ; 5 uses
  br i1 %i.fl, label %.epil.preheader129, label %.preheader103.us.i.new

.lr.ph.us.i:                                      ; preds = %.lr.ph120.split.split.us.i
  %i.gz = mul nsw i64 %indvars.iv181.i, %i.fj
  %i.ha = mul nuw nsw i64 %indvars.iv181.i, %i.fi
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %i.gz ; 5 uses
  %invariant.gep209.i = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ha ; 5 uses
  br i1 %i.fk, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph117.us126.i:                                ; preds = %.loopexit106.us.i
  %i.hb = mul nuw nsw i64 %indvars.iv181.i, %i.fi ; 2 uses
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.body115

vector.body115:                                   ; preds = %.lr.ph117.us126.i, %vector.body115
  %index116 = phi i64 [ %index.next121, %vector.body115 ], [ 0, %.lr.ph117.us126.i ] ; 2 uses
  %i.hc = add nuw nsw i64 %index116, %i.hb        ; 2 uses
  %i.hd = sub nsw i64 %i.hc, %i.fi
  %i.he = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load117 = load <2 x double>, ptr %i.he, align 8, !tbaa !53
  %wide.load118 = load <2 x double>, ptr %i.hf, align 8, !tbaa !53
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.hc ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %wide.load119 = load <2 x double>, ptr %i.hg, align 8, !tbaa !53
  %wide.load120 = load <2 x double>, ptr %i.hh, align 8, !tbaa !53
  %i.hi = fadd nsz <2 x double> %wide.load117, %wide.load119
  %i.hj = fadd nsz <2 x double> %wide.load118, %wide.load120
  store <2 x double> %i.hi, ptr %i.hg, align 8, !tbaa !53
  store <2 x double> %i.hj, ptr %i.hh, align 8, !tbaa !53
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.hk, label %middle.block122, label %vector.body115, !llvm.loop !99

middle.block122:                                  ; preds = %vector.body115
  br i1 %cmp.n123, label %.loopexit.us125.i, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %.lr.ph117.us126.i, %middle.block122
  %indvars.iv176.i.ph = phi i64 [ 0, %.lr.ph117.us126.i ], [ %n.vec114, %middle.block122 ]
  br label %scalar.ph111

calculate_sums.exit:                              ; preds = %.loopexit.us125.i, %.loopexit.us.i, %.lr.ph120.split.i, %.preheader101.us.preheader.i, %bb.p, %bb.l, %bb.j
  %spec.select = call i32 @llvm.smin.i32(i32 %i.d, i32 %i.bq)
  %i.hl = call i32 @llvm.smin.i32(i32 %spec.select, i32 32)
  %i.hm = call i32 @ff_filter_execute(ptr noundef %i.c, ptr noundef nonnull @slice_geq_filter, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.hl) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hn = load i32, ptr %i.ag, align 8, !tbaa !63
  %i.ho = sext i32 %i.hn to i64
  %i.hp = icmp slt i64 %indvars.iv.next, %i.ho
  br i1 %i.hp, label %bb.f, label %.critedge, !llvm.loop !100

.critedge:                                        ; preds = %bb.f, %calculate_sums.exit, %bb.e
  call void @av_frame_free(ptr noundef nonnull %i.z) #13
  %i.hq = call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef nonnull %i.ae) #13
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.d
  %.0 = phi i32 [ %i.hq, %.critedge ], [ -12, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @geq_config_props(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !101
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #13 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 384) #13
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1184
  %i.j = load <2 x i8>, ptr %i.h, align 1, !tbaa !94
  %i.k = zext <2 x i8> %i.j to <2 x i32>
  store <2 x i32> %i.k, ptr %i.i, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1204
  store i32 %i.m, ptr %i.n, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !104
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1192
  store i32 %i.q, ptr %i.r, align 8, !tbaa !63
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @slice_geq_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [8 x double], align 16            ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 13 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !72   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73   ; 4 uses
  %i.k = sext i32 %i.d to i64                     ; 2 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %i.m = mul nsw i64 %i.k, %i.l
  %i.n = sext i32 %3 to i64                       ; 2 uses
  %i.o = sdiv i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32                    ; 8 uses
  %i.q = add nsw i32 %2, 1
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.k, %i.r
  %i.t = sdiv i64 %i.s, %i.n
  %i.u = trunc i64 %i.t to i32                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1136
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load <2 x double>, ptr %i.v, align 8, !tbaa !53
  store <2 x double> %i.x, ptr %i.w, align 16, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1152
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !53
  store <2 x double> %i.aa, ptr %i.z, align 16, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1168
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ad = load <2 x double>, ptr %i.ab, align 8, !tbaa !53
  store <2 x double> %i.ad, ptr %i.ac, align 16, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1204
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 8
  br i1 %i.ag, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp slt i32 %i.p, %i.u
  br i1 %i.ah, label %.lr.ph104, label %.loopexit

.lr.ph104:                                        ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = icmp sgt i32 %i.f, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = sext i32 %i.h to i64
  %i.am = getelementptr inbounds [256 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.l
  %i.ao = sext i32 %i.j to i64
  br i1 %i.aj, label %.lr.ph.us105.preheader, label %.loopexit

.lr.ph.us105.preheader:                           ; preds = %.lr.ph104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66
  %i.ar = mul nsw i32 %i.j, %i.p
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  %wide.trip.count120 = zext nneg i32 %i.f to i64
  br label %.lr.ph.us105

.lr.ph.us105:                                     ; preds = %.lr.ph.us105.preheader, %._crit_edge.us106
  %.080102.us = phi ptr [ %i.bb, %._crit_edge.us106 ], [ %i.at, %.lr.ph.us105.preheader ] ; 2 uses
  %.081101.us = phi i32 [ %i.bc, %._crit_edge.us106 ], [ %i.p, %.lr.ph.us105.preheader ] ; 2 uses
  %i.au = sitofp nsz i32 %.081101.us to double
  store double %i.au, ptr %i.ai, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us105, %bb.c
  %indvars.iv117 = phi i64 [ 0, %.lr.ph.us105 ], [ %indvars.iv.next118, %bb.c ] ; 3 uses
  %i.av = trunc nuw nsw i64 %indvars.iv117 to i32
  %i.aw = uitofp nneg i32 %i.av to double
  store double %i.aw, ptr %i.a, align 16, !tbaa !53
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !30
  %i.ay = call nsz double @av_expr_eval(ptr noundef %i.ax, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #13
  %i.az = fptoui double %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.080102.us, i64 %indvars.iv117
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !94
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge.us106, label %bb.c, !llvm.loop !106

._crit_edge.us106:                                ; preds = %bb.c
  %i.bb = getelementptr inbounds i8, ptr %.080102.us, i64 %i.ao
  %i.bc = add nsw i32 %.081101.us, 1              ; 2 uses
  %exitcond122.not = icmp eq i32 %i.bc, %i.u
  br i1 %exitcond122.not, label %.loopexit, label %.lr.ph.us105, !llvm.loop !107

bb.d:                                             ; preds = %bb.a
  %i.bd = icmp slt i32 %i.af, 17
  %i.be = icmp slt i32 %i.p, %i.u                 ; 2 uses
  br i1 %i.bd, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.be, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.e
  %i.bf = sdiv i32 %i.j, 2                        ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = icmp sgt i32 %i.f, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bj = sext i32 %i.h to i64
  %i.bk = getelementptr inbounds [256 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.l
  %i.bm = sext i32 %i.bf to i64
  br i1 %i.bh, label %.lr.ph.us98.preheader, label %.loopexit

.lr.ph.us98.preheader:                            ; preds = %.lr.ph97
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !67
  %i.bp = mul nsw i32 %i.bf, %i.p
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.bq
  %wide.trip.count114 = zext nneg i32 %i.f to i64
  br label %.lr.ph.us98

.lr.ph.us98:                                      ; preds = %.lr.ph.us98.preheader, %._crit_edge.us99
  %.07995.us = phi ptr [ %i.bz, %._crit_edge.us99 ], [ %i.br, %.lr.ph.us98.preheader ] ; 2 uses
  %.194.us = phi i32 [ %i.ca, %._crit_edge.us99 ], [ %i.p, %.lr.ph.us98.preheader ] ; 2 uses
  %i.bs = sitofp nsz i32 %.194.us to double
  store double %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us98, %bb.f
  %indvars.iv111 = phi i64 [ 0, %.lr.ph.us98 ], [ %indvars.iv.next112, %bb.f ] ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv111 to i32
end_hunk_0
