begin_hunk_0
; ModuleID = '/opt-bench/work/_work/llvm-opt-benchmark-nightly/llvm-opt-benchmark-nightly/work/opt-out/oiio-s-lossless.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %3 = load i32, ptr %0, align 4, !tbaa !3        ; [#uses=2 type=i32]
  %4 = load i32, ptr %1, align 4, !tbaa !3        ; [#uses=2 type=i32]
  %5 = getelementptr inbounds i8, ptr %1, i64 -4  ; [#uses=1 type=ptr]
  %6 = xor i32 %4, %3                             ; [#uses=1 type=i32]
  %7 = lshr i32 %6, 1                             ; [#uses=1 type=i32]
  %8 = and i32 %7, 2139062143                     ; [#uses=1 type=i32]
  %9 = and i32 %4, %3                             ; [#uses=1 type=i32]
  %10 = load i32, ptr %5, align 4, !tbaa !3       ; [#uses=4 type=i32]
  %11 = add i32 %8, %9                            ; [#uses=4 type=i32]
  %12 = lshr i32 %11, 16                          ; [#uses=1 type=i32]
  %13 = lshr i32 %11, 8                           ; [#uses=1 type=i32]
  %14 = lshr i32 %10, 24                          ; [#uses=1 type=i32]
  %15 = lshr i32 %10, 16                          ; [#uses=1 type=i32]
  %16 = lshr i32 %10, 8                           ; [#uses=1 type=i32]
  %17 = lshr i32 %11, 24                          ; [#uses=2 type=i32]
  %18 = and i32 %12, 255                          ; [#uses=2 type=i32]
  %19 = and i32 %13, 255                          ; [#uses=2 type=i32]
  %20 = and i32 %11, 255                          ; [#uses=2 type=i32]
  %21 = and i32 %15, 255                          ; [#uses=1 type=i32]
  %22 = and i32 %16, 255                          ; [#uses=1 type=i32]
  %23 = and i32 %10, 255                          ; [#uses=1 type=i32]
  %24 = sub nsw i32 %17, %14                      ; [#uses=1 type=i32]
  %25 = sub nsw i32 %18, %21                      ; [#uses=1 type=i32]
  %26 = sub nsw i32 %19, %22                      ; [#uses=1 type=i32]
  %27 = sub nsw i32 %20, %23                      ; [#uses=1 type=i32]
  %.lhs.trunc.i.i = trunc nsw i32 %24 to i16      ; [#uses=1 type=i16]
  %.lhs.trunc.i14.i = trunc nsw i32 %25 to i16    ; [#uses=1 type=i16]
  %.lhs.trunc.i17.i = trunc nsw i32 %26 to i16    ; [#uses=1 type=i16]
  %.lhs.trunc.i20.i = trunc nsw i32 %27 to i16    ; [#uses=1 type=i16]
  %28 = insertelement <4 x i16> poison, i16 %.lhs.trunc.i20.i, i64 0 ; [#uses=1 type=<4 x i16>]
  %29 = insertelement <4 x i16> %28, i16 %.lhs.trunc.i17.i, i64 1 ; [#uses=1 type=<4 x i16>]
  %30 = insertelement <4 x i16> %29, i16 %.lhs.trunc.i14.i, i64 2 ; [#uses=1 type=<4 x i16>]
  %31 = insertelement <4 x i16> %30, i16 %.lhs.trunc.i.i, i64 3 ; [#uses=1 type=<4 x i16>]
  %32 = sdiv <4 x i16> %31, splat (i16 2)         ; [#uses=1 type=<4 x i16>]
  %33 = sext <4 x i16> %32 to <4 x i32>           ; [#uses=1 type=<4 x i32>]
  %34 = insertelement <4 x i32> poison, i32 %20, i64 0 ; [#uses=1 type=<4 x i32>]
  %35 = insertelement <4 x i32> %34, i32 %19, i64 1 ; [#uses=1 type=<4 x i32>]
  %36 = insertelement <4 x i32> %35, i32 %18, i64 2 ; [#uses=1 type=<4 x i32>]
  %37 = insertelement <4 x i32> %36, i32 %17, i64 3 ; [#uses=1 type=<4 x i32>]
  %38 = add nsw <4 x i32> %37, %33                ; [#uses=3 type=<4 x i32>]
  %39 = icmp ult <4 x i32> %38, splat (i32 256)   ; [#uses=1 type=<4 x i1>]
  %40 = xor <4 x i32> %38, splat (i32 -1)         ; [#uses=1 type=<4 x i32>]
  %41 = lshr <4 x i32> %40, splat (i32 24)        ; [#uses=1 type=<4 x i32>]
  %42 = select <4 x i1> %39, <4 x i32> %38, <4 x i32> %41 ; [#uses=1 type=<4 x i32>]
  %43 = shl <4 x i32> %42, <i32 0, i32 8, i32 16, i32 24> ; [#uses=1 type=<4 x i32>]
  %44 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %43) ; [#uses=1 type=i32]
  ret i32 %44
}

; [#uses=1]
end_hunk_1
begin_hunk_2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %55, %.lr.ph ] ; [#uses=2 type=i32]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; [#uses=4 type=i64]
  %6 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv ; [#uses=1 type=ptr]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; [#uses=2 type=ptr]
  %8 = load i32, ptr %7, align 4, !tbaa !3        ; [#uses=2 type=i32]
  %9 = getelementptr inbounds i8, ptr %7, i64 -4  ; [#uses=1 type=ptr]
  %10 = xor i32 %8, %store_forwarded              ; [#uses=1 type=i32]
  %11 = lshr i32 %10, 1                           ; [#uses=1 type=i32]
  %12 = and i32 %11, 2139062143                   ; [#uses=1 type=i32]
  %13 = and i32 %8, %store_forwarded              ; [#uses=1 type=i32]
  %14 = load i32, ptr %9, align 4, !tbaa !3       ; [#uses=4 type=i32]
  %15 = add i32 %12, %13                          ; [#uses=4 type=i32]
  %16 = lshr i32 %15, 16                          ; [#uses=1 type=i32]
  %17 = lshr i32 %15, 8                           ; [#uses=1 type=i32]
  %18 = lshr i32 %14, 24                          ; [#uses=1 type=i32]
  %19 = lshr i32 %14, 16                          ; [#uses=1 type=i32]
  %20 = lshr i32 %14, 8                           ; [#uses=1 type=i32]
  %21 = lshr i32 %15, 24                          ; [#uses=1 type=i32]
  %22 = and i32 %16, 255                          ; [#uses=1 type=i32]
  %23 = and i32 %17, 255                          ; [#uses=1 type=i32]
  %24 = and i32 %15, 255                          ; [#uses=1 type=i32]
  %25 = insertelement <4 x i32> poison, i32 %14, i64 0 ; [#uses=1 type=<4 x i32>]
  %26 = insertelement <4 x i32> %25, i32 %20, i64 1 ; [#uses=1 type=<4 x i32>]
  %27 = insertelement <4 x i32> %26, i32 %19, i64 2 ; [#uses=1 type=<4 x i32>]
  %28 = insertelement <4 x i32> %27, i32 %18, i64 3 ; [#uses=1 type=<4 x i32>]
  %29 = and <4 x i32> %28, <i32 255, i32 255, i32 255, i32 -1> ; [#uses=1 type=<4 x i32>]
  %30 = insertelement <4 x i32> poison, i32 %24, i64 0 ; [#uses=1 type=<4 x i32>]
  %31 = insertelement <4 x i32> %30, i32 %23, i64 1 ; [#uses=1 type=<4 x i32>]
  %32 = insertelement <4 x i32> %31, i32 %22, i64 2 ; [#uses=1 type=<4 x i32>]
  %33 = insertelement <4 x i32> %32, i32 %21, i64 3 ; [#uses=2 type=<4 x i32>]
  %34 = sub nsw <4 x i32> %33, %29                ; [#uses=1 type=<4 x i32>]
  %35 = trunc <4 x i32> %34 to <4 x i16>          ; [#uses=1 type=<4 x i16>]
  %36 = sdiv <4 x i16> %35, splat (i16 2)         ; [#uses=1 type=<4 x i16>]
  %37 = sext <4 x i16> %36 to <4 x i32>           ; [#uses=1 type=<4 x i32>]
  %38 = add nsw <4 x i32> %33, %37                ; [#uses=3 type=<4 x i32>]
  %39 = icmp ult <4 x i32> %38, splat (i32 256)   ; [#uses=1 type=<4 x i1>]
  %40 = xor <4 x i32> %38, splat (i32 -1)         ; [#uses=1 type=<4 x i32>]
  %41 = lshr <4 x i32> %40, splat (i32 24)        ; [#uses=1 type=<4 x i32>]
  %42 = select <4 x i1> %39, <4 x i32> %38, <4 x i32> %41 ; [#uses=1 type=<4 x i32>]
  %43 = shl <4 x i32> %42, <i32 0, i32 8, i32 16, i32 24> ; [#uses=1 type=<4 x i32>]
  %44 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %43) ; [#uses=2 type=i32]
  %45 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; [#uses=1 type=ptr]
  %46 = load i32, ptr %45, align 4, !tbaa !3      ; [#uses=2 type=i32]
  %47 = and i32 %46, -16711936                    ; [#uses=1 type=i32]
  %48 = and i32 %44, -16711936                    ; [#uses=1 type=i32]
  %49 = add i32 %48, %47                          ; [#uses=1 type=i32]
  %50 = and i32 %46, 16711935                     ; [#uses=1 type=i32]
  %51 = and i32 %44, 16711935                     ; [#uses=1 type=i32]
  %52 = add nuw nsw i32 %51, %50                  ; [#uses=1 type=i32]
  %53 = and i32 %49, -16711936                    ; [#uses=1 type=i32]
  %54 = and i32 %52, 16711935                     ; [#uses=1 type=i32]
  %55 = or disjoint i32 %53, %54                  ; [#uses=2 type=i32]
  store i32 %55, ptr %6, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=2 type=i64]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count ; [#uses=1 type=i1]
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !107
end_hunk_2
begin_hunk_3
; [#uses=1]
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; [#uses=2]
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; [#uses=7]
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_3
