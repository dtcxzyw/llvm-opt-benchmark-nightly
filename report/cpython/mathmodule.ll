inline.NumInlined: 174
inline.NumDeleted: 42
begin_hunk_0_@vector_norm:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.05875.a = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.am, %.lr.ph ] ; 2 uses
  %.172 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 3 uses
  %4 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %10, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader ], [ %niter.next.1, %.lr.ph ]
  %i.w = getelementptr [8 x i8], ptr %1, i64 %.172
  %i.x = load double, ptr %i.w, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@vector_norm:bb.a
  %i.z = fmul double %i.y, %i.y                   ; 3 uses
  %i.aa = fneg double %i.z
  %i.ab = tail call double @llvm.fma.f64(double %i.y, double %i.y, double %i.aa)
  %i.ac = fadd double %.05875.a, %i.z             ; 3 uses
  %i.ad = fsub double %.05875.a, %i.ac
  %i.ae = fadd double %i.z, %i.ad
  %5 = insertelement <2 x double> poison, double %i.ab, i64 0
  %6 = insertelement <2 x double> %5, double %i.ae, i64 1
  %7 = fadd <2 x double> %4, %6
  %i.af = getelementptr [8 x i8], ptr %1, i64 %.172
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !31
end_hunk_1
begin_hunk_2_@vector_norm:bb.a
  %i.am = fadd double %i.ac, %i.aj                ; 5 uses
  %i.an = fsub double %i.ac, %i.am
  %i.ao = fadd double %i.aj, %i.an
  %8 = insertelement <2 x double> poison, double %i.al, i64 0
  %9 = insertelement <2 x double> %8, double %i.ao, i64 1
  %10 = fadd <2 x double> %7, %9                  ; 3 uses
  %i.ap = add nuw nsw i64 %.172, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
end_hunk_2
begin_hunk_3_@vector_norm:bb.a
  %i.aw = fadd double %i.am, %i.at                ; 2 uses
  %i.ax = fsub double %i.am, %i.aw
  %i.ay = fadd double %i.at, %i.ax
  %11 = insertelement <2 x double> poison, double %i.av, i64 0
  %12 = insertelement <2 x double> %11, double %i.ay, i64 1
  %13 = fadd <2 x double> %10, %12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa97 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aw, %.lr.ph.epil.preheader ] ; 3 uses
  %.lcssa = phi <2 x double> [ %10, %._crit_edge.unr-lcssa ], [ %13, %.lr.ph.epil.preheader ] ; 3 uses
  %14 = fadd double %.lcssa97, -1.000000e+00
  %shift = shufflevector <2 x double> %.lcssa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %.lcssa
  %15 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.az = fadd double %15, %14
  %i.ba = tail call double @sqrt(double noundef %i.az) #17, !tbaa !6 ; 5 uses
  %i.bb = fneg double %i.ba                       ; 2 uses
  %i.bc = fmul double %i.ba, %i.bb                ; 3 uses
end_hunk_3
begin_hunk_4_@vector_norm:bb.a
  %i.bf = fadd double %.lcssa97, %i.bc            ; 2 uses
  %i.bg = fsub double %.lcssa97, %i.bf
  %i.bh = fadd double %i.bc, %i.bg
  %16 = insertelement <2 x double> poison, double %i.be, i64 0
  %17 = insertelement <2 x double> %16, double %i.bh, i64 1
  %18 = fadd <2 x double> %.lcssa, %17            ; 2 uses
  %i.bi = fadd double %i.bf, -1.000000e+00
  %shift93 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop94 = fadd <2 x double> %18, %shift93
  %19 = extractelement <2 x double> %foldExtExtBinop94, i64 0
  %i.bj = fadd double %i.bi, %19
  %i.bk = fmul double %i.ba, 2.000000e+00
  %i.bl = fdiv double %i.bj, %i.bk
  %i.bm = fadd double %i.ba, %i.bl
