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
  %.val.i = load i16, ptr %0, align 1, !tbaa !12  ; 2 uses
  %i.a = zext i16 %.val.i to i32                  ; 4 uses
  %.not.i = icmp eq i16 %.val.i, 0
  %i.b = add nsw i32 %i.a, -1
  %i.c = shl nuw i32 1, %i.b
  %i.d = sext i32 %i.c to i64
  %i.e = select i1 %.not.i, i64 1, i64 %i.d
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %0, i64 2
  %.val = load i16, ptr %i.g, align 1, !tbaa !12
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14   ; 2 uses
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
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15  ; 2 uses
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
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !0

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
  %umax = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 2 uses
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.01417 = phi i64 [ 0, %.new ], [ %i.y, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.e = load i16, ptr %i.d, align 2, !tbaa !12   ; 2 uses
  %.not16 = icmp eq i16 %i.e, -1
  %narrow = select i1 %.not16, i16 1, i16 %i.e
  %spec.select = sext i16 %narrow to i32
  %i.f = shl i32 %spec.select, %i.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %i.l = mul i32 %i.k, %i.h
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %.01417, %i.m
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.p = load i16, ptr %i.o, align 2, !tbaa !12   ; 2 uses
  %.not16.1 = icmp eq i16 %i.p, -1
  %narrow.1 = select i1 %.not16.1, i16 1, i16 %i.p
  %spec.select.1 = sext i16 %narrow.1 to i32
  %i.q = shl i32 %spec.select.1, %i.a
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = mul i32 %i.v, %i.s
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %i.n, %i.x                       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.b, !llvm.loop !1

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.01417.epil.init = phi i64 [ 0, %bb.a ], [ %i.y, %.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !12  ; 2 uses
  %.not16.epil = icmp eq i16 %i.aa, -1
  %narrow.epil = select i1 %.not16.epil, i16 1, i16 %i.aa
  %spec.select.epil = sext i16 %narrow.epil to i32
  %i.ab = shl i32 %spec.select.epil, %i.a
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15
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
  store i32 0, ptr %0, align 4, !tbaa !15
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
  %i.g = load i32, ptr %0, align 4, !tbaa !15
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
  store i32 0, ptr %0, align 4, !tbaa !15
  br label %.thread

bb.i:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = sub i32 8, %8                            ; 3 uses
  %i.u = add i32 %2, 1                            ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 2 uses
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.k ] ; 4 uses
  %.01417.i = phi i64 [ 0, %.new ], [ %i.ar, %bb.k ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.k ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !12   ; 2 uses
  %.not16.i = icmp eq i16 %i.x, -1
  %narrow.i = select i1 %.not16.i, i16 1, i16 %i.x
  %spec.select.i = sext i16 %narrow.i to i32
  %i.y = shl i32 %spec.select.i, %i.t
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %i.ae = mul i32 %i.ad, %i.aa
  %i.af = zext i32 %i.ae to i64
  %i.ag = add i64 %.01417.i, %i.af
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.next.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !12 ; 2 uses
  %.not16.i.1 = icmp eq i16 %i.ai, -1
  %narrow.i.1 = select i1 %.not16.i.1, i16 1, i16 %i.ai
  %spec.select.i.1 = sext i16 %narrow.i.1 to i32
  %i.aj = shl i32 %spec.select.i.1, %i.t
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = mul i32 %i.ao, %i.al
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add i64 %i.ag, %i.aq                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ZSTD_crossEntropyCost.exit.unr-lcssa, label %bb.k, !llvm.loop !1

ZSTD_crossEntropyCost.exit.unr-lcssa:             ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZSTD_crossEntropyCost.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ZSTD_crossEntropyCost.exit.unr-lcssa, %bb.j
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.1, %ZSTD_crossEntropyCost.exit.unr-lcssa ] ; 2 uses
  %.01417.i.epil.init = phi i64 [ 0, %bb.j ], [ %i.ar, %ZSTD_crossEntropyCost.exit.unr-lcssa ]
  %lcmp.mod92 = trunc i32 %umax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.i.epil.init
  %i.at = load i16, ptr %i.as, align 2, !tbaa !12 ; 2 uses
  %.not16.i.epil = icmp eq i16 %i.at, -1
  %narrow.i.epil = select i1 %.not16.i.epil, i16 1, i16 %i.at
  %spec.select.i.epil = sext i16 %narrow.i.epil to i32
  %i.au = shl i32 %spec.select.i.epil, %i.t
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !15
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !15
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
  %i.bf = load i32, ptr %0, align 4, !tbaa !15
  %.not56 = icmp eq i32 %i.bf, 0
  br i1 %.not56, label %ZSTD_fseBitCost.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i = load i16, ptr %6, align 1, !tbaa !12 ; 2 uses
  %i.bg = zext i16 %.val.i.i to i32               ; 4 uses
  %.not.i.i = icmp eq i16 %.val.i.i, 0
  %i.bh = add nsw i32 %i.bg, -1
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = select i1 %.not.i.i, i64 1, i64 %i.bj
  %i.bl = getelementptr [4 x i8], ptr %6, i64 %i.bk
  %i.bm = getelementptr i8, ptr %6, i64 2
  %.val.i = load i16, ptr %i.bm, align 1, !tbaa !12
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
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14 ; 2 uses
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
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !15 ; 2 uses
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
  br i1 %exitcond.not.i, label %bb.r, label %bb.n, !llvm.loop !0

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
  %i.cs = icmp ult i64 %i.cr, -119
  br i1 %i.cs, label %bb.s, label %ZSTD_NCountCost.exit

bb.s:                                             ; preds = %ZSTD_fseBitCost.exit
  %i.ct = call i64 @FSE_writeNCount(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %i.co) #8
  br label %ZSTD_NCountCost.exit

ZSTD_NCountCost.exit:                             ; preds = %ZSTD_fseBitCost.exit, %bb.s
  %.1.i = phi i64 [ %i.ct, %bb.s ], [ %i.cr, %ZSTD_fseBitCost.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cu = add i32 %2, 1
  %umax.i67 = call i32 @llvm.umax.i32(i32 %i.cu, i32 1)
  %wide.trip.count.i68 = zext i32 %umax.i67 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %ZSTD_NCountCost.exit
  %indvars.iv.i69 = phi i64 [ 0, %ZSTD_NCountCost.exit ], [ %indvars.iv.next.i70, %bb.t ] ; 2 uses
  %.016.i = phi i32 [ 0, %ZSTD_NCountCost.exit ], [ %i.dg, %bb.t ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i69
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !15 ; 3 uses
  %i.cx = shl i32 %i.cw, 8
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = udiv i64 %i.cy, %4
  %i.da = icmp ne i32 %i.cw, 0
  %i.db = icmp ugt i64 %4, %i.cy
  %or.cond.i = and i1 %i.da, %i.db
  %i.dc = select i1 %or.cond.i, i64 1, i64 %i.cz
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !15
  %i.df = mul i32 %i.de, %i.cw
  %i.dg = add i32 %i.df, %.016.i                  ; 2 uses
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %exitcond.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i68
  br i1 %exitcond.i71, label %ZSTD_entropyCost.exit, label %bb.t, !llvm.loop !24

ZSTD_entropyCost.exit:                            ; preds = %bb.t
  %i.dh = shl i64 %.1.i, 3
  %i.di = lshr i32 %i.dg, 8
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = add i64 %i.dh, %i.dj                    ; 2 uses
  %.not57 = icmp ugt i64 %i.be, %i.cn
  %.not58 = icmp ugt i64 %i.be, %i.dk
  %or.cond61 = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ZSTD_entropyCost.exit
  store i32 0, ptr %0, align 4, !tbaa !15
  br label %.thread

bb.v:                                             ; preds = %ZSTD_entropyCost.exit
  %.not59 = icmp ugt i64 %i.cn, %i.dk
  br i1 %.not59, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v, %bb.g, %bb.d
  store i32 1, ptr %0, align 4, !tbaa !15
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
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %7, align 1, !tbaa !17
  store i8 %i.e, ptr %0, align 1, !tbaa !17
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %12, i64 %13, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.f = tail call i64 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %9, i32 noundef %11, i32 noundef %10, ptr noundef %14, i64 noundef %15) #8 ; 2 uses
  %i.g = icmp ult i64 %i.f, -119
end_hunk_0
