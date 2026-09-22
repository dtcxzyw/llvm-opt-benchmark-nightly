Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress_sequences?download=true
inline.NumInlined: 105
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN11duckdb_zstdL25kInverseProbabilityLog256E = internal unnamed_addr constant [256 x i32] [i32 0, i32 2048, i32 1792, i32 1642, i32 1536, i32 1453, i32 1386, i32 1329, i32 1280, i32 1236, i32 1197, i32 1162, i32 1130, i32 1100, i32 1073, i32 1047, i32 1024, i32 1001, i32 980, i32 960, i32 941, i32 923, i32 906, i32 889, i32 874, i32 859, i32 844, i32 830, i32 817, i32 804, i32 791, i32 779, i32 768, i32 756, i32 745, i32 734, i32 724, i32 714, i32 704, i32 694, i32 685, i32 676, i32 667, i32 658, i32 650, i32 642, i32 633, i32 626, i32 618, i32 610, i32 603, i32 595, i32 588, i32 581, i32 574, i32 567, i32 561, i32 554, i32 548, i32 542, i32 535, i32 529, i32 523, i32 517, i32 512, i32 506, i32 500, i32 495, i32 489, i32 484, i32 478, i32 473, i32 468, i32 463, i32 458, i32 453, i32 448, i32 443, i32 438, i32 434, i32 429, i32 424, i32 420, i32 415, i32 411, i32 407, i32 402, i32 398, i32 394, i32 390, i32 386, i32 382, i32 377, i32 373, i32 370, i32 366, i32 362, i32 358, i32 354, i32 350, i32 347, i32 343, i32 339, i32 336, i32 332, i32 329, i32 325, i32 322, i32 318, i32 315, i32 311, i32 308, i32 305, i32 302, i32 298, i32 295, i32 292, i32 289, i32 286, i32 282, i32 279, i32 276, i32 273, i32 270, i32 267, i32 264, i32 261, i32 258, i32 256, i32 253, i32 250, i32 247, i32 244, i32 241, i32 239, i32 236, i32 233, i32 230, i32 228, i32 225, i32 222, i32 220, i32 217, i32 215, i32 212, i32 209, i32 207, i32 204, i32 202, i32 199, i32 197, i32 194, i32 192, i32 190, i32 187, i32 185, i32 182, i32 180, i32 178, i32 175, i32 173, i32 171, i32 168, i32 166, i32 164, i32 162, i32 159, i32 157, i32 155, i32 153, i32 151, i32 149, i32 146, i32 144, i32 142, i32 140, i32 138, i32 136, i32 134, i32 132, i32 130, i32 128, i32 126, i32 123, i32 121, i32 119, i32 117, i32 115, i32 114, i32 112, i32 110, i32 108, i32 106, i32 104, i32 102, i32 100, i32 98, i32 96, i32 94, i32 93, i32 91, i32 89, i32 87, i32 85, i32 83, i32 82, i32 80, i32 78, i32 76, i32 74, i32 73, i32 71, i32 69, i32 67, i32 66, i32 64, i32 62, i32 61, i32 59, i32 57, i32 55, i32 54, i32 52, i32 50, i32 49, i32 47, i32 46, i32 44, i32 42, i32 41, i32 39, i32 37, i32 36, i32 34, i32 33, i32 31, i32 30, i32 28, i32 26, i32 25, i32 23, i32 22, i32 20, i32 19, i32 17, i32 16, i32 14, i32 13, i32 11, i32 10, i32 8, i32 7, i32 5, i32 4, i32 2, i32 1], align 16
@_ZN11duckdb_zstdL7LL_bitsE = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@_ZN11duckdb_zstdL7ML_bitsE = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@_ZN11duckdb_zstdL8BIT_maskE = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -1, 72057594037927936) i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.val.i = load i16, ptr %0, align 1, !tbaa !11  ; 2 uses
  %i.a = zext i16 %.val.i to i32                  ; 4 uses
  %.not.i = icmp eq i16 %.val.i, 0
  %i.b = add nsw i32 %i.a, -1
  %i.c = shl nuw i32 1, %i.b
  %i.d = sext i32 %i.c to i64
  %i.e = select i1 %.not.i, i64 1, i64 %i.d
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %0, i64 2
  %.val = load i16, ptr %i.g, align 1, !tbaa !11
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13   ; 2 uses
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
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9   ; 2 uses
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 72057594037927936) i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
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
  %i.e = load i16, ptr %i.d, align 2, !tbaa !11   ; 2 uses
  %.not16 = icmp eq i16 %i.e, -1
  %narrow = select i1 %.not16, i16 1, i16 %i.e
  %spec.select = sext i16 %narrow to i32
  %i.f = shl i32 %spec.select, %i.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL25kInverseProbabilityLog256E, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = mul i32 %i.k, %i.h
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %.01417, %i.m
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.p = load i16, ptr %i.o, align 2, !tbaa !11   ; 2 uses
  %.not16.1 = icmp eq i16 %i.p, -1
  %narrow.1 = select i1 %.not16.1, i16 1, i16 %i.p
  %spec.select.1 = sext i16 %narrow.1 to i32
  %i.q = shl i32 %spec.select.1, %i.a
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL25kInverseProbabilityLog256E, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
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
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !11  ; 2 uses
  %.not16.epil = icmp eq i16 %i.aa, -1
  %narrow.epil = select i1 %.not16.epil, i16 1, i16 %i.aa
  %spec.select.epil = sext i16 %narrow.epil to i32
  %i.ab = shl i32 %spec.select.epil, %i.a
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL25kInverseProbabilityLog256E, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %i.ah = mul i32 %i.ag, %i.ad
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add i64 %.01417.epil.init, %i.ai
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.y, %.unr-lcssa ], [ %i.aj, %.epil.preheader ]
  %i.ak = lshr i64 %.lcssa, 8
  ret i64 %i.ak
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 4) i32 @_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 3 uses
  %i.b = alloca [53 x i16], align 16              ; 4 uses
  %i.c = icmp eq i64 %3, %4
  %i.d = icmp eq i32 %9, 0                        ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !24
  %i.e = icmp ugt i64 %3, 2
  %or.cond.not = or i1 %i.e, %i.d
  %. = zext i1 %or.cond.not to i32
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %10, 4
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !24
  %i.h = icmp eq i32 %i.g, 2
  %i.i = icmp ult i64 %4, 1000
  %or.cond3 = and i1 %i.i, %i.h
  br i1 %or.cond3, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = sub nsw i32 10, %10
  %i.k = zext nneg i32 %i.j to i64
  %i.l = zext nneg i32 %8 to i64
  %i.m = shl i64 %i.k, %i.l
  %i.n = lshr i64 %i.m, 3
  %i.o = icmp ult i64 %4, %i.n
  br i1 %i.o, label %bb.h, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd23ZSTD_selectEncodingTypeEPNS_10FSE_repeatEPKjjmmjS3_PKsjNS_20ZSTD_defaultPolicy_eENS_13ZSTD_strategyE:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZN11duckdb_zstdL15ZSTD_NCountCostEPKjjmj.exit.new
  %indvars.iv.i69 = phi i64 [ 0, %_ZN11duckdb_zstdL15ZSTD_NCountCostEPKjjmj.exit.new ], [ %indvars.iv.next.i70.1, %bb.t ] ; 3 uses
  %.016.i = phi i32 [ 0, %_ZN11duckdb_zstdL15ZSTD_NCountCostEPKjjmj.exit.new ], [ %i.du, %bb.t ]
  %niter99 = phi i64 [ 0, %_ZN11duckdb_zstdL15ZSTD_NCountCostEPKjjmj.exit.new ], [ %niter99.next.1, %bb.t ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i69
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !9  ; 3 uses
  %i.cy = shl i32 %i.cx, 8
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = udiv i64 %i.cz, %4
  %i.db = icmp ne i32 %i.cx, 0
  %i.dc = icmp ugt i64 %4, %i.cz
  %or.cond.i = and i1 %i.db, %i.dc
  %i.dd = select i1 %or.cond.i, i64 1, i64 %i.da
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL25kInverseProbabilityLog256E, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !9
  %i.dg = mul i32 %i.df, %i.cx
  %i.dh = add i32 %i.dg, %.016.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i69
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !9  ; 3 uses
  %i.dl = shl i32 %i.dk, 8
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = udiv i64 %i.dm, %4
  %i.do = icmp ne i32 %i.dk, 0
  %i.dp = icmp ugt i64 %4, %i.dm
  %or.cond.i.1 = and i1 %i.do, %i.dp
  %i.dq = select i1 %or.cond.i.1, i64 1, i64 %i.dn
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL25kInverseProbabilityLog256E, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.dt = mul i32 %i.ds, %i.dk
  %i.du = add i32 %i.dt, %i.dh                    ; 3 uses
  %indvars.iv.next.i70.1 = add nuw nsw i64 %indvars.iv.i69, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2           ; 2 uses
  %niter99.ncmp.1 = icmp eq i64 %niter99.next.1, %unroll_iter98
  br i1 %niter99.ncmp.1, label %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit.unr-lcssa, label %bb.t, !llvm.loop !22

_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit.unr-lcssa: ; preds = %bb.t
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit, label %.epil.preheader93

.epil.preheader93:                                ; preds = %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit.unr-lcssa, %_ZN11duckdb_zstdL15ZSTD_NCountCostEPKjjmj.exit
  %indvars.iv.i69.epil.init = phi i64 [ 0, %_ZN11duckdb_zstdL15ZSTD_NCountCostEPKjjmj.exit ], [ %indvars.iv.next.i70.1, %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit.unr-lcssa ]
  %.016.i.epil.init = phi i32 [ 0, %_ZN11duckdb_zstdL15ZSTD_NCountCostEPKjjmj.exit ], [ %i.du, %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit.unr-lcssa ]
  %lcmp.mod97 = trunc i32 %umax.i67 to i1
  call void @llvm.assume(i1 %lcmp.mod97)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i69.epil.init
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !9  ; 3 uses
  %i.dx = shl i32 %i.dw, 8
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = udiv i64 %i.dy, %4
  %i.ea = icmp ne i32 %i.dw, 0
  %i.eb = icmp ugt i64 %4, %i.dy
  %or.cond.i.epil = and i1 %i.ea, %i.eb
  %i.ec = select i1 %or.cond.i.epil, i64 1, i64 %i.dz
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL25kInverseProbabilityLog256E, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !9
  %i.ef = mul i32 %i.ee, %i.dw
  %i.eg = add i32 %i.ef, %.016.i.epil.init
  br label %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit

_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit:   ; preds = %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit.unr-lcssa, %.epil.preheader93
  %.lcssa = phi i32 [ %i.du, %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit.unr-lcssa ], [ %i.eg, %.epil.preheader93 ]
  %i.eh = shl i64 %.1.i, 3
  %i.ei = lshr i32 %.lcssa, 8
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = add i64 %i.eh, %i.ej                    ; 2 uses
  %.not57 = icmp ugt i64 %i.be, %i.cn
  %.not58 = icmp ugt i64 %i.be, %i.ek
  %or.cond61 = or i1 %.not57, %.not58
  br i1 %or.cond61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit
  store i32 0, ptr %0, align 4, !tbaa !24
  br label %.thread

bb.v:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_entropyCostEPKjjm.exit
  %.not59 = icmp ugt i64 %i.cn, %i.ek
  br i1 %.not59, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v, %bb.g, %bb.d
  store i32 1, ptr %0, align 4, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.u, %bb.h, %bb.e, %bb.b, %bb.w
  %.2 = phi i32 [ %., %bb.b ], [ 3, %bb.e ], [ 2, %bb.w ], [ 0, %bb.h ], [ 3, %bb.v ], [ 0, %bb.u ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd16ZSTD_buildCTableEPvmPjjNS_20symbolEncodingType_eES1_jPKhmPKsjjPKjmS0_m(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef readonly captures(none) %12, i64 noundef %13, ptr noundef %14, i64 noundef %15) local_unnamed_addr #2 {
bb.a:
  switch i32 %4, label %bb.l [
    i32 1, label %bb.b
    i32 3, label %bb.e
    i32 0, label %bb.f
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i32 %6 to i8
  %i.b = tail call noundef i64 @_ZN11duckdb_zstd19FSE_buildCTable_rleEPjh(ptr noundef %2, i8 noundef zeroext %i.a) ; 2 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %7, align 1, !tbaa !15
  store i8 %i.e, ptr %0, align 1, !tbaa !15
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %12, i64 %13, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef %2, ptr noundef %9, i32 noundef %11, i32 noundef %10, ptr noundef %14, i64 noundef %15) ; 2 uses
  %i.g = icmp ult i64 %i.f, -119
  %spec.select = select i1 %i.g, i64 0, i64 %i.f
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11duckdb_zstd19FSE_optimalTableLogEjmj(i32 noundef %3, i64 noundef %8, i32 noundef %6) ; 3 uses
  %i.i = getelementptr i8, ptr %7, i64 %8
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9    ; 2 uses
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = add i32 %i.n, -1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !9
  %i.q = add i64 %8, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i64 [ %i.q, %bb.h ], [ %8, %bb.g ]    ; 2 uses
  %i.r = icmp ugt i64 %.0, 2047
  %i.s = zext i1 %i.r to i32
  %i.t = tail call noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef %14, i32 noundef %i.h, ptr noundef nonnull %5, i64 noundef %.0, i32 noundef %6, i32 noundef %i.s) ; 2 uses
  %i.u = icmp ult i64 %i.t, -119
  br i1 %i.u, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = tail call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %0, i64 noundef %1, ptr noundef %14, i32 noundef %6, i32 noundef %i.h) ; 3 uses
  %i.w = icmp ult i64 %i.v, -119
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 108
  %i.y = tail call noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef %2, ptr noundef %14, i32 noundef %6, i32 noundef %i.h, ptr noundef nonnull %i.x, i64 noundef 1140) ; 2 uses
  %i.z = icmp ult i64 %i.y, -119
  %spec.select79 = select i1 %i.z, i64 %i.v, i64 %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.a, %bb.i, %bb.j, %bb.c, %bb.b, %bb.e, %bb.d
  %.7 = phi i64 [ %i.v, %bb.j ], [ -70, %bb.c ], [ 1, %bb.d ], [ %i.b, %bb.b ], [ 0, %bb.e ], [ -1, %bb.a ], [ %spec.select79, %bb.k ], [ %i.t, %bb.i ], [ %spec.select, %bb.f ]
  ret i64 %.7
}

