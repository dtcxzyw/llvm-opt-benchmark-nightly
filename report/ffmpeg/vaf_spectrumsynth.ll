Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vaf_spectrumsynth?download=true
inline.NumInlined: 12
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@generate_window_func:bb.a
  %i.ud = fmul nnan nsz double %i.tf, -2.400000e+01
  %i.ue = tail call nsz double @llvm.fmuladd.f64(double %i.ud, double %i.tf, double 1.000000e+00)
  %i.uf = fmul nnan nsz double %i.tf, 4.800000e+01
  %i.ug = fmul nsz double %i.tf, %i.uf
  %i.uh = tail call nsz double @llvm.fmuladd.f64(double %i.ug, double %i.tf, double %i.ue)
  %i.ui = fptrunc nsz double %i.uh to float
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.p, %bb.t, %bb.r, %bb.n
  %.sink561 = phi float [ %i.tr, %bb.p ], [ %i.ui, %bb.t ], [ %i.tl, %bb.n ], [ %i.ua, %bb.r ], [ 0.000000e+00, %bb.s ]
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv463
  store float %.sink561, ptr %i.uj, align 4, !tbaa !77
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge451, label %bb.m, !llvm.loop !117

bb.v:                                             ; preds = %.lr.ph388, %bb.z
  %indvars.iv458 = phi i64 [ 0, %.lr.ph388 ], [ %indvars.iv.next459, %bb.z ] ; 3 uses
  %i.uk = trunc nuw nsw i64 %indvars.iv458 to i32
  %i.ul = uitofp nneg i32 %i.uk to double
  %i.um = fdiv nsz double %i.ul, %i.t
  %i.un = fadd nsz double %i.um, -5.000000e-01
  %i.uo = fmul nsz double %i.un, 2.000000e+00     ; 6 uses
  %i.up = fcmp nsz oge double %i.uo, 0.000000e+00
  %i.uq = fcmp nsz ole double %i.uo, 5.000000e-01
  %or.cond11 = and i1 %i.up, %i.uq
  br i1 %or.cond11, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ur = fmul nnan nsz double %i.uo, -6.000000e+00
  %i.us = tail call nsz double @llvm.exp.f64(double %i.ur)
  %i.ut = fptrunc nsz double %i.us to float
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.uu = fcmp nsz olt double %i.uo, 0.000000e+00
  %i.uv = fcmp nsz oge double %i.uo, -5.000000e-01
  %or.cond13 = and i1 %i.uu, %i.uv
  br i1 %or.cond13, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.uw = fmul nnan nsz double %i.uo, 6.000000e+00
  %i.ux = tail call nsz double @llvm.exp.f64(double %i.uw)
  %i.uy = fptrunc nsz double %i.ux to float
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %.sink563 = phi float [ %i.uy, %bb.y ], [ %i.ut, %bb.w ], [ 0.000000e+00, %bb.x ]
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv458
  store float %.sink563, ptr %i.uz, align 4, !tbaa !77
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %._crit_edge451, label %bb.v, !llvm.loop !118

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %scalar.ph ], [ %indvars.iv453.ph, %scalar.ph.preheader ] ; 3 uses
  %i.va = trunc nuw nsw i64 %indvars.iv453 to i32
  %i.vb = uitofp nneg i32 %i.va to double
  %i.vc = fdiv nsz double %i.vb, %i.c
  %i.vd = tail call nsz double @llvm.fmuladd.f64(double %i.vc, double 2.000000e+00, double -1.000000e+00)
  %i.ve = tail call nsz double @llvm.fabs.f64(double %i.vd) ; 2 uses
  %i.vf = fsub nsz double 1.000000e+00, %i.ve
  %i.vg = fmul nsz double %i.ve, f0x400921FB54442D18
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.vg) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.vh = fmul nsz double %sin, f0x3FD45F306DC9C883
  %i.vi = tail call nsz double @llvm.fmuladd.f64(double %i.vf, double %cos, double %i.vh)
  %i.vj = fptrunc nsz double %i.vi to float
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv453
  store float %i.vj, ptr %i.vk, align 4, !tbaa !77
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge451, label %scalar.ph, !llvm.loop !119

bb.aa:                                            ; preds = %bb.a
  %i.vl = tail call nsz double @av_bessel_i0(double noundef 1.200000e+01) #10
  %i.vm = fdiv nsz double 1.000000e+00, %i.vl
  %i.vn = icmp sgt i32 %1, 0
  br i1 %i.vn, label %.lr.ph, label %._crit_edge451

.lr.ph:                                           ; preds = %bb.aa
  %i.vo = add nsw i32 %1, -1
  %i.vp = uitofp nneg i32 %i.vo to double
  %i.vq = fdiv nsz double 2.000000e+00, %i.vp
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %i.vr = trunc nuw nsw i64 %indvars.iv to i32
  %i.vs = uitofp nneg i32 %i.vr to double
  %i.vt = tail call nsz double @llvm.fmuladd.f64(double %i.vs, double %i.vq, double -1.000000e+00) ; 2 uses
  %i.vu = fneg nsz double %i.vt
  %i.vv = tail call nsz double @llvm.fmuladd.f64(double %i.vu, double %i.vt, double 1.000000e+00)
  %i.vw = tail call nsz double @llvm.sqrt.f64(double %i.vv)
  %i.vx = fmul nsz double %i.vw, 1.200000e+01
  %i.vy = tail call nsz double @av_bessel_i0(double noundef %i.vx) #10
  %i.vz = fmul nsz double %i.vm, %i.vy
  %i.wa = fptrunc nsz double %i.vz to float
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.wa, ptr %i.wb, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge451, label %bb.ab, !llvm.loop !120

