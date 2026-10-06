Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/test_damin?download=true
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@__ctest_damin_positive_step_1_N_2_run:bb.a
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_1_N_2_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 2, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.__ctest_damin_negative_step_1_N_2_run.x, i64 16, i1 false)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 134) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_2_N_2_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 2, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_damin_positive_step_2_N_2_run.x, i64 32, i1 false)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 145) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_2_N_2_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 2, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_damin_negative_step_2_N_2_run.x, i64 32, i1 false)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 156) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_1_N_3_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) @__const.__ctest_damin_positive_step_1_N_3_run.x, i64 24, i1 false)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 167) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_1_N_3_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) @__const.__ctest_damin_negative_step_1_N_3_run.x, i64 24, i1 false)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 178) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_2_N_3_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [6 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store double 1.100000e+00, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double 1.000000e+00, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double 2.200000e+00, ptr %i.e, align 16
  %i.f = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.f, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 189) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_2_N_3_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [6 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store double -1.100000e+00, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double 1.000000e+00, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double -2.200000e+00, ptr %i.e, align 16
  %i.f = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.f, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 200) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_1_N_4_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 4, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_damin_positive_step_1_N_4_run.x, i64 32, i1 false)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 211) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_1_N_4_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 4, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_damin_negative_step_1_N_4_run.x, i64 32, i1 false)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 222) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_2_N_4_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [8 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 4, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double 1.100000e+00, double poison, double 1.000000e+00, double poison, double 2.200000e+00, double poison, double 3.300000e+00>, ptr align 16 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 233) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_2_N_4_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [8 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 4, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double -1.100000e+00, double poison, double 1.000000e+00, double poison, double -2.200000e+00, double poison, double -3.300000e+00>, ptr align 16 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 244) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_1_N_5_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [5 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 5, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.d, align 16
  store <4 x double> <double 1.100000e+00, double 1.000000e+00, double 2.200000e+00, double 3.300000e+00>, ptr %i.c, align 16
  %i.e = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 0.000000e+00, double noundef %i.e, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 255) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_1_N_5_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [5 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 5, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.d, align 16
  store <4 x double> <double -1.100000e+00, double 1.000000e+00, double -2.200000e+00, double -3.300000e+00>, ptr %i.c, align 16
  %i.e = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 0.000000e+00, double noundef %i.e, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 266) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_2_N_5_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [10 x double], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 5, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double 1.100000e+00, double poison, double 1.000000e+00, double poison, double 2.200000e+00, double poison, double 3.300000e+00>, ptr align 16 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 0.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 277) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_2_N_5_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [10 x double], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 5, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double -1.100000e+00, double poison, double 1.000000e+00, double poison, double -2.200000e+00, double poison, double -3.300000e+00>, ptr align 16 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.d = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 0.000000e+00, double noundef %i.d, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 288) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_1_N_70_run() #0 {
