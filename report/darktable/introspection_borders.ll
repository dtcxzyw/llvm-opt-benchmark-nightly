Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_borders?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.80 = private unnamed_addr constant [8 x i8] c"shorter\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"DT_IOP_BORDERS_BASIS_LONGER\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"longer\00", align 1
@introspection_init.f19 = internal global [15 x ptr] [ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr getelementptr (i8, ptr @introspection_linear, i64 616), ptr getelementptr (i8, ptr @introspection_linear, i64 792), ptr getelementptr (i8, ptr @introspection_linear, i64 880), ptr getelementptr (i8, ptr @introspection_linear, i64 1056), ptr getelementptr (i8, ptr @introspection_linear, i64 1144), ptr getelementptr (i8, ptr @introspection_linear, i64 1232), ptr getelementptr (i8, ptr @introspection_linear, i64 1408), ptr getelementptr (i8, ptr @introspection_linear, i64 1496), ptr getelementptr (i8, ptr @introspection_linear, i64 1584), ptr null], align 16
@.str.83 = private unnamed_addr constant [9 x i8] c"color[0]\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"aspect_text[0]\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"aspect_text\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"pos_h_text[0]\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"pos_h_text\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"pos_v_text[0]\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"pos_v_text\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"frame_color[0]\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"frame_color\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"max_border_size\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"float[]\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"aspect ratio\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"char[]\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"dt_iop_orientation_t\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"border size\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"horizontal offset\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"vertical offset\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"frame line size\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"frame line offset\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"dt_iop_basis_t\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"dt_iop_borders_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.83, ptr @.str.83, ptr @.str.60, i64 4, i64 0, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.95, ptr @.str.84, ptr @.str.84, ptr @.str.60, i64 12, i64 0, ptr null }, i64 3, i32 2, [4 x i8] zeroinitializer, ptr @introspection_linear } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.35, ptr @.str.35, ptr @.str.96, i64 4, i64 12, ptr null }, float 1.000000e+00, float 3.000000e+00, float -1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.97, ptr @.str.85, ptr @.str.85, ptr @.str.98, i64 1, i64 16, ptr null }, i8 -128, i8 127, i8 0, [5 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.99, ptr @.str.86, ptr @.str.86, ptr @.str.98, i64 20, i64 16, ptr null }, i64 20, i32 5, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 264) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.100, ptr @.str.39, ptr @.str.39, ptr @.str.101, i64 4, i64 36, ptr null }, i64 3, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.11, ptr @.str.11, ptr @.str.102, i64 4, i64 40, ptr null }, float 0.000000e+00, float 5.000000e-01, float 1.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.49, ptr @.str.49, ptr @.str.103, i64 4, i64 44, ptr null }, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.97, ptr @.str.87, ptr @.str.87, ptr @.str.98, i64 1, i64 48, ptr null }, i8 -128, i8 127, i8 0, [5 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.99, ptr @.str.88, ptr @.str.88, ptr @.str.98, i64 20, i64 48, ptr null }, i64 20, i32 5, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 704) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.54, ptr @.str.54, ptr @.str.104, i64 4, i64 68, ptr null }, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i8, i8, i8, [5 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.97, ptr @.str.89, ptr @.str.89, ptr @.str.98, i64 1, i64 72, ptr null }, i8 -128, i8 127, i8 0, [5 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.99, ptr @.str.90, ptr @.str.90, ptr @.str.98, i64 20, i64 72, ptr null }, i64 20, i32 5, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 968) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.56, ptr @.str.56, ptr @.str.105, i64 4, i64 92, ptr null }, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.58, ptr @.str.58, ptr @.str.106, i64 4, i64 96, ptr null }, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.91, ptr @.str.91, ptr @.str.65, i64 4, i64 100, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.95, ptr @.str.92, ptr @.str.92, ptr @.str.65, i64 12, i64 100, ptr null }, i64 3, i32 2, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 1320) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.107, ptr @.str.93, ptr @.str.93, ptr @.str.98, i64 4, i64 112, ptr null }, i32 1, [4 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.108, ptr @.str.9, ptr @.str.9, ptr @.str.9, i64 4, i64 116, ptr null }, i64 5, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.109, ptr @.str.98, ptr @.str.98, ptr @.str.98, i64 120, i64 0, ptr null }, i64 14, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  switch i32 %2, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(116) ptr @calloc(i64 noundef 1, i64 noundef 116) #21 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.a, ptr noundef nonnull align 4 dereferenceable(116) @__const.legacy_params.default_v3, i64 112, i1 false), !tbaa.struct !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !123 ; 4 uses
  %i.d = fcmp reassoc nsz arcp contract afn olt float %i.c, 1.000000e+00
  %i.e = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.c
  %i.f = select reassoc nsz arcp contract afn i1 %i.d, float %i.e, float %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.f, ptr %i.g, align 4, !tbaa !125
  %i.h = fcmp reassoc nsz arcp contract afn ogt float %i.c, 1.000000e+00
  %i.i = select i1 %i.h, i32 2, i32 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.i, ptr %i.j, align 4, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !127
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float %i.m, ptr %i.n, align 4, !tbaa !128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 0, ptr %i.o, align 4, !tbaa !129
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noalias dereferenceable_or_null(116) ptr @calloc(i64 noundef 1, i64 noundef 116) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.p, ptr noundef nonnull align 4 dereferenceable(112) %1, i64 112, i1 false)
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #21 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.q, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !131
  %i.t = fcmp reassoc nsz arcp contract afn oeq float %i.s, -1.000000e+00
  br i1 %i.t, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.v = load i32, ptr %i.u, align 4, !tbaa !132
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 116
  store i32 1, ptr %i.w, align 4, !tbaa !133
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.sink42 = phi ptr [ %i.a, %bb.b ], [ %i.p, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.f ]
  %.sink41 = phi i32 [ 116, %bb.b ], [ 116, %bb.c ], [ 120, %bb.d ], [ 120, %bb.e ], [ 120, %bb.f ]
  %.sink = phi i32 [ 3, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 4, %bb.e ], [ 4, %bb.f ]
  store ptr %.sink42, ptr %3, align 8, !tbaa !16
  store i32 %.sink41, ptr %4, align 4, !tbaa !14
  store i32 %.sink, ptr %5, align 4, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @aliases() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #22
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #22
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #22
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 163920
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define noundef i32 @distort_transform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load float, ptr %i.e, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !36
  %i.i = load <2 x i32>, ptr %i.c, align 4, !tbaa !14
  %i.j = load <2 x i32>, ptr %i.d, align 16, !tbaa !14
  %i.k = sub nsw <2 x i32> %i.i, %i.j
  %i.l = sitofp reassoc nsz arcp contract afn <2 x i32> %i.k to <2 x float>
  %i.m = insertelement <2 x float> poison, float %i.h, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.f, i64 1
  %i.o = fmul reassoc nsz arcp contract afn <2 x float> %i.n, %i.l
  %i.p = fptosi <2 x float> %i.o to <2 x i32>     ; 2 uses
  %i.q = icmp eq <2 x i32> %i.p, zeroinitializer  ; 2 uses
  %i.r = extractelement <2 x i1> %i.q, i64 0
  %i.s = extractelement <2 x i1> %i.q, i64 1
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.t = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.u = sitofp reassoc nsz arcp contract afn <2 x i32> %i.p to <2 x float> ; 5 uses
  %i.v = add i64 %i.t, -2                         ; 3 uses
  %i.w = lshr exact i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.v, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.v, 30
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.x, 12
  %n.vec = and i64 %i.x, -16                      ; 4 uses
  %i.z = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.u, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat26 = shufflevector <2 x float> %i.u, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl nuw i64 %index, 1                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.ab, align 64, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec27 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec28 = load <16 x float>, ptr %i.ad, align 64, !tbaa !13 ; 2 uses
  %strided.vec29 = shufflevector <16 x float> %wide.vec28, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec30 = shufflevector <16 x float> %wide.vec28, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.af = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec29, %broadcast.splat
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec27, %broadcast.splat26
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec30, %broadcast.splat26
  %interleaved.vec = shufflevector <8 x float> %i.ae, <8 x float> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ab, align 64, !tbaa !13
  %interleaved.vec31 = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec31, ptr %i.ad, align 64, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.x, -4                     ; 3 uses
  %i.aj = shl i64 %n.vec32, 1
  %broadcast.splat34 = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index37, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec38 = load <8 x float>, ptr %i.ak, align 32, !tbaa !13 ; 2 uses
  %strided.vec39 = shufflevector <8 x float> %wide.vec38, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x float> %wide.vec38, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.al = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec39, %broadcast.splat34
  %i.am = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec40, %broadcast.splat36
  %interleaved.vec41 = shufflevector <4 x float> %i.al, <4 x float> %i.am, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec41, ptr %i.ak, align 32, !tbaa !13
  %index.next42 = add nuw i64 %index37, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next42, %n.vec32
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.x, %n.vec32
  br i1 %cmp.n43, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i64 [ 0, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023 = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.023.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.023 ; 2 uses
  %i.ap = load <2 x float>, ptr %i.ao, align 8, !tbaa !13
  %i.aq = fadd reassoc nsz arcp contract afn <2 x float> %i.ap, %i.u
  store <2 x float> %i.aq, ptr %i.ao, align 8, !tbaa !13
  %i.ar = add nuw i64 %.023, 2                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.t
  br i1 %i.as, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !136

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define noundef i32 @distort_backtransform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load float, ptr %i.e, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !36
  %i.i = load <2 x i32>, ptr %i.c, align 4, !tbaa !14
  %i.j = load <2 x i32>, ptr %i.d, align 16, !tbaa !14
  %i.k = sub nsw <2 x i32> %i.i, %i.j
  %i.l = sitofp reassoc nsz arcp contract afn <2 x i32> %i.k to <2 x float>
  %i.m = insertelement <2 x float> poison, float %i.h, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.f, i64 1
  %i.o = fmul reassoc nsz arcp contract afn <2 x float> %i.n, %i.l
  %i.p = fptosi <2 x float> %i.o to <2 x i32>     ; 2 uses
  %i.q = icmp eq <2 x i32> %i.p, zeroinitializer  ; 2 uses
  %i.r = extractelement <2 x i1> %i.q, i64 0
  %i.s = extractelement <2 x i1> %i.q, i64 1
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.t = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.u = sitofp reassoc nsz arcp contract afn <2 x i32> %i.p to <2 x float> ; 5 uses
  %i.v = add i64 %i.t, -2                         ; 3 uses
  %i.w = lshr exact i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.v, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.v, 30
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.x, 12
  %n.vec = and i64 %i.x, -16                      ; 4 uses
  %i.z = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.u, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat26 = shufflevector <2 x float> %i.u, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl nuw i64 %index, 1                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.ab, align 64, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec27 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec28 = load <16 x float>, ptr %i.ad, align 64, !tbaa !13 ; 2 uses
  %strided.vec29 = shufflevector <16 x float> %wide.vec28, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec30 = shufflevector <16 x float> %wide.vec28, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ae = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.af = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec29, %broadcast.splat
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec27, %broadcast.splat26
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec30, %broadcast.splat26
  %interleaved.vec = shufflevector <8 x float> %i.ae, <8 x float> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ab, align 64, !tbaa !13
  %interleaved.vec31 = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec31, ptr %i.ad, align 64, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.x, -4                     ; 3 uses
  %i.aj = shl i64 %n.vec32, 1
  %broadcast.splat34 = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index37, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec38 = load <8 x float>, ptr %i.ak, align 32, !tbaa !13 ; 2 uses
  %strided.vec39 = shufflevector <8 x float> %wide.vec38, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x float> %wide.vec38, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.al = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec39, %broadcast.splat34
  %i.am = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec40, %broadcast.splat36
  %interleaved.vec41 = shufflevector <4 x float> %i.al, <4 x float> %i.am, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec41, ptr %i.ak, align 32, !tbaa !13
  %index.next42 = add nuw i64 %index37, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next42, %n.vec32
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.x, %n.vec32
  br i1 %cmp.n43, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i64 [ 0, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023 = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.023.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.023 ; 2 uses
  %i.ap = load <2 x float>, ptr %i.ao, align 8, !tbaa !13
  %i.aq = fsub reassoc nsz arcp contract afn <2 x float> %i.ap, %i.u
  store <2 x float> %i.aq, ptr %i.ao, align 8, !tbaa !13
  %i.ar = add nuw i64 %.023, 2                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.t
  br i1 %i.as, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !139

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.dt_iop_border_positions_t, align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.f = load float, ptr %i.e, align 4, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.i = load float, ptr %i.h, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = load float, ptr %i.j, align 4, !tbaa !41
  call void @dt_iop_setup_binfo(ptr noundef %1, ptr noundef %4, ptr noundef %5, float noundef %i.d, float noundef %i.f, ptr noundef %i.b, ptr noundef nonnull %i.g, float noundef %i.i, float noundef %i.k, ptr noundef nonnull %6) #22
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.m = load i32, ptr %i.l, align 4, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.o = load i32, ptr %i.n, align 16, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = sext i32 %i.t to i64
  call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef %i.r, i64 noundef %i.u, i64 noundef 1) #22
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.y = sext i32 %i.m to i64
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = sext i32 %i.o to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ab = add nsw i64 %indvars.iv, %i.aa
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !42
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ab, %i.ad
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ae
  %i.af = load i32, ptr %i.z, align 4, !tbaa !42
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = mul nsw i64 %indvars.iv, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.aj = shl nsw i64 %i.ag, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gep, ptr align 4 %i.ai, i64 %i.aj, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !43
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge
}