bb.ac:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 232) #10
  tail call void @abort() #11
  unreachable

._crit_edge451:                                   ; preds = %bb.ab, %scalar.ph, %bb.z, %bb.u, %bb.l, %._crit_edge401, %bb.g, %scalar.ph587, %bb.d, %scalar.ph603, %scalar.ph617, %scalar.ph631, %scalar.ph645, %scalar.ph659, %scalar.ph673, %scalar.ph687, %scalar.ph701, %scalar.ph715, %scalar.ph729, %scalar.ph743, %.lr.ph450, %middle.block, %middle.block600, %middle.block614, %middle.block628, %middle.block642, %middle.block656, %middle.block670, %middle.block684, %middle.block698, %middle.block712, %middle.block726, %middle.block740, %middle.block754, %middle.block764, %bb.aa, %.preheader382, %.preheader381, %.preheader380, %.preheader379, %bb.h, %.preheader378, %.preheader377, %.preheader376, %.preheader375, %.preheader374, %.preheader373, %.preheader372, %.preheader371, %.preheader370, %.preheader369, %.preheader368, %.preheader367, %.preheader366, %.preheader365, %.preheader
  %.sink565 = phi float [ 7.500000e-01, %.preheader382 ], [ 7.500000e-01, %.preheader381 ], [ 7.500000e-01, %.preheader380 ], [ 7.500000e-01, %.preheader379 ], [ 5.000000e-01, %bb.h ], [ 3.300000e-01, %.preheader378 ], [ 7.500000e-01, %.preheader377 ], [ 7.500000e-01, %.preheader376 ], [ 6.630000e-01, %.preheader375 ], [ 7.500000e-01, %.preheader374 ], [ 5.000000e-01, %.preheader373 ], [ 6.610000e-01, %.preheader372 ], [ 6.610000e-01, %.preheader371 ], [ 8.410000e-01, %.preheader370 ], [ 2.930000e-01, %.preheader369 ], [ 6.610000e-01, %.preheader368 ], [ 5.000000e-01, %.preheader367 ], [ 5.000000e-01, %.preheader366 ], [ 5.000000e-01, %.preheader365 ], [ 0.000000e+00, %.preheader ], [ 7.500000e-01, %bb.aa ], [ 7.500000e-01, %middle.block ], [ 0.000000e+00, %middle.block764 ], [ 5.000000e-01, %middle.block754 ], [ 5.000000e-01, %middle.block740 ], [ 5.000000e-01, %middle.block726 ], [ 6.610000e-01, %middle.block712 ], [ 2.930000e-01, %middle.block698 ], [ 8.410000e-01, %middle.block684 ], [ 6.610000e-01, %middle.block670 ], [ 6.610000e-01, %middle.block656 ], [ 5.000000e-01, %middle.block642 ], [ 7.500000e-01, %middle.block628 ], [ 6.630000e-01, %middle.block614 ], [ 7.500000e-01, %scalar.ph617 ], [ 7.500000e-01, %middle.block600 ], [ 7.500000e-01, %bb.d ], [ 7.500000e-01, %scalar.ph587 ], [ 3.300000e-01, %bb.g ], [ 5.000000e-01, %._crit_edge401 ], [ 7.500000e-01, %bb.l ], [ 7.500000e-01, %bb.z ], [ 7.500000e-01, %scalar.ph ], [ 0.000000e+00, %.lr.ph450 ], [ 5.000000e-01, %scalar.ph743 ], [ 5.000000e-01, %scalar.ph729 ], [ 5.000000e-01, %scalar.ph715 ], [ 6.610000e-01, %scalar.ph701 ], [ 2.930000e-01, %scalar.ph687 ], [ 8.410000e-01, %scalar.ph673 ], [ 6.610000e-01, %scalar.ph659 ], [ 6.610000e-01, %scalar.ph645 ], [ 5.000000e-01, %scalar.ph631 ], [ 6.630000e-01, %scalar.ph603 ], [ 7.500000e-01, %bb.u ], [ 7.500000e-01, %bb.ab ]
  store float %.sink565, ptr %3, align 4, !tbaa !77
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cosh.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #5

