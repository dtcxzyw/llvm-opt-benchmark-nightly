Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawprepare?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0
@.str.21 = private unnamed_addr constant [16 x i8] c"raw_white_point\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"white point\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"flat_field\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"raw flat field correction to compensate for lens shading\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"plugins/darkroom/rawprepare/allow_editing_crop\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"section\04crop\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"crop left border\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"crop top border\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"crop right border\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"crop bottom border\00", align 1
@.str.35 = private unnamed_addr constant [74 x i8] c"raw black/white point correction\0Aonly works for the sensors that need it.\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 2, ptr @.str.59, i64 32, ptr getelementptr (i8, ptr @introspection_linear, i64 704), i64 1120, i64 688 }, align 8
@introspection_init.f7 = internal global [3 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.36, i32 0, [4 x i8] zeroinitializer, ptr @.str.37 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.38, i32 1, [4 x i8] zeroinitializer, ptr @.str.39 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [15 x i8] c"FLAT_FIELD_OFF\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"FLAT_FIELD_EMBEDDED\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"embedded GainMap\00", align 1
@introspection_init.f8 = internal global [8 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr getelementptr (i8, ptr @introspection_linear, i64 616), ptr null], align 16
@.str.40 = private unnamed_addr constant [28 x i8] c"raw_black_level_separate[0]\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"raw_black_level_separate\00", align 1
@.str.42 = private unnamed_addr constant [92 x i8] c"[rawprepare] got wrong crop parameters left=%i, right=%i, top=%i, bottom=%i for size=%ix%i\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"invalid crop parameters\00", align 1
@.str.44 = private unnamed_addr constant [73 x i8] c"please reset to defaults, update your preset or set to something correct\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"dt_section_label\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"halign\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"crop left\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"crop top\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"crop right\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"crop bottom\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"ushort\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"black level\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"ushort[]\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"dt_iop_rawprepare_flat_field_t\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"flat field correction\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"dt_iop_rawprepare_params_t\00", align 1
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i16, i16, i16, [2 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i16, i16, i16, [2 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.49, ptr @.str.27, ptr @.str.27, ptr @.str.50, i64 4, i64 0, ptr null }, i32 0, i32 65535, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.49, ptr @.str.29, ptr @.str.29, ptr @.str.51, i64 4, i64 4, ptr null }, i32 0, i32 65535, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.49, ptr @.str.31, ptr @.str.31, ptr @.str.52, i64 4, i64 8, ptr null }, i32 0, i32 65535, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.49, ptr @.str.33, ptr @.str.33, ptr @.str.53, i64 4, i64 12, ptr null }, i32 0, i32 65535, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i16, i16, i16, [2 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i16, i16, i16, [2 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.54, ptr @.str.40, ptr @.str.40, ptr @.str.55, i64 2, i64 16, ptr null }, i16 0, i16 -1, i16 0, [2 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.56, ptr @.str.41, ptr @.str.41, ptr @.str.55, i64 8, i64 16, ptr null }, i64 4, i32 9, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 352) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i16, i16, i16, [2 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i16, i16, i16, [2 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.54, ptr @.str.21, ptr @.str.21, ptr @.str.22, i64 2, i64 24, ptr null }, i16 0, i16 -1, i16 0, [2 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.57, ptr @.str.23, ptr @.str.23, ptr @.str.58, i64 4, i64 28, ptr null }, i64 2, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.59, ptr @.str.60, ptr @.str.60, ptr @.str.60, i64 32, i64 0, ptr null }, i64 7, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str, i64 noundef 11) #21
  ret ptr %i.a
}

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 270544
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 33
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.b = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.a) #21
  %.not2 = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not2, i32 2, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]
  ret i32 %i.d
}

declare i32 @dt_image_is_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #22 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !155
  store ptr %i.b, ptr %3, align 8, !tbaa !13
  store i32 32, ptr %4, align 4, !tbaa !14
  store i32 2, ptr %5, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #21
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #21
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #21
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #21
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #21
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #21
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_rawprepare_params_t, align 4 ; 3 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !156
  tail call void @dt_database_start_transaction(ptr noundef %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.e = tail call i32 (...) %i.d() #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 -1, ptr %i.f, align 4, !tbaa !65
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, i32 noundef %i.e, ptr noundef nonnull %1, i32 noundef 32, i32 noundef 1, i32 noundef 0) #21
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !156
  call void @dt_database_release_transaction(ptr noundef %i.g) #21
  ret void
}

