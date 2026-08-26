Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/csp?download=true
inline.NumInlined: 32
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@av_csp_trc_func_inv_from_id:bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @trc_inv_funcs, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp eq i32 %0, 256
  %trc_v_log_inv. = select i1 %or.cond, ptr @trc_v_log_inv, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %trc_v_log_inv., %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @av_csp_itu_eotf(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 18
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @eotf_funcs, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @av_csp_itu_eotf_inv(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 18
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @eotf_inv_funcs, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_sub_q(i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @trc_bt709(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp nsz olt double %0, f0x3F927CBD51448945
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = fmul nnan nsz double %0, 4.500000e+00
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call nsz double @llvm.pow.f64(double %0, double 4.500000e-01)
  %i.e = tail call nsz double @llvm.fmuladd.f64(double %i.d, double f0x3FF196B844FBE3DC, double f0xBFB96B844FBE3DC0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.f = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.c, %bb.c ], [ %i.e, %bb.d ]
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_gamma22(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  %i.b = tail call nsz double @llvm.pow.f64(double %0, double f0x3FDD1745D1745D17)
  %i.c = select nsz i1 %i.a, double 0.000000e+00, double %i.b
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_gamma28(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  %i.b = tail call nsz double @llvm.pow.f64(double %0, double f0x3FD6DB6DB6DB6DB7)
  %i.c = select nsz i1 %i.a, double 0.000000e+00, double %i.b
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @trc_smpte240M(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp nsz olt double %0, 2.280000e-02
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = fmul nnan nsz double %0, 4.000000e+00
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call nsz double @llvm.pow.f64(double %0, double 4.500000e-01)
  %i.e = tail call nsz double @llvm.fmuladd.f64(double %i.d, double 1.111500e+00, double f0xBFBC8B4395810620)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.f = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.c, %bb.c ], [ %i.e, %bb.d ]
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_linear(double noundef returned %0) #0 {
bb.a:
  ret double %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_log(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 1.000000e-02
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call nsz double @llvm.log10.f64(double %0)
  %i.c = fmul nsz double %i.b, 5.000000e-01
  %i.d = fadd nsz double %i.c, 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi nsz double [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_log_sqrt(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, f0x3F69E7C6E42DA417
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call nsz double @llvm.log10.f64(double %0)
  %i.c = fdiv nsz double %i.b, 2.500000e+00
  %i.d = fadd nsz double %i.c, 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi nsz double [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @trc_iec61966_2_4(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz ugt double %0, f0xBF927CBD51448945
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fneg nsz double %0
  %i.c = tail call nsz double @llvm.pow.f64(double %i.b, double 4.500000e-01)
  %i.d = tail call nsz double @llvm.fmuladd.f64(double %i.c, double f0xBFF196B844FBE3DC, double f0x3FB96B844FBE3DC0)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp nsz olt double %0, f0x3F927CBD51448945
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fmul nnan nsz double %0, 4.500000e+00
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call nsz double @llvm.pow.f64(double %0, double 4.500000e-01)
  %i.h = tail call nsz double @llvm.fmuladd.f64(double %i.g, double f0x3FF196B844FBE3DC, double f0xBFB96B844FBE3DC0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.i = phi nsz double [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.h, %bb.e ]
  ret double %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @trc_bt1361(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz ugt double %0, -4.500000e-03
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nnan nsz double %0, -4.000000e+00
  %i.c = tail call nsz double @llvm.pow.f64(double %i.b, double 4.500000e-01)
  %i.d = tail call nsz double @llvm.fmuladd.f64(double %i.c, double f0x3FF196B844FBE3DC, double f0x3FB96B844FBE3DC0)
  %i.e = fmul nsz double %i.d, -2.500000e-01
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = fcmp nsz olt double %0, f0x3F927CBD51448945
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = fmul nnan nsz double %0, 4.500000e+00
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call nsz double @llvm.pow.f64(double %0, double 4.500000e-01)
  %i.i = tail call nsz double @llvm.fmuladd.f64(double %i.h, double f0x3FF196B844FBE3DC, double f0xBFB96B844FBE3DC0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.j = phi nsz double [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ %i.i, %bb.e ]
  ret double %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @trc_iec61966_2_1(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp nsz olt double %0, 3.130800e-03
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = fmul nnan nsz double %0, 1.292000e+01
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call nsz double @llvm.pow.f64(double %0, double f0x3FDAAAAAAAAAAAAB)
  %i.e = tail call nsz double @llvm.fmuladd.f64(double %i.d, double 1.055000e+00, double f0xBFAC28F5C28F5C20)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.f = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.c, %bb.c ], [ %i.e, %bb.d ]
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @trc_smpte_st2084(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fdiv nsz double %0, 1.000000e+04
  %i.c = tail call nsz double @llvm.pow.f64(double %i.b, double f0x3FC4640000000000)
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> <double f0x4032DA0000000000, double 1.868750e+01>, <2 x double> <double f0x3FEAC00000000000, double 1.000000e+00>) ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = extractelement <2 x double> %i.f, i64 1
  %i.i = fdiv nsz double %i.g, %i.h
  %i.j = tail call nsz double @llvm.pow.f64(double %i.i, double f0x4053B60000000000)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi nsz double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_smpte_st428_1(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nsz double %0, f0x3FED546BBCEEBE8C
  %i.c = tail call nsz double @llvm.pow.f64(double %i.b, double f0x3FD89D89D89D89D8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi nsz double [ %i.c, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @trc_arib_std_b67(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp nsz ugt double %0, f0x3FB5555555555555
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fmul nnan nsz double %0, 3.000000e+00
  %i.d = tail call nsz double @llvm.sqrt.f64(double %i.c)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call nsz double @llvm.fmuladd.f64(double %0, double 1.200000e+01, double f0xBFD23803FD659BE6)
  %i.f = tail call nsz double @llvm.log.f64(double %i.e)
  %i.g = tail call nsz double @llvm.fmuladd.f64(double %i.f, double f0x3FC6E3FE014D320D, double f0x3FE1EAC9E840F18D)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.h = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.d, %bb.c ], [ %i.g, %bb.d ]
  ret double %i.h
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_v_log(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 1.000000e-02
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call nsz double @llvm.fmuladd.f64(double %0, double 5.600000e+00, double 1.250000e-01)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = fadd nsz double %0, f0x3F81E108C3F3E037
  %i.d = tail call nsz double @llvm.log10.f64(double %i.c)
  %i.e = tail call nsz double @llvm.fmuladd.f64(double %i.d, double 2.415140e-01, double 5.982060e-01)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi nsz double [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_bt709_inv(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp nsz olt double %0, f0x3FB4CC54FB6D1A6E
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = fdiv nsz double %0, 4.500000e+00
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = fadd nsz double %0, f0x3FB96B844FBE3DC0
  %i.e = fdiv nsz double %i.d, f0x3FF196B844FBE3DC
  %i.f = tail call nsz double @llvm.pow.f64(double %i.e, double f0x4001C71C71C71C72)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.g = phi nsz double [ 0.000000e+00, %bb.a ], [ %i.c, %bb.c ], [ %i.f, %bb.d ]
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_gamma22_inv(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  %i.b = tail call nsz double @llvm.pow.f64(double %0, double 2.200000e+00)
  %i.c = select nsz i1 %i.a, double 0.000000e+00, double %i.b
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @trc_gamma28_inv(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  %i.b = tail call nsz double @llvm.pow.f64(double %0, double 2.800000e+00)
  %i.c = select nsz i1 %i.a, double 0.000000e+00, double %i.b
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @trc_smpte240M_inv(double noundef %0) #0 {
bb.a:
  %i.a = fcmp nsz olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp nsz olt double %0, 9.120000e-02
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = fmul nnan nsz double %0, 2.500000e-01
end_hunk_0
