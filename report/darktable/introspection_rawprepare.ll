Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawprepare?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0
@.str.6 = private unnamed_addr constant [40 x i8] c"[signal] raise %s; %s:%d, function %s()\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DT_SIGNAL_METADATA_UPDATE\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/darktable/darktable/src/iop/rawprepare.c\00", align 1
@__FUNCTION__.commit_params = private unnamed_addr constant [14 x i8] c"commit_params\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"non_raw\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"black level 0\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"black level 1\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"black level 2\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"black level 3\00", align 1
@black_label = hidden local_unnamed_addr global [4 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 16
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"raw_black_level_separate[%i]\00", align 1
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
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !14
  %.fr = freeze <2 x i32> %i.c                    ; 2 uses
  %.fr.scalar = bitcast <2 x i32> %.fr to i64
  %or.cond = icmp eq i64 %.fr.scalar, 0
  br i1 %or.cond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load float, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load float, ptr %i.f, align 8, !tbaa !82
  %i.h = fdiv reassoc nsz arcp contract afn float %i.e, %i.g
  %i.i = sitofp reassoc nsz arcp contract afn <2 x i32> %.fr to <2 x float>
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul reassoc nsz arcp contract afn <2 x float> %i.k, %i.i ; 5 uses
  %i.m = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.n = add i64 %i.m, -2                         ; 3 uses
  %i.o = lshr exact i64 %i.n, 1
  %i.p = add nuw i64 %i.o, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i64 %i.n, 30
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, -16                      ; 4 uses
  %i.r = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.l, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat23 = shufflevector <2 x float> %i.l, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl nuw i64 %index, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.t, align 4, !tbaa !83 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec24 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec25 = load <16 x float>, ptr %i.v, align 4, !tbaa !83 ; 2 uses
  %strided.vec26 = shufflevector <16 x float> %wide.vec25, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec27 = shufflevector <16 x float> %wide.vec25, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.w = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec26, %broadcast.splat
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec24, %broadcast.splat23
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec27, %broadcast.splat23
  %interleaved.vec = shufflevector <8 x float> %i.w, <8 x float> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.t, align 4, !tbaa !83
  %interleaved.vec28 = shufflevector <8 x float> %i.x, <8 x float> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec28, ptr %i.v, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.p, -4                     ; 3 uses
  %i.ab = shl i64 %n.vec29, 1
  %broadcast.splat31 = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat33 = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index34, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec35 = load <8 x float>, ptr %i.ac, align 4, !tbaa !83 ; 2 uses
  %strided.vec36 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ad = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec36, %broadcast.splat31
  %i.ae = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec37, %broadcast.splat33
  %interleaved.vec38 = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec38, ptr %i.ac, align 4, !tbaa !83
  %index.next39 = add nuw i64 %index34, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next39, %n.vec29
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.p, %n.vec29
  br i1 %cmp.n40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.ph = phi i64 [ 0, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.019 = phi i64 [ %i.aj, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !83
  %i.ai = fsub reassoc nsz arcp contract afn <2 x float> %i.ah, %i.l
  store <2 x float> %i.ai, ptr %i.ag, align 4, !tbaa !83
  %i.aj = add nuw i64 %.019, 2                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.m
  br i1 %i.ak, label %.lr.ph, label %.loopexit, !llvm.loop !160

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a, %._crit_edge
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @distort_backtransform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !14
  %.fr = freeze <2 x i32> %i.c                    ; 2 uses
  %.fr.scalar = bitcast <2 x i32> %.fr to i64
  %or.cond = icmp eq i64 %.fr.scalar, 0
  br i1 %or.cond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load float, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load float, ptr %i.f, align 8, !tbaa !82
  %i.h = fdiv reassoc nsz arcp contract afn float %i.e, %i.g
  %i.i = sitofp reassoc nsz arcp contract afn <2 x i32> %.fr to <2 x float>
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul reassoc nsz arcp contract afn <2 x float> %i.k, %i.i ; 5 uses
  %i.m = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.n = add i64 %i.m, -2                         ; 3 uses
  %i.o = lshr exact i64 %i.n, 1
  %i.p = add nuw i64 %i.o, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i64 %i.n, 30
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, -16                      ; 4 uses
  %i.r = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.l, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat23 = shufflevector <2 x float> %i.l, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl nuw i64 %index, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.t, align 4, !tbaa !83 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec24 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec25 = load <16 x float>, ptr %i.v, align 4, !tbaa !83 ; 2 uses
  %strided.vec26 = shufflevector <16 x float> %wide.vec25, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec27 = shufflevector <16 x float> %wide.vec25, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.w = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec26, %broadcast.splat
  %i.y = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec24, %broadcast.splat23
  %i.z = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec27, %broadcast.splat23
  %interleaved.vec = shufflevector <8 x float> %i.w, <8 x float> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.t, align 4, !tbaa !83
  %interleaved.vec28 = shufflevector <8 x float> %i.x, <8 x float> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec28, ptr %i.v, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.p, -4                     ; 3 uses
  %i.ab = shl i64 %n.vec29, 1
  %broadcast.splat31 = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat33 = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index34, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec35 = load <8 x float>, ptr %i.ac, align 4, !tbaa !83 ; 2 uses
  %strided.vec36 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ad = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec36, %broadcast.splat31
  %i.ae = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec37, %broadcast.splat33
  %interleaved.vec38 = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec38, ptr %i.ac, align 4, !tbaa !83
  %index.next39 = add nuw i64 %index34, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next39, %n.vec29
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.p, %n.vec29
  br i1 %cmp.n40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.ph = phi i64 [ 0, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.019 = phi i64 [ %i.aj, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !83
  %i.ai = fadd reassoc nsz arcp contract afn <2 x float> %i.ah, %i.l
  store <2 x float> %i.ai, ptr %i.ag, align 4, !tbaa !83
  %i.aj = add nuw i64 %.019, 2                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.m
  br i1 %i.ak, label %.lr.ph, label %.loopexit, !llvm.loop !163

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
  %i.n = sitofp reassoc nsz arcp contract afn <2 x i32> %i.m to <2 x float>
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
  %i.m = sitofp reassoc nsz arcp contract afn <2 x i32> %i.l to <2 x float>
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
end_hunk_0