declare void @dt_database_start_transaction(ptr noundef) local_unnamed_addr #2

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @dt_database_release_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @distort_transform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = icmp eq <2 x i32> %i.c, zeroinitializer  ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load float, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = load float, ptr %i.i, align 8, !tbaa !82
  %i.k = fdiv reassoc nsz arcp contract afn float %i.h, %i.j
  %i.l = sitofp <2 x i32> %i.c to <2 x float>
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <2 x float> %i.n, %i.l ; 5 uses
  %i.p = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.q = add i64 %i.p, -2                         ; 3 uses
  %i.r = lshr exact i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.u = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.o, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat23 = shufflevector <2 x float> %i.o, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl nuw i64 %index, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.w, align 4, !tbaa !83 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec24 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec25 = load <16 x float>, ptr %i.y, align 4, !tbaa !83 ; 2 uses
  %strided.vec26 = shufflevector <16 x float> %wide.vec25, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec27 = shufflevector <16 x float> %wide.vec25, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.aa = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec26, %broadcast.splat
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec24, %broadcast.splat23
  %i.ac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec27, %broadcast.splat23
  %interleaved.vec = shufflevector <8 x float> %i.z, <8 x float> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.w, align 4, !tbaa !83
  %interleaved.vec28 = shufflevector <8 x float> %i.aa, <8 x float> %i.ac, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec28, ptr %i.y, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.s, -4                     ; 3 uses
  %i.ae = shl i64 %n.vec29, 1
  %broadcast.splat31 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat33 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index34, 3
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec35 = load <8 x float>, ptr %i.af, align 4, !tbaa !83 ; 2 uses
  %strided.vec36 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ag = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec36, %broadcast.splat31
  %i.ah = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec37, %broadcast.splat33
  %interleaved.vec38 = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec38, ptr %i.af, align 4, !tbaa !83
  %index.next39 = add nuw i64 %index34, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next39, %n.vec29
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.s, %n.vec29
  br i1 %cmp.n40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.ph = phi i64 [ 0, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.019 = phi i64 [ %i.am, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !83
  %i.al = fsub reassoc nsz arcp contract afn <2 x float> %i.ak, %i.o
  store <2 x float> %i.al, ptr %i.aj, align 4, !tbaa !83
  %i.am = add nuw i64 %.019, 2                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.p
  br i1 %i.an, label %.lr.ph, label %.loopexit, !llvm.loop !160

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a, %._crit_edge
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @distort_backtransform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = icmp eq <2 x i32> %i.c, zeroinitializer  ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load float, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = load float, ptr %i.i, align 8, !tbaa !82
  %i.k = fdiv reassoc nsz arcp contract afn float %i.h, %i.j
  %i.l = sitofp <2 x i32> %i.c to <2 x float>
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <2 x float> %i.n, %i.l ; 5 uses
  %i.p = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.q = add i64 %i.p, -2                         ; 3 uses
  %i.r = lshr exact i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.u = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.o, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat23 = shufflevector <2 x float> %i.o, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl nuw i64 %index, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.w, align 4, !tbaa !83 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec24 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec25 = load <16 x float>, ptr %i.y, align 4, !tbaa !83 ; 2 uses
  %strided.vec26 = shufflevector <16 x float> %wide.vec25, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec27 = shufflevector <16 x float> %wide.vec25, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.z = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.aa = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec26, %broadcast.splat
  %i.ab = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec24, %broadcast.splat23
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec27, %broadcast.splat23
  %interleaved.vec = shufflevector <8 x float> %i.z, <8 x float> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.w, align 4, !tbaa !83
  %interleaved.vec28 = shufflevector <8 x float> %i.aa, <8 x float> %i.ac, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec28, ptr %i.y, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.s, -4                     ; 3 uses
  %i.ae = shl i64 %n.vec29, 1
  %broadcast.splat31 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat33 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index34, 3
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec35 = load <8 x float>, ptr %i.af, align 4, !tbaa !83 ; 2 uses
  %strided.vec36 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ag = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec36, %broadcast.splat31
  %i.ah = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec37, %broadcast.splat33
  %interleaved.vec38 = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec38, ptr %i.af, align 4, !tbaa !83
  %index.next39 = add nuw i64 %index34, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next39, %n.vec29
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.s, %n.vec29
  br i1 %cmp.n40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.ph = phi i64 [ 0, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.019 = phi i64 [ %i.am, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !83
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.o
  store <2 x float> %i.al, ptr %i.aj, align 4, !tbaa !83
  %i.am = add nuw i64 %.019, 2                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.p
  br i1 %i.an, label %.lr.ph, label %.loopexit, !llvm.loop !163

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a, %._crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !88
  store i32 0, ptr %2, align 4, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load float, ptr %i.g, align 8, !tbaa !82
  %i.i = fdiv reassoc nsz arcp contract afn float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load <2 x i32>, ptr %i.b, align 8, !tbaa !14
  %i.l = load <2 x i32>, ptr %i.d, align 8, !tbaa !14
  %i.m = add nsw <2 x i32> %i.l, %i.k
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.i, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.n
  %i.r = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.q)
  %i.s = fptosi <2 x float> %i.r to <2 x i32>
  %i.t = load <2 x i32>, ptr %i.j, align 4, !tbaa !14
  %i.u = sub nsw <2 x i32> %i.t, %i.s
  store <2 x i32> %i.u, ptr %i.j, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load float, ptr %i.d, align 4, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load float, ptr %i.f, align 8, !tbaa !82
  %i.h = fdiv reassoc nsz arcp contract afn float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.b, align 8, !tbaa !14
  %i.k = load <2 x i32>, ptr %i.c, align 8, !tbaa !14
  %i.l = add nsw <2 x i32> %i.k, %i.j
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
  %i.n = insertelement <2 x float> poison, float %i.h, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul reassoc nsz arcp contract afn <2 x float> %i.o, %i.m
  %i.q = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.p)
  %i.r = fptosi <2 x float> %i.q to <2 x i32>
  %i.s = load <2 x i32>, ptr %i.i, align 4, !tbaa !14
  %i.t = add nsw <2 x i32> %i.s, %i.r
  store <2 x i32> %i.t, ptr %i.i, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_format(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  tail call void @default_output_format(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = load <2 x i16>, ptr %i.c, align 8, !tbaa !91
  store <2 x i16> %i.e, ptr %i.d, align 16, !tbaa !91
  ret void
}

declare void @default_output_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [4 x ptr], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !80  ; 19 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93   ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 104
  %.val260 = load float, ptr %i.f, align 8, !tbaa !82 ; 2 uses
  %i.g = getelementptr i8, ptr %4, i64 16
  %.val261 = load float, ptr %i.g, align 4, !tbaa !90 ; 2 uses
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.e to float
  %i.i = fmul reassoc nsz arcp contract afn float %.val261, %i.h
  %i.j = fdiv reassoc nsz arcp contract afn float %i.i, %.val260
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.j)
  %i.l = fptosi float %i.k to i32                 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !94   ; 3 uses
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to float
  %i.p = fmul reassoc nsz arcp contract afn float %.val261, %i.o
  %i.q = fdiv reassoc nsz arcp contract afn float %i.p, %.val260
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.q)
  %i.s = fptosi float %i.r to i32                 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.w = load i32, ptr %i.v, align 8, !tbaa !108
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.y = load i32, ptr %i.x, align 16, !tbaa !186
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !187
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %.preheader278, label %bb.d

.preheader278:                                    ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !188 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.preheader277.lr.ph, label %.loopexit276.sink.split

.preheader277.lr.ph:                              ; preds = %.preheader278
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !189 ; 5 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = sext i32 %i.ah to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  br i1 %i.ai, label %.preheader277.lr.ph.split, label %.loopexit276.sink.split

.preheader277.lr.ph.split:                        ; preds = %.preheader277.lr.ph
  %i.am = getelementptr i8, ptr %5, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !189
  %.val270 = load i32, ptr %5, align 4, !tbaa !89 ; 3 uses
  %.val271 = load i32, ptr %i.am, align 4, !tbaa !88
  %invariant.op292 = add i32 %i.n, %.val271
  %invariant.op288 = add i32 %i.e, %.val270       ; 5 uses
  %i.ap = sext i32 %i.s to i64
  %i.aq = sext i32 %i.ao to i64
  %i.ar = sext i32 %i.l to i64
  %wide.trip.count331 = zext nneg i32 %i.ae to i64 ; 2 uses
  %invariant.gep380 = getelementptr [2 x i8], ptr %2, i64 %i.ar
  %wide.trip.count326 = zext nneg i32 %i.ah to i64 ; 5 uses
  %i.as = add nsw i64 %wide.trip.count326, -1     ; 2 uses
  %i.at = trunc i32 %invariant.op288 to i1
  %i.au = shl nuw nsw i64 %wide.trip.count326, 2
  %i.av = shl i32 %invariant.op288, 2
  %i.aw = and i32 %i.av, 4
  %i.ax = add nuw nsw i64 %wide.trip.count331, 4611686018427387903
  %i.ay = mul i64 %i.ax, %i.aj
  %i.az = add i64 %i.ay, %wide.trip.count326
  %i.ba = shl i64 %i.az, 2
  %scevgep430 = getelementptr i8, ptr %3, i64 %i.ba
  %i.bb = add i32 %i.e, %.val270                  ; 2 uses
  %i.bc = and i32 %i.bb, 1
  %i.bd = and i32 %i.bb, 1
  %i.be = add i32 %i.e, %.val270
  %i.bf = and i32 %i.be, 1
  %i.bg = and i32 %invariant.op288, 1
  %min.iters.check431 = icmp ult i32 %i.ah, 8
  %i.bh = trunc i64 %i.as to i1
  %i.bi = xor i1 %i.at, true
  %i.bj = and i1 %i.bh, %i.bi
  %i.bk = icmp ugt i64 %i.as, 1
  %i.bl = or i1 %i.bj, %i.bk
  %invariant.op541 = sub i64 20, %i.au
  %xtraiter523 = and i64 %wide.trip.count326, 3   ; 3 uses
  %i.bm = icmp ult i32 %i.ah, 4
  %unroll_iter527 = and i64 %wide.trip.count326, 2147483644
  %lcmp.mod525.not = icmp eq i64 %xtraiter523, 0
  %lcmp.mod526 = icmp ne i64 %xtraiter523, 0
  br label %.preheader277

.preheader277:                                    ; preds = %.preheader277.lr.ph.split, %._crit_edge287
  %indvars.iv328 = phi i64 [ 0, %.preheader277.lr.ph.split ], [ %indvars.iv.next329, %._crit_edge287 ] ; 4 uses
  %i.bn = add nsw i64 %indvars.iv328, %i.ap
  %i.bo = mul nsw i64 %i.bn, %i.aq
  %i.bp = mul nuw nsw i64 %indvars.iv328, %i.aj
  %i.bq = trunc nuw nsw i64 %indvars.iv328 to i32
  %.reass293 = add i32 %invariant.op292, %i.bq    ; 2 uses
  %i.br = shl i32 %.reass293, 1
  %i.bs = and i32 %i.br, 2                        ; 6 uses
  %gep381 = getelementptr [2 x i8], ptr %invariant.gep380, i64 %i.bo ; 6 uses
  %i.bt = getelementptr [4 x i8], ptr %3, i64 %i.bp ; 6 uses
  %brmerge543 = select i1 %min.iters.check431, i1 true, i1 %i.bl
  br i1 %brmerge543, label %scalar.ph.preheader, label %vector.memcheck432

scalar.ph.preheader:                              ; preds = %.preheader277, %vector.memcheck432
  br i1 %i.bm, label %scalar.ph.epil.preheader, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.preheader
  %i.bu = or disjoint i32 %i.bs, %i.bg
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bv
  %i.by = or disjoint i32 %i.bc, %i.bs
  %i.bz = xor i32 %i.by, 1
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ca
  %i.cd = or disjoint i32 %i.bs, %i.bd
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ce
  %i.ch = or disjoint i32 %i.bf, %i.bs
  %i.ci = xor i32 %i.ch, 1
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cj
  br label %scalar.ph

vector.memcheck432:                               ; preds = %.preheader277
  %i.cm = shl i32 %.reass293, 3
  %i.cn = and i32 %i.cm, 8
  %i.co = or disjoint i32 %i.cn, %i.aw
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %.reass542 = add i64 %i.cp, %invariant.op541
  %i.cq = getelementptr i8, ptr %i.d, i64 %.reass542
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 36
  %bound0433 = icmp ult ptr %3, %i.cs
  %bound1434 = icmp ult ptr %i.cq, %scevgep430
  %found.conflict435 = and i1 %bound0433, %bound1434
  br i1 %found.conflict435, label %scalar.ph.preheader, label %vector.body438.preheader

vector.body438.preheader:                         ; preds = %vector.memcheck432
  %i.ct = and i32 %invariant.op288, 1
  %i.cu = or disjoint i32 %i.bs, %i.ct
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -28
  %wide.load441 = load <8 x float>, ptr %i.cx, align 4, !tbaa !83, !alias.scope !190
  %reverse442 = shufflevector <8 x float> %wide.load441, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cv
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -28
  %wide.load443 = load <8 x float>, ptr %i.cz, align 4, !tbaa !83, !alias.scope !190
  %reverse444 = shufflevector <8 x float> %wide.load443, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.da = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse444
  br label %vector.body438

vector.body438:                                   ; preds = %vector.body438.preheader, %vector.body438
  %index439 = phi i64 [ %index.next445, %vector.body438 ], [ 0, %vector.body438.preheader ] ; 3 uses
  %i.db = getelementptr [2 x i8], ptr %gep381, i64 %index439
  %wide.load440 = load <8 x i16>, ptr %i.db, align 2, !tbaa !91
  %i.dc = uitofp <8 x i16> %wide.load440 to <8 x float>
end_hunk_0
begin_hunk_1_@process:bb.a
  %index480 = phi i64 [ %index.next493, %vector.body479 ], [ 0, %vector.main.loop.iter.check475 ] ; 5 uses
  %i.mn = getelementptr [4 x i8], ptr %i.mh, i64 %index480 ; 4 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 32
  %i.mp = getelementptr i8, ptr %i.mn, i64 64
  %i.mq = getelementptr i8, ptr %i.mn, i64 96
  %wide.load481 = load <8 x float>, ptr %i.mn, align 4, !tbaa !83, !alias.scope !198
  %wide.load482 = load <8 x float>, ptr %i.mo, align 4, !tbaa !83, !alias.scope !198
  %wide.load483 = load <8 x float>, ptr %i.mp, align 4, !tbaa !83, !alias.scope !198
  %wide.load484 = load <8 x float>, ptr %i.mq, align 4, !tbaa !83, !alias.scope !198
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %index480 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 96
  %wide.load485 = load <8 x float>, ptr %i.mr, align 4, !tbaa !83, !alias.scope !199
  %wide.load486 = load <8 x float>, ptr %i.ms, align 4, !tbaa !83, !alias.scope !199
  %wide.load487 = load <8 x float>, ptr %i.mt, align 4, !tbaa !83, !alias.scope !199
  %wide.load488 = load <8 x float>, ptr %i.mu, align 4, !tbaa !83, !alias.scope !199
  %i.mv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load481, %wide.load485
  %i.mw = fsub reassoc nsz arcp contract afn <8 x float> %wide.load482, %wide.load486
  %i.mx = fsub reassoc nsz arcp contract afn <8 x float> %wide.load483, %wide.load487
  %i.my = fsub reassoc nsz arcp contract afn <8 x float> %wide.load484, %wide.load488
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %index480 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 96
  %wide.load489 = load <8 x float>, ptr %i.mz, align 4, !tbaa !83, !alias.scope !199
  %wide.load490 = load <8 x float>, ptr %i.na, align 4, !tbaa !83, !alias.scope !199
  %wide.load491 = load <8 x float>, ptr %i.nb, align 4, !tbaa !83, !alias.scope !199
  %wide.load492 = load <8 x float>, ptr %i.nc, align 4, !tbaa !83, !alias.scope !199
  %i.nd = fdiv reassoc nsz arcp contract afn <8 x float> %i.mv, %wide.load489
  %i.ne = fdiv reassoc nsz arcp contract afn <8 x float> %i.mw, %wide.load490
  %i.nf = fdiv reassoc nsz arcp contract afn <8 x float> %i.mx, %wide.load491
  %i.ng = fdiv reassoc nsz arcp contract afn <8 x float> %i.my, %wide.load492
  %i.nh = getelementptr [4 x i8], ptr %i.mi, i64 %index480 ; 4 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 32
  %i.nj = getelementptr i8, ptr %i.nh, i64 64
  %i.nk = getelementptr i8, ptr %i.nh, i64 96
  store <8 x float> %i.nd, ptr %i.nh, align 4, !tbaa !83, !alias.scope !200, !noalias !201
  store <8 x float> %i.ne, ptr %i.ni, align 4, !tbaa !83, !alias.scope !200, !noalias !201
  store <8 x float> %i.nf, ptr %i.nj, align 4, !tbaa !83, !alias.scope !200, !noalias !201
  store <8 x float> %i.ng, ptr %i.nk, align 4, !tbaa !83, !alias.scope !200, !noalias !201
  %index.next493 = add nuw i64 %index480, 32      ; 2 uses
  %i.nl = icmp eq i64 %index.next493, %n.vec478
  br i1 %i.nl, label %middle.block494, label %vector.body479, !llvm.loop !182

middle.block494:                                  ; preds = %vector.body479
  br i1 %cmp.n495, label %._crit_edge295, label %vec.epilog.iter.check497

vec.epilog.iter.check497:                         ; preds = %middle.block494
  br i1 %min.epilog.iters.check499, label %vec.epilog.scalar.ph498.preheader, label %vec.epilog.ph500, !prof !202

vec.epilog.ph500:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check497
  %vec.epilog.resume.val501 = phi i64 [ %n.vec478, %vec.epilog.iter.check497 ], [ 0, %vector.main.loop.iter.check475 ]
  br label %vec.epilog.vector.body503

vec.epilog.vector.body503:                        ; preds = %vec.epilog.vector.body503, %vec.epilog.ph500
  %index504 = phi i64 [ %vec.epilog.resume.val501, %vec.epilog.ph500 ], [ %index.next508, %vec.epilog.vector.body503 ] ; 5 uses
  %i.nm = getelementptr [4 x i8], ptr %i.mh, i64 %index504
  %wide.load505 = load <4 x float>, ptr %i.nm, align 4, !tbaa !83, !alias.scope !198
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %index504
  %wide.load506 = load <4 x float>, ptr %i.nn, align 4, !tbaa !83, !alias.scope !199
  %i.no = fsub reassoc nsz arcp contract afn <4 x float> %wide.load505, %wide.load506
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %index504
  %wide.load507 = load <4 x float>, ptr %i.np, align 4, !tbaa !83, !alias.scope !199
  %i.nq = fdiv reassoc nsz arcp contract afn <4 x float> %i.no, %wide.load507
  %i.nr = getelementptr [4 x i8], ptr %i.mi, i64 %index504
  store <4 x float> %i.nq, ptr %i.nr, align 4, !tbaa !83, !alias.scope !200, !noalias !201
  %index.next508 = add nuw i64 %index504, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next508, %n.vec502
  br i1 %i.ns, label %vec.epilog.middle.block509, label %vec.epilog.vector.body503, !llvm.loop !183

vec.epilog.middle.block509:                       ; preds = %vec.epilog.vector.body503
  br i1 %cmp.n510, label %._crit_edge295, label %vec.epilog.scalar.ph498.preheader

vec.epilog.scalar.ph498.preheader:                ; preds = %iter.check496, %vector.memcheck467, %vec.epilog.iter.check497, %vec.epilog.middle.block509
  %indvars.iv333.ph = phi i64 [ 0, %iter.check496 ], [ 0, %vector.memcheck467 ], [ %n.vec478, %vec.epilog.iter.check497 ], [ %n.vec502, %vec.epilog.middle.block509 ] ; 3 uses
  br i1 %lcmp.mod530.not, label %vec.epilog.scalar.ph498.prol.loopexit, label %vec.epilog.scalar.ph498.prol

vec.epilog.scalar.ph498.prol:                     ; preds = %vec.epilog.scalar.ph498.preheader, %vec.epilog.scalar.ph498.prol
  %indvars.iv333.prol = phi i64 [ %indvars.iv.next334.prol, %vec.epilog.scalar.ph498.prol ], [ %indvars.iv333.ph, %vec.epilog.scalar.ph498.preheader ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph498.prol ], [ 0, %vec.epilog.scalar.ph498.preheader ]
  %i.nt = getelementptr [4 x i8], ptr %i.mh, i64 %indvars.iv333.prol
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !83
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv333.prol
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !83
  %i.nx = fsub reassoc nsz arcp contract afn float %i.nu, %i.nw
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv333.prol
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !83
  %i.oa = fdiv reassoc nsz arcp contract afn float %i.nx, %i.nz
  %i.ob = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv333.prol
  store float %i.oa, ptr %i.ob, align 4, !tbaa !83
  %indvars.iv.next334.prol = add nuw nsw i64 %indvars.iv333.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter529
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph498.prol.loopexit, label %vec.epilog.scalar.ph498.prol, !llvm.loop !184

vec.epilog.scalar.ph498.prol.loopexit:            ; preds = %vec.epilog.scalar.ph498.prol, %vec.epilog.scalar.ph498.preheader
  %indvars.iv333.unr = phi i64 [ %indvars.iv333.ph, %vec.epilog.scalar.ph498.preheader ], [ %indvars.iv.next334.prol, %vec.epilog.scalar.ph498.prol ]
  %i.oc = sub nsw i64 %indvars.iv333.ph, %wide.trip.count336
  %i.od = icmp ugt i64 %i.oc, -4
  br i1 %i.od, label %._crit_edge295, label %vec.epilog.scalar.ph498

._crit_edge297:                                   ; preds = %._crit_edge295
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count346
  br i1 %exitcond347.not, label %.loopexit276, label %.preheader275

._crit_edge295:                                   ; preds = %vec.epilog.scalar.ph498.prol.loopexit, %vec.epilog.scalar.ph498, %vec.epilog.middle.block509, %middle.block494
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %wide.trip.count341
  br i1 %exitcond342.not, label %._crit_edge297, label %iter.check496

vec.epilog.scalar.ph498:                          ; preds = %vec.epilog.scalar.ph498.prol.loopexit, %vec.epilog.scalar.ph498
  %indvars.iv333 = phi i64 [ %indvars.iv.next334.3, %vec.epilog.scalar.ph498 ], [ %indvars.iv333.unr, %vec.epilog.scalar.ph498.prol.loopexit ] ; 8 uses
  %i.oe = getelementptr [4 x i8], ptr %i.mh, i64 %indvars.iv333
  %i.of = load float, ptr %i.oe, align 4, !tbaa !83
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv333
  %i.oh = load float, ptr %i.og, align 4, !tbaa !83
  %i.oi = fsub reassoc nsz arcp contract afn float %i.of, %i.oh
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv333
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !83
  %i.ol = fdiv reassoc nsz arcp contract afn float %i.oi, %i.ok
  %i.om = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv333
  store float %i.ol, ptr %i.om, align 4, !tbaa !83
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 4 uses
  %i.on = getelementptr [4 x i8], ptr %i.mh, i64 %indvars.iv.next334
  %i.oo = load float, ptr %i.on, align 4, !tbaa !83
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.next334
  %i.oq = load float, ptr %i.op, align 4, !tbaa !83
  %i.or = fsub reassoc nsz arcp contract afn float %i.oo, %i.oq
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next334
  %i.ot = load float, ptr %i.os, align 4, !tbaa !83
  %i.ou = fdiv reassoc nsz arcp contract afn float %i.or, %i.ot
  %i.ov = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv.next334
  store float %i.ou, ptr %i.ov, align 4, !tbaa !83
  %indvars.iv.next334.1 = add nuw nsw i64 %indvars.iv333, 2 ; 4 uses
  %i.ow = getelementptr [4 x i8], ptr %i.mh, i64 %indvars.iv.next334.1
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !83
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.next334.1
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !83
  %i.pa = fsub reassoc nsz arcp contract afn float %i.ox, %i.oz
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next334.1
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !83
  %i.pd = fdiv reassoc nsz arcp contract afn float %i.pa, %i.pc
  %i.pe = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv.next334.1
  store float %i.pd, ptr %i.pe, align 4, !tbaa !83
  %indvars.iv.next334.2 = add nuw nsw i64 %indvars.iv333, 3 ; 4 uses
  %i.pf = getelementptr [4 x i8], ptr %i.mh, i64 %indvars.iv.next334.2
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !83
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.next334.2
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !83
  %i.pj = fsub reassoc nsz arcp contract afn float %i.pg, %i.pi
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next334.2
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !83
  %i.pm = fdiv reassoc nsz arcp contract afn float %i.pj, %i.pl
  %i.pn = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv.next334.2
  store float %i.pm, ptr %i.pn, align 4, !tbaa !83
  %indvars.iv.next334.3 = add nuw nsw i64 %indvars.iv333, 4 ; 2 uses
  %exitcond337.not.3 = icmp eq i64 %indvars.iv.next334.3, %wide.trip.count336
  br i1 %exitcond337.not.3, label %._crit_edge295, label %vec.epilog.scalar.ph498, !llvm.loop !185

.loopexit276.sink.split:                          ; preds = %._crit_edge, %._crit_edge287, %.preheader280, %.preheader279.lr.ph, %.preheader278, %.preheader277.lr.ph
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !116
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 1608
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !203
  %i.ps = tail call i32 @dt_rawspeed_crop_dcraw_filters(i32 noundef %i.pr, i32 noundef %i.l, i32 noundef %i.s) #21
  %i.pt = load ptr, ptr %i.t, align 8, !tbaa !95  ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 184
  store i32 %i.ps, ptr %i.pu, align 8, !tbaa !108
  tail call fastcc void @_adjust_xtrans_filters(ptr noundef %i.pt, i32 noundef %i.l, i32 noundef %i.s)
  br label %.loopexit276

.loopexit276:                                     ; preds = %._crit_edge297, %.loopexit276.sink.split, %.preheader275.lr.ph, %bb.e
  %i.pv = load ptr, ptr %i.t, align 8, !tbaa !95  ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 184
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !108
  %.not254 = icmp eq i32 %i.px, 0
  br i1 %.not254, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.loopexit276
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.pz = load i32, ptr %i.py, align 16, !tbaa !186
  %i.qa = icmp eq i32 %i.pz, 1
  br i1 %i.qa, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.qb = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !133
  %.not255 = icmp eq i32 %i.qc, 0
  br i1 %.not255, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.qd = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !135 ; 5 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 36
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !14 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 40
  %i.qi = load <2 x double>, ptr %i.qh, align 8, !tbaa !136
  %i.qj = fdiv reassoc nsz arcp contract afn <2 x double> splat (double 1.000000e+00), %i.qi
  %i.qk = fptrunc <2 x double> %i.qj to <2 x float> ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qe, i64 56
  %i.qm = load <2 x double>, ptr %i.ql, align 8, !tbaa !136
  %i.qn = fptrunc <2 x double> %i.qm to <2 x float> ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !188 ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, 0
  br i1 %i.qq, label %.lr.ph311, label %.loopexit

.lr.ph311:                                        ; preds = %bb.h
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.qs = load <2 x i32>, ptr %i.qr, align 16, !tbaa !14
  %i.qt = sitofp <2 x i32> %i.qs to <2 x float>   ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !14 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !88 ; 2 uses
  %invariant.op312 = add i32 %i.qx, %i.s
  %i.qy = uitofp reassoc nsz arcp contract afn i32 %i.qv to float ; 2 uses
  %i.qz = add i32 %i.qv, -1                       ; 2 uses
  %i.ra = uitofp reassoc nsz arcp contract afn i32 %i.qz to float ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !189 ; 2 uses
  %i.rd = icmp sgt i32 %i.rc, 0
  %i.re = uitofp reassoc nsz arcp contract afn i32 %i.qg to float ; 2 uses
  %i.rf = add i32 %i.qg, -1                       ; 2 uses
  %i.rg = uitofp reassoc nsz arcp contract afn i32 %i.rf to float ; 2 uses
  %i.rh = zext i32 %i.rc to i64                   ; 2 uses
  %wide.trip.count360 = zext nneg i32 %i.qp to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !135
  %.phi.trans.insert366 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.pre367 = load ptr, ptr %.phi.trans.insert366, align 8, !tbaa !135
  %.phi.trans.insert368 = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.pre369 = load ptr, ptr %.phi.trans.insert368, align 8, !tbaa !135
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qe, i64 76 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.pre, i64 76 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %.pre367, i64 76 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %.pre369, i64 76 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.rr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.rs = extractelement <2 x float> %i.qt, i64 1
  %i.rt = extractelement <2 x float> %i.qk, i64 0
  %i.ru = extractelement <2 x float> %i.qn, i64 0
  %i.rv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.rs
  %i.rw = extractelement <2 x float> %i.qt, i64 0
  %i.rx = extractelement <2 x float> %i.qk, i64 1
  %i.ry = extractelement <2 x float> %i.qn, i64 1
  %i.rz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.rw
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph311, %._crit_edge304
  %indvars.iv357 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next358, %._crit_edge304 ] ; 3 uses
  %i.sa = trunc nuw nsw i64 %indvars.iv357 to i32 ; 2 uses
  %.reass313 = add i32 %invariant.op312, %i.sa
  %i.sb = sitofp reassoc nsz arcp contract afn i32 %.reass313 to float
  %i.sc = fmul reassoc nsz arcp contract afn float %i.sb, %i.rv
  %i.sd = fsub reassoc nsz arcp contract afn float %i.sc, %i.ru
  %i.se = fmul reassoc nsz arcp contract afn float %i.sd, %i.rt ; 3 uses
  %i.sf = fcmp reassoc nsz arcp contract afn ogt float %i.se, %i.qy
  %i.sg = fcmp reassoc nsz arcp contract afn olt float %i.se, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.sg, float 0.000000e+00, float %i.se
  %i.sh = select reassoc nsz arcp contract afn i1 %i.sf, float %i.qy, float %spec.select ; 3 uses
  %i.si = fcmp reassoc nsz arcp contract afn olt float %i.sh, %i.ra
  %i.sj = select reassoc nsz arcp contract afn i1 %i.si, float %i.sh, float %i.ra
  %i.sk = fptoui float %i.sj to i32               ; 3 uses
  %i.sl = add i32 %i.sk, 1
  %i.sm = tail call i32 @llvm.umin.i32(i32 %i.sl, i32 %i.qz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.sn = mul i32 %i.qg, %i.sk
  %i.so = zext i32 %i.sn to i64                   ; 4 uses
  %i.sp = mul i32 %i.sm, %i.qg
  %i.sq = zext i32 %i.sp to i64                   ; 4 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.so
  store ptr %i.sr, ptr %i.a, align 16, !tbaa !204
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.sq
  store ptr %i.ss, ptr %i.b, align 16, !tbaa !204
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.so
  store ptr %i.st, ptr %i.rk, align 8, !tbaa !204
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.sq
  store ptr %i.su, ptr %i.rl, align 8, !tbaa !204
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.so
  store ptr %i.sv, ptr %i.rn, align 16, !tbaa !204
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.sq
  store ptr %i.sw, ptr %i.ro, align 16, !tbaa !204
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.so
  store ptr %i.sx, ptr %i.rq, align 8, !tbaa !204
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.sq
  store ptr %i.sy, ptr %i.rr, align 8, !tbaa !204
  %i.sz = uitofp reassoc nsz arcp contract afn i32 %i.sk to float
  %i.ta = fsub reassoc nsz arcp contract afn float %i.sh, %i.sz
  br i1 %i.rd, label %.lr.ph, label %._crit_edge304

.lr.ph:                                           ; preds = %.preheader
  %.val262 = load i32, ptr %5, align 4, !tbaa !89 ; 2 uses
  %.val264 = load i32, ptr %i.d, align 8, !tbaa !93
  %.val265 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.tb = add i32 %i.qx, %i.sa
  %i.tc = add i32 %i.tb, %.val265
  %i.td = shl i32 %i.tc, 1
  %i.te = and i32 %i.td, 2
  %invariant.op305 = add i32 %.val262, %.val264
  %invariant.op307 = add i32 %.val262, %i.l
  %i.tf = mul nuw nsw i64 %indvars.iv357, %i.rh
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.tf
  br label %bb.i

._crit_edge304:                                   ; preds = %bb.i, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count360
  br i1 %exitcond361.not, label %.loopexit, label %.preheader

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv352 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next353, %bb.i ] ; 3 uses
  %i.th = trunc nuw nsw i64 %indvars.iv352 to i32 ; 2 uses
  %.reass306 = add i32 %invariant.op305, %i.th
  %i.ti = and i32 %.reass306, 1
  %i.tj = or disjoint i32 %i.te, %i.ti
  %.reass308 = add i32 %invariant.op307, %i.th
  %i.tk = sitofp reassoc nsz arcp contract afn i32 %.reass308 to float
  %i.tl = fmul reassoc nsz arcp contract afn float %i.tk, %i.rz
  %i.tm = fsub reassoc nsz arcp contract afn float %i.tl, %i.ry
  %i.tn = fmul reassoc nsz arcp contract afn float %i.tm, %i.rx ; 3 uses
  %i.to = fcmp reassoc nsz arcp contract afn ogt float %i.tn, %i.re
  %i.tp = fcmp reassoc nsz arcp contract afn olt float %i.tn, 0.000000e+00
  %spec.select258 = select reassoc nsz arcp contract afn i1 %i.tp, float 0.000000e+00, float %i.tn
  %i.tq = select reassoc nsz arcp contract afn i1 %i.to, float %i.re, float %spec.select258 ; 3 uses
  %i.tr = fcmp reassoc nsz arcp contract afn olt float %i.tq, %i.rg
  %i.ts = select reassoc nsz arcp contract afn i1 %i.tr, float %i.tq, float %i.rg
  %i.tt = fptoui float %i.ts to i32               ; 3 uses
  %i.tu = add i32 %i.tt, 1
  %i.tv = tail call i32 @llvm.umin.i32(i32 %i.tu, i32 %i.rf)
  %i.tw = uitofp reassoc nsz arcp contract afn i32 %i.tt to float
  %i.tx = fsub reassoc nsz arcp contract afn float %i.tq, %i.tw ; 3 uses
  %i.ty = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.tx ; 2 uses
  %i.tz = zext nneg i32 %i.tj to i64              ; 2 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.tz
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !204 ; 2 uses
  %i.uc = zext i32 %i.tt to i64                   ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.uc
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !83
  %i.uf = fmul reassoc nsz arcp contract afn float %i.ty, %i.ue
  %i.ug = zext i32 %i.tv to i64                   ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.ug
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !83
  %i.uj = fmul reassoc nsz arcp contract afn float %i.tx, %i.ui
  %i.uk = fadd reassoc nsz arcp contract afn float %i.uf, %i.uj ; 2 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.tz
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !204 ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.uc
  %i.uo = load float, ptr %i.un, align 4, !tbaa !83
  %i.up = fmul reassoc nsz arcp contract afn float %i.ty, %i.uo
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.ug
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !83
  %i.us = fmul reassoc nsz arcp contract afn float %i.tx, %i.ur
  %i.ut = fadd reassoc nsz arcp contract afn float %i.up, %i.us
  %i.uu = fsub reassoc nsz arcp contract afn float %i.ut, %i.uk
  %i.uv = fmul reassoc nsz arcp contract afn float %i.uu, %i.ta
  %i.uw = fadd reassoc nsz arcp contract afn float %i.uv, %i.uk
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv352 ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !83
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uw, %i.uy
  store float %i.uz, ptr %i.ux, align 4, !tbaa !83
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %exitcond356.not = icmp eq i64 %indvars.iv.next353, %i.rh
  br i1 %exitcond356.not, label %._crit_edge304, label %bb.i

