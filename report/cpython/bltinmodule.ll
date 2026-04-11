inline.NumInlined: 272
inline.NumDeleted: 70
begin_hunk_0_@builtin_sum:bb.a

.outer.i.sink.split:                              ; preds = %bb.cy, %bb.cp
  %.sink313 = phi ptr [ %.7188.i, %bb.cp ], [ %i.fq, %bb.cy ]
  %.sroa.021.0.ph.i.ph = phi double [ %i.fj, %bb.cp ], [ %12, %bb.cy ]
  %.sroa.021.0.ph.i.ph.a = phi double [ 0.000000e+00, %bb.cp ], [ %.sroa.5.0.i386.i, %bb.cy ]
  %.sroa.026.0.ph.i.ph = phi double [ %i.fk, %bb.cp ], [ %4, %bb.cy ]
  %.sroa.11.0.ph.i.ph = phi double [ 0.000000e+00, %bb.cp ], [ %.sroa.5.0.i382.i, %bb.cy ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink313) #10
  br label %.outer.i.preheader

.outer.i.preheader:                               ; preds = %bb.cp, %bb.co, %.outer.i.sink.split
  %.sroa.021.0.ph.i.ph315 = phi double [ %.sroa.021.0.ph.i.ph, %.outer.i.sink.split ], [ %i.fj, %bb.cp ], [ %i.fj, %bb.co ]
  %.sroa.021.0.ph.i.ph315.a = phi double [ %.sroa.021.0.ph.i.ph.a, %.outer.i.sink.split ], [ 0.000000e+00, %bb.cp ], [ 0.000000e+00, %bb.co ]
  %.sroa.026.0.ph.i.ph316 = phi double [ %.sroa.026.0.ph.i.ph, %.outer.i.sink.split ], [ %i.fk, %bb.cp ], [ %i.fk, %bb.co ]
  %.sroa.11.0.ph.i.ph318 = phi double [ %.sroa.11.0.ph.i.ph, %.outer.i.sink.split ], [ 0.000000e+00, %bb.cp ], [ 0.000000e+00, %bb.co ]
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %.outer.i.preheader
  %.sroa.021.0.ph.i = phi double [ %.sroa.021.0.ph.i.ph315, %.outer.i.preheader ], [ %12, %.outer.i.backedge ] ; 6 uses
  %.sroa.026.0.ph.i.a = phi double [ %.sroa.021.0.ph.i.ph315.a, %.outer.i.preheader ], [ %.sroa.5.0.i386.i, %.outer.i.backedge ] ; 3 uses
  %.sroa.026.0.ph.i = phi double [ %.sroa.026.0.ph.i.ph316, %.outer.i.preheader ], [ %4, %.outer.i.backedge ]
  %.sroa.11.0.ph.i = phi double [ %.sroa.11.0.ph.i.ph318, %.outer.i.preheader ], [ %.sroa.5.0.i382.i, %.outer.i.backedge ]
  %or.cond.i405.i = call i1 @llvm.is.fpclass.f64(double %.sroa.026.0.ph.i.a, i32 615)
  %i.fo = fadd double %.sroa.021.0.ph.i, %.sroa.026.0.ph.i.a
  %.0.i406.i = select i1 %or.cond.i405.i, double %.sroa.021.0.ph.i, double %i.fo ; 2 uses
  br label %.outer28.i

.outer28.i:                                       ; preds = %.outer28.backedge.i, %.outer.i
  %.sroa.026.0.ph29.i = phi double [ %.sroa.026.0.ph.i, %.outer.i ], [ %.sroa.026.0.ph29.be.i, %.outer28.backedge.i ] ; 14 uses
  %.sroa.11.0.ph30.i = phi double [ %.sroa.11.0.ph.i, %.outer.i ], [ %.sroa.11.0.ph30.be.i, %.outer28.backedge.i ] ; 4 uses
  %or.cond.i403.i = call i1 @llvm.is.fpclass.f64(double %.sroa.11.0.ph30.i, i32 615)
  %i.fp = fadd double %.sroa.026.0.ph29.i, %.sroa.11.0.ph30.i
  %.0.i404.i = select i1 %or.cond.i403.i, double %.sroa.026.0.ph29.i, double %i.fp ; 2 uses
end_hunk_0
begin_hunk_1_@builtin_sum:bb.a

bb.cx:                                            ; preds = %bb.cw
  %i.fy = call { double, double } @PyComplex_AsCComplex(ptr noundef nonnull %i.fq) #10 ; 2 uses
  %i.fz = extractvalue { double, double } %i.fy, 0 ; 4 uses
  %i.ga = extractvalue { double, double } %i.fy, 1 ; 4 uses
  %4 = fadd double %.sroa.026.0.ph29.i, %i.fz     ; 4 uses
  %5 = call double @llvm.fabs.f64(double %.sroa.026.0.ph29.i)
  %6 = call double @llvm.fabs.f64(double %i.fz)
  %7 = fcmp ult double %5, %6
  %8 = fsub double %.sroa.026.0.ph29.i, %4
  %9 = fadd double %i.fz, %8
  %10 = fsub double %i.fz, %4
  %11 = fadd double %.sroa.026.0.ph29.i, %10
  %.pn.i381.i = select i1 %7, double %11, double %9
  %.sroa.5.0.i382.i = fadd double %.sroa.11.0.ph30.i, %.pn.i381.i ; 2 uses
  %12 = fadd double %.sroa.021.0.ph.i, %i.ga      ; 4 uses
  %13 = call double @llvm.fabs.f64(double %.sroa.021.0.ph.i)
  %14 = call double @llvm.fabs.f64(double %i.ga)
  %15 = fcmp ult double %13, %14
  %16 = fsub double %.sroa.021.0.ph.i, %12
  %17 = fadd double %i.ga, %16
  %18 = fsub double %i.ga, %12
  %19 = fadd double %.sroa.021.0.ph.i, %18
  %.pn.i385.i = select i1 %15, double %19, double %17
  %.sroa.5.0.i386.i = fadd double %.sroa.026.0.ph.i.a, %.pn.i385.i ; 2 uses
  %20 = load i32, ptr %i.fq, align 8, !tbaa !17   ; 2 uses
  %.not.i258.i = icmp sgt i32 %20, -1
  br i1 %.not.i258.i, label %bb.cy, label %.outer.i.backedge

bb.cy:                                            ; preds = %bb.cx
  %i.gb = add nsw i32 %20, -1                     ; 2 uses
  store i32 %i.gb, ptr %i.fq, align 8, !tbaa !17
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %.outer.i.sink.split, label %.outer.i.backedge, !llvm.loop !130
end_hunk_1
begin_hunk_2_@llvm.smax.i64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