iter.check:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [70 x double], align 16           ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 70, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <4 x double> <double 1.000000e+03, double 1.001000e+03, double 1.002000e+03, double 1.003000e+03>, ptr %i.c, align 16, !tbaa !10
  store <4 x double> <double 1.004000e+03, double 1.005000e+03, double 1.006000e+03, double 1.007000e+03>, ptr %i.d, align 16, !tbaa !10
  store <4 x double> <double 1.008000e+03, double 1.009000e+03, double 1.010000e+03, double 1.011000e+03>, ptr %i.e, align 16, !tbaa !10
  store <4 x double> <double 1.012000e+03, double 1.013000e+03, double 1.014000e+03, double 1.015000e+03>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store <4 x double> <double 1.016000e+03, double 1.017000e+03, double 1.018000e+03, double 1.019000e+03>, ptr %i.g, align 16, !tbaa !10
  store <4 x double> <double 1.020000e+03, double 1.021000e+03, double 1.022000e+03, double 1.023000e+03>, ptr %i.h, align 16, !tbaa !10
  store <4 x double> <double 1.024000e+03, double 1.025000e+03, double 1.026000e+03, double 1.027000e+03>, ptr %i.i, align 16, !tbaa !10
  store <4 x double> <double 1.028000e+03, double 1.029000e+03, double 1.030000e+03, double 1.031000e+03>, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store <4 x double> <double 1.032000e+03, double 1.033000e+03, double 1.034000e+03, double 1.035000e+03>, ptr %i.k, align 16, !tbaa !10
  store <4 x double> <double 1.036000e+03, double 1.037000e+03, double 1.038000e+03, double 1.039000e+03>, ptr %i.l, align 16, !tbaa !10
  store <4 x double> <double 1.040000e+03, double 1.041000e+03, double 1.042000e+03, double 1.043000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double 1.044000e+03, double 1.045000e+03, double 1.046000e+03, double 1.047000e+03>, ptr %i.n, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store <4 x double> <double 1.048000e+03, double 1.049000e+03, double 1.050000e+03, double 1.051000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double 1.052000e+03, double 1.053000e+03, double 1.054000e+03, double 1.055000e+03>, ptr %i.p, align 16, !tbaa !10
  store <4 x double> <double 1.056000e+03, double 1.057000e+03, double 1.058000e+03, double 1.059000e+03>, ptr %i.q, align 16, !tbaa !10
  store <4 x double> <double 1.060000e+03, double 1.061000e+03, double 1.062000e+03, double 1.063000e+03>, ptr %i.r, align 16, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  store <4 x double> <double 1.064000e+03, double 1.065000e+03, double 1.066000e+03, double 1.067000e+03>, ptr %i.s, align 16, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  store double 1.068000e+03, ptr %i.t, align 16, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  store double 1.069000e+03, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double 0.000000e+00, ptr %i.v, align 16, !tbaa !10
  %i.w = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 0.000000e+00, double noundef %i.w, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 304) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_1_N_70_run() #0 {
iter.check:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [70 x double], align 16           ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 70, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <4 x double> <double -1.000000e+03, double -1.001000e+03, double -1.002000e+03, double -1.003000e+03>, ptr %i.c, align 16, !tbaa !10
  store <4 x double> <double -1.004000e+03, double -1.005000e+03, double -1.006000e+03, double -1.007000e+03>, ptr %i.d, align 16, !tbaa !10
  store <4 x double> <double -1.008000e+03, double -1.009000e+03, double -1.010000e+03, double -1.011000e+03>, ptr %i.e, align 16, !tbaa !10
  store <4 x double> <double -1.012000e+03, double -1.013000e+03, double -1.014000e+03, double -1.015000e+03>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store <4 x double> <double -1.016000e+03, double -1.017000e+03, double -1.018000e+03, double -1.019000e+03>, ptr %i.g, align 16, !tbaa !10
  store <4 x double> <double -1.020000e+03, double -1.021000e+03, double -1.022000e+03, double -1.023000e+03>, ptr %i.h, align 16, !tbaa !10
  store <4 x double> <double -1.024000e+03, double -1.025000e+03, double -1.026000e+03, double -1.027000e+03>, ptr %i.i, align 16, !tbaa !10
  store <4 x double> <double -1.028000e+03, double -1.029000e+03, double -1.030000e+03, double -1.031000e+03>, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store <4 x double> <double -1.032000e+03, double -1.033000e+03, double -1.034000e+03, double -1.035000e+03>, ptr %i.k, align 16, !tbaa !10
  store <4 x double> <double -1.036000e+03, double -1.037000e+03, double -1.038000e+03, double -1.039000e+03>, ptr %i.l, align 16, !tbaa !10
  store <4 x double> <double -1.040000e+03, double -1.041000e+03, double -1.042000e+03, double -1.043000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double -1.044000e+03, double -1.045000e+03, double -1.046000e+03, double -1.047000e+03>, ptr %i.n, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store <4 x double> <double -1.048000e+03, double -1.049000e+03, double -1.050000e+03, double -1.051000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double -1.052000e+03, double -1.053000e+03, double -1.054000e+03, double -1.055000e+03>, ptr %i.p, align 16, !tbaa !10
  store <4 x double> <double -1.056000e+03, double -1.057000e+03, double -1.058000e+03, double -1.059000e+03>, ptr %i.q, align 16, !tbaa !10
  store <4 x double> <double -1.060000e+03, double -1.061000e+03, double -1.062000e+03, double -1.063000e+03>, ptr %i.r, align 16, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  store <4 x double> <double -1.064000e+03, double -1.065000e+03, double -1.066000e+03, double -1.067000e+03>, ptr %i.s, align 16, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  store double -1.068000e+03, ptr %i.t, align 16, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  store double -1.069000e+03, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double -1.000000e+00, ptr %i.v, align 16, !tbaa !10
  %i.w = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.w, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 320) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_positive_step_2_N_70_run() #0 {