.loopexit:                                        ; preds = %._crit_edge304, %bb.h, %bb.g, %bb.f, %.loopexit276
  %i.va = getelementptr inbounds nuw i8, ptr %i.pv, i64 656
  %i.vb = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.va) #21
  %.not256 = icmp eq i32 %i.vb, 0
  %.pre371 = load ptr, ptr %i.t, align 8, !tbaa !95 ; 2 uses
  br i1 %.not256, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.loopexit
  %i.vc = getelementptr inbounds nuw i8, ptr %.pre371, i64 656
  %i.vd = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.vc) #21
  %i.ve = icmp eq i32 %i.vd, 0
  %.pre372 = load ptr, ptr %i.t, align 8, !tbaa !95 ; 3 uses
  br i1 %i.ve, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.vf = getelementptr inbounds nuw i8, ptr %.pre372, i64 552
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !137
  %.not257 = icmp eq i32 %i.vg, 0
  br i1 %.not257, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.vh = tail call i32 @dt_dev_write_scharr_mask(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 0) #21 ; 0 uses
  %.pre370 = load ptr, ptr %i.t, align 8, !tbaa !95
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.l, %bb.k, %bb.j
  %i.vi = phi ptr [ %.pre371, %.loopexit ], [ %.pre370, %bb.l ], [ %.pre372, %bb.k ], [ %.pre372, %bb.j ]
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.vj, align 4, !tbaa !83
  ret void
}

