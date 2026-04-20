inline.NumInlined: 23
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef initializes((0, 8208)) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %vector.ph32, label %5

vector.ph32:                                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void @HIST_add(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 512) #5
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -512
  tail call void @HIST_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i64 noundef 512) #5
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8200 ; 2 uses
  store i64 512, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4096 ; 2 uses
end_hunk_0
begin_hunk_1_@ZSTD_splitBlock:bb.a
  %i.aa = lshr i64 %1, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac, i64 noundef 512) #5
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 512, ptr %i.ad, align 8, !tbaa !18
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !18
end_hunk_1
begin_hunk_2_@ZSTD_splitBlock:bb.a
  %.0.i = select i1 %i.bw, i64 65536, i64 %i.by
  br label %ZSTD_splitBlock_fromBorders.exit

5:                                                ; preds = %bb.a
  %6 = add nsw i32 %2, -1                         ; 3 uses
  %7 = sext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  switch i32 %6, label %default.switch.case.unreachable.i [
    i32 0, label %call.0.i
    i32 1, label %call.1.i
    i32 2, label %call.2.i
    i32 3, label %call.3.i
  ], !prof !21

default.switch.case.unreachable.i:                ; preds = %5
  unreachable

call.0.i:                                         ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.3, %call.0.i
  %.0.i3.i.i = phi i64 [ 0, %call.0.i ], [ %34, %.lr.ph.i.i.3 ] ; 6 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %10 ; 2 uses
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !5
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 43
  %16 = load i8, ptr %15, align 1, !tbaa !22
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %17 ; 2 uses
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %i.bz = add i32 %19, 1
  store i32 %i.bz, ptr %18, align 4, !tbaa !5
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 86
  %22 = load i8, ptr %21, align 1, !tbaa !22
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %23 ; 2 uses
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !5
  %.not28.i = icmp samesign ult i64 %.0.i3.i.i, 8062
  br i1 %.not28.i, label %.lr.ph.i.i.3, label %.tail.i

.lr.ph.i.i.3:                                     ; preds = %bb.b
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 129
  %29 = load i8, ptr %28, align 1, !tbaa !22
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %30 ; 2 uses
  %32 = load i32, ptr %31, align 4, !tbaa !5
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !5
  %34 = add nuw nsw i64 %.0.i3.i.i, 172
  br label %bb.b

call.1.i:                                         ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %3, i8 0, i64 2048, i1 false)
  br label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %.lr.ph.i39.i.1, %call.1.i
  %.0.i3.i40.i = phi i64 [ 0, %call.1.i ], [ %53, %.lr.ph.i39.i.1 ] ; 4 uses
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i40.i
  %.val.i.i = load i16, ptr %35, align 1, !tbaa !23
  %36 = zext i16 %.val.i.i to i64
  %37 = mul nuw nsw i64 %36, 2654435769
  %38 = lshr i64 %37, 23
  %39 = and i64 %38, 511
  %40 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %39 ; 2 uses
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !5
  %43 = icmp samesign ult i64 %.0.i3.i40.i, 8180
  br i1 %43, label %.lr.ph.i39.i.1, label %.tail.i

.lr.ph.i39.i.1:                                   ; preds = %.lr.ph.i39.i
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i40.i
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 11
  %.val.i.i.1 = load i16, ptr %45, align 1, !tbaa !23
  %46 = zext i16 %.val.i.i.1 to i64
  %47 = mul nuw nsw i64 %46, 2654435769
  %48 = lshr i64 %47, 23
  %49 = and i64 %48, 511
  %50 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %49 ; 2 uses
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4, !tbaa !5
  %53 = add nuw nsw i64 %.0.i3.i40.i, 22
  br label %.lr.ph.i39.i

