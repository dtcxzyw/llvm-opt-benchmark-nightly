Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/j2k?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"dt_imageio_j2k_preset_t\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cinema2k_24\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"cinema2k_48\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"cinema4k_24\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Created with %s\00", align 1
@darktable_package_string = external constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Error: opj_image_create() failed\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"failed to allocate ICC profile\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"unable to attach output profile to JP2\00", align 1
@.str.14 = private unnamed_addr constant [101 x i8] c"Warning: exporting with anything but sRGB profile might lead to wrong results when opening the image\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"failed to create output stream\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"failed to encode image: opj_start_compress\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"failed to encode image: opj_encode\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"failed to encode image: opj_end_compress\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"plugins/imageio/format/j2k/preset\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"plugins/imageio/format/j2k/quality\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"image/jp2\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"jp2\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"JPEG 2000 (12-bit)\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@gui_init.texts = internal global [5 x ptr] [ptr @.str.4, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null], align 16
@.str.25 = private unnamed_addr constant [16 x i8] c"Cinema2K, 24FPS\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Cinema2K, 48FPS\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Cinema4K, 24FPS\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"DCP mode\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/darktable/darktable/src/imageio/format/j2k.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.30 = private unnamed_addr constant [161 x i8] c"Image coordinates %d x %d is not 2K compliant.\0AJPEG Digital Cinema Profile-3 (2K profile) compliance requires that at least one of coordinates match 2048 x 1080\00", align 1
@.str.31 = private unnamed_addr constant [161 x i8] c"Image coordinates %d x %d is not 4K compliant.\0AJPEG Digital Cinema Profile-4 (4K profile) compliance requires that at least one of coordinates match 4096 x 2160\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"[ERROR] %s\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"[WARNING] %s\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"[INFO] %s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define void @init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 2 uses
  %i.b = alloca [1 x i32], align 4                ; 2 uses
  %i.c = alloca [1 x i32], align 4                ; 2 uses
  %i.d = alloca [1 x i32], align 4                ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !71 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !72
  %i.h = tail call i64 @luaA_type_add(ptr noundef %i.e, ptr noundef nonnull @.str.1, i64 noundef 4) #15
  tail call void @luaA_struct_member_type(ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull @.str, i64 noundef %i.h, i64 noundef 148) #15
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !71 ; 2 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !72
  %i.k = tail call i64 @luaA_type_add(ptr noundef %i.i, ptr noundef nonnull @.str.1, i64 noundef 4) #15
  tail call void @luaA_struct_member_type(ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2, i64 noundef %i.k, i64 noundef 156) #15
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !71 ; 2 uses
  %i.m = tail call i64 @luaA_type_add(ptr noundef %i.l, ptr noundef nonnull @.str.3, i64 noundef 4) #15
  tail call void @luaA_enum_type(ptr noundef %i.l, i64 noundef %i.m, i64 noundef 4) #15
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !71 ; 2 uses
  %i.o = tail call i64 @luaA_type_add(ptr noundef %i.n, ptr noundef nonnull @.str.3, i64 noundef 4) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @luaA_enum_value_type(ptr noundef %i.n, i64 noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4) #15
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !71 ; 2 uses
  %i.q = call i64 @luaA_type_add(ptr noundef %i.p, ptr noundef nonnull @.str.3, i64 noundef 4) #15
  store i32 1, ptr %i.b, align 4, !tbaa !21
  call void @luaA_enum_value_type(ptr noundef %i.p, i64 noundef %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5) #15
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !71 ; 2 uses
  %i.s = call i64 @luaA_type_add(ptr noundef %i.r, ptr noundef nonnull @.str.3, i64 noundef 4) #15
  store i32 2, ptr %i.c, align 4, !tbaa !21
  call void @luaA_enum_value_type(ptr noundef %i.r, i64 noundef %i.s, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.6) #15
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !71 ; 2 uses
  %i.u = call i64 @luaA_type_add(ptr noundef %i.t, ptr noundef nonnull @.str.3, i64 noundef 4) #15
  store i32 3, ptr %i.d, align 4, !tbaa !21
  call void @luaA_enum_value_type(ptr noundef %i.t, i64 noundef %i.u, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.7) #15
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !71 ; 2 uses
  %i.w = load i64, ptr %i.f, align 8, !tbaa !72
  %i.x = call i64 @luaA_type_add(ptr noundef %i.v, ptr noundef nonnull @.str.3, i64 noundef 4) #15
  call void @luaA_struct_member_type(ptr noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.8, i64 noundef %i.x, i64 noundef 152) #15
  ret void
}