declare i32 @dt_rawspeed_crop_dcraw_filters(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_adjust_xtrans_filters(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2156 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 188
end_hunk_1
begin_hunk_2_@_adjust_xtrans_filters:.preheader
  %gep = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep, i64 %i.i
  %i.l = load i8, ptr %gep, align 1, !tbaa !138
  store i8 %i.l, ptr %i.b, align 1, !tbaa !138
  %i.m = extractelement <8 x i32> %i.g, i64 2
  %i.n = zext nneg i32 %i.m to i64                ; 6 uses
  %gep.1 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep, i64 %i.n
  %i.o = load i8, ptr %gep.1, align 1, !tbaa !138
  store i8 %i.o, ptr %gep13.1, align 1, !tbaa !138
  %i.p = extractelement <8 x i32> %i.g, i64 3
  %i.q = zext nneg i32 %i.p to i64                ; 6 uses
  %gep.2 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep, i64 %i.q
  %i.r = load i8, ptr %gep.2, align 1, !tbaa !138
  store i8 %i.r, ptr %gep13.2, align 1, !tbaa !138
  %i.s = extractelement <8 x i32> %i.g, i64 4
  %i.t = zext nneg i32 %i.s to i64                ; 6 uses
  %gep.3 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep, i64 %i.t
  %i.u = load i8, ptr %gep.3, align 1, !tbaa !138
  store i8 %i.u, ptr %gep13.3, align 1, !tbaa !138
  %i.v = extractelement <8 x i32> %i.g, i64 5
  %i.w = zext nneg i32 %i.v to i64                ; 6 uses
  %gep.4 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep, i64 %i.w
  %i.x = load i8, ptr %gep.4, align 1, !tbaa !138
  store i8 %i.x, ptr %gep13.4, align 1, !tbaa !138
  %i.y = extractelement <8 x i32> %i.g, i64 6
  %i.z = zext nneg i32 %i.y to i64                ; 6 uses
  %gep.5 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep, i64 %i.z
  %i.aa = load i8, ptr %gep.5, align 1, !tbaa !138
  store i8 %i.aa, ptr %gep13.5, align 1, !tbaa !138
  %i.ab = extractelement <8 x i32> %i.g, i64 7
  %i.ac = zext nneg i32 %i.ab to i64
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac ; 6 uses
  %invariant.gep12.1 = getelementptr inbounds nuw i8, ptr %0, i64 189
  %gep.118 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.1, i64 %i.i
  %i.ad = load i8, ptr %gep.118, align 1, !tbaa !138
  store i8 %i.ad, ptr %invariant.gep12.1, align 1, !tbaa !138
  %gep.1.1 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.1, i64 %i.n
  %i.ae = load i8, ptr %gep.1.1, align 1, !tbaa !138
  %gep13.1.1 = getelementptr inbounds nuw i8, ptr %0, i64 195
  store i8 %i.ae, ptr %gep13.1.1, align 1, !tbaa !138
  %gep.2.1 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.1, i64 %i.q
  %i.af = load i8, ptr %gep.2.1, align 1, !tbaa !138
  %gep13.2.1 = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 %i.af, ptr %gep13.2.1, align 1, !tbaa !138
  %gep.3.1 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.1, i64 %i.t
  %i.ag = load i8, ptr %gep.3.1, align 1, !tbaa !138
  %gep13.3.1 = getelementptr inbounds nuw i8, ptr %0, i64 207
  store i8 %i.ag, ptr %gep13.3.1, align 1, !tbaa !138
  %gep.4.1 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.1, i64 %i.w
  %i.ah = load i8, ptr %gep.4.1, align 1, !tbaa !138
  %gep13.4.1 = getelementptr inbounds nuw i8, ptr %0, i64 213
  store i8 %i.ah, ptr %gep13.4.1, align 1, !tbaa !138
  %gep.5.1 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.1, i64 %i.z
  %i.ai = load i8, ptr %gep.5.1, align 1, !tbaa !138
  %gep13.5.1 = getelementptr inbounds nuw i8, ptr %0, i64 219
  store i8 %i.ai, ptr %gep13.5.1, align 1, !tbaa !138
  %i.aj = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.ak = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.al = add <4 x i32> %i.ak, <i32 2, i32 3, i32 4, i32 5>
  %invariant.gep12.2 = getelementptr inbounds nuw i8, ptr %0, i64 190
  %gep13.1.2 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %gep13.2.2 = getelementptr inbounds nuw i8, ptr %0, i64 202
  %gep13.3.2 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %gep13.4.2 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %gep13.5.2 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %invariant.gep12.3 = getelementptr inbounds nuw i8, ptr %0, i64 191
  %gep13.1.3 = getelementptr inbounds nuw i8, ptr %0, i64 197
  %gep13.2.3 = getelementptr inbounds nuw i8, ptr %0, i64 203
  %gep13.3.3 = getelementptr inbounds nuw i8, ptr %0, i64 209
  %gep13.4.3 = getelementptr inbounds nuw i8, ptr %0, i64 215
  %gep13.5.3 = getelementptr inbounds nuw i8, ptr %0, i64 221
  %invariant.gep12.4 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %gep13.1.4 = getelementptr inbounds nuw i8, ptr %0, i64 198
  %gep13.2.4 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %gep13.3.4 = getelementptr inbounds nuw i8, ptr %0, i64 210
  %gep13.4.4 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %gep13.5.4 = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.am = urem <4 x i32> %i.al, splat (i32 6)     ; 4 uses
  %i.an = extractelement <4 x i32> %i.am, i64 0
  %i.ao = zext nneg i32 %i.an to i64
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao ; 6 uses
  %gep.219 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.2, i64 %i.i
  %i.ap = load i8, ptr %gep.219, align 1, !tbaa !138
  store i8 %i.ap, ptr %invariant.gep12.2, align 1, !tbaa !138
  %gep.1.2 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.2, i64 %i.n
  %i.aq = load i8, ptr %gep.1.2, align 1, !tbaa !138
  store i8 %i.aq, ptr %gep13.1.2, align 1, !tbaa !138
  %gep.2.2 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.2, i64 %i.q
  %i.ar = load i8, ptr %gep.2.2, align 1, !tbaa !138
  store i8 %i.ar, ptr %gep13.2.2, align 1, !tbaa !138
  %gep.3.2 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.2, i64 %i.t
  %i.as = load i8, ptr %gep.3.2, align 1, !tbaa !138
  store i8 %i.as, ptr %gep13.3.2, align 1, !tbaa !138
  %gep.4.2 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.2, i64 %i.w
  %i.at = load i8, ptr %gep.4.2, align 1, !tbaa !138
  store i8 %i.at, ptr %gep13.4.2, align 1, !tbaa !138
  %gep.5.2 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.2, i64 %i.z
  %i.au = load i8, ptr %gep.5.2, align 1, !tbaa !138
  store i8 %i.au, ptr %gep13.5.2, align 1, !tbaa !138
  %i.av = extractelement <4 x i32> %i.am, i64 1
  %i.aw = zext nneg i32 %i.av to i64
  %invariant.gep.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw ; 6 uses
  %gep.320 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.3, i64 %i.i
  %i.ax = load i8, ptr %gep.320, align 1, !tbaa !138
  store i8 %i.ax, ptr %invariant.gep12.3, align 1, !tbaa !138
  %gep.1.3 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.3, i64 %i.n
  %i.ay = load i8, ptr %gep.1.3, align 1, !tbaa !138
  store i8 %i.ay, ptr %gep13.1.3, align 1, !tbaa !138
  %gep.2.3 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.3, i64 %i.q
  %i.az = load i8, ptr %gep.2.3, align 1, !tbaa !138
  store i8 %i.az, ptr %gep13.2.3, align 1, !tbaa !138
  %gep.3.3 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.3, i64 %i.t
  %i.ba = load i8, ptr %gep.3.3, align 1, !tbaa !138
  store i8 %i.ba, ptr %gep13.3.3, align 1, !tbaa !138
  %gep.4.3 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.3, i64 %i.w
  %i.bb = load i8, ptr %gep.4.3, align 1, !tbaa !138
  store i8 %i.bb, ptr %gep13.4.3, align 1, !tbaa !138
  %gep.5.3 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.3, i64 %i.z
  %i.bc = load i8, ptr %gep.5.3, align 1, !tbaa !138
  store i8 %i.bc, ptr %gep13.5.3, align 1, !tbaa !138
  %i.bd = extractelement <4 x i32> %i.am, i64 2
  %i.be = zext nneg i32 %i.bd to i64
  %invariant.gep.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be ; 6 uses
  %gep.421 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.4, i64 %i.i
  %i.bf = load i8, ptr %gep.421, align 1, !tbaa !138
  store i8 %i.bf, ptr %invariant.gep12.4, align 1, !tbaa !138
  %gep.1.4 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.4, i64 %i.n
  %i.bg = load i8, ptr %gep.1.4, align 1, !tbaa !138
  store i8 %i.bg, ptr %gep13.1.4, align 1, !tbaa !138
  %gep.2.4 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.4, i64 %i.q
  %i.bh = load i8, ptr %gep.2.4, align 1, !tbaa !138
  store i8 %i.bh, ptr %gep13.2.4, align 1, !tbaa !138
  %gep.3.4 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.4, i64 %i.t
  %i.bi = load i8, ptr %gep.3.4, align 1, !tbaa !138
  store i8 %i.bi, ptr %gep13.3.4, align 1, !tbaa !138
  %gep.4.4 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.4, i64 %i.w
  %i.bj = load i8, ptr %gep.4.4, align 1, !tbaa !138
  store i8 %i.bj, ptr %gep13.4.4, align 1, !tbaa !138
  %gep.5.4 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.4, i64 %i.z
  %i.bk = load i8, ptr %gep.5.4, align 1, !tbaa !138
  store i8 %i.bk, ptr %gep13.5.4, align 1, !tbaa !138
  %i.bl = extractelement <4 x i32> %i.am, i64 3
  %i.bm = zext nneg i32 %i.bl to i64
  %invariant.gep.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm ; 6 uses
  %invariant.gep12.5 = getelementptr inbounds nuw i8, ptr %0, i64 193
  %gep.522 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.5, i64 %i.i
  %i.bn = load i8, ptr %gep.522, align 1, !tbaa !138
  store i8 %i.bn, ptr %invariant.gep12.5, align 1, !tbaa !138
  %gep.1.5 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.5, i64 %i.n
  %i.bo = load i8, ptr %gep.1.5, align 1, !tbaa !138
  %gep13.1.5 = getelementptr inbounds nuw i8, ptr %0, i64 199
  store i8 %i.bo, ptr %gep13.1.5, align 1, !tbaa !138
  %gep.2.5 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.5, i64 %i.q
  %i.bp = load i8, ptr %gep.2.5, align 1, !tbaa !138
  %gep13.2.5 = getelementptr inbounds nuw i8, ptr %0, i64 205
  store i8 %i.bp, ptr %gep13.2.5, align 1, !tbaa !138
  %gep.3.5 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.5, i64 %i.t
  %i.bq = load i8, ptr %gep.3.5, align 1, !tbaa !138
  %gep13.3.5 = getelementptr inbounds nuw i8, ptr %0, i64 211
  store i8 %i.bq, ptr %gep13.3.5, align 1, !tbaa !138
  %gep.4.5 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.5, i64 %i.w
  %i.br = load i8, ptr %gep.4.5, align 1, !tbaa !138
  %gep13.4.5 = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 %i.br, ptr %gep13.4.5, align 1, !tbaa !138
  %gep.5.5 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.5, i64 %i.z
  %i.bs = load i8, ptr %gep.5.5, align 1, !tbaa !138
  %gep13.5.5 = getelementptr inbounds nuw i8, ptr %0, i64 223
  store i8 %i.bs, ptr %gep13.5.5, align 1, !tbaa !138
  ret void
}

declare i32 @dt_image_is_mono_sraw(ptr noundef) local_unnamed_addr #2

declare i32 @dt_dev_write_scharr_mask(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80  ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load <4 x i32>, ptr %1, align 4, !tbaa !14 ; 5 uses
  store <4 x i32> %i.f, ptr %i.b, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load i32, ptr %i.i, align 8, !tbaa !108
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit.loopexit, label %.loopexit.loopexit85

.loopexit.loopexit85:                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i16, ptr %i.k, align 4, !tbaa !65   ; 2 uses
  %i.m = uitofp reassoc nsz arcp contract afn i16 %i.l to float ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load <4 x i16>, ptr %i.n, align 4, !tbaa !91
  %i.s = uitofp <4 x i16> %i.r to <4 x float>     ; 5 uses
  %i.t = insertelement <2 x float> poison, float %i.m, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.w = fsub reassoc nsz arcp contract afn <2 x float> %i.u, %i.v
  store <2 x float> %i.w, ptr %i.p, align 8, !tbaa !83
  %i.x = extractelement <4 x float> %i.s, i64 2
  %i.y = fsub reassoc nsz arcp contract afn float %i.m, %i.x
  store float %i.y, ptr %i.q, align 8, !tbaa !83
  store <4 x float> %i.s, ptr %i.o, align 8, !tbaa !83
  %i.z = extractelement <4 x float> %i.s, i64 3
  %i.aa = fsub reassoc nsz arcp contract afn float %i.m, %i.z
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 2084
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !205
  %i.ad = and i32 %i.ac, 128
  %.not66 = icmp eq i32 %i.ad, 0
  %i.ae = select reassoc nsz arcp contract afn i1 %.not66, float 6.553500e+04, float 1.000000e+00 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !65 ; 2 uses
  %i.ah = uitofp reassoc nsz arcp contract afn i16 %i.ag to float
  %i.ai = fdiv reassoc nsz arcp contract afn float %i.ah, %i.ae ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.an = load <4 x i16>, ptr %i.aj, align 4, !tbaa !91
  %i.ao = uitofp <4 x i16> %i.an to <4 x float>   ; 2 uses
  %i.ap = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ar = fdiv reassoc nsz arcp contract afn <4 x float> %i.ao, %i.aq ; 4 uses
  %i.as = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.av = fsub reassoc nsz arcp contract afn <2 x float> %i.at, %i.au
  store <2 x float> %i.av, ptr %i.al, align 8, !tbaa !83
  %i.aw = extractelement <4 x float> %i.ar, i64 2
  %i.ax = fsub reassoc nsz arcp contract afn float %i.ai, %i.aw
  store float %i.ax, ptr %i.am, align 8, !tbaa !83
  store <4 x float> %i.ar, ptr %i.ak, align 8, !tbaa !83
  %i.ay = extractelement <4 x float> %i.ar, i64 3
  %i.az = fsub reassoc nsz arcp contract afn float %i.ai, %i.ay
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit85, %.loopexit.loopexit
  %.sink96 = phi float [ %i.aa, %.loopexit.loopexit85 ], [ %i.az, %.loopexit.loopexit ]
  %i.ba = phi i16 [ %i.l, %.loopexit.loopexit85 ], [ %i.ag, %.loopexit.loopexit ]
  %i.bb = phi <4 x float> [ %i.s, %.loopexit.loopexit85 ], [ %i.ao, %.loopexit.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %.sink96, ptr %i.bc, align 4, !tbaa !83
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bb)
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 2.500000e-01
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.be)
  %i.bg = fptoui float %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i16 %i.bg, ptr %i.bh, align 8, !tbaa !206
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i16 %i.ba, ptr %i.bi, align 2, !tbaa !207
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !139
  %i.bl = icmp eq i32 %i.bk, 1
  %i.bm = extractelement <4 x i32> %i.f, i64 0
  %i.bn = extractelement <4 x i32> %i.f, i64 1
  %i.bo = extractelement <4 x i32> %i.f, i64 2
  %i.bp = extractelement <4 x i32> %i.f, i64 3
  br i1 %i.bl, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.br = getelementptr i8, ptr %0, i64 664
  %.val = load ptr, ptr %i.br, align 8, !tbaa !116
  %i.bs = tail call fastcc i32 @_check_gain_maps(ptr %.val, ptr noundef nonnull %i.bq)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !93
  %.pre89 = load i32, ptr %i.d, align 8, !tbaa !208
  %.pre90 = load i32, ptr %i.c, align 4, !tbaa !94
  %.pre91 = load i32, ptr %i.e, align 4, !tbaa !209
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.bt = phi i32 [ %.pre91, %bb.b ], [ %i.bp, %.loopexit ] ; 5 uses
  %i.bu = phi i32 [ %.pre90, %bb.b ], [ %i.bn, %.loopexit ] ; 5 uses
  %i.bv = phi i32 [ %.pre89, %bb.b ], [ %i.bo, %.loopexit ] ; 4 uses
  %i.bw = phi i32 [ %.pre, %bb.b ], [ %i.bm, %.loopexit ] ; 4 uses
  %.sink = phi i32 [ %i.bs, %bb.b ], [ 0, %.loopexit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %.sink, ptr %i.bx, align 4, !tbaa !133
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 2096
  %i.bz = load i32, ptr %i.by, align 16, !tbaa !210
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !116 ; 10 uses
  %i.cc = or i32 %i.bv, %i.bw
  %i.cd = or i32 %i.cc, %i.bu
  %i.ce = or i32 %i.cd, %i.bt
  %or.cond5.i = icmp sgt i32 %i.ce, -1
  br i1 %or.cond5.i, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 1492
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !140
  %.pre57.i = add i32 %i.bv, %i.bw
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cf = add i32 %i.bv, %i.bw                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1492
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !140 ; 3 uses
  %i.ci = sdiv i32 %i.ch, 2
  %i.cj = icmp slt i32 %i.cf, %i.ci
  br i1 %i.cj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ck = add nuw nsw i32 %i.bt, %i.bu
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 1496
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !141
  %i.cn = sdiv i32 %i.cm, 2
  %i.co = icmp slt i32 %i.ck, %i.cn
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre57.i, %._crit_edge.i ], [ %i.cf, %bb.e ], [ %i.cf, %bb.d ] ; 2 uses
  %i.cp = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ch, %bb.e ], [ %i.ch, %bb.d ] ; 2 uses
  %i.cq = phi i1 [ false, %._crit_edge.i ], [ %i.co, %bb.e ], [ false, %bb.d ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 1508 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !211
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 1492
  %i.cu = sub i32 %i.cp, %.pre-phi.i
  %i.cv = icmp eq i32 %i.cs, %i.cu
  br i1 %i.cv, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 1512
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !212
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 1496
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !141
  %i.da = add i32 %i.bt, %i.bu
  %i.db = sub i32 %i.cz, %i.da
  %i.dc = icmp eq i32 %i.cx, %i.db
  %i.dd = select i1 %i.dc, i1 %i.cq, i1 false
  br i1 %i.dd, label %_image_set_rawcrops.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  br i1 %i.cq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 1496
  %i.df = load i32, ptr %i.de, align 8, !tbaa !141
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.42, i32 noundef %i.bw, i32 noundef %i.bv, i32 noundef %i.bu, i32 noundef %i.bt, i32 noundef %i.cp, i32 noundef %i.df) #21
  %i.dg = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #21
  %i.dh = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #21
  tail call void @dt_iop_set_module_trouble_message(ptr noundef nonnull %0, ptr noundef %i.dg, ptr noundef %i.dh, ptr noundef nonnull @.str.43) #21
  br label %bb.j