declare void @dt_iop_setup_binfo(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !44
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load float, ptr %i.c, align 4, !tbaa !143
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !45 ; 3 uses
  %i.h = fcmp reassoc nsz arcp contract afn oeq float %i.g, -1.000000e+00 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !144  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = select i1 %i.h, i32 4, i32 1
  %spec.select = select i1 %i.k, i32 %i.l, i32 %i.j ; 2 uses
  switch i32 %spec.select, label %bb.d [
    i32 4, label %bb.b
    i32 3, label %bb.c
    i32 1, label %.thread
    i32 2, label %.thread139
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %.thread, label %.thread139

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = icmp slt i32 %i.s, %i.u
  br i1 %i.v, label %.thread, label %.thread139

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.d

.thread139:                                       ; preds = %bb.a, %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread139, %.thread
  %.2121 = phi i32 [ 1, %.thread ], [ 2, %.thread139 ], [ %spec.select, %bb.a ] ; 4 uses
  %.0116 = phi ptr [ %i.w, %.thread ], [ %i.aa, %.thread139 ], [ null, %bb.a ] ; 5 uses
  %.0115 = phi ptr [ %i.y, %.thread ], [ %i.ac, %.thread139 ], [ null, %bb.a ]
  %.0112 = phi ptr [ %i.x, %.thread ], [ %i.ab, %.thread139 ], [ null, %bb.a ] ; 3 uses
  %.0110 = phi ptr [ %i.z, %.thread ], [ %i.ad, %.thread139 ], [ null, %bb.a ] ; 3 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %.0116, align 4, !tbaa !14
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to float
  %i.ag = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.e
  %i.ah = fdiv reassoc nsz arcp contract afn float %i.af, %i.ag
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ah)
  %i.aj = fptosi float %i.ai to i32               ; 2 uses
  store i32 %i.aj, ptr %.0112, align 4, !tbaa !14
  %i.ak = load i32, ptr %.0115, align 4, !tbaa !14
  %i.al = load i32, ptr %.0116, align 4, !tbaa !14
  %i.am = sub i32 %i.ak, %i.al
  %i.an = add i32 %i.am, %i.aj
  store i32 %i.an, ptr %.0110, align 4, !tbaa !14
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.aq = load <2 x i32>, ptr %i.ao, align 4, !tbaa !14
  %i.ar = sitofp reassoc nsz arcp contract afn <2 x i32> %i.aq to <2 x float> ; 2 uses
  %shift = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %i.ar, %shift
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 8 uses
  %i.at = fcmp reassoc nsz arcp contract afn oeq float %i.g, 0.000000e+00
  %. = select reassoc nsz arcp contract afn i1 %i.at, float %i.as, float %i.g ; 11 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !145
  switch i32 %i.av, label %bb.l [
    i32 0, label %bb.g
    i32 2, label %bb.j
    i32 1, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.aw = fcmp reassoc nsz arcp contract afn olt float %i.as, 1.000000e+00
  %i.ax = fcmp reassoc nsz arcp contract afn ogt float %., 1.000000e+00
  %or.cond = and i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.as, 1.000000e+00
  %i.az = fcmp reassoc nsz arcp contract afn olt float %., 1.000000e+00
  %or.cond3 = and i1 %i.ay, %i.az
  br i1 %or.cond3, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %., 1.000000e+00
  %i.bc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.
  %i.bd = select reassoc nsz arcp contract afn i1 %i.bb, float %i.bc, float %.
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.be = fcmp reassoc nsz arcp contract afn ogt float %., 1.000000e+00
  %i.bf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.
  %i.bg = select reassoc nsz arcp contract afn i1 %i.be, float %i.bf, float %.
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.j, %bb.k
  %.0 = phi nsz float [ %., %bb.f ], [ %i.bd, %bb.j ], [ %i.bg, %bb.k ], [ %i.ba, %bb.i ], [ %., %bb.h ] ; 7 uses
  %i.bh = load i32, ptr %.0116, align 4, !tbaa !14
  %i.bi = sitofp reassoc nsz arcp contract afn i32 %i.bh to float
  %i.bj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.e
  %i.bk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bj
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, -1.000000e+00
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %i.bi
  %i.bn = icmp eq i32 %.2121, 1
  %i.bo = fcmp reassoc nsz arcp contract afn olt float %i.as, 1.000000e+00
  %or.cond5 = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond5, label %.thread151, label %bb.m

.thread151:                                       ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.br = icmp eq i32 %.2121, 2
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.as, 1.000000e+00
  %or.cond7 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond7, label %.thread173, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = icmp eq i32 %.2121, 1
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.as, %.0
  %or.cond131 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond131, label %bb.o, label %bb.p

.thread173:                                       ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.as, %.0
  br i1 %i.bx, label %bb.o, label %.thread183

bb.o:                                             ; preds = %.thread173, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ca = icmp eq i32 %.2121, 2
  br i1 %i.ca, label %bb.q, label %.thread183

bb.q:                                             ; preds = %.thread151, %bb.p
  %.1117148158 = phi ptr [ %i.ap, %.thread151 ], [ %.0116, %bb.p ]
  %.1113149157 = phi ptr [ %i.bp, %.thread151 ], [ %.0112, %bb.p ]
  %.1111150156 = phi ptr [ %i.bq, %.thread151 ], [ %.0110, %bb.p ]
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %i.as, %.0
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %.thread183

bb.s:                                             ; preds = %bb.o, %bb.q
  %.2118.ph = phi ptr [ %.1117148158, %bb.q ], [ %i.ap, %bb.o ]
  %.2114.ph = phi ptr [ %.1113149157, %bb.q ], [ %i.by, %bb.o ]
  %.2.ph = phi ptr [ %.1111150156, %bb.q ], [ %i.bz, %bb.o ]
  %i.ce = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0
  br label %.thread183

.thread183:                                       ; preds = %.thread173, %bb.r, %bb.p, %bb.s
  %.2169 = phi ptr [ %.2.ph, %bb.s ], [ %.0110, %bb.p ], [ %i.cd, %bb.r ], [ %i.bw, %.thread173 ]
  %.2114167 = phi ptr [ %.2114.ph, %bb.s ], [ %.0112, %bb.p ], [ %i.cc, %bb.r ], [ %i.bv, %.thread173 ]
  %.2118165 = phi ptr [ %.2118.ph, %bb.s ], [ %.0116, %bb.p ], [ %i.ao, %bb.r ], [ %i.ao, %.thread173 ]
  %i.cf = phi float [ %i.ce, %bb.s ], [ %.0, %bb.p ], [ %.0, %bb.r ], [ %.0, %.thread173 ]
  %i.cg = load i32, ptr %.2118165, align 4, !tbaa !14
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.cg to float
  %i.ci = fadd reassoc nsz arcp contract afn float %i.bm, %i.ch
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ci)
  %i.ck = fptosi float %i.cj to i32               ; 2 uses
  store i32 %i.ck, ptr %.2114167, align 4, !tbaa !14
  %i.cl = sitofp reassoc nsz arcp contract afn i32 %i.ck to float
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cl, %i.cf
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cm)
  %i.co = fptosi float %i.cn to i32
  store i32 %i.co, ptr %.2169, align 4, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %.thread183, %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !43
  %.133 = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 %i.cs)
  %i.ct = sext i32 %.133 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cv = mul nsw i64 %i.ct, 3                    ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = load <2 x i32>, ptr %i.cu, align 4, !tbaa !14 ; 2 uses
  %i.cy = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cz = shufflevector <2 x i64> %i.cy, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.da = sext <2 x i32> %i.cx to <2 x i64>
  %i.db = icmp ult <2 x i64> %i.cz, %i.da
  %i.dc = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cx, <2 x i32> splat (i32 1))
  %i.dd = insertelement <2 x i32> poison, i32 %i.cw, i64 0
  %i.de = shufflevector <2 x i32> %i.dd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.df = select <2 x i1> %i.db, <2 x i32> %i.de, <2 x i32> %i.dc
  store <2 x i32> %i.df, ptr %i.cu, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.j = load float, ptr %i.i, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = load <2 x i32>, ptr %i.c, align 4, !tbaa !14
  %i.m = load <2 x i32>, ptr %i.d, align 16, !tbaa !14
  %i.n = sub nsw <2 x i32> %i.l, %i.m
  %i.o = sitofp reassoc nsz arcp contract afn <2 x i32> %i.n to <2 x float>
  %i.p = insertelement <2 x float> poison, float %i.f, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn <2 x float> %i.q, %i.o
  %i.s = load <2 x i32>, ptr %2, align 4, !tbaa !14
  %i.t = sitofp reassoc nsz arcp contract afn <2 x i32> %i.s to <2 x float>
  %i.u = insertelement <2 x float> poison, float %i.h, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.j, i64 1
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.r, %i.v ; 2 uses
  %i.x = fsub reassoc nsz arcp contract afn <2 x float> %i.t, %i.w
  %i.y = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.x) ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.y, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x float> %i.y, <2 x float> zeroinitializer
  %i.ab = fptosi <2 x float> %i.aa to <2 x i32>   ; 2 uses
  store <2 x i32> %i.ab, ptr %3, align 4, !tbaa !14
  %i.ac = load <2 x i32>, ptr %2, align 4, !tbaa !14
  %i.ad = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ac to <2 x float>
  %i.ae = fsub reassoc nsz arcp contract afn <2 x float> %i.w, %i.ad
  %i.af = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.ae) ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.af, zeroinitializer
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> zeroinitializer
  %i.ai = load <2 x i32>, ptr %i.k, align 4, !tbaa !14
  %i.aj = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ai to <2 x float>
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ah
  %i.al = fptosi <2 x float> %i.ak to <2 x i32>   ; 3 uses
  store <2 x i32> %i.al, ptr %i.k, align 4, !tbaa !14
  %i.am = load <2 x i32>, ptr %i.d, align 16, !tbaa !14
  %i.an = sitofp reassoc nsz arcp contract afn <2 x i32> %i.am to <2 x float>
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.q, %i.an ; 3 uses
  %i.ap = add nsw <2 x i32> %i.al, %i.ab
  %i.aq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ap to <2 x float>
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> %i.aq, %i.ao
  %i.as = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.ar) ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.as, zeroinitializer
  %i.au = select <2 x i1> %i.at, <2 x float> %i.as, <2 x float> zeroinitializer
  %i.av = sitofp reassoc nsz arcp contract afn <2 x i32> %i.al to <2 x float>
  %i.aw = fsub reassoc nsz arcp contract afn <2 x float> %i.av, %i.au
  %i.ax = fptosi <2 x float> %i.aw to <2 x i32>
  %i.ay = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ax, <2 x i32> splat (i32 1))
  %i.az = uitofp nneg <2 x i32> %i.ay to <2 x float> ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ao, %i.az
  %i.bb = select <2 x i1> %i.ba, <2 x float> %i.ao, <2 x float> %i.az
  %i.bc = fptosi <2 x float> %i.bb to <2 x i32>
  store <2 x i32> %i.bc, ptr %i.k, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.dt_iop_border_positions_t, align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.f = load float, ptr %i.e, align 4, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.i = load float, ptr %i.h, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = load float, ptr %i.j, align 4, !tbaa !41
  call void @dt_iop_setup_binfo(ptr noundef %1, ptr noundef %4, ptr noundef %5, float noundef %i.d, float noundef %i.f, ptr noundef %i.b, ptr noundef nonnull %i.g, float noundef %i.i, float noundef %i.k, ptr noundef nonnull %6) #22
  call void @dt_iop_copy_image_with_border(ptr noundef %3, ptr noundef %2, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

declare void @dt_iop_copy_image_with_border(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !51
  store i32 -999, ptr %i.a, align 4, !tbaa !148
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.b) #22
  store ptr null, ptr %i.a, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.b, ptr noundef nonnull align 4 dereferenceable(120) %1, i64 120, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33
  tail call void @free(ptr noundef %i.b) #22
  store ptr null, ptr %i.a, align 16, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.dt_iop_borders_params_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 4 dereferenceable(120) @__const.init_presets.p, i64 120, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = tail call i32 (...) %i.c() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef %i.d, ptr noundef nonnull %1, i32 noundef 120, i32 noundef 1, i32 noundef 0) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !13
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !13
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 4, !tbaa !13
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.i = call i32 (...) %i.h() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i32 noundef %i.i, ptr noundef nonnull %1, i32 noundef 120, i32 noundef 1, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 9 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.g = load float, ptr %i.f, align 16, !tbaa !13 ; 5 uses
  %i.h = fsub reassoc nsz arcp contract afn float %i.e, %i.g
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp reassoc nsz arcp contract afn olt float %i.i, f0x38D1B717
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  %i.o = fsub reassoc nsz arcp contract afn float %i.l, %i.n
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.o)
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.p, f0x38D1B717
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.u = load float, ptr %i.t, align 8, !tbaa !13
  %i.v = fsub reassoc nsz arcp contract afn float %i.s, %i.u
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.v)
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, f0x38D1B717
  br i1 %i.x, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 100 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !13
  %i.aa = fsub reassoc nsz arcp contract afn float %i.z, %i.g
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aa)
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.ab, f0x38D1B717
  br i1 %i.ac, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 516
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !13
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ag = load float, ptr %i.af, align 4, !tbaa !13 ; 3 uses
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ae, %i.ag
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ah)
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %i.ai, f0x38D1B717
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.an = load float, ptr %i.am, align 8, !tbaa !13
  %i.ao = fsub reassoc nsz arcp contract afn float %i.al, %i.an
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ao)
  %i.aq = fcmp reassoc nsz arcp contract afn olt float %i.ap, f0x38D1B717
  br i1 %i.aq, label %bb.l, label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.e
  %i.ar = phi float [ %.pre, %._crit_edge ], [ %i.ag, %bb.f ], [ %i.ag, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.as = insertelement <2 x float> poison, float %i.g, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ar, i64 1
  %i.au = fpext reassoc nsz arcp contract afn <2 x float> %i.at to <2 x double>
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 516
  store <2 x double> %i.au, ptr %3, align 16, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !13
  %i.az = fpext reassoc nsz arcp contract afn float %i.ay to double
  store double %i.az, ptr %i.aw, align 16, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double 1.000000e+00, ptr %i.ba, align 8, !tbaa !68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !70
  %i.bd = icmp eq ptr %1, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.g, ptr %i.y, align 4, !tbaa !13
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !71
  %i.bg = icmp eq ptr %1, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.g, ptr %i.d, align 4, !tbaa !13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.j
  %.sink42 = phi i64 [ 4, %bb.j ], [ 104, %bb.h ]
  %.sink39 = phi i64 [ 8, %bb.j ], [ 108, %bb.h ]
  %.sink = phi i64 [ 72, %bb.j ], [ 104, %bb.h ]
  %i.bh = load float, ptr %i.av, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink42
  store float %i.bh, ptr %i.bi, align 4, !tbaa !13
  %i.bj = load float, ptr %i.ax, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink39
  store float %i.bj, ptr %i.bk, align 4, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !72
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.bm, ptr noundef nonnull %3) #22
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !111
  call void @dt_dev_add_history_item(ptr noundef %i.bn, ptr noundef nonnull %0, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.c, %bb.k
  ret void
}