declare double @av_bessel_i0(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare ptr @ff_make_sample_format_list(ptr noundef) local_unnamed_addr #3

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_add_channel_layout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @ff_channel_layouts_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_make_format_list(ptr noundef) local_unnamed_addr #3

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @try_push_frame(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.g = load float, ptr %i.f, align 8, !tbaa !82 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67   ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !68   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph75.i, label %._crit_edge151

.lr.ph75.i:                                       ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 32
  %.not.not4.i.i = icmp sgt i32 %i.i, 0           ; 4 uses
  %i.p = sext i32 %1 to i64                       ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.v = sext i32 %i.i to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = add i32 %i.k, -2
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph75.i
  %indvars.iv126.i = phi i64 [ 0, %.lr.ph75.i ], [ %indvars.iv.next127.i, %._crit_edge.i ] ; 8 uses
  %indvars.iv102.i = phi i32 [ 0, %.lr.ph75.i ], [ -1, %._crit_edge.i ] ; 2 uses
  %indvars.iv86.i = phi i32 [ -1, %.lr.ph75.i ], [ %indvars.iv.next87.i, %._crit_edge.i ] ; 5 uses
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !47
  %.val46.i = load ptr, ptr %i.a, align 8, !tbaa !9 ; 18 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !43 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val46.i, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28   ; 7 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv126.i to i32
  %i.ab = sub nsw i32 %i.z, %i.aa
  %i.ac = mul nsw i32 %i.ab, %i.i                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val46.i, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !66
  switch i32 %i.ae, label %read_fft_data.exit.i [
    i32 0, label %bb.c
    i32 1, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !121
  switch i32 %i.ag, label %read_fft_data.exit.i [
    i32 49, label %bb.d
    i32 30, label %bb.d
    i32 14, label %bb.h
    i32 5, label %bb.h
    i32 8, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br i1 %.not.not4.i.i, label %.lr.ph18.i.preheader.i, label %read_fft_data.exit.i

.lr.ph18.i.preheader.i:                           ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !122 ; 2 uses
  %switch.i = icmp ult i32 %i.ai, 2
  br i1 %switch.i, label %.lr.ph18.i.preheader.split.i, label %bb.g

.lr.ph18.i.preheader.split.i:                     ; preds = %.lr.ph18.i.preheader.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val46.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !123
  %i.am = getelementptr inbounds nuw i8, ptr %.val46.i, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %.val46.i, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv126.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.ax = add i32 %i.z, %indvars.iv102.i
  %i.ay = mul i32 %i.ax, %i.i
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = sext i32 %i.as to i64
  %i.bc = sext i32 %i.aq to i64
  %cond79.i = icmp eq i32 %i.ai, 0
  %invariant.gep139.i = getelementptr [2 x i8], ptr %i.ao, i64 %i.p
  %invariant.gep126 = getelementptr [2 x i8], ptr %i.al, i64 %i.p
  %2 = add nsw i64 %i.ba, 1
  %3 = add i32 %i.z, %indvars.iv86.i
  %4 = mul i32 %i.i, %3
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.az)
  %smin157 = sext i32 %5 to i64
  %6 = sub nsw i64 %2, %smin157
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %read16_fft_bin.exit63.i, %.lr.ph18.i.preheader.split.i
  %indvars.iv111.i = phi i64 [ %i.ba, %.lr.ph18.i.preheader.split.i ], [ %indvars.iv.next112.i, %read16_fft_bin.exit63.i ] ; 3 uses
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph18.i.preheader.split.i ], [ %indvars.iv.next110.i, %read16_fft_bin.exit63.i ] ; 2 uses
  %i.bd = mul nsw i64 %indvars.iv111.i, %i.bb
  %gep127 = getelementptr i8, ptr %invariant.gep126, i64 %i.bd
  %i.be = load i16, ptr %gep127, align 2, !tbaa !124 ; 2 uses
  br i1 %cond79.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph18.i.i
  %i.bf = uitofp i16 %i.be to float
  %i.bg = fdiv nsz float %i.bf, 6.553500e+04
  br label %read16_fft_bin.exit63.i

bb.f:                                             ; preds = %.lr.ph18.i.i
  %i.bh = uitofp i16 %i.be to double
  %i.bi = fdiv nnan nsz double %i.bh, 6.553500e+04
  %i.bj = fadd nnan nsz double %i.bi, -1.000000e+00
  %i.bk = fmul nnan nsz double %i.bj, 6.000000e+00
  %i.bl = fmul nnan nsz double %i.bk, f0x400A934F0979A371
  %i.bm = tail call nsz double @llvm.exp2.f64(double %i.bl)
  %i.bn = fptrunc nsz double %i.bm to float
  br label %read16_fft_bin.exit63.i

bb.g:                                             ; preds = %.lr.ph18.i.preheader.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.86, i32 noundef 249) #10
  tail call void @abort() #11
  unreachable

read16_fft_bin.exit63.i:                          ; preds = %bb.f, %bb.e
  %.0.i59.i = phi nsz float [ %i.bn, %bb.f ], [ %i.bg, %bb.e ]
  %i.bo = mul nsw i64 %indvars.iv111.i, %i.bc
  %gep140.i = getelementptr i8, ptr %invariant.gep139.i, i64 %i.bo
  %i.bp = load i16, ptr %gep140.i, align 2, !tbaa !124
  %i.bq = uitofp i16 %i.bp to double
  %i.br = fdiv nnan nsz double %i.bq, 6.553500e+04
  %i.bs = tail call nnan nsz double @llvm.fmuladd.f64(double %i.br, double 2.000000e+00, double -1.000000e+00)
  %i.bt = fmul nnan nsz double %i.bs, f0x400921FB54442D18
  %i.bu = fptrunc nsz double %i.bt to float
  %i.bv = fpext nsz float %.0.i59.i to double     ; 2 uses
  %i.bw = fpext nsz float %i.bu to double
  %sincos.i60.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.bw) ; 2 uses
  %sin.i61.i = extractvalue { double, double } %sincos.i60.i, 0
  %cos.i62.i = extractvalue { double, double } %sincos.i60.i, 1
  %i.bx = fmul nsz double %cos.i62.i, %i.bv
  %i.by = fptrunc nsz double %i.bx to float
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv109.i ; 2 uses
  store float %i.by, ptr %i.bz, align 4, !tbaa !126
  %i.ca = fmul nsz double %sin.i61.i, %i.bv
  %i.cb = fptrunc nsz double %i.ca to float
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !128
  %indvars.iv.next112.i = add nsw i64 %indvars.iv111.i, -1
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next110.i, %6
  br i1 %exitcond158.not, label %read_fft_data.exit.i, label %.lr.ph18.i.i, !llvm.loop !129

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c
  br i1 %.not.not4.i.i, label %.lr.ph14.i.preheader.i, label %read_fft_data.exit.i

.lr.ph14.i.preheader.i:                           ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !122 ; 2 uses
  %switch80.i = icmp ult i32 %i.ce, 2
  br i1 %switch80.i, label %.lr.ph14.i.preheader.split.i, label %bb.k