bb.i:                                             ; preds = %.critedge.i
  tail call void @dt_iop_set_module_trouble_message(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.di = phi i32 [ %.pre-phi.i, %bb.i ], [ 0, %bb.h ]
  %i.dj = tail call ptr @dt_image_cache_get(i32 noundef %i.bz, i8 noundef signext 119) #21 ; 3 uses
  %i.dk = load i32, ptr %i.ct, align 4, !tbaa !140
  %i.dl = sub nsw i32 %i.dk, %i.di                ; 2 uses
  store i32 %i.dl, ptr %i.cr, align 4, !tbaa !211
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 1396
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !211
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cb, i64 1496
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !141
  %i.dp = add nsw i32 %i.bt, %i.bu
  %i.dq = select i1 %i.cq, i32 %i.dp, i32 0
  %i.dr = sub nsw i32 %i.do, %i.dq                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cb, i64 1512
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !212
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 1400
  store i32 %i.dr, ptr %i.dt, align 8, !tbaa !212
  tail call void @dt_image_cache_write_release(ptr noundef %i.dj, i32 noundef 1) #21
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !213
  %i.dv = trunc i32 %i.du to i1
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3488), align 8
  %i.dx = icmp ne i32 %i.dw, 0
  %or.cond = select i1 %i.dv, i1 %i.dx, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !214
  %i.dz = and i32 %i.dy, 1048576
  %.not68 = icmp eq i32 %i.dz, 0
  br i1 %.not68, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 732, ptr noundef nonnull @__FUNCTION__.commit_params) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !215
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ea, i32 noundef 43) #21
  br label %_image_set_rawcrops.exit.thread