declare void @gtk_color_chooser_set_rgba(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 3 uses
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !45 ; 20 uses
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp reassoc nsz arcp contract afn olt float %i.j, f0x3C23D70A
  br i1 %i.k, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fadd reassoc nsz arcp contract afn float %i.i, -3.000000e+00
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.l)
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, f0x3C23D70A
  br i1 %i.n, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = fadd reassoc nsz arcp contract afn float %i.i, f0xC0383E10
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.o)
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.p, f0x3C23D70A
  br i1 %i.q, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fadd reassoc nsz arcp contract afn float %i.i, -2.390000e+00
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.r)
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, f0x3C23D70A
  br i1 %i.t, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = fadd reassoc nsz arcp contract afn float %i.i, -2.000000e+00
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.u)
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.v, f0x3C23D70A
  br i1 %i.w, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = fadd reassoc nsz arcp contract afn float %i.i, f0xBFE38E39
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.x)
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.y, f0x3C23D70A
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = fadd reassoc nsz arcp contract afn float %i.i, f0xBFD55555
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aa)
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.ab, f0x3C23D70A
  br i1 %i.ac, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = fadd reassoc nsz arcp contract afn float %i.i, f0xBFD2D2D3
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ad)
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.ae, f0x3C23D70A
  br i1 %i.af, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = fadd reassoc nsz arcp contract afn float %i.i, f0xBFCF1BBD
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ag)
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.ah, f0x3C23D70A
  br i1 %i.ai, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = fadd reassoc nsz arcp contract afn float %i.i, -1.600000e+00
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aj)
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ak, f0x3C23D70A
  br i1 %i.al, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = fadd reassoc nsz arcp contract afn float %i.i, -1.500000e+00
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.am)
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.an, f0x3C23D70A
  br i1 %i.ao, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = fadd reassoc nsz arcp contract afn float %i.i, f0xBFB50750
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ap)
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.aq, f0x3C23D70A
  br i1 %i.ar, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = fadd reassoc nsz arcp contract afn float %i.i, f0xBFB504F3
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.as)
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.at, f0x3C23D70A
  br i1 %i.au, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = fadd reassoc nsz arcp contract afn float %i.i, -1.400000e+00
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.av)
  %i.ax = fcmp reassoc nsz arcp contract afn olt float %i.aw, f0x3C23D70A
  br i1 %i.ax, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = fadd reassoc nsz arcp contract afn float %i.i, f0xBFAAAAAB
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp reassoc nsz arcp contract afn olt float %i.az, f0x3C23D70A
  br i1 %i.ba, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = fadd reassoc nsz arcp contract afn float %i.i, f0xBFA5A5A6
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bb)
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, f0x3C23D70A
  br i1 %i.bd, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = fadd reassoc nsz arcp contract afn float %i.i, f0xBFA2E8BA
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.be)
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %i.bf, f0x3C23D70A
  br i1 %i.bg, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = fadd reassoc nsz arcp contract afn float %i.i, -1.250000e+00
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bh)
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bi, f0x3C23D70A
  br i1 %i.bj, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = fadd reassoc nsz arcp contract afn float %i.i, -1.000000e+00
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bl, f0x3C23D70A
  br i1 %i.bm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = fadd reassoc nsz arcp contract afn float %i.i, 1.000000e+00
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bn)
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, f0x3C23D70A
  %spec.select = select i1 %i.bp, i32 19, i32 20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.lcssa = phi i32 [ 10, %bb.m ], [ 0, %bb.c ], [ 1, %bb.d ], [ %spec.select, %bb.v ], [ 2, %bb.e ], [ 13, %bb.p ], [ 3, %bb.f ], [ 18, %bb.u ], [ 4, %bb.g ], [ 11, %bb.n ], [ 5, %bb.h ], [ 17, %bb.t ], [ 6, %bb.i ], [ 14, %bb.q ], [ 7, %bb.j ], [ 16, %bb.s ], [ 8, %bb.k ], [ 12, %bb.o ], [ 9, %bb.l ], [ 15, %bb.r ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !113
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.br, i32 noundef %.0.lcssa) #22
  br i1 %.not, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.b, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !114
  %i.bu = icmp eq ptr %1, %i.bt
  br i1 %i.bu, label %bb.x, label %.thread34

