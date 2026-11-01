Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/vmath?download=true
inline.NumInlined: 309
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0
@.str.54 = private unnamed_addr constant [7 x i8] c"with_w\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"with_xy\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"with_r\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"with_g\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"with_b\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"with_a\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"from_hex\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"from_vec3\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"from_vec3i\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"to_hex\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"to_vec3\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"to_vec3i\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"to_rgb565\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"ansi_fg\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"ansi_bg\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"rgba\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"alpha_blend\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"expected %d arguments, got %d\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"vec2(%.4f, %.4f)\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"cannot normalize zero vector\00", align 1
@.str.79 = private unnamed_addr constant [75 x i8] c"mat3x3(%.4f, %.4f, %.4f,\0A       %.4f, %.4f, %.4f,\0A       %.4f, %.4f, %.4f)\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"expected a tuple of length 2\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"matrix is not invertible\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"vec2i(%d, %d)\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"vec3i(%d, %d, %d)\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"vec4i(%d, %d, %d, %d)\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"vec3(%.4f, %.4f, %.4f)\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"color32 values must be between 0 and 255\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"color32(%d, %d, %d, %d)\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"#%2hhx%2hhx%2hhx\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"invalid hex color format\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"#%2hhx%2hhx%2hhx%2hhx\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"#%02x%02x%02x\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"#%02x%02x%02x%02x\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"\1B[38;2;%d;%d;%dm%v\1B[0m\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"\1B[48;2;%d;%d;%dm%v\1B[0m\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @py_newvec2(ptr nofree noundef writeonly captures(none) initializes((0, 3), (8, 16)) %0, <2 x float> %1) local_unnamed_addr #0 {
bb.a:
  store i16 72, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.a, align 2, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %1, ptr %i.b, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @py_tovec2(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.a, align 8, !tbaa !13
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @py_newvec2i(ptr nofree noundef writeonly captures(none) initializes((0, 3), (8, 16)) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  store i16 74, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.a, align 2, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @py_tovec2i(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !13
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @py_newvec3(ptr nofree noundef writeonly captures(none) initializes((0, 3), (8, 20)) %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  store i16 73, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.a, align 2, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %1, ptr %i.b, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @py_tovec3(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !13
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @py_newvec3i(ptr nofree noundef writeonly captures(none) initializes((0, 3), (8, 20)) %0, i64 %1, i32 %2) local_unnamed_addr #3 {
bb.a:
  store i16 75, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.a, align 2, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i32 } @py_tovec3i(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !13
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.22.0.copyload, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @py_newvec4i(ptr nofree noundef writeonly captures(none) initializes((0, 3), (8, 24)) %0, i64 %1, i64 %2) local_unnamed_addr #3 {
bb.a:
  store i16 76, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.a, align 2, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @py_tovec4i(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define ptr @py_newmat3x3(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @py_newobject(ptr noundef %0, i16 noundef signext 77, i32 noundef 0, i32 noundef 36) #16
  ret ptr %i.a
}

declare ptr @py_newobject(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @py_tomat3x3(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @py_touserdata(ptr noundef %0) #16
  ret ptr %i.a
}

declare ptr @py_touserdata(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @py_newcolor32(ptr nofree noundef writeonly captures(none) initializes((0, 3), (8, 12)) %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  store i16 78, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.a, align 2, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @py_tocolor32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 8, !tbaa !13
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @c11_color32_premult(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = uitofp i8 %i.b to float
  %2 = fdiv float %1, 2.550000e+02                ; 3 uses
  %3 = load i8, ptr %0, align 4, !tbaa !13
  %4 = uitofp i8 %3 to float
  %5 = fmul float %2, %4
  %6 = fptoui float %5 to i8
  store i8 %6, ptr %0, align 4, !tbaa !13
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = uitofp i8 %8 to float
  %i.d = fmul float %2, %9
  %i.e = fptoui float %i.d to i8
  store i8 %i.e, ptr %7, align 1, !tbaa !13
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %11 = load i8, ptr %10, align 2, !tbaa !13
  %12 = uitofp i8 %11 to float
  %i.f = fmul float %2, %12
  %i.g = fptoui float %i.f to i8
  store i8 %i.g, ptr %10, align 2, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @pk__add_module_vmath() local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @py_newmodule(ptr noundef nonnull @.str) #16 ; 16 uses
  %i.b = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.1, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #16 ; 2 uses
  %i.c = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.2, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #16 ; 2 uses
  %i.d = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.3, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #16 ; 2 uses
  %i.e = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.4, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #16 ; 2 uses
  %i.f = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.5, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #16 ; 2 uses
  %i.g = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.6, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #16 ; 2 uses
  %i.h = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.7, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #16 ; 2 uses
  %i.i = tail call ptr @py_name(ptr noundef nonnull @.str.1) #16
  %i.j = tail call ptr @py_tpobject(i16 noundef signext %i.b) #16
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.i, ptr noundef %i.j) #16
  %i.k = tail call ptr @py_name(ptr noundef nonnull @.str.2) #16
  %i.l = tail call ptr @py_tpobject(i16 noundef signext %i.c) #16
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.k, ptr noundef %i.l) #16
  %i.m = tail call ptr @py_name(ptr noundef nonnull @.str.3) #16
  %i.n = tail call ptr @py_tpobject(i16 noundef signext %i.d) #16
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.m, ptr noundef %i.n) #16
  %i.o = tail call ptr @py_name(ptr noundef nonnull @.str.4) #16
  %i.p = tail call ptr @py_tpobject(i16 noundef signext %i.e) #16
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.o, ptr noundef %i.p) #16
  %i.q = tail call ptr @py_name(ptr noundef nonnull @.str.5) #16
  %i.r = tail call ptr @py_tpobject(i16 noundef signext %i.f) #16
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.q, ptr noundef %i.r) #16
  %i.s = tail call ptr @py_name(ptr noundef nonnull @.str.6) #16
  %i.t = tail call ptr @py_tpobject(i16 noundef signext %i.g) #16
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.s, ptr noundef %i.t) #16
  %i.u = tail call ptr @py_name(ptr noundef nonnull @.str.7) #16
  %i.v = tail call ptr @py_tpobject(i16 noundef signext %i.h) #16
  tail call void @py_setdict(ptr noundef %i.a, ptr noundef %i.u, ptr noundef %i.v) #16
  %i.w = icmp eq i16 %i.b, 72
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #17 ; 0 uses
  %i.z = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.aa = icmp eq i16 %i.c, 73
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #17 ; 0 uses
  %i.ad = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ae = icmp eq i16 %i.d, 74
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11) #17 ; 0 uses
  %i.ah = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = icmp eq i16 %i.e, 75
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12) #17 ; 0 uses
  %i.al = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.am = icmp eq i16 %i.f, 76
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13) #17 ; 0 uses
  %i.ap = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #18
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aq = icmp eq i16 %i.g, 77
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14) #17 ; 0 uses
  %i.at = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = icmp eq i16 %i.h, 78
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17 ; 0 uses
  %i.ax = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr @__new__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 72, ptr noundef %i.ay, ptr noundef nonnull @vec2__new__) #16
  %i.az = load ptr, ptr @__add__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 72, ptr noundef %i.az, ptr noundef nonnull @vec2__add__) #16
  %i.ba = load ptr, ptr @__sub__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 72, ptr noundef %i.ba, ptr noundef nonnull @vec2__sub__) #16
  %i.bb = load ptr, ptr @__mul__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 72, ptr noundef %i.bb, ptr noundef nonnull @vec2__mul__) #16
  %i.bc = load ptr, ptr @__truediv__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 72, ptr noundef %i.bc, ptr noundef nonnull @vec2__truediv__) #16
  %i.bd = load ptr, ptr @__repr__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 72, ptr noundef %i.bd, ptr noundef nonnull @vec2__repr__) #16
  %i.be = load ptr, ptr @__eq__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 72, ptr noundef %i.be, ptr noundef nonnull @vec2__eq__) #16
  %i.bf = load ptr, ptr @__ne__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 72, ptr noundef %i.bf, ptr noundef nonnull @vec2__ne__) #16
  tail call void @py_bindmethod(i16 noundef signext 72, ptr noundef nonnull @.str.16, ptr noundef nonnull @vec2_dot) #16
  tail call void @py_bindmethod(i16 noundef signext 72, ptr noundef nonnull @.str.17, ptr noundef nonnull @vec2_length) #16
  tail call void @py_bindmethod(i16 noundef signext 72, ptr noundef nonnull @.str.18, ptr noundef nonnull @vec2_length_squared) #16
  tail call void @py_bindmethod(i16 noundef signext 72, ptr noundef nonnull @.str.19, ptr noundef nonnull @vec2_normalize) #16
  tail call void @py_bindmethod(i16 noundef signext 72, ptr noundef nonnull @.str.20, ptr noundef nonnull @vec2_rotate) #16
  %i.bg = tail call ptr @py_tpobject(i16 noundef signext 72) #16
  %i.bh = tail call ptr @py_name(ptr noundef nonnull @.str.21) #16
  %i.bi = tail call ptr @py_emplacedict(ptr noundef %i.bg, ptr noundef %i.bh) #16 ; 3 uses
  store i16 72, ptr %i.bi, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 0, ptr %i.bj, align 2, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store <2 x float> zeroinitializer, ptr %i.bk, align 8, !tbaa !13
  %i.bl = tail call ptr @py_tpobject(i16 noundef signext 72) #16
  %i.bm = tail call ptr @py_name(ptr noundef nonnull @.str.22) #16
  %i.bn = tail call ptr @py_emplacedict(ptr noundef %i.bl, ptr noundef %i.bm) #16 ; 3 uses
  store i16 72, ptr %i.bn, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 0, ptr %i.bo, align 2, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.bp, align 8, !tbaa !13
  %i.bq = tail call ptr @py_tpobject(i16 noundef signext 72) #16
  %i.br = tail call ptr @py_name(ptr noundef nonnull @.str.23) #16
  %i.bs = tail call ptr @py_emplacedict(ptr noundef %i.bq, ptr noundef %i.br) #16 ; 3 uses
  store i16 72, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 0, ptr %i.bt, align 2, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.bu, align 8, !tbaa !13
  %i.bv = tail call ptr @py_tpobject(i16 noundef signext 72) #16
  %i.bw = tail call ptr @py_name(ptr noundef nonnull @.str.24) #16
  %i.bx = tail call ptr @py_emplacedict(ptr noundef %i.bv, ptr noundef %i.bw) #16 ; 3 uses
  store i16 72, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i8 0, ptr %i.by, align 2, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.bz, align 8, !tbaa !13
  %i.ca = tail call ptr @py_tpobject(i16 noundef signext 72) #16
  %i.cb = tail call ptr @py_name(ptr noundef nonnull @.str.25) #16
  %i.cc = tail call ptr @py_emplacedict(ptr noundef %i.ca, ptr noundef %i.cb) #16 ; 3 uses
  store i16 72, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 0, ptr %i.cd, align 2, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.ce, align 8, !tbaa !13
  %i.cf = tail call ptr @py_tpobject(i16 noundef signext 72) #16
  %i.cg = tail call ptr @py_name(ptr noundef nonnull @.str.26) #16
  %i.ch = tail call ptr @py_emplacedict(ptr noundef %i.cf, ptr noundef %i.cg) #16 ; 3 uses
  store i16 72, ptr %i.ch, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 0, ptr %i.ci, align 2, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.cj, align 8, !tbaa !13
  tail call void @py_bindstaticmethod(i16 noundef signext 72, ptr noundef nonnull @.str.27, ptr noundef nonnull @vec2_angle_STATIC) #16
  tail call void @py_bindstaticmethod(i16 noundef signext 72, ptr noundef nonnull @.str.28, ptr noundef nonnull @vec2_smoothdamp_STATIC) #16
  tail call void @py_bindproperty(i16 noundef signext 72, ptr noundef nonnull @.str.29, ptr noundef nonnull @vec2__x, ptr noundef null) #16
  tail call void @py_bindproperty(i16 noundef signext 72, ptr noundef nonnull @.str.30, ptr noundef nonnull @vec2__y, ptr noundef null) #16
  tail call void @py_bindmethod(i16 noundef signext 72, ptr noundef nonnull @.str.31, ptr noundef nonnull @vec2__with_x) #16
  tail call void @py_bindmethod(i16 noundef signext 72, ptr noundef nonnull @.str.32, ptr noundef nonnull @vec2__with_y) #16
  tail call void @py_bindmethod(i16 noundef signext 72, ptr noundef nonnull @.str.33, ptr noundef nonnull @vec2__with_z) #16
  %i.ck = load ptr, ptr @__new__, align 8, !tbaa !27
  tail call void @py_bindmagic(i16 noundef signext 77, ptr noundef %i.ck, ptr noundef nonnull @mat3x3__new__) #16
  %i.cl = load ptr, ptr @__repr__, align 8, !tbaa !27
end_hunk_0