iter.check:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [140 x double], align 16          ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 70, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <4 x double> <double 1.000000e+03, double 1.001000e+03, double 1.002000e+03, double 1.003000e+03>, ptr %i.c, align 16, !tbaa !10
  store <4 x double> <double 1.004000e+03, double 1.005000e+03, double 1.006000e+03, double 1.007000e+03>, ptr %i.d, align 16, !tbaa !10
  store <4 x double> <double 1.008000e+03, double 1.009000e+03, double 1.010000e+03, double 1.011000e+03>, ptr %i.e, align 16, !tbaa !10
  store <4 x double> <double 1.012000e+03, double 1.013000e+03, double 1.014000e+03, double 1.015000e+03>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store <4 x double> <double 1.016000e+03, double 1.017000e+03, double 1.018000e+03, double 1.019000e+03>, ptr %i.g, align 16, !tbaa !10
  store <4 x double> <double 1.020000e+03, double 1.021000e+03, double 1.022000e+03, double 1.023000e+03>, ptr %i.h, align 16, !tbaa !10
  store <4 x double> <double 1.024000e+03, double 1.025000e+03, double 1.026000e+03, double 1.027000e+03>, ptr %i.i, align 16, !tbaa !10
  store <4 x double> <double 1.028000e+03, double 1.029000e+03, double 1.030000e+03, double 1.031000e+03>, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store <4 x double> <double 1.032000e+03, double 1.033000e+03, double 1.034000e+03, double 1.035000e+03>, ptr %i.k, align 16, !tbaa !10
  store <4 x double> <double 1.036000e+03, double 1.037000e+03, double 1.038000e+03, double 1.039000e+03>, ptr %i.l, align 16, !tbaa !10
  store <4 x double> <double 1.040000e+03, double 1.041000e+03, double 1.042000e+03, double 1.043000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double 1.044000e+03, double 1.045000e+03, double 1.046000e+03, double 1.047000e+03>, ptr %i.n, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store <4 x double> <double 1.048000e+03, double 1.049000e+03, double 1.050000e+03, double 1.051000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double 1.052000e+03, double 1.053000e+03, double 1.054000e+03, double 1.055000e+03>, ptr %i.p, align 16, !tbaa !10
  store <4 x double> <double 1.056000e+03, double 1.057000e+03, double 1.058000e+03, double 1.059000e+03>, ptr %i.q, align 16, !tbaa !10
  store <4 x double> <double 1.060000e+03, double 1.061000e+03, double 1.062000e+03, double 1.063000e+03>, ptr %i.r, align 16, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  store <4 x double> <double 1.064000e+03, double 1.065000e+03, double 1.066000e+03, double 1.067000e+03>, ptr %i.s, align 16, !tbaa !10
  store <4 x double> <double 1.068000e+03, double 1.069000e+03, double 1.070000e+03, double 1.071000e+03>, ptr %i.t, align 16, !tbaa !10
  store <4 x double> <double 1.072000e+03, double 1.073000e+03, double 1.074000e+03, double 1.075000e+03>, ptr %i.u, align 16, !tbaa !10
  store <4 x double> <double 1.076000e+03, double 1.077000e+03, double 1.078000e+03, double 1.079000e+03>, ptr %i.v, align 16, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  store <4 x double> <double 1.080000e+03, double 1.081000e+03, double 1.082000e+03, double 1.083000e+03>, ptr %i.w, align 16, !tbaa !10
  store <4 x double> <double 1.084000e+03, double 1.085000e+03, double 1.086000e+03, double 1.087000e+03>, ptr %i.x, align 16, !tbaa !10
  store <4 x double> <double 1.088000e+03, double 1.089000e+03, double 1.090000e+03, double 1.091000e+03>, ptr %i.y, align 16, !tbaa !10
  store <4 x double> <double 1.092000e+03, double 1.093000e+03, double 1.094000e+03, double 1.095000e+03>, ptr %i.z, align 16, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 864
  store <4 x double> <double 1.096000e+03, double 1.097000e+03, double 1.098000e+03, double 1.099000e+03>, ptr %i.aa, align 16, !tbaa !10
  store <4 x double> <double 1.100000e+03, double 1.101000e+03, double 1.102000e+03, double 1.103000e+03>, ptr %i.ab, align 16, !tbaa !10
  store <4 x double> <double 1.104000e+03, double 1.105000e+03, double 1.106000e+03, double 1.107000e+03>, ptr %i.ac, align 16, !tbaa !10
  store <4 x double> <double 1.108000e+03, double 1.109000e+03, double 1.110000e+03, double 1.111000e+03>, ptr %i.ad, align 16, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 928
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 992
  store <4 x double> <double 1.112000e+03, double 1.113000e+03, double 1.114000e+03, double 1.115000e+03>, ptr %i.ae, align 16, !tbaa !10
  store <4 x double> <double 1.116000e+03, double 1.117000e+03, double 1.118000e+03, double 1.119000e+03>, ptr %i.af, align 16, !tbaa !10
  store <4 x double> <double 1.120000e+03, double 1.121000e+03, double 1.122000e+03, double 1.123000e+03>, ptr %i.ag, align 16, !tbaa !10
  store <4 x double> <double 1.124000e+03, double 1.125000e+03, double 1.126000e+03, double 1.127000e+03>, ptr %i.ah, align 16, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1024
  store <4 x double> <double 1.128000e+03, double 1.129000e+03, double 1.130000e+03, double 1.131000e+03>, ptr %i.ai, align 16, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 1056
  store <4 x double> <double 1.132000e+03, double 1.133000e+03, double 1.134000e+03, double 1.135000e+03>, ptr %i.aj, align 16, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1088
  store <4 x double> <double 1.136000e+03, double 1.137000e+03, double 1.138000e+03, double 1.139000e+03>, ptr %i.ak, align 16, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double 1.000000e+00, ptr %i.al, align 16, !tbaa !10
  %i.am = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.am, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 336) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_damin_negative_step_2_N_70_run() #0 {