bb.x:                                             ; preds = %.thread, %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !36 ; 5 uses
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, -5.000000e-01
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bx)
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %i.by, f0x3C23D70A
  br i1 %i.bz, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bw, f0xBEAAAAAB
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ca)
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.cb, f0x3C23D70A
  br i1 %i.cc, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bw, -3.750000e-01
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cd)
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.ce, f0x3C23D70A
  br i1 %i.cf, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = fadd reassoc nsz arcp contract afn float %i.bw, -6.250000e-01
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cg)
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ch, f0x3C23D70A
  br i1 %i.ci, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = fadd reassoc nsz arcp contract afn float %i.bw, f0xBF2AAAAB
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cj)
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.ck, f0x3C23D70A
  %spec.select41 = select i1 %i.cl, i32 4, i32 5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.1.lcssa = phi i32 [ 3, %bb.aa ], [ 0, %bb.x ], [ 1, %bb.y ], [ %spec.select41, %bb.ab ], [ 2, %bb.z ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !115
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.cn, i32 noundef %.1.lcssa) #22
  br i1 %.not, label %bb.ad, label %.thread34

.thread34:                                        ; preds = %.thread, %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !116
  %i.cq = icmp eq ptr %1, %i.cp
  br i1 %i.cq, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %.thread34, %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !35 ; 5 uses
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, -5.000000e-01
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ct)
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cu, f0x3C23D70A
  br i1 %i.cv, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cs, f0xBEAAAAAB
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cw)
  %i.cy = fcmp reassoc nsz arcp contract afn olt float %i.cx, f0x3C23D70A
  br i1 %i.cy, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cs, -3.750000e-01
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cz)
  %i.db = fcmp reassoc nsz arcp contract afn olt float %i.da, f0x3C23D70A
  br i1 %i.db, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = fadd reassoc nsz arcp contract afn float %i.cs, -6.250000e-01
  %i.dd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dc)
  %i.de = fcmp reassoc nsz arcp contract afn olt float %i.dd, f0x3C23D70A
  br i1 %i.de, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = fadd reassoc nsz arcp contract afn float %i.cs, f0xBF2AAAAB
  %i.dg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.df)
  %i.dh = fcmp reassoc nsz arcp contract afn olt float %i.dg, f0x3C23D70A
  %spec.select42 = select i1 %i.dh, i32 4, i32 5
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.2.lcssa = phi i32 [ 0, %bb.ad ], [ 3, %bb.ag ], [ 1, %bb.ae ], [ %spec.select42, %bb.ah ], [ 2, %bb.af ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !117
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.dj, i32 noundef %.2.lcssa) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread34
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %2 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 4 uses
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr poison)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !13
  %i.f = fpext reassoc nsz arcp contract afn <2 x float> %i.e to <2 x double>
  store <2 x double> %i.f, ptr %1, align 16, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !13
  %i.j = fpext reassoc nsz arcp contract afn float %i.i to double
  store double %i.j, ptr %i.g, align 16, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !118
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.m, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !13
  %i.p = fpext reassoc nsz arcp contract afn <2 x float> %i.o to <2 x double>
  store <2 x double> %i.p, ptr %2, align 16, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.s = load float, ptr %i.r, align 4, !tbaa !13
  %i.t = fpext reassoc nsz arcp contract afn float %i.s to double
  store double %i.t, ptr %i.q, align 16, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.w, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %1 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %2 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.d = alloca [2 x ptr], align 8                ; 3 uses
  %i.e = alloca [4 x ptr], align 8                ; 4 uses
  %i.f = alloca [2 x ptr], align 8                ; 3 uses
  %i.g = alloca [4 x ptr], align 8                ; 4 uses
  %i.h = tail call ptr @dt_alloc_aligned(i64 noundef 120) #22 ; 18 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.h, i8 0, i64 120, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.h, ptr %i.i, align 16, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !150 ; 4 uses
  %i.n = tail call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.9) #22 ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !151
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.n, ptr noundef %i.o) #22
  %i.p = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.11) #22 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !152
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.p, i32 noundef 4) #22
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !152
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.r, ptr noundef nonnull @.str.12) #22
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !152
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.s, ptr noundef %i.t) #22
  %i.u = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #22
  %i.v = tail call ptr @dt_bauhaus_combobox_new_full(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef %i.u, i32 noundef 0, ptr noundef nonnull @_aspect_changed, ptr noundef %0, ptr noundef nonnull @gui_init.texts) #22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153
  store ptr %i.v, ptr %i.a, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.z, align 8, !tbaa !16
  %i.aa = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.37, i32 noundef 956, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.y, ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.ab = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.35) #22 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !112
  %i.ad = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ab, ptr noundef %i.ad) #22
  %i.ae = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.39) #22 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !154
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ae, ptr noundef %i.ag) #22
  %i.ah = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #22
  %i.ai = call ptr @dt_bauhaus_combobox_new_full(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef %i.ah, i32 noundef 0, ptr noundef nonnull @_position_h_changed, ptr noundef %0, ptr noundef nonnull @gui_init.texts.41) #22 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !115
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !153
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.al, align 8, !tbaa !16
  %i.am = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.37, i32 noundef 972, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ak, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.an = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.49) #22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !114
  %i.ap = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.an, ptr noundef %i.ap) #22
  %i.aq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #22
  %i.ar = call ptr @dt_bauhaus_combobox_new_full(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef %i.aq, i32 noundef 0, ptr noundef nonnull @_position_v_changed, ptr noundef %0, ptr noundef nonnull @gui_init.texts.51) #22 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %i.at = load ptr, ptr %i.x, align 8, !tbaa !153
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.au, align 8, !tbaa !16
  %i.av = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.37, i32 noundef 983, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.at, ptr noundef nonnull %i.c) #22 ; 0 uses
  %i.aw = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.54) #22 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !116
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aw, ptr noundef %i.ay) #22
  %i.az = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.56) #22 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 3 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !155
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.az, i32 noundef 4) #22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !155
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bb, ptr noundef nonnull @.str.12) #22
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !155
  %i.bd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bc, ptr noundef %i.bd) #22
  %i.be = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.58) #22 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !156
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.be, i32 noundef 4) #22
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !156
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bg, ptr noundef nonnull @.str.12) #22
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !156
  %i.bi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bh, ptr noundef %i.bi) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.bj = load <2 x float>, ptr %i.m, align 4, !tbaa !13
  %i.bk = fpext reassoc nsz arcp contract afn <2 x float> %i.bj to <2 x double>
  store <2 x double> %i.bk, ptr %1, align 16, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !13
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bn to double
  store double %i.bo, ptr %i.bl, align 16, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.bp, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !13
  %i.bs = fpext reassoc nsz arcp contract afn <2 x float> %i.br to <2 x double>
  store <2 x double> %i.bs, ptr %2, align 16, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 108
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !13
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bv to double
  store double %i.bw, ptr %i.bt, align 16, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 1.000000e+00, ptr %i.bx, align 8, !tbaa !68
  %i.by = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #22
  %i.bz = call ptr @dtgtk_reset_label_new(ptr noundef %i.by, ptr noundef %0, ptr noundef %i.k, i32 noundef 12) #22 ; 2 uses
  %i.ca = call ptr @gtk_color_button_new_with_rgba(ptr noundef nonnull %1) #22 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 4 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !118
  call void @gtk_color_chooser_set_use_alpha(ptr noundef %i.ca, i32 noundef 0) #22
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !118
  %i.cd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #22
  call void @gtk_color_button_set_title(ptr noundef %i.cc, ptr noundef %i.cd) #22
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !118
  %i.cf = call i64 @g_signal_connect_data(ptr noundef %i.ce, ptr noundef nonnull @.str.62, ptr noundef nonnull @_colorpick_color_set, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.cg = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 1, ptr noundef null) #22 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !71
  %i.ci = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cg, ptr noundef %i.ci) #22
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !71
  %i.ck = call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.60, ptr noundef %i.cj, ptr noundef nonnull @dt_action_def_toggle) #22 ; 0 uses
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !153
  %i.cm = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #22
  call void @gtk_widget_set_hexpand(ptr noundef %i.bz, i32 noundef 1) #22
  store ptr %i.bz, ptr %i.e, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.co = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !72
  store <2 x ptr> %i.co, ptr %i.cn, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cp, align 8, !tbaa !16
  %i.cq = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.37, i32 noundef 1021, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.cm, ptr noundef nonnull %i.e) #22
  store ptr %i.cq, ptr %i.d, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cr, align 8, !tbaa !16
  %i.cs = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.37, i32 noundef 1021, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.cl, ptr noundef nonnull %i.d) #22 ; 0 uses
  %i.ct = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.cv = call ptr @dtgtk_reset_label_new(ptr noundef %i.ct, ptr noundef %0, ptr noundef nonnull %i.cu, i32 noundef 12) #22 ; 2 uses
  %i.cw = call ptr @gtk_color_button_new_with_rgba(ptr noundef nonnull %2) #22 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 4 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !119
  call void @gtk_color_chooser_set_use_alpha(ptr noundef %i.cw, i32 noundef 0) #22
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !119
  %i.cz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #22
  call void @gtk_color_button_set_title(ptr noundef %i.cy, ptr noundef %i.cz) #22
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !119
  %i.db = call i64 @g_signal_connect_data(ptr noundef %i.da, ptr noundef nonnull @.str.62, ptr noundef nonnull @_frame_colorpick_color_set, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.dc = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 1, ptr noundef null) #22 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !70
  %i.de = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.dc, ptr noundef %i.de) #22
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !70
  %i.dg = call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef %i.df, ptr noundef nonnull @dt_action_def_toggle) #22 ; 0 uses
  %i.dh = load ptr, ptr %i.x, align 8, !tbaa !153
  %i.di = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #22
  call void @gtk_widget_set_hexpand(ptr noundef %i.cv, i32 noundef 1) #22
  store ptr %i.cv, ptr %i.g, align 8, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dk = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !72
  store <2 x ptr> %i.dk, ptr %i.dj, align 8, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.dl, align 8, !tbaa !16
  %i.dm = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.37, i32 noundef 1035, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.di, ptr noundef nonnull %i.g) #22
  store ptr %i.dm, ptr %i.f, align 8, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.dn, align 8, !tbaa !16
  %i.do = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.37, i32 noundef 1035, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.dh, ptr noundef nonnull %i.f) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @dt_bauhaus_combobox_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @_aspect_changed(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #22 ; 2 uses
  %i.f = icmp ult i32 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_aspect_ratios, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store float %i.i, ptr %i.j, align 4, !tbaa !45
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = atomicrmw add ptr %i.l, i32 1 seq_cst, align 4 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.p = load float, ptr %i.j, align 4, !tbaa !45
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %i.p) #22
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = atomicrmw add ptr %i.r, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #22
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !111
  tail call void @dt_dev_add_history_item(ptr noundef %i.t, ptr noundef nonnull %1, i32 noundef 1) #22
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @_position_h_changed(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #22 ; 2 uses
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_pos_v_ratios, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  store float %i.i, ptr %i.j, align 4, !tbaa !36
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = atomicrmw add ptr %i.l, i32 1 seq_cst, align 4 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  %i.p = load float, ptr %i.j, align 4, !tbaa !36
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %i.p) #22
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = atomicrmw add ptr %i.r, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #22
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !111
  tail call void @dt_dev_add_history_item(ptr noundef %i.t, ptr noundef nonnull %1, i32 noundef 1) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_position_v_changed(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #22 ; 2 uses
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_pos_v_ratios, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  store float %i.i, ptr %i.j, align 4, !tbaa !35
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = atomicrmw add ptr %i.l, i32 1 seq_cst, align 4 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116
  %i.p = load float, ptr %i.j, align 4, !tbaa !35
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %i.p) #22
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = atomicrmw add ptr %i.r, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #22
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !111
  tail call void @dt_dev_add_history_item(ptr noundef %i.t, ptr noundef nonnull %1, i32 noundef 1) #22
  ret void
}

