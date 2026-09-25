Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_crossfeed?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0
; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.e) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !45
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call i32 @ff_set_sample_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.formats) #7 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ff_set_common_channel_layouts_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.layouts) #7
  %. = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #7 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = tail call i32 @config_input(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.l = tail call i32 @ff_outlink_get_status(ptr noundef %i.i) #7 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.f, i32 noundef %i.l) #7
  br label %.thread

.critedge:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.p = call i32 @ff_inlink_consume_samples(ptr noundef %i.f, i32 noundef %i.n, i32 noundef %i.n, ptr noundef nonnull %i.a) #7
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.q = call i32 @ff_inlink_consume_frame(ptr noundef %i.f, ptr noundef nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034 = phi i32 [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = icmp slt i32 %.034, 0
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43 = icmp eq i32 %.034, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.t = getelementptr i8, ptr %i.f, i64 16
  %.val48 = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.u = call fastcc i32 @filter_frame(ptr %.val48, ptr noundef %i.s, i32 noundef 0)
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.m, align 8, !tbaa !31
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @ff_inlink_queued_samples(ptr noundef %i.f) #7
  %i.y = load i32, ptr %i.m, align 8, !tbaa !31
  %.not44 = icmp slt i32 %i.x, %i.y
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #7
  br label %.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.z = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  %.not45 = icmp eq i32 %i.z, 0
  br i1 %.not45, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ac = call ptr @ff_get_audio_buffer(ptr noundef %i.i, i32 noundef %i.aa) #7 ; 2 uses
  %.not47.not = icmp eq ptr %i.ac, null
  br i1 %.not47.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.ae = call fastcc i32 @filter_frame(ptr %.val, ptr noundef nonnull %i.ac, i32 noundef 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2 = phi i32 [ %i.ae, %bb.n ], [ 0, %bb.l ]
  %i.af = load i32, ptr %i.c, align 4, !tbaa !46
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !47
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.i, i32 noundef %i.af, i64 noundef %i.ag) #7
  br label %.thread

bb.p:                                             ; preds = %bb.k
  %i.ah = call i32 @ff_outlink_frame_wanted(ptr noundef %i.i) #7
  %.not46 = icmp eq i32 %i.ah, 0
  br i1 %.not46, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ff_inlink_request_frame(ptr noundef %i.f) #7
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.b, %bb.p, %bb.e, %bb.q, %bb.o, %bb.j, %bb.g
  %.238 = phi i32 [ 0, %bb.b ], [ %i.u, %bb.g ], [ 0, %bb.j ], [ %.2, %bb.o ], [ -1497649742, %bb.p ], [ 0, %bb.q ], [ %.034, %bb.e ], [ -12, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.238
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !49
  %i.i = fsub nsz double 1.000000e+00, %i.h
  %i.j = fmul nsz double %i.i, f0x401921FB54442D18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !50
  %i.m = sitofp nsz i32 %i.l to double
  %i.n = insertelement <2 x double> poison, double %i.f, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.j, i64 1
  %i.p = fmul nsz <2 x double> %i.o, <double -3.000000e+01, double 2.100000e+03>
  %i.q = insertelement <2 x double> <double 4.000000e+01, double poison>, double %i.m, i64 1
  %i.r = fdiv nsz <2 x double> %i.p, %i.q         ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fmul nsz double %i.s, f0x400A934F0979A371
  %i.u = extractelement <2 x double> %i.r, i64 1
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.u) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1 ; 4 uses
  %i.v = fmul nsz double %sin, 5.000000e-01
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ac = tail call nsz double @llvm.exp2.f64(double %i.t) ; 7 uses
  %i.ad = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1
  %i.af = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ae ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1
  %i.ah = fadd nsz double %i.ac, %i.ag
  %1 = fadd nsz double %i.ac, 1.000000e+00        ; 4 uses
  %i.ai = insertelement <2 x double> %i.af, double %i.ac, i64 1
  %i.aj = fadd nsz <2 x double> %i.ai, splat (double -1.000000e+00) ; 3 uses
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %cos, i64 1
  %i.am = insertelement <2 x double> <double 2.000000e+00, double poison>, double %1, i64 1
  %i.an = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> %i.am) ; 2 uses
  %i.ao = insertelement <2 x double> %i.an, double %i.ac, i64 1
  %i.ap = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ao) ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fmul nsz double %i.v, %i.aq             ; 2 uses
  %i.as = extractelement <2 x double> %i.ap, i64 1
  %i.at = fmul nsz double %i.as, 2.000000e+00     ; 2 uses
  %2 = fneg nsz double %i.at                      ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0 ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %2, i64 1
  %i.aw = insertelement <2 x double> poison, double %i.ar, i64 0 ; 2 uses
  %3 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %3, <2 x double> %4) ; 3 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0 ; 2 uses
  store double %i.ay, ptr %i.y, align 8, !tbaa !52
  %5 = extractelement <2 x double> %i.aj, i64 1   ; 2 uses
  %6 = tail call nsz double @llvm.fmuladd.f64(double %1, double %cos, double %5)
  %i.az = insertelement <2 x double> %i.ax, double %6, i64 0
  %7 = fmul nsz <2 x double> %i.az, <double -2.000000e+00, double 1.000000e+00>
  %8 = fneg nsz double %5
  %9 = tail call nsz double @llvm.fmuladd.f64(double %8, double %cos, double %1) ; 2 uses
  %10 = insertelement <2 x double> poison, double %i.ac, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul nsz <2 x double> %11, <double 1.000000e+00, double 2.000000e+00>
  %i.bb = fneg nsz double %1
  %i.bc = insertelement <2 x double> %i.au, double %i.bb, i64 1
  %12 = insertelement <2 x double> %i.aw, double %cos, i64 1
  %13 = insertelement <2 x double> %i.aj, double %9, i64 0
  %14 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %12, <2 x double> %13)
  %15 = fmul nsz <2 x double> %i.ba, %14
  %i.bd = tail call nsz double @llvm.fmuladd.f64(double %2, double %i.ar, double %9)
  %i.be = fmul nsz double %i.ac, %i.bd
  %i.bf = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fdiv nsz <2 x double> %7, %i.bf
  store <2 x double> %i.bg, ptr %i.z, align 8, !tbaa !41
  %i.bh = fdiv nsz <2 x double> %15, %i.bf
  store <2 x double> %i.bh, ptr %i.aa, align 8, !tbaa !41
  %i.bi = fdiv nsz double %i.be, %i.ay
  store double %i.bi, ptr %i.ab, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !53 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !31
  %i.bp = shl nuw nsw i32 %i.bn, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = tail call noalias ptr @av_calloc(i64 noundef %i.bq, i64 noundef 8) #7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.bu = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.bv = shl nsw i32 %i.bu, 1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = tail call noalias ptr @av_calloc(i64 noundef %i.bw, i64 noundef 8) #7 ; 2 uses
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !44
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.bz = shl nsw i32 %i.by, 1
  %i.ca = sext i32 %i.bz to i64
  %i.cb = tail call noalias ptr @av_calloc(i64 noundef %i.ca, i64 noundef 8) #7 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !44
  %.not.1 = icmp eq ptr %i.cb, null
  br i1 %.not.1, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cd = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.ce = shl nsw i32 %i.cd, 1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = tail call noalias ptr @av_calloc(i64 noundef %i.cf, i64 noundef 8) #7 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !44
  %.not.2 = icmp eq ptr %i.cg, null
  %spec.select = select i1 %.not.2, i32 -12, i32 0
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ -12, %bb.c ], [ %spec.select, %bb.e ], [ -12, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #3

declare ptr @av_default_item_name(ptr noundef) #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_inlink_consume_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @filter_frame(ptr %.16.val, ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.16.val, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 21 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !98     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !99 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !100 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !41 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.p = load double, ptr %i.o, align 8, !tbaa !42 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.r = load double, ptr %i.q, align 8, !tbaa !101
  %i.s = fneg nsz double %i.r                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !102
  %i.v = fneg nsz double %i.u                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.w = tail call i32 @av_frame_is_writable(ptr noundef nonnull %0) #7
  %.not = icmp ne i32 %i.w, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 3 uses
  %i.x = icmp eq i32 %.pre, 0
  %or.cond = select i1 %.not, i1 %i.x, i1 false
  br i1 %or.cond, label %.thread72, label %._crit_edge58

.thread72:                                        ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8, !tbaa !26
  %i.y = load ptr, ptr %0, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.g

._crit_edge58:                                    ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = icmp sgt i32 %.pre, 0
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge58
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge58, %bb.b
  %i.ae = phi i32 [ %i.ad, %bb.b ], [ %.pre, %._crit_edge58 ]
  %i.af = tail call ptr @ff_get_audio_buffer(ptr noundef %i.e, i32 noundef %i.ae) #7 ; 15 uses
  store ptr %i.af, ptr %i.b, align 8, !tbaa !26
  %.not196 = icmp eq ptr %i.af, null
  br i1 %.not196, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.ag = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.af, ptr noundef nonnull %0) #7 ; 0 uses
  %.pre60 = load i32, ptr %i.aa, align 8, !tbaa !31 ; 9 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !98 ; 29 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 10 uses
  %i.aj = icmp sgt i32 %.pre60, 0                 ; 2 uses
  br i1 %i.aj, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !108
  %i.am = icmp ne i64 %i.al, -9223372036854775808
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i32 %.pre60, 0
  br i1 %i.an, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.thread72, %bb.f
  %i.ao = phi ptr [ %0, %.thread72 ], [ %i.af, %bb.f ] ; 2 uses
  %i.ap = phi ptr [ %i.y, %.thread72 ], [ %i.ah, %bb.f ]
  %i.aq = phi ptr [ %i.z, %.thread72 ], [ %i.ai, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !107 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.16.val, i64 104
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !109
  %.not202 = icmp eq i32 %i.ax, 0
  %i.ay = insertelement <2 x double> poison, double %i.s, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.p, i64 1
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k, %bb.g
  %i.ba = phi <2 x double> [ %i.as, %bb.g ], [ %i.bq, %bb.k ]
  store <2 x double> %i.ba, ptr %i.ar, align 8, !tbaa !41
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %.018521 = phi i32 [ 0, %.lr.ph ], [ %i.ca, %bb.k ]
  %.018818 = phi ptr [ %i.ap, %.lr.ph ], [ %i.cc, %bb.k ] ; 4 uses
  %.019017 = phi ptr [ %i.h, %.lr.ph ], [ %i.cb, %bb.k ] ; 3 uses
  %i.bb = phi <2 x double> [ %i.as, %.lr.ph ], [ %i.bq, %bb.k ]
  %i.bc = load double, ptr %.019017, align 8, !tbaa !41 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.019017, i64 8 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !41 ; 2 uses
end_hunk_0
