Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/test_idamin?download=true
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@__ctest_idamin_negative_step_1_N_2_run:bb.a
  store i32 2, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.__ctest_idamin_c_api_negative_step_1_N_2_run.x, i64 16, i1 false)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 142) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_2_N_2_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 2, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_idamin_c_api_positive_step_2_N_2_run.x, i64 32, i1 false)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 154) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_2_N_2_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 2, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_idamin_c_api_negative_step_2_N_2_run.x, i64 32, i1 false)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 166) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_1_N_3_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) @__const.__ctest_idamin_c_api_positive_step_1_N_3_run.x, i64 24, i1 false)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 178) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_1_N_3_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) @__const.__ctest_idamin_c_api_negative_step_1_N_3_run.x, i64 24, i1 false)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 190) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_2_N_3_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [6 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store double 1.100000e+00, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double 1.000000e+00, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double 2.200000e+00, ptr %i.e, align 16
  %i.f = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.g = sext i32 %i.f to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 202) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_2_N_3_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [6 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store double -1.100000e+00, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double 1.000000e+00, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double -2.200000e+00, ptr %i.e, align 16
  %i.f = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.g = sext i32 %i.f to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 214) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_1_N_4_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 4, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_idamin_c_api_positive_step_1_N_4_run.x, i64 32, i1 false)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 226) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_1_N_4_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 4, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_idamin_c_api_negative_step_1_N_4_run.x, i64 32, i1 false)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 238) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_2_N_4_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [8 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 4, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double 1.100000e+00, double poison, double 1.000000e+00, double poison, double 2.200000e+00, double poison, double 3.300000e+00>, ptr align 16 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 250) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_2_N_4_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [8 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 4, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double -1.100000e+00, double poison, double 1.000000e+00, double poison, double -2.200000e+00, double poison, double -3.300000e+00>, ptr align 16 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 2, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 262) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_1_N_5_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [5 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 5, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.d, align 16
  store <4 x double> <double 1.100000e+00, double 1.000000e+00, double 2.200000e+00, double 3.300000e+00>, ptr %i.c, align 16
  %i.e = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.f = sext i32 %i.e to i64
  call void @assert_equal(i64 noundef 5, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 274) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_1_N_5_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [5 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 5, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.d, align 16
  store <4 x double> <double -1.100000e+00, double 1.000000e+00, double -2.200000e+00, double -3.300000e+00>, ptr %i.c, align 16
  %i.e = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.f = sext i32 %i.e to i64
  call void @assert_equal(i64 noundef 5, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 286) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_2_N_5_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [10 x double], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 5, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double 1.100000e+00, double poison, double 1.000000e+00, double poison, double 2.200000e+00, double poison, double 3.300000e+00>, ptr align 16 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 5, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 298) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_2_N_5_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [10 x double], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 5, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double -1.100000e+00, double poison, double 1.000000e+00, double poison, double -2.200000e+00, double poison, double -3.300000e+00>, ptr align 16 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.d = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.e = sext i32 %i.d to i64
  call void @assert_equal(i64 noundef 5, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 310) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_1_N_50_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [50 x double], align 16           ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 50, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store <4 x double> <double 1.000000e+03, double 1.001000e+03, double 1.002000e+03, double 1.003000e+03>, ptr %i.c, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x double> <double 1.004000e+03, double 1.005000e+03, double 1.006000e+03, double 1.007000e+03>, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <4 x double> <double 1.012000e+03, double 1.013000e+03, double 1.014000e+03, double 1.015000e+03>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store <4 x double> <double 1.016000e+03, double 1.017000e+03, double 1.018000e+03, double 1.019000e+03>, ptr %i.g, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store <4 x double> <double 1.020000e+03, double 1.021000e+03, double 1.022000e+03, double 1.023000e+03>, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store <4 x double> <double 1.024000e+03, double 1.025000e+03, double 1.026000e+03, double 1.027000e+03>, ptr %i.i, align 16, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store <4 x double> <double 1.028000e+03, double 1.029000e+03, double 1.030000e+03, double 1.031000e+03>, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store <4 x double> <double 1.032000e+03, double 1.033000e+03, double 1.034000e+03, double 1.035000e+03>, ptr %i.k, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store <4 x double> <double 1.036000e+03, double 1.037000e+03, double 1.038000e+03, double 1.039000e+03>, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store <4 x double> <double 1.040000e+03, double 1.041000e+03, double 1.042000e+03, double 1.043000e+03>, ptr %i.m, align 16, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store <4 x double> <double 1.044000e+03, double 1.045000e+03, double 1.046000e+03, double 1.047000e+03>, ptr %i.n, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store <2 x double> <double 1.048000e+03, double 1.049000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double 0.000000e+00, double 1.009000e+03, double 1.010000e+03, double 1.011000e+03>, ptr %i.e, align 16, !tbaa !10
  %i.p = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.q = sext i32 %i.p to i64
  call void @assert_equal(i64 noundef 9, i64 noundef %i.q, ptr noundef nonnull @.str, i32 noundef 327) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_1_N_50_run() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [50 x double], align 16           ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 50, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store <4 x double> <double -1.000000e+03, double -1.001000e+03, double -1.002000e+03, double -1.003000e+03>, ptr %i.c, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x double> <double -1.004000e+03, double -1.005000e+03, double -1.006000e+03, double -1.007000e+03>, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <4 x double> <double -1.012000e+03, double -1.013000e+03, double -1.014000e+03, double -1.015000e+03>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store <4 x double> <double -1.016000e+03, double -1.017000e+03, double -1.018000e+03, double -1.019000e+03>, ptr %i.g, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store <4 x double> <double -1.020000e+03, double -1.021000e+03, double -1.022000e+03, double -1.023000e+03>, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store <4 x double> <double -1.024000e+03, double -1.025000e+03, double -1.026000e+03, double -1.027000e+03>, ptr %i.i, align 16, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store <4 x double> <double -1.028000e+03, double -1.029000e+03, double -1.030000e+03, double -1.031000e+03>, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store <4 x double> <double -1.032000e+03, double -1.033000e+03, double -1.034000e+03, double -1.035000e+03>, ptr %i.k, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store <4 x double> <double -1.036000e+03, double -1.037000e+03, double -1.038000e+03, double -1.039000e+03>, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store <4 x double> <double -1.040000e+03, double -1.041000e+03, double -1.042000e+03, double -1.043000e+03>, ptr %i.m, align 16, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store <4 x double> <double -1.044000e+03, double -1.045000e+03, double -1.046000e+03, double -1.047000e+03>, ptr %i.n, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store <2 x double> <double -1.048000e+03, double -1.049000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double -1.000000e+00, double -1.009000e+03, double -1.010000e+03, double -1.011000e+03>, ptr %i.e, align 16, !tbaa !10
  %i.p = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.q = sext i32 %i.p to i64
  call void @assert_equal(i64 noundef 9, i64 noundef %i.q, ptr noundef nonnull @.str, i32 noundef 344) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_positive_step_2_N_50_run() #0 {
iter.check:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [100 x double], align 16          ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 50, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
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
  store <4 x double> <double 1.096000e+03, double 1.097000e+03, double 1.098000e+03, double 1.099000e+03>, ptr %i.aa, align 16, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double 0.000000e+00, ptr %i.ab, align 16, !tbaa !10
  %i.ac = call i32 @idamin_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6
  %i.ad = sext i32 %i.ac to i64
  call void @assert_equal(i64 noundef 9, i64 noundef %i.ad, ptr noundef nonnull @.str, i32 noundef 361) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_negative_step_2_N_50_run() #0 {
iter.check:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [100 x double], align 16          ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 50, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
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
end_hunk_0
begin_hunk_1_@__ctest_idamin_c_api_positive_step_1_N_1_run:bb.a
  call void @assert_equal(i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 457) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_1_N_1_run() #0 {
bb.a:
  %i.a = alloca [1 x double], align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 -4615739258092021350, ptr %i.a, align 8
  %i.b = call i64 @cblas_idamin(i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 469) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_2_N_1_run() #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.__ctest_idamin_c_api_positive_step_2_N_1_run.x, i64 16, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 481) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_2_N_1_run() #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.__ctest_idamin_c_api_negative_step_2_N_1_run.x, i64 16, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 493) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_1_N_2_run() #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.__ctest_idamin_c_api_positive_step_1_N_2_run.x, i64 16, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 505) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_1_N_2_run() #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.__ctest_idamin_c_api_negative_step_1_N_2_run.x, i64 16, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 517) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_2_N_2_run() #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_idamin_c_api_positive_step_2_N_2_run.x, i64 32, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 529) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_2_N_2_run() #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_idamin_c_api_negative_step_2_N_2_run.x, i64 32, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 541) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_1_N_3_run() #0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.__ctest_idamin_c_api_positive_step_1_N_3_run.x, i64 24, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 3, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 553) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_1_N_3_run() #0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.__ctest_idamin_c_api_negative_step_1_N_3_run.x, i64 24, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 3, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 565) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_2_N_3_run() #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store double 1.100000e+00, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double 1.000000e+00, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double 2.200000e+00, ptr %i.c, align 16
  %i.d = call i64 @cblas_idamin(i32 noundef 3, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.d, 32
  %i.e = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 577) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_2_N_3_run() #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store double -1.100000e+00, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double 1.000000e+00, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double -2.200000e+00, ptr %i.c, align 16
  %i.d = call i64 @cblas_idamin(i32 noundef 3, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.d, 32
  %i.e = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 589) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_1_N_4_run() #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_idamin_c_api_positive_step_1_N_4_run.x, i64 32, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 4, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 601) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_1_N_4_run() #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.__ctest_idamin_c_api_negative_step_1_N_4_run.x, i64 32, i1 false)
  %i.b = call i64 @cblas_idamin(i32 noundef 4, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 613) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_2_N_4_run() #0 {
bb.a:
  %i.a = alloca [8 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double 1.100000e+00, double poison, double 1.000000e+00, double poison, double 2.200000e+00, double poison, double 3.300000e+00>, ptr align 16 %i.a, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.b = call i64 @cblas_idamin(i32 noundef 4, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 625) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_2_N_4_run() #0 {
bb.a:
  %i.a = alloca [8 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double -1.100000e+00, double poison, double 1.000000e+00, double poison, double -2.200000e+00, double poison, double -3.300000e+00>, ptr align 16 %i.a, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.b = call i64 @cblas_idamin(i32 noundef 4, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 637) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_1_N_5_run() #0 {
bb.a:
  %i.a = alloca [5 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.b, align 16
  store <4 x double> <double 1.100000e+00, double 1.000000e+00, double 2.200000e+00, double 3.300000e+00>, ptr %i.a, align 16
  %i.c = call i64 @cblas_idamin(i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 4, i64 noundef %i.d, ptr noundef nonnull @.str, i32 noundef 649) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_1_N_5_run() #0 {
bb.a:
  %i.a = alloca [5 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.b, align 16
  store <4 x double> <double -1.100000e+00, double 1.000000e+00, double -2.200000e+00, double -3.300000e+00>, ptr %i.a, align 16
  %i.c = call i64 @cblas_idamin(i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 4, i64 noundef %i.d, ptr noundef nonnull @.str, i32 noundef 661) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_2_N_5_run() #0 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double 1.100000e+00, double poison, double 1.000000e+00, double poison, double 2.200000e+00, double poison, double 3.300000e+00>, ptr align 16 %i.a, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.b = call i64 @cblas_idamin(i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 4, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 673) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_2_N_5_run() #0 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  call void @llvm.masked.store.v7f64.p0(<7 x double> <double -1.100000e+00, double poison, double 1.000000e+00, double poison, double -2.200000e+00, double poison, double -3.300000e+00>, ptr align 16 %i.a, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>)
  %i.b = call i64 @cblas_idamin(i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 4, i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 685) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_1_N_50_run() #0 {
bb.a:
  %i.a = alloca [50 x double], align 16           ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store <4 x double> <double 1.000000e+03, double 1.001000e+03, double 1.002000e+03, double 1.003000e+03>, ptr %i.a, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x double> <double 1.004000e+03, double 1.005000e+03, double 1.006000e+03, double 1.007000e+03>, ptr %i.b, align 16, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x double> <double 1.012000e+03, double 1.013000e+03, double 1.014000e+03, double 1.015000e+03>, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x double> <double 1.016000e+03, double 1.017000e+03, double 1.018000e+03, double 1.019000e+03>, ptr %i.e, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <4 x double> <double 1.020000e+03, double 1.021000e+03, double 1.022000e+03, double 1.023000e+03>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <4 x double> <double 1.024000e+03, double 1.025000e+03, double 1.026000e+03, double 1.027000e+03>, ptr %i.g, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x double> <double 1.028000e+03, double 1.029000e+03, double 1.030000e+03, double 1.031000e+03>, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store <4 x double> <double 1.032000e+03, double 1.033000e+03, double 1.034000e+03, double 1.035000e+03>, ptr %i.i, align 16, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store <4 x double> <double 1.036000e+03, double 1.037000e+03, double 1.038000e+03, double 1.039000e+03>, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store <4 x double> <double 1.040000e+03, double 1.041000e+03, double 1.042000e+03, double 1.043000e+03>, ptr %i.k, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <4 x double> <double 1.044000e+03, double 1.045000e+03, double 1.046000e+03, double 1.047000e+03>, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store <2 x double> <double 1.048000e+03, double 1.049000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double 0.000000e+00, double 1.009000e+03, double 1.010000e+03, double 1.011000e+03>, ptr %i.c, align 16, !tbaa !10
  %i.n = call i64 @cblas_idamin(i32 noundef 50, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.n, 32
  %i.o = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 8, i64 noundef %i.o, ptr noundef nonnull @.str, i32 noundef 702) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_1_N_50_run() #0 {
bb.a:
  %i.a = alloca [50 x double], align 16           ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store <4 x double> <double -1.000000e+03, double -1.001000e+03, double -1.002000e+03, double -1.003000e+03>, ptr %i.a, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x double> <double -1.004000e+03, double -1.005000e+03, double -1.006000e+03, double -1.007000e+03>, ptr %i.b, align 16, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x double> <double -1.012000e+03, double -1.013000e+03, double -1.014000e+03, double -1.015000e+03>, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x double> <double -1.016000e+03, double -1.017000e+03, double -1.018000e+03, double -1.019000e+03>, ptr %i.e, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <4 x double> <double -1.020000e+03, double -1.021000e+03, double -1.022000e+03, double -1.023000e+03>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <4 x double> <double -1.024000e+03, double -1.025000e+03, double -1.026000e+03, double -1.027000e+03>, ptr %i.g, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x double> <double -1.028000e+03, double -1.029000e+03, double -1.030000e+03, double -1.031000e+03>, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store <4 x double> <double -1.032000e+03, double -1.033000e+03, double -1.034000e+03, double -1.035000e+03>, ptr %i.i, align 16, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store <4 x double> <double -1.036000e+03, double -1.037000e+03, double -1.038000e+03, double -1.039000e+03>, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store <4 x double> <double -1.040000e+03, double -1.041000e+03, double -1.042000e+03, double -1.043000e+03>, ptr %i.k, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <4 x double> <double -1.044000e+03, double -1.045000e+03, double -1.046000e+03, double -1.047000e+03>, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store <2 x double> <double -1.048000e+03, double -1.049000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double -1.000000e+00, double -1.009000e+03, double -1.010000e+03, double -1.011000e+03>, ptr %i.c, align 16, !tbaa !10
  %i.n = call i64 @cblas_idamin(i32 noundef 50, ptr noundef nonnull %i.a, i32 noundef 1) #6
  %sext = shl i64 %i.n, 32
  %i.o = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 8, i64 noundef %i.o, ptr noundef nonnull @.str, i32 noundef 719) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_positive_step_2_N_50_run() #0 {
iter.check:
  %i.a = alloca [100 x double], align 16          ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x double> <double 1.000000e+03, double 1.001000e+03, double 1.002000e+03, double 1.003000e+03>, ptr %i.a, align 16, !tbaa !10
  store <4 x double> <double 1.004000e+03, double 1.005000e+03, double 1.006000e+03, double 1.007000e+03>, ptr %i.b, align 16, !tbaa !10
  store <4 x double> <double 1.008000e+03, double 1.009000e+03, double 1.010000e+03, double 1.011000e+03>, ptr %i.c, align 16, !tbaa !10
  store <4 x double> <double 1.012000e+03, double 1.013000e+03, double 1.014000e+03, double 1.015000e+03>, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x double> <double 1.016000e+03, double 1.017000e+03, double 1.018000e+03, double 1.019000e+03>, ptr %i.e, align 16, !tbaa !10
  store <4 x double> <double 1.020000e+03, double 1.021000e+03, double 1.022000e+03, double 1.023000e+03>, ptr %i.f, align 16, !tbaa !10
  store <4 x double> <double 1.024000e+03, double 1.025000e+03, double 1.026000e+03, double 1.027000e+03>, ptr %i.g, align 16, !tbaa !10
  store <4 x double> <double 1.028000e+03, double 1.029000e+03, double 1.030000e+03, double 1.031000e+03>, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <4 x double> <double 1.032000e+03, double 1.033000e+03, double 1.034000e+03, double 1.035000e+03>, ptr %i.i, align 16, !tbaa !10
  store <4 x double> <double 1.036000e+03, double 1.037000e+03, double 1.038000e+03, double 1.039000e+03>, ptr %i.j, align 16, !tbaa !10
  store <4 x double> <double 1.040000e+03, double 1.041000e+03, double 1.042000e+03, double 1.043000e+03>, ptr %i.k, align 16, !tbaa !10
  store <4 x double> <double 1.044000e+03, double 1.045000e+03, double 1.046000e+03, double 1.047000e+03>, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <4 x double> <double 1.048000e+03, double 1.049000e+03, double 1.050000e+03, double 1.051000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double 1.052000e+03, double 1.053000e+03, double 1.054000e+03, double 1.055000e+03>, ptr %i.n, align 16, !tbaa !10
  store <4 x double> <double 1.056000e+03, double 1.057000e+03, double 1.058000e+03, double 1.059000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double 1.060000e+03, double 1.061000e+03, double 1.062000e+03, double 1.063000e+03>, ptr %i.p, align 16, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store <4 x double> <double 1.064000e+03, double 1.065000e+03, double 1.066000e+03, double 1.067000e+03>, ptr %i.q, align 16, !tbaa !10
  store <4 x double> <double 1.068000e+03, double 1.069000e+03, double 1.070000e+03, double 1.071000e+03>, ptr %i.r, align 16, !tbaa !10
  store <4 x double> <double 1.072000e+03, double 1.073000e+03, double 1.074000e+03, double 1.075000e+03>, ptr %i.s, align 16, !tbaa !10
  store <4 x double> <double 1.076000e+03, double 1.077000e+03, double 1.078000e+03, double 1.079000e+03>, ptr %i.t, align 16, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store <4 x double> <double 1.080000e+03, double 1.081000e+03, double 1.082000e+03, double 1.083000e+03>, ptr %i.u, align 16, !tbaa !10
  store <4 x double> <double 1.084000e+03, double 1.085000e+03, double 1.086000e+03, double 1.087000e+03>, ptr %i.v, align 16, !tbaa !10
  store <4 x double> <double 1.088000e+03, double 1.089000e+03, double 1.090000e+03, double 1.091000e+03>, ptr %i.w, align 16, !tbaa !10
  store <4 x double> <double 1.092000e+03, double 1.093000e+03, double 1.094000e+03, double 1.095000e+03>, ptr %i.x, align 16, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  store <4 x double> <double 1.096000e+03, double 1.097000e+03, double 1.098000e+03, double 1.099000e+03>, ptr %i.y, align 16, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store double 0.000000e+00, ptr %i.z, align 16, !tbaa !10
  %i.aa = call i64 @cblas_idamin(i32 noundef 50, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 736) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_negative_step_2_N_50_run() #0 {
iter.check:
  %i.a = alloca [100 x double], align 16          ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x double> <double -1.000000e+03, double -1.001000e+03, double -1.002000e+03, double -1.003000e+03>, ptr %i.a, align 16, !tbaa !10
  store <4 x double> <double -1.004000e+03, double -1.005000e+03, double -1.006000e+03, double -1.007000e+03>, ptr %i.b, align 16, !tbaa !10
  store <4 x double> <double -1.008000e+03, double -1.009000e+03, double -1.010000e+03, double -1.011000e+03>, ptr %i.c, align 16, !tbaa !10
  store <4 x double> <double -1.012000e+03, double -1.013000e+03, double -1.014000e+03, double -1.015000e+03>, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x double> <double -1.016000e+03, double -1.017000e+03, double -1.018000e+03, double -1.019000e+03>, ptr %i.e, align 16, !tbaa !10
  store <4 x double> <double -1.020000e+03, double -1.021000e+03, double -1.022000e+03, double -1.023000e+03>, ptr %i.f, align 16, !tbaa !10
  store <4 x double> <double -1.024000e+03, double -1.025000e+03, double -1.026000e+03, double -1.027000e+03>, ptr %i.g, align 16, !tbaa !10
  store <4 x double> <double -1.028000e+03, double -1.029000e+03, double -1.030000e+03, double -1.031000e+03>, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <4 x double> <double -1.032000e+03, double -1.033000e+03, double -1.034000e+03, double -1.035000e+03>, ptr %i.i, align 16, !tbaa !10
  store <4 x double> <double -1.036000e+03, double -1.037000e+03, double -1.038000e+03, double -1.039000e+03>, ptr %i.j, align 16, !tbaa !10
  store <4 x double> <double -1.040000e+03, double -1.041000e+03, double -1.042000e+03, double -1.043000e+03>, ptr %i.k, align 16, !tbaa !10
  store <4 x double> <double -1.044000e+03, double -1.045000e+03, double -1.046000e+03, double -1.047000e+03>, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <4 x double> <double -1.048000e+03, double -1.049000e+03, double -1.050000e+03, double -1.051000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double -1.052000e+03, double -1.053000e+03, double -1.054000e+03, double -1.055000e+03>, ptr %i.n, align 16, !tbaa !10
  store <4 x double> <double -1.056000e+03, double -1.057000e+03, double -1.058000e+03, double -1.059000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double -1.060000e+03, double -1.061000e+03, double -1.062000e+03, double -1.063000e+03>, ptr %i.p, align 16, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store <4 x double> <double -1.064000e+03, double -1.065000e+03, double -1.066000e+03, double -1.067000e+03>, ptr %i.q, align 16, !tbaa !10
  store <4 x double> <double -1.068000e+03, double -1.069000e+03, double -1.070000e+03, double -1.071000e+03>, ptr %i.r, align 16, !tbaa !10
  store <4 x double> <double -1.072000e+03, double -1.073000e+03, double -1.074000e+03, double -1.075000e+03>, ptr %i.s, align 16, !tbaa !10
  store <4 x double> <double -1.076000e+03, double -1.077000e+03, double -1.078000e+03, double -1.079000e+03>, ptr %i.t, align 16, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store <4 x double> <double -1.080000e+03, double -1.081000e+03, double -1.082000e+03, double -1.083000e+03>, ptr %i.u, align 16, !tbaa !10
  store <4 x double> <double -1.084000e+03, double -1.085000e+03, double -1.086000e+03, double -1.087000e+03>, ptr %i.v, align 16, !tbaa !10
  store <4 x double> <double -1.088000e+03, double -1.089000e+03, double -1.090000e+03, double -1.091000e+03>, ptr %i.w, align 16, !tbaa !10
  store <4 x double> <double -1.092000e+03, double -1.093000e+03, double -1.094000e+03, double -1.095000e+03>, ptr %i.x, align 16, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  store <4 x double> <double -1.096000e+03, double -1.097000e+03, double -1.098000e+03, double -1.099000e+03>, ptr %i.y, align 16, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store double -1.000000e+00, ptr %i.z, align 16, !tbaa !10
  %i.aa = call i64 @cblas_idamin(i32 noundef 50, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 753) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_min_idx_in_vec_tail_run() #0 {
iter.check:
  %i.a = alloca [100 x double], align 16          ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x double> <double 1.000000e+03, double 1.001000e+03, double 1.002000e+03, double 1.003000e+03>, ptr %i.a, align 16, !tbaa !10
  store <4 x double> <double 1.004000e+03, double 1.005000e+03, double 1.006000e+03, double 1.007000e+03>, ptr %i.b, align 16, !tbaa !10
  store <4 x double> <double 1.008000e+03, double 1.009000e+03, double 1.010000e+03, double 1.011000e+03>, ptr %i.c, align 16, !tbaa !10
  store <4 x double> <double 1.012000e+03, double 1.013000e+03, double 1.014000e+03, double 1.015000e+03>, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x double> <double 1.016000e+03, double 1.017000e+03, double 1.018000e+03, double 1.019000e+03>, ptr %i.e, align 16, !tbaa !10
  store <4 x double> <double 1.020000e+03, double 1.021000e+03, double 1.022000e+03, double 1.023000e+03>, ptr %i.f, align 16, !tbaa !10
  store <4 x double> <double 1.024000e+03, double 1.025000e+03, double 1.026000e+03, double 1.027000e+03>, ptr %i.g, align 16, !tbaa !10
  store <4 x double> <double 1.028000e+03, double 1.029000e+03, double 1.030000e+03, double 1.031000e+03>, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <4 x double> <double 1.032000e+03, double 1.033000e+03, double 1.034000e+03, double 1.035000e+03>, ptr %i.i, align 16, !tbaa !10
  store <4 x double> <double 1.036000e+03, double 1.037000e+03, double 1.038000e+03, double 1.039000e+03>, ptr %i.j, align 16, !tbaa !10
  store <4 x double> <double 1.040000e+03, double 1.041000e+03, double 1.042000e+03, double 1.043000e+03>, ptr %i.k, align 16, !tbaa !10
  store <4 x double> <double 1.044000e+03, double 1.045000e+03, double 1.046000e+03, double 1.047000e+03>, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <4 x double> <double 1.048000e+03, double 1.049000e+03, double 1.050000e+03, double 1.051000e+03>, ptr %i.m, align 16, !tbaa !10
  store <4 x double> <double 1.052000e+03, double 1.053000e+03, double 1.054000e+03, double 1.055000e+03>, ptr %i.n, align 16, !tbaa !10
  store <4 x double> <double 1.056000e+03, double 1.057000e+03, double 1.058000e+03, double 1.059000e+03>, ptr %i.o, align 16, !tbaa !10
  store <4 x double> <double 1.060000e+03, double 1.061000e+03, double 1.062000e+03, double 1.063000e+03>, ptr %i.p, align 16, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store <4 x double> <double 1.064000e+03, double 1.065000e+03, double 1.066000e+03, double 1.067000e+03>, ptr %i.q, align 16, !tbaa !10
  store <4 x double> <double 1.068000e+03, double 1.069000e+03, double 1.070000e+03, double 1.071000e+03>, ptr %i.r, align 16, !tbaa !10
  store <4 x double> <double 1.072000e+03, double 1.073000e+03, double 1.074000e+03, double 1.075000e+03>, ptr %i.s, align 16, !tbaa !10
  store <4 x double> <double 1.076000e+03, double 1.077000e+03, double 1.078000e+03, double 1.079000e+03>, ptr %i.t, align 16, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store <4 x double> <double 1.080000e+03, double 1.081000e+03, double 1.082000e+03, double 1.083000e+03>, ptr %i.u, align 16, !tbaa !10
  store <4 x double> <double 1.084000e+03, double 1.085000e+03, double 1.086000e+03, double 1.087000e+03>, ptr %i.v, align 16, !tbaa !10
  store <4 x double> <double 1.088000e+03, double 1.089000e+03, double 1.090000e+03, double 1.091000e+03>, ptr %i.w, align 16, !tbaa !10
  store <4 x double> <double 1.092000e+03, double 1.093000e+03, double 1.094000e+03, double 1.095000e+03>, ptr %i.x, align 16, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  store <4 x double> <double 1.096000e+03, double 1.097000e+03, double 1.098000e+03, double 1.099000e+03>, ptr %i.y, align 16, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  store double 0.000000e+00, ptr %i.z, align 16, !tbaa !10
  %i.aa = call i64 @cblas_idamin(i32 noundef 50, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32
  call void @assert_equal(i64 noundef 49, i64 noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 770) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @__ctest_idamin_c_api_min_idx_in_vec_tail_inc_1_run() #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #7 ; 15 uses
  store <4 x double> <double 1.000000e+03, double 1.001000e+03, double 1.002000e+03, double 1.003000e+03>, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x double> <double 1.004000e+03, double 1.005000e+03, double 1.006000e+03, double 1.007000e+03>, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x double> <double 1.008000e+03, double 1.009000e+03, double 1.010000e+03, double 1.011000e+03>, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x double> <double 1.012000e+03, double 1.013000e+03, double 1.014000e+03, double 1.015000e+03>, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x double> <double 1.016000e+03, double 1.017000e+03, double 1.018000e+03, double 1.019000e+03>, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <4 x double> <double 1.020000e+03, double 1.021000e+03, double 1.022000e+03, double 1.023000e+03>, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <4 x double> <double 1.024000e+03, double 1.025000e+03, double 1.026000e+03, double 1.027000e+03>, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x double> <double 1.028000e+03, double 1.029000e+03, double 1.030000e+03, double 1.031000e+03>, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store <4 x double> <double 1.032000e+03, double 1.033000e+03, double 1.034000e+03, double 1.035000e+03>, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store <4 x double> <double 1.036000e+03, double 1.037000e+03, double 1.038000e+03, double 1.039000e+03>, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store <4 x double> <double 1.040000e+03, double 1.041000e+03, double 1.042000e+03, double 1.043000e+03>, ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <4 x double> <double 1.044000e+03, double 1.045000e+03, double 1.046000e+03, double 1.047000e+03>, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store <2 x double> <double 1.048000e+03, double 0.000000e+00>, ptr %i.m, align 8, !tbaa !10
  %i.n = tail call i64 @cblas_idamin(i32 noundef 50, ptr noundef nonnull %i.a, i32 noundef 1) #6
  tail call void @free(ptr noundef %i.a) #6
  %sext = shl i64 %i.n, 32
  %i.o = ashr exact i64 %sext, 32
  tail call void @assert_equal(i64 noundef 49, i64 noundef %i.o, ptr noundef nonnull @.str, i32 noundef 788) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v7f64.p0(<7 x double>, ptr captures(none), <7 x i1>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
end_hunk_1
