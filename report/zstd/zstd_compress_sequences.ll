Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress_sequences?download=true
inline.NumInlined: 105
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kInverseProbabilityLog256 = internal unnamed_addr constant [256 x i32] [i32 0, i32 2048, i32 1792, i32 1642, i32 1536, i32 1453, i32 1386, i32 1329, i32 1280, i32 1236, i32 1197, i32 1162, i32 1130, i32 1100, i32 1073, i32 1047, i32 1024, i32 1001, i32 980, i32 960, i32 941, i32 923, i32 906, i32 889, i32 874, i32 859, i32 844, i32 830, i32 817, i32 804, i32 791, i32 779, i32 768, i32 756, i32 745, i32 734, i32 724, i32 714, i32 704, i32 694, i32 685, i32 676, i32 667, i32 658, i32 650, i32 642, i32 633, i32 626, i32 618, i32 610, i32 603, i32 595, i32 588, i32 581, i32 574, i32 567, i32 561, i32 554, i32 548, i32 542, i32 535, i32 529, i32 523, i32 517, i32 512, i32 506, i32 500, i32 495, i32 489, i32 484, i32 478, i32 473, i32 468, i32 463, i32 458, i32 453, i32 448, i32 443, i32 438, i32 434, i32 429, i32 424, i32 420, i32 415, i32 411, i32 407, i32 402, i32 398, i32 394, i32 390, i32 386, i32 382, i32 377, i32 373, i32 370, i32 366, i32 362, i32 358, i32 354, i32 350, i32 347, i32 343, i32 339, i32 336, i32 332, i32 329, i32 325, i32 322, i32 318, i32 315, i32 311, i32 308, i32 305, i32 302, i32 298, i32 295, i32 292, i32 289, i32 286, i32 282, i32 279, i32 276, i32 273, i32 270, i32 267, i32 264, i32 261, i32 258, i32 256, i32 253, i32 250, i32 247, i32 244, i32 241, i32 239, i32 236, i32 233, i32 230, i32 228, i32 225, i32 222, i32 220, i32 217, i32 215, i32 212, i32 209, i32 207, i32 204, i32 202, i32 199, i32 197, i32 194, i32 192, i32 190, i32 187, i32 185, i32 182, i32 180, i32 178, i32 175, i32 173, i32 171, i32 168, i32 166, i32 164, i32 162, i32 159, i32 157, i32 155, i32 153, i32 151, i32 149, i32 146, i32 144, i32 142, i32 140, i32 138, i32 136, i32 134, i32 132, i32 130, i32 128, i32 126, i32 123, i32 121, i32 119, i32 117, i32 115, i32 114, i32 112, i32 110, i32 108, i32 106, i32 104, i32 102, i32 100, i32 98, i32 96, i32 94, i32 93, i32 91, i32 89, i32 87, i32 85, i32 83, i32 82, i32 80, i32 78, i32 76, i32 74, i32 73, i32 71, i32 69, i32 67, i32 66, i32 64, i32 62, i32 61, i32 59, i32 57, i32 55, i32 54, i32 52, i32 50, i32 49, i32 47, i32 46, i32 44, i32 42, i32 41, i32 39, i32 37, i32 36, i32 34, i32 33, i32 31, i32 30, i32 28, i32 26, i32 25, i32 23, i32 22, i32 20, i32 19, i32 17, i32 16, i32 14, i32 13, i32 11, i32 10, i32 8, i32 7, i32 5, i32 4, i32 2, i32 1], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16

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
  %lcmp.mod.not = trunc i32 %umax to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %bb.c

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
  %lcmp.mod.not = trunc i32 %umax.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %ZSTD_crossEntropyCost.exit

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
  %12 = icmp ugt i64 %i.cr, -120
  br i1 %12, label %ZSTD_NCountCost.exit, label %bb.s

bb.s:                                             ; preds = %ZSTD_fseBitCost.exit
  %i.cs = call i64 @FSE_writeNCount(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %i.co) #8
  br label %ZSTD_NCountCost.exit

