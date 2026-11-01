Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_signalstats?download=true
inline.NumInlined: 47
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@filter_frame:bb.a
  %i.vk = load i32, ptr %i.ot, align 8, !tbaa !66
  %i.vl = sitofp nsz i32 %i.vk to double
  %i.vm = fdiv nsz double %.0381.lcssa, %i.vl
  %i.vn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.vm) #12 ; 0 uses
  %i.vo = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 312
  %i.vq = call i32 @av_dict_set(ptr noundef nonnull %i.vp, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.c, i32 noundef 0) #12 ; 0 uses
  %i.vr = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 312
  %i.vt = call i32 @av_dict_set_int(ptr noundef nonnull %i.vs, ptr noundef nonnull @.str.22, i64 noundef %.0394.lcssa, i32 noundef 0) #12 ; 0 uses
  %i.vu = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 312
  %i.vw = call i32 @av_dict_set_int(ptr noundef nonnull %i.vv, ptr noundef nonnull @.str.23, i64 noundef %.0398.lcssa, i32 noundef 0) #12 ; 0 uses
  %i.vx = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 312
  %i.vz = sext i32 %.1388.1 to i64
  %i.wa = call i32 @av_dict_set_int(ptr noundef nonnull %i.vy, ptr noundef nonnull @.str.24, i64 noundef %i.vz, i32 noundef 0) #12 ; 0 uses
  %i.wb = sitofp nsz i64 %i.ss to double
  %i.wc = load i32, ptr %i.ot, align 8, !tbaa !66
  %i.wd = sitofp nsz i32 %i.wc to double
  %i.we = fdiv nsz double %i.wb, %i.wd
  %i.wf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.we) #12 ; 0 uses
  %i.wg = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 312
  %i.wi = call i32 @av_dict_set(ptr noundef nonnull %i.wh, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.c, i32 noundef 0) #12 ; 0 uses
  %i.wj = sitofp nsz i64 %.4379 to double
  %i.wk = load i32, ptr %i.os, align 4, !tbaa !67
  %i.wl = sitofp nsz i32 %i.wk to double
  %i.wm = fdiv nsz double %i.wj, %i.wl
  %i.wn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.wm) #12 ; 0 uses
  %i.wo = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 312
  %i.wq = call i32 @av_dict_set(ptr noundef nonnull %i.wp, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.c, i32 noundef 0) #12 ; 0 uses
  %i.wr = sitofp nsz i64 %.4374 to double
  %i.ws = load i32, ptr %i.ot, align 8, !tbaa !66
  %i.wt = sitofp nsz i32 %i.ws to double
  %i.wu = fdiv nsz double %i.wr, %i.wt
  %i.wv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.wu) #12 ; 0 uses
  %i.ww = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 312
  %i.wy = call i32 @av_dict_set(ptr noundef nonnull %i.wx, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c, i32 noundef 0) #12 ; 0 uses
  %i.wz = sitofp nsz i64 %.4369 to double
  %i.xa = load i32, ptr %i.ot, align 8, !tbaa !66
  %i.xb = sitofp nsz i32 %i.xa to double
  %i.xc = fdiv nsz double %i.wz, %i.xb
  %i.xd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.xc) #12 ; 0 uses
  %i.xe = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 312
  %i.xg = call i32 @av_dict_set(ptr noundef nonnull %i.xf, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.c, i32 noundef 0) #12 ; 0 uses
  %i.xh = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 312
  %i.xj = call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.4364)
  %i.xk = zext nneg i16 %i.xj to i64
  %i.xl = call i32 @av_dict_set_int(ptr noundef nonnull %i.xi, ptr noundef nonnull @.str.29, i64 noundef %i.xk, i32 noundef 0) #12 ; 0 uses
  %i.xm = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 312
  %i.xo = insertelement <2 x i16> poison, i16 %.4359, i64 0
  %i.xp = insertelement <2 x i16> %i.xo, i16 %.4, i64 1
  %i.xq = call range(i16 0, 17) <2 x i16> @llvm.ctpop.v2i16(<2 x i16> %i.xp) ; 2 uses
  %i.xr = extractelement <2 x i16> %i.xq, i64 0
  %i.xs = zext nneg i16 %i.xr to i64
  %i.xt = call i32 @av_dict_set_int(ptr noundef nonnull %i.xn, ptr noundef nonnull @.str.30, i64 noundef %i.xs, i32 noundef 0) #12 ; 0 uses
  %i.xu = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 312
  %i.xw = extractelement <2 x i16> %i.xq, i64 1
  %i.xx = zext nneg i16 %i.xw to i64
  %i.xy = call i32 @av_dict_set_int(ptr noundef nonnull %i.xv, ptr noundef nonnull @.str.31, i64 noundef %i.xx, i32 noundef 0) #12 ; 0 uses
  %i.xz = load i32, ptr %i.lf, align 8, !tbaa !24 ; 2 uses
  %i.ya = and i32 %i.xz, 1
  %.not442 = icmp eq i32 %i.ya, 0
  br i1 %.not442, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.yb = load i32, ptr %i.os, align 4, !tbaa !67
  %i.yc = sitofp nsz i32 %i.yb to double
  %i.yd = fdiv nsz double %.sroa.0.1, %i.yc
  %i.ye = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.yd) #12 ; 0 uses
  %i.yf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #12 ; 0 uses
  %i.yg = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 312
  %i.yi = call i32 @av_dict_set(ptr noundef nonnull %i.yh, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef 0) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %.pre677 = load i32, ptr %i.lf, align 8, !tbaa !24
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.yj = phi i32 [ %i.xz, %bb.ak ], [ %.pre677, %bb.al ] ; 2 uses
  %i.yk = and i32 %i.yj, 2
  %.not442.1 = icmp eq i32 %i.yk, 0
  br i1 %.not442.1, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.yl = load i32, ptr %i.os, align 4, !tbaa !67
  %i.ym = sitofp nsz i32 %i.yl to double
  %i.yn = fdiv nsz double %.sroa.6.1, %i.ym
  %i.yo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.yn) #12 ; 0 uses
  %i.yp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34) #12 ; 0 uses
  %i.yq = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 312
  %i.ys = call i32 @av_dict_set(ptr noundef nonnull %i.yr, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef 0) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %.pre678 = load i32, ptr %i.lf, align 8, !tbaa !24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.yt = phi i32 [ %.pre678, %bb.an ], [ %i.yj, %bb.am ]
  %i.yu = and i32 %i.yt, 4
  %.not442.2 = icmp eq i32 %i.yu, 0
  br i1 %.not442.2, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.yv = load i32, ptr %i.os, align 4, !tbaa !67
  %i.yw = sitofp nsz i32 %i.yv to double
  %i.yx = fdiv nsz double %.sroa.9.1, %i.yw
  %i.yy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.yx) #12 ; 0 uses
  %i.yz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35) #12 ; 0 uses
  %i.za = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 312
  %i.zc = call i32 @av_dict_set(ptr noundef nonnull %i.zb, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef 0) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.zd = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ze = load ptr, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %.not441 = icmp eq ptr %i.zd, %i.ze
  br i1 %.not441, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  %.pre679 = load ptr, ptr %i.b, align 8, !tbaa !27
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.zf = phi ptr [ %.pre679, %bb.ar ], [ %i.ze, %bb.aq ]
  %i.zg = call i32 @ff_filter_frame(ptr noundef %i.l, ptr noundef %i.zf) #12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.g, %bb.e
  %.0337 = phi i32 [ %i.ak, %bb.g ], [ %i.zg, %bb.as ], [ -12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.0337
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #5

declare void @av_frame_free(ptr noundef) local_unnamed_addr #5

declare i32 @ff_inlink_make_frame_writable(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @compute_sat_hue_metrics16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  %i.e = add nsw i32 %i.d, -1
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 6 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = icmp slt i32 %i.n, %i.s
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge69.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26
  %i.y = sdiv i32 %i.x, 2                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.ad = sdiv i32 %i.ac, 2                       ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !46    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 68
  %4 = load <2 x i32>, ptr %i.af, align 4, !tbaa !26
  %5 = sdiv <2 x i32> %4, splat (i32 2)           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54 ; 2 uses
  %6 = icmp sgt i32 %i.ah, 0
  %7 = extractelement <2 x i32> %5, i64 0         ; 2 uses
  %8 = sext i32 %7 to i64
  %9 = extractelement <2 x i32> %5, i64 1         ; 2 uses
  %i.ai = sext i32 %9 to i64
  %i.aj = sext i32 %i.ad to i64
  %i.ak = sext i32 %i.y to i64
  br i1 %6, label %.preheader.preheader, label %._crit_edge69.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.an = mul nsw i32 %7, %i.n
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !51
  %i.as = mul nsw i32 %9, %i.n
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.at
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.aw = mul nsw i32 %i.ad, %i.n
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.ba = mul nsw i32 %i.y, %i.n
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bb
  %wide.trip.count = zext nneg i32 %i.ah to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05868 = phi i32 [ %i.cc, %._crit_edge ], [ %i.n, %.preheader.preheader ]
  %.05967 = phi ptr [ %i.cb, %._crit_edge ], [ %i.bc, %.preheader.preheader ] ; 2 uses
  %.06066 = phi ptr [ %i.ca, %._crit_edge ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.06165 = phi ptr [ %i.bz, %._crit_edge ], [ %i.au, %.preheader.preheader ] ; 2 uses
  %.06264 = phi ptr [ %i.by, %._crit_edge ], [ %i.ap, %.preheader.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.06264, i64 %indvars.iv
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !57
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.06165, i64 %indvars.iv
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !57
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bf, %i.f
  %i.bk = sitofp nsz i32 %i.bj to float           ; 2 uses
  %i.bl = sub nsw i32 %i.bi, %i.f
  %i.bm = sitofp nsz i32 %i.bl to float           ; 2 uses
  %i.bn = tail call nsz float @hypotf(float noundef %i.bk, float noundef %i.bm) #14
  %i.bo = fptoui float %i.bn to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.06066, i64 %indvars.iv
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !57
  %i.bq = tail call nsz float @llvm.atan2.f32(float %i.bk, float %i.bm)
  %i.br = fpext nsz float %i.bq to double
  %i.bs = tail call nsz double @llvm.fmuladd.f64(double %i.br, double f0x404CA5DC1A63C1F8, double 1.800000e+02)
  %i.bt = fptrunc nsz double %i.bs to float
  %i.bu = tail call nsz float @llvm.floor.f32(float %i.bt)
  %i.bv = frem nsz float %i.bu, 3.600000e+02
  %i.bw = fptosi float %i.bv to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.05967, i64 %indvars.iv
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.b
  %i.by = getelementptr inbounds [2 x i8], ptr %.06264, i64 %8
  %i.bz = getelementptr inbounds [2 x i8], ptr %.06165, i64 %i.ai
  %i.ca = getelementptr inbounds [2 x i8], ptr %.06066, i64 %i.aj
  %i.cb = getelementptr inbounds [2 x i8], ptr %.05967, i64 %i.ak
  %i.cc = add nsw i32 %.05868, 1                  ; 2 uses
  %exitcond71.not = icmp eq i32 %i.cc, %i.s
  br i1 %exitcond71.not, label %._crit_edge69.split, label %.preheader, !llvm.loop !98

._crit_edge69.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @compute_sat_hue_metrics8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32                    ; 6 uses
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge64

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !46     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ae = sext i32 %i.ac to i64
  %i.af = sext i32 %i.aa to i64
  %i.ag = sext i32 %i.x to i64
  %i.ah = sext i32 %i.t to i64
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !54 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader.preheader, label %._crit_edge64

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.am = mul nsw i32 %i.ac, %i.j
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.ar = mul nsw i32 %i.aa, %i.j
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  %i.au = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.av = mul nsw i32 %i.x, %i.j
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.aw
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.az = mul nsw i32 %i.t, %i.j
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.bc = phi i32 [ %i.cc, %._crit_edge ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %.05363 = phi i32 [ %i.ch, %._crit_edge ], [ %i.j, %.preheader.preheader ]
  %.05462 = phi ptr [ %i.cg, %._crit_edge ], [ %i.bb, %.preheader.preheader ] ; 2 uses
  %.05561 = phi ptr [ %i.cf, %._crit_edge ], [ %i.ax, %.preheader.preheader ] ; 2 uses
  %.05660 = phi ptr [ %i.ce, %._crit_edge ], [ %i.at, %.preheader.preheader ] ; 2 uses
  %.05759 = phi ptr [ %i.cd, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05759, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.05660, i64 %indvars.iv
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bg, -128
  %i.bl = sitofp nsz i32 %i.bk to float           ; 2 uses
  %i.bm = add nsw i32 %i.bj, -128
  %i.bn = sitofp nsz i32 %i.bm to float           ; 2 uses
  %i.bo = tail call nsz float @hypotf(float noundef %i.bl, float noundef %i.bn) #14
  %i.bp = fptoui float %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.05561, i64 %indvars.iv
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !25
  %i.br = tail call nsz float @llvm.atan2.f32(float %i.bl, float %i.bn)
  %i.bs = fpext nsz float %i.br to double
  %i.bt = tail call nsz double @llvm.fmuladd.f64(double %i.bs, double f0x404CA5DC1A63C1F8, double 1.800000e+02)
  %i.bu = fptrunc nsz double %i.bt to float
  %i.bv = tail call nsz float @llvm.floor.f32(float %i.bu)
  %i.bw = frem nsz float %i.bv, 3.600000e+02
  %i.bx = fptosi float %i.bw to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.05462, i64 %indvars.iv
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.ad, align 4, !tbaa !54 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.cc = phi i32 [ %i.bc, %.preheader ], [ %i.bz, %.lr.ph ]
  %i.cd = getelementptr inbounds i8, ptr %.05759, i64 %i.ae
  %i.ce = getelementptr inbounds i8, ptr %.05660, i64 %i.af
  %i.cf = getelementptr inbounds i8, ptr %.05561, i64 %i.ag
  %i.cg = getelementptr inbounds i8, ptr %.05462, i64 %i.ah
  %i.ch = add nsw i32 %.05363, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.o
  br i1 %exitcond.not, label %._crit_edge64, label %.preheader, !llvm.loop !100

._crit_edge64:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @av_dict_set_int(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @filter8_tout(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !60     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i                      ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.f, %i.m
  %i.o = sdiv i64 %i.n, %i.i                      ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %i.r = icmp slt i32 %i.k, %i.p
  br i1 %i.r, label %.lr.ph189, label %._crit_edge

.lr.ph189:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !74   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 5 uses
  %i.y = add nsw i32 %i.v, -1                     ; 2 uses
  %i.z = icmp sgt i32 %i.v, 2                     ; 2 uses
  %i.aa = icmp ne ptr %i.c, null                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
end_hunk_0