.lr.ph14.i.preheader.split.i:                     ; preds = %.lr.ph14.i.preheader.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.val46.i, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !49 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !123
  %i.ci = getelementptr inbounds nuw i8, ptr %.val46.i, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !50 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !123
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %.val46.i, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv126.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !71
  %i.ct = add i32 %i.z, %indvars.iv102.i
  %i.cu = mul i32 %i.ct, %i.i
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = sext i32 %i.co to i64
  %i.cy = sext i32 %i.cm to i64
  %cond78.i = icmp eq i32 %i.ce, 0
  %invariant.gep.i = getelementptr i8, ptr %i.ck, i64 %i.p
  %invariant.gep = getelementptr i8, ptr %i.ch, i64 %i.p
  %7 = add nsw i64 %i.cw, 1
  %8 = add i32 %i.z, %indvars.iv86.i
  %9 = mul i32 %i.i, %8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %i.cv)
  %smin = sext i32 %10 to i64
  %11 = sub nsw i64 %7, %smin
  br label %.lr.ph14.i.i

.lr.ph14.i.i:                                     ; preds = %read8_fft_bin.exit57.i, %.lr.ph14.i.preheader.split.i
  %indvars.iv104.i = phi i64 [ %i.cw, %.lr.ph14.i.preheader.split.i ], [ %indvars.iv.next105.i, %read8_fft_bin.exit57.i ] ; 3 uses
  %indvars.iv100.i = phi i64 [ 0, %.lr.ph14.i.preheader.split.i ], [ %indvars.iv.next101.i, %read8_fft_bin.exit57.i ] ; 2 uses
  %i.cz = mul nsw i64 %indvars.iv104.i, %i.cx
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.cz
  %i.da = load i8, ptr %gep, align 1, !tbaa !130  ; 2 uses
  br i1 %cond78.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph14.i.i
  %i.db = uitofp i8 %i.da to float
  %i.dc = fdiv nsz float %i.db, 2.550000e+02
  br label %read8_fft_bin.exit57.i

bb.j:                                             ; preds = %.lr.ph14.i.i
  %i.dd = uitofp i8 %i.da to double
  %i.de = fdiv nnan nsz double %i.dd, 2.550000e+02
  %i.df = fadd nnan nsz double %i.de, -1.000000e+00
  %i.dg = fmul nnan nsz double %i.df, 6.000000e+00
  %i.dh = fmul nnan nsz double %i.dg, f0x400A934F0979A371
  %i.di = tail call nsz double @llvm.exp2.f64(double %i.dh)
  %i.dj = fptrunc nsz double %i.di to float
  br label %read8_fft_bin.exit57.i

bb.k:                                             ; preds = %.lr.ph14.i.preheader.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.86, i32 noundef 274) #10
  tail call void @abort() #11
  unreachable

read8_fft_bin.exit57.i:                           ; preds = %bb.j, %bb.i
  %.0.i53.i = phi nsz float [ %i.dj, %bb.j ], [ %i.dc, %bb.i ]
  %i.dk = mul nsw i64 %indvars.iv104.i, %i.cy
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dk
  %i.dl = load i8, ptr %gep.i, align 1, !tbaa !130
  %i.dm = uitofp i8 %i.dl to double
  %i.dn = fdiv nnan nsz double %i.dm, 2.550000e+02
  %i.do = tail call nnan nsz double @llvm.fmuladd.f64(double %i.dn, double 2.000000e+00, double -1.000000e+00)
  %i.dp = fmul nnan nsz double %i.do, f0x400921FB54442D18
  %i.dq = fptrunc nsz double %i.dp to float
  %i.dr = fpext nsz float %.0.i53.i to double     ; 2 uses
  %i.ds = fpext nsz float %i.dq to double
  %sincos.i54.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.ds) ; 2 uses
  %sin.i55.i = extractvalue { double, double } %sincos.i54.i, 0
  %cos.i56.i = extractvalue { double, double } %sincos.i54.i, 1
  %i.dt = fmul nsz double %cos.i56.i, %i.dr
  %i.du = fptrunc nsz double %i.dt to float
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv100.i ; 2 uses
  store float %i.du, ptr %i.dv, align 4, !tbaa !126
  %i.dw = fmul nsz double %sin.i55.i, %i.dr
  %i.dx = fptrunc nsz double %i.dw to float
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store float %i.dx, ptr %i.dy, align 4, !tbaa !128
  %indvars.iv.next105.i = add nsw i64 %indvars.iv104.i, -1
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next101.i, %11
  br i1 %exitcond.not, label %read_fft_data.exit.i, label %.lr.ph14.i.i, !llvm.loop !131