declare void @luaA_struct_member_type(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @luaA_type_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @luaA_enum_type(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @luaA_enum_value_type(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @cleanup(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @write_image(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readnone captures(none) %10, i32 noundef %11) local_unnamed_addr #1 {
bb.a:
  %12 = alloca %struct.opj_cparameters, align 16  ; 46 uses
  %13 = alloca [4 x %struct.opj_image_comptparm], align 16 ; 11 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 100
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.c, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i32 101, %i.c
  %i.g = uitofp nneg i32 %i.f to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi float [ 1.000000e+00, %bb.a ], [ %i.g, %bb.c ], [ 1.000000e+02, %bb.b ] ; 2 uses
  call void @opj_set_default_encoder_parameters(ptr noundef nonnull %12) #15
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 4800 ; 7 uses
  store float %i.h, ptr %i.i, align 16, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 4796 ; 3 uses
  store i32 1, ptr %i.j, align 4, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  store i32 1, ptr %i.k, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 18692 ; 5 uses
  store i32 0, ptr %i.l, align 4, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 18208
  store i32 1, ptr %i.m, align 16, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 18684 ; 3 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !83
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %.split

.split:                                           ; preds = %bb.d
  %i.q = call noalias dereferenceable_or_null(4) ptr @calloc(i64 noundef 1, i64 noundef 4) #16 ; 2 uses
  store float %i.h, ptr %i.q, align 4, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 1, ptr %i.r, align 16, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 18697
  store i8 67, ptr %i.s, align 1, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 18696
  store i8 1, ptr %i.t, align 8, !tbaa !86
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %12, align 16, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 18188
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 5604
  store i32 32, ptr %i.v, align 4, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 5608
  store i32 32, ptr %i.w, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 16, !tbaa !89
  %i.z = or i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 16, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 52
  store i32 4, ptr %i.aa, align 4, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 5620
  store i32 -1, ptr %i.ab, align 4, !tbaa !91
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %i.u, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 5616
  store i32 1, ptr %i.ac, align 16, !tbaa !92
  br label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  %.0119 = phi ptr [ %i.q, %.split ], [ null, %bb.d ] ; 4 uses
  %i.ad = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @darktable_package_string) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 18196
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load <2 x i32>, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(92) %i.aj, i8 0, i64 92, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 12, ptr %i.ak, align 8, !tbaa !95
  %i.al = shufflevector <2 x i32> %i.ah, <2 x i32> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  store <4 x i32> %i.al, ptr %13, align 16, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 60
  store i32 12, ptr %i.an, align 4, !tbaa !95
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 12, ptr %i.ap, align 16, !tbaa !95
  store <4 x i32> %i.al, ptr %i.ao, align 8, !tbaa !21
  %i.aq = call ptr @opj_image_create(i32 noundef 3, ptr noundef nonnull %13, i32 noundef 1) #15 ; 19 uses
  %.not129 = icmp eq ptr %i.aq, null
  br i1 %.not129, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 18188
  %i.as = add nsw <2 x i32> %i.ai, splat (i32 -1)
  %14 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load <2 x i32>, ptr %i.ar, align 4, !tbaa !21 ; 2 uses
  store <2 x i32> %i.at, ptr %i.aq, align 8, !tbaa !21
  %15 = mul nsw <2 x i32> %i.as, %i.ah
  %i.au = add <2 x i32> %15, splat (i32 1)
  %16 = add <2 x i32> %i.au, %i.at
  store <2 x i32> %16, ptr %14, align 8, !tbaa !21
  %shift = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.ai
  %i.av = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.av to i64   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !100 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 176
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !100 ; 3 uses
  %min.iters.check = icmp ult i32 %i.av, 9
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.bf = ptrtoaddr ptr %i.be to i64              ; 2 uses
  %i.bg = ptrtoaddr ptr %i.bc to i64              ; 2 uses
  %i.bh = ptrtoaddr ptr %i.ba to i64              ; 2 uses
  %i.bi = sub i64 %i.bh, %i.bg
  %diff.check = icmp ugt i64 %i.bi, -32
  %i.bj = sub i64 %i.bh, %i.bf
  %diff.check188 = icmp ugt i64 %i.bj, -32
  %conflict.rdx = or i1 %diff.check, %diff.check188
  %i.bk = sub i64 %i.bg, %i.bf
  %diff.check189 = icmp ugt i64 %i.bk, -32
  %conflict.rdx190 = or i1 %conflict.rdx, %diff.check189
  br i1 %conflict.rdx190, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bl = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = select i1 %i.bm, i64 8, i64 %i.bl
  %n.vec = sub nsw i64 %wide.trip.count, %i.bn    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %.idx = shl nuw nsw i64 %index, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %wide.vec = load <32 x float>, ptr %i.bo, align 4, !tbaa !76 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec191 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec192 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec, zeroinitializer
  %i.bq = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec, splat (float 1.000000e+00)
  %i.br = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 4.095000e+03)
  %i.bs = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.br)
  %i.bt = fptosi <8 x float> %i.bs to <8 x i32>
  %predphi = select <8 x i1> %i.bq, <8 x i32> splat (i32 4095), <8 x i32> %i.bt
  %predphi193 = select <8 x i1> %i.bp, <8 x i32> %predphi, <8 x i32> zeroinitializer
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index
  store <8 x i32> %predphi193, ptr %i.bu, align 4, !tbaa !21
  %i.bv = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec191, zeroinitializer
  %i.bw = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec191, splat (float 1.000000e+00)
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec191, splat (float 4.095000e+03)
  %i.by = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.bx)
  %i.bz = fptosi <8 x float> %i.by to <8 x i32>
  %predphi194 = select <8 x i1> %i.bw, <8 x i32> splat (i32 4095), <8 x i32> %i.bz
  %predphi195 = select <8 x i1> %i.bv, <8 x i32> %predphi194, <8 x i32> zeroinitializer
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index
  store <8 x i32> %predphi195, ptr %i.ca, align 4, !tbaa !21
  %i.cb = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec192, zeroinitializer
  %i.cc = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec192, splat (float 1.000000e+00)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec192, splat (float 4.095000e+03)
  %i.ce = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.cd)
  %i.cf = fptosi <8 x float> %i.ce to <8 x i32>
  %predphi196 = select <8 x i1> %i.cc, <8 x i32> splat (i32 4095), <8 x i32> %i.cf
  %predphi197 = select <8 x i1> %i.cb, <8 x i32> %predphi196, <8 x i32> zeroinitializer
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index
  store <8 x i32> %predphi197, ptr %i.cg, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.preheader.preheader, label %vector.body, !llvm.loop !73

