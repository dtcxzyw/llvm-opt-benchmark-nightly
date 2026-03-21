begin_hunk_0
; ModuleID = '/opt-bench/work/_work/llvm-opt-benchmark-nightly/llvm-opt-benchmark-nightly/work/opt-out/delta-rs-s-deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.13.bc'
source_filename = "deltalake_lakefs.dde20bc8cb465b21-cgu.13"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"
end_hunk_0
begin_hunk_1
.lr.ph:                                           ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; [#uses=1 type=ptr]
  %13 = load i64, ptr %12, align 8, !noundef !3   ; [#uses=1 type=i64]
  %14 = load i64, ptr %1, align 8                 ; [#uses=5 type=i64]
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; [#uses=3 type=ptr]
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; [#uses=1 type=ptr]
  %17 = load i64, ptr %16, align 8                ; [#uses=2 type=i64]
end_hunk_1
begin_hunk_2
  %.promoted40 = load i64, ptr %15, align 8       ; [#uses=1 type=i64]
  br label %19

._crit_edge:                                      ; preds = %35, %7
  store i64 %3, ptr %8, align 8
  br label %30

19:                                               ; preds = %.lr.ph, %35
  %20 = phi i64 [ %.promoted40, %.lr.ph ], [ %36, %35 ] ; [#uses=5 type=i64]
  %21 = phi i64 [ %10, %.lr.ph ], [ %38, %35 ]    ; [#uses=1 type=i64]
  %22 = phi i64 [ %.promoted, %.lr.ph ], [ %37, %35 ] ; [#uses=8 type=i64]
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %21 ; [#uses=1 type=ptr]
  %24 = load i8, ptr %23, align 1, !noundef !3    ; [#uses=1 type=i8]
  %25 = and i8 %24, 63                            ; [#uses=1 type=i8]
end_hunk_2
begin_hunk_3
  %29 = icmp eq i64 %28, 0                        ; [#uses=1 type=i1]
  br i1 %29, label %31, label %33

30:                                               ; preds = %52, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %52 ] ; [#uses=1 type=i64]
  store i64 %storemerge, ptr %0, align 8
  ret void

31:                                               ; preds = %19
  %32 = add i64 %22, %5                           ; [#uses=3 type=i64]
  store i64 %32, ptr %8, align 8
  br i1 %6, label %35, label %.sink.split

33:                                               ; preds = %19
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %20, i64 %14) ; [#uses=1 type=i64]
  %.sroa.03.0 = select i1 %6, i64 %14, i64 %.sroa.0.0.i ; [#uses=3 type=i64]
  %34 = icmp ult i64 %.sroa.03.0, %5              ; [#uses=1 type=i1]
  br i1 %34, label %.lr.ph92, label %._crit_edge93

.sink.split:                                      ; preds = %31, %74, %65
  %.sink = phi i64 [ %18, %65 ], [ 0, %74 ], [ 0, %31 ] ; [#uses=2 type=i64]
  %.ph75 = phi i64 [ %66, %65 ], [ %77, %74 ], [ %32, %31 ] ; [#uses=1 type=i64]
  store i64 %.sink, ptr %15, align 8
  br label %35

35:                                               ; preds = %.sink.split, %74, %65, %31
  %36 = phi i64 [ %20, %74 ], [ %20, %31 ], [ %20, %65 ], [ %.sink, %.sink.split ] ; [#uses=1 type=i64]
  %37 = phi i64 [ %77, %74 ], [ %32, %31 ], [ %66, %65 ], [ %.ph75, %.sink.split ] ; [#uses=2 type=i64]
  %38 = add i64 %9, %37                           ; [#uses=2 type=i64]
  %39 = icmp ult i64 %38, %3                      ; [#uses=1 type=i1]
  br i1 %39, label %19, label %._crit_edge

40:                                               ; preds = %67
  %41 = add nuw nsw i64 %.sroa.04.090, 1          ; [#uses=2 type=i64]
  %42 = icmp ult i64 %41, %5                      ; [#uses=1 type=i1]
  br i1 %42, label %.lr.ph92, label %._crit_edge93

._crit_edge93:                                    ; preds = %40, %33
  %.sroa.07.0 = select i1 %6, i64 0, i64 %20      ; [#uses=2 type=i64]
  %43 = icmp ult i64 %.sroa.07.0, %14             ; [#uses=1 type=i1]
  br i1 %43, label %.lr.ph96, label %._crit_edge97

.lr.ph92:                                         ; preds = %33, %40
  %.sroa.04.090 = phi i64 [ %41, %40 ], [ %.sroa.03.0, %33 ] ; [#uses=4 type=i64]
  %44 = add i64 %.sroa.04.090, %22                ; [#uses=2 type=i64]
  %45 = icmp ult i64 %44, %3                      ; [#uses=1 type=i1]
  br i1 %45, label %67, label %72

46:                                               ; preds = %59
  %47 = icmp ult i64 %.sroa.07.0, %49             ; [#uses=1 type=i1]
  br i1 %47, label %.lr.ph96, label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge93, %46
  %48 = add i64 %22, %5                           ; [#uses=2 type=i64]
  store i64 %48, ptr %8, align 8
  br i1 %6, label %52, label %51

.lr.ph96:                                         ; preds = %._crit_edge93, %46
  %.sroa.2.094 = phi i64 [ %49, %46 ], [ %14, %._crit_edge93 ] ; [#uses=1 type=i64]
  %49 = add i64 %.sroa.2.094, -1                  ; [#uses=6 type=i64]
  %50 = icmp ult i64 %49, %5                      ; [#uses=1 type=i1]
  br i1 %50, label %55, label %58

51:                                               ; preds = %._crit_edge97
  store i64 0, ptr %15, align 8
  br label %52

52:                                               ; preds = %51, %._crit_edge97
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=1 type=ptr]
  store i64 %22, ptr %53, align 8, !alias.scope !4
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; [#uses=1 type=ptr]
  store i64 %48, ptr %54, align 8, !alias.scope !4
  br label %30

55:                                               ; preds = %.lr.ph96
  %56 = add i64 %49, %22                          ; [#uses=3 type=i64]
  %57 = icmp ult i64 %56, %3                      ; [#uses=1 type=i1]
  br i1 %57, label %59, label %64

58:                                               ; preds = %.lr.ph96
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %49, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24
  unreachable

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 %49 ; [#uses=1 type=ptr]
  %61 = load i8, ptr %60, align 1, !noundef !3    ; [#uses=1 type=i8]
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %56 ; [#uses=1 type=ptr]
  %63 = load i8, ptr %62, align 1, !noundef !3    ; [#uses=1 type=i8]
  %.not = icmp eq i8 %61, %63                     ; [#uses=1 type=i1]
  br i1 %.not, label %46, label %65

64:                                               ; preds = %55
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %56, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
  unreachable

65:                                               ; preds = %59
  %66 = add i64 %17, %22                          ; [#uses=3 type=i64]
  store i64 %66, ptr %8, align 8
  br i1 %6, label %35, label %.sink.split

67:                                               ; preds = %.lr.ph92
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.04.090 ; [#uses=1 type=ptr]
  %69 = load i8, ptr %68, align 1, !noundef !3    ; [#uses=1 type=i8]
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %44 ; [#uses=1 type=ptr]
  %71 = load i8, ptr %70, align 1, !noundef !3    ; [#uses=1 type=i8]
  %.not23 = icmp eq i8 %69, %71                   ; [#uses=1 type=i1]
  br i1 %.not23, label %40, label %74

72:                                               ; preds = %.lr.ph92
  %73 = add i64 %.sroa.03.0, %22                  ; [#uses=1 type=i64]
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %73) ; [#uses=1 type=i64]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #24
  unreachable

74:                                               ; preds = %67
  %75 = add i64 %22, 1                            ; [#uses=1 type=i64]
  %76 = add i64 %75, %.sroa.04.090                ; [#uses=1 type=i64]
  %77 = sub i64 %76, %14                          ; [#uses=3 type=i64]
  store i64 %77, ptr %8, align 8
  br i1 %6, label %35, label %.sink.split
}

; [#uses=5]
end_hunk_3