bb.l:                                             ; preds = %bb.b
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 36
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !121
  switch i32 %i.ea, label %read_fft_data.exit.i [
    i32 49, label %bb.m
    i32 30, label %bb.m
    i32 14, label %bb.q
    i32 5, label %bb.q
    i32 8, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  br i1 %.not.not4.i.i, label %.lr.ph10.i.preheader.i, label %read_fft_data.exit.i

.lr.ph10.i.preheader.i:                           ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.val46.i, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !49 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %.val46.i, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !50 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !41
  %i.ej = load ptr, ptr %i.ec, align 8, !tbaa !123
  %i.ek = mul nsw i32 %i.ee, %1
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !123
  %i.eo = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !122 ; 2 uses
  %i.eq = mul nsw i32 %i.ei, %1
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 %i.er
  %switch81.i = icmp ult i32 %i.ep, 2
  br i1 %switch81.i, label %.lr.ph10.i.preheader.split.i, label %bb.p

.lr.ph10.i.preheader.split.i:                     ; preds = %.lr.ph10.i.preheader.i
  %i.et = getelementptr inbounds nuw i8, ptr %.val46.i, i64 72
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv126.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !71
  %i.ex = add i32 %i.z, %indvars.iv86.i
  %i.ey = mul i32 %i.ex, %i.i
  %i.ez = sext i32 %i.ey to i64
  %i.fa = sext i32 %i.ac to i64
  %cond77.i = icmp eq i32 %i.ep, 0
  br label %.lr.ph10.i.i

.lr.ph10.i.i:                                     ; preds = %read16_fft_bin.exit.i, %.lr.ph10.i.preheader.split.i
  %indvars.iv95.i = phi i64 [ %i.ez, %.lr.ph10.i.preheader.split.i ], [ %indvars.iv.next96.i, %read16_fft_bin.exit.i ] ; 3 uses
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph10.i.preheader.split.i ], [ %indvars.iv.next94.i, %read16_fft_bin.exit.i ] ; 2 uses
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.em, i64 %indvars.iv95.i
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !124 ; 2 uses
  br i1 %cond77.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph10.i.i
  %i.fd = uitofp i16 %i.fc to float
  %i.fe = fdiv nsz float %i.fd, 6.553500e+04
  br label %read16_fft_bin.exit.i

bb.o:                                             ; preds = %.lr.ph10.i.i
  %i.ff = uitofp i16 %i.fc to double
  %i.fg = fdiv nnan nsz double %i.ff, 6.553500e+04
  %i.fh = fadd nnan nsz double %i.fg, -1.000000e+00
  %i.fi = fmul nnan nsz double %i.fh, 6.000000e+00
  %i.fj = fmul nnan nsz double %i.fi, f0x400A934F0979A371
  %i.fk = tail call nsz double @llvm.exp2.f64(double %i.fj)
  %i.fl = fptrunc nsz double %i.fk to float
  br label %read16_fft_bin.exit.i

bb.p:                                             ; preds = %.lr.ph10.i.preheader.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.86, i32 noundef 249) #10
  tail call void @abort() #11
  unreachable

read16_fft_bin.exit.i:                            ; preds = %bb.o, %bb.n
  %.0.i48.i = phi nsz float [ %i.fl, %bb.o ], [ %i.fe, %bb.n ]
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.es, i64 %indvars.iv95.i
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !124
  %i.fo = uitofp i16 %i.fn to double
  %i.fp = fdiv nnan nsz double %i.fo, 6.553500e+04
  %i.fq = tail call nnan nsz double @llvm.fmuladd.f64(double %i.fp, double 2.000000e+00, double -1.000000e+00)
  %i.fr = fmul nnan nsz double %i.fq, f0x400921FB54442D18
  %i.fs = fptrunc nsz double %i.fr to float
  %i.ft = fpext nsz float %.0.i48.i to double     ; 2 uses
  %i.fu = fpext nsz float %i.fs to double
  %sincos.i49.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.fu) ; 2 uses
  %sin.i50.i = extractvalue { double, double } %sincos.i49.i, 0
  %cos.i51.i = extractvalue { double, double } %sincos.i49.i, 1
  %i.fv = fmul nsz double %cos.i51.i, %i.ft
  %i.fw = fptrunc nsz double %i.fv to float
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv93.i ; 2 uses
  store float %i.fw, ptr %i.fx, align 4, !tbaa !126
  %i.fy = fmul nsz double %sin.i50.i, %i.ft
  %i.fz = fptrunc nsz double %i.fy to float
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store float %i.fz, ptr %i.ga, align 4, !tbaa !128
  %indvars.iv.next96.i = add nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1
  %.not.not54.i.i = icmp slt i64 %indvars.iv.next96.i, %i.fa
  br i1 %.not.not54.i.i, label %.lr.ph10.i.i, label %read_fft_data.exit.i, !llvm.loop !132

bb.q:                                             ; preds = %bb.l, %bb.l, %bb.l
  br i1 %.not.not4.i.i, label %.lr.ph.i.preheader.i, label %read_fft_data.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.q
  %i.gb = getelementptr inbounds nuw i8, ptr %.val46.i, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !49 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !41
  %i.gf = getelementptr inbounds nuw i8, ptr %.val46.i, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !50 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !41
  %i.gj = load ptr, ptr %i.gc, align 8, !tbaa !123
  %i.gk = mul nsw i32 %i.ge, %1
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gj, i64 %i.gl
  %i.gn = load ptr, ptr %i.gg, align 8, !tbaa !123
  %i.go = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !122 ; 2 uses
  %i.gq = mul nsw i32 %i.gi, %1
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %i.gn, i64 %i.gr
  %switch82.i = icmp ult i32 %i.gp, 2
  br i1 %switch82.i, label %.lr.ph.i.preheader.split.i, label %bb.t

.lr.ph.i.preheader.split.i:                       ; preds = %.lr.ph.i.preheader.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.val46.i, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !20
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv126.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !71
  %i.gx = add i32 %i.z, %indvars.iv86.i
  %i.gy = mul i32 %i.gx, %i.i
  %i.gz = sext i32 %i.gy to i64
  %i.ha = sext i32 %i.ac to i64
  %cond.i = icmp eq i32 %i.gp, 0
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %read8_fft_bin.exit.i, %.lr.ph.i.preheader.split.i
  %indvars.iv88.i = phi i64 [ %i.gz, %.lr.ph.i.preheader.split.i ], [ %indvars.iv.next89.i, %read8_fft_bin.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.split.i ], [ %indvars.iv.next.i, %read8_fft_bin.exit.i ] ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.gm, i64 %indvars.iv88.i
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !130 ; 2 uses
  br i1 %cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.hd = uitofp i8 %i.hc to float
  %i.he = fdiv nsz float %i.hd, 2.550000e+02
  br label %read8_fft_bin.exit.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.hf = uitofp i8 %i.hc to double
  %i.hg = fdiv nnan nsz double %i.hf, 2.550000e+02
  %i.hh = fadd nnan nsz double %i.hg, -1.000000e+00
  %i.hi = fmul nnan nsz double %i.hh, 6.000000e+00
  %i.hj = fmul nnan nsz double %i.hi, f0x400A934F0979A371
  %i.hk = tail call nsz double @llvm.exp2.f64(double %i.hj)
  %i.hl = fptrunc nsz double %i.hk to float
  br label %read8_fft_bin.exit.i

