Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stdlib?download=true
inline.NumInlined: 8
begin_hunk_0_@SDL_asin_REAL:bb.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_asinf_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @asinf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @SDL_ceil_REAL(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.ceil.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @SDL_ceilf_REAL(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.ceil.f32(float %0)
  ret float %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @SDL_copysign_REAL(double noundef %0, double noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.copysign.f64(double %0, double %1)
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @SDL_copysignf_REAL(float noundef %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.copysign.f32(float %0, float %1)
  ret float %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_cos_REAL(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @cos(double noundef %0) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_cosf_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @cosf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_exp_REAL(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @exp(double noundef %0) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_expf_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @expf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @SDL_fabs_REAL(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @SDL_fabsf_REAL(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0)
  ret float %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @SDL_floor_REAL(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.floor.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @SDL_floorf_REAL(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.floor.f32(float %0)
  ret float %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @SDL_trunc_REAL(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.trunc.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @SDL_truncf_REAL(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.trunc.f32(float %0)
  ret float %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_fmod_REAL(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @fmod(double noundef %0, double noundef %1) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_fmodf_REAL(float noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @fmodf(float noundef %0, float noundef %1) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 -1, 2) i32 @SDL_isinf_REAL(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) #11
  %i.b = fcmp oeq double %i.a, +inf
  %i.c = bitcast double %0 to i64
  %i.d = icmp slt i64 %i.c, 0
  %i.e = select i1 %i.d, i32 -1, i32 1
  %i.f = select i1 %i.b, i32 %i.e, i32 0
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 -1, 2) i32 @SDL_isinff_REAL(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0) #11
  %i.b = fcmp oeq float %i.a, +inf
  %i.c = bitcast float %0 to i32
  %.inv = icmp sgt i32 %i.c, -1
  %i.d = select i1 %.inv, i32 1, i32 -1
  %i.e = select i1 %i.b, i32 %i.d, i32 0
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isnan_REAL(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isnanf_REAL(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp uno float %0, 0.000000e+00
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_log_REAL(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @log(double noundef %0) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_logf_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @logf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_log10_REAL(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @log10(double noundef %0) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_log10f_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @log10f(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @log10f(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden double @SDL_modf_REAL(double noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call { double, double } @llvm.modf.f64(double %0) ; 2 uses
  %i.b = extractvalue { double, double } %i.a, 0
  %i.c = extractvalue { double, double } %i.a, 1
  store double %i.c, ptr %1, align 8
  ret double %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden float @SDL_modff_REAL(float noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call { float, float } @llvm.modf.f32(float %0) ; 2 uses
  %i.b = extractvalue { float, float } %i.a, 0
  %i.c = extractvalue { float, float } %i.a, 1
  store float %i.c, ptr %1, align 4
  ret float %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.modf.f32(float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_pow_REAL(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @pow(double noundef %0, double noundef %1) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_powf_REAL(float noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @powf(float noundef %0, float noundef %1) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @SDL_round_REAL(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.round.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @SDL_roundf_REAL(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.round.f32(float %0)
  ret float %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #3

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_lround_REAL(double noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @lround(double noundef %0) #10
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_lroundf_REAL(float noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @lroundf(float noundef %0) #10
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @lroundf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_scalbn_REAL(double noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @scalbn(double noundef %0, i32 noundef %1) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @scalbn(double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_scalbnf_REAL(float noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @scalbnf(float noundef %0, i32 noundef %1) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @scalbnf(float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_sin_REAL(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @sin(double noundef %0) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_sinf_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @sinf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_sqrt_REAL(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @sqrt(double noundef %0) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_sqrtf_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @sqrtf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_tan_REAL(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @tan(double noundef %0) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_tanf_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @tanf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @tanf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, -2147483648) i32 @SDL_abs_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isalpha_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, -33
  %i.b = add i32 %i.a, -65
  %narrow = icmp ult i32 %i.b, 26
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isupper_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -65
  %i.b = icmp ult i32 %i.a, 26
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_islower_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -97
  %i.b = icmp ult i32 %i.a, 26
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isalnum_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, -33
  %i.b = add i32 %i.a, -65
  %narrow.i = icmp ult i32 %i.b, 26
  %i.c = add i32 %0, -48
  %i.d = icmp ult i32 %i.c, 10
  %narrow = or i1 %i.d, %narrow.i
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isdigit_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -48
  %i.b = icmp ult i32 %i.a, 10
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isxdigit_REAL(i32 noundef %0) local_unnamed_addr #2 {
switch.lookup:
  %switch.tableidx = add i32 %0, -65              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 38
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  %i.b = add i32 %0, -48
  %i.c = icmp ult i32 %i.b, 10
  %narrow = or i1 %or.cond, %i.c
  %i.d = zext i1 %narrow to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_ispunct_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -127
  %i.b = icmp ult i32 %i.a, -94
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, 95
  %i.d = add nsw i32 %i.c, -91
  %narrow.i.i = icmp ult i32 %i.d, -26
  %i.e = add nsw i32 %0, -58
  %i.f = icmp ult i32 %i.e, -10
  %narrow.i.not = and i1 %i.f, %narrow.i.i
  %i.g = zext i1 %narrow.i.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isgraph_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -33
  %i.b = icmp ult i32 %i.a, 94
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isspace_REAL(i32 noundef %0) local_unnamed_addr #2 {
switch.lookup:
  %switch.tableidx = add i32 %0, -9               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388635, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  %i.b = icmp eq i32 %0, 11
  %narrow = or i1 %or.cond, %i.b
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isprint_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -32
  %i.b = icmp ult i32 %i.a, 95
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_iscntrl_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ult i32 %0, 32
  %i.a = icmp eq i32 %0, 127
  %i.b = or i1 %or.cond, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @SDL_toupper_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -97
  %or.cond = icmp ult i32 %i.a, 26
  %i.b = add nsw i32 %0, -32
  %i.c = select i1 %or.cond, i32 %i.b, i32 %0
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @SDL_tolower_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -65
  %or.cond = icmp ult i32 %i.a, 26
  %i.b = add nuw nsw i32 %0, 32
  %i.c = select i1 %or.cond, i32 %i.b, i32 %0
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @SDL_isblank_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %0, 32
  %i.b = icmp eq i32 %0, 9
  %i.c = or i1 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_aligned_alloc_REAL(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %0, i64 8) ; 5 uses
  %i.a = urem i64 %1, %spec.store.select
  %i.b = sub nuw i64 %spec.store.select, %i.a     ; 2 uses
  %i.c = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %spec.store.select) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 8) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.h, i64 %i.b) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.k) #10 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = urem i64 %i.n, %spec.store.select
  %i.p = sub nuw i64 %spec.store.select, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  store ptr %i.l, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.b, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.q, %bb.e ], [ null, %bb.d ]
  ret ptr %.1
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define hidden void @SDL_aligned_free_REAL(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %.0.copyload = load ptr, ptr %i.a, align 1
  tail call void @SDL_free_REAL(ptr noundef %.0.copyload) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
end_hunk_0