end_hunk_4
begin_hunk_5_@lanczos_sum:bb.a
  br i1 %i.a, label %.preheader.preheader, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %bb.a
  %i.b = fdiv double 0.000000e+00, %0
  %1 = insertelement <2 x double> poison, double %i.b, i64 0
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = fadd <2 x double> %2, <double 0x4215EA5143C1A49E, double -0.000000e+00>
  %4 = insertelement <2 x double> poison, double %0, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  %6 = fdiv <2 x double> %3, %5
  %7 = fadd <2 x double> %6, <double 0x4223FC7075F54C57, double 3.991680e+07>
  %8 = fdiv <2 x double> %7, %5
  %9 = fadd <2 x double> %8, <double 0x4220A132818AB61A, double 0x419CBD6980000000>
  %10 = fdiv <2 x double> %9, %5
  %11 = fadd <2 x double> %10, <double 0x4210B0B522E8261A, double 0x41A1FDA6B0000000>
  %12 = fdiv <2 x double> %11, %5
  %13 = fadd <2 x double> %12, <double 0x41F67FC1B3A5A1E8, double 0x4199187170000000>
  %14 = fdiv <2 x double> %13, %5
  %15 = fadd <2 x double> %14, <double 0x41D57418F5D3F33F, double 0x4185EEB690000000>
  %16 = fdiv <2 x double> %15, %5
  %17 = fadd <2 x double> %16, <double 0x41ADAB0C7BB95F2A, double 0x41697171E0000000>
  %18 = fdiv <2 x double> %17, %5
  %19 = fadd <2 x double> %18, <double 0x417DF876F95DCC98, double 0x41441F7B00000000>
  %20 = fdiv <2 x double> %19, %5
  %21 = fadd <2 x double> %20, <double 0x4145F1E95080F44C, double 3.574230e+05>
  %22 = fdiv <2 x double> %21, %5
  %23 = fadd <2 x double> %22, <double 0x4106B6421F8787EB, double 3.267000e+04>
  %24 = fdiv <2 x double> %23, %5
  %25 = fadd <2 x double> %24, <double 0x40BF87AC0858D804, double 1.925000e+03>
  %26 = fdiv <2 x double> %25, %5
  %27 = fadd <2 x double> %26, <double 0x406A5A607BBC3B52, double 6.600000e+01>
  %28 = fdiv <2 x double> %27, %5
  %29 = fadd <2 x double> %28, <double 0x40040D931FF62705, double 1.000000e+00>
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %30 = insertelement <2 x double> poison, double %0, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer ; 13 uses
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> zeroinitializer, <2 x double> <double 0x40040D931FF62705, double 1.000000e+00>)
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %31, <2 x double> <double 0x406A5A607BBC3B52, double 6.600000e+01>)
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> %31, <2 x double> <double 0x40BF87AC0858D804, double 1.925000e+03>)
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %31, <2 x double> <double 0x4106B6421F8787EB, double 3.267000e+04>)
  %36 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> %31, <2 x double> <double 0x4145F1E95080F44C, double 3.574230e+05>)
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %31, <2 x double> <double 0x417DF876F95DCC98, double 0x41441F7B00000000>)
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> %31, <2 x double> <double 0x41ADAB0C7BB95F2A, double 0x41697171E0000000>)
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %31, <2 x double> <double 0x41D57418F5D3F33F, double 0x4185EEB690000000>)
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %31, <2 x double> <double 0x41F67FC1B3A5A1E8, double 0x4199187170000000>)
  %41 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %31, <2 x double> <double 0x4210B0B522E8261A, double 0x41A1FDA6B0000000>)
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %31, <2 x double> <double 0x4220A132818AB61A, double 0x419CBD6980000000>)
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %31, <2 x double> <double 0x4223FC7075F54C57, double 3.991680e+07>)
  %44 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %31, <2 x double> <double 0x4215EA5143C1A49E, double 0.000000e+00>)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader25.preheader, %.preheader.preheader
  %45 = phi <2 x double> [ %44, %.preheader.preheader ], [ %29, %.preheader25.preheader ] ; 2 uses
  %46 = extractelement <2 x double> %45, i64 0
  %47 = extractelement <2 x double> %45, i64 1
  %i.c = fdiv double %46, %47
  ret double %i.c
}

end_hunk_5
begin_hunk_6_@llvm.log2.f64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
