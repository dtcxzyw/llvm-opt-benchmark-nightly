Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_borders?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
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
  %i.p = fptosi <2 x float> %i.o to <2 x i32>
  %.fr = freeze <2 x i32> %i.p                    ; 2 uses
  %.fr.scalar = bitcast <2 x i32> %.fr to i64
  %or.cond = icmp eq i64 %.fr.scalar, 0
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.q = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.r = sitofp reassoc nsz arcp contract afn <2 x i32> %.fr to <2 x float> ; 5 uses
  %i.s = add i64 %i.q, -2                         ; 3 uses
  %i.t = lshr exact i64 %i.s, 1
  %i.u = add nuw i64 %i.t, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.s, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.s, 30
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.u, 12
  %n.vec = and i64 %i.u, -16                      ; 4 uses
  %i.w = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.r, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat26 = shufflevector <2 x float> %i.r, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl nuw i64 %index, 1                    ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.y, align 64, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec27 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec28 = load <16 x float>, ptr %i.aa, align 64, !tbaa !13 ; 2 uses
  %strided.vec29 = shufflevector <16 x float> %wide.vec28, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec30 = shufflevector <16 x float> %wide.vec28, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ab = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec29, %broadcast.splat
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec27, %broadcast.splat26
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec30, %broadcast.splat26
  %interleaved.vec = shufflevector <8 x float> %i.ab, <8 x float> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.y, align 64, !tbaa !13
  %interleaved.vec31 = shufflevector <8 x float> %i.ac, <8 x float> %i.ae, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec31, ptr %i.aa, align 64, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.u, -4                     ; 3 uses
  %i.ag = shl i64 %n.vec32, 1
  %broadcast.splat34 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index37, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec38 = load <8 x float>, ptr %i.ah, align 32, !tbaa !13 ; 2 uses
  %strided.vec39 = shufflevector <8 x float> %wide.vec38, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x float> %wide.vec38, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ai = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec39, %broadcast.splat34
  %i.aj = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec40, %broadcast.splat36
  %interleaved.vec41 = shufflevector <4 x float> %i.ai, <4 x float> %i.aj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec41, ptr %i.ah, align 32, !tbaa !13
  %index.next42 = add nuw i64 %index37, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next42, %n.vec32
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.u, %n.vec32
  br i1 %cmp.n43, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i64 [ 0, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023 = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.023.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.023 ; 2 uses
  %i.am = load <2 x float>, ptr %i.al, align 8, !tbaa !13
  %i.an = fadd reassoc nsz arcp contract afn <2 x float> %i.am, %i.r
  store <2 x float> %i.an, ptr %i.al, align 8, !tbaa !13
  %i.ao = add nuw i64 %.023, 2                    ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.q
  br i1 %i.ap, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !136

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
  %i.p = fptosi <2 x float> %i.o to <2 x i32>
  %.fr = freeze <2 x i32> %i.p                    ; 2 uses
  %.fr.scalar = bitcast <2 x i32> %.fr to i64
  %or.cond = icmp eq i64 %.fr.scalar, 0
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.q = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.r = sitofp reassoc nsz arcp contract afn <2 x i32> %.fr to <2 x float> ; 5 uses
  %i.s = add i64 %i.q, -2                         ; 3 uses
  %i.t = lshr exact i64 %i.s, 1
  %i.u = add nuw i64 %i.t, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.s, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.s, 30
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.u, 12
  %n.vec = and i64 %i.u, -16                      ; 4 uses
  %i.w = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.r, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat26 = shufflevector <2 x float> %i.r, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl nuw i64 %index, 1                    ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.y, align 64, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec27 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec28 = load <16 x float>, ptr %i.aa, align 64, !tbaa !13 ; 2 uses
  %strided.vec29 = shufflevector <16 x float> %wide.vec28, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec30 = shufflevector <16 x float> %wide.vec28, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.ac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec29, %broadcast.splat
  %i.ad = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec27, %broadcast.splat26
  %i.ae = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec30, %broadcast.splat26
  %interleaved.vec = shufflevector <8 x float> %i.ab, <8 x float> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.y, align 64, !tbaa !13
  %interleaved.vec31 = shufflevector <8 x float> %i.ac, <8 x float> %i.ae, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec31, ptr %i.aa, align 64, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.u, -4                     ; 3 uses
  %i.ag = shl i64 %n.vec32, 1
  %broadcast.splat34 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index37, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec38 = load <8 x float>, ptr %i.ah, align 32, !tbaa !13 ; 2 uses
  %strided.vec39 = shufflevector <8 x float> %wide.vec38, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x float> %wide.vec38, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ai = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec39, %broadcast.splat34
  %i.aj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec40, %broadcast.splat36
  %interleaved.vec41 = shufflevector <4 x float> %i.ai, <4 x float> %i.aj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec41, ptr %i.ah, align 32, !tbaa !13
  %index.next42 = add nuw i64 %index37, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next42, %n.vec32
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.u, %n.vec32
  br i1 %cmp.n43, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i64 [ 0, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023 = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.023.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.023 ; 2 uses
  %i.am = load <2 x float>, ptr %i.al, align 8, !tbaa !13
  %i.an = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.r
  store <2 x float> %i.an, ptr %i.al, align 8, !tbaa !13
  %i.ao = add nuw i64 %.023, 2                    ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.q
  br i1 %i.ap, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !139

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
end_hunk_0