bb.t:                                             ; preds = %.lr.ph.i.preheader.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.86, i32 noundef 274) #10
  tail call void @abort() #11
  unreachable

read8_fft_bin.exit.i:                             ; preds = %bb.s, %bb.r
  %.0.i.i = phi nsz float [ %i.hl, %bb.s ], [ %i.he, %bb.r ]
  %i.hm = getelementptr inbounds i8, ptr %i.gs, i64 %indvars.iv88.i
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !130
  %i.ho = uitofp i8 %i.hn to double
  %i.hp = fdiv nnan nsz double %i.ho, 2.550000e+02
  %i.hq = tail call nnan nsz double @llvm.fmuladd.f64(double %i.hp, double 2.000000e+00, double -1.000000e+00)
  %i.hr = fmul nnan nsz double %i.hq, f0x400921FB54442D18
  %i.hs = fptrunc nsz double %i.hr to float
  %i.ht = fpext nsz float %.0.i.i to double       ; 2 uses
  %i.hu = fpext nsz float %i.hs to double
  %sincos.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.hu) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.hv = fmul nsz double %cos.i.i, %i.ht
  %i.hw = fptrunc nsz double %i.hv to float
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.i ; 2 uses
  store float %i.hw, ptr %i.hx, align 4, !tbaa !126
  %i.hy = fmul nsz double %sin.i.i, %i.ht
  %i.hz = fptrunc nsz double %i.hy to float
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store float %i.hz, ptr %i.ia, align 4, !tbaa !128
  %indvars.iv.next89.i = add nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.not.i.i = icmp slt i64 %indvars.iv.next89.i, %i.ha
  br i1 %.not.not.i.i, label %.lr.ph.i.i, label %read_fft_data.exit.i, !llvm.loop !133

read_fft_data.exit.i:                             ; preds = %read8_fft_bin.exit.i, %read16_fft_bin.exit.i, %read8_fft_bin.exit57.i, %read16_fft_bin.exit63.i, %bb.q, %bb.m, %bb.l, %bb.h, %bb.d, %bb.c, %bb.b
  %i.ib = load i32, ptr %i.q, align 8, !tbaa !69  ; 6 uses
  %.not67.i = icmp sgt i32 %i.i, %i.ib
  %.pre.pre.i = load ptr, ptr %i.r, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv126.i
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !71 ; 8 uses
  br i1 %.not67.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %read_fft_data.exit.i
  %scevgep.i = getelementptr i8, ptr %.pre, i64 %i.w
  %i.ic = sub i32 %i.ib, %i.i
  %i.id = zext i32 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 3
  %i.if = add nuw nsw i64 %i.ie, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.if, i1 false), !tbaa !77
  br label %.preheader.i

.preheader.i:                                     ; preds = %read_fft_data.exit.i, %.lr.ph.i
  %.169.i = add nsw i32 %i.ib, 1                  ; 2 uses
  %i.ig = icmp slt i32 %.169.i, %i.k
  br i1 %i.ig, label %.lr.ph72.i, label %._crit_edge.i