_image_set_rawcrops.exit.thread:                  ; preds = %bb.g, %bb.m
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 656
  %i.ed = tail call i32 @dt_image_is_rawprepare_supported(ptr noundef nonnull %i.ec) #21
  %.not69 = icmp eq i32 %i.ed, 0
  %.pre92.pre = load ptr, ptr %i.g, align 8, !tbaa !95 ; 5 uses
  br i1 %.not69, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_image_set_rawcrops.exit.thread
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre92.pre, i64 2084
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !142
  %i.eg = and i32 %i.ef, 128
  %.not.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i, label %bb.o, label %.split

.split:                                           ; preds = %bb.n
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre92.pre, i64 2404
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !143
  switch i32 %i.ei, label %_image_is_normalized.exit.thread [
    i32 1065353216, label %bb.p
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre92.pre, i64 2144
  %i.ek = load i32, ptr %i.ej, align 16, !tbaa !144
  %i.el = icmp eq i32 %i.ek, 1
  br i1 %i.el, label %_image_is_normalized.exit, label %_image_is_normalized.exit.thread

_image_is_normalized.exit:                        ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %.pre92.pre, i64 2148
  %i.en = load i32, ptr %i.em, align 4, !tbaa !145
end_hunk_2
begin_hunk_3_@cleanup_global
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !147
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !148 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1540
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150  ; 2 uses
  %i.i = and i32 %i.h, 557056                     ; 2 uses
  %.not54 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %.not54, label %.loopexit41, label %.loopexit41.thread

.loopexit41.thread:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load <4 x i16>, ptr %i.j, align 2, !tbaa !91
  %i.l = zext <4 x i16> %i.k to <4 x i32>
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.l)
  %op.rdx = add nuw nsw i32 %i.m, 2
  %i.n = lshr i32 %op.rdx, 2
  %i.o = uitofp nsz nneg i32 %i.n to float        ; 4 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.p, float noundef %i.o) #21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.r, float noundef %i.o) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.o) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.v, float noundef %i.o) #21
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !116
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 1540
  %.pre52 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !150
  %i.w = and i32 %.pre52, 131072
  br label %.loopexit