ZSTD_NCountCost.exit:                             ; preds = %ZSTD_fseBitCost.exit, %bb.s
  %.1.i = phi i64 [ %i.cs, %bb.s ], [ %i.cr, %ZSTD_fseBitCost.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ct = add i32 %2, 1                           ; 2 uses
  %umax.i67 = call i32 @llvm.umax.i32(i32 %i.ct, i32 1) ; 3 uses
  %i.cu = icmp ult i32 %i.ct, 2
  br i1 %i.cu, label %.epil.preheader93, label %ZSTD_NCountCost.exit.new

ZSTD_NCountCost.exit.new:                         ; preds = %ZSTD_NCountCost.exit
  %13 = and i32 %umax.i67, -2
  %unroll_iter98 = zext i32 %13 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %ZSTD_NCountCost.exit.new
  %indvars.iv.i69 = phi i64 [ 0, %ZSTD_NCountCost.exit.new ], [ %indvars.iv.next.i70.1, %bb.t ] ; 3 uses
  %.016.i = phi i32 [ 0, %ZSTD_NCountCost.exit.new ], [ %i.dt, %bb.t ]
  %niter99 = phi i64 [ 0, %ZSTD_NCountCost.exit.new ], [ %niter99.next.1, %bb.t ]
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
  %i.dg = add i32 %i.df, %.016.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i69
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !15 ; 3 uses
  %i.dk = shl i32 %i.dj, 8
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = udiv i64 %i.dl, %4
  %i.dn = icmp ne i32 %i.dj, 0
  %i.do = icmp ugt i64 %4, %i.dl
  %or.cond.i.1 = and i1 %i.dn, %i.do
  %i.dp = select i1 %or.cond.i.1, i64 1, i64 %i.dm
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !15
  %i.ds = mul i32 %i.dr, %i.dj
  %i.dt = add i32 %i.ds, %i.dg                    ; 3 uses
  %indvars.iv.next.i70.1 = add nuw nsw i64 %indvars.iv.i69, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2           ; 2 uses
  %niter99.ncmp.1 = icmp eq i64 %niter99.next.1, %unroll_iter98
  br i1 %niter99.ncmp.1, label %ZSTD_entropyCost.exit.unr-lcssa, label %bb.t, !llvm.loop !24

ZSTD_entropyCost.exit.unr-lcssa:                  ; preds = %bb.t
  %lcmp.mod95.not = trunc i32 %umax.i67 to i1
  br i1 %lcmp.mod95.not, label %.epil.preheader93, label %ZSTD_entropyCost.exit

.epil.preheader93:                                ; preds = %ZSTD_entropyCost.exit.unr-lcssa, %ZSTD_NCountCost.exit
  %indvars.iv.i69.epil.init = phi i64 [ 0, %ZSTD_NCountCost.exit ], [ %indvars.iv.next.i70.1, %ZSTD_entropyCost.exit.unr-lcssa ]
  %.016.i.epil.init = phi i32 [ 0, %ZSTD_NCountCost.exit ], [ %i.dt, %ZSTD_entropyCost.exit.unr-lcssa ]
  %lcmp.mod97 = trunc i32 %umax.i67 to i1
  call void @llvm.assume(i1 %lcmp.mod97)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i69.epil.init
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !15 ; 3 uses
  %i.dw = shl i32 %i.dv, 8
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = udiv i64 %i.dx, %4
  %i.dz = icmp ne i32 %i.dv, 0
  %i.ea = icmp ugt i64 %4, %i.dx
  %or.cond.i.epil = and i1 %i.dz, %i.ea
  %i.eb = select i1 %or.cond.i.epil, i64 1, i64 %i.dy
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !15
  %i.ee = mul i32 %i.ed, %i.dv
  %i.ef = add i32 %i.ee, %.016.i.epil.init
  br label %ZSTD_entropyCost.exit

ZSTD_entropyCost.exit:                            ; preds = %ZSTD_entropyCost.exit.unr-lcssa, %.epil.preheader93
  %.lcssa = phi i32 [ %i.dt, %ZSTD_entropyCost.exit.unr-lcssa ], [ %i.ef, %.epil.preheader93 ]
  %i.eg = shl i64 %.1.i, 3
  %i.eh = lshr i32 %.lcssa, 8
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = add i64 %i.eg, %i.ei                    ; 2 uses
  %.not57 = icmp ugt i64 %i.be, %i.cn
  %.not58 = icmp ugt i64 %i.be, %i.ej
  %or.cond61 = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ZSTD_entropyCost.exit
  store i32 0, ptr %0, align 4, !tbaa !15
  br label %.thread

bb.v:                                             ; preds = %ZSTD_entropyCost.exit
  %.not59 = icmp ugt i64 %i.cn, %i.ej
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !15   ; 2 uses
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = add i32 %i.l, -1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !15
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
  %.val.i.i.i = load i16, ptr %2, align 1, !tbaa !12 ; 2 uses
  %i.g = zext i16 %.val.i.i.i to i32              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq i16 %.val.i.i.i, 0
  %i.i = add nsw i32 %i.g, -1
  %i.j = shl nuw i32 1, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = select i1 %.not.i.i.i, i64 1, i64 %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %i.n = zext i8 %i.f to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.o, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !15 ; 2 uses
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
  %i.z = load i16, ptr %i.y, align 2, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.d
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17  ; 4 uses
  %i.ac = zext i8 %i.ab to i32                    ; 4 uses
  %.val.i.i16.i = load i16, ptr %4, align 1, !tbaa !12 ; 2 uses
  %i.ad = zext i16 %.val.i.i16.i to i32           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i.i17.i = icmp eq i16 %.val.i.i16.i, 0
  %i.af = add nsw i32 %i.ad, -1
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = select i1 %.not.i.i17.i, i64 1, i64 %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai ; 2 uses
  %i.ak = zext i8 %i.ab to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %.sroa.0.0.copyload.i18.i = load i32, ptr %i.al, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.4.0.copyload.i20.i = load i32, ptr %.sroa.4.0..sroa_idx.i19.i, align 4, !tbaa !15 ; 2 uses
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
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 %i.d
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %.val.i.i21.i = load i16, ptr %6, align 1, !tbaa !12 ; 2 uses
  %i.az = zext i16 %.val.i.i21.i to i32           ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %.not.i.i22.i = icmp eq i16 %.val.i.i21.i, 0
  %i.bb = add nsw i32 %i.az, -1
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = select i1 %.not.i.i22.i, i64 1, i64 %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = zext i8 %i.ay to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.bh, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !tbaa !15 ; 2 uses
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
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !12
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.d ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.bg
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !17  ; 2 uses
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.by
  %i.bz = xor i32 %notmask.i.i, -1
  %i.ca = zext i16 %i.bv to i32
  %i.cb = and i32 %i.bz, %i.ca
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.n
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %notmask.i26.i = shl nsw i32 -1, %i.ch
  %i.ci = xor i32 %notmask.i26.i, -1
  %i.cj = zext i16 %i.ce to i32
  %i.ck = and i32 %i.ci, %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = zext nneg i8 %i.bx to i64
  %i.cn = shl i64 %i.cl, %i.cm
  %i.co = or i64 %i.cn, %i.cc                     ; 4 uses
  %i.cp = add nuw nsw i32 %i.ch, %i.by            ; 6 uses
  %.not92.i.i = icmp eq i32 %10, 0                ; 2 uses
  br i1 %.not92.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cq = icmp ult i8 %i.ab, 56
  br i1 %i.cq, label %..thread_crit_edge.i, label %bb.f

..thread_crit_edge.i:                             ; preds = %bb.e
  %.pre.i = load i32, ptr %i.bt, align 4, !tbaa !21
  br label %.thread.i

bb.f:                                             ; preds = %bb.e
  %.not93.i.i = icmp eq i8 %i.ab, 56
  %.pre172.i = load i32, ptr %i.bt, align 4, !tbaa !21 ; 3 uses
  br i1 %.not93.i.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = add nsw i32 %i.ac, -56                  ; 3 uses
  %notmask.i27.i = shl nsw i32 -1, %i.cr
  %i.cs = xor i32 %notmask.i27.i, -1
  %i.ct = and i32 %.pre172.i, %i.cs
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = zext nneg i32 %i.cp to i64
  %i.cw = shl i64 %i.cu, %i.cv
  %i.cx = or i64 %i.cw, %i.co                     ; 2 uses
  %i.cy = add nuw nsw i32 %i.cp, %i.cr            ; 2 uses
  %i.cz = lshr i32 %i.cy, 3
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  store i64 %i.cx, ptr %0, align 1, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da ; 2 uses
  %i.dc = icmp ugt ptr %i.db, %i.c
  %spec.store.select.i.i = select i1 %i.dc, ptr %i.c, ptr %i.db
  %i.dd = and i32 %i.cy, 7
  %i.de = shl nuw nsw i64 %i.da, 3
  %i.df = lshr i64 %i.cx, %i.de
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %..thread_crit_edge.i
  %i.dg = phi i32 [ %.pre172.i, %bb.f ], [ %.pre172.i, %bb.g ], [ %.pre.i, %..thread_crit_edge.i ]
  %i.dh = phi i32 [ 0, %bb.f ], [ %i.cr, %bb.g ], [ 0, %..thread_crit_edge.i ]
  %i.di = phi i32 [ 56, %bb.f ], [ 56, %bb.g ], [ %i.ac, %..thread_crit_edge.i ] ; 2 uses
  %.sroa.63.0.i = phi i32 [ %i.cp, %bb.f ], [ %i.dd, %bb.g ], [ %i.cp, %..thread_crit_edge.i ] ; 2 uses
  %.sroa.072.0.i = phi i64 [ %i.co, %bb.f ], [ %i.df, %bb.g ], [ %i.co, %..thread_crit_edge.i ]
  %.sroa.112.0.i = phi ptr [ %0, %bb.f ], [ %spec.store.select.i.i, %bb.g ], [ %0, %..thread_crit_edge.i ]
  %i.dj = lshr i32 %i.dg, %i.dh
  %notmask.i28.i = shl nsw i32 -1, %i.di
  %i.dk = xor i32 %notmask.i28.i, -1
  %i.dl = and i32 %i.dj, %i.dk
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = zext nneg i32 %.sroa.63.0.i to i64
  %i.do = shl i64 %i.dm, %i.dn
  %i.dp = or i64 %i.do, %.sroa.072.0.i
  %i.dq = add nuw nsw i32 %.sroa.63.0.i, %i.di
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.dr = load i32, ptr %i.bt, align 4, !tbaa !21
  %notmask.i29.i = shl nsw i32 -1, %i.ac
  %i.ds = xor i32 %notmask.i29.i, -1
  %i.dt = and i32 %i.dr, %i.ds
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = zext nneg i32 %i.cp to i64
  %i.dw = shl i64 %i.du, %i.dv
  %i.dx = or i64 %i.dw, %i.co
  %i.dy = add nuw nsw i32 %i.cp, %i.ac
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  %.sroa.63.1.i = phi i32 [ %i.dy, %bb.h ], [ %i.dq, %.thread.i ] ; 2 uses
  %.sroa.072.1.i = phi i64 [ %i.dx, %bb.h ], [ %i.dp, %.thread.i ] ; 2 uses
  %.sroa.112.1.i = phi ptr [ %0, %bb.h ], [ %.sroa.112.0.i, %.thread.i ] ; 2 uses
  %i.dz = lshr i32 %.sroa.63.1.i, 3
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  store i64 %.sroa.072.1.i, ptr %.sroa.112.1.i, align 1, !tbaa !23
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.112.1.i, i64 %i.ea ; 2 uses
  %i.ec = icmp ugt ptr %i.eb, %i.c
  %spec.store.select.i30.i = select i1 %i.ec, ptr %i.c, ptr %i.eb ; 2 uses
  %i.ed = shl nuw nsw i64 %i.ea, 3
  %i.ee = lshr i64 %.sroa.072.1.i, %i.ed          ; 2 uses
  %.sroa.0.0152.i = zext i16 %i.bs to i64         ; 2 uses
  %.sroa.060.0153.i = zext i16 %i.aw to i64       ; 2 uses
  %.sroa.066.0154.i = zext i16 %i.z to i64        ; 2 uses
  %.sroa.63.2155.i = and i32 %.sroa.63.1.i, 7     ; 2 uses
  %i.ef = icmp ugt i64 %9, 1
  br i1 %i.ef, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.eg = add i64 %9, -2
  br label %.lr.ph.i

end_hunk_0
begin_hunk_1_@ZSTD_encodeSequences:bb.a
  br i1 %i.ib, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ic = lshr i32 %i.ia, 3
  %i.id = zext nneg i32 %i.ic to i64              ; 2 uses
  store i64 %i.hz, ptr %.sroa.112.3.i, align 1, !tbaa !23
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.112.3.i, i64 %i.id ; 2 uses
  %i.if = icmp ugt ptr %i.ie, %i.c
  %spec.store.select.i45.i = select i1 %i.if, ptr %i.c, ptr %i.ie
  %i.ig = and i32 %i.ia, 7
  %i.ih = shl nuw nsw i64 %i.id, 3
  %i.ii = lshr i64 %i.hz, %i.ih
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.63.4.i = phi i32 [ %i.ig, %bb.l ], [ %i.ia, %bb.k ] ; 6 uses
  %.sroa.072.4.i = phi i64 [ %i.ii, %bb.l ], [ %i.hz, %bb.k ] ; 4 uses
  %.sroa.112.4.i = phi ptr [ %spec.store.select.i45.i, %bb.l ], [ %.sroa.112.3.i, %bb.k ] ; 5 uses
  br i1 %.not92.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ij = icmp ult i8 %i.ek, 56
  br i1 %i.ij, label %..thread147_crit_edge.i, label %bb.o

..thread147_crit_edge.i:                          ; preds = %bb.n
  %.pre173.i = load i32, ptr %i.hg, align 4, !tbaa !21
  br label %.thread147.i

bb.o:                                             ; preds = %bb.n
  %.not94.i.i = icmp eq i8 %i.ek, 56
  %.pre174.i = load i32, ptr %i.hg, align 4, !tbaa !21 ; 3 uses
  br i1 %.not94.i.i, label %.thread147.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ik = add nsw i32 %i.er, -56                  ; 3 uses
  %notmask.i46.i = shl nsw i32 -1, %i.ik
  %i.il = xor i32 %notmask.i46.i, -1
  %i.im = and i32 %.pre174.i, %i.il
  %i.in = zext nneg i32 %i.im to i64
  %i.io = zext nneg i32 %.sroa.63.4.i to i64
  %i.ip = shl i64 %i.in, %i.io
  %i.iq = or i64 %i.ip, %.sroa.072.4.i            ; 2 uses
  %i.ir = add nsw i32 %.sroa.63.4.i, %i.ik        ; 2 uses
  %i.is = lshr i32 %i.ir, 3
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  store i64 %i.iq, ptr %.sroa.112.4.i, align 1, !tbaa !23
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.112.4.i, i64 %i.it ; 2 uses
  %i.iv = icmp ugt ptr %i.iu, %i.c
  %spec.store.select.i47.i = select i1 %i.iv, ptr %i.c, ptr %i.iu
  %i.iw = and i32 %i.ir, 7
  %i.ix = shl nuw nsw i64 %i.it, 3
  %i.iy = lshr i64 %i.iq, %i.ix
  br label %.thread147.i

.thread147.i:                                     ; preds = %bb.p, %bb.o, %..thread147_crit_edge.i
  %i.iz = phi i32 [ %.pre174.i, %bb.o ], [ %.pre174.i, %bb.p ], [ %.pre173.i, %..thread147_crit_edge.i ]
  %i.ja = phi i32 [ 0, %bb.o ], [ %i.ik, %bb.p ], [ 0, %..thread147_crit_edge.i ]
  %i.jb = phi i32 [ 56, %bb.o ], [ 56, %bb.p ], [ %i.er, %..thread147_crit_edge.i ] ; 2 uses
  %.sroa.63.5.i = phi i32 [ %.sroa.63.4.i, %bb.o ], [ %i.iw, %bb.p ], [ %.sroa.63.4.i, %..thread147_crit_edge.i ] ; 2 uses
  %.sroa.072.5.i = phi i64 [ %.sroa.072.4.i, %bb.o ], [ %i.iy, %bb.p ], [ %.sroa.072.4.i, %..thread147_crit_edge.i ]
  %.sroa.112.5.i = phi ptr [ %.sroa.112.4.i, %bb.o ], [ %spec.store.select.i47.i, %bb.p ], [ %.sroa.112.4.i, %..thread147_crit_edge.i ]
  %i.jc = lshr i32 %i.iz, %i.ja
  %notmask.i48.i = shl nsw i32 -1, %i.jb
  %i.jd = xor i32 %notmask.i48.i, -1
  %i.je = and i32 %i.jc, %i.jd
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = zext nneg i32 %.sroa.63.5.i to i64
  %i.jh = shl i64 %i.jf, %i.jg
  %i.ji = or i64 %i.jh, %.sroa.072.5.i
  %i.jj = add nuw nsw i32 %.sroa.63.5.i, %i.jb
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.jk = load i32, ptr %i.hg, align 4, !tbaa !21
  %notmask.i49.i = shl nsw i32 -1, %i.er
  %i.jl = xor i32 %notmask.i49.i, -1
  %i.jm = and i32 %i.jk, %i.jl
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = zext nneg i32 %.sroa.63.4.i to i64
  %i.jp = shl i64 %i.jn, %i.jo
  %i.jq = or i64 %i.jp, %.sroa.072.4.i
  %i.jr = add nuw nsw i32 %.sroa.63.4.i, %i.er
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread147.i
  %.sroa.63.6.i = phi i32 [ %i.jr, %bb.q ], [ %i.jj, %.thread147.i ] ; 2 uses
  %.sroa.072.6.i = phi i64 [ %i.jq, %bb.q ], [ %i.ji, %.thread147.i ] ; 2 uses
  %.sroa.112.6.i = phi ptr [ %.sroa.112.4.i, %bb.q ], [ %.sroa.112.5.i, %.thread147.i ] ; 2 uses
  %i.js = lshr i32 %.sroa.63.6.i, 3
  %i.jt = zext nneg i32 %i.js to i64              ; 2 uses
  store i64 %.sroa.072.6.i, ptr %.sroa.112.6.i, align 1, !tbaa !23
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.112.6.i, i64 %i.jt ; 2 uses
  %i.jv = icmp ugt ptr %i.ju, %i.c
  %spec.store.select.i50.i = select i1 %i.jv, ptr %i.c, ptr %i.ju ; 2 uses
  %i.jw = shl nuw nsw i64 %i.jt, 3
  %i.jx = lshr i64 %.sroa.072.6.i, %i.jw          ; 2 uses
  %i.jy = add i64 %.0.i158.i, -1                  ; 2 uses
  %.sroa.0.0.i = zext i16 %i.gv to i64            ; 2 uses
  %.sroa.060.0.i = zext i16 %i.fm to i64          ; 2 uses
  %.sroa.066.0.i = zext i16 %i.gc to i64          ; 2 uses
  %.sroa.63.2.i = and i32 %.sroa.63.6.i, 7        ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %9
  br i1 %i.jz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.r, %bb.i
  %.sroa.072.2.lcssa.i = phi i64 [ %i.ee, %bb.i ], [ %i.jx, %bb.r ]
  %.sroa.112.2.lcssa.i = phi ptr [ %spec.store.select.i30.i, %bb.i ], [ %spec.store.select.i50.i, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.0152.i, %bb.i ], [ %.sroa.0.0.i, %bb.r ]
  %.sroa.060.0.lcssa.i = phi i64 [ %.sroa.060.0153.i, %bb.i ], [ %.sroa.060.0.i, %bb.r ]
  %.sroa.066.0.lcssa.i = phi i64 [ %.sroa.066.0154.i, %bb.i ], [ %.sroa.066.0.i, %bb.r ]
  %.sroa.63.2.lcssa.i = phi i32 [ %.sroa.63.2155.i, %bb.i ], [ %.sroa.63.2.i, %bb.r ] ; 2 uses
  %notmask.i.i51.i = shl nsw i32 -1, %i.g
  %i.ka = xor i32 %notmask.i.i51.i, -1
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = and i64 %.sroa.066.0.lcssa.i, %i.kb
  %i.kd = zext nneg i32 %.sroa.63.2.lcssa.i to i64
  %i.ke = shl nuw nsw i64 %i.kc, %i.kd
  %i.kf = or i64 %i.ke, %.sroa.072.2.lcssa.i      ; 2 uses
  %i.kg = add nuw nsw i32 %.sroa.63.2.lcssa.i, %i.g ; 2 uses
  %i.kh = lshr i32 %i.kg, 3
  %i.ki = zext nneg i32 %i.kh to i64              ; 2 uses
  store i64 %i.kf, ptr %.sroa.112.2.lcssa.i, align 1, !tbaa !23
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.112.2.lcssa.i, i64 %i.ki ; 2 uses
  %i.kk = icmp ugt ptr %i.kj, %i.c
  %spec.store.select.i.i.i = select i1 %i.kk, ptr %i.c, ptr %i.kj ; 2 uses
  %i.kl = and i32 %i.kg, 7                        ; 2 uses
  %i.km = shl nuw nsw i64 %i.ki, 3
  %i.kn = lshr i64 %i.kf, %i.km
  %notmask.i.i52.i = shl nsw i32 -1, %i.ad
  %i.ko = xor i32 %notmask.i.i52.i, -1
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = and i64 %.sroa.060.0.lcssa.i, %i.kp
  %i.kr = zext nneg i32 %i.kl to i64
  %i.ks = shl nuw nsw i64 %i.kq, %i.kr
  %i.kt = or i64 %i.kn, %i.ks                     ; 2 uses
  %i.ku = add nuw nsw i32 %i.kl, %i.ad            ; 2 uses
  %i.kv = lshr i32 %i.ku, 3
  %i.kw = zext nneg i32 %i.kv to i64              ; 2 uses
  store i64 %i.kt, ptr %spec.store.select.i.i.i, align 1, !tbaa !23
  %i.kx = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i.i, i64 %i.kw ; 2 uses
  %i.ky = icmp ugt ptr %i.kx, %i.c
  %spec.store.select.i.i53.i = select i1 %i.ky, ptr %i.c, ptr %i.kx ; 2 uses
  %i.kz = and i32 %i.ku, 7                        ; 2 uses
  %i.la = shl nuw nsw i64 %i.kw, 3
  %i.lb = lshr i64 %i.kt, %i.la
  %notmask.i.i54.i = shl nsw i32 -1, %i.az
  %i.lc = xor i32 %notmask.i.i54.i, -1
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = and i64 %.sroa.0.0.lcssa.i, %i.ld
  %i.lf = zext nneg i32 %i.kz to i64
  %i.lg = shl nuw nsw i64 %i.le, %i.lf
  %i.lh = or i64 %i.lb, %i.lg                     ; 2 uses
  %i.li = add nuw nsw i32 %i.kz, %i.az            ; 2 uses
  %i.lj = lshr i32 %i.li, 3
  %i.lk = zext nneg i32 %i.lj to i64              ; 2 uses
  store i64 %i.lh, ptr %spec.store.select.i.i53.i, align 1, !tbaa !23
  %i.ll = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i53.i, i64 %i.lk ; 2 uses
  %i.lm = icmp ugt ptr %i.ll, %i.c
  %spec.store.select.i.i55.i = select i1 %i.lm, ptr %i.c, ptr %i.ll ; 2 uses
  %i.ln = and i32 %i.li, 7                        ; 2 uses
  %i.lo = shl nuw nsw i64 %i.lk, 3
  %i.lp = lshr i64 %i.lh, %i.lo
  %i.lq = zext nneg i32 %i.ln to i64
  %i.lr = shl nuw nsw i64 1, %i.lq
  %i.ls = or i64 %i.lp, %i.lr
  %i.lt = add nuw nsw i32 %i.ln, 1                ; 2 uses
  %i.lu = lshr i32 %i.lt, 3
  %i.lv = zext nneg i32 %i.lu to i64
  store i64 %i.ls, ptr %spec.store.select.i.i55.i, align 1, !tbaa !23
  %i.lw = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i55.i, i64 %i.lv ; 2 uses
  %i.lx = icmp ugt ptr %i.lw, %i.c
  %spec.store.select.i.i56.i = select i1 %i.lx, ptr %i.c, ptr %i.lw ; 2 uses
  %.not.i57.i = icmp ult ptr %spec.store.select.i.i56.i, %i.c
  br i1 %.not.i57.i, label %BIT_closeCStream.exit.i, label %BIT_closeCStream.exit.thread.i

BIT_closeCStream.exit.i:                          ; preds = %._crit_edge.i
  %i.ly = and i32 %i.lt, 7
  %i.lz = ptrtoint ptr %spec.store.select.i.i56.i to i64
  %i.ma = ptrtoint ptr %0 to i64
  %i.mb = icmp ne i32 %i.ly, 0
  %i.mc = zext i1 %i.mb to i64
  %i.md = add i64 %i.lz, %i.mc
  %.fr151.i = freeze i64 %i.md
  %i.me = sub i64 %.fr151.i, %i.ma                ; 2 uses
  %i.mf = icmp eq i64 %i.me, 0
  br i1 %i.mf, label %BIT_closeCStream.exit.thread.i, label %ZSTD_encodeSequences_default.exit

BIT_closeCStream.exit.thread.i:                   ; preds = %BIT_closeCStream.exit.i, %._crit_edge.i
  br label %ZSTD_encodeSequences_default.exit

ZSTD_encodeSequences_default.exit:                ; preds = %BIT_closeCStream.exit.thread.i, %BIT_closeCStream.exit.i, %bb.c, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ -70, %bb.c ], [ -70, %BIT_closeCStream.exit.thread.i ], [ %i.me, %BIT_closeCStream.exit.i ]
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
  %.val.i.i = load i16, ptr %2, align 1, !tbaa !12 ; 2 uses
  %i.f = zext i16 %.val.i.i to i32                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.not.i.i = icmp eq i16 %.val.i.i, 0
  %i.h = add nsw i32 %i.f, -1
  %i.i = shl nuw i32 1, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %.not.i.i, i64 1, i64 %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.k ; 2 uses
  %i.m = zext i8 %i.e to i64                      ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15 ; 2 uses
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
  %i.y = load i16, ptr %i.x, align 2, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 %i.c
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 4 uses
  %i.ab = zext i8 %i.aa to i32                    ; 4 uses
  %.val.i.i16 = load i16, ptr %4, align 1, !tbaa !12 ; 2 uses
  %i.ac = zext i16 %.val.i.i16 to i32             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i.i17 = icmp eq i16 %.val.i.i16, 0
  %i.ae = add nsw i32 %i.ac, -1
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = select i1 %.not.i.i17, i64 1, i64 %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = zext i8 %i.aa to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.ak, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.4.0.copyload.i20 = load i32, ptr %.sroa.4.0..sroa_idx.i19, align 4, !tbaa !15 ; 2 uses
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
  %i.av = load i16, ptr %i.au, align 2, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 %i.c
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %.val.i.i21 = load i16, ptr %6, align 1, !tbaa !12 ; 2 uses
  %i.ay = zext i16 %.val.i.i21 to i32             ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %.not.i.i22 = icmp eq i16 %.val.i.i21, 0
  %i.ba = add nsw i32 %i.ay, -1
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = select i1 %.not.i.i22, i64 1, i64 %i.bc
  %i.be = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = zext i8 %i.ax to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.bg, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.4.0.copyload.i25 = load i32, ptr %.sroa.4.0..sroa_idx.i24, align 4, !tbaa !15 ; 2 uses
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
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !12
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.c ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.bf
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17  ; 2 uses
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.bx
  %i.by = xor i32 %notmask.i, -1
  %i.bz = zext i16 %i.bu to i32
  %i.ca = and i32 %i.by, %i.bz
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.m
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %notmask.i26 = shl nsw i32 -1, %i.cg
  %i.ch = xor i32 %notmask.i26, -1
  %i.ci = zext i16 %i.cd to i32
  %i.cj = and i32 %i.ch, %i.ci
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = zext nneg i8 %i.bw to i64
  %i.cm = shl i64 %i.ck, %i.cl
  %i.cn = or i64 %i.cm, %i.cb                     ; 4 uses
  %i.co = add nuw nsw i32 %i.cg, %i.bx            ; 6 uses
  %.not92.i = icmp eq i32 %10, 0                  ; 2 uses
  br i1 %.not92.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cp = icmp ult i8 %i.aa, 56
  br i1 %i.cp, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.bs, align 4, !tbaa !21
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %.not93.i = icmp eq i8 %i.aa, 56
  %.pre172 = load i32, ptr %i.bs, align 4, !tbaa !21 ; 3 uses
  br i1 %.not93.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cq = add nsw i32 %i.ab, -56                  ; 3 uses
  %notmask.i27 = shl nsw i32 -1, %i.cq
  %i.cr = xor i32 %notmask.i27, -1
  %i.cs = and i32 %.pre172, %i.cr
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = zext nneg i32 %i.co to i64
  %i.cv = shl i64 %i.ct, %i.cu
  %i.cw = or i64 %i.cv, %i.cn                     ; 2 uses
  %i.cx = add nuw nsw i32 %i.co, %i.cq            ; 2 uses
  %i.cy = lshr i32 %i.cx, 3
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  store i64 %i.cw, ptr %0, align 1, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz ; 2 uses
  %i.db = icmp ugt ptr %i.da, %i.b
  %spec.store.select.i = select i1 %i.db, ptr %i.b, ptr %i.da
  %i.dc = and i32 %i.cx, 7
  %i.dd = shl nuw nsw i64 %i.cz, 3
  %i.de = lshr i64 %i.cw, %i.dd
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.e, %bb.d
  %i.df = phi i32 [ %.pre172, %bb.d ], [ %.pre172, %bb.e ], [ %.pre, %..thread_crit_edge ]
  %i.dg = phi i32 [ 0, %bb.d ], [ %i.cq, %bb.e ], [ 0, %..thread_crit_edge ]
  %i.dh = phi i32 [ 56, %bb.d ], [ 56, %bb.e ], [ %i.ab, %..thread_crit_edge ] ; 2 uses
  %.sroa.63.0 = phi i32 [ %i.co, %bb.d ], [ %i.dc, %bb.e ], [ %i.co, %..thread_crit_edge ] ; 2 uses
  %.sroa.072.0 = phi i64 [ %i.cn, %bb.d ], [ %i.de, %bb.e ], [ %i.cn, %..thread_crit_edge ]
  %.sroa.112.0 = phi ptr [ %0, %bb.d ], [ %spec.store.select.i, %bb.e ], [ %0, %..thread_crit_edge ]
  %i.di = lshr i32 %i.df, %i.dg
  %notmask.i28 = shl nsw i32 -1, %i.dh
  %i.dj = xor i32 %notmask.i28, -1
  %i.dk = and i32 %i.di, %i.dj
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = zext nneg i32 %.sroa.63.0 to i64
  %i.dn = shl i64 %i.dl, %i.dm
  %i.do = or i64 %i.dn, %.sroa.072.0
  %i.dp = add nuw nsw i32 %.sroa.63.0, %i.dh
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.dq = load i32, ptr %i.bs, align 4, !tbaa !21
  %notmask.i29 = shl nsw i32 -1, %i.ab
  %i.dr = xor i32 %notmask.i29, -1
  %i.ds = and i32 %i.dq, %i.dr
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = zext nneg i32 %i.co to i64
  %i.dv = shl i64 %i.dt, %i.du
  %i.dw = or i64 %i.dv, %i.cn
  %i.dx = add nuw nsw i32 %i.co, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.63.1 = phi i32 [ %i.dx, %bb.f ], [ %i.dp, %.thread ] ; 2 uses
  %.sroa.072.1 = phi i64 [ %i.dw, %bb.f ], [ %i.do, %.thread ] ; 2 uses
  %.sroa.112.1 = phi ptr [ %0, %bb.f ], [ %.sroa.112.0, %.thread ] ; 2 uses
  %i.dy = lshr i32 %.sroa.63.1, 3
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  store i64 %.sroa.072.1, ptr %.sroa.112.1, align 1, !tbaa !23
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.112.1, i64 %i.dz ; 2 uses
  %i.eb = icmp ugt ptr %i.ea, %i.b
  %spec.store.select.i30 = select i1 %i.eb, ptr %i.b, ptr %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.dz, 3
  %i.ed = lshr i64 %.sroa.072.1, %i.ec            ; 2 uses
  %.sroa.0.0152 = zext i16 %i.br to i64           ; 2 uses
  %.sroa.060.0153 = zext i16 %i.av to i64         ; 2 uses
  %.sroa.066.0154 = zext i16 %i.y to i64          ; 2 uses
  %.sroa.63.2155 = and i32 %.sroa.63.1, 7         ; 2 uses
  %i.ee = icmp ugt i64 %9, 1
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ef = add i64 %9, -2
  br label %.lr.ph

end_hunk_1