call.2.i:                                         ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %3, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i41.i.1, %call.2.i
  %.0.i3.i42.i = phi i64 [ 0, %call.2.i ], [ %72, %.lr.ph.i41.i.1 ] ; 4 uses
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i42.i
  %.val.i43.i = load i16, ptr %54, align 1, !tbaa !23
  %55 = zext i16 %.val.i43.i to i64
  %56 = mul nuw nsw i64 %55, 2654435769
  %57 = lshr i64 %56, 22
  %58 = and i64 %57, 1023
  %59 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %58 ; 2 uses
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4, !tbaa !5
  %62 = icmp samesign ult i64 %.0.i3.i42.i, 8186
  br i1 %62, label %.lr.ph.i41.i.1, label %.tail.i

.lr.ph.i41.i.1:                                   ; preds = %.lr.ph.i41.i
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i42.i
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 5
  %.val.i43.i.1 = load i16, ptr %64, align 1, !tbaa !23
  %65 = zext i16 %.val.i43.i.1 to i64
  %66 = mul nuw nsw i64 %65, 2654435769
  %67 = lshr i64 %66, 22
  %68 = and i64 %67, 1023
  %69 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %68 ; 2 uses
  %70 = load i32, ptr %69, align 4, !tbaa !5
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !5
  %72 = add nuw nsw i64 %.0.i3.i42.i, 10
  br label %.lr.ph.i41.i

call.3.i:                                         ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %3, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.1, %call.3.i
  %.0.i3.i45.i = phi i64 [ 0, %call.3.i ], [ %90, %.lr.ph.i44.i.1 ] ; 4 uses
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i45.i
  %.val.i46.i = load i16, ptr %73, align 1, !tbaa !23
  %74 = zext i16 %.val.i46.i to i64
  %75 = mul nuw nsw i64 %74, 2654435769
  %76 = lshr i64 %75, 22
  %77 = and i64 %76, 1023
  %78 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %77 ; 2 uses
  %79 = load i32, ptr %78, align 4, !tbaa !5
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4, !tbaa !5
  %exitcond.not.i47.i = icmp eq i64 %.0.i3.i45.i, 8190
  br i1 %exitcond.not.i47.i, label %.tail.i, label %.lr.ph.i44.i.1

.lr.ph.i44.i.1:                                   ; preds = %.lr.ph.i44.i
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i45.i
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 1
  %.val.i46.i.1 = load i16, ptr %82, align 1, !tbaa !23
  %83 = zext i16 %.val.i46.i.1 to i64
  %84 = mul nuw nsw i64 %83, 2654435769
  %85 = lshr i64 %84, 22
  %86 = and i64 %85, 1023
  %87 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %86 ; 2 uses
  %88 = load i32, ptr %87, align 4, !tbaa !5
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 4, !tbaa !5
  %90 = add nuw nsw i64 %.0.i3.i45.i, 2
  br label %.lr.ph.i44.i

.tail.i:                                          ; preds = %.lr.ph.i44.i, %.lr.ph.i41.i, %.lr.ph.i39.i, %bb.b
  %.sink = phi i64 [ 744, %.lr.ph.i39.i ], [ 190, %bb.b ], [ 1638, %.lr.ph.i41.i ], [ 8191, %.lr.ph.i44.i ] ; 2 uses
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 %.sink, ptr %91, align 8, !tbaa !18
  %92 = add i64 %1, -8192                         ; 2 uses
  %.not34.i = icmp ult i64 %92, 8192
  br i1 %.not34.i, label %ZSTD_splitBlock_fromBorders.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.tail.i
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 4104 ; 17 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 %7
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8200 ; 2 uses
  br label %93