declare ptr @dtgtk_reset_label_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @gtk_color_button_new_with_rgba(ptr noundef) local_unnamed_addr #7

declare void @gtk_color_chooser_set_use_alpha(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @gtk_color_button_set_title(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @_colorpick_color_set(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 16          ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @gtk_color_chooser_get_rgba(ptr noundef %0, ptr noundef nonnull %2) #22
  %i.f = load <2 x double>, ptr %2, align 16, !tbaa !65
  %i.g = fptrunc reassoc nsz arcp contract afn <2 x double> %i.f to <2 x float>
  store <2 x float> %i.g, ptr %i.e, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load double, ptr %i.h, align 16, !tbaa !67
  %i.j = fptrunc reassoc nsz arcp contract afn double %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store float %i.j, ptr %i.k, align 4, !tbaa !13
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !111
  call void @dt_dev_add_history_item(ptr noundef %i.l, ptr noundef %1, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @dt_action_define_iop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @_frame_colorpick_color_set(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 16          ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @gtk_color_chooser_get_rgba(ptr noundef %0, ptr noundef nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !65
  %i.h = fptrunc reassoc nsz arcp contract afn <2 x double> %i.g to <2 x float>
  store <2 x float> %i.h, ptr %i.f, align 4, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load double, ptr %i.i, align 16, !tbaa !67
  %i.k = fptrunc reassoc nsz arcp contract afn double %i.j to float
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store float %i.k, ptr %i.l, align 4, !tbaa !13
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !111
  call void @dt_dev_add_history_item(ptr noundef %i.m, ptr noundef %1, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !159
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1288), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1376), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1464), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1552), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1640), align 8, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1728), align 16, !tbaa !11
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1816), align 8, !tbaa !11
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 512), align 16, !tbaa !11
  store ptr @introspection_init.f18, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1656), align 8, !tbaa !11
  store ptr @introspection_init.f19, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1744), align 16, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.83) #24
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.84) #24
  %.not40 = icmp eq i32 %i.b, 0
  br i1 %.not40, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.35) #24
  %.not41 = icmp eq i32 %i.c, 0
  br i1 %.not41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.85) #24
  %.not42 = icmp eq i32 %i.e, 0
  br i1 %.not42, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.aj

