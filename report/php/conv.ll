Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/conv?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@lexbor_conv_dec_to_hex.map_str_l = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@lexbor_conv_dec_to_hex.map_str_u = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @lexbor_conv_float_to_data(double noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @lexbor_dtoa(double noundef %0, ptr noundef %1, i64 noundef %2) #6
  ret i64 %i.a
}

declare i64 @lexbor_dtoa(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local i64 @lexbor_conv_long_to_data(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.lobit.i = lshr i64 %0, 63                     ; 9 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.150.i = phi i64 [ %.lobit.i, %bb.b ], [ %i.a, %bb.c ] ; 3 uses
  %.03549.i = phi i64 [ %0, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  %i.a = add i64 %.150.i, 1                       ; 5 uses
  %i.b = sdiv i64 %.03549.i, 10
  %.03549.off.i = add i64 %.03549.i, 9
  %.not43.i = icmp ult i64 %.03549.off.i, 19
  br i1 %.not43.i, label %bb.f, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %bb.a
  %.not42.i = icmp eq i64 %2, 0
  br i1 %.not42.i, label %lexbor_conv_int64_to_data.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 48, ptr %1, align 1, !tbaa !16
  br label %lexbor_conv_int64_to_data.exit

bb.f:                                             ; preds = %bb.c
  %i.c = icmp slt i64 %0, 0
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %0, i1 true) ; 4 uses
  %i.d = icmp ult i64 %2, %i.a
  br i1 %i.d, label %bb.g, label %.loopexit48.i

bb.g:                                             ; preds = %bb.f
  %i.e = sub i64 %.lobit.i, %2                    ; 2 uses
  %i.f = add i64 %i.a, %i.e                       ; 2 uses
  %.not4451.i = icmp eq i64 %i.f, %.lobit.i
  br i1 %.not4451.i, label %.loopexit48.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.g = sub i64 %i.a, %2
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.h = add i64 %.150.i, %i.e
  %i.i = udiv i64 %spec.select.i, 10              ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.prol ]
  %.03253.i.unr = phi i64 [ %i.f, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %.13852.i.unr = phi i64 [ %spec.select.i, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.prol ]
  %i.j = icmp eq i64 %.150.i, %2
  br i1 %i.j, label %.loopexit48.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03253.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.03253.i.unr, %.lr.ph.i.prol.loopexit ]
  %.13852.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.13852.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.k = add i64 %.03253.i, -2                    ; 2 uses
  %i.l = udiv i64 %.13852.i, 100                  ; 2 uses
  %.not44.i.1 = icmp eq i64 %i.k, %.lobit.i
  br i1 %.not44.i.1, label %.loopexit48.i, label %.lr.ph.i, !llvm.loop !1

.loopexit48.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g, %bb.f
  %.239.i = phi i64 [ %spec.select.i, %bb.f ], [ %spec.select.i, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.l, %.lr.ph.i ] ; 3 uses
  %.2.i = phi i64 [ %i.a, %bb.f ], [ %2, %bb.g ], [ %2, %.lr.ph.i ], [ %2, %.lr.ph.i.prol.loopexit ] ; 8 uses
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit48.i
  store i8 45, ptr %1, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit48.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.2.i
  store i8 0, ptr %i.m, align 1, !tbaa !16
  %.not4654.i = icmp eq i64 %.2.i, %.lobit.i
  br i1 %.not4654.i, label %lexbor_conv_int64_to_data.exit, label %.lr.ph57.i.preheader

.lr.ph57.i.preheader:                             ; preds = %bb.i
  %3 = sub i64 %.2.i, %.lobit.i
  %.neg = add nuw nsw i64 %.lobit.i, 1
  %xtraiter10 = and i64 %3, 1
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.lr.ph57.i.prol.loopexit, label %.lr.ph57.i.prol

.lr.ph57.i.prol:                                  ; preds = %.lr.ph57.i.preheader
  %4 = add i64 %.2.i, -1                          ; 2 uses
  %5 = urem i64 %.239.i, 10
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !16
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %4
  store i8 %7, ptr %8, align 1, !tbaa !16
  %9 = udiv i64 %.239.i, 10
  br label %.lr.ph57.i.prol.loopexit

.lr.ph57.i.prol.loopexit:                         ; preds = %.lr.ph57.i.prol, %.lr.ph57.i.preheader
  %.13356.i.unr = phi i64 [ %.2.i, %.lr.ph57.i.preheader ], [ %4, %.lr.ph57.i.prol ]
  %.355.i.unr = phi i64 [ %.239.i, %.lr.ph57.i.preheader ], [ %9, %.lr.ph57.i.prol ]
  %10 = icmp eq i64 %.2.i, %.neg
  br i1 %10, label %lexbor_conv_int64_to_data.exit, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.prol.loopexit, %.lr.ph57.i
  %.13356.i = phi i64 [ %i.n, %.lr.ph57.i ], [ %.13356.i.unr, %.lr.ph57.i.prol.loopexit ] ; 2 uses
  %.355.i = phi i64 [ %i.s, %.lr.ph57.i ], [ %.355.i.unr, %.lr.ph57.i.prol.loopexit ] ; 3 uses
  %11 = urem i64 %.355.i, 10
  %12 = getelementptr inbounds nuw i8, ptr @.str, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %14 = getelementptr i8, ptr %1, i64 %.13356.i
  %15 = getelementptr i8, ptr %14, i64 -1
  store i8 %13, ptr %15, align 1, !tbaa !16
  %16 = udiv i64 %.355.i, 10
  %i.n = add i64 %.13356.i, -2                    ; 3 uses
  %i.o = urem i64 %16, 10
  %i.p = getelementptr inbounds nuw i8, ptr @.str, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  store i8 %i.q, ptr %i.r, align 1, !tbaa !16
  %i.s = udiv i64 %.355.i, 100
  %.not46.i = icmp eq i64 %i.n, %.lobit.i
  br i1 %.not46.i, label %lexbor_conv_int64_to_data.exit, label %.lr.ph57.i, !llvm.loop !2

lexbor_conv_int64_to_data.exit:                   ; preds = %.lr.ph57.i.prol.loopexit, %.lr.ph57.i, %bb.d, %bb.e, %bb.i
  %.036.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ %.lobit.i, %bb.i ], [ %.2.i, %.lr.ph57.i ], [ %.2.i, %.lr.ph57.i.prol.loopexit ]
  ret i64 %.036.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local i64 @lexbor_conv_int64_to_data(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.lobit = lshr i64 %0, 63                       ; 9 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.150 = phi i64 [ %.lobit, %bb.b ], [ %i.a, %bb.c ] ; 3 uses
  %.03549 = phi i64 [ %0, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  %i.a = add i64 %.150, 1                         ; 5 uses
  %i.b = sdiv i64 %.03549, 10
  %.03549.off = add i64 %.03549, 9
  %.not43 = icmp ult i64 %.03549.off, 19
  br i1 %.not43, label %bb.f, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %bb.a
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 48, ptr %1, align 1, !tbaa !16
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.c = icmp slt i64 %0, 0
  %spec.select = tail call i64 @llvm.abs.i64(i64 %0, i1 true) ; 4 uses
  %i.d = icmp ult i64 %2, %i.a
  br i1 %i.d, label %bb.g, label %.loopexit48

bb.g:                                             ; preds = %bb.f
  %i.e = sub i64 %.lobit, %2                      ; 2 uses
  %i.f = add i64 %i.e, %i.a                       ; 2 uses
  %.not4451 = icmp eq i64 %i.f, %.lobit
  br i1 %.not4451, label %.loopexit48, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.g = sub i64 %i.a, %2
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.h = add i64 %i.e, %.150
  %i.i = udiv i64 %spec.select, 10                ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %.03253.unr = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.13852.unr = phi i64 [ %spec.select, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.j = icmp eq i64 %.150, %2
  br i1 %i.j, label %.loopexit48, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03253 = phi i64 [ %i.k, %.lr.ph ], [ %.03253.unr, %.lr.ph.prol.loopexit ]
  %.13852 = phi i64 [ %i.l, %.lr.ph ], [ %.13852.unr, %.lr.ph.prol.loopexit ]
  %i.k = add i64 %.03253, -2                      ; 2 uses
  %i.l = udiv i64 %.13852, 100                    ; 2 uses
  %.not44.1 = icmp eq i64 %i.k, %.lobit
  br i1 %.not44.1, label %.loopexit48, label %.lr.ph, !llvm.loop !1

.loopexit48:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.g, %bb.f
  %.239 = phi i64 [ %spec.select, %bb.f ], [ %spec.select, %bb.g ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.l, %.lr.ph ] ; 3 uses
  %.2 = phi i64 [ %i.a, %bb.f ], [ %2, %bb.g ], [ %2, %.lr.ph ], [ %2, %.lr.ph.prol.loopexit ] ; 8 uses
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit48
  store i8 45, ptr %1, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.2
  store i8 0, ptr %i.m, align 1, !tbaa !16
  %.not4654 = icmp eq i64 %.2, %.lobit
  br i1 %.not4654, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %bb.i
  %3 = sub i64 %.2, %.lobit
  %.neg = add nuw nsw i64 %.lobit, 1
  %xtraiter65 = and i64 %3, 1
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol

.lr.ph57.prol:                                    ; preds = %.lr.ph57.preheader
  %4 = add i64 %.2, -1                            ; 2 uses
  %5 = urem i64 %.239, 10
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !16
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %4
  store i8 %7, ptr %8, align 1, !tbaa !16
  %9 = udiv i64 %.239, 10
  br label %.lr.ph57.prol.loopexit

.lr.ph57.prol.loopexit:                           ; preds = %.lr.ph57.prol, %.lr.ph57.preheader
  %.13356.unr = phi i64 [ %.2, %.lr.ph57.preheader ], [ %4, %.lr.ph57.prol ]
  %.355.unr = phi i64 [ %.239, %.lr.ph57.preheader ], [ %9, %.lr.ph57.prol ]
  %10 = icmp eq i64 %.2, %.neg
  br i1 %10, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57
  %.13356 = phi i64 [ %i.n, %.lr.ph57 ], [ %.13356.unr, %.lr.ph57.prol.loopexit ] ; 2 uses
  %.355 = phi i64 [ %i.s, %.lr.ph57 ], [ %.355.unr, %.lr.ph57.prol.loopexit ] ; 3 uses
  %11 = urem i64 %.355, 10
  %12 = getelementptr inbounds nuw i8, ptr @.str, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %14 = getelementptr i8, ptr %1, i64 %.13356
  %15 = getelementptr i8, ptr %14, i64 -1
  store i8 %13, ptr %15, align 1, !tbaa !16
  %16 = udiv i64 %.355, 10
  %i.n = add i64 %.13356, -2                      ; 3 uses
  %i.o = urem i64 %16, 10
  %i.p = getelementptr inbounds nuw i8, ptr @.str, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  store i8 %i.q, ptr %i.r, align 1, !tbaa !16
  %i.s = udiv i64 %.355, 100
  %.not46 = icmp eq i64 %i.n, %.lobit
  br i1 %.not46, label %.loopexit, label %.lr.ph57, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57, %bb.i, %bb.d, %bb.e
  %.036 = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ %.lobit, %bb.i ], [ %.2, %.lr.ph57 ], [ %.2, %.lr.ph57.prol.loopexit ]
  ret i64 %.036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local double @lexbor_conv_data_to_double(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %1 ; 6 uses
  %i.e = load i8, ptr %i.b, align 1, !tbaa !16
  switch i8 %i.e, label %bb.d [
    i8 45, label %bb.b
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.066 = phi i1 [ true, %bb.b ], [ false, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %.pre = ptrtoaddr ptr %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.pre-phi = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ]
  %i.g = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.c ] ; 4 uses
  %.167 = phi i1 [ false, %bb.a ], [ %.066, %bb.c ]
  %i.h = icmp ult ptr %i.g, %i.d
  br i1 %i.h, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.i = add i64 %1, %i.c
  %i.j = sub i64 %i.i, %.pre-phi
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.j ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.068.ptr.ptr97 = phi ptr [ %.068.ptr.ptr, %bb.h ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %.096 = phi ptr [ %i.p, %bb.h ], [ %i.g, %.lr.ph.preheader ] ; 4 uses
  %.068.idx95 = phi i64 [ %.169.idx, %bb.h ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.07394 = phi i32 [ %.174, %bb.h ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.k = load i8, ptr %.096, align 1, !tbaa !16   ; 3 uses
  %i.l = add i8 %i.k, -58
  %i.m = icmp ult i8 %i.l, -10
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.n = icmp slt i64 %.068.idx95, 128
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.068.add = add nuw nsw i64 %.068.idx95, 1
  store i8 %i.k, ptr %.068.ptr.ptr97, align 1, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = add nsw i32 %.07394, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.174 = phi i32 [ %.07394, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %.169.idx = phi i64 [ %.068.add, %bb.f ], [ %.068.idx95, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.096, i64 1 ; 2 uses
  %.068.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.169.idx ; 2 uses
  %exitcond.not = icmp eq ptr %i.p, %scevgep
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !20

bb.i:                                             ; preds = %.lr.ph
  %i.q = icmp eq i8 %i.k, 46
  br i1 %i.q, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.i
  %.1100 = getelementptr inbounds nuw i8, ptr %.096, i64 1 ; 3 uses
  %.270.ptr101 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.068.idx95 ; 2 uses
  %i.r = icmp ult ptr %.1100, %i.d
  br i1 %i.r, label %.lr.ph106, label %.critedge

.lr.ph106:                                        ; preds = %.preheader, %bb.l
  %.270.ptr105 = phi ptr [ %.270.ptr, %bb.l ], [ %.270.ptr101, %.preheader ] ; 2 uses
  %.1104 = phi ptr [ %.1, %bb.l ], [ %.1100, %.preheader ] ; 3 uses
  %.270.idx103 = phi i64 [ %.371.idx, %bb.l ], [ %.068.idx95, %.preheader ] ; 3 uses
  %.076102 = phi i32 [ %.177, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.s = load i8, ptr %.1104, align 1, !tbaa !16  ; 2 uses
  %i.t = add i8 %i.s, -58
  %i.u = icmp ult i8 %i.t, -10
  br i1 %i.u, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph106
  %i.v = icmp slt i64 %.270.idx103, 128
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.270.add = add nuw nsw i64 %.270.idx103, 1
  store i8 %i.s, ptr %.270.ptr105, align 1, !tbaa !16
  %i.w = add nsw i32 %.076102, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.177 = phi i32 [ %i.w, %bb.k ], [ %.076102, %bb.j ] ; 2 uses
  %.371.idx = phi i64 [ %.270.add, %bb.k ], [ %.270.idx103, %bb.j ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.1104, i64 1 ; 3 uses
  %.270.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.371.idx ; 2 uses
  %i.x = icmp ult ptr %.1, %i.d
  br i1 %i.x, label %.lr.ph106, label %.critedge, !llvm.loop !21

.critedge:                                        ; preds = %bb.h, %.lr.ph106, %bb.l, %bb.d, %.preheader, %bb.i
  %.07393 = phi i32 [ %.07394, %bb.i ], [ %.07394, %.preheader ], [ 0, %bb.d ], [ %.07394, %.lr.ph106 ], [ %.07394, %bb.l ], [ %.174, %bb.h ]
  %.278 = phi i32 [ 0, %bb.i ], [ 0, %.preheader ], [ 0, %bb.d ], [ %.076102, %.lr.ph106 ], [ %.177, %bb.l ], [ 0, %bb.h ] ; 4 uses
  %.472 = phi ptr [ %.068.ptr.ptr97, %bb.i ], [ %.270.ptr101, %.preheader ], [ %i.a, %bb.d ], [ %.270.ptr105, %.lr.ph106 ], [ %.270.ptr, %bb.l ], [ %.068.ptr.ptr, %bb.h ]
  %.2 = phi ptr [ %.096, %bb.i ], [ %.1100, %.preheader ], [ %i.g, %bb.d ], [ %.1104, %.lr.ph106 ], [ %.1, %bb.l ], [ %scevgep, %bb.h ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 4 uses
  %i.z = icmp ult ptr %i.y, %i.d
  br i1 %i.z, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.critedge
  %i.aa = load i8, ptr %.2, align 1, !tbaa !16
  switch i8 %i.aa, label %bb.t [
    i8 101, label %bb.n
    i8 69, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 3 uses
  %i.ac = icmp ult ptr %i.ab, %i.d
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !16
  switch i8 %i.ad, label %.fold.split [
    i8 45, label %bb.q
    i8 43, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.q

.fold.split:                                      ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.fold.split, %bb.p, %bb.n
  %.065 = phi i1 [ false, %bb.n ], [ false, %bb.p ], [ true, %bb.o ], [ false, %.fold.split ]
  %.063 = phi ptr [ %i.y, %bb.n ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ], [ %i.y, %.fold.split ] ; 4 uses
  %.063130 = ptrtoaddr ptr %.063 to i64
  %i.ae = load i8, ptr %.063, align 1, !tbaa !16
  %i.af = add i8 %i.ae, -48                       ; 2 uses
  %i.ag = icmp ult i8 %i.af, 10
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ah = zext nneg i8 %i.af to i32               ; 2 uses
  %.3114 = getelementptr inbounds nuw i8, ptr %.063, i64 1 ; 3 uses
  %i.ai = icmp ult ptr %.3114, %i.d
  br i1 %i.ai, label %.lr.ph117.preheader, label %._crit_edge

.lr.ph117.preheader:                              ; preds = %bb.r
  %i.aj = add i64 %1, %i.c
  %i.ak = sub i64 %i.aj, %.063130
  %scevgep131 = getelementptr i8, ptr %.063, i64 %i.ak ; 2 uses
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.s
  %.3116 = phi ptr [ %.3, %bb.s ], [ %.3114, %.lr.ph117.preheader ] ; 3 uses
  %.075115 = phi i32 [ %i.aq, %bb.s ], [ %i.ah, %.lr.ph117.preheader ] ; 2 uses
  %i.al = load i8, ptr %.3116, align 1, !tbaa !16
  %i.am = add i8 %i.al, -48                       ; 2 uses
  %i.an = icmp ugt i8 %i.am, 9
  br i1 %i.an, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %.lr.ph117
  %i.ao = zext nneg i8 %i.am to i32
  %i.ap = mul nsw i32 %.075115, 10
  %i.aq = add nsw i32 %i.ap, %i.ao                ; 2 uses
  %.3 = getelementptr inbounds nuw i8, ptr %.3116, i64 1 ; 2 uses
  %exitcond132.not = icmp eq ptr %.3, %scevgep131
  br i1 %exitcond132.not, label %._crit_edge, label %.lr.ph117, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.s, %.lr.ph117, %bb.r
  %.075.lcssa = phi i32 [ %i.ah, %bb.r ], [ %.075115, %.lr.ph117 ], [ %i.aq, %bb.s ] ; 2 uses
  %.3.lcssa = phi ptr [ %.3114, %bb.r ], [ %.3116, %.lr.ph117 ], [ %scevgep131, %bb.s ]
  %i.ar = sub nsw i32 0, %.075.lcssa
  %i.as = select i1 %.065, i32 %i.ar, i32 %.075.lcssa
  %i.at = add nsw i32 %i.as, %.278
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.q, %._crit_edge, %.critedge
  %.379 = phi i32 [ %i.at, %._crit_edge ], [ %.278, %bb.q ], [ %.278, %bb.m ], [ %.278, %.critedge ]
  %.4 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.2, %bb.q ], [ %.2, %bb.m ], [ %.2, %.critedge ]
  store ptr %.4, ptr %0, align 8, !tbaa !19
  %i.au = add nsw i32 %.379, %.07393
  %i.av = ptrtoint ptr %.472 to i64
end_hunk_0
