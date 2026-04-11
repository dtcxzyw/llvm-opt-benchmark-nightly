inline.NumInlined: 174
inline.NumDeleted: 42
begin_hunk_0_@vector_norm:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.05875 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.am, %.lr.ph ] ; 2 uses
  %.05875.a = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %6, %.lr.ph ]
  %.06073 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %7, %.lr.ph ]
  %.172 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader ], [ %niter.next.1, %.lr.ph ]
  %i.w = getelementptr [8 x i8], ptr %1, i64 %.172
  %i.x = load double, ptr %i.w, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@vector_norm:bb.a
  %i.z = fmul double %i.y, %i.y                   ; 3 uses
  %i.aa = fneg double %i.z
  %i.ab = tail call double @llvm.fma.f64(double %i.y, double %i.y, double %i.aa)
  %i.ac = fadd double %.05875, %i.z               ; 3 uses
  %i.ad = fsub double %.05875, %i.ac
  %i.ae = fadd double %i.z, %i.ad
  %4 = fadd double %.05875.a, %i.ab
  %5 = fadd double %.06073, %i.ae
  %i.af = getelementptr [8 x i8], ptr %1, i64 %.172
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !31
end_hunk_1
begin_hunk_2_@vector_norm:bb.a
  %i.am = fadd double %i.ac, %i.aj                ; 5 uses
  %i.an = fsub double %i.ac, %i.am
  %i.ao = fadd double %i.aj, %i.an
  %6 = fadd double %4, %i.al                      ; 3 uses
  %7 = fadd double %5, %i.ao                      ; 3 uses
  %i.ap = add nuw nsw i64 %.172, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
end_hunk_2
begin_hunk_3_@vector_norm:bb.a
  %i.aw = fadd double %i.am, %i.at                ; 2 uses
  %i.ax = fsub double %i.am, %i.aw
  %i.ay = fadd double %i.at, %i.ax
  %8 = fadd double %6, %i.av
  %9 = fadd double %7, %i.ay
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa97 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aw, %.lr.ph.epil.preheader ] ; 3 uses
  %.lcssa93 = phi double [ %6, %._crit_edge.unr-lcssa ], [ %8, %.lr.ph.epil.preheader ] ; 2 uses
  %.lcssa = phi double [ %7, %._crit_edge.unr-lcssa ], [ %9, %.lr.ph.epil.preheader ] ; 2 uses
  %10 = fadd double %.lcssa97, -1.000000e+00
  %11 = fadd double %.lcssa, %.lcssa93
  %i.az = fadd double %11, %10
  %i.ba = tail call double @sqrt(double noundef %i.az) #17, !tbaa !6 ; 5 uses
  %i.bb = fneg double %i.ba                       ; 2 uses
  %i.bc = fmul double %i.ba, %i.bb                ; 3 uses
end_hunk_3
begin_hunk_4_@vector_norm:bb.a
  %i.bf = fadd double %.lcssa97, %i.bc            ; 2 uses
  %i.bg = fsub double %.lcssa97, %i.bf
  %i.bh = fadd double %i.bc, %i.bg
  %i.bi = fadd double %.lcssa93, %i.be
  %12 = fadd double %.lcssa, %i.bh
  %13 = fadd double %i.bf, -1.000000e+00
  %14 = fadd double %i.bi, %12
  %i.bj = fadd double %13, %14
  %i.bk = fmul double %i.ba, 2.000000e+00
  %i.bl = fdiv double %i.bj, %i.bk
  %i.bm = fadd double %i.ba, %i.bl