bb.g:                                             ; preds = %bb.e
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.86) #24
  %.not43 = icmp eq i32 %i.g, 0
  br i1 %.not43, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.aj

bb.i:                                             ; preds = %bb.g
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.39) #24
  %.not44 = icmp eq i32 %i.i, 0
  br i1 %.not44, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.aj

bb.k:                                             ; preds = %bb.i
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.11) #24
  %.not45 = icmp eq i32 %i.k, 0
  br i1 %.not45, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.aj

bb.m:                                             ; preds = %bb.k
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.49) #24
  %.not46 = icmp eq i32 %i.m, 0
  br i1 %.not46, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.aj

bb.o:                                             ; preds = %bb.m
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.87) #24
  %.not47 = icmp eq i32 %i.o, 0
  br i1 %.not47, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.aj

bb.q:                                             ; preds = %bb.o
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.88) #24
  %.not48 = icmp eq i32 %i.q, 0
  br i1 %.not48, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.aj

bb.s:                                             ; preds = %bb.q
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.54) #24
  %.not49 = icmp eq i32 %i.s, 0
  br i1 %.not49, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.aj

bb.u:                                             ; preds = %bb.s
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.89) #24
  %.not50 = icmp eq i32 %i.u, 0
  br i1 %.not50, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.aj

bb.w:                                             ; preds = %bb.u
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.90) #24
  %.not51 = icmp eq i32 %i.w, 0
  br i1 %.not51, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.aj

bb.y:                                             ; preds = %bb.w
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.56) #24
  %.not52 = icmp eq i32 %i.y, 0
  br i1 %.not52, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 92
  br label %bb.aj

bb.aa:                                            ; preds = %bb.y
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.58) #24
  %.not53 = icmp eq i32 %i.aa, 0
  br i1 %.not53, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.91) #24
  %.not54 = icmp eq i32 %i.ac, 0
end_hunk_0