.lr.ph72.i:                                       ; preds = %.preheader.i
  %i.ih = sext i32 %.169.i to i64                 ; 3 uses
  %i.ii = sext i32 %i.ib to i64                   ; 2 uses
  %i.ij = sub i32 %i.ib, %i.k
  %i.ik = and i32 %i.ij, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ik, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph72.i
  %indvars.iv.next122.i.prol = add nsw i64 %i.ii, -1 ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %.pre, i64 %indvars.iv.next122.i.prol ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !126
  %i.in = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.ih ; 2 uses
  store float %i.im, ptr %i.in, align 4, !tbaa !126
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.ip = load float, ptr %i.io, align 4, !tbaa !128
  %i.iq = fneg nsz float %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store float %i.iq, ptr %i.ir, align 4, !tbaa !128
  %indvars.iv.next120.i.prol = add nsw i64 %i.ih, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph72.i
  %indvars.iv121.i.unr = phi i64 [ %i.ii, %.lr.ph72.i ], [ %indvars.iv.next122.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv119.i.unr = phi i64 [ %i.ih, %.lr.ph72.i ], [ %indvars.iv.next120.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.is = icmp eq i32 %i.x, %i.ib
  br i1 %i.is, label %._crit_edge.i, label %.lr.ph72.i.new

.lr.ph72.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph72.i.new
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i.1, %.lr.ph72.i.new ], [ %indvars.iv121.i.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %.lr.ph72.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 3 uses
  %i.it = getelementptr [8 x i8], ptr %.pre, i64 %indvars.iv121.i ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 -8
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !126
  %i.iw = getelementptr inbounds [8 x i8], ptr %.pre, i64 %indvars.iv119.i ; 2 uses
  store float %i.iv, ptr %i.iw, align 4, !tbaa !126
  %i.ix = getelementptr i8, ptr %i.it, i64 -4
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !128
  %i.iz = fneg nsz float %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store float %i.iz, ptr %i.ja, align 4, !tbaa !128
  %indvars.iv.next122.i.1 = add nsw i64 %indvars.iv121.i, -2 ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %.pre, i64 %indvars.iv.next122.i.1 ; 2 uses
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !126
  %i.jd = getelementptr [8 x i8], ptr %.pre, i64 %indvars.iv119.i ; 2 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  store float %i.jc, ptr %i.je, align 4, !tbaa !126
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !128
  %i.jh = fneg nsz float %i.jg
  %i.ji = getelementptr i8, ptr %i.jd, i64 12
  store float %i.jh, ptr %i.ji, align 4, !tbaa !128
  %indvars.iv.next120.i.1 = add nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next120.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.k, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph72.i.new, !llvm.loop !134

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph72.i.new, %.preheader.i
  %i.jj = load ptr, ptr %i.s, align 8, !tbaa !135
  %i.jk = load ptr, ptr %i.t, align 8, !tbaa !136
  %i.jl = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv126.i
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !71
  tail call void %i.jj(ptr noundef %i.jk, ptr noundef %i.jn, ptr noundef %.pre, i64 noundef 8) #10, !inline_history !137
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %i.jo = load i32, ptr %i.l, align 4, !tbaa !28  ; 3 uses
  %i.jp = sext i32 %i.jo to i64
  %i.jq = icmp slt i64 %indvars.iv.next127.i, %i.jp
  %indvars.iv.next87.i = add nsw i32 %indvars.iv86.i, -1
  br i1 %i.jq, label %bb.b, label %synth_window.exit, !llvm.loop !138

synth_window.exit:                                ; preds = %._crit_edge.i
  %i.jr = icmp sgt i32 %i.jo, 0
  br i1 %i.jr, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %synth_window.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph150, %.thread
  %i.jy = phi i32 [ %i.jo, %.lr.ph150 ], [ %i.os, %.thread ] ; 3 uses
  %indvars.iv185 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next186, %.thread ] ; 5 uses
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !73
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 96
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !139
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv185
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !123 ; 5 uses
  %i.ke = load i32, ptr %i.jt, align 8, !tbaa !144 ; 5 uses
  %i.kf = load i32, ptr %i.ju, align 4, !tbaa !145 ; 2 uses
  %i.kg = icmp slt i32 %i.ke, %i.kf
  %.pre189 = load i32, ptr %i.j, align 8, !tbaa !68 ; 9 uses
  br i1 %i.kg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.u
  %i.kh = sext i32 %i.ke to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %.pre189, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.ki = sub i32 %i.kf, %i.ke
  %wide.trip.count165 = zext i32 %i.ki to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv159 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next160, %bb.w ] ; 4 uses
  %indvars.iv = phi i64 [ %i.kh, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %exitcond164.not = icmp eq i64 %indvars.iv159, %wide.trip.count
  br i1 %exitcond164.not, label %.critedge.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kj = load ptr, ptr %i.jv, align 8, !tbaa !31
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv185
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !71
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv159
  %i.kn = load float, ptr %i.km, align 4, !tbaa !126
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %indvars.iv ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !77
  %i.kq = fadd nsz float %i.kn, %i.kp
  store float %i.kq, ptr %i.ko, align 4, !tbaa !77
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count165
  br i1 %exitcond166.not, label %.critedge.loopexit, label %bb.v, !llvm.loop !146

.critedge.loopexit:                               ; preds = %bb.w, %bb.v
  %.092.lcssa.ph.in = phi i64 [ %indvars.iv159, %bb.v ], [ %indvars.iv.next160, %bb.w ]
  %.085.lcssa.ph.in = phi i64 [ %indvars.iv, %bb.v ], [ %indvars.iv.next, %bb.w ]
  %.085.lcssa.ph = trunc i64 %.085.lcssa.ph.in to i32
  %.092.lcssa.ph = trunc i64 %.092.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.u
  %.092.lcssa = phi i32 [ 0, %bb.u ], [ %.092.lcssa.ph, %.critedge.loopexit ] ; 4 uses
  %.085.lcssa = phi i32 [ %i.ke, %bb.u ], [ %.085.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %i.kr = icmp slt i32 %.092.lcssa, %.pre189
  br i1 %i.kr, label %.lr.ph136, label %._crit_edge

.lr.ph136:                                        ; preds = %.critedge
  %i.ks = load ptr, ptr %i.jv, align 8, !tbaa !31
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv185
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !71 ; 5 uses
  %i.kv = sext i32 %.085.lcssa to i64             ; 6 uses
  %i.kw = zext i32 %.092.lcssa to i64             ; 6 uses
  %i.kx = xor i32 %.092.lcssa, -1
  %i.ky = add i32 %.pre189, %i.kx                 ; 2 uses
  %i.kz = zext i32 %i.ky to i64
  %i.la = add nuw nsw i64 %i.kz, 1                ; 2 uses
  %min.iters.check223 = icmp ult i32 %i.ky, 12
  br i1 %min.iters.check223, label %scalar.ph222.preheader, label %vector.memcheck216

vector.memcheck216:                               ; preds = %.lr.ph136
  %i.lb = shl nsw i64 %i.kv, 2
  %scevgep = getelementptr i8, ptr %i.kd, i64 %i.lb
  %scevgep217.a = getelementptr i8, ptr %i.kd, i64 4
  %i.lc = xor i32 %.092.lcssa, -1
  %i.ld = add i32 %.pre189, %i.lc
  %i.le = zext i32 %i.ld to i64                   ; 2 uses
  %i.lf = add nsw i64 %i.kv, %i.le
  %i.lg = shl nsw i64 %i.lf, 2
  %scevgep218.a = getelementptr i8, ptr %scevgep217.a, i64 %i.lg
  %i.lh = shl nuw nsw i64 %i.kw, 3
  %scevgep219 = getelementptr nuw i8, ptr %i.ku, i64 %i.lh
  %scevgep220 = getelementptr i8, ptr %i.ku, i64 4
  %i.li = add nuw nsw i64 %i.kw, %i.le
  %i.lj = shl nuw nsw i64 %i.li, 3
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.lj
  %bound0 = icmp ult ptr %scevgep, %scevgep221
  %bound1 = icmp ult ptr %scevgep219, %scevgep218.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph222.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck216
  %i.lk = and i64 %i.la, 7                        ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 0
  %i.lm = select i1 %i.ll, i64 8, i64 %i.lk
  %n.vec225 = sub nsw i64 %i.la, %i.lm            ; 3 uses
  %i.ln = add nsw i64 %n.vec225, %i.kw
  %i.lo = add nsw i64 %n.vec225, %i.kv
  %invariant.gep242 = getelementptr [4 x i8], ptr %i.kd, i64 %i.kv
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next230, %vector.body226 ] ; 3 uses
  %i.lp = add nuw i64 %index227, %i.kw            ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lp
  %i.lr = getelementptr [8 x i8], ptr %i.ku, i64 %i.lp
  %i.ls = getelementptr i8, ptr %i.lr, i64 32
  %wide.vec = load <8 x float>, ptr %i.lq, align 4, !tbaa !126, !alias.scope !147
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec228 = load <8 x float>, ptr %i.ls, align 4, !tbaa !126, !alias.scope !147
  %strided.vec229 = shufflevector <8 x float> %wide.vec228, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %gep243 = getelementptr [4 x i8], ptr %invariant.gep242, i64 %index227 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %gep243, i64 16
  store <4 x float> %strided.vec, ptr %gep243, align 4, !tbaa !77, !alias.scope !150, !noalias !147
  store <4 x float> %strided.vec229, ptr %i.lt, align 4, !tbaa !77, !alias.scope !150, !noalias !147
  %index.next230 = add nuw i64 %index227, 8       ; 2 uses
  %i.lu = icmp eq i64 %index.next230, %n.vec225
  br i1 %i.lu, label %scalar.ph222.preheader, label %vector.body226, !llvm.loop !152

scalar.ph222.preheader:                           ; preds = %vector.body226, %vector.memcheck216, %.lr.ph136
  %indvars.iv169.ph = phi i64 [ %i.kw, %vector.memcheck216 ], [ %i.kw, %.lr.ph136 ], [ %i.ln, %vector.body226 ]
  %indvars.iv167.ph = phi i64 [ %i.kv, %vector.memcheck216 ], [ %i.kv, %.lr.ph136 ], [ %i.lo, %vector.body226 ]
  br label %scalar.ph222

scalar.ph222:                                     ; preds = %scalar.ph222.preheader, %scalar.ph222
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %scalar.ph222 ], [ %indvars.iv169.ph, %scalar.ph222.preheader ] ; 2 uses
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %scalar.ph222 ], [ %indvars.iv167.ph, %scalar.ph222.preheader ] ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv169
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !126
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %indvars.iv167
  store float %i.lw, ptr %i.lx, align 4, !tbaa !77
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.ly = trunc nuw i64 %indvars.iv.next170 to i32
  %i.lz = icmp sgt i32 %.pre189, %i.ly
  br i1 %i.lz, label %scalar.ph222, label %._crit_edge.loopexit, !llvm.loop !153