declare noundef i64 @_ZN11duckdb_zstd19FSE_buildCTable_rleEPjh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11duckdb_zstd19FSE_optimalTableLogEjmj(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 1, 0) i64 @_ZN11duckdb_zstd20ZSTD_encodeSequencesEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmii(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL25ZSTD_encodeSequences_bmi2EPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef %10)
  br label %_ZN11duckdb_zstdL28ZSTD_encodeSequences_defaultEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 21 uses
  %i.d = icmp ugt i64 %1, 8
  br i1 %i.d, label %bb.d, label %_ZN11duckdb_zstdL28ZSTD_encodeSequences_defaultEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %9, -1                           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %.val.i.i.i = load i16, ptr %2, align 1, !tbaa !11 ; 3 uses
  %i.h = zext i16 %.val.i.i.i to i32              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq i16 %.val.i.i.i, 0
  %i.j = add nsw i32 %i.h, -1
  %i.k = shl nuw i32 1, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = select i1 %.not.i.i.i, i64 1, i64 %i.l
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m ; 2 uses
  %i.o = zext i8 %i.g to i64                      ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !9 ; 2 uses
  %i.q = add i32 %.sroa.4.0.copyload.i.i, 32768   ; 2 uses
  %i.r = lshr i32 %i.q, 16
  %i.s = and i32 %i.q, -65536
  %i.t = sub i32 %i.s, %.sroa.4.0.copyload.i.i
  %i.u = zext i32 %i.t to i64
  %i.v = zext nneg i32 %i.r to i64
  %i.w = lshr i64 %i.u, %i.v
  %i.x = sext i32 %.sroa.0.0.copyload.i.i to i64
  %i.y = getelementptr [2 x i8], ptr %i.i, i64 %i.w
  %i.z = getelementptr [2 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %i.e
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15  ; 4 uses
  %i.ad = zext i8 %i.ac to i32                    ; 3 uses
  %.val.i.i16.i = load i16, ptr %4, align 1, !tbaa !11 ; 3 uses
  %i.ae = zext i16 %.val.i.i16.i to i32           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i.i17.i = icmp eq i16 %.val.i.i16.i, 0
  %i.ag = add nsw i32 %i.ae, -1
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = select i1 %.not.i.i17.i, i64 1, i64 %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = zext i8 %i.ac to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %.sroa.0.0.copyload.i18.i = load i32, ptr %i.am, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.4.0.copyload.i20.i = load i32, ptr %.sroa.4.0..sroa_idx.i19.i, align 4, !tbaa !9 ; 2 uses
  %i.an = add i32 %.sroa.4.0.copyload.i20.i, 32768 ; 2 uses
  %i.ao = lshr i32 %i.an, 16
  %i.ap = and i32 %i.an, -65536
  %i.aq = sub i32 %i.ap, %.sroa.4.0.copyload.i20.i
  %i.ar = zext i32 %i.aq to i64
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = lshr i64 %i.ar, %i.as
  %i.au = sext i32 %.sroa.0.0.copyload.i18.i to i64
  %i.av = getelementptr [2 x i8], ptr %i.af, i64 %i.at
  %i.aw = getelementptr [2 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 %i.e
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %.val.i.i21.i = load i16, ptr %6, align 1, !tbaa !11 ; 3 uses
  %i.ba = zext i16 %.val.i.i21.i to i32           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %.not.i.i22.i = icmp eq i16 %.val.i.i21.i, 0
  %i.bc = add nsw i32 %i.ba, -1
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = select i1 %.not.i.i22.i, i64 1, i64 %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf ; 2 uses
  %i.bh = zext i8 %i.az to i64                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.bi, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !tbaa !9 ; 2 uses
  %i.bj = add i32 %.sroa.4.0.copyload.i25.i, 32768 ; 2 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = and i32 %i.bj, -65536
  %i.bm = sub i32 %i.bl, %.sroa.4.0.copyload.i25.i
  %i.bn = zext i32 %i.bm to i64
  %i.bo = zext nneg i32 %i.bk to i64
  %i.bp = lshr i64 %i.bn, %i.bo
  %i.bq = sext i32 %.sroa.0.0.copyload.i23.i to i64
  %i.br = getelementptr [2 x i8], ptr %i.bb, i64 %i.bp
  %i.bs = getelementptr [2 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !11
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.e ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.bh
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15  ; 2 uses
  %i.bz = zext i8 %i.by to i32
  %12 = zext i8 %i.by to i64                      ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !9
  %i.ca = zext i16 %i.bw to i32
  %i.cb = and i32 %14, %i.ca
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.o
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !15  ; 2 uses
  %i.ch = zext i8 %i.cg to i32
  %15 = zext i8 %i.cg to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = zext i16 %i.ce to i32
  %19 = and i32 %17, %18
  %i.ci = zext nneg i32 %19 to i64
  %i.cj = shl i64 %i.ci, %12
  %i.ck = or i64 %i.cj, %i.cc                     ; 4 uses
  %i.cl = add nuw nsw i32 %i.ch, %i.bz            ; 6 uses
  %.not92.i.i = icmp eq i32 %10, 0                ; 2 uses
  br i1 %.not92.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = icmp ult i8 %i.ac, 56
  br i1 %i.cm, label %..thread_crit_edge.i, label %bb.f

..thread_crit_edge.i:                             ; preds = %bb.e
  %.pre.i = load i32, ptr %i.bu, align 4, !tbaa !19
  br label %.thread.i

bb.f:                                             ; preds = %bb.e
  %.not93.i.i = icmp eq i8 %i.ac, 56
  %.pre158.i = load i32, ptr %i.bu, align 4, !tbaa !19 ; 3 uses
  br i1 %.not93.i.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = add nsw i32 %i.ad, -56                  ; 3 uses
  %20 = zext nneg i32 %i.cn to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !9
  %i.co = and i32 %22, %.pre158.i
  %i.cp = zext i32 %i.co to i64
  %i.cq = zext nneg i32 %i.cl to i64
  %i.cr = shl i64 %i.cp, %i.cq
  %i.cs = or i64 %i.cr, %i.ck                     ; 2 uses
  %i.ct = add nuw nsw i32 %i.cl, %i.cn            ; 2 uses
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  store i64 %i.cs, ptr %0, align 1, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt ptr %i.cw, %i.c
  %spec.store.select.i.i = select i1 %i.cx, ptr %i.c, ptr %i.cw
  %i.cy = and i32 %i.ct, 7
  %i.cz = shl nuw nsw i64 %i.cv, 3
  %i.da = lshr i64 %i.cs, %i.cz
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %..thread_crit_edge.i
  %i.db = phi i32 [ %.pre158.i, %bb.f ], [ %.pre158.i, %bb.g ], [ %.pre.i, %..thread_crit_edge.i ]
  %i.dc = phi i32 [ 0, %bb.f ], [ %i.cn, %bb.g ], [ 0, %..thread_crit_edge.i ]
  %i.dd = phi i32 [ 56, %bb.f ], [ 56, %bb.g ], [ %i.ad, %..thread_crit_edge.i ] ; 2 uses
  %.sroa.63.0.i = phi i32 [ %i.cl, %bb.f ], [ %i.cy, %bb.g ], [ %i.cl, %..thread_crit_edge.i ] ; 2 uses
  %.sroa.058.0.i = phi i64 [ %i.ck, %bb.f ], [ %i.da, %bb.g ], [ %i.ck, %..thread_crit_edge.i ]
  %.sroa.112.0.i = phi ptr [ %0, %bb.f ], [ %spec.store.select.i.i, %bb.g ], [ %0, %..thread_crit_edge.i ]
  %i.de = lshr i32 %i.db, %i.dc
  %23 = zext nneg i32 %i.dd to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !9
  %i.df = and i32 %25, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = zext nneg i32 %.sroa.63.0.i to i64
  %i.di = shl i64 %i.dg, %i.dh
  %i.dj = or i64 %i.di, %.sroa.058.0.i
  %i.dk = add nuw nsw i32 %.sroa.63.0.i, %i.dd
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.dl = load i32, ptr %i.bu, align 4, !tbaa !19
  %26 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.al
  %27 = load i32, ptr %26, align 4, !tbaa !9
  %i.dm = and i32 %27, %i.dl
  %i.dn = zext i32 %i.dm to i64
  %i.do = zext nneg i32 %i.cl to i64
  %i.dp = shl i64 %i.dn, %i.do
  %i.dq = or i64 %i.dp, %i.ck
  %i.dr = add nuw nsw i32 %i.cl, %i.ad
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  %.sroa.63.1.i = phi i32 [ %i.dr, %bb.h ], [ %i.dk, %.thread.i ] ; 2 uses
  %.sroa.058.1.i = phi i64 [ %i.dq, %bb.h ], [ %i.dj, %.thread.i ] ; 2 uses
  %.sroa.112.1.i = phi ptr [ %0, %bb.h ], [ %.sroa.112.0.i, %.thread.i ] ; 2 uses
  %i.ds = lshr i32 %.sroa.63.1.i, 3
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  store i64 %.sroa.058.1.i, ptr %.sroa.112.1.i, align 1, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.112.1.i, i64 %i.dt ; 2 uses
  %i.dv = icmp ugt ptr %i.du, %i.c
  %spec.store.select.i26.i = select i1 %i.dv, ptr %i.c, ptr %i.du ; 2 uses
  %i.dw = shl nuw nsw i64 %i.dt, 3
  %i.dx = lshr i64 %.sroa.058.1.i, %i.dw          ; 2 uses
  %.sroa.0.0138.i = zext i16 %i.bt to i64         ; 2 uses
  %.sroa.046.0139.i = zext i16 %i.ax to i64       ; 2 uses
  %.sroa.052.0140.i = zext i16 %i.aa to i64       ; 2 uses
  %.sroa.63.2141.i = and i32 %.sroa.63.1.i, 7     ; 2 uses
  %i.dy = icmp ugt i64 %9, 1
  br i1 %i.dy, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.dz = add i64 %9, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.sroa.63.2148.i = phi i32 [ %.sroa.63.2.i, %bb.r ], [ %.sroa.63.2141.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.052.0147.i = phi i64 [ %.sroa.052.0.i, %bb.r ], [ %.sroa.052.0140.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.046.0146.i = phi i64 [ %.sroa.046.0.i, %bb.r ], [ %.sroa.046.0139.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.0145.i = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.0.0138.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0.i144.i = phi i64 [ %i.jj, %bb.r ], [ %i.dz, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.112.2143.i = phi ptr [ %spec.store.select.i39.i, %bb.r ], [ %spec.store.select.i26.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.058.2142.i = phi i64 [ %i.ji, %bb.r ], [ %i.dx, %.lr.ph.preheader.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 %.0.i144.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 %.0.i144.i
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !15  ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 %.0.i144.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !15
  %i.eg = zext i8 %i.eb to i64                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !15  ; 2 uses
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %i.ek = zext i8 %i.ed to i32                    ; 4 uses
  %i.el = zext i8 %i.ef to i64                    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !15  ; 2 uses
  %i.eo = zext i8 %i.en to i32                    ; 2 uses
  %i.ep = zext i8 %i.ed to i64                    ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ep ; 2 uses
  %.sroa.0.0.copyload.i27.i = load i32, ptr %i.eq, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %.sroa.4.0.copyload.i29.i = load i32, ptr %.sroa.4.0..sroa_idx.i28.i, align 4, !tbaa !9
  %i.er = zext i32 %.sroa.4.0.copyload.i29.i to i64
  %i.es = add nuw nsw i64 %.sroa.046.0146.i, %i.er
  %i.et = lshr i64 %i.es, 16                      ; 3 uses
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %28 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.et
  %29 = load i32, ptr %28, align 4, !tbaa !9
  %i.ev = zext i32 %29 to i64
  %i.ew = and i64 %.sroa.046.0146.i, %i.ev
  %i.ex = zext nneg i32 %.sroa.63.2148.i to i64
  %i.ey = shl nuw nsw i64 %i.ew, %i.ex
  %i.ez = add nuw nsw i32 %.sroa.63.2148.i, %i.eu ; 2 uses
  %i.fa = lshr i64 %.sroa.046.0146.i, %i.et
  %i.fb = sext i32 %.sroa.0.0.copyload.i27.i to i64
  %i.fc = getelementptr [2 x i8], ptr %i.af, i64 %i.fa
  %i.fd = getelementptr [2 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.el ; 2 uses
  %.sroa.0.0.copyload.i30.i = load i32, ptr %i.ff, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %.sroa.4.0.copyload.i32.i = load i32, ptr %.sroa.4.0..sroa_idx.i31.i, align 4, !tbaa !9
  %i.fg = zext i32 %.sroa.4.0.copyload.i32.i to i64
  %i.fh = add nuw nsw i64 %.sroa.052.0147.i, %i.fg
  %i.fi = lshr i64 %i.fh, 16                      ; 3 uses
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %30 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.fi
  %31 = load i32, ptr %30, align 4, !tbaa !9
  %i.fk = zext i32 %31 to i64
  %i.fl = and i64 %.sroa.052.0147.i, %i.fk
  %i.fm = zext nneg i32 %i.ez to i64
  %i.fn = shl i64 %i.fl, %i.fm
  %i.fo = add nuw nsw i32 %i.ez, %i.fj            ; 2 uses
  %i.fp = lshr i64 %.sroa.052.0147.i, %i.fi
  %i.fq = sext i32 %.sroa.0.0.copyload.i30.i to i64
  %i.fr = getelementptr [2 x i8], ptr %i.i, i64 %i.fp
  %i.fs = getelementptr [2 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !11
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.eg ; 2 uses
  %.sroa.0.0.copyload.i33.i = load i32, ptr %i.fu, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %.sroa.4.0.copyload.i35.i = load i32, ptr %.sroa.4.0..sroa_idx.i34.i, align 4, !tbaa !9
  %i.fv = zext i32 %.sroa.4.0.copyload.i35.i to i64
  %i.fw = add nuw nsw i64 %.sroa.0.0145.i, %i.fv
  %i.fx = lshr i64 %i.fw, 16                      ; 3 uses
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %32 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.fx
  %33 = load i32, ptr %32, align 4, !tbaa !9
  %i.fz = zext i32 %33 to i64
  %i.ga = and i64 %.sroa.0.0145.i, %i.fz
  %i.gb = zext nneg i32 %i.fo to i64
  %i.gc = shl i64 %i.ga, %i.gb
  %i.gd = or i64 %i.ey, %.sroa.058.2142.i
  %i.ge = or i64 %i.gd, %i.fn
  %i.gf = or i64 %i.ge, %i.gc                     ; 3 uses
  %i.gg = add nuw nsw i32 %i.fo, %i.fy            ; 3 uses
  %i.gh = lshr i64 %.sroa.0.0145.i, %i.fx
  %i.gi = sext i32 %.sroa.0.0.copyload.i33.i to i64
  %i.gj = getelementptr [2 x i8], ptr %i.bb, i64 %i.gh
  %i.gk = getelementptr [2 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !11
  %i.gm = add nuw nsw i32 %i.ej, %i.ek
  %i.gn = add nuw nsw i32 %i.gm, %i.eo            ; 2 uses
  %i.go = icmp samesign ugt i32 %i.gn, 30
  br i1 %i.go, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.gp = lshr i32 %i.gg, 3
  %i.gq = zext nneg i32 %i.gp to i64              ; 2 uses
  store i64 %i.gf, ptr %.sroa.112.2143.i, align 1, !tbaa !21
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.112.2143.i, i64 %i.gq ; 2 uses
  %i.gs = icmp ugt ptr %i.gr, %i.c
  %spec.store.select.i36.i = select i1 %i.gs, ptr %i.c, ptr %i.gr
  %i.gt = and i32 %i.gg, 7
  %i.gu = shl nuw nsw i64 %i.gq, 3
  %i.gv = lshr i64 %i.gf, %i.gu
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.63.3.i = phi i32 [ %i.gt, %bb.j ], [ %i.gg, %.lr.ph.i ] ; 2 uses
  %.sroa.058.3.i = phi i64 [ %i.gv, %bb.j ], [ %i.gf, %.lr.ph.i ]
  %.sroa.112.3.i = phi ptr [ %spec.store.select.i36.i, %bb.j ], [ %.sroa.112.2143.i, %.lr.ph.i ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.0.i144.i ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = load i16, ptr %i.gx, align 4, !tbaa !17
  %34 = zext i8 %i.ei to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !9
  %i.gz = zext i16 %i.gy to i32
  %i.ha = and i32 %36, %i.gz
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = zext nneg i32 %.sroa.63.3.i to i64
  %i.hd = shl i64 %i.hb, %i.hc
  %i.he = or i64 %i.hd, %.sroa.058.3.i
  %i.hf = add nuw nsw i32 %.sroa.63.3.i, %i.ej    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 6
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !18
  %37 = zext i8 %i.en to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !9
  %i.hi = zext i16 %i.hh to i32
  %i.hj = and i32 %39, %i.hi
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = zext nneg i32 %i.hf to i64
  %i.hm = shl i64 %i.hk, %i.hl
  %i.hn = or i64 %i.he, %i.hm                     ; 3 uses
  %i.ho = add nuw nsw i32 %i.hf, %i.eo            ; 3 uses
  %i.hp = icmp samesign ugt i32 %i.gn, 56
  br i1 %i.hp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hq = lshr i32 %i.ho, 3
  %i.hr = zext nneg i32 %i.hq to i64              ; 2 uses
  store i64 %i.hn, ptr %.sroa.112.3.i, align 1, !tbaa !21
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.112.3.i, i64 %i.hr ; 2 uses
  %i.ht = icmp ugt ptr %i.hs, %i.c
  %spec.store.select.i37.i = select i1 %i.ht, ptr %i.c, ptr %i.hs
  %i.hu = and i32 %i.ho, 7
  %i.hv = shl nuw nsw i64 %i.hr, 3
  %i.hw = lshr i64 %i.hn, %i.hv
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.63.4.i = phi i32 [ %i.hu, %bb.l ], [ %i.ho, %bb.k ] ; 6 uses
  %.sroa.058.4.i = phi i64 [ %i.hw, %bb.l ], [ %i.hn, %bb.k ] ; 4 uses
  %.sroa.112.4.i = phi ptr [ %spec.store.select.i37.i, %bb.l ], [ %.sroa.112.3.i, %bb.k ] ; 5 uses
  br i1 %.not92.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hx = icmp ult i8 %i.ed, 56
  br i1 %i.hx, label %..thread133_crit_edge.i, label %bb.o

..thread133_crit_edge.i:                          ; preds = %bb.n
  %.pre159.i = load i32, ptr %i.gw, align 4, !tbaa !19
  br label %.thread133.i

bb.o:                                             ; preds = %bb.n
  %.not94.i.i = icmp eq i8 %i.ed, 56
  %.pre160.i = load i32, ptr %i.gw, align 4, !tbaa !19 ; 3 uses
  br i1 %.not94.i.i, label %.thread133.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hy = add nsw i32 %i.ek, -56                  ; 3 uses
  %40 = zext nneg i32 %i.hy to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !9
  %i.hz = and i32 %42, %.pre160.i
  %i.ia = zext i32 %i.hz to i64
  %i.ib = zext nneg i32 %.sroa.63.4.i to i64
  %i.ic = shl i64 %i.ia, %i.ib
  %i.id = or i64 %i.ic, %.sroa.058.4.i            ; 2 uses
  %i.ie = add nsw i32 %.sroa.63.4.i, %i.hy        ; 2 uses
  %i.if = lshr i32 %i.ie, 3
  %i.ig = zext nneg i32 %i.if to i64              ; 2 uses
  store i64 %i.id, ptr %.sroa.112.4.i, align 1, !tbaa !21
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.112.4.i, i64 %i.ig ; 2 uses
  %i.ii = icmp ugt ptr %i.ih, %i.c
  %spec.store.select.i38.i = select i1 %i.ii, ptr %i.c, ptr %i.ih
  %i.ij = and i32 %i.ie, 7
  %i.ik = shl nuw nsw i64 %i.ig, 3
  %i.il = lshr i64 %i.id, %i.ik
  br label %.thread133.i

.thread133.i:                                     ; preds = %bb.p, %bb.o, %..thread133_crit_edge.i
  %i.im = phi i32 [ %.pre160.i, %bb.o ], [ %.pre160.i, %bb.p ], [ %.pre159.i, %..thread133_crit_edge.i ]
  %i.in = phi i32 [ 0, %bb.o ], [ %i.hy, %bb.p ], [ 0, %..thread133_crit_edge.i ]
  %i.io = phi i32 [ 56, %bb.o ], [ 56, %bb.p ], [ %i.ek, %..thread133_crit_edge.i ] ; 2 uses
  %.sroa.63.5.i = phi i32 [ %.sroa.63.4.i, %bb.o ], [ %i.ij, %bb.p ], [ %.sroa.63.4.i, %..thread133_crit_edge.i ] ; 2 uses
  %.sroa.058.5.i = phi i64 [ %.sroa.058.4.i, %bb.o ], [ %i.il, %bb.p ], [ %.sroa.058.4.i, %..thread133_crit_edge.i ]
  %.sroa.112.5.i = phi ptr [ %.sroa.112.4.i, %bb.o ], [ %spec.store.select.i38.i, %bb.p ], [ %.sroa.112.4.i, %..thread133_crit_edge.i ]
  %i.ip = lshr i32 %i.im, %i.in
  %43 = zext nneg i32 %i.io to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !9
  %i.iq = and i32 %45, %i.ip
  %i.ir = zext i32 %i.iq to i64
  %i.is = zext nneg i32 %.sroa.63.5.i to i64
  %i.it = shl i64 %i.ir, %i.is
  %i.iu = or i64 %i.it, %.sroa.058.5.i
  %i.iv = add nuw nsw i32 %.sroa.63.5.i, %i.io
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.iw = load i32, ptr %i.gw, align 4, !tbaa !19
  %46 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.ep
  %47 = load i32, ptr %46, align 4, !tbaa !9
  %i.ix = and i32 %47, %i.iw
  %i.iy = zext i32 %i.ix to i64
  %i.iz = zext nneg i32 %.sroa.63.4.i to i64
  %i.ja = shl i64 %i.iy, %i.iz
  %i.jb = or i64 %i.ja, %.sroa.058.4.i
  %i.jc = add nuw nsw i32 %.sroa.63.4.i, %i.ek
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread133.i
  %.sroa.63.6.i = phi i32 [ %i.jc, %bb.q ], [ %i.iv, %.thread133.i ] ; 2 uses
  %.sroa.058.6.i = phi i64 [ %i.jb, %bb.q ], [ %i.iu, %.thread133.i ] ; 2 uses
  %.sroa.112.6.i = phi ptr [ %.sroa.112.4.i, %bb.q ], [ %.sroa.112.5.i, %.thread133.i ] ; 2 uses
  %i.jd = lshr i32 %.sroa.63.6.i, 3
  %i.je = zext nneg i32 %i.jd to i64              ; 2 uses
  store i64 %.sroa.058.6.i, ptr %.sroa.112.6.i, align 1, !tbaa !21
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.112.6.i, i64 %i.je ; 2 uses
  %i.jg = icmp ugt ptr %i.jf, %i.c
  %spec.store.select.i39.i = select i1 %i.jg, ptr %i.c, ptr %i.jf ; 2 uses
  %i.jh = shl nuw nsw i64 %i.je, 3
  %i.ji = lshr i64 %.sroa.058.6.i, %i.jh          ; 2 uses
  %i.jj = add i64 %.0.i144.i, -1                  ; 2 uses
  %.sroa.0.0.i = zext i16 %i.gl to i64            ; 2 uses
  %.sroa.046.0.i = zext i16 %i.fe to i64          ; 2 uses
  %.sroa.052.0.i = zext i16 %i.ft to i64          ; 2 uses
  %.sroa.63.2.i = and i32 %.sroa.63.6.i, 7        ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %9
  br i1 %i.jk, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.r, %bb.i
  %.sroa.058.2.lcssa.i = phi i64 [ %i.dx, %bb.i ], [ %i.ji, %bb.r ]
  %.sroa.112.2.lcssa.i = phi ptr [ %spec.store.select.i26.i, %bb.i ], [ %spec.store.select.i39.i, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.0138.i, %bb.i ], [ %.sroa.0.0.i, %bb.r ]
  %.sroa.046.0.lcssa.i = phi i64 [ %.sroa.046.0139.i, %bb.i ], [ %.sroa.046.0.i, %bb.r ]
  %.sroa.052.0.lcssa.i = phi i64 [ %.sroa.052.0140.i, %bb.i ], [ %.sroa.052.0.i, %bb.r ]
  %.sroa.63.2.lcssa.i = phi i32 [ %.sroa.63.2141.i, %bb.i ], [ %.sroa.63.2.i, %bb.r ] ; 2 uses
  %48 = zext i16 %.val.i.i.i to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !9
  %i.jl = zext i32 %50 to i64
  %i.jm = and i64 %.sroa.052.0.lcssa.i, %i.jl
  %i.jn = zext nneg i32 %.sroa.63.2.lcssa.i to i64
  %i.jo = shl nuw nsw i64 %i.jm, %i.jn
  %i.jp = or i64 %i.jo, %.sroa.058.2.lcssa.i      ; 2 uses
  %i.jq = add nuw nsw i32 %.sroa.63.2.lcssa.i, %i.h ; 2 uses
  %i.jr = lshr i32 %i.jq, 3
  %i.js = zext nneg i32 %i.jr to i64              ; 2 uses
  store i64 %i.jp, ptr %.sroa.112.2.lcssa.i, align 1, !tbaa !21
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.112.2.lcssa.i, i64 %i.js ; 2 uses
  %i.ju = icmp ugt ptr %i.jt, %i.c
  %spec.store.select.i.i.i = select i1 %i.ju, ptr %i.c, ptr %i.jt ; 2 uses
  %i.jv = and i32 %i.jq, 7                        ; 2 uses
  %i.jw = shl nuw nsw i64 %i.js, 3
  %i.jx = lshr i64 %i.jp, %i.jw
  %51 = zext i16 %.val.i.i16.i to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !9
  %i.jy = zext i32 %53 to i64
  %i.jz = and i64 %.sroa.046.0.lcssa.i, %i.jy
  %i.ka = zext nneg i32 %i.jv to i64
  %i.kb = shl nuw nsw i64 %i.jz, %i.ka
  %i.kc = or i64 %i.kb, %i.jx                     ; 2 uses
  %i.kd = add nuw nsw i32 %i.jv, %i.ae            ; 2 uses
  %i.ke = lshr i32 %i.kd, 3
  %i.kf = zext nneg i32 %i.ke to i64              ; 2 uses
  store i64 %i.kc, ptr %spec.store.select.i.i.i, align 1, !tbaa !21
  %i.kg = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i.i, i64 %i.kf ; 2 uses
  %i.kh = icmp ugt ptr %i.kg, %i.c
  %spec.store.select.i.i40.i = select i1 %i.kh, ptr %i.c, ptr %i.kg ; 2 uses
  %i.ki = and i32 %i.kd, 7                        ; 2 uses
  %i.kj = shl nuw nsw i64 %i.kf, 3
  %i.kk = lshr i64 %i.kc, %i.kj
  %54 = zext i16 %.val.i.i21.i to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !9
  %i.kl = zext i32 %56 to i64
  %i.km = and i64 %.sroa.0.0.lcssa.i, %i.kl
  %i.kn = zext nneg i32 %i.ki to i64
  %i.ko = shl nuw nsw i64 %i.km, %i.kn
  %i.kp = or i64 %i.ko, %i.kk                     ; 2 uses
  %i.kq = add nuw nsw i32 %i.ki, %i.ba            ; 2 uses
  %i.kr = lshr i32 %i.kq, 3
  %i.ks = zext nneg i32 %i.kr to i64              ; 2 uses
  store i64 %i.kp, ptr %spec.store.select.i.i40.i, align 1, !tbaa !21
  %i.kt = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i40.i, i64 %i.ks ; 2 uses
  %i.ku = icmp ugt ptr %i.kt, %i.c
  %spec.store.select.i.i41.i = select i1 %i.ku, ptr %i.c, ptr %i.kt ; 2 uses
  %i.kv = and i32 %i.kq, 7                        ; 2 uses
  %i.kw = shl nuw nsw i64 %i.ks, 3
  %i.kx = lshr i64 %i.kp, %i.kw
  %i.ky = zext nneg i32 %i.kv to i64
  %i.kz = shl nuw nsw i64 1, %i.ky
  %i.la = or i64 %i.kx, %i.kz
  %i.lb = add nuw nsw i32 %i.kv, 1                ; 2 uses
  %i.lc = lshr i32 %i.lb, 3
  %i.ld = zext nneg i32 %i.lc to i64
  store i64 %i.la, ptr %spec.store.select.i.i41.i, align 1, !tbaa !21
  %i.le = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i41.i, i64 %i.ld ; 2 uses
  %i.lf = icmp ugt ptr %i.le, %i.c
  %spec.store.select.i.i42.i = select i1 %i.lf, ptr %i.c, ptr %i.le ; 2 uses
  %.not.i43.i = icmp ult ptr %spec.store.select.i.i42.i, %i.c
  br i1 %.not.i43.i, label %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.i, label %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread.i

_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.i: ; preds = %._crit_edge.i
  %i.lg = and i32 %i.lb, 7
  %i.lh = ptrtoint ptr %spec.store.select.i.i42.i to i64
  %i.li = ptrtoint ptr %0 to i64
  %i.lj = icmp ne i32 %i.lg, 0
  %i.lk = zext i1 %i.lj to i64
  %i.ll = add i64 %i.lh, %i.lk
  %.fr137.i = freeze i64 %i.ll
  %i.lm = sub i64 %.fr137.i, %i.li                ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread.i, label %_ZN11duckdb_zstdL28ZSTD_encodeSequences_defaultEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit

_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread.i: ; preds = %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.i, %._crit_edge.i
  br label %_ZN11duckdb_zstdL28ZSTD_encodeSequences_defaultEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit

_ZN11duckdb_zstdL28ZSTD_encodeSequences_defaultEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit: ; preds = %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread.i, %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.i, %bb.c, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ -70, %bb.c ], [ -70, %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread.i ], [ %i.lm, %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_ZN11duckdb_zstdL25ZSTD_encodeSequences_bmi2EPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9, i32 noundef %10) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 21 uses
  %i.c = icmp ugt i64 %1, 8
  br i1 %i.c, label %bb.b, label %_ZN11duckdb_zstdL25ZSTD_encodeSequences_bodyEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %9, -1                           ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %.val.i.i = load i16, ptr %2, align 1, !tbaa !11 ; 3 uses
  %i.g = zext i16 %.val.i.i to i32                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.not.i.i = icmp eq i16 %.val.i.i, 0
  %i.i = add nsw i32 %i.g, -1
  %i.j = shl nuw i32 1, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = select i1 %.not.i.i, i64 1, i64 %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %i.n = zext i8 %i.f to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9 ; 2 uses
  %i.p = add i32 %.sroa.4.0.copyload.i, 32768     ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = and i32 %i.p, -65536
  %i.s = sub i32 %i.r, %.sroa.4.0.copyload.i
  %i.t = zext i32 %i.s to i64
  %i.u = zext nneg i32 %i.q to i64
  %i.v = lshr i64 %i.t, %i.u
  %i.w = sext i32 %.sroa.0.0.copyload.i to i64
  %i.x = getelementptr [2 x i8], ptr %i.h, i64 %i.v
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.w
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.d
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15  ; 4 uses
  %i.ac = zext i8 %i.ab to i32                    ; 3 uses
  %.val.i.i16 = load i16, ptr %4, align 1, !tbaa !11 ; 3 uses
  %i.ad = zext i16 %.val.i.i16 to i32             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i.i17 = icmp eq i16 %.val.i.i16, 0
  %i.af = add nsw i32 %i.ad, -1
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = select i1 %.not.i.i17, i64 1, i64 %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai ; 2 uses
  %i.ak = zext i8 %i.ab to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.al, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.4.0.copyload.i20 = load i32, ptr %.sroa.4.0..sroa_idx.i19, align 4, !tbaa !9 ; 2 uses
  %i.am = add i32 %.sroa.4.0.copyload.i20, 32768  ; 2 uses
  %i.an = lshr i32 %i.am, 16
  %i.ao = and i32 %i.am, -65536
  %i.ap = sub i32 %i.ao, %.sroa.4.0.copyload.i20
  %i.aq = zext i32 %i.ap to i64
  %i.ar = zext nneg i32 %i.an to i64
  %i.as = lshr i64 %i.aq, %i.ar
  %i.at = sext i32 %.sroa.0.0.copyload.i18 to i64
  %i.au = getelementptr [2 x i8], ptr %i.ae, i64 %i.as
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 %i.d
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %.val.i.i21 = load i16, ptr %6, align 1, !tbaa !11 ; 3 uses
  %i.az = zext i16 %.val.i.i21 to i32             ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %.not.i.i22 = icmp eq i16 %.val.i.i21, 0
  %i.bb = add nsw i32 %i.az, -1
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = select i1 %.not.i.i22, i64 1, i64 %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = zext i8 %i.ay to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.bh, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.sroa.4.0.copyload.i25 = load i32, ptr %.sroa.4.0..sroa_idx.i24, align 4, !tbaa !9 ; 2 uses
  %i.bi = add i32 %.sroa.4.0.copyload.i25, 32768  ; 2 uses
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = and i32 %i.bi, -65536
  %i.bl = sub i32 %i.bk, %.sroa.4.0.copyload.i25
  %i.bm = zext i32 %i.bl to i64
  %i.bn = zext nneg i32 %i.bj to i64
  %i.bo = lshr i64 %i.bm, %i.bn
  %i.bp = sext i32 %.sroa.0.0.copyload.i23 to i64
  %i.bq = getelementptr [2 x i8], ptr %i.ba, i64 %i.bo
  %i.br = getelementptr [2 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !11
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.d ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.bg
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15  ; 2 uses
  %i.by = zext i8 %i.bx to i32
  %11 = zext i8 %i.bx to i64                      ; 2 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %i.bz = zext i16 %i.bv to i32
  %i.ca = and i32 %13, %i.bz
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.n
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15  ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %14 = zext i8 %i.cf to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !9
  %17 = zext i16 %i.cd to i32
  %18 = and i32 %16, %17
  %i.ch = zext nneg i32 %18 to i64
  %i.ci = shl i64 %i.ch, %11
  %i.cj = or i64 %i.ci, %i.cb                     ; 4 uses
  %i.ck = add nuw nsw i32 %i.cg, %i.by            ; 6 uses
  %.not92.i = icmp eq i32 %10, 0                  ; 2 uses
  br i1 %.not92.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cl = icmp ult i8 %i.ab, 56
  br i1 %i.cl, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.bt, align 4, !tbaa !19
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %.not93.i = icmp eq i8 %i.ab, 56
  %.pre158 = load i32, ptr %i.bt, align 4, !tbaa !19 ; 3 uses
  br i1 %.not93.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = add nsw i32 %i.ac, -56                  ; 3 uses
  %19 = zext nneg i32 %i.cm to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !9
  %i.cn = and i32 %21, %.pre158
  %i.co = zext i32 %i.cn to i64
  %i.cp = zext nneg i32 %i.ck to i64
  %i.cq = shl i64 %i.co, %i.cp
  %i.cr = or i64 %i.cq, %i.cj                     ; 2 uses
  %i.cs = add nuw nsw i32 %i.ck, %i.cm            ; 2 uses
  %i.ct = lshr i32 %i.cs, 3
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  store i64 %i.cr, ptr %0, align 1, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu ; 2 uses
  %i.cw = icmp ugt ptr %i.cv, %i.b
  %spec.store.select.i = select i1 %i.cw, ptr %i.b, ptr %i.cv
  %i.cx = and i32 %i.cs, 7
  %i.cy = shl nuw nsw i64 %i.cu, 3
  %i.cz = lshr i64 %i.cr, %i.cy
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.e, %bb.d
  %i.da = phi i32 [ %.pre158, %bb.d ], [ %.pre158, %bb.e ], [ %.pre, %..thread_crit_edge ]
  %i.db = phi i32 [ 0, %bb.d ], [ %i.cm, %bb.e ], [ 0, %..thread_crit_edge ]
  %i.dc = phi i32 [ 56, %bb.d ], [ 56, %bb.e ], [ %i.ac, %..thread_crit_edge ] ; 2 uses
  %.sroa.63.0 = phi i32 [ %i.ck, %bb.d ], [ %i.cx, %bb.e ], [ %i.ck, %..thread_crit_edge ] ; 2 uses
  %.sroa.058.0 = phi i64 [ %i.cj, %bb.d ], [ %i.cz, %bb.e ], [ %i.cj, %..thread_crit_edge ]
  %.sroa.112.0 = phi ptr [ %0, %bb.d ], [ %spec.store.select.i, %bb.e ], [ %0, %..thread_crit_edge ]
  %i.dd = lshr i32 %i.da, %i.db
  %22 = zext nneg i32 %i.dc to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %i.de = and i32 %i.dd, %24
  %i.df = zext i32 %i.de to i64
  %i.dg = zext nneg i32 %.sroa.63.0 to i64
  %i.dh = shl i64 %i.df, %i.dg
  %i.di = or i64 %i.dh, %.sroa.058.0
  %i.dj = add nuw nsw i32 %.sroa.63.0, %i.dc
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.dk = load i32, ptr %i.bt, align 4, !tbaa !19
  %25 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.ak
  %26 = load i32, ptr %25, align 4, !tbaa !9
  %i.dl = and i32 %26, %i.dk
  %i.dm = zext i32 %i.dl to i64
  %i.dn = zext nneg i32 %i.ck to i64
  %i.do = shl i64 %i.dm, %i.dn
  %i.dp = or i64 %i.do, %i.cj
  %i.dq = add nuw nsw i32 %i.ck, %i.ac
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.63.1 = phi i32 [ %i.dq, %bb.f ], [ %i.dj, %.thread ] ; 2 uses
  %.sroa.058.1 = phi i64 [ %i.dp, %bb.f ], [ %i.di, %.thread ] ; 2 uses
  %.sroa.112.1 = phi ptr [ %0, %bb.f ], [ %.sroa.112.0, %.thread ] ; 2 uses
  %i.dr = lshr i32 %.sroa.63.1, 3
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  store i64 %.sroa.058.1, ptr %.sroa.112.1, align 1, !tbaa !21
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.112.1, i64 %i.ds ; 2 uses
  %i.du = icmp ugt ptr %i.dt, %i.b
  %spec.store.select.i26 = select i1 %i.du, ptr %i.b, ptr %i.dt ; 2 uses
  %i.dv = shl nuw nsw i64 %i.ds, 3
  %i.dw = lshr i64 %.sroa.058.1, %i.dv            ; 2 uses
  %.sroa.0.0138 = zext i16 %i.bs to i64           ; 2 uses
  %.sroa.046.0139 = zext i16 %i.aw to i64         ; 2 uses
  %.sroa.052.0140 = zext i16 %i.z to i64          ; 2 uses
  %.sroa.63.2141 = and i32 %.sroa.63.1, 7         ; 2 uses
  %i.dx = icmp ugt i64 %9, 1
  br i1 %i.dx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.dy = add i64 %9, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.sroa.63.2148 = phi i32 [ %.sroa.63.2, %bb.p ], [ %.sroa.63.2141, %.lr.ph.preheader ] ; 2 uses
  %.sroa.052.0147 = phi i64 [ %.sroa.052.0, %bb.p ], [ %.sroa.052.0140, %.lr.ph.preheader ] ; 3 uses
  %.sroa.046.0146 = phi i64 [ %.sroa.046.0, %bb.p ], [ %.sroa.046.0139, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0145 = phi i64 [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0138, %.lr.ph.preheader ] ; 3 uses
  %.0.i144 = phi i64 [ %i.ji, %bb.p ], [ %i.dy, %.lr.ph.preheader ] ; 5 uses
  %.sroa.112.2143 = phi ptr [ %spec.store.select.i39, %bb.p ], [ %spec.store.select.i26, %.lr.ph.preheader ] ; 3 uses
  %.sroa.058.2142 = phi i64 [ %i.jh, %bb.p ], [ %i.dw, %.lr.ph.preheader ]
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 %.0.i144
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 %.0.i144
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15  ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 %.0.i144
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !15
  %i.ef = zext i8 %i.ea to i64                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !15  ; 2 uses
  %i.ei = zext i8 %i.eh to i32                    ; 2 uses
  %i.ej = zext i8 %i.ec to i32                    ; 4 uses
  %i.ek = zext i8 %i.ee to i64                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !15  ; 2 uses
  %i.en = zext i8 %i.em to i32                    ; 2 uses
  %i.eo = zext i8 %i.ec to i64                    ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.eo ; 2 uses
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.ep, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %.sroa.4.0.copyload.i29 = load i32, ptr %.sroa.4.0..sroa_idx.i28, align 4, !tbaa !9
  %i.eq = zext i32 %.sroa.4.0.copyload.i29 to i64
  %i.er = add nuw nsw i64 %.sroa.046.0146, %i.eq
  %i.es = lshr i64 %i.er, 16                      ; 3 uses
  %i.et = trunc nuw nsw i64 %i.es to i32
  %27 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.es
  %28 = load i32, ptr %27, align 4, !tbaa !9
  %i.eu = zext i32 %28 to i64
  %i.ev = and i64 %.sroa.046.0146, %i.eu
  %i.ew = zext nneg i32 %.sroa.63.2148 to i64
  %i.ex = shl nuw nsw i64 %i.ev, %i.ew
  %i.ey = add nuw nsw i32 %.sroa.63.2148, %i.et   ; 2 uses
  %i.ez = lshr i64 %.sroa.046.0146, %i.es
  %i.fa = sext i32 %.sroa.0.0.copyload.i27 to i64
  %i.fb = getelementptr [2 x i8], ptr %i.ae, i64 %i.ez
  %i.fc = getelementptr [2 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !11
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.fe, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %.sroa.4.0.copyload.i32 = load i32, ptr %.sroa.4.0..sroa_idx.i31, align 4, !tbaa !9
  %i.ff = zext i32 %.sroa.4.0.copyload.i32 to i64
  %i.fg = add nuw nsw i64 %.sroa.052.0147, %i.ff
  %i.fh = lshr i64 %i.fg, 16                      ; 3 uses
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %29 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.fh
  %30 = load i32, ptr %29, align 4, !tbaa !9
  %i.fj = zext i32 %30 to i64
  %i.fk = and i64 %.sroa.052.0147, %i.fj
  %i.fl = zext nneg i32 %i.ey to i64
  %i.fm = shl i64 %i.fk, %i.fl
  %i.fn = add nuw nsw i32 %i.ey, %i.fi            ; 2 uses
  %i.fo = lshr i64 %.sroa.052.0147, %i.fh
  %i.fp = sext i32 %.sroa.0.0.copyload.i30 to i64
  %i.fq = getelementptr [2 x i8], ptr %i.h, i64 %i.fo
  %i.fr = getelementptr [2 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !11
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ef ; 2 uses
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ft, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %.sroa.4.0.copyload.i35 = load i32, ptr %.sroa.4.0..sroa_idx.i34, align 4, !tbaa !9
  %i.fu = zext i32 %.sroa.4.0.copyload.i35 to i64
  %i.fv = add nuw nsw i64 %.sroa.0.0145, %i.fu
  %i.fw = lshr i64 %i.fv, 16                      ; 3 uses
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %31 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.fw
  %32 = load i32, ptr %31, align 4, !tbaa !9
  %i.fy = zext i32 %32 to i64
  %i.fz = and i64 %.sroa.0.0145, %i.fy
  %i.ga = zext nneg i32 %i.fn to i64
  %i.gb = shl i64 %i.fz, %i.ga
  %i.gc = or i64 %i.ex, %.sroa.058.2142
  %i.gd = or i64 %i.gc, %i.fm
  %i.ge = or i64 %i.gd, %i.gb                     ; 3 uses
  %i.gf = add nuw nsw i32 %i.fn, %i.fx            ; 3 uses
  %i.gg = lshr i64 %.sroa.0.0145, %i.fw
  %i.gh = sext i32 %.sroa.0.0.copyload.i33 to i64
  %i.gi = getelementptr [2 x i8], ptr %i.ba, i64 %i.gg
  %i.gj = getelementptr [2 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !11
  %i.gl = add nuw nsw i32 %i.ei, %i.ej
  %i.gm = add nuw nsw i32 %i.gl, %i.en            ; 2 uses
  %i.gn = icmp samesign ugt i32 %i.gm, 30
  br i1 %i.gn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.go = lshr i32 %i.gf, 3
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  store i64 %i.ge, ptr %.sroa.112.2143, align 1, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.112.2143, i64 %i.gp ; 2 uses
  %i.gr = icmp ugt ptr %i.gq, %i.b
  %spec.store.select.i36 = select i1 %i.gr, ptr %i.b, ptr %i.gq
  %i.gs = and i32 %i.gf, 7
  %i.gt = shl nuw nsw i64 %i.gp, 3
  %i.gu = lshr i64 %i.ge, %i.gt
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.sroa.63.3 = phi i32 [ %i.gs, %bb.h ], [ %i.gf, %.lr.ph ] ; 2 uses
  %.sroa.058.3 = phi i64 [ %i.gu, %bb.h ], [ %i.ge, %.lr.ph ]
  %.sroa.112.3 = phi ptr [ %spec.store.select.i36, %bb.h ], [ %.sroa.112.2143, %.lr.ph ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.0.i144 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gx = load i16, ptr %i.gw, align 4, !tbaa !17
  %33 = zext i8 %i.eh to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %i.gy = zext i16 %i.gx to i32
  %i.gz = and i32 %35, %i.gy
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = zext nneg i32 %.sroa.63.3 to i64
  %i.hc = shl i64 %i.ha, %i.hb
  %i.hd = or i64 %i.hc, %.sroa.058.3
  %i.he = add nuw nsw i32 %.sroa.63.3, %i.ei      ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 6
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !18
  %36 = zext i8 %i.em to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !9
  %i.hh = zext i16 %i.hg to i32
  %i.hi = and i32 %38, %i.hh
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = zext nneg i32 %i.he to i64
  %i.hl = shl i64 %i.hj, %i.hk
  %i.hm = or i64 %i.hd, %i.hl                     ; 3 uses
  %i.hn = add nuw nsw i32 %i.he, %i.en            ; 3 uses
  %i.ho = icmp samesign ugt i32 %i.gm, 56
  br i1 %i.ho, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hp = lshr i32 %i.hn, 3
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  store i64 %i.hm, ptr %.sroa.112.3, align 1, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.112.3, i64 %i.hq ; 2 uses
  %i.hs = icmp ugt ptr %i.hr, %i.b
  %spec.store.select.i37 = select i1 %i.hs, ptr %i.b, ptr %i.hr
  %i.ht = and i32 %i.hn, 7
  %i.hu = shl nuw nsw i64 %i.hq, 3
  %i.hv = lshr i64 %i.hm, %i.hu
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.63.4 = phi i32 [ %i.ht, %bb.j ], [ %i.hn, %bb.i ] ; 6 uses
  %.sroa.058.4 = phi i64 [ %i.hv, %bb.j ], [ %i.hm, %bb.i ] ; 4 uses
  %.sroa.112.4 = phi ptr [ %spec.store.select.i37, %bb.j ], [ %.sroa.112.3, %bb.i ] ; 5 uses
  br i1 %.not92.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hw = icmp ult i8 %i.ec, 56
  br i1 %i.hw, label %..thread133_crit_edge, label %bb.m

..thread133_crit_edge:                            ; preds = %bb.l
  %.pre159 = load i32, ptr %i.gv, align 4, !tbaa !19
  br label %.thread133

bb.m:                                             ; preds = %bb.l
  %.not94.i = icmp eq i8 %i.ec, 56
  %.pre160 = load i32, ptr %i.gv, align 4, !tbaa !19 ; 3 uses
  br i1 %.not94.i, label %.thread133, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hx = add nsw i32 %i.ej, -56                  ; 3 uses
  %39 = zext nneg i32 %i.hx to i64
  %40 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !9
  %i.hy = and i32 %41, %.pre160
  %i.hz = zext i32 %i.hy to i64
  %i.ia = zext nneg i32 %.sroa.63.4 to i64
  %i.ib = shl i64 %i.hz, %i.ia
  %i.ic = or i64 %i.ib, %.sroa.058.4              ; 2 uses
  %i.id = add nsw i32 %.sroa.63.4, %i.hx          ; 2 uses
  %i.ie = lshr i32 %i.id, 3
  %i.if = zext nneg i32 %i.ie to i64              ; 2 uses
  store i64 %i.ic, ptr %.sroa.112.4, align 1, !tbaa !21
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.112.4, i64 %i.if ; 2 uses
  %i.ih = icmp ugt ptr %i.ig, %i.b
  %spec.store.select.i38 = select i1 %i.ih, ptr %i.b, ptr %i.ig
  %i.ii = and i32 %i.id, 7
  %i.ij = shl nuw nsw i64 %i.if, 3
  %i.ik = lshr i64 %i.ic, %i.ij
  br label %.thread133

.thread133:                                       ; preds = %..thread133_crit_edge, %bb.n, %bb.m
  %i.il = phi i32 [ %.pre160, %bb.m ], [ %.pre160, %bb.n ], [ %.pre159, %..thread133_crit_edge ]
  %i.im = phi i32 [ 0, %bb.m ], [ %i.hx, %bb.n ], [ 0, %..thread133_crit_edge ]
  %i.in = phi i32 [ 56, %bb.m ], [ 56, %bb.n ], [ %i.ej, %..thread133_crit_edge ] ; 2 uses
  %.sroa.63.5 = phi i32 [ %.sroa.63.4, %bb.m ], [ %i.ii, %bb.n ], [ %.sroa.63.4, %..thread133_crit_edge ] ; 2 uses
  %.sroa.058.5 = phi i64 [ %.sroa.058.4, %bb.m ], [ %i.ik, %bb.n ], [ %.sroa.058.4, %..thread133_crit_edge ]
  %.sroa.112.5 = phi ptr [ %.sroa.112.4, %bb.m ], [ %spec.store.select.i38, %bb.n ], [ %.sroa.112.4, %..thread133_crit_edge ]
  %i.io = lshr i32 %i.il, %i.im
  %42 = zext nneg i32 %i.in to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !9
  %i.ip = and i32 %i.io, %44
  %i.iq = zext i32 %i.ip to i64
  %i.ir = zext nneg i32 %.sroa.63.5 to i64
  %i.is = shl i64 %i.iq, %i.ir
  %i.it = or i64 %i.is, %.sroa.058.5
  %i.iu = add nuw nsw i32 %.sroa.63.5, %i.in
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.iv = load i32, ptr %i.gv, align 4, !tbaa !19
  %45 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %i.eo
  %46 = load i32, ptr %45, align 4, !tbaa !9
  %i.iw = and i32 %46, %i.iv
  %i.ix = zext i32 %i.iw to i64
  %i.iy = zext nneg i32 %.sroa.63.4 to i64
  %i.iz = shl i64 %i.ix, %i.iy
  %i.ja = or i64 %i.iz, %.sroa.058.4
  %i.jb = add nuw nsw i32 %.sroa.63.4, %i.ej
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread133
  %.sroa.63.6 = phi i32 [ %i.jb, %bb.o ], [ %i.iu, %.thread133 ] ; 2 uses
  %.sroa.058.6 = phi i64 [ %i.ja, %bb.o ], [ %i.it, %.thread133 ] ; 2 uses
  %.sroa.112.6 = phi ptr [ %.sroa.112.4, %bb.o ], [ %.sroa.112.5, %.thread133 ] ; 2 uses
  %i.jc = lshr i32 %.sroa.63.6, 3
  %i.jd = zext nneg i32 %i.jc to i64              ; 2 uses
  store i64 %.sroa.058.6, ptr %.sroa.112.6, align 1, !tbaa !21
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.112.6, i64 %i.jd ; 2 uses
  %i.jf = icmp ugt ptr %i.je, %i.b
  %spec.store.select.i39 = select i1 %i.jf, ptr %i.b, ptr %i.je ; 2 uses
  %i.jg = shl nuw nsw i64 %i.jd, 3
  %i.jh = lshr i64 %.sroa.058.6, %i.jg            ; 2 uses
  %i.ji = add i64 %.0.i144, -1                    ; 2 uses
  %.sroa.0.0 = zext i16 %i.gk to i64              ; 2 uses
  %.sroa.046.0 = zext i16 %i.fd to i64            ; 2 uses
  %.sroa.052.0 = zext i16 %i.fs to i64            ; 2 uses
  %.sroa.63.2 = and i32 %.sroa.63.6, 7            ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %9
  br i1 %i.jj, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.p, %bb.g
  %.sroa.058.2.lcssa = phi i64 [ %i.dw, %bb.g ], [ %i.jh, %bb.p ]
  %.sroa.112.2.lcssa = phi ptr [ %spec.store.select.i26, %bb.g ], [ %spec.store.select.i39, %bb.p ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0138, %bb.g ], [ %.sroa.0.0, %bb.p ]
  %.sroa.046.0.lcssa = phi i64 [ %.sroa.046.0139, %bb.g ], [ %.sroa.046.0, %bb.p ]
  %.sroa.052.0.lcssa = phi i64 [ %.sroa.052.0140, %bb.g ], [ %.sroa.052.0, %bb.p ]
  %.sroa.63.2.lcssa = phi i32 [ %.sroa.63.2141, %bb.g ], [ %.sroa.63.2, %bb.p ] ; 2 uses
  %47 = zext i16 %.val.i.i to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !9
  %i.jk = zext i32 %49 to i64
  %i.jl = and i64 %.sroa.052.0.lcssa, %i.jk
  %i.jm = zext nneg i32 %.sroa.63.2.lcssa to i64
  %i.jn = shl nuw nsw i64 %i.jl, %i.jm
  %i.jo = or i64 %i.jn, %.sroa.058.2.lcssa        ; 2 uses
  %i.jp = add nuw nsw i32 %.sroa.63.2.lcssa, %i.g ; 2 uses
  %i.jq = lshr i32 %i.jp, 3
  %i.jr = zext nneg i32 %i.jq to i64              ; 2 uses
  store i64 %i.jo, ptr %.sroa.112.2.lcssa, align 1, !tbaa !21
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.112.2.lcssa, i64 %i.jr ; 2 uses
  %i.jt = icmp ugt ptr %i.js, %i.b
  %spec.store.select.i.i = select i1 %i.jt, ptr %i.b, ptr %i.js ; 2 uses
  %i.ju = and i32 %i.jp, 7                        ; 2 uses
  %i.jv = shl nuw nsw i64 %i.jr, 3
  %i.jw = lshr i64 %i.jo, %i.jv
  %50 = zext i16 %.val.i.i16 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !9
  %i.jx = zext i32 %52 to i64
  %i.jy = and i64 %.sroa.046.0.lcssa, %i.jx
  %i.jz = zext nneg i32 %i.ju to i64
  %i.ka = shl nuw nsw i64 %i.jy, %i.jz
  %i.kb = or i64 %i.ka, %i.jw                     ; 2 uses
  %i.kc = add nuw nsw i32 %i.ju, %i.ad            ; 2 uses
  %i.kd = lshr i32 %i.kc, 3
  %i.ke = zext nneg i32 %i.kd to i64              ; 2 uses
  store i64 %i.kb, ptr %spec.store.select.i.i, align 1, !tbaa !21
  %i.kf = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i, i64 %i.ke ; 2 uses
  %i.kg = icmp ugt ptr %i.kf, %i.b
  %spec.store.select.i.i40 = select i1 %i.kg, ptr %i.b, ptr %i.kf ; 2 uses
  %i.kh = and i32 %i.kc, 7                        ; 2 uses
  %i.ki = shl nuw nsw i64 %i.ke, 3
  %i.kj = lshr i64 %i.kb, %i.ki
  %53 = zext i16 %.val.i.i21 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8BIT_maskE, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !9
  %i.kk = zext i32 %55 to i64
  %i.kl = and i64 %.sroa.0.0.lcssa, %i.kk
  %i.km = zext nneg i32 %i.kh to i64
  %i.kn = shl nuw nsw i64 %i.kl, %i.km
  %i.ko = or i64 %i.kn, %i.kj                     ; 2 uses
  %i.kp = add nuw nsw i32 %i.kh, %i.az            ; 2 uses
  %i.kq = lshr i32 %i.kp, 3
  %i.kr = zext nneg i32 %i.kq to i64              ; 2 uses
  store i64 %i.ko, ptr %spec.store.select.i.i40, align 1, !tbaa !21
  %i.ks = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i40, i64 %i.kr ; 2 uses
  %i.kt = icmp ugt ptr %i.ks, %i.b
  %spec.store.select.i.i41 = select i1 %i.kt, ptr %i.b, ptr %i.ks ; 2 uses
  %i.ku = and i32 %i.kp, 7                        ; 2 uses
  %i.kv = shl nuw nsw i64 %i.kr, 3
  %i.kw = lshr i64 %i.ko, %i.kv
  %i.kx = zext nneg i32 %i.ku to i64
  %i.ky = shl nuw nsw i64 1, %i.kx
  %i.kz = or i64 %i.kw, %i.ky
  %i.la = add nuw nsw i32 %i.ku, 1                ; 2 uses
  %i.lb = lshr i32 %i.la, 3
  %i.lc = zext nneg i32 %i.lb to i64
  store i64 %i.kz, ptr %spec.store.select.i.i41, align 1, !tbaa !21
  %i.ld = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i41, i64 %i.lc ; 2 uses
  %i.le = icmp ugt ptr %i.ld, %i.b
  %spec.store.select.i.i42 = select i1 %i.le, ptr %i.b, ptr %i.ld ; 2 uses
  %.not.i43 = icmp ult ptr %spec.store.select.i.i42, %i.b
  br i1 %.not.i43, label %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit, label %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread

_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit: ; preds = %._crit_edge
  %i.lf = and i32 %i.la, 7
  %i.lg = ptrtoint ptr %spec.store.select.i.i42 to i64
  %i.lh = ptrtoint ptr %0 to i64
  %i.li = icmp ne i32 %i.lf, 0
  %i.lj = zext i1 %i.li to i64
  %i.lk = add i64 %i.lg, %i.lj
  %.fr137 = freeze i64 %i.lk
  %i.ll = sub i64 %.fr137, %i.lh                  ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread, label %_ZN11duckdb_zstdL25ZSTD_encodeSequences_bodyEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit

_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread: ; preds = %._crit_edge, %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit
  br label %_ZN11duckdb_zstdL25ZSTD_encodeSequences_bodyEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit

_ZN11duckdb_zstdL25ZSTD_encodeSequences_bodyEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmi.exit: ; preds = %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread, %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit, %bb.a
  %.1.i = phi i64 [ -70, %bb.a ], [ -70, %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit.thread ], [ %i.ll, %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit ]
  ret i64 %.1.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSN11duckdb_zstd30FSE_symbolCompressionTransformE", !8, i64 0, !8, i64 4}
!13 = !{!12, !8, i64 4}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!7, !7, i64 0}
!16 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !8, i64 0, !10, i64 4, !10, i64 6}
!17 = !{!16, !10, i64 4}
!18 = !{!16, !10, i64 6}
!19 = !{!16, !8, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!20, !20, i64 0}
!22 = distinct !{!22, !14}
!23 = !{!"_ZTSN11duckdb_zstd10FSE_repeatE", !7, i64 0}
!24 = !{!23, !23, i64 0}
end_hunk_1
