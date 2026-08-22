Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/asrc_hilbert?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@query_formats:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @ff_set_common_channel_layouts_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.chlayouts) #7 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @ff_set_common_samplerates_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ %i.g, %bb.a ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 4 uses
  %i.f = tail call i32 @ff_outlink_frame_wanted(ptr noundef %i.c) #7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.o = sub nsw i64 %i.l, %i.n
  %i.p = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %i.i) ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ff_avfilter_link_set_in_status(ptr noundef %i.c, i32 noundef -541478725, i64 noundef %i.n) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = tail call ptr @ff_get_audio_buffer(ptr noundef %i.c, i32 noundef %i.q) #7 ; 4 uses
  %.not28 = icmp eq ptr %i.s, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.w = load i64, ptr %i.m, align 8, !tbaa !30
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = and i64 %i.p, 2147483647                 ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 4 %i.x, i64 %i.z, i1 false)
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !30  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !33
  %i.ac = add nsw i64 %i.aa, %i.y
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !30
  %i.ad = tail call i32 @ff_filter_frame(ptr noundef %i.c, ptr noundef nonnull %i.s) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.ad, %bb.e ], [ -1497649742, %bb.a ], [ -12, %bb.d ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @config_props(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @av_malloc_array(i64 noundef %i.f, i64 noundef 4) #7 ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !32
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.d, align 4, !tbaa !20   ; 62 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  switch i32 %i.k, label %bb.aq [
    i32 0, label %.preheader.i
    i32 4, label %.preheader365.i
    i32 1, label %.preheader366.i
    i32 2, label %.preheader367.i
    i32 3, label %.preheader368.i
    i32 5, label %.preheader369.i
    i32 6, label %.preheader370.i
    i32 7, label %.preheader371.i
    i32 8, label %.preheader372.i
    i32 11, label %.preheader373.i
    i32 9, label %.preheader374.i
    i32 10, label %.preheader375.i
    i32 12, label %.preheader376.i
    i32 13, label %.preheader377.i
    i32 14, label %.preheader378.i
    i32 15, label %bb.u
    i32 16, label %.preheader379.i
    i32 17, label %.preheader380.i
    i32 18, label %.preheader381.i
    i32 19, label %.preheader382.i
    i32 20, label %bb.ao
  ]

.preheader382.i:                                  ; preds = %bb.b
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph385.i, label %._crit_edge

.lr.ph385.i:                                      ; preds = %.preheader382.i
  %i.m = add nsw i32 %i.i, -1
  %i.n = uitofp nneg i32 %i.m to double
  %wide.trip.count456.i = zext nneg i32 %i.i to i64
  br label %bb.an

.preheader381.i:                                  ; preds = %bb.b
  %i.o = icmp sgt i32 %i.i, 0
  br i1 %i.o, label %.lr.ph388.i, label %._crit_edge

.lr.ph388.i:                                      ; preds = %.preheader381.i
  %i.p = add nsw i32 %i.i, -1
  %i.q = uitofp nneg i32 %i.p to double
  %wide.trip.count461.i = zext nneg i32 %i.i to i64
  br label %bb.ai

.preheader380.i:                                  ; preds = %bb.b
  %i.r = icmp sgt i32 %i.i, 0
  br i1 %i.r, label %.lr.ph391.i, label %._crit_edge

.lr.ph391.i:                                      ; preds = %.preheader380.i
  %i.s = add nsw i32 %i.i, -1
  %i.t = uitofp nneg i32 %i.s to double
  %wide.trip.count466.i = zext nneg i32 %i.i to i64
  br label %bb.z

.preheader379.i:                                  ; preds = %bb.b
  %i.u = icmp sgt i32 %i.i, 0
  br i1 %i.u, label %.lr.ph394.i, label %._crit_edge

.lr.ph394.i:                                      ; preds = %.preheader379.i
  %i.v = add nsw i32 %i.i, -1
  %i.w = uitofp nneg i32 %i.v to double
  %wide.trip.count471.i = zext nneg i32 %i.i to i64
  br label %bb.w

.preheader378.i:                                  ; preds = %bb.b
  %i.x = icmp sgt i32 %i.i, 0
  br i1 %i.x, label %.lr.ph408.i, label %._crit_edge

.lr.ph408.i:                                      ; preds = %.preheader378.i
  %i.y = add nsw i32 %i.i, -1
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = fmul nnan nsz double %i.z, 5.000000e-01
  %i.ab = fptrunc nsz double %i.aa to float       ; 2 uses
  %i.ac = fpext nsz float %i.ab to double         ; 3 uses
  %i.ad = fmul nnan nsz double %i.ac, 3.000000e-01
  %i.ae = fmul nnan nsz double %i.ac, f0x3FE6666666666666
  %wide.trip.count479.i = zext nneg i32 %i.i to i64
  br label %bb.r

.preheader377.i:                                  ; preds = %bb.b
  %i.af = icmp sgt i32 %i.i, 0
  br i1 %i.af, label %.lr.ph411.i, label %._crit_edge

.lr.ph411.i:                                      ; preds = %.preheader377.i
  %i.ag = add nsw i32 %i.i, -1                    ; 2 uses
  %.neg560566.i = lshr i32 %i.ag, 1
  %i.ah = uitofp nneg i32 %i.ag to double
  %i.ai = fmul nnan nsz double %i.ah, 4.000000e-01
  %i.aj = fmul nnan nsz double %i.ai, 5.000000e-01
  %wide.trip.count484.i = zext nneg i32 %i.i to i64
  br label %bb.q

.preheader376.i:                                  ; preds = %bb.b
  %i.ak = icmp sgt i32 %i.i, 0
  br i1 %i.ak, label %.lr.ph414.i, label %._crit_edge

.lr.ph414.i:                                      ; preds = %.preheader376.i
  %i.al = add nsw i32 %i.i, -1
  %i.am = uitofp nneg i32 %i.al to double
  %wide.trip.count489.i = zext nneg i32 %i.i to i64
  br label %bb.n

.preheader375.i:                                  ; preds = %bb.b
  %i.an = icmp sgt i32 %i.i, 0
  br i1 %i.an, label %.lr.ph417.i, label %._crit_edge

.lr.ph417.i:                                      ; preds = %.preheader375.i
  %i.ao = add nsw i32 %i.i, -1
  %i.ap = uitofp nneg i32 %i.ao to double         ; 2 uses
  %wide.trip.count494.i = zext nneg i32 %i.i to i64
  %1 = insertelement <2 x double> poison, double %i.ap, i64 0
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.m

.preheader374.i:                                  ; preds = %bb.b
  %i.aq = icmp sgt i32 %i.i, 0
  br i1 %i.aq, label %.lr.ph420.i, label %._crit_edge

.lr.ph420.i:                                      ; preds = %.preheader374.i
  %i.ar = add nsw i32 %i.i, -1
  %i.as = uitofp nneg i32 %i.ar to double
  %wide.trip.count499.i = zext nneg i32 %i.i to i64
  br label %bb.l

.preheader373.i:                                  ; preds = %bb.b
  %i.at = icmp sgt i32 %i.i, 0
  br i1 %i.at, label %.lr.ph423.i, label %._crit_edge

.lr.ph423.i:                                      ; preds = %.preheader373.i
  %i.au = add nsw i32 %i.i, -1
  %i.av = uitofp nneg i32 %i.au to double
  %wide.trip.count504.i = zext nneg i32 %i.i to i64
  %3 = insertelement <2 x double> poison, double %i.av, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.k

.preheader372.i:                                  ; preds = %bb.b
  %i.aw = icmp sgt i32 %i.i, 0
  br i1 %i.aw, label %.lr.ph426.i, label %._crit_edge

.lr.ph426.i:                                      ; preds = %.preheader372.i
  %i.ax = add nsw i32 %i.i, -1
  %i.ay = uitofp nneg i32 %i.ax to double         ; 2 uses
  %wide.trip.count509.i = zext nneg i32 %i.i to i64
  %5 = insertelement <2 x double> poison, double %i.ay, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.j

.preheader371.i:                                  ; preds = %bb.b
  %i.az = icmp sgt i32 %i.i, 0
  br i1 %i.az, label %.lr.ph429.i, label %._crit_edge

.lr.ph429.i:                                      ; preds = %.preheader371.i
  %i.ba = add nsw i32 %i.i, -1
  %i.bb = uitofp nneg i32 %i.ba to double         ; 2 uses
  %wide.trip.count514.i = zext nneg i32 %i.i to i64
  %7 = insertelement <2 x double> poison, double %i.bb, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.i

.preheader370.i:                                  ; preds = %bb.b
  %i.bc = icmp sgt i32 %i.i, 0
  br i1 %i.bc, label %.lr.ph432.i, label %._crit_edge

.lr.ph432.i:                                      ; preds = %.preheader370.i
  %i.bd = add nsw i32 %i.i, -1
  %i.be = uitofp nneg i32 %i.bd to double
  %wide.trip.count519.i = zext nneg i32 %i.i to i64
  %9 = insertelement <2 x double> poison, double %i.be, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %bb.h

.preheader369.i:                                  ; preds = %bb.b
  %i.bf = icmp sgt i32 %i.i, 0
  br i1 %i.bf, label %.lr.ph435.i, label %._crit_edge

.lr.ph435.i:                                      ; preds = %.preheader369.i
  %i.bg = add nsw i32 %i.i, -1
  %i.bh = uitofp nneg i32 %i.bg to double
  %i.bi = fmul nnan nsz double %i.bh, 5.000000e-01 ; 3 uses
  %wide.trip.count524.i = zext nneg i32 %i.i to i64
  br label %bb.g

.preheader368.i:                                  ; preds = %bb.b
  %i.bj = icmp sgt i32 %i.i, 0
  br i1 %i.bj, label %.lr.ph438.i, label %._crit_edge

.lr.ph438.i:                                      ; preds = %.preheader368.i
  %i.bk = add nsw i32 %i.i, -1
  %i.bl = uitofp nneg i32 %i.bk to double
  %wide.trip.count529.i = zext nneg i32 %i.i to i64
  %11 = insertelement <2 x double> poison, double %i.bl, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.f

.preheader367.i:                                  ; preds = %bb.b
  %i.bm = icmp sgt i32 %i.i, 0
  br i1 %i.bm, label %.lr.ph441.i, label %._crit_edge

.lr.ph441.i:                                      ; preds = %.preheader367.i
  %i.bn = add nsw i32 %i.i, -1
  %i.bo = uitofp nneg i32 %i.bn to double
  %wide.trip.count534.i = zext nneg i32 %i.i to i64
  br label %bb.e

.preheader366.i:                                  ; preds = %bb.b
  %i.bp = icmp sgt i32 %i.i, 0
  br i1 %i.bp, label %.lr.ph444.i, label %._crit_edge

.lr.ph444.i:                                      ; preds = %.preheader366.i
  %i.bq = add nsw i32 %i.i, -1
  %i.br = uitofp nneg i32 %i.bq to double
  %wide.trip.count539.i = zext nneg i32 %i.i to i64
  br label %bb.d

.preheader365.i:                                  ; preds = %bb.b
  %i.bs = icmp sgt i32 %i.i, 0
  br i1 %i.bs, label %.lr.ph447.i, label %._crit_edge

.lr.ph447.i:                                      ; preds = %.preheader365.i
  %i.bt = add nsw i32 %i.i, -1
  %i.bu = uitofp nneg i32 %i.bt to double
  %i.bv = fmul nnan nsz double %i.bu, 5.000000e-01 ; 2 uses
  %wide.trip.count544.i = zext nneg i32 %i.i to i64
  br label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.bw = icmp sgt i32 %i.i, 0
  br i1 %i.bw, label %.lr.ph450.preheader.i, label %._crit_edge

.lr.ph450.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count549.i = zext nneg i32 %i.i to i64
  br label %.lr.ph450.i

.lr.ph450.i:                                      ; preds = %.lr.ph450.i, %.lr.ph450.preheader.i
  %indvars.iv546.i = phi i64 [ 0, %.lr.ph450.preheader.i ], [ %indvars.iv.next547.i, %.lr.ph450.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv546.i
  store float 1.000000e+00, ptr %i.bx, align 4, !tbaa !48
  %indvars.iv.next547.i = add nuw nsw i64 %indvars.iv546.i, 1 ; 2 uses
  %exitcond550.not.i = icmp eq i64 %indvars.iv.next547.i, %wide.trip.count549.i
  br i1 %exitcond550.not.i, label %generate_window_func.exit, label %.lr.ph450.i, !llvm.loop !50

bb.c:                                             ; preds = %bb.c, %.lr.ph447.i
  %indvars.iv541.i = phi i64 [ 0, %.lr.ph447.i ], [ %indvars.iv.next542.i, %bb.c ] ; 3 uses
  %i.by = trunc nuw nsw i64 %indvars.iv541.i to i32
  %i.bz = uitofp nneg i32 %i.by to double
  %i.ca = fsub nsz double %i.bz, %i.bv
  %i.cb = fdiv nsz double %i.ca, %i.bv
  %i.cc = tail call nsz double @llvm.fabs.f64(double %i.cb)
  %i.cd = fsub nsz double 1.000000e+00, %i.cc
  %i.ce = fptrunc nsz double %i.cd to float
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv541.i
  store float %i.ce, ptr %i.cf, align 4, !tbaa !48
  %indvars.iv.next542.i = add nuw nsw i64 %indvars.iv541.i, 1 ; 2 uses
  %exitcond545.not.i = icmp eq i64 %indvars.iv.next542.i, %wide.trip.count544.i
  br i1 %exitcond545.not.i, label %generate_window_func.exit, label %bb.c, !llvm.loop !52

bb.d:                                             ; preds = %bb.d, %.lr.ph444.i
  %indvars.iv536.i = phi i64 [ 0, %.lr.ph444.i ], [ %indvars.iv.next537.i, %bb.d ] ; 3 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv536.i to i32
  %i.ch = uitofp nneg i32 %i.cg to double
  %i.ci = fmul nnan nsz double %i.ch, f0x401921FB54442D18
  %i.cj = fdiv nsz double %i.ci, %i.br
  %i.ck = tail call nsz double @llvm.cos.f64(double %i.cj)
  %i.cl = fsub nsz double 1.000000e+00, %i.ck
  %i.cm = fmul nsz double %i.cl, 5.000000e-01
  %i.cn = fptrunc nsz double %i.cm to float
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv536.i
  store float %i.cn, ptr %i.co, align 4, !tbaa !48
  %indvars.iv.next537.i = add nuw nsw i64 %indvars.iv536.i, 1 ; 2 uses
  %exitcond540.not.i = icmp eq i64 %indvars.iv.next537.i, %wide.trip.count539.i
  br i1 %exitcond540.not.i, label %generate_window_func.exit, label %bb.d, !llvm.loop !53

bb.e:                                             ; preds = %bb.e, %.lr.ph441.i
  %indvars.iv531.i = phi i64 [ 0, %.lr.ph441.i ], [ %indvars.iv.next532.i, %bb.e ] ; 3 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv531.i to i32
  %i.cq = uitofp nneg i32 %i.cp to double
  %i.cr = fmul nnan nsz double %i.cq, f0x401921FB54442D18
  %i.cs = fdiv nsz double %i.cr, %i.bo
  %i.ct = tail call nsz double @llvm.cos.f64(double %i.cs)
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.ct, double -4.600000e-01, double 5.400000e-01)
  %i.cv = fptrunc nsz double %i.cu to float
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv531.i
  store float %i.cv, ptr %i.cw, align 4, !tbaa !48
  %indvars.iv.next532.i = add nuw nsw i64 %indvars.iv531.i, 1 ; 2 uses
  %exitcond535.not.i = icmp eq i64 %indvars.iv.next532.i, %wide.trip.count534.i
  br i1 %exitcond535.not.i, label %generate_window_func.exit, label %bb.e, !llvm.loop !54

bb.f:                                             ; preds = %bb.f, %.lr.ph438.i
  %indvars.iv526.i = phi i64 [ 0, %.lr.ph438.i ], [ %indvars.iv.next527.i, %bb.f ] ; 3 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv526.i to i32
  %i.cy = uitofp nneg i32 %i.cx to double
  %13 = insertelement <2 x double> poison, double %i.cy, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = fmul nnan nsz <2 x double> %14, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %16 = fdiv nsz <2 x double> %15, %12            ; 2 uses
  %17 = extractelement <2 x double> %16, i64 0
  %18 = tail call nsz double @llvm.cos.f64(double %17)
  %19 = tail call nsz double @llvm.fmuladd.f64(double %18, double -4.965600e-01, double 4.265900e-01)
  %20 = extractelement <2 x double> %16, i64 1
  %i.cz = tail call nsz double @llvm.cos.f64(double %20)
  %i.da = tail call nsz double @llvm.fmuladd.f64(double %i.cz, double 7.684900e-02, double %19)
  %i.db = fptrunc nsz double %i.da to float
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv526.i
  store float %i.db, ptr %i.dc, align 4, !tbaa !48
  %indvars.iv.next527.i = add nuw nsw i64 %indvars.iv526.i, 1 ; 2 uses
  %exitcond530.not.i = icmp eq i64 %indvars.iv.next527.i, %wide.trip.count529.i
  br i1 %exitcond530.not.i, label %generate_window_func.exit, label %bb.f, !llvm.loop !55

bb.g:                                             ; preds = %bb.g, %.lr.ph435.i
  %indvars.iv521.i = phi i64 [ 0, %.lr.ph435.i ], [ %indvars.iv.next522.i, %bb.g ] ; 3 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv521.i to i32
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = fsub nsz double %i.de, %i.bi            ; 2 uses
  %i.dg = fdiv nsz double %i.df, %i.bi
  %i.dh = fmul nsz double %i.df, %i.dg
  %i.di = fdiv nsz double %i.dh, %i.bi
  %i.dj = fsub nsz double 1.000000e+00, %i.di
  %i.dk = fptrunc nsz double %i.dj to float
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv521.i
  store float %i.dk, ptr %i.dl, align 4, !tbaa !48
  %indvars.iv.next522.i = add nuw nsw i64 %indvars.iv521.i, 1 ; 2 uses
  %exitcond525.not.i = icmp eq i64 %indvars.iv.next522.i, %wide.trip.count524.i
  br i1 %exitcond525.not.i, label %generate_window_func.exit, label %bb.g, !llvm.loop !56

bb.h:                                             ; preds = %bb.h, %.lr.ph432.i
  %indvars.iv516.i = phi i64 [ 0, %.lr.ph432.i ], [ %indvars.iv.next517.i, %bb.h ] ; 3 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv516.i to i32
  %i.dn = uitofp nneg i32 %i.dm to double
  %21 = insertelement <2 x double> poison, double %i.dn, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %23 = fmul nnan nsz <2 x double> %22, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %24 = fdiv nsz <2 x double> %23, %10            ; 2 uses
  %25 = extractelement <2 x double> %24, i64 0
  %26 = tail call nsz double @llvm.cos.f64(double %25)
  %27 = tail call nsz double @llvm.fmuladd.f64(double %26, double f0xBFFFC60487BC5429, double 1.000000e+00)
  %28 = extractelement <2 x double> %24, i64 1
  %i.do = tail call nsz double @llvm.cos.f64(double %28)
  %i.dp = tail call nsz double @llvm.fmuladd.f64(double %i.do, double f0x3FFCA8A8A00BFC02, double %27)
  %29 = fmul nnan nsz <2 x double> %22, <double f0x4032D97C7F3321D2, double f0x403921FB54442D18>
  %30 = fdiv nsz <2 x double> %29, %10            ; 2 uses
  %31 = extractelement <2 x double> %30, i64 0
  %32 = tail call nsz double @llvm.cos.f64(double %31)
  %33 = tail call nsz double @llvm.fmuladd.f64(double %32, double f0xBFF483615F7CFB71, double %i.dp)
  %34 = extractelement <2 x double> %30, i64 1
  %i.dq = tail call nsz double @llvm.cos.f64(double %34)
  %i.dr = tail call nsz double @llvm.fmuladd.f64(double %i.dq, double f0x3FE55E6EFBAFE037, double %33)
  %35 = fmul nnan nsz <2 x double> %22, <double f0x403F6A7A2955385E, double f0x4042D97C7F3321D2>
  %36 = fdiv nsz <2 x double> %35, %10            ; 2 uses
  %37 = extractelement <2 x double> %36, i64 0
  %38 = tail call nsz double @llvm.cos.f64(double %37)
  %39 = tail call nsz double @llvm.fmuladd.f64(double %38, double f0xBFCEBD96C789A119, double %i.dr)
  %40 = extractelement <2 x double> %36, i64 1
  %i.ds = tail call nsz double @llvm.cos.f64(double %40)
  %i.dt = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double f0x3FAD0210B59277DF, double %39)
  %41 = fmul nnan nsz <2 x double> %22, <double f0x4045FDBBE9BBA775, double f0x404921FB54442D18>
  %42 = fdiv nsz <2 x double> %41, %10            ; 2 uses
  %43 = extractelement <2 x double> %42, i64 0
  %44 = tail call nsz double @llvm.cos.f64(double %43)
  %45 = tail call nsz double @llvm.fmuladd.f64(double %44, double f0xBF80A911CABA9273, double %i.dt)
  %46 = extractelement <2 x double> %42, i64 1
  %i.du = tail call nsz double @llvm.cos.f64(double %46)
  %i.dv = tail call nsz double @llvm.fmuladd.f64(double %i.du, double f0x3F44770F6C5EC1E5, double %45)
  %47 = fmul nnan nsz <2 x double> %22, <double f0x404C463ABECCB2BB, double f0x404F6A7A2955385E>
  %48 = fdiv nsz <2 x double> %47, %10            ; 2 uses
  %49 = extractelement <2 x double> %48, i64 0
  %50 = tail call nsz double @llvm.cos.f64(double %49)
  %51 = tail call nsz double @llvm.fmuladd.f64(double %50, double f0xBEF4C56FFA2B6206, double %i.dv)
  %52 = extractelement <2 x double> %48, i64 1
  %i.dw = tail call nsz double @llvm.cos.f64(double %52)
  %i.dx = tail call nsz double @llvm.fmuladd.f64(double %i.dw, double 1.329740e-07, double %51)
  %i.dy = fptrunc nsz double %i.dx to float
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv516.i
  store float %i.dy, ptr %i.dz, align 4, !tbaa !48
  %indvars.iv.next517.i = add nuw nsw i64 %indvars.iv516.i, 1 ; 2 uses
  %exitcond520.not.i = icmp eq i64 %indvars.iv.next517.i, %wide.trip.count519.i
  br i1 %exitcond520.not.i, label %generate_window_func.exit, label %bb.h, !llvm.loop !57

bb.i:                                             ; preds = %bb.i, %.lr.ph429.i
  %indvars.iv511.i = phi i64 [ 0, %.lr.ph429.i ], [ %indvars.iv.next512.i, %bb.i ] ; 3 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv511.i to i32
  %i.eb = uitofp nneg i32 %i.ea to double         ; 2 uses
  %53 = insertelement <2 x double> poison, double %i.eb, i64 0
  %54 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> zeroinitializer
  %55 = fmul nnan nsz <2 x double> %54, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %56 = fdiv nsz <2 x double> %55, %8             ; 2 uses
  %57 = extractelement <2 x double> %56, i64 0
  %58 = tail call nsz double @llvm.cos.f64(double %57)
  %59 = tail call nsz double @llvm.fmuladd.f64(double %58, double -4.882900e-01, double 3.587500e-01)
  %60 = extractelement <2 x double> %56, i64 1
  %i.ec = tail call nsz double @llvm.cos.f64(double %60)
  %i.ed = tail call nsz double @llvm.fmuladd.f64(double %i.ec, double 1.412800e-01, double %59)
  %i.ee = fmul nnan nsz double %i.eb, f0x4032D97C7F3321D2
  %i.ef = fdiv nsz double %i.ee, %i.bb
  %i.eg = tail call nsz double @llvm.cos.f64(double %i.ef)
  %i.eh = tail call nsz double @llvm.fmuladd.f64(double %i.eg, double -1.168000e-02, double %i.ed)
  %i.ei = fptrunc nsz double %i.eh to float
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv511.i
  store float %i.ei, ptr %i.ej, align 4, !tbaa !48
  %indvars.iv.next512.i = add nuw nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %exitcond515.not.i = icmp eq i64 %indvars.iv.next512.i, %wide.trip.count514.i
  br i1 %exitcond515.not.i, label %generate_window_func.exit, label %bb.i, !llvm.loop !58

bb.j:                                             ; preds = %bb.j, %.lr.ph426.i
  %indvars.iv506.i = phi i64 [ 0, %.lr.ph426.i ], [ %indvars.iv.next507.i, %bb.j ] ; 3 uses
  %i.ek = trunc nuw nsw i64 %indvars.iv506.i to i32
  %i.el = uitofp nneg i32 %i.ek to double         ; 2 uses
  %61 = insertelement <2 x double> poison, double %i.el, i64 0
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = fmul nnan nsz <2 x double> %62, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %64 = fdiv nsz <2 x double> %63, %6             ; 2 uses
  %65 = extractelement <2 x double> %64, i64 0
  %66 = tail call nsz double @llvm.cos.f64(double %65)
  %67 = tail call nsz double @llvm.fmuladd.f64(double %66, double f0xBFDF4EAF251C193B, double f0x3FD744ED047AB904)
  %68 = extractelement <2 x double> %64, i64 1
  %i.em = tail call nsz double @llvm.cos.f64(double %68)
  %i.en = tail call nsz double @llvm.fmuladd.f64(double %i.em, double f0x3FC17C17A89331A1, double %67)
  %i.eo = fmul nnan nsz double %i.el, f0x4032D97C7F3321D2
  %i.ep = fdiv nsz double %i.eo, %i.ay
  %i.eq = tail call nsz double @llvm.cos.f64(double %i.ep)
  %i.er = tail call nsz double @llvm.fmuladd.f64(double %i.eq, double -1.064110e-02, double %i.en)
  %i.es = fptrunc nsz double %i.er to float
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv506.i
  store float %i.es, ptr %i.et, align 4, !tbaa !48
  %indvars.iv.next507.i = add nuw nsw i64 %indvars.iv506.i, 1 ; 2 uses
  %exitcond510.not.i = icmp eq i64 %indvars.iv.next507.i, %wide.trip.count509.i
  br i1 %exitcond510.not.i, label %generate_window_func.exit, label %bb.j, !llvm.loop !59

bb.k:                                             ; preds = %bb.k, %.lr.ph423.i
  %indvars.iv501.i = phi i64 [ 0, %.lr.ph423.i ], [ %indvars.iv.next502.i, %bb.k ] ; 3 uses
  %i.eu = trunc nuw nsw i64 %indvars.iv501.i to i32
  %i.ev = uitofp nneg i32 %i.eu to double
  %69 = insertelement <2 x double> poison, double %i.ev, i64 0
  %70 = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> zeroinitializer
  %71 = fmul nnan nsz <2 x double> %70, <double 1.000000e+00, double f0x401921FB54442D18>
  %72 = fdiv nsz <2 x double> %71, %4             ; 2 uses
  %73 = extractelement <2 x double> %72, i64 0
  %i.ew = fadd nsz double %73, -5.000000e-01
  %i.ex = tail call nsz double @llvm.fabs.f64(double %i.ew)
  %i.ey = tail call nsz double @llvm.fmuladd.f64(double %i.ex, double -4.800000e-01, double 6.200000e-01)
  %74 = extractelement <2 x double> %72, i64 1
  %i.ez = tail call nsz double @llvm.cos.f64(double %74)
  %i.fa = tail call nsz double @llvm.fmuladd.f64(double %i.ez, double -3.800000e-01, double %i.ey)
  %i.fb = fptrunc nsz double %i.fa to float
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv501.i
  store float %i.fb, ptr %i.fc, align 4, !tbaa !48
  %indvars.iv.next502.i = add nuw nsw i64 %indvars.iv501.i, 1 ; 2 uses
  %exitcond505.not.i = icmp eq i64 %indvars.iv.next502.i, %wide.trip.count504.i
  br i1 %exitcond505.not.i, label %generate_window_func.exit, label %bb.k, !llvm.loop !60

bb.l:                                             ; preds = %bb.l, %.lr.ph420.i
  %indvars.iv496.i = phi i64 [ 0, %.lr.ph420.i ], [ %indvars.iv.next497.i, %bb.l ] ; 3 uses
  %i.fd = trunc nuw nsw i64 %indvars.iv496.i to i32
  %i.fe = uitofp nneg i32 %i.fd to double
  %i.ff = fmul nnan nsz double %i.fe, f0x400921FB54442D18
  %i.fg = fdiv nsz double %i.ff, %i.as
  %i.fh = tail call nsz double @llvm.sin.f64(double %i.fg)
  %i.fi = fptrunc nsz double %i.fh to float
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv496.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !48
  %indvars.iv.next497.i = add nuw nsw i64 %indvars.iv496.i, 1 ; 2 uses
  %exitcond500.not.i = icmp eq i64 %indvars.iv.next497.i, %wide.trip.count499.i
  br i1 %exitcond500.not.i, label %generate_window_func.exit, label %bb.l, !llvm.loop !61

bb.m:                                             ; preds = %bb.m, %.lr.ph417.i
  %indvars.iv491.i = phi i64 [ 0, %.lr.ph417.i ], [ %indvars.iv.next492.i, %bb.m ] ; 3 uses
  %i.fk = trunc nuw nsw i64 %indvars.iv491.i to i32
  %i.fl = uitofp nneg i32 %i.fk to double         ; 2 uses
  %75 = insertelement <2 x double> poison, double %i.fl, i64 0
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  %77 = fmul nnan nsz <2 x double> %76, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %78 = fdiv nsz <2 x double> %77, %2             ; 2 uses
  %79 = extractelement <2 x double> %78, i64 0
  %80 = tail call nsz double @llvm.cos.f64(double %79)
  %81 = tail call nsz double @llvm.fmuladd.f64(double %80, double -4.873960e-01, double 3.557680e-01)
  %82 = extractelement <2 x double> %78, i64 1
  %i.fm = tail call nsz double @llvm.cos.f64(double %82)
  %i.fn = tail call nsz double @llvm.fmuladd.f64(double %i.fm, double 1.442320e-01, double %81)
  %i.fo = fmul nnan nsz double %i.fl, f0x4032D97C7F3321D2
  %i.fp = fdiv nsz double %i.fo, %i.ap
  %i.fq = tail call nsz double @llvm.cos.f64(double %i.fp)
  %i.fr = tail call nsz double @llvm.fmuladd.f64(double %i.fq, double -1.260400e-02, double %i.fn)
  %i.fs = fptrunc nsz double %i.fr to float
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv491.i
  store float %i.fs, ptr %i.ft, align 4, !tbaa !48
  %indvars.iv.next492.i = add nuw nsw i64 %indvars.iv491.i, 1 ; 2 uses
  %exitcond495.not.i = icmp eq i64 %indvars.iv.next492.i, %wide.trip.count494.i
  br i1 %exitcond495.not.i, label %generate_window_func.exit, label %bb.m, !llvm.loop !62

bb.n:                                             ; preds = %bb.p, %.lr.ph414.i
  %indvars.iv486.i = phi i64 [ 0, %.lr.ph414.i ], [ %indvars.iv.next487.i, %bb.p ] ; 3 uses
  %indvars.iv486.tr.i = trunc i64 %indvars.iv486.i to i32
  %i.fu = shl i32 %indvars.iv486.tr.i, 1
  %i.fv = uitofp i32 %i.fu to double
  %i.fw = fdiv nsz double %i.fv, %i.am
  %i.fx = fadd nsz double %i.fw, -1.000000e+00    ; 2 uses
  %i.fy = fcmp nsz une double %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fz = fmul nsz double %i.fx, f0x400921FB54442D18 ; 2 uses
  %i.ga = tail call nsz double @llvm.sin.f64(double %i.fz)
  %i.gb = fdiv nsz double %i.ga, %i.fz
  %i.gc = fptrunc nsz double %i.gb to float
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gd = phi float [ %i.gc, %bb.o ], [ 1.000000e+00, %bb.n ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv486.i
  store float %i.gd, ptr %i.ge, align 4, !tbaa !48
  %indvars.iv.next487.i = add nuw nsw i64 %indvars.iv486.i, 1 ; 2 uses
  %exitcond490.not.i = icmp eq i64 %indvars.iv.next487.i, %wide.trip.count489.i
  br i1 %exitcond490.not.i, label %generate_window_func.exit, label %bb.n, !llvm.loop !63

bb.q:                                             ; preds = %bb.q, %.lr.ph411.i
  %indvars.iv481.i = phi i64 [ 0, %.lr.ph411.i ], [ %indvars.iv.next482.i, %bb.q ] ; 3 uses
  %i.gf = trunc nuw nsw i64 %indvars.iv481.i to i32
  %i.gg = sub i32 %i.gf, %.neg560566.i
  %i.gh = sitofp nsz i32 %i.gg to double
  %i.gi = fdiv nsz double %i.gh, %i.aj            ; 2 uses
  %i.gj = fmul nsz double %i.gi, %i.gi
  %i.gk = fmul nsz double %i.gj, -5.000000e-01
  %i.gl = tail call nsz double @llvm.exp.f64(double %i.gk)
  %i.gm = fptrunc nsz double %i.gl to float
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv481.i
  store float %i.gm, ptr %i.gn, align 4, !tbaa !48
  %indvars.iv.next482.i = add nuw nsw i64 %indvars.iv481.i, 1 ; 2 uses
  %exitcond485.not.i = icmp eq i64 %indvars.iv.next482.i, %wide.trip.count484.i
  br i1 %exitcond485.not.i, label %generate_window_func.exit, label %bb.q, !llvm.loop !64

bb.r:                                             ; preds = %bb.t, %.lr.ph408.i
  %indvars.iv476.i = phi i64 [ 0, %.lr.ph408.i ], [ %indvars.iv.next477.i, %bb.t ] ; 3 uses
  %i.go = trunc nuw nsw i64 %indvars.iv476.i to i32
  %i.gp = uitofp nneg i32 %i.go to float
  %i.gq = fsub nsz float %i.gp, %i.ab
  %i.gr = tail call nsz float @llvm.fabs.f32(float %i.gq)
  %i.gs = fpext nsz float %i.gr to double         ; 2 uses
  %i.gt = fcmp nsz ugt double %i.ad, %i.gs
  br i1 %i.gt, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gu = tail call nsz double @llvm.fmuladd.f64(double %i.ac, double -3.000000e-01, double %i.gs)
  %i.gv = fmul nsz double %i.gu, f0x400921FB54442D18
  %i.gw = fdiv nsz double %i.gv, %i.ae
  %i.gx = tail call nsz double @llvm.cos.f64(double %i.gw)
  %i.gy = fadd nsz double %i.gx, 1.000000e+00
  %i.gz = fmul nsz double %i.gy, 5.000000e-01
  %i.ha = fptrunc nsz double %i.gz to float
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink.i = phi float [ %i.ha, %bb.s ], [ 1.000000e+00, %bb.r ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv476.i
  store float %.sink.i, ptr %i.hb, align 4, !tbaa !48
  %indvars.iv.next477.i = add nuw nsw i64 %indvars.iv476.i, 1 ; 2 uses
  %exitcond480.not.i = icmp eq i64 %indvars.iv.next477.i, %wide.trip.count479.i
  br i1 %exitcond480.not.i, label %generate_window_func.exit, label %bb.r, !llvm.loop !65

bb.u:                                             ; preds = %bb.b
  %i.hc = add nsw i32 %i.i, -1                    ; 3 uses
  %i.hd = sitofp nsz i32 %i.hc to double
  %i.he = fdiv nsz double f0x401E6752E8A84ED4, %i.hd
  %i.hf = tail call nsz double @llvm.cosh.f64(double %i.he) ; 2 uses
  %i.hg = fmul nnan nsz double %i.hf, %i.hf
  %i.hh = fdiv nnan nsz double 1.000000e+00, %i.hg
  %i.hi = fsub nnan nsz double 1.000000e+00, %i.hh
  %i.hj = icmp sgt i32 %i.i, -1
  br i1 %i.hj, label %.lr.ph405.preheader.i, label %generate_window_func.exit

.lr.ph405.preheader.i:                            ; preds = %bb.u
  %i.hk = sdiv i32 %i.hc, 2
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = sext i32 %i.hc to i64
  br label %.lr.ph405.i

.lr.ph405.i:                                      ; preds = %._crit_edge401.i, %.lr.ph405.preheader.i
  %indvars.iv473.i = phi i64 [ %i.hl, %.lr.ph405.preheader.i ], [ %indvars.iv.next474.i, %._crit_edge401.i ] ; 7 uses
  %.0328402.i = phi double [ 0.000000e+00, %.lr.ph405.preheader.i ], [ %i.in, %._crit_edge401.i ] ; 2 uses
  %i.hn = icmp eq i64 %indvars.iv473.i, 0         ; 3 uses
  %i.ho = uitofp i1 %i.hn to double               ; 2 uses
  br i1 %i.hn, label %._crit_edge401.i, label %.lr.ph400.i

.lr.ph400.i:                                      ; preds = %.lr.ph405.i
  %i.hp = trunc nsw i64 %indvars.iv473.i to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph400.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 1, %.lr.ph400.i ] ; 4 uses
  %.0330397.i = phi double [ %i.hz, %bb.v ], [ %i.ho, %.lr.ph400.i ] ; 2 uses
  %.0331396.i = phi double [ %i.ie, %bb.v ], [ 1.000000e+00, %.lr.ph400.i ]
  %i.hq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.hr = add i32 %i.hq, %i.hp
  %i.hs = sub i32 %i.i, %i.hr
  %i.ht = sitofp nsz i32 %i.hs to double
  %i.hu = fmul nsz double %i.hi, %i.ht
  %i.hv = uitofp nneg i32 %i.hq to double
  %i.hw = fdiv nsz double 1.000000e+00, %i.hv     ; 2 uses
  %i.hx = fmul nsz double %i.hw, %i.hu
  %i.hy = fmul nsz double %.0331396.i, %i.hx      ; 2 uses
  %i.hz = fadd nsz double %.0330397.i, %i.hy      ; 3 uses
  %i.ia = sub nsw i64 %indvars.iv473.i, %indvars.iv
  %i.ib = trunc nsw i64 %i.ia to i32
  %i.ic = sitofp nsz i32 %i.ib to double
  %i.id = fmul nsz double %i.hw, %i.ic
  %i.ie = fmul nsz double %i.id, %i.hy
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.if = icmp samesign ugt i64 %indvars.iv473.i, %indvars.iv
  %i.ig = fcmp nsz une double %i.hz, %.0330397.i
  %i.ih = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %i.ih, label %bb.v, label %._crit_edge401.i, !llvm.loop !66

._crit_edge401.i:                                 ; preds = %bb.v, %.lr.ph405.i
  %.0330.lcssa.i = phi double [ %i.ho, %.lr.ph405.i ], [ %i.hz, %bb.v ]
  %i.ii = sub nsw i64 %i.hm, %indvars.iv473.i     ; 2 uses
  %i.ij = trunc nsw i64 %i.ii to i32
  %i.ik = sitofp nsz i32 %i.ij to double
  %i.il = fdiv nsz double %.0330.lcssa.i, %i.ik   ; 2 uses
  %i.im = fcmp nsz une double %.0328402.i, 0.000000e+00
  %i.in = select nsz i1 %i.im, double %.0328402.i, double %i.il ; 2 uses
  %i.io = fdiv nsz double %i.il, %i.in
  %i.ip = fptrunc nsz double %i.io to float       ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv473.i
  store float %i.ip, ptr %i.iq, align 4, !tbaa !48
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ii
  store float %i.ip, ptr %i.ir, align 4, !tbaa !48
  %indvars.iv.next474.i = add nsw i64 %indvars.iv473.i, -1
  br i1 %i.hn, label %generate_window_func.exit, label %.lr.ph405.i, !llvm.loop !67

bb.w:                                             ; preds = %bb.y, %.lr.ph394.i
  %indvars.iv468.i = phi i64 [ 0, %.lr.ph394.i ], [ %indvars.iv.next469.i, %bb.y ] ; 3 uses
  %i.is = trunc nuw nsw i64 %indvars.iv468.i to i32
  %i.it = uitofp nneg i32 %i.is to double
  %i.iu = fdiv nsz double %i.it, %i.w
  %i.iv = fadd nsz double %i.iu, -5.000000e-01
  %i.iw = fmul nsz double %i.iv, 2.000000e+00     ; 3 uses
  %i.ix = tail call nsz double @llvm.fabs.f64(double %i.iw)
  %or.cond.i = fcmp nsz ult double %i.ix, 5.000000e-01
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.iy = fmul nsz double %i.iw, 6.400000e+01
  %i.iz = tail call nsz double @llvm.fmuladd.f64(double %i.iy, double %i.iw, double 1.000000e+00)
  %i.ja = fdiv nsz double 1.000000e+00, %i.iz     ; 2 uses
  %i.jb = tail call nsz double @llvm.fabs.f64(double %i.ja)
  %i.jc = fcmp nsz olt double %i.jb, 1.000000e+00
  %i.jd = fptrunc double %i.ja to float
  %i.je = tail call nsz float @llvm.fabs.f32(float %i.jd)
  %i.jf = select i1 %i.jc, float %i.je, float 1.000000e+00
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink551.i = phi float [ %i.jf, %bb.x ], [ 0.000000e+00, %bb.w ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv468.i
  store float %.sink551.i, ptr %i.jg, align 4, !tbaa !48
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond472.not.i = icmp eq i64 %indvars.iv.next469.i, %wide.trip.count471.i
  br i1 %exitcond472.not.i, label %generate_window_func.exit, label %bb.w, !llvm.loop !68

bb.z:                                             ; preds = %bb.ah, %.lr.ph391.i
  %indvars.iv463.i = phi i64 [ 0, %.lr.ph391.i ], [ %indvars.iv.next464.i, %bb.ah ] ; 3 uses
  %i.jh = trunc nuw nsw i64 %indvars.iv463.i to i32
  %i.ji = uitofp nneg i32 %i.jh to double
  %i.jj = fdiv nsz double %i.ji, %i.t
  %i.jk = fadd nsz double %i.jj, -5.000000e-01
  %i.jl = fmul nsz double %i.jk, 2.000000e+00     ; 20 uses
  %i.jm = fcmp nsz ogt double %i.jl, 2.500000e-01
  %i.jn = fcmp nsz ole double %i.jl, 5.000000e-01
  %or.cond3.i = and i1 %i.jm, %i.jn
  br i1 %or.cond3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jo = tail call nsz double @llvm.fmuladd.f64(double %i.jl, double 2.000000e+00, double -1.000000e+00)
  %i.jp = fptrunc nsz double %i.jo to float
  %i.jq = tail call nsz float @llvm.pow.f32(float %i.jp, float 3.000000e+00)
  %i.jr = fmul nsz float %i.jq, -2.000000e+00
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
end_hunk_0