93:                                               ; preds = %mergeEvents.exit.i, %.lr.ph.i
  %94 = phi i64 [ %.sink, %.lr.ph.i ], [ %i.dm, %mergeEvents.exit.i ] ; 3 uses
  %.036.i = phi i64 [ 8192, %.lr.ph.i ], [ %i.dp, %mergeEvents.exit.i ] ; 3 uses
  %.02435.i = phi i32 [ 3, %.lr.ph.i ], [ %spec.select.i, %mergeEvents.exit.i ] ; 3 uses
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 %.036.i ; 10 uses
  switch i32 %6, label %default.switch.case.unreachable28.i [
    i32 0, label %call.029.i
    i32 1, label %call.130.i
    i32 2, label %call.231.i
    i32 3, label %call.332.i
  ], !prof !21

default.switch.case.unreachable28.i:              ; preds = %93
  unreachable

call.029.i:                                       ; preds = %93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ca, i8 0, i64 1024, i1 false)
  store i64 0, ptr %i.cd, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i48.i.3, %call.029.i
  %.030.i = phi i64 [ 0, %call.029.i ], [ %121, %.lr.ph.i48.i.3 ] ; 6 uses
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 %.030.i
  %97 = load i8, ptr %96, align 1, !tbaa !22
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %98 ; 2 uses
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4, !tbaa !5
  %102 = getelementptr inbounds nuw i8, ptr %95, i64 %.030.i
  %i.ce = getelementptr inbounds nuw i8, ptr %102, i64 43
  %103 = load i8, ptr %i.ce, align 1, !tbaa !22
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %104 ; 2 uses
  %i.cf = load i32, ptr %105, align 4, !tbaa !5
  %106 = add i32 %i.cf, 1
  store i32 %106, ptr %105, align 4, !tbaa !5
  %107 = getelementptr inbounds nuw i8, ptr %95, i64 %.030.i
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 86
  %109 = load i8, ptr %108, align 1, !tbaa !22
  %i.cg = zext i8 %109 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cg ; 2 uses
  %111 = load i32, ptr %110, align 4, !tbaa !5
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 4, !tbaa !5
  %113 = icmp samesign ult i64 %.030.i, 8062
  br i1 %113, label %.lr.ph.i48.i.3, label %.tail27.i

.lr.ph.i48.i.3:                                   ; preds = %bb.c
  %114 = getelementptr inbounds nuw i8, ptr %95, i64 %.030.i
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 129
  %116 = load i8, ptr %115, align 1, !tbaa !22
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %117 ; 2 uses
  %119 = load i32, ptr %118, align 4, !tbaa !5
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4, !tbaa !5
  %121 = add nuw nsw i64 %.030.i, 172
  br label %bb.c

call.130.i:                                       ; preds = %93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.ca, i8 0, i64 2048, i1 false)
  br label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.i51.i.1, %call.130.i
  %.0.i3.i52.i = phi i64 [ 0, %call.130.i ], [ %140, %.lr.ph.i51.i.1 ] ; 4 uses
  %122 = getelementptr inbounds nuw i8, ptr %95, i64 %.0.i3.i52.i
  %.val.i53.i = load i16, ptr %122, align 1, !tbaa !23
  %123 = zext i16 %.val.i53.i to i64
  %124 = mul nuw nsw i64 %123, 2654435769
  %125 = lshr i64 %124, 23
  %126 = and i64 %125, 511
  %127 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %126 ; 2 uses
  %128 = load i32, ptr %127, align 4, !tbaa !5
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4, !tbaa !5
  %130 = icmp samesign ult i64 %.0.i3.i52.i, 8180
  br i1 %130, label %.lr.ph.i51.i.1, label %.tail27.i

.lr.ph.i51.i.1:                                   ; preds = %.lr.ph.i51.i
  %131 = getelementptr inbounds nuw i8, ptr %95, i64 %.0.i3.i52.i
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 11
  %.val.i53.i.1 = load i16, ptr %132, align 1, !tbaa !23
  %133 = zext i16 %.val.i53.i.1 to i64
  %134 = mul nuw nsw i64 %133, 2654435769
  %135 = lshr i64 %134, 23
  %136 = and i64 %135, 511
  %137 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %136 ; 2 uses
  %138 = load i32, ptr %137, align 4, !tbaa !5
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 4, !tbaa !5
  %140 = add nuw nsw i64 %.0.i3.i52.i, 22
  br label %.lr.ph.i51.i

