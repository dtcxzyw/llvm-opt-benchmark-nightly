Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_adecorrelate?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0_@uninit:bb.a
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %i.n = sext i32 %i.l to i64
  %i.o = icmp slt i64 %indvars.iv.next17, %i.n
  br i1 %i.o, label %.preheader, label %.loopexit, !llvm.loop !58

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw [896 x i8], ptr %i.p, i64 %indvars.iv16
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.s) #8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.t) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !59

.loopexit:                                        ; preds = %._crit_edge, %.preheader12, %bb.a
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ThreadData, align 8         ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.g = tail call i32 @av_frame_is_writable(ptr noundef %1) #8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call ptr @ff_get_audio_buffer(ptr noundef %i.f, i32 noundef %i.i) #8 ; 3 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.j, ptr noundef nonnull %1) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %1, %bb.a ]    ; 3 uses
  store ptr %1, ptr %2, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46
  %i.o = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #9
  %. = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.o)
  %i.p = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_channels, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #8 ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not19 = icmp eq ptr %.0, %i.q
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = call i32 @ff_filter_frame(ptr noundef %i.f, ptr noundef %.0) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.014 = phi i32 [ %i.r, %bb.g ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @av_get_random_seed() #8
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  store i64 %i.i, ptr %i.e, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ %i.i, %bb.b ], [ %i.f, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.l = trunc i64 %i.j to i32
  tail call void @av_lfg_init(ptr noundef nonnull %i.k, i32 noundef %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.n, ptr %i.o, align 8, !tbaa !25
  %i.p = sext i32 %i.n to i64
  %i.q = tail call noalias ptr @av_calloc(i64 noundef %i.p, i64 noundef 896) #8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !24
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.loopexit, label %.preheader39

.preheader39:                                     ; preds = %bb.c
  %i.s = load i32, ptr %i.m, align 4, !tbaa !46   ; 2 uses
  %.not3442 = icmp sgt i32 %i.s, 0
  br i1 %.not3442, label %.preheader.lr.ph, label %.thread37

.preheader.lr.ph:                                 ; preds = %.preheader39
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 296 ; 2 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader, label %.thread37

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.y = phi i32 [ %i.cj, %._crit_edge ], [ %i.s, %.preheader.lr.ph ]
  %i.z = phi i32 [ %i.ck, %._crit_edge ], [ %i.w, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not3340 = icmp sgt i32 %i.z, 0
  br i1 %.not3340, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [896 x i8], ptr %i.aa, i64 %indvars.iv46
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv ; 8 uses
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !67
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !68  ; 4 uses
  %i.af = add i32 %i.ae, 40
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = add i32 %i.ae, 9
  %i.al = and i32 %i.ak, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !69
  %i.ap = add i32 %i.ao, %i.aj                    ; 2 uses
  %i.aq = and i32 %i.ae, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !69
  %i.at = add i32 %i.ae, 1
  store i32 %i.at, ptr %i.v, align 8, !tbaa !68
  %i.au = uitofp nsz i32 %i.ap to double
  %i.av = fdiv nnan nsz double %i.au, f0x41EFFFFFFFE00000
  %i.aw = tail call nnan nsz double @llvm.fmuladd.f64(double %i.av, double 2.291700e-03, double 8.333300e-04)
  %i.ax = sitofp nsz i32 %i.ad to double          ; 3 uses
  %i.ay = fmul nsz double %i.aw, %i.ax
  %i.az = tail call nsz double @llvm.round.f64(double %i.ay)
  %i.ba = tail call i64 @llvm.lrint.i64.f64(double %i.az)
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.ac, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.bd, align 4, !tbaa !51
  %i.be = sext i32 %i.bc to i64
  %i.bf = tail call noalias ptr @av_calloc(i64 noundef %i.be, i64 noundef 8) #8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !52
  %i.bh = load i32, ptr %i.ac, align 8, !tbaa !50
  %i.bi = sext i32 %i.bh to i64
  %i.bj = tail call noalias ptr @av_calloc(i64 noundef %i.bi, i64 noundef 8) #8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !53
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.bl, null
  %.not41.i = icmp eq ptr %i.bj, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not41.i
  br i1 %or.cond.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.bm = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul nnan nsz <2 x double> %i.bn, <double 1.000000e-01, double 8.000000e-03>
  %i.bp = sitofp nsz i32 %i.bb to double
  %i.bq = fdiv nnan nsz <2 x double> splat (double -6.000000e+01), %i.bo
  %i.br = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul nsz <2 x double> %i.bq, %i.bs      ; 3 uses
  %shift = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %i.bt, %shift
  %1 = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.bt, <2 x i32> <i32 0, i32 3>
  %2 = fdiv nsz <2 x double> %1, splat (double 2.000000e+01)
  %3 = fmul nsz <2 x double> %2, splat (double f0x400A934F0979A371) ; 2 uses
  %4 = extractelement <2 x double> %3, i64 0
  %5 = tail call nsz double @llvm.exp2.f64(double %4) ; 2 uses
  %6 = tail call nsz double @llvm.sqrt.f64(double %5) ; 4 uses
  %7 = extractelement <2 x double> %3, i64 1
  %8 = tail call nsz double @llvm.exp2.f64(double %7)
  %9 = fdiv nnan nsz double f0x40BAFF80FB853C71, %i.ax
  %10 = fmul nnan nsz double %9, 5.000000e-01
  %11 = tail call nsz double @llvm.tan.f64(double %10) ; 3 uses
  %12 = fadd nsz double %11, %6                   ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bu = fsub nsz double %11, %6
  %i.bv = fdiv nsz double %i.bu, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store double %i.bv, ptr %14, align 8, !tbaa !54
  %i.bw = fneg nsz double %6
  %15 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %16 = insertelement <2 x double> poison, double %5, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = insertelement <2 x double> poison, double %11, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %6, i64 1
  %i.cb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.by, <2 x double> %i.ca)
  %i.cc = insertelement <2 x double> poison, double %12, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv nsz <2 x double> %i.cb, %i.cd
  %18 = insertelement <2 x double> poison, double %8, i64 0
  %i.cf = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul nsz <2 x double> %i.cf, %i.ce
  store <2 x double> %i.cg, ptr %15, align 8, !tbaa !55
  store double 1.000000e+00, ptr %13, align 8, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %.not33 = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %.not33, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !64

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load i32, ptr %i.m, align 4, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.y, %.preheader ] ; 2 uses
  %i.ck = phi i32 [ %i.ch, %._crit_edge.loopexit ], [ %i.z, %.preheader ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.cl = sext i32 %i.cj to i64
  %.not34 = icmp slt i64 %indvars.iv.next47, %i.cl
  br i1 %.not34, label %.preheader, label %.thread37, !llvm.loop !65

.thread37:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader39
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store ptr @filter_channel_dbl, ptr %i.cm, align 8, !tbaa !57
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.thread37
  %.3 = phi i32 [ 0, %.thread37 ], [ -12, %bb.c ], [ -12, %.lr.ph ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channels(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.f, %i.m
  %i.o = sdiv i64 %i.n, %i.i
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = icmp slt i32 %i.k, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 304
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.018 = phi i32 [ %i.k, %.lr.ph ], [ %i.v, %bb.b ] ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  tail call void %i.u(ptr noundef nonnull %0, i32 noundef %.018, ptr noundef nonnull %i.c, ptr noundef %i.b) #8
  %i.v = add i32 %.018, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !71
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @av_get_random_seed() local_unnamed_addr #3

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_channel_dbl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.e
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds [896 x i8], ptr %i.q, i64 %i.e ; 9 uses
  %i.s = icmp sgt i32 %i.m, 0
  br i1 %i.s, label %.lr.ph36, label %bb.c

.lr.ph36:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %.pre.i = load i32, ptr %i.r, align 8, !tbaa !50 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 6 uses
  %i.ac = icmp sgt i32 %i.o, 1
  %.promoted = load i32, ptr %i.t, align 4, !tbaa !51 ; 2 uses
  %wide.trip.count49 = zext nneg i32 %i.m to i64  ; 2 uses
  br i1 %i.ac, label %.lr.ph.us.preheader, label %.lr.ph36.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph36
  %wide.trip.count44 = zext nneg i32 %i.o to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv46 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next47, %._crit_edge.us ] ; 3 uses
  %narrow.i38.us = phi i32 [ %.promoted, %.lr.ph.us.preheader ], [ %narrow.i.us, %._crit_edge.us ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv46
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.af = icmp slt i32 %narrow.i38.us, 1
  %spec.select40.i.us = select i1 %i.af, i32 %.pre.i, i32 %narrow.i38.us
  %i.ag = add nsw i32 %spec.select40.i.us, -1
  %i.ah = add nsw i32 %narrow.i38.us, 1           ; 2 uses
  %.not.i.us = icmp slt i32 %i.ah, %.pre.i
  %narrow.i.us = select i1 %.not.i.us, i32 %i.ah, i32 0 ; 3 uses
  %spec.select.i.us = sext i32 %narrow.i.us to i64 ; 2 uses
  %i.ai = load double, ptr %i.u, align 8, !tbaa !77 ; 2 uses
  %i.aj = load double, ptr %i.v, align 8, !tbaa !78 ; 2 uses
  %i.ak = sext i32 %i.ag to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !55
  %i.an = fmul nsz double %i.aj, %i.am
  %i.ao = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %i.ae, double %i.an)
  %i.ap = load double, ptr %i.y, align 8, !tbaa !54 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.x, i64 %spec.select.i.us
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !55
  %i.as = tail call nsz double @llvm.fmuladd.f64(double %i.ap, double %i.ar, double %i.ao)
  %i.at = load double, ptr %i.z, align 8, !tbaa !56
  %i.au = sext i32 %narrow.i38.us to i64          ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !55
  %i.ax = tail call nsz double @llvm.fmuladd.f64(double %i.at, double %i.aw, double %i.as)
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ak
  %i.az = load double, ptr %i.ay, align 8, !tbaa !55
  %i.ba = fneg nsz double %i.ap
  %i.bb = tail call nsz double @llvm.fmuladd.f64(double %i.ba, double %i.az, double %i.ax)
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %spec.select.i.us
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !55
  %i.be = fneg nsz double %i.aj
  %i.bf = tail call nsz double @llvm.fmuladd.f64(double %i.be, double %i.bd, double %i.bb)
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.au ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !55
  %i.bi = fneg nsz double %i.ai
  %i.bj = tail call nsz double @llvm.fmuladd.f64(double %i.bi, double %i.bh, double %i.bf) ; 3 uses
  store double %i.ae, ptr %i.av, align 8, !tbaa !55
  store double %i.bj, ptr %i.bg, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv46 ; 2 uses
  store double %i.bj, ptr %i.bk, align 8, !tbaa !55
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %i.bl = phi double [ %i.bj, %.lr.ph.us ], [ %i.db, %bb.b ] ; 2 uses
  %indvars.iv41 = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next42, %bb.b ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv41 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !51 ; 4 uses
  %i.bp = icmp slt i32 %i.bo, 1
  %.pre.i28.us = load i32, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %spec.select40.i29.us = select i1 %i.bp, i32 %.pre.i28.us, i32 %i.bo
  %i.bq = add nsw i32 %spec.select40.i29.us, -1
  %i.br = add nsw i32 %i.bo, 1                    ; 2 uses
  %.not.i30.us = icmp slt i32 %i.br, %.pre.i28.us
  %narrow.i31.us = select i1 %.not.i30.us, i32 %i.br, i32 0 ; 2 uses
  %spec.select.i32.us = sext i32 %narrow.i31.us to i64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !77 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !78 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52 ; 3 uses
  %i.by = sext i32 %i.bq to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !55
  %i.cb = fmul nsz double %i.bv, %i.ca
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.bt, double %i.bl, double %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !54 ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %spec.select.i32.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !55
  %i.ch = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double %i.cg, double %i.cc)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !56
  %i.ck = sext i32 %i.bo to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ck ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !55
  %i.cn = tail call nsz double @llvm.fmuladd.f64(double %i.cj, double %i.cm, double %i.ch)
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !53 ; 3 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.by
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !55
  %i.cs = fneg nsz double %i.ce
  %i.ct = tail call nsz double @llvm.fmuladd.f64(double %i.cs, double %i.cr, double %i.cn)
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %spec.select.i32.us
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !55
  %i.cw = fneg nsz double %i.bv
  %i.cx = tail call nsz double @llvm.fmuladd.f64(double %i.cw, double %i.cv, double %i.ct)
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ck ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !55
  %i.da = fneg nsz double %i.bt
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.cx) ; 3 uses
  store double %i.bl, ptr %i.cl, align 8, !tbaa !55
  store double %i.db, ptr %i.cy, align 8, !tbaa !55
  store i32 %narrow.i31.us, ptr %i.bn, align 4, !tbaa !51
  store double %i.db, ptr %i.bk, align 8, !tbaa !55
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge.us, label %bb.b, !llvm.loop !73

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge37, label %.lr.ph.us, !llvm.loop !74

._crit_edge37:                                    ; preds = %.lr.ph36.split, %._crit_edge.us
  %.us-phi = phi i32 [ %narrow.i.us, %._crit_edge.us ], [ %narrow.i, %.lr.ph36.split ]
  store i32 %.us-phi, ptr %i.t, align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge37, %bb.a
  ret void

.lr.ph36.split:                                   ; preds = %.lr.ph36, %.lr.ph36.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph36.split ], [ 0, %.lr.ph36 ] ; 3 uses
  %narrow.i38 = phi i32 [ %narrow.i, %.lr.ph36.split ], [ %.promoted, %.lr.ph36 ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !55 ; 2 uses
  %i.de = icmp slt i32 %narrow.i38, 1
  %spec.select40.i = select i1 %i.de, i32 %.pre.i, i32 %narrow.i38
  %i.df = add nsw i32 %spec.select40.i, -1
  %i.dg = add nsw i32 %narrow.i38, 1              ; 2 uses
  %.not.i = icmp slt i32 %i.dg, %.pre.i
  %narrow.i = select i1 %.not.i, i32 %i.dg, i32 0 ; 3 uses
  %spec.select.i = sext i32 %narrow.i to i64      ; 2 uses
  %i.dh = load double, ptr %i.u, align 8, !tbaa !77 ; 2 uses
  %i.di = load double, ptr %i.v, align 8, !tbaa !78 ; 2 uses
  %i.dj = sext i32 %i.df to i64                   ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !55
  %i.dm = fmul nsz double %i.di, %i.dl
  %i.dn = tail call nsz double @llvm.fmuladd.f64(double %i.dh, double %i.dd, double %i.dm)
  %i.do = load double, ptr %i.y, align 8, !tbaa !54 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.x, i64 %spec.select.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !55
  %i.dr = tail call nsz double @llvm.fmuladd.f64(double %i.do, double %i.dq, double %i.dn)
  %i.ds = load double, ptr %i.z, align 8, !tbaa !56
  %i.dt = sext i32 %narrow.i38 to i64             ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.dt ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !55
  %i.dw = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double %i.dv, double %i.dr)
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.dj
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !55
  %i.dz = fneg nsz double %i.do
  %i.ea = tail call nsz double @llvm.fmuladd.f64(double %i.dz, double %i.dy, double %i.dw)
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %spec.select.i
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !55
  %i.ed = fneg nsz double %i.di
  %i.ee = tail call nsz double @llvm.fmuladd.f64(double %i.ed, double %i.ec, double %i.ea)
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.dt ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !55
  %i.eh = fneg nsz double %i.dh
  %i.ei = tail call nsz double @llvm.fmuladd.f64(double %i.eh, double %i.eg, double %i.ee) ; 2 uses
  store double %i.dd, ptr %i.du, align 8, !tbaa !55
  store double %i.ei, ptr %i.ef, align 8, !tbaa !55
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.ei, ptr %i.ej, align 8, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count49
  br i1 %exitcond.not, label %._crit_edge37, label %.lr.ph36.split, !llvm.loop !74
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #5

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"long", !5, i64 0}
!21 = !{!"p1 _ZTS9APContext", !9, i64 0}
!22 = !{!"AVLFG", !5, i64 0, !6, i64 256}
!23 = !{!"ADecorrelateContext", !10, i64 0, !6, i64 8, !20, i64 16, !6, i64 24, !21, i64 32, !22, i64 40, !9, i64 304}
!24 = !{!23, !21, i64 32}
!25 = !{!23, !6, i64 24}
!26 = !{!23, !6, i64 8}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!29 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!30 = !{!"AVRational", !6, i64 0, !6, i64 4}
!31 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!32 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!33 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!34 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!35 = !{!"AVFilterFormatsConfig", !33, i64 0, !33, i64 8, !34, i64 16, !33, i64 24, !33, i64 32, !33, i64 40}
!36 = !{!"AVFilterLink", !29, i64 0, !13, i64 8, !29, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !30, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !31, i64 72, !30, i64 96, !32, i64 104, !6, i64 112, !6, i64 116, !35, i64 120, !35, i64 168}
!37 = !{!36, !29, i64 16}
!38 = !{!"p2 omnipotent char", !14, i64 0}
!39 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!40 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!41 = !{!"AVFrame", !5, i64 0, !5, i64 64, !38, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !30, i64 124, !20, i64 136, !20, i64 144, !30, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !39, i64 248, !6, i64 256, !32, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !20, i64 304, !40, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !20, i64 368, !9, i64 376, !31, i64 384, !20, i64 408, !6, i64 416}
!42 = !{!41, !6, i64 112}
!43 = !{!"ThreadData", !28, i64 0, !28, i64 8}
!44 = !{!43, !28, i64 0}
!45 = !{!43, !28, i64 8}
!46 = !{!36, !6, i64 76}
!47 = !{!"p1 double", !9, i64 0}
!48 = !{!"double", !5, i64 0}
!49 = !{!"APContext", !6, i64 0, !6, i64 4, !47, i64 8, !47, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48}
!50 = !{!49, !6, i64 0}
!51 = !{!49, !6, i64 4}
!52 = !{!49, !47, i64 8}
!53 = !{!49, !47, i64 16}
!54 = !{!49, !48, i64 48}
!55 = !{!48, !48, i64 0}
!56 = !{!49, !48, i64 40}
!57 = !{!23, !9, i64 304}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = !{!28, !28, i64 0}
!61 = !{!18, !15, i64 56}
!62 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!63 = !{!62, !62, i64 0}
!64 = distinct !{!64, !27}
!65 = distinct !{!65, !27, !70}
!66 = !{!23, !20, i64 16}
!67 = !{!36, !6, i64 64}
!68 = !{!22, !6, i64 256}
!69 = !{!6, !6, i64 0}
!70 = !{!"llvm.loop.unswitch.partial.disable"}
!71 = distinct !{!71, !27}
!72 = !{!41, !6, i64 388}
!73 = distinct !{!73, !27}
!74 = distinct !{!74, !27}
!75 = !{!41, !38, i64 96}
!76 = !{!12, !12, i64 0}
!77 = !{!49, !48, i64 32}
!78 = !{!49, !48, i64 24}
end_hunk_0