iter.check:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [140 x double], align 16          ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 70, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <4 x double> <double -1.000000e+03, double -1.001000e+03, double -1.002000e+03, double -1.003000e+03>, ptr %i.c, align 16, !tbaa !10
  store <4 x double> <double -1.004000e+03, double -1.005000e+03, double -1.006000e+03, double -1.007000e+03>, ptr %i.d, align 16, !tbaa !10
  store <4 x double> <double -1.008000e+03, double -1.009000e+03, double -1.010000e+03, double -1.011000e+03>, ptr %i.e, align 16, !tbaa !10
  store <4 x double> <double -1.012000e+03, double -1.013000e+03, double -1.014000e+03, double -1.015000e+03>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store <4 x double> <double -1.016000e+03, double -1.017000e+03, double -1.018000e+03, double -1.019000e+03>, ptr %i.g, align 16, !tbaa !10
  store <4 x double> <double -1.020000e+03, double -1.021000e+03, double -1.022000e+03, double -1.023000e+03>, ptr %i.h, align 16, !tbaa !10
  store <4 x double> <double -1.024000e+03, double -1.025000e+03, double -1.026000e+03, double -1.027000e+03>, ptr %i.i, align 16, !tbaa !10
  store <4 x double> <double -1.028000e+03, double -1.029000e+03, double -1.030000e+03, double -1.031000e+03>, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store <4 x double> <double -1.032000e+03, double -1.033000e+03, double -1.034000e+03, double -1.035000e+03>, ptr %i.k, align 16, !tbaa !10
  store <4 x double> <double -1.036000e+03, double -1.037000e+03, double -1.038000e+03, double -1.039000e+03>, ptr %i.l, align 16, !tbaa !10
  store <4 x double> <double -1.040000e+03, double -1.041000e+03, double -1.042000e+03, double -1.043000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double -1.044000e+03, double -1.045000e+03, double -1.046000e+03, double -1.047000e+03>, ptr %i.n, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store <4 x double> <double -1.048000e+03, double -1.049000e+03, double -1.050000e+03, double -1.051000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double -1.052000e+03, double -1.053000e+03, double -1.054000e+03, double -1.055000e+03>, ptr %i.p, align 16, !tbaa !10
  store <4 x double> <double -1.056000e+03, double -1.057000e+03, double -1.058000e+03, double -1.059000e+03>, ptr %i.q, align 16, !tbaa !10
  store <4 x double> <double -1.060000e+03, double -1.061000e+03, double -1.062000e+03, double -1.063000e+03>, ptr %i.r, align 16, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  store <4 x double> <double -1.064000e+03, double -1.065000e+03, double -1.066000e+03, double -1.067000e+03>, ptr %i.s, align 16, !tbaa !10
  store <4 x double> <double -1.068000e+03, double -1.069000e+03, double -1.070000e+03, double -1.071000e+03>, ptr %i.t, align 16, !tbaa !10
  store <4 x double> <double -1.072000e+03, double -1.073000e+03, double -1.074000e+03, double -1.075000e+03>, ptr %i.u, align 16, !tbaa !10
  store <4 x double> <double -1.076000e+03, double -1.077000e+03, double -1.078000e+03, double -1.079000e+03>, ptr %i.v, align 16, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  store <4 x double> <double -1.080000e+03, double -1.081000e+03, double -1.082000e+03, double -1.083000e+03>, ptr %i.w, align 16, !tbaa !10
  store <4 x double> <double -1.084000e+03, double -1.085000e+03, double -1.086000e+03, double -1.087000e+03>, ptr %i.x, align 16, !tbaa !10
  store <4 x double> <double -1.088000e+03, double -1.089000e+03, double -1.090000e+03, double -1.091000e+03>, ptr %i.y, align 16, !tbaa !10
  store <4 x double> <double -1.092000e+03, double -1.093000e+03, double -1.094000e+03, double -1.095000e+03>, ptr %i.z, align 16, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 864
  store <4 x double> <double -1.096000e+03, double -1.097000e+03, double -1.098000e+03, double -1.099000e+03>, ptr %i.aa, align 16, !tbaa !10
  store <4 x double> <double -1.100000e+03, double -1.101000e+03, double -1.102000e+03, double -1.103000e+03>, ptr %i.ab, align 16, !tbaa !10
  store <4 x double> <double -1.104000e+03, double -1.105000e+03, double -1.106000e+03, double -1.107000e+03>, ptr %i.ac, align 16, !tbaa !10
  store <4 x double> <double -1.108000e+03, double -1.109000e+03, double -1.110000e+03, double -1.111000e+03>, ptr %i.ad, align 16, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 928
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 992
  store <4 x double> <double -1.112000e+03, double -1.113000e+03, double -1.114000e+03, double -1.115000e+03>, ptr %i.ae, align 16, !tbaa !10
  store <4 x double> <double -1.116000e+03, double -1.117000e+03, double -1.118000e+03, double -1.119000e+03>, ptr %i.af, align 16, !tbaa !10
  store <4 x double> <double -1.120000e+03, double -1.121000e+03, double -1.122000e+03, double -1.123000e+03>, ptr %i.ag, align 16, !tbaa !10
  store <4 x double> <double -1.124000e+03, double -1.125000e+03, double -1.126000e+03, double -1.127000e+03>, ptr %i.ah, align 16, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1024
  store <4 x double> <double -1.128000e+03, double -1.129000e+03, double -1.130000e+03, double -1.131000e+03>, ptr %i.ai, align 16, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 1056
  store <4 x double> <double -1.132000e+03, double -1.133000e+03, double -1.134000e+03, double -1.135000e+03>, ptr %i.aj, align 16, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1088
  store <4 x double> <double -1.136000e+03, double -1.137000e+03, double -1.138000e+03, double -1.139000e+03>, ptr %i.ak, align 16, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double -1.000000e+00, ptr %i.al, align 16, !tbaa !10
  %i.am = call double @damin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  call void @assert_dbl_near(double noundef 1.000000e+00, double noundef %i.am, double noundef 1.000000e-13, ptr noundef nonnull @.str, i32 noundef 352) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v7f64.p0(<7 x double>, ptr captures(none), <7 x i1>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!9, !9, i64 0}
end_hunk_0