call.231.i:                                       ; preds = %93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.ca, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i55.i

.lr.ph.i55.i:                                     ; preds = %.lr.ph.i55.i.1, %call.231.i
  %.0.i3.i56.i = phi i64 [ 0, %call.231.i ], [ %159, %.lr.ph.i55.i.1 ] ; 4 uses
  %141 = getelementptr inbounds nuw i8, ptr %95, i64 %.0.i3.i56.i
  %.val.i57.i = load i16, ptr %141, align 1, !tbaa !23
  %142 = zext i16 %.val.i57.i to i64
  %143 = mul nuw nsw i64 %142, 2654435769
  %144 = lshr i64 %143, 22
  %145 = and i64 %144, 1023
  %146 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %145 ; 2 uses
  %147 = load i32, ptr %146, align 4, !tbaa !5
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 4, !tbaa !5
  %149 = icmp samesign ult i64 %.0.i3.i56.i, 8186
  br i1 %149, label %.lr.ph.i55.i.1, label %.tail27.i

.lr.ph.i55.i.1:                                   ; preds = %.lr.ph.i55.i
  %150 = getelementptr inbounds nuw i8, ptr %95, i64 %.0.i3.i56.i
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 5
  %.val.i57.i.1 = load i16, ptr %151, align 1, !tbaa !23
  %152 = zext i16 %.val.i57.i.1 to i64
  %153 = mul nuw nsw i64 %152, 2654435769
  %154 = lshr i64 %153, 22
  %155 = and i64 %154, 1023
  %156 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %155 ; 2 uses
  %157 = load i32, ptr %156, align 4, !tbaa !5
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 4, !tbaa !5
  %159 = add nuw nsw i64 %.0.i3.i56.i, 10
  br label %.lr.ph.i55.i

call.332.i:                                       ; preds = %93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.ca, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.1, %call.332.i
  %.0.i3.i60.i = phi i64 [ 0, %call.332.i ], [ %177, %.lr.ph.i59.i.1 ] ; 4 uses
  %160 = getelementptr inbounds nuw i8, ptr %95, i64 %.0.i3.i60.i
  %.val.i61.i = load i16, ptr %160, align 1, !tbaa !23
  %161 = zext i16 %.val.i61.i to i64
  %162 = mul nuw nsw i64 %161, 2654435769
  %163 = lshr i64 %162, 22
  %164 = and i64 %163, 1023
  %165 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %164 ; 2 uses
  %166 = load i32, ptr %165, align 4, !tbaa !5
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4, !tbaa !5
  %exitcond.not.i62.i = icmp eq i64 %.0.i3.i60.i, 8190
  br i1 %exitcond.not.i62.i, label %.tail27.i, label %.lr.ph.i59.i.1

.lr.ph.i59.i.1:                                   ; preds = %.lr.ph.i59.i
  %168 = getelementptr inbounds nuw i8, ptr %95, i64 %.0.i3.i60.i
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 1
  %.val.i61.i.1 = load i16, ptr %169, align 1, !tbaa !23
  %170 = zext i16 %.val.i61.i.1 to i64
  %171 = mul nuw nsw i64 %170, 2654435769
  %172 = lshr i64 %171, 22
  %173 = and i64 %172, 1023
  %174 = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %173 ; 2 uses
  %175 = load i32, ptr %174, align 4, !tbaa !5
  %176 = add i32 %175, 1
  store i32 %176, ptr %174, align 4, !tbaa !5
  %177 = add nuw nsw i64 %.0.i3.i60.i, 2
  br label %.lr.ph.i59.i

