inline.NumInlined: 272
inline.NumDeleted: 70
begin_hunk_0_@builtin_sum:bb.a

.outer.i.sink.split:                              ; preds = %bb.cy, %bb.cp
  %.sink313 = phi ptr [ %.7188.i, %bb.cp ], [ %i.fq, %bb.cy ]
  %.sroa.021.0.ph.i.ph.a = phi double [ %i.fj, %bb.cp ], [ %25, %bb.cy ]
  %.sroa.026.0.ph.i.ph = phi double [ %i.fk, %bb.cp ], [ %24, %bb.cy ]
  %4 = phi <2 x double> [ zeroinitializer, %bb.cp ], [ %22, %bb.cy ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink313) #10
  br label %.outer.i.preheader

.outer.i.preheader:                               ; preds = %bb.cp, %bb.co, %.outer.i.sink.split
  %.sroa.021.0.ph.i.ph315.a = phi double [ %.sroa.021.0.ph.i.ph.a, %.outer.i.sink.split ], [ %i.fj, %bb.cp ], [ %i.fj, %bb.co ]
  %.sroa.026.0.ph.i.ph316 = phi double [ %.sroa.026.0.ph.i.ph, %.outer.i.sink.split ], [ %i.fk, %bb.cp ], [ %i.fk, %bb.co ]
  %.ph = phi <2 x double> [ %4, %.outer.i.sink.split ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.co ]
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %.outer.i.preheader
  %.sroa.021.0.ph.i = phi double [ %.sroa.021.0.ph.i.ph315.a, %.outer.i.preheader ], [ %25, %.outer.i.backedge ] ; 3 uses
  %.sroa.026.0.ph.i.a = phi double [ %.sroa.026.0.ph.i.ph316, %.outer.i.preheader ], [ %24, %.outer.i.backedge ]
  %5 = phi <2 x double> [ %.ph, %.outer.i.preheader ], [ %22, %.outer.i.backedge ] ; 3 uses
  %6 = extractelement <2 x double> %5, i64 1      ; 2 uses
  %or.cond.i405.i = call i1 @llvm.is.fpclass.f64(double %6, i32 615)
  %i.fo = fadd double %.sroa.021.0.ph.i, %6
  %.0.i406.i = select i1 %or.cond.i405.i, double %.sroa.021.0.ph.i, double %i.fo ; 2 uses
  %7 = extractelement <2 x double> %5, i64 0
  br label %.outer28.i

.outer28.i:                                       ; preds = %.outer28.backedge.i, %.outer.i
  %.sroa.026.0.ph29.i = phi double [ %.sroa.026.0.ph.i.a, %.outer.i ], [ %.sroa.026.0.ph29.be.i, %.outer28.backedge.i ] ; 11 uses
  %.sroa.11.0.ph30.i = phi double [ %7, %.outer.i ], [ %.sroa.11.0.ph30.be.i, %.outer28.backedge.i ] ; 4 uses
  %or.cond.i403.i = call i1 @llvm.is.fpclass.f64(double %.sroa.11.0.ph30.i, i32 615)
  %i.fp = fadd double %.sroa.026.0.ph29.i, %.sroa.11.0.ph30.i
  %.0.i404.i = select i1 %or.cond.i403.i, double %.sroa.026.0.ph29.i, double %i.fp ; 2 uses
end_hunk_0
begin_hunk_1_@builtin_sum:bb.a

bb.cx:                                            ; preds = %bb.cw
  %i.fy = call { double, double } @PyComplex_AsCComplex(ptr noundef nonnull %i.fq) #10 ; 2 uses
  %i.fz = extractvalue { double, double } %i.fy, 0
  %i.ga = extractvalue { double, double } %i.fy, 1
  %8 = insertelement <2 x double> poison, double %.sroa.026.0.ph29.i, i64 0
  %9 = insertelement <2 x double> %8, double %.sroa.021.0.ph.i, i64 1 ; 4 uses
  %10 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %9)
  %11 = insertelement <2 x double> poison, double %i.fz, i64 0
  %12 = insertelement <2 x double> %11, double %i.ga, i64 1 ; 4 uses
  %13 = fadd <2 x double> %9, %12                 ; 4 uses
  %14 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %12)
  %15 = fcmp ult <2 x double> %10, %14
  %16 = fsub <2 x double> %9, %13
  %17 = fadd <2 x double> %12, %16
  %18 = fsub <2 x double> %12, %13
  %19 = fadd <2 x double> %9, %18
  %20 = select <2 x i1> %15, <2 x double> %19, <2 x double> %17
  %21 = insertelement <2 x double> %5, double %.sroa.11.0.ph30.i, i64 0
  %22 = fadd <2 x double> %21, %20                ; 2 uses
  %23 = load i32, ptr %i.fq, align 8, !tbaa !17   ; 2 uses
  %.not.i258.i = icmp sgt i32 %23, -1
  %24 = extractelement <2 x double> %13, i64 0    ; 2 uses
  %25 = extractelement <2 x double> %13, i64 1    ; 2 uses
  br i1 %.not.i258.i, label %bb.cy, label %.outer.i.backedge

bb.cy:                                            ; preds = %bb.cx
  %i.gb = add nsw i32 %23, -1                     ; 2 uses
  store i32 %i.gb, ptr %i.fq, align 8, !tbaa !17
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %.outer.i.sink.split, label %.outer.i.backedge, !llvm.loop !130
end_hunk_1
begin_hunk_2_@llvm.smax.i64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