.preheader.preheader:                             ; preds = %vector.body, %vector.memcheck, %.preheader.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec, %vector.body ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ %indvars.iv.ph, %.preheader.preheader ] ; 5 uses
  %i.ci = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !76 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ugt float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.preheader
  %i.cm = fcmp reassoc nsz arcp contract afn ult float %i.ck, 1.000000e+00
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = fmul reassoc nsz arcp contract afn float %i.ck, 4.095000e+03
  %i.co = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cn)
  %i.cp = fptosi float %i.co to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.preheader
  %i.cq = phi i32 [ 0, %.preheader ], [ %i.cp, %bb.h ], [ 4095, %bb.g ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !21
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ci
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !76 ; 3 uses
  %i.cv = fcmp reassoc nsz arcp contract afn ugt float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cw = fcmp reassoc nsz arcp contract afn ult float %i.cu, 1.000000e+00
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cu, 4.095000e+03
  %i.cy = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cx)
  %i.cz = fptosi float %i.cy to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.da = phi i32 [ 0, %bb.i ], [ %i.cz, %bb.k ], [ 4095, %bb.j ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %i.da, ptr %i.db, align 4, !tbaa !21
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ci
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !76 ; 3 uses
  %i.df = fcmp reassoc nsz arcp contract afn ugt float %i.de, 0.000000e+00
  br i1 %i.df, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dg = fcmp reassoc nsz arcp contract afn ult float %i.de, 1.000000e+00
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = fmul reassoc nsz arcp contract afn float %i.de, 4.095000e+03
  %i.di = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.dh)
  %i.dj = fptosi float %i.di to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.dk = phi i32 [ 0, %bb.l ], [ %i.dj, %bb.n ], [ 4095, %bb.m ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !74

bb.p:                                             ; preds = %bb.e
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10) #15
  call void @free(ptr noundef %.0119) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.bi

._crit_edge:                                      ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.dm = call ptr @dt_colorspaces_get_output_profile(i32 noundef %7, i32 noundef %3, ptr noundef %4) #15 ; 2 uses
  %i.dn = call ptr @opj_version() #15             ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !103 ; 2 uses
  %i.dp = icmp sgt i8 %i.do, 50
  br i1 %i.dp, label %bb.u, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.dq = icmp eq i8 %i.do, 50
  br i1 %i.dq, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !103 ; 2 uses
  %i.dt = icmp sgt i8 %i.ds, 53
  br i1 %i.dt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = icmp eq i8 %i.ds, 53
  br i1 %i.du, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !103
  %i.dx = icmp sgt i8 %i.dw, 51
  br i1 %i.dx, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.r, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 1032 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !105
  %i.ea = call i32 @cmsSaveProfileToMem(ptr noundef %i.dz, ptr noundef null, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %.not131 = icmp eq i32 %i.eb, 0
  br i1 %.not131, label %.thread143, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = zext i32 %i.eb to i64
  %i.ed = call noalias ptr @malloc(i64 noundef %i.ec) #17 ; 3 uses
  %.not132 = icmp eq ptr %i.ed, null
  br i1 %.not132, label %.thread151, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !105
end_hunk_0