.tail27.i:                                        ; preds = %.lr.ph.i59.i, %.lr.ph.i55.i, %.lr.ph.i51.i, %bb.c
  %.sink.i = phi i64 [ 744, %.lr.ph.i51.i ], [ 190, %bb.c ], [ 1638, %.lr.ph.i55.i ], [ 8191, %.lr.ph.i59.i ] ; 4 uses
  store i64 %.sink.i, ptr %i.cd, align 8, !tbaa !18
  %178 = load i32, ptr %i.cb, align 4, !tbaa !5
  %179 = zext nneg i32 %178 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.tail27.i
  %.012.i.i.i11 = phi i64 [ 0, %.tail27.i ], [ %i.cs, %bb.d ] ; 3 uses
  %.01011.i.i.i12 = phi i64 [ 0, %.tail27.i ], [ %i.cr, %bb.d ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.012.i.i.i11
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !5
  %i.cj = zext i32 %i.ci to i64
  %i.ck = mul nuw nsw i64 %.sink.i, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.012.i.i.i11
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !5
  %i.cn = zext i32 %i.cm to i64
  %i.co = mul nsw i64 %94, %i.cn
  %i.cp = sub nsw i64 %i.ck, %i.co
  %i.cq = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.cp, i1 true)
  %i.cr = add i64 %i.cq, %.01011.i.i.i12          ; 2 uses
  %i.cs = add i64 %.012.i.i.i11, 1                ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.cs, %179
  %i.ct = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.ct, label %bb.d, label %compareFingerprints.exit.i13, !llvm.loop !25

compareFingerprints.exit.i13:                     ; preds = %bb.d
  %i.cu = add nsw i32 %.02435.i, 14
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul i64 %94, %i.cv
  %i.cx = mul i64 %i.cw, %.sink.i
  %i.cy = lshr i64 %i.cx, 4
  %.not27.i = icmp ult i64 %i.cr, %i.cy
  br i1 %.not27.i, label %vector.body, label %ZSTD_splitBlock_fromBorders.exit
end_hunk_2
begin_hunk_3_@ZSTD_splitBlock:bb.a
  store <4 x i32> %i.dk, ptr %i.di, align 4, !tbaa !5
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dl = icmp eq i64 %index.next.1, 1024
  br i1 %i.dl, label %mergeEvents.exit.i, label %vector.body, !llvm.loop !26

mergeEvents.exit.i:                               ; preds = %vector.body
  %i.dm = add i64 %.sink.i, %94                   ; 2 uses
  store i64 %i.dm, ptr %i.cc, align 8, !tbaa !18
  %i.dn = icmp sgt i32 %.02435.i, 0
  %i.do = sext i1 %i.dn to i32
  %spec.select.i = add nsw i32 %.02435.i, %i.do
  %i.dp = add i64 %.036.i, 8192                   ; 2 uses
  %.not.i = icmp ugt i64 %i.dp, %92
  br i1 %.not.i, label %ZSTD_splitBlock_fromBorders.exit, label %93, !llvm.loop !27

ZSTD_splitBlock_fromBorders.exit:                 ; preds = %mergeEvents.exit.i, %compareFingerprints.exit.i13, %.tail.i, %fpDistance.exit28.i, %compareFingerprints.exit.i
  %.0 = phi i64 [ %1, %compareFingerprints.exit.i ], [ %.0.i, %fpDistance.exit28.i ], [ %1, %.tail.i ], [ %1, %mergeEvents.exit.i ], [ %.036.i, %compareFingerprints.exit.i13 ]
  ret i64 %.0
}

end_hunk_3
begin_hunk_4_@HIST_add
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_4
begin_hunk_5_@llvm.assume/@llvm.vector.reduce.add.v2i64
!18 = !{!11, !12, i64 4096}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !15, !16, !17}
!21 = !{!"unknown", !"jump-table-to-switch"}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !7, i64 0}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15, !16, !17}
!27 = distinct !{!27, !15}
end_hunk_5
