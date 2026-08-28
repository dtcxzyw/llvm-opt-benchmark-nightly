Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress_sequences?download=true
inline.NumInlined: 105
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kInverseProbabilityLog256 = internal unnamed_addr constant [256 x i32] [i32 0, i32 2048, i32 1792, i32 1642, i32 1536, i32 1453, i32 1386, i32 1329, i32 1280, i32 1236, i32 1197, i32 1162, i32 1130, i32 1100, i32 1073, i32 1047, i32 1024, i32 1001, i32 980, i32 960, i32 941, i32 923, i32 906, i32 889, i32 874, i32 859, i32 844, i32 830, i32 817, i32 804, i32 791, i32 779, i32 768, i32 756, i32 745, i32 734, i32 724, i32 714, i32 704, i32 694, i32 685, i32 676, i32 667, i32 658, i32 650, i32 642, i32 633, i32 626, i32 618, i32 610, i32 603, i32 595, i32 588, i32 581, i32 574, i32 567, i32 561, i32 554, i32 548, i32 542, i32 535, i32 529, i32 523, i32 517, i32 512, i32 506, i32 500, i32 495, i32 489, i32 484, i32 478, i32 473, i32 468, i32 463, i32 458, i32 453, i32 448, i32 443, i32 438, i32 434, i32 429, i32 424, i32 420, i32 415, i32 411, i32 407, i32 402, i32 398, i32 394, i32 390, i32 386, i32 382, i32 377, i32 373, i32 370, i32 366, i32 362, i32 358, i32 354, i32 350, i32 347, i32 343, i32 339, i32 336, i32 332, i32 329, i32 325, i32 322, i32 318, i32 315, i32 311, i32 308, i32 305, i32 302, i32 298, i32 295, i32 292, i32 289, i32 286, i32 282, i32 279, i32 276, i32 273, i32 270, i32 267, i32 264, i32 261, i32 258, i32 256, i32 253, i32 250, i32 247, i32 244, i32 241, i32 239, i32 236, i32 233, i32 230, i32 228, i32 225, i32 222, i32 220, i32 217, i32 215, i32 212, i32 209, i32 207, i32 204, i32 202, i32 199, i32 197, i32 194, i32 192, i32 190, i32 187, i32 185, i32 182, i32 180, i32 178, i32 175, i32 173, i32 171, i32 168, i32 166, i32 164, i32 162, i32 159, i32 157, i32 155, i32 153, i32 151, i32 149, i32 146, i32 144, i32 142, i32 140, i32 138, i32 136, i32 134, i32 132, i32 130, i32 128, i32 126, i32 123, i32 121, i32 119, i32 117, i32 115, i32 114, i32 112, i32 110, i32 108, i32 106, i32 104, i32 102, i32 100, i32 98, i32 96, i32 94, i32 93, i32 91, i32 89, i32 87, i32 85, i32 83, i32 82, i32 80, i32 78, i32 76, i32 74, i32 73, i32 71, i32 69, i32 67, i32 66, i32 64, i32 62, i32 61, i32 59, i32 57, i32 55, i32 54, i32 52, i32 50, i32 49, i32 47, i32 46, i32 44, i32 42, i32 41, i32 39, i32 37, i32 36, i32 34, i32 33, i32 31, i32 30, i32 28, i32 26, i32 25, i32 23, i32 22, i32 20, i32 19, i32 17, i32 16, i32 14, i32 13, i32 11, i32 10, i32 8, i32 7, i32 5, i32 4, i32 2, i32 1], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 -1, 72057594037927936) i64 @ZSTD_fseBitCost(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.val.i = load i16, ptr %0, align 1, !tbaa !8   ; 2 uses
  %i.a = zext i16 %.val.i to i32                  ; 4 uses
  %.not.i = icmp eq i16 %.val.i, 0
  %i.b = add nsw i32 %i.a, -1
  %i.c = shl nuw i32 1, %i.b
  %i.d = sext i32 %i.c to i64
  %i.e = select i1 %.not.i, i64 1, i64 %i.d
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %0, i64 2
  %.val = load i16, ptr %i.g, align 1, !tbaa !8
  %i.h = zext i16 %.val to i32
  %i.i = icmp ugt i32 %2, %i.h
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = shl nuw i32 1, %i.a
  %i.k = shl nuw nsw i32 %i.a, 8
  %i.l = add nuw nsw i32 %i.k, 256
  %i.m = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.02031 = phi i64 [ 0, %.preheader ], [ %.1.ph, %bb.e ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10   ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = add nuw nsw i32 %i.q, 1                  ; 2 uses
  %i.s = add i32 %i.p, %i.j
  %i.t = shl i32 %i.r, 24
  %i.u = shl i32 %i.s, 8
  %i.v = sub i32 %i.t, %i.u
  %i.w = lshr i32 %i.v, %i.a
  %i.x = shl nuw nsw i32 %i.r, 8
  %i.y = sub i32 %i.x, %i.w                       ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not26 = icmp ult i32 %i.y, %i.l
  br i1 %.not26, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i32 %i.aa to i64
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = mul nuw nsw i64 %i.ad, %i.ac
  %i.af = add i64 %i.ae, %.02031
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.1.ph = phi i64 [ %.02031, %bb.b ], [ %i.af, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !13

bb.f:                                             ; preds = %bb.e
  %i.ag = lshr i64 %.1.ph, 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.f
  %.2 = phi i64 [ %i.ag, %bb.f ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 0, 72057594037927936) i64 @ZSTD_crossEntropyCost(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 8, %1                            ; 3 uses
  %i.b = add i32 %3, 1                            ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 3 uses
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %4 = and i32 %umax, -2
  %unroll_iter = zext i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.01417 = phi i64 [ 0, %.new ], [ %i.y, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.e = load i16, ptr %i.d, align 2, !tbaa !8    ; 2 uses
  %.not16 = icmp eq i16 %i.e, -1
  %narrow = select i1 %.not16, i16 1, i16 %i.e
  %spec.select = sext i16 %narrow to i32
  %i.f = shl i32 %spec.select, %i.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %i.l = mul i32 %i.k, %i.h
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %.01417, %i.m
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.p = load i16, ptr %i.o, align 2, !tbaa !8    ; 2 uses
  %.not16.1 = icmp eq i16 %i.p, -1
  %narrow.1 = select i1 %.not16.1, i16 1, i16 %i.p
  %spec.select.1 = sext i16 %narrow.1 to i32
  %i.q = shl i32 %spec.select.1, %i.a
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !12
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = mul i32 %i.v, %i.s
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %i.n, %i.x                       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.b, !llvm.loop !15

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = trunc i32 %umax to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %bb.c

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.01417.epil.init = phi i64 [ 0, %bb.a ], [ %i.y, %.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !8   ; 2 uses
  %.not16.epil = icmp eq i16 %i.aa, -1
  %narrow.epil = select i1 %.not16.epil, i16 1, i16 %i.aa
  %spec.select.epil = sext i16 %narrow.epil to i32
  %i.ab = shl i32 %spec.select.epil, %i.a
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12
  %i.ah = mul i32 %i.ag, %i.ad
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add i64 %.01417.epil.init, %i.ai
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.y, %.unr-lcssa ], [ %i.aj, %.epil.preheader ]
  %i.ak = lshr i64 %.lcssa, 8
  ret i64 %i.ak
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @ZSTD_selectEncodingType(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 3 uses
  %i.b = alloca [53 x i16], align 16              ; 4 uses
  %i.c = icmp eq i64 %3, %4
  %i.d = icmp eq i32 %9, 0                        ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !12
  %i.e = icmp ugt i64 %3, 2
  %or.cond.not = or i1 %i.e, %i.d
  %. = zext i1 %or.cond.not to i32
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %10, 4
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !12
  %i.h = icmp eq i32 %i.g, 2
  %i.i = icmp ult i64 %4, 1000
  %or.cond3 = and i1 %i.i, %i.h
  br i1 %or.cond3, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = sub nuw nsw i32 10, %10
  %i.k = zext nneg i32 %i.j to i64
  %i.l = zext nneg i32 %8 to i64
  %i.m = shl i64 %i.k, %i.l
  %i.n = lshr i64 %i.m, 3
  %i.o = icmp ult i64 %4, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i32 %8, -1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 %4, %i.q
  %i.s = icmp ult i64 %3, %i.r
  br i1 %i.s, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 0, ptr %0, align 4, !tbaa !12
  br label %.thread

bb.i:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = sub i32 8, %8                            ; 3 uses
  %i.u = add i32 %2, 1                            ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 3 uses
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %11 = and i32 %umax.i, -2
  %unroll_iter = zext i32 %11 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.k ] ; 4 uses
  %.01417.i = phi i64 [ 0, %.new ], [ %i.ar, %bb.k ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.k ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !8    ; 2 uses
  %.not16.i = icmp eq i16 %i.x, -1
  %narrow.i = select i1 %.not16.i, i16 1, i16 %i.x
  %spec.select.i = sext i16 %narrow.i to i32
  %i.y = shl i32 %spec.select.i, %i.t
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = mul i32 %i.ad, %i.aa
  %i.af = zext i32 %i.ae to i64
  %i.ag = add i64 %.01417.i, %i.af
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.next.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !8  ; 2 uses
  %.not16.i.1 = icmp eq i16 %i.ai, -1
  %narrow.i.1 = select i1 %.not16.i.1, i16 1, i16 %i.ai
  %spec.select.i.1 = sext i16 %narrow.i.1 to i32
  %i.aj = shl i32 %spec.select.i.1, %i.t
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
  %i.ap = mul i32 %i.ao, %i.al
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add i64 %i.ag, %i.aq                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ZSTD_crossEntropyCost.exit.unr-lcssa, label %bb.k, !llvm.loop !15

ZSTD_crossEntropyCost.exit.unr-lcssa:             ; preds = %bb.k
  %lcmp.mod.not = trunc i32 %umax.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %ZSTD_crossEntropyCost.exit

.epil.preheader:                                  ; preds = %ZSTD_crossEntropyCost.exit.unr-lcssa, %bb.j
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.1, %ZSTD_crossEntropyCost.exit.unr-lcssa ] ; 2 uses
  %.01417.i.epil.init = phi i64 [ 0, %bb.j ], [ %i.ar, %ZSTD_crossEntropyCost.exit.unr-lcssa ]
  %lcmp.mod92 = trunc i32 %umax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.i.epil.init
  %i.at = load i16, ptr %i.as, align 2, !tbaa !8  ; 2 uses
  %.not16.i.epil = icmp eq i16 %i.at, -1
  %narrow.i.epil = select i1 %.not16.i.epil, i16 1, i16 %i.at
  %spec.select.i.epil = sext i16 %narrow.i.epil to i32
  %i.au = shl i32 %spec.select.i.epil, %i.t
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = mul i32 %i.az, %i.aw
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i64 %.01417.i.epil.init, %i.bb
  br label %ZSTD_crossEntropyCost.exit

ZSTD_crossEntropyCost.exit:                       ; preds = %ZSTD_crossEntropyCost.exit.unr-lcssa, %.epil.preheader
  %.lcssa90 = phi i64 [ %i.ar, %ZSTD_crossEntropyCost.exit.unr-lcssa ], [ %i.bc, %.epil.preheader ]
  %i.bd = lshr i64 %.lcssa90, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %ZSTD_crossEntropyCost.exit
  %i.be = phi i64 [ %i.bd, %ZSTD_crossEntropyCost.exit ], [ -1, %bb.i ] ; 2 uses
  %i.bf = load i32, ptr %0, align 4, !tbaa !12
  %.not56 = icmp eq i32 %i.bf, 0
  br i1 %.not56, label %ZSTD_fseBitCost.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i = load i16, ptr %6, align 1, !tbaa !8 ; 2 uses
  %i.bg = zext i16 %.val.i.i to i32               ; 4 uses
  %.not.i.i = icmp eq i16 %.val.i.i, 0
  %i.bh = add nsw i32 %i.bg, -1
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = select i1 %.not.i.i, i64 1, i64 %i.bj
  %i.bl = getelementptr [4 x i8], ptr %6, i64 %i.bk
  %i.bm = getelementptr i8, ptr %6, i64 2
  %.val.i = load i16, ptr %i.bm, align 1, !tbaa !8
  %i.bn = zext i16 %.val.i to i32
  %i.bo = icmp ugt i32 %2, %i.bn
  br i1 %i.bo, label %ZSTD_fseBitCost.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.bp = shl nuw i32 1, %i.bg
  %i.bq = shl nuw nsw i32 %i.bg, 8
  %i.br = add nuw nsw i32 %i.bq, 256
  %i.bs = add nuw nsw i32 %2, 1
  %wide.trip.count.i64 = zext nneg i32 %i.bs to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv.i65 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i66, %bb.q ] ; 3 uses
  %.02031.i = phi i64 [ 0, %.preheader.i ], [ %.1.ph.i, %bb.q ] ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv.i65
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !10 ; 2 uses
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = add nuw nsw i32 %i.bw, 1                ; 2 uses
  %i.by = add i32 %i.bv, %i.bp
  %i.bz = shl i32 %i.bx, 24
  %i.ca = shl i32 %i.by, 8
  %i.cb = sub i32 %i.bz, %i.ca
  %i.cc = lshr i32 %i.cb, %i.bg
  %i.cd = shl nuw nsw i32 %i.bx, 8
  %i.ce = sub i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i65
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !12 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not26.i = icmp ult i32 %i.ce, %i.br
  br i1 %.not26.i, label %bb.p, label %ZSTD_fseBitCost.exit

bb.p:                                             ; preds = %bb.o
  %i.ci = zext i32 %i.cg to i64
  %i.cj = zext nneg i32 %i.ce to i64
  %i.ck = mul nuw nsw i64 %i.cj, %i.ci
  %i.cl = add i64 %i.ck, %.02031.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.1.ph.i = phi i64 [ %.02031.i, %bb.n ], [ %i.cl, %bb.p ] ; 2 uses
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i64
  br i1 %exitcond.not.i, label %bb.r, label %bb.n, !llvm.loop !13

bb.r:                                             ; preds = %bb.q
  %i.cm = lshr i64 %.1.ph.i, 8
  br label %ZSTD_fseBitCost.exit

ZSTD_fseBitCost.exit:                             ; preds = %bb.o, %bb.r, %bb.m, %bb.l
  %i.cn = phi i64 [ -1, %bb.l ], [ %i.cm, %bb.r ], [ -1, %bb.m ], [ -1, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.co = tail call i32 @FSE_optimalTableLog(i32 noundef %5, i64 noundef %4, i32 noundef %2) #8 ; 2 uses
  %i.cp = icmp ugt i64 %4, 2047
  %i.cq = zext i1 %i.cp to i32
  %i.cr = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.b, i32 noundef %i.co, ptr noundef %1, i64 noundef %4, i32 noundef %2, i32 noundef %i.cq) #8 ; 2 uses
  %12 = icmp ugt i64 %i.cr, -120
  br i1 %12, label %ZSTD_NCountCost.exit, label %bb.s

bb.s:                                             ; preds = %ZSTD_fseBitCost.exit
  %i.cs = call i64 @FSE_writeNCount(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %i.co) #8
  br label %ZSTD_NCountCost.exit

ZSTD_NCountCost.exit:                             ; preds = %ZSTD_fseBitCost.exit, %bb.s
  %.1.i = phi i64 [ %i.cs, %bb.s ], [ %i.cr, %ZSTD_fseBitCost.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ct = add i32 %2, 1
  %umax.i67 = call i32 @llvm.umax.i32(i32 %i.ct, i32 1)
  %wide.trip.count.i68 = zext i32 %umax.i67 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %ZSTD_NCountCost.exit
  %indvars.iv.i69 = phi i64 [ 0, %ZSTD_NCountCost.exit ], [ %indvars.iv.next.i70, %bb.t ] ; 2 uses
  %.016.i = phi i32 [ 0, %ZSTD_NCountCost.exit ], [ %i.df, %bb.t ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i69
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12 ; 3 uses
  %i.cw = shl i32 %i.cv, 8
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = udiv i64 %i.cx, %4
  %i.cz = icmp ne i32 %i.cv, 0
  %i.da = icmp ugt i64 %4, %i.cx
  %or.cond.i = and i1 %i.cz, %i.da
  %i.db = select i1 %or.cond.i, i64 1, i64 %i.cy
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !12
  %i.de = mul i32 %i.dd, %i.cv
  %i.df = add i32 %i.de, %.016.i                  ; 2 uses
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %exitcond.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i68
  br i1 %exitcond.i71, label %ZSTD_entropyCost.exit, label %bb.t, !llvm.loop !16

ZSTD_entropyCost.exit:                            ; preds = %bb.t
  %i.dg = shl i64 %.1.i, 3
  %i.dh = lshr i32 %i.df, 8
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = add i64 %i.dg, %i.di                    ; 2 uses
  %.not57 = icmp ugt i64 %i.be, %i.cn
  %.not58 = icmp ugt i64 %i.be, %i.dj
  %or.cond61 = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ZSTD_entropyCost.exit
  store i32 0, ptr %0, align 4, !tbaa !12
  br label %.thread

bb.v:                                             ; preds = %ZSTD_entropyCost.exit
  %.not59 = icmp ugt i64 %i.cn, %i.dj
  br i1 %.not59, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v, %bb.g, %bb.d
  store i32 1, ptr %0, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.u, %bb.h, %bb.e, %bb.b, %bb.w
  %.2 = phi i32 [ %., %bb.b ], [ 3, %bb.e ], [ 2, %bb.w ], [ 0, %bb.h ], [ 3, %bb.v ], [ 0, %bb.u ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_buildCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef readonly captures(none) %12, i64 noundef %13, ptr noundef %14, i64 noundef %15) local_unnamed_addr #2 {
bb.a:
  switch i32 %4, label %bb.l [
    i32 1, label %bb.b
    i32 3, label %bb.e
    i32 0, label %bb.f
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i32 %6 to i8
  %i.b = tail call i64 @FSE_buildCTable_rle(ptr noundef %2, i8 noundef zeroext %i.a) #8 ; 2 uses
  %16 = icmp ugt i64 %i.b, -120
  br i1 %16, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i8, ptr %7, align 1, !tbaa !17
  store i8 %i.d, ptr %0, align 1, !tbaa !17
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %12, i64 %13, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.e = tail call i64 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %9, i32 noundef %11, i32 noundef %10, ptr noundef %14, i64 noundef %15) #8 ; 2 uses
  %17 = icmp ugt i64 %i.e, -120
  %spec.select = select i1 %17, i64 %i.e, i64 0
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.f = tail call i32 @FSE_optimalTableLog(i32 noundef %3, i64 noundef %8, i32 noundef %6) #8 ; 3 uses
  %i.g = getelementptr i8, ptr %7, i64 %8
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = add i32 %i.l, -1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !12
  %i.o = add i64 %8, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i64 [ %i.o, %bb.h ], [ %8, %bb.g ]    ; 2 uses
  %i.p = icmp ugt i64 %.0, 2047
  %i.q = zext i1 %i.p to i32
  %i.r = tail call i64 @FSE_normalizeCount(ptr noundef %14, i32 noundef %i.f, ptr noundef nonnull %5, i64 noundef %.0, i32 noundef %6, i32 noundef %i.q) #8 ; 2 uses
  %18 = icmp ugt i64 %i.r, -120
  br i1 %18, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i64 @FSE_writeNCount(ptr noundef %0, i64 noundef %1, ptr noundef %14, i32 noundef %6, i32 noundef %i.f) #8 ; 3 uses
  %19 = icmp ugt i64 %i.s, -120
  br i1 %19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 108
  %i.u = tail call i64 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %14, i32 noundef %6, i32 noundef %i.f, ptr noundef nonnull %i.t, i64 noundef 1140) #8 ; 2 uses
  %20 = icmp ugt i64 %i.u, -120
  %spec.select79 = select i1 %20, i64 %i.u, i64 %i.s
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.a, %bb.i, %bb.j, %bb.c, %bb.b, %bb.e, %bb.d
  %.7 = phi i64 [ %i.s, %bb.j ], [ -70, %bb.c ], [ 1, %bb.d ], [ %i.b, %bb.b ], [ 0, %bb.e ], [ -1, %bb.a ], [ %spec.select79, %bb.k ], [ %i.r, %bb.i ], [ %spec.select, %bb.f ]
  ret i64 %.7
}

declare i64 @FSE_buildCTable_rle(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 1, 0) i64 @ZSTD_encodeSequences(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i64 @ZSTD_encodeSequences_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef %10)
  br label %ZSTD_encodeSequences_default.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 21 uses
  %12 = icmp ult i64 %1, 9
  br i1 %12, label %ZSTD_encodeSequences_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %9, -1                           ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %.val.i.i.i = load i16, ptr %2, align 1, !tbaa !8 ; 3 uses
  %i.g = zext i16 %.val.i.i.i to i32              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq i16 %.val.i.i.i, 0
  %i.i = add nsw i32 %i.g, -1
  %i.j = shl nuw i32 1, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = select i1 %.not.i.i.i, i64 1, i64 %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %i.n = zext i8 %i.f to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.o, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !12 ; 2 uses
  %i.p = add i32 %.sroa.4.0.copyload.i.i, 32768   ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = and i32 %i.p, -65536
  %i.s = sub i32 %i.r, %.sroa.4.0.copyload.i.i
  %i.t = zext i32 %i.s to i64
  %i.u = zext nneg i32 %i.q to i64
  %i.v = lshr i64 %i.t, %i.u
  %i.w = sext i32 %.sroa.0.0.copyload.i.i to i64
  %i.x = getelementptr [2 x i8], ptr %i.h, i64 %i.v
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.w
  %i.z = load i16, ptr %i.y, align 2, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.d
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17  ; 4 uses
  %i.ac = zext i8 %i.ab to i32                    ; 3 uses
  %.val.i.i16.i = load i16, ptr %4, align 1, !tbaa !8 ; 3 uses
  %i.ad = zext i16 %.val.i.i16.i to i32           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i.i17.i = icmp eq i16 %.val.i.i16.i, 0
  %i.af = add nsw i32 %i.ad, -1
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = select i1 %.not.i.i17.i, i64 1, i64 %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai ; 2 uses
  %i.ak = zext i8 %i.ab to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %.sroa.0.0.copyload.i18.i = load i32, ptr %i.al, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.4.0.copyload.i20.i = load i32, ptr %.sroa.4.0..sroa_idx.i19.i, align 4, !tbaa !12 ; 2 uses
  %i.am = add i32 %.sroa.4.0.copyload.i20.i, 32768 ; 2 uses
  %i.an = lshr i32 %i.am, 16
  %i.ao = and i32 %i.am, -65536
  %i.ap = sub i32 %i.ao, %.sroa.4.0.copyload.i20.i
  %i.aq = zext i32 %i.ap to i64
  %i.ar = zext nneg i32 %i.an to i64
  %i.as = lshr i64 %i.aq, %i.ar
  %i.at = sext i32 %.sroa.0.0.copyload.i18.i to i64
  %i.au = getelementptr [2 x i8], ptr %i.ae, i64 %i.as
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 %i.d
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %.val.i.i21.i = load i16, ptr %6, align 1, !tbaa !8 ; 3 uses
  %i.az = zext i16 %.val.i.i21.i to i32           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %.not.i.i22.i = icmp eq i16 %.val.i.i21.i, 0
  %i.bb = add nsw i32 %i.az, -1
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = select i1 %.not.i.i22.i, i64 1, i64 %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = zext i8 %i.ay to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.bh, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !tbaa !12 ; 2 uses
  %i.bi = add i32 %.sroa.4.0.copyload.i25.i, 32768 ; 2 uses
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = and i32 %i.bi, -65536
  %i.bl = sub i32 %i.bk, %.sroa.4.0.copyload.i25.i
  %i.bm = zext i32 %i.bl to i64
  %i.bn = zext nneg i32 %i.bj to i64
  %i.bo = lshr i64 %i.bm, %i.bn
  %i.bp = sext i32 %.sroa.0.0.copyload.i23.i to i64
  %i.bq = getelementptr [2 x i8], ptr %i.ba, i64 %i.bo
  %i.br = getelementptr [2 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.d ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.bg
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !17  ; 2 uses
  %i.by = zext i8 %i.bx to i32
  %i.bz = zext i8 %i.bx to i64                    ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12
  %i.cc = zext i16 %i.bv to i32
  %i.cd = and i32 %i.cb, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.n
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !17  ; 2 uses
  %i.cj = zext i8 %i.ci to i32
  %i.ck = zext i8 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !12
  %i.cn = zext i16 %i.cg to i32
  %i.co = and i32 %i.cm, %i.cn
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl i64 %i.cp, %i.bz
  %i.cr = or i64 %i.cq, %i.ce                     ; 4 uses
  %i.cs = add nuw nsw i32 %i.cj, %i.by            ; 6 uses
  %.not92.i.i = icmp eq i32 %10, 0                ; 2 uses
  br i1 %.not92.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ct = icmp ult i8 %i.ab, 56
  br i1 %i.ct, label %..thread_crit_edge.i, label %bb.f

..thread_crit_edge.i:                             ; preds = %bb.e
  %.pre.i = load i32, ptr %i.bt, align 4, !tbaa !21
  br label %.thread.i

bb.f:                                             ; preds = %bb.e
  %.not93.i.i = icmp eq i8 %i.ab, 56
  %.pre158.i = load i32, ptr %i.bt, align 4, !tbaa !21 ; 3 uses
  br i1 %.not93.i.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = add nsw i32 %i.ac, -56                  ; 3 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !12
  %i.cy = and i32 %i.cx, %.pre158.i
  %i.cz = zext i32 %i.cy to i64
  %i.da = zext nneg i32 %i.cs to i64
  %i.db = shl i64 %i.cz, %i.da
  %i.dc = or i64 %i.db, %i.cr                     ; 2 uses
  %i.dd = add nuw nsw i32 %i.cs, %i.cu            ; 2 uses
  %i.de = lshr i32 %i.dd, 3
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  store i64 %i.dc, ptr %0, align 1, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.c
  %spec.store.select.i.i = select i1 %i.dh, ptr %i.c, ptr %i.dg
  %i.di = and i32 %i.dd, 7
  %i.dj = shl nuw nsw i64 %i.df, 3
  %i.dk = lshr i64 %i.dc, %i.dj
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %..thread_crit_edge.i
  %i.dl = phi i32 [ %.pre158.i, %bb.f ], [ %.pre158.i, %bb.g ], [ %.pre.i, %..thread_crit_edge.i ]
  %i.dm = phi i32 [ 0, %bb.f ], [ %i.cu, %bb.g ], [ 0, %..thread_crit_edge.i ]
  %i.dn = phi i32 [ 56, %bb.f ], [ 56, %bb.g ], [ %i.ac, %..thread_crit_edge.i ] ; 2 uses
  %.sroa.63.0.i = phi i32 [ %i.cs, %bb.f ], [ %i.di, %bb.g ], [ %i.cs, %..thread_crit_edge.i ] ; 2 uses
  %.sroa.058.0.i = phi i64 [ %i.cr, %bb.f ], [ %i.dk, %bb.g ], [ %i.cr, %..thread_crit_edge.i ]
  %.sroa.112.0.i = phi ptr [ %0, %bb.f ], [ %spec.store.select.i.i, %bb.g ], [ %0, %..thread_crit_edge.i ]
  %i.do = lshr i32 %i.dl, %i.dm
  %i.dp = zext nneg i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !12
  %i.ds = and i32 %i.dr, %i.do
  %i.dt = zext i32 %i.ds to i64
  %i.du = zext nneg i32 %.sroa.63.0.i to i64
  %i.dv = shl i64 %i.dt, %i.du
  %i.dw = or i64 %i.dv, %.sroa.058.0.i
  %i.dx = add nuw nsw i32 %.sroa.63.0.i, %i.dn
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.dy = load i32, ptr %i.bt, align 4, !tbaa !21
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.ak
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !12
  %i.eb = and i32 %i.ea, %i.dy
  %i.ec = zext i32 %i.eb to i64
  %i.ed = zext nneg i32 %i.cs to i64
  %i.ee = shl i64 %i.ec, %i.ed
  %i.ef = or i64 %i.ee, %i.cr
  %i.eg = add nuw nsw i32 %i.cs, %i.ac
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  %.sroa.63.1.i = phi i32 [ %i.eg, %bb.h ], [ %i.dx, %.thread.i ] ; 2 uses
  %.sroa.058.1.i = phi i64 [ %i.ef, %bb.h ], [ %i.dw, %.thread.i ] ; 2 uses
  %.sroa.112.1.i = phi ptr [ %0, %bb.h ], [ %.sroa.112.0.i, %.thread.i ] ; 2 uses
  %i.eh = lshr i32 %.sroa.63.1.i, 3
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  store i64 %.sroa.058.1.i, ptr %.sroa.112.1.i, align 1, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.112.1.i, i64 %i.ei ; 2 uses
  %i.ek = icmp ugt ptr %i.ej, %i.c
  %spec.store.select.i26.i = select i1 %i.ek, ptr %i.c, ptr %i.ej ; 2 uses
  %i.el = shl nuw nsw i64 %i.ei, 3
  %i.em = lshr i64 %.sroa.058.1.i, %i.el          ; 2 uses
  %.sroa.0.0138.i = zext i16 %i.bs to i64         ; 2 uses
  %.sroa.046.0139.i = zext i16 %i.aw to i64       ; 2 uses
  %.sroa.052.0140.i = zext i16 %i.z to i64        ; 2 uses
  %.sroa.63.2141.i = and i32 %.sroa.63.1.i, 7     ; 2 uses
  %i.en = icmp ugt i64 %9, 1
  br i1 %i.en, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
end_hunk_0
begin_hunk_1_@ZSTD_encodeSequences:bb.a
  store i64 %i.io, ptr %.sroa.112.3.i, align 1, !tbaa !22
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.112.3.i, i64 %i.is ; 2 uses
  %i.iu = icmp ugt ptr %i.it, %i.c
  %spec.store.select.i37.i = select i1 %i.iu, ptr %i.c, ptr %i.it
  %i.iv = and i32 %i.ip, 7
  %i.iw = shl nuw nsw i64 %i.is, 3
  %i.ix = lshr i64 %i.io, %i.iw
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.63.4.i = phi i32 [ %i.iv, %bb.l ], [ %i.ip, %bb.k ] ; 6 uses
  %.sroa.058.4.i = phi i64 [ %i.ix, %bb.l ], [ %i.io, %bb.k ] ; 4 uses
  %.sroa.112.4.i = phi ptr [ %spec.store.select.i37.i, %bb.l ], [ %.sroa.112.3.i, %bb.k ] ; 5 uses
  br i1 %.not92.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.iy = icmp ult i8 %i.es, 56
  br i1 %i.iy, label %..thread133_crit_edge.i, label %bb.o

..thread133_crit_edge.i:                          ; preds = %bb.n
  %.pre159.i = load i32, ptr %i.hr, align 4, !tbaa !21
  br label %.thread133.i

bb.o:                                             ; preds = %bb.n
  %.not94.i.i = icmp eq i8 %i.es, 56
  %.pre160.i = load i32, ptr %i.hr, align 4, !tbaa !21 ; 3 uses
  br i1 %.not94.i.i, label %.thread133.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.iz = add nsw i32 %i.ez, -56                  ; 3 uses
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !12
  %i.jd = and i32 %i.jc, %.pre160.i
  %i.je = zext i32 %i.jd to i64
  %i.jf = zext nneg i32 %.sroa.63.4.i to i64
  %i.jg = shl i64 %i.je, %i.jf
  %i.jh = or i64 %i.jg, %.sroa.058.4.i            ; 2 uses
  %i.ji = add nsw i32 %.sroa.63.4.i, %i.iz        ; 2 uses
  %i.jj = lshr i32 %i.ji, 3
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  store i64 %i.jh, ptr %.sroa.112.4.i, align 1, !tbaa !22
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.112.4.i, i64 %i.jk ; 2 uses
  %i.jm = icmp ugt ptr %i.jl, %i.c
  %spec.store.select.i38.i = select i1 %i.jm, ptr %i.c, ptr %i.jl
  %i.jn = and i32 %i.ji, 7
  %i.jo = shl nuw nsw i64 %i.jk, 3
  %i.jp = lshr i64 %i.jh, %i.jo
  br label %.thread133.i

.thread133.i:                                     ; preds = %bb.p, %bb.o, %..thread133_crit_edge.i
  %i.jq = phi i32 [ %.pre160.i, %bb.o ], [ %.pre160.i, %bb.p ], [ %.pre159.i, %..thread133_crit_edge.i ]
  %i.jr = phi i32 [ 0, %bb.o ], [ %i.iz, %bb.p ], [ 0, %..thread133_crit_edge.i ]
  %i.js = phi i32 [ 56, %bb.o ], [ 56, %bb.p ], [ %i.ez, %..thread133_crit_edge.i ] ; 2 uses
  %.sroa.63.5.i = phi i32 [ %.sroa.63.4.i, %bb.o ], [ %i.jn, %bb.p ], [ %.sroa.63.4.i, %..thread133_crit_edge.i ] ; 2 uses
  %.sroa.058.5.i = phi i64 [ %.sroa.058.4.i, %bb.o ], [ %i.jp, %bb.p ], [ %.sroa.058.4.i, %..thread133_crit_edge.i ]
  %.sroa.112.5.i = phi ptr [ %.sroa.112.4.i, %bb.o ], [ %spec.store.select.i38.i, %bb.p ], [ %.sroa.112.4.i, %..thread133_crit_edge.i ]
  %i.jt = lshr i32 %i.jq, %i.jr
  %i.ju = zext nneg i32 %i.js to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !12
  %i.jx = and i32 %i.jw, %i.jt
  %i.jy = zext i32 %i.jx to i64
  %i.jz = zext nneg i32 %.sroa.63.5.i to i64
  %i.ka = shl i64 %i.jy, %i.jz
  %i.kb = or i64 %i.ka, %.sroa.058.5.i
  %i.kc = add nuw nsw i32 %.sroa.63.5.i, %i.js
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.kd = load i32, ptr %i.hr, align 4, !tbaa !21
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.fe
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !12
  %i.kg = and i32 %i.kf, %i.kd
  %i.kh = zext i32 %i.kg to i64
  %i.ki = zext nneg i32 %.sroa.63.4.i to i64
  %i.kj = shl i64 %i.kh, %i.ki
  %i.kk = or i64 %i.kj, %.sroa.058.4.i
  %i.kl = add nuw nsw i32 %.sroa.63.4.i, %i.ez
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread133.i
  %.sroa.63.6.i = phi i32 [ %i.kl, %bb.q ], [ %i.kc, %.thread133.i ] ; 2 uses
  %.sroa.058.6.i = phi i64 [ %i.kk, %bb.q ], [ %i.kb, %.thread133.i ] ; 2 uses
  %.sroa.112.6.i = phi ptr [ %.sroa.112.4.i, %bb.q ], [ %.sroa.112.5.i, %.thread133.i ] ; 2 uses
  %i.km = lshr i32 %.sroa.63.6.i, 3
  %i.kn = zext nneg i32 %i.km to i64              ; 2 uses
  store i64 %.sroa.058.6.i, ptr %.sroa.112.6.i, align 1, !tbaa !22
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.112.6.i, i64 %i.kn ; 2 uses
  %i.kp = icmp ugt ptr %i.ko, %i.c
  %spec.store.select.i39.i = select i1 %i.kp, ptr %i.c, ptr %i.ko ; 2 uses
  %i.kq = shl nuw nsw i64 %i.kn, 3
  %i.kr = lshr i64 %.sroa.058.6.i, %i.kq          ; 2 uses
  %i.ks = add i64 %.0.i144.i, -1                  ; 2 uses
  %.sroa.0.0.i = zext i16 %i.hg to i64            ; 2 uses
  %.sroa.046.0.i = zext i16 %i.fv to i64          ; 2 uses
  %.sroa.052.0.i = zext i16 %i.gm to i64          ; 2 uses
  %.sroa.63.2.i = and i32 %.sroa.63.6.i, 7        ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %9
  br i1 %i.kt, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.r, %bb.i
  %.sroa.058.2.lcssa.i = phi i64 [ %i.em, %bb.i ], [ %i.kr, %bb.r ]
  %.sroa.112.2.lcssa.i = phi ptr [ %spec.store.select.i26.i, %bb.i ], [ %spec.store.select.i39.i, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.0138.i, %bb.i ], [ %.sroa.0.0.i, %bb.r ]
  %.sroa.046.0.lcssa.i = phi i64 [ %.sroa.046.0139.i, %bb.i ], [ %.sroa.046.0.i, %bb.r ]
  %.sroa.052.0.lcssa.i = phi i64 [ %.sroa.052.0140.i, %bb.i ], [ %.sroa.052.0.i, %bb.r ]
  %.sroa.63.2.lcssa.i = phi i32 [ %.sroa.63.2141.i, %bb.i ], [ %.sroa.63.2.i, %bb.r ] ; 2 uses
  %i.ku = zext i16 %.val.i.i.i to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !12
  %i.kx = zext i32 %i.kw to i64
  %i.ky = and i64 %.sroa.052.0.lcssa.i, %i.kx
  %i.kz = zext nneg i32 %.sroa.63.2.lcssa.i to i64
  %i.la = shl nuw nsw i64 %i.ky, %i.kz
  %i.lb = or i64 %i.la, %.sroa.058.2.lcssa.i      ; 2 uses
  %i.lc = add nuw nsw i32 %.sroa.63.2.lcssa.i, %i.g ; 2 uses
  %i.ld = lshr i32 %i.lc, 3
  %i.le = zext nneg i32 %i.ld to i64              ; 2 uses
  store i64 %i.lb, ptr %.sroa.112.2.lcssa.i, align 1, !tbaa !22
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.112.2.lcssa.i, i64 %i.le ; 2 uses
  %i.lg = icmp ugt ptr %i.lf, %i.c
  %spec.store.select.i.i.i = select i1 %i.lg, ptr %i.c, ptr %i.lf ; 2 uses
  %i.lh = and i32 %i.lc, 7                        ; 2 uses
  %i.li = shl nuw nsw i64 %i.le, 3
  %i.lj = lshr i64 %i.lb, %i.li
  %i.lk = zext i16 %.val.i.i16.i to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !12
  %i.ln = zext i32 %i.lm to i64
  %i.lo = and i64 %.sroa.046.0.lcssa.i, %i.ln
  %i.lp = zext nneg i32 %i.lh to i64
  %i.lq = shl nuw nsw i64 %i.lo, %i.lp
  %i.lr = or i64 %i.lq, %i.lj                     ; 2 uses
  %i.ls = add nuw nsw i32 %i.lh, %i.ad            ; 2 uses
  %i.lt = lshr i32 %i.ls, 3
  %i.lu = zext nneg i32 %i.lt to i64              ; 2 uses
  store i64 %i.lr, ptr %spec.store.select.i.i.i, align 1, !tbaa !22
  %i.lv = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i.i, i64 %i.lu ; 2 uses
  %i.lw = icmp ugt ptr %i.lv, %i.c
  %spec.store.select.i.i40.i = select i1 %i.lw, ptr %i.c, ptr %i.lv ; 2 uses
  %i.lx = and i32 %i.ls, 7                        ; 2 uses
  %i.ly = shl nuw nsw i64 %i.lu, 3
  %i.lz = lshr i64 %i.lr, %i.ly
  %i.ma = zext i16 %.val.i.i21.i to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !12
  %i.md = zext i32 %i.mc to i64
  %i.me = and i64 %.sroa.0.0.lcssa.i, %i.md
  %i.mf = zext nneg i32 %i.lx to i64
  %i.mg = shl nuw nsw i64 %i.me, %i.mf
  %i.mh = or i64 %i.mg, %i.lz                     ; 2 uses
  %i.mi = add nuw nsw i32 %i.lx, %i.az            ; 2 uses
  %i.mj = lshr i32 %i.mi, 3
  %i.mk = zext nneg i32 %i.mj to i64              ; 2 uses
  store i64 %i.mh, ptr %spec.store.select.i.i40.i, align 1, !tbaa !22
  %i.ml = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i40.i, i64 %i.mk ; 2 uses
  %i.mm = icmp ugt ptr %i.ml, %i.c
  %spec.store.select.i.i41.i = select i1 %i.mm, ptr %i.c, ptr %i.ml ; 2 uses
  %i.mn = and i32 %i.mi, 7                        ; 2 uses
  %i.mo = shl nuw nsw i64 %i.mk, 3
  %i.mp = lshr i64 %i.mh, %i.mo
  %i.mq = zext nneg i32 %i.mn to i64
  %i.mr = shl nuw nsw i64 1, %i.mq
  %i.ms = or i64 %i.mp, %i.mr
  %i.mt = add nuw nsw i32 %i.mn, 1                ; 2 uses
  %i.mu = lshr i32 %i.mt, 3
  %i.mv = zext nneg i32 %i.mu to i64
  store i64 %i.ms, ptr %spec.store.select.i.i41.i, align 1, !tbaa !22
  %i.mw = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i41.i, i64 %i.mv ; 2 uses
  %i.mx = icmp ugt ptr %i.mw, %i.c
  %spec.store.select.i.i42.i = select i1 %i.mx, ptr %i.c, ptr %i.mw ; 2 uses
  %.not.i43.i = icmp ult ptr %spec.store.select.i.i42.i, %i.c
  br i1 %.not.i43.i, label %BIT_closeCStream.exit.i, label %BIT_closeCStream.exit.thread.i

BIT_closeCStream.exit.i:                          ; preds = %._crit_edge.i
  %i.my = and i32 %i.mt, 7
  %i.mz = ptrtoint ptr %spec.store.select.i.i42.i to i64
  %i.na = ptrtoint ptr %0 to i64
  %i.nb = icmp ne i32 %i.my, 0
  %i.nc = zext i1 %i.nb to i64
  %i.nd = add i64 %i.mz, %i.nc
  %.fr137.i = freeze i64 %i.nd
  %i.ne = sub i64 %.fr137.i, %i.na                ; 2 uses
  %i.nf = icmp eq i64 %i.ne, 0
  br i1 %i.nf, label %BIT_closeCStream.exit.thread.i, label %ZSTD_encodeSequences_default.exit

BIT_closeCStream.exit.thread.i:                   ; preds = %BIT_closeCStream.exit.i, %._crit_edge.i
  br label %ZSTD_encodeSequences_default.exit

ZSTD_encodeSequences_default.exit:                ; preds = %BIT_closeCStream.exit.thread.i, %BIT_closeCStream.exit.i, %bb.c, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ -70, %bb.c ], [ -70, %BIT_closeCStream.exit.thread.i ], [ %i.ne, %BIT_closeCStream.exit.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 1, 0) i64 @ZSTD_encodeSequences_bmi2(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9, i32 noundef %10) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 21 uses
  %11 = icmp ult i64 %1, 9
  br i1 %11, label %ZSTD_encodeSequences_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %9, -1                           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %.val.i.i = load i16, ptr %2, align 1, !tbaa !8 ; 3 uses
  %i.f = zext i16 %.val.i.i to i32                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.not.i.i = icmp eq i16 %.val.i.i, 0
  %i.h = add nsw i32 %i.f, -1
  %i.i = shl nuw i32 1, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %.not.i.i, i64 1, i64 %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.k ; 2 uses
  %i.m = zext i8 %i.e to i64                      ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !12 ; 2 uses
  %i.o = add i32 %.sroa.4.0.copyload.i, 32768     ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = and i32 %i.o, -65536
  %i.r = sub i32 %i.q, %.sroa.4.0.copyload.i
  %i.s = zext i32 %i.r to i64
  %i.t = zext nneg i32 %i.p to i64
  %i.u = lshr i64 %i.s, %i.t
  %i.v = sext i32 %.sroa.0.0.copyload.i to i64
  %i.w = getelementptr [2 x i8], ptr %i.g, i64 %i.u
  %i.x = getelementptr [2 x i8], ptr %i.w, i64 %i.v
  %i.y = load i16, ptr %i.x, align 2, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 %i.c
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 4 uses
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %.val.i.i16 = load i16, ptr %4, align 1, !tbaa !8 ; 3 uses
  %i.ac = zext i16 %.val.i.i16 to i32             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i.i17 = icmp eq i16 %.val.i.i16, 0
  %i.ae = add nsw i32 %i.ac, -1
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = select i1 %.not.i.i17, i64 1, i64 %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = zext i8 %i.aa to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.ak, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.4.0.copyload.i20 = load i32, ptr %.sroa.4.0..sroa_idx.i19, align 4, !tbaa !12 ; 2 uses
  %i.al = add i32 %.sroa.4.0.copyload.i20, 32768  ; 2 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = and i32 %i.al, -65536
  %i.ao = sub i32 %i.an, %.sroa.4.0.copyload.i20
  %i.ap = zext i32 %i.ao to i64
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = lshr i64 %i.ap, %i.aq
  %i.as = sext i32 %.sroa.0.0.copyload.i18 to i64
  %i.at = getelementptr [2 x i8], ptr %i.ad, i64 %i.ar
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  %i.av = load i16, ptr %i.au, align 2, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 %i.c
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %.val.i.i21 = load i16, ptr %6, align 1, !tbaa !8 ; 3 uses
  %i.ay = zext i16 %.val.i.i21 to i32             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %.not.i.i22 = icmp eq i16 %.val.i.i21, 0
  %i.ba = add nsw i32 %i.ay, -1
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = select i1 %.not.i.i22, i64 1, i64 %i.bc
  %i.be = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = zext i8 %i.ax to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.bg, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.4.0.copyload.i25 = load i32, ptr %.sroa.4.0..sroa_idx.i24, align 4, !tbaa !12 ; 2 uses
  %i.bh = add i32 %.sroa.4.0.copyload.i25, 32768  ; 2 uses
  %i.bi = lshr i32 %i.bh, 16
  %i.bj = and i32 %i.bh, -65536
  %i.bk = sub i32 %i.bj, %.sroa.4.0.copyload.i25
  %i.bl = zext i32 %i.bk to i64
  %i.bm = zext nneg i32 %i.bi to i64
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = sext i32 %.sroa.0.0.copyload.i23 to i64
  %i.bp = getelementptr [2 x i8], ptr %i.az, i64 %i.bn
  %i.bq = getelementptr [2 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.c ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.bf
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17  ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = zext i8 %i.bw to i64                    ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !12
  %i.cb = zext i16 %i.bu to i32
  %i.cc = and i32 %i.ca, %i.cb
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.m
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !17  ; 2 uses
  %i.ci = zext i8 %i.ch to i32
  %i.cj = zext i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.cm = zext i16 %i.cf to i32
  %i.cn = and i32 %i.cl, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl i64 %i.co, %i.by
  %i.cq = or i64 %i.cp, %i.cd                     ; 4 uses
  %i.cr = add nuw nsw i32 %i.ci, %i.bx            ; 6 uses
  %.not92.i = icmp eq i32 %10, 0                  ; 2 uses
  br i1 %.not92.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cs = icmp ult i8 %i.aa, 56
  br i1 %i.cs, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.bs, align 4, !tbaa !21
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %.not93.i = icmp eq i8 %i.aa, 56
  %.pre158 = load i32, ptr %i.bs, align 4, !tbaa !21 ; 3 uses
  br i1 %.not93.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ct = add nsw i32 %i.ab, -56                  ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cx = and i32 %i.cw, %.pre158
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext nneg i32 %i.cr to i64
  %i.da = shl i64 %i.cy, %i.cz
  %i.db = or i64 %i.da, %i.cq                     ; 2 uses
  %i.dc = add nuw nsw i32 %i.cr, %i.ct            ; 2 uses
  %i.dd = lshr i32 %i.dc, 3
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  store i64 %i.db, ptr %0, align 1, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.de ; 2 uses
  %i.dg = icmp ugt ptr %i.df, %i.b
  %spec.store.select.i = select i1 %i.dg, ptr %i.b, ptr %i.df
  %i.dh = and i32 %i.dc, 7
  %i.di = shl nuw nsw i64 %i.de, 3
  %i.dj = lshr i64 %i.db, %i.di
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.e, %bb.d
  %i.dk = phi i32 [ %.pre158, %bb.d ], [ %.pre158, %bb.e ], [ %.pre, %..thread_crit_edge ]
  %i.dl = phi i32 [ 0, %bb.d ], [ %i.ct, %bb.e ], [ 0, %..thread_crit_edge ]
  %i.dm = phi i32 [ 56, %bb.d ], [ 56, %bb.e ], [ %i.ab, %..thread_crit_edge ] ; 2 uses
  %.sroa.63.0 = phi i32 [ %i.cr, %bb.d ], [ %i.dh, %bb.e ], [ %i.cr, %..thread_crit_edge ] ; 2 uses
  %.sroa.058.0 = phi i64 [ %i.cq, %bb.d ], [ %i.dj, %bb.e ], [ %i.cq, %..thread_crit_edge ]
  %.sroa.112.0 = phi ptr [ %0, %bb.d ], [ %spec.store.select.i, %bb.e ], [ %0, %..thread_crit_edge ]
  %i.dn = lshr i32 %i.dk, %i.dl
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !12
  %i.dr = and i32 %i.dn, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = zext nneg i32 %.sroa.63.0 to i64
  %i.du = shl i64 %i.ds, %i.dt
  %i.dv = or i64 %i.du, %.sroa.058.0
  %i.dw = add nuw nsw i32 %.sroa.63.0, %i.dm
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.dx = load i32, ptr %i.bs, align 4, !tbaa !21
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @BIT_mask, i64 %i.aj
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !12
  %i.ea = and i32 %i.dz, %i.dx
  %i.eb = zext i32 %i.ea to i64
  %i.ec = zext nneg i32 %i.cr to i64
  %i.ed = shl i64 %i.eb, %i.ec
  %i.ee = or i64 %i.ed, %i.cq
  %i.ef = add nuw nsw i32 %i.cr, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.63.1 = phi i32 [ %i.ef, %bb.f ], [ %i.dw, %.thread ] ; 2 uses
  %.sroa.058.1 = phi i64 [ %i.ee, %bb.f ], [ %i.dv, %.thread ] ; 2 uses
  %.sroa.112.1 = phi ptr [ %0, %bb.f ], [ %.sroa.112.0, %.thread ] ; 2 uses
  %i.eg = lshr i32 %.sroa.63.1, 3
  %i.eh = zext nneg i32 %i.eg to i64              ; 2 uses
  store i64 %.sroa.058.1, ptr %.sroa.112.1, align 1, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.112.1, i64 %i.eh ; 2 uses
  %i.ej = icmp ugt ptr %i.ei, %i.b
  %spec.store.select.i26 = select i1 %i.ej, ptr %i.b, ptr %i.ei ; 2 uses
  %i.ek = shl nuw nsw i64 %i.eh, 3
  %i.el = lshr i64 %.sroa.058.1, %i.ek            ; 2 uses
  %.sroa.0.0138 = zext i16 %i.br to i64           ; 2 uses
  %.sroa.046.0139 = zext i16 %i.av to i64         ; 2 uses
  %.sroa.052.0140 = zext i16 %i.y to i64          ; 2 uses
  %.sroa.63.2141 = and i32 %.sroa.63.1, 7         ; 2 uses
  %i.em = icmp ugt i64 %9, 1
  br i1 %i.em, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
end_hunk_1