.loopexit41:                                      ; preds = %bb.a
  %i.x = and i32 %i.h, 131072                     ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit41
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !91
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ac, float noundef 0.000000e+00) #21
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !91
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !151
  %i.ai = load i16, ptr %i.z, align 4, !tbaa !91
  %i.aj = uitofp reassoc nsz arcp contract afn i16 %i.ai to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.aj) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !91
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !151
  %i.ap = load i16, ptr %i.z, align 4, !tbaa !91
  %i.aq = uitofp reassoc nsz arcp contract afn i16 %i.ap to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ao, float noundef %i.aq) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !91
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !151
  %i.aw = load i16, ptr %i.z, align 4, !tbaa !91
  %i.ax = uitofp reassoc nsz arcp contract afn i16 %i.aw to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.av, float noundef %i.ax) #21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h, %.loopexit41.thread, %.loopexit41
  %i.ay = phi i32 [ %i.w, %.loopexit41.thread ], [ %i.x, %.loopexit41 ], [ 1, %bb.h ], [ 1, %bb.g ]
  %i.az = zext i1 %.not54 to i32                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !151
  tail call void @gtk_widget_set_visible(ptr noundef %i.bb, i32 noundef %i.az) #21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !151
  tail call void @gtk_widget_set_visible(ptr noundef %i.bd, i32 noundef %i.az) #21
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !151
  %i.bg = or disjoint i32 %i.ay, %i.i
  %.not = icmp eq i32 %i.bg, 0
  %i.bh = zext i1 %.not to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.bf, i32 noundef %i.bh) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !153
  %.val = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.bk = tail call fastcc i32 @_check_gain_maps(ptr %.val, ptr noundef null)
  tail call void @gtk_widget_set_visible(ptr noundef %i.bj, i32 noundef %i.bk) #21
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !153
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !139
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.bl, i32 noundef %i.bn) #21
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #2

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !148 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1540
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150  ; 2 uses
  %i.i = and i32 %i.h, 557056
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %.loopexit.thread, label %.thread

