begin_hunk_0
; ModuleID = '/opt-bench/work/_work/llvm-opt-benchmark-nightly/llvm-opt-benchmark-nightly/data/delta-rs/optimized/deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.13.bc'
source_filename = "deltalake_lakefs.dde20bc8cb465b21-cgu.13"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"
end_hunk_0
begin_hunk_1
.lr.ph:                                           ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; [#uses=1 type=ptr]
  %13 = load i64, ptr %12, align 8, !noundef !3   ; [#uses=1 type=i64]
  %14 = load i64, ptr %1, align 8                 ; [#uses=4 type=i64]
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; [#uses=3 type=ptr]
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; [#uses=1 type=ptr]
  %17 = load i64, ptr %16, align 8                ; [#uses=2 type=i64]
end_hunk_1
begin_hunk_2
  %.promoted40 = load i64, ptr %15, align 8       ; [#uses=1 type=i64]
  br label %19

._crit_edge:                                      ; preds = %34, %7
  store i64 %3, ptr %8, align 8
  br label %30

19:                                               ; preds = %.lr.ph, %34
  %20 = phi i64 [ %.promoted40, %.lr.ph ], [ %35, %34 ] ; [#uses=5 type=i64]
  %21 = phi i64 [ %10, %.lr.ph ], [ %37, %34 ]    ; [#uses=1 type=i64]
  %22 = phi i64 [ %.promoted, %.lr.ph ], [ %36, %34 ] ; [#uses=8 type=i64]
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %21 ; [#uses=1 type=ptr]
  %24 = load i8, ptr %23, align 1, !noundef !3    ; [#uses=1 type=i8]
  %25 = and i8 %24, 63                            ; [#uses=1 type=i8]
end_hunk_2
begin_hunk_3
  %29 = icmp eq i64 %28, 0                        ; [#uses=1 type=i1]
  br i1 %29, label %31, label %33

30:                                               ; preds = %53, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %53 ] ; [#uses=1 type=i64]
  store i64 %storemerge, ptr %0, align 8
  ret void

31:                                               ; preds = %19
  %32 = add i64 %22, %5                           ; [#uses=3 type=i64]
  store i64 %32, ptr %8, align 8
  br i1 %6, label %34, label %.sink.split

33:                                               ; preds = %19
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %20, i64 %14) ; [#uses=1 type=i64]
  %.sroa.03.0 = select i1 %6, i64 %14, i64 %.sroa.0.0.i ; [#uses=2 type=i64]
  br label %39

.sink.split:                                      ; preds = %31, %76, %66
  %.sink = phi i64 [ %18, %66 ], [ 0, %76 ], [ 0, %31 ] ; [#uses=2 type=i64]
  %.ph75 = phi i64 [ %67, %66 ], [ %79, %76 ], [ %32, %31 ] ; [#uses=1 type=i64]
  store i64 %.sink, ptr %15, align 8
  br label %34

34:                                               ; preds = %.sink.split, %76, %66, %31
  %35 = phi i64 [ %20, %76 ], [ %20, %31 ], [ %20, %66 ], [ %.sink, %.sink.split ] ; [#uses=1 type=i64]
  %36 = phi i64 [ %79, %76 ], [ %32, %31 ], [ %67, %66 ], [ %.ph75, %.sink.split ] ; [#uses=2 type=i64]
  %37 = add i64 %9, %36                           ; [#uses=2 type=i64]
  %38 = icmp ult i64 %37, %3                      ; [#uses=1 type=i1]
  br i1 %38, label %19, label %._crit_edge

39:                                               ; preds = %68, %33
  %.sroa.04.0 = phi i64 [ %.sroa.03.0, %33 ], [ %69, %68 ] ; [#uses=5 type=i64]
  %40 = icmp ult i64 %.sroa.04.0, %5              ; [#uses=1 type=i1]
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  %.sroa.07.0 = select i1 %6, i64 0, i64 %20      ; [#uses=1 type=i64]
  br label %45

42:                                               ; preds = %39
  %43 = add i64 %.sroa.04.0, %22                  ; [#uses=2 type=i64]
  %44 = icmp ult i64 %43, %3                      ; [#uses=1 type=i1]
  br i1 %44, label %68, label %74

45:                                               ; preds = %60, %41
  %.sroa.2.0 = phi i64 [ %14, %41 ], [ %50, %60 ] ; [#uses=2 type=i64]
  %46 = icmp ult i64 %.sroa.07.0, %.sroa.2.0      ; [#uses=1 type=i1]
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = add i64 %22, %5                           ; [#uses=2 type=i64]
  store i64 %48, ptr %8, align 8
  br i1 %6, label %53, label %52

49:                                               ; preds = %45
  %50 = add i64 %.sroa.2.0, -1                    ; [#uses=5 type=i64]
  %51 = icmp ult i64 %50, %5                      ; [#uses=1 type=i1]
  br i1 %51, label %56, label %59

52:                                               ; preds = %47
  store i64 0, ptr %15, align 8
  br label %53

53:                                               ; preds = %52, %47
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=1 type=ptr]
  store i64 %22, ptr %54, align 8, !alias.scope !4
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; [#uses=1 type=ptr]
  store i64 %48, ptr %55, align 8, !alias.scope !4
  br label %30

56:                                               ; preds = %49
  %57 = add i64 %50, %22                          ; [#uses=3 type=i64]
  %58 = icmp ult i64 %57, %3                      ; [#uses=1 type=i1]
  br i1 %58, label %60, label %65

59:                                               ; preds = %49
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %50, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24
  unreachable

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %4, i64 %50 ; [#uses=1 type=ptr]
  %62 = load i8, ptr %61, align 1, !noundef !3    ; [#uses=1 type=i8]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %57 ; [#uses=1 type=ptr]
  %64 = load i8, ptr %63, align 1, !noundef !3    ; [#uses=1 type=i8]
  %.not = icmp eq i8 %62, %64                     ; [#uses=1 type=i1]
  br i1 %.not, label %45, label %66

65:                                               ; preds = %56
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %57, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
  unreachable

66:                                               ; preds = %60
  %67 = add i64 %17, %22                          ; [#uses=3 type=i64]
  store i64 %67, ptr %8, align 8
  br i1 %6, label %34, label %.sink.split

68:                                               ; preds = %42
  %69 = add nuw nsw i64 %.sroa.04.0, 1            ; [#uses=1 type=i64]
  %70 = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.04.0 ; [#uses=1 type=ptr]
  %71 = load i8, ptr %70, align 1, !noundef !3    ; [#uses=1 type=i8]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %43 ; [#uses=1 type=ptr]
  %73 = load i8, ptr %72, align 1, !noundef !3    ; [#uses=1 type=i8]
  %.not23 = icmp eq i8 %71, %73                   ; [#uses=1 type=i1]
  br i1 %.not23, label %39, label %76

74:                                               ; preds = %42
  %75 = add i64 %.sroa.03.0, %22                  ; [#uses=1 type=i64]
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %75) ; [#uses=1 type=i64]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #24
  unreachable

76:                                               ; preds = %68
  %77 = add i64 %22, 1                            ; [#uses=1 type=i64]
  %78 = add i64 %77, %.sroa.04.0                  ; [#uses=1 type=i64]
  %79 = sub i64 %78, %14                          ; [#uses=3 type=i64]
  store i64 %79, ptr %8, align 8
  br i1 %6, label %34, label %.sink.split
}

; [#uses=5]
end_hunk_3