end_hunk_4
begin_hunk_5_@lanczos_sum:bb.a
  br i1 %i.a, label %.preheader.preheader, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %bb.a
  %i.b = fdiv double 0.000000e+00, %0             ; 2 uses
  %1 = fadd double %i.b, 0x4215EA5143C1A49E
  %2 = fdiv double %1, %0
  %3 = fadd double %2, 0x4223FC7075F54C57
  %4 = fdiv double %i.b, %0
  %5 = fadd double %4, 3.991680e+07
  %6 = fdiv double %3, %0
  %7 = fadd double %6, 0x4220A132818AB61A
  %8 = fdiv double %5, %0
  %9 = fadd double %8, 0x419CBD6980000000
  %10 = fdiv double %7, %0
  %11 = fadd double %10, 0x4210B0B522E8261A
  %12 = fdiv double %9, %0
  %13 = fadd double %12, 0x41A1FDA6B0000000
  %14 = fdiv double %11, %0
  %15 = fadd double %14, 0x41F67FC1B3A5A1E8
  %16 = fdiv double %13, %0
  %17 = fadd double %16, 0x4199187170000000
  %18 = fdiv double %15, %0
  %19 = fadd double %18, 0x41D57418F5D3F33F
  %20 = fdiv double %17, %0
  %21 = fadd double %20, 0x4185EEB690000000
  %22 = fdiv double %19, %0
  %23 = fadd double %22, 0x41ADAB0C7BB95F2A
  %24 = fdiv double %21, %0
  %25 = fadd double %24, 0x41697171E0000000
  %26 = fdiv double %23, %0
  %27 = fadd double %26, 0x417DF876F95DCC98
  %28 = fdiv double %25, %0
  %29 = fadd double %28, 0x41441F7B00000000
  %30 = fdiv double %27, %0
  %31 = fadd double %30, 0x4145F1E95080F44C
  %32 = fdiv double %29, %0
  %33 = fadd double %32, 3.574230e+05
  %34 = fdiv double %31, %0
  %35 = fadd double %34, 0x4106B6421F8787EB
  %36 = fdiv double %33, %0
  %37 = fadd double %36, 3.267000e+04
  %38 = fdiv double %35, %0
  %39 = fadd double %38, 0x40BF87AC0858D804
  %40 = fdiv double %37, %0
  %41 = fadd double %40, 1.925000e+03
  %42 = fdiv double %39, %0
  %43 = fadd double %42, 0x406A5A607BBC3B52
  %44 = fdiv double %41, %0
  %45 = fadd double %44, 6.600000e+01
  %46 = fdiv double %43, %0
  %47 = fadd double %46, 0x40040D931FF62705
  %48 = fdiv double %45, %0
  %49 = fadd double %48, 1.000000e+00
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %50 = tail call double @llvm.fmuladd.f64(double %0, double 0.000000e+00, double 0x40040D931FF62705)
  %51 = tail call double @llvm.fmuladd.f64(double %0, double 0.000000e+00, double 1.000000e+00)
  %52 = tail call double @llvm.fmuladd.f64(double %50, double %0, double 0x406A5A607BBC3B52)
  %53 = tail call double @llvm.fmuladd.f64(double %51, double %0, double 6.600000e+01)
  %54 = tail call double @llvm.fmuladd.f64(double %52, double %0, double 0x40BF87AC0858D804)
  %55 = tail call double @llvm.fmuladd.f64(double %53, double %0, double 1.925000e+03)
  %56 = tail call double @llvm.fmuladd.f64(double %54, double %0, double 0x4106B6421F8787EB)
  %57 = tail call double @llvm.fmuladd.f64(double %55, double %0, double 3.267000e+04)
  %58 = tail call double @llvm.fmuladd.f64(double %56, double %0, double 0x4145F1E95080F44C)
  %59 = tail call double @llvm.fmuladd.f64(double %57, double %0, double 3.574230e+05)
  %60 = tail call double @llvm.fmuladd.f64(double %58, double %0, double 0x417DF876F95DCC98)
  %61 = tail call double @llvm.fmuladd.f64(double %59, double %0, double 0x41441F7B00000000)
  %62 = tail call double @llvm.fmuladd.f64(double %60, double %0, double 0x41ADAB0C7BB95F2A)
  %63 = tail call double @llvm.fmuladd.f64(double %61, double %0, double 0x41697171E0000000)
  %64 = tail call double @llvm.fmuladd.f64(double %62, double %0, double 0x41D57418F5D3F33F)
  %65 = tail call double @llvm.fmuladd.f64(double %63, double %0, double 0x4185EEB690000000)
  %66 = tail call double @llvm.fmuladd.f64(double %64, double %0, double 0x41F67FC1B3A5A1E8)
  %67 = tail call double @llvm.fmuladd.f64(double %65, double %0, double 0x4199187170000000)
  %68 = tail call double @llvm.fmuladd.f64(double %66, double %0, double 0x4210B0B522E8261A)
  %69 = tail call double @llvm.fmuladd.f64(double %67, double %0, double 0x41A1FDA6B0000000)
  %70 = tail call double @llvm.fmuladd.f64(double %68, double %0, double 0x4220A132818AB61A)
  %71 = tail call double @llvm.fmuladd.f64(double %69, double %0, double 0x419CBD6980000000)
  %72 = tail call double @llvm.fmuladd.f64(double %70, double %0, double 0x4223FC7075F54C57)
  %73 = tail call double @llvm.fmuladd.f64(double %71, double %0, double 3.991680e+07)
  %74 = tail call double @llvm.fmuladd.f64(double %72, double %0, double 0x4215EA5143C1A49E)
  %75 = tail call double @llvm.fmuladd.f64(double %73, double %0, double 0.000000e+00)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader25.preheader, %.preheader.preheader
  %.221 = phi double [ %74, %.preheader.preheader ], [ %47, %.preheader25.preheader ]
  %.2 = phi double [ %75, %.preheader.preheader ], [ %49, %.preheader25.preheader ]
  %i.c = fdiv double %.221, %.2
  ret double %i.c
}

end_hunk_5
begin_hunk_6_@llvm.log2.f64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