.loopexit.thread:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i16, ptr %i.l, align 4, !tbaa !91
  %i.n = uitofp i16 %i.m to float                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.p, float noundef %i.n) #21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.r, float noundef %i.n) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.n) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.a
  %i.u = and i32 %i.h, 131072
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.x = icmp eq ptr %1, %i.w
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !151
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !151
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = load <2 x i16>, ptr %i.ae, align 4, !tbaa !91
  %i.ag = uitofp <2 x i16> %i.af to <2 x float>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !91
  %i.aj = uitofp reassoc nsz arcp contract afn i16 %i.ai to float
  %i.ak = tail call reassoc nnan nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.aj, <2 x float> %i.ag)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151
  %i.an = fmul reassoc nnan nsz arcp contract afn float %i.ak, f0x3EAAAAAB
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.an)
  %i.ap = fptoui float %i.ao to i16
  %i.aq = uitofp reassoc nsz arcp contract afn i16 %i.ap to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.am, float noundef %i.aq) #21
  br label %.thread

.thread:                                          ; preds = %.loopexit.thread, %bb.b, %bb.e, %bb.f, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 2 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 80) #21 ; 15 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.c, ptr %i.d, align 16, !tbaa !148
  %i.e = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #21
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !13
  %i.f = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.8, i32 noundef 886, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 5 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !146
  %i.h = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i32 noundef 0) #21 ; 2 uses
  %i.i = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef %i.h) #21 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !151
  %i.j = load ptr, ptr @black_label, align 16, !tbaa !224
  %i.k = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.i, ptr noundef null, ptr noundef %i.j) #21 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.m = load ptr, ptr @black_label, align 16, !tbaa !224
  %i.n = call ptr @dcgettext(ptr noundef null, ptr noundef %i.m, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.l, ptr noundef %i.n) #21
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.o, float noundef 1.638400e+04) #21
  call void @g_free(ptr noundef %i.h) #21
  %i.p = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i32 noundef 1) #21 ; 2 uses
  %i.q = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef %i.p) #21 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !151
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 8), align 8, !tbaa !224
  %i.t = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.q, ptr noundef null, ptr noundef %i.s) #21 ; 0 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !151
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 8), align 8, !tbaa !224
  %i.w = call ptr @dcgettext(ptr noundef null, ptr noundef %i.v, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.u, ptr noundef %i.w) #21
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.x, float noundef 1.638400e+04) #21
  call void @g_free(ptr noundef %i.p) #21
  %i.y = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i32 noundef 2) #21 ; 2 uses
  %i.z = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef %i.y) #21 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !151
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 16), align 16, !tbaa !224
  %i.ac = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.z, ptr noundef null, ptr noundef %i.ab) #21 ; 0 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !151
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 16), align 16, !tbaa !224
  %i.af = call ptr @dcgettext(ptr noundef null, ptr noundef %i.ae, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ad, ptr noundef %i.af) #21
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.ag, float noundef 1.638400e+04) #21
  call void @g_free(ptr noundef %i.y) #21
  %i.ah = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i32 noundef 3) #21 ; 2 uses
  %i.ai = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef %i.ah) #21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !151
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 24), align 8, !tbaa !224
  %i.al = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ai, ptr noundef null, ptr noundef %i.ak) #21 ; 0 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !151
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 24), align 8, !tbaa !224
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef %i.an, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.am, ptr noundef %i.ao) #21
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.ap, float noundef 1.638400e+04) #21
  call void @g_free(ptr noundef %i.ah) #21
  %i.aq = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.21) #21 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !225
  %i.as = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aq, ptr noundef %i.as) #21
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !225
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.at, float noundef 1.638400e+04) #21
  %i.au = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.23) #21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.au, ptr %i.av, align 8, !tbaa !153
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.aw) #21
  %i.ax = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.25) #21
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_iop_gui_alloc.exit
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.az = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.26, i64 noundef 8) #21
  %i.ba = call ptr @gtk_label_new(ptr noundef %i.az) #21 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.ba, i32 noundef 0) #21
  call void @gtk_label_set_xalign(ptr noundef %i.ba, float noundef 5.000000e-01) #21
  call void @gtk_label_set_ellipsize(ptr noundef %i.ba, i32 noundef 3) #21
  call void @dt_gui_add_class(ptr noundef %i.ba, ptr noundef nonnull @.str.45) #21
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bb, align 8, !tbaa !13
  %i.bc = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.8, i32 noundef 911, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ay, ptr noundef nonnull %i.b) #21 ; 0 uses
  %i.bd = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #21 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !226
  %i.bf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bd, ptr noundef %i.bf) #21
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !226
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.bg, float noundef 2.560000e+02) #21
  %i.bh = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #21 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !227
  %i.bj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bh, ptr noundef %i.bj) #21
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !227
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.bk, float noundef 2.560000e+02) #21
  %i.bl = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #21 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !228
  %i.bn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bl, ptr noundef %i.bn) #21
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !228
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.bo, float noundef 2.560000e+02) #21
  %i.bp = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #21 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !229
  %i.br = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bp, ptr noundef %i.br) #21
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !229
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.bs, float noundef 2.560000e+02) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_iop_gui_alloc.exit
  %i.bt = call ptr @gtk_stack_new() #21           ; 2 uses
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !146
  call void @gtk_stack_set_homogeneous(ptr noundef %i.bt, i32 noundef 0) #21
  %i.bu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #21
  %i.bv = call ptr @gtk_label_new(ptr noundef %i.bu) #21 ; 2 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.bv, ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef nonnull @.str.47, double noundef 0.000000e+00, ptr noundef nonnull @.str.48, i32 noundef 3, ptr noundef null) #21
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !146
  call void @gtk_stack_add_named(ptr noundef %i.bw, ptr noundef %i.bv, ptr noundef nonnull @.str.10) #21
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !146
  call void @gtk_stack_add_named(ptr noundef %i.bx, ptr noundef %i.f, ptr noundef nonnull @.str.9) #21
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_stack_new() local_unnamed_addr #2

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_3