._crit_edge.loopexit:                             ; preds = %scalar.ph222
  %i.ma = trunc nsw i64 %indvars.iv.next168 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %.186.lcssa = phi i32 [ %.085.lcssa, %.critedge ], [ %i.ma, %._crit_edge.loopexit ] ; 2 uses
  %i.mb = load i32, ptr %i.jw, align 4, !tbaa !78
  %i.mc = add nsw i32 %i.mb, %i.ke                ; 3 uses
  %.not = icmp slt i32 %i.mc, %.pre189
  br i1 %.not, label %.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.md = sub nsw i32 %i.mc, %.pre189             ; 2 uses
  %i.me = sub nsw i32 %.186.lcssa, %.pre189       ; 2 uses
  %i.mf = add nsw i32 %i.jy, -1
  %i.mg = zext i32 %i.mf to i64
  %i.mh = icmp eq i64 %indvars.iv185, %i.mg
  br i1 %i.mh, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.mi = tail call ptr @ff_get_audio_buffer(ptr noundef %i.e, i32 noundef %.pre189) #10 ; 4 uses
  %.not105 = icmp eq ptr %i.mi, null
  br i1 %.not105, label %.thread113, label %bb.z

.thread113:                                       ; preds = %bb.y
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_frame_free(ptr noundef nonnull %i.mj) #10
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @av_frame_free(ptr noundef nonnull %i.mk) #10
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ml = load i64, ptr %i.jx, align 8, !tbaa !154 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 136
  store i64 %i.ml, ptr %i.mm, align 8, !tbaa !155
  %i.mn = load i32, ptr %i.j, align 8, !tbaa !68
  %i.mo = sext i32 %i.mn to i64
  %i.mp = add nsw i64 %i.ml, %i.mo
  store i64 %i.mp, ptr %i.jx, align 8, !tbaa !154
  %i.mq = load i32, ptr %i.l, align 4, !tbaa !28
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.z
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 96
  br label %bb.aa

end_hunk_0
