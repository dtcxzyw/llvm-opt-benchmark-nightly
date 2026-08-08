inline.NumInlined: 75
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@Truth7 = internal unnamed_addr constant [7 x [2 x i64]] [[2 x i64] [i64 -6148914691236517206, i64 -6148914691236517206], [2 x i64] [i64 -3689348814741910324, i64 -3689348814741910324], [2 x i64] [i64 -1085102592571150096, i64 -1085102592571150096], [2 x i64] [i64 -71777214294589696, i64 -71777214294589696], [2 x i64] [i64 -281470681808896, i64 -281470681808896], [2 x i64] [i64 -4294967296, i64 -4294967296], [2 x i64] [i64 0, i64 -1]], align 16
@PMasks = internal unnamed_addr constant [5 x [3 x i64]] [[3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]], align 16
@__const.If_Dec5CofCount2.F = private unnamed_addr constant [4 x i64] [i64 0, i64 6148914691236517205, i64 -6148914691236517206, i64 -1], align 16
@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@s_Truths6Neg = internal unnamed_addr constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16
@str.1 = private unnamed_addr constant [21 x i8] c"Verification failed!\00", align 1

; Function Attrs: nounwind uwtable
define void @If_DecPrintConfig(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = trunc i64 %0 to i32                      ; 5 uses
  %i.c = and i32 %i.b, 65535
  %i.d = mul nuw i32 %i.c, 65537
  store i32 %i.d, ptr %i.a, align 4, !tbaa !8
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !9
  call void @Extra_PrintBinary(ptr noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 16) #15
  %putchar = call i32 @putchar(i32 32)            ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef 4) #15
  %putchar12 = call i32 @putchar(i32 32)          ; 0 uses
  %i.f = lshr i32 %i.b, 16
  %i.g = and i32 %i.f, 7
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.g) ; 0 uses
  %i.i = lshr i32 %i.b, 20
  %i.j = and i32 %i.i, 7
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.j) ; 0 uses
  %i.l = lshr i32 %i.b, 24
  %i.m = and i32 %i.l, 7
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.m) ; 0 uses
  %i.o = lshr i32 %i.b, 28
  %i.p = and i32 %i.o, 7
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.p) ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  %i.s = lshr i64 %0, 32                          ; 2 uses
  %i.t = and i64 %i.s, 65535
  %i.u = shl nuw nsw i64 %i.s, 16
  %i.v = or disjoint i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %i.a, align 4, !tbaa !8
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !9
  call void @Extra_PrintBinary(ptr noundef %i.x, ptr noundef nonnull %i.a, i32 noundef 16) #15
  %putchar13 = call i32 @putchar(i32 32)          ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef 4) #15
  %putchar14 = call i32 @putchar(i32 32)          ; 0 uses
  %i.y = lshr i64 %0, 48
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 7
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.aa) ; 0 uses
  %i.ac = lshr i64 %0, 52
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 7
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ae) ; 0 uses
  %i.ag = lshr i64 %0, 56
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 7
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ai) ; 0 uses
  %i.ak = lshr i64 %0, 60
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 7
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.am) ; 0 uses
  %putchar15 = call i32 @putchar(i32 10)          ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @Kit_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @If_Dec6Truth(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %0, 16
  %i.b = and i64 %i.a, 7                          ; 2 uses
  %i.c = icmp eq i64 %i.b, 6
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ undef, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = lshr i64 %0, 20
  %i.g = and i64 %i.f, 7                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.6.0 = phi i64 [ undef, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = lshr i64 %0, 24
  %i.l = and i64 %i.k, 7                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 6
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.10.0 = phi i64 [ undef, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = lshr i64 %0, 28
  %i.q = and i64 %i.p, 7                          ; 2 uses
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.14.0 = phi i64 [ undef, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %i.u = trunc i64 %0 to i32
  %i.v = and i32 %i.u, 65535
  %1 = insertelement <4 x i64> poison, i64 %.sroa.6.0, i64 0
  %2 = insertelement <4 x i64> %1, i64 %.sroa.0.0, i64 1
  %3 = insertelement <4 x i64> %2, i64 %.sroa.10.0, i64 2
  %4 = insertelement <4 x i64> %3, i64 %.sroa.14.0, i64 3
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.022.i = phi i64 [ 0, %bb.i ], [ %.1.i, %bb.k ] ; 2 uses
  %.01721.i = phi i32 [ 0, %bb.i ], [ %i.ab, %bb.k ] ; 6 uses
  %i.w = shl nuw nsw i32 1, %.01721.i
  %i.x = and i32 %i.v, %i.w
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.k, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j
  %i.y = lshr i32 %.01721.i, 3
  %i.z = lshr i32 %.01721.i, 2
  %5 = lshr i32 %.01721.i, 1
  %6 = insertelement <4 x i32> poison, i32 %5, i64 0
  %7 = insertelement <4 x i32> %6, i32 %.01721.i, i64 1
  %8 = insertelement <4 x i32> %7, i32 %i.z, i64 2
  %9 = insertelement <4 x i32> %8, i32 %i.y, i64 3
  %10 = and <4 x i32> %9, splat (i32 1)
  %11 = add nsw <4 x i32> %10, splat (i32 -1)
  %12 = sext <4 x i32> %11 to <4 x i64>
  %13 = xor <4 x i64> %4, %12
  %14 = tail call i64 @llvm.vector.reduce.and.v4i64(<4 x i64> %13)
  %i.aa = or i64 %14, %.022.i
  br label %bb.k

bb.k:                                             ; preds = %.preheader.preheader.i, %bb.j
  %.1.i = phi i64 [ %i.aa, %.preheader.preheader.i ], [ %.022.i, %bb.j ] ; 5 uses
  %i.ab = add nuw nsw i32 %.01721.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ab, 16
  br i1 %exitcond.not.i, label %If_Dec6ComposeLut4.exit.preheader, label %bb.j, !llvm.loop !14

If_Dec6ComposeLut4.exit.preheader:                ; preds = %bb.k
  %i.ac = lshr i64 %0, 48                         ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 7
  switch i32 %i.ae, label %bb.l [
    i32 6, label %If_Dec6ComposeLut4.exit
    i32 7, label %bb.m
  ]

bb.l:                                             ; preds = %If_Dec6ComposeLut4.exit.preheader
  %i.af = and i64 %i.ac, 7
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !12
  br label %If_Dec6ComposeLut4.exit

bb.m:                                             ; preds = %If_Dec6ComposeLut4.exit.preheader
  br label %If_Dec6ComposeLut4.exit

If_Dec6ComposeLut4.exit:                          ; preds = %bb.l, %If_Dec6ComposeLut4.exit.preheader, %bb.m
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %If_Dec6ComposeLut4.exit.preheader ], [ %i.ah, %bb.l ], [ %.1.i, %bb.m ]
  %i.ai = lshr i64 %0, 52                         ; 2 uses
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 7
  switch i32 %i.ak, label %bb.n [
    i32 6, label %If_Dec6ComposeLut4.exit.1
    i32 7, label %bb.o
  ]

bb.n:                                             ; preds = %If_Dec6ComposeLut4.exit
  %i.al = and i64 %i.ai, 7
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !12
  br label %If_Dec6ComposeLut4.exit.1

bb.o:                                             ; preds = %If_Dec6ComposeLut4.exit
  br label %If_Dec6ComposeLut4.exit.1

If_Dec6ComposeLut4.exit.1:                        ; preds = %bb.n, %bb.o, %If_Dec6ComposeLut4.exit
  %.sroa.6.1 = phi i64 [ %.sroa.6.0, %If_Dec6ComposeLut4.exit ], [ %i.an, %bb.n ], [ %.1.i, %bb.o ]
  %i.ao = lshr i64 %0, 56                         ; 2 uses
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 7
  switch i32 %i.aq, label %bb.p [
    i32 6, label %If_Dec6ComposeLut4.exit.2
    i32 7, label %bb.q
  ]

bb.p:                                             ; preds = %If_Dec6ComposeLut4.exit.1
  %i.ar = and i64 %i.ao, 7
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !12
  br label %If_Dec6ComposeLut4.exit.2

bb.q:                                             ; preds = %If_Dec6ComposeLut4.exit.1
  br label %If_Dec6ComposeLut4.exit.2

If_Dec6ComposeLut4.exit.2:                        ; preds = %bb.p, %bb.q, %If_Dec6ComposeLut4.exit.1
  %.sroa.10.1 = phi i64 [ %.sroa.10.0, %If_Dec6ComposeLut4.exit.1 ], [ %i.at, %bb.p ], [ %.1.i, %bb.q ]
  %i.au = lshr i64 %0, 60                         ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i32 %i.av, 7
  switch i32 %i.aw, label %bb.r [
    i32 6, label %If_Dec6ComposeLut4.exit.3
    i32 7, label %bb.s
  ]

bb.r:                                             ; preds = %If_Dec6ComposeLut4.exit.2
  %i.ax = and i64 %i.au, 7
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !12
  br label %If_Dec6ComposeLut4.exit.3

bb.s:                                             ; preds = %If_Dec6ComposeLut4.exit.2
  br label %If_Dec6ComposeLut4.exit.3

If_Dec6ComposeLut4.exit.3:                        ; preds = %bb.r, %bb.s, %If_Dec6ComposeLut4.exit.2
  %.sroa.14.1 = phi i64 [ %.sroa.14.0, %If_Dec6ComposeLut4.exit.2 ], [ %i.az, %bb.r ], [ %.1.i, %bb.s ]
  %i.ba = lshr i64 %0, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 65535
  %15 = insertelement <4 x i64> poison, i64 %.sroa.6.1, i64 0
  %16 = insertelement <4 x i64> %15, i64 %.sroa.0.1, i64 1
  %17 = insertelement <4 x i64> %16, i64 %.sroa.10.1, i64 2
  %18 = insertelement <4 x i64> %17, i64 %.sroa.14.1, i64 3
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %If_Dec6ComposeLut4.exit.3
  %.022.i21 = phi i64 [ 0, %If_Dec6ComposeLut4.exit.3 ], [ %.1.i31, %bb.u ] ; 2 uses
  %.01721.i22 = phi i32 [ 0, %If_Dec6ComposeLut4.exit.3 ], [ %i.bi, %bb.u ] ; 6 uses
  %i.bd = shl nuw nsw i32 1, %.01721.i22
  %i.be = and i32 %i.bc, %i.bd
  %.not.i23 = icmp eq i32 %i.be, 0
  br i1 %.not.i23, label %bb.u, label %.preheader.preheader.i24

.preheader.preheader.i24:                         ; preds = %bb.t
  %i.bf = lshr i32 %.01721.i22, 3
  %i.bg = lshr i32 %.01721.i22, 2
  %19 = lshr i32 %.01721.i22, 1
  %20 = insertelement <4 x i32> poison, i32 %19, i64 0
  %21 = insertelement <4 x i32> %20, i32 %.01721.i22, i64 1
  %22 = insertelement <4 x i32> %21, i32 %i.bg, i64 2
  %23 = insertelement <4 x i32> %22, i32 %i.bf, i64 3
  %24 = and <4 x i32> %23, splat (i32 1)
  %25 = add nsw <4 x i32> %24, splat (i32 -1)
  %26 = sext <4 x i32> %25 to <4 x i64>
  %27 = xor <4 x i64> %18, %26
  %28 = tail call i64 @llvm.vector.reduce.and.v4i64(<4 x i64> %27)
  %i.bh = or i64 %28, %.022.i21
  br label %bb.u

bb.u:                                             ; preds = %.preheader.preheader.i24, %bb.t
  %.1.i31 = phi i64 [ %i.bh, %.preheader.preheader.i24 ], [ %.022.i21, %bb.t ] ; 2 uses
  %i.bi = add nuw nsw i32 %.01721.i22, 1          ; 2 uses
  %exitcond.not.i32 = icmp eq i32 %i.bi, 16
  br i1 %exitcond.not.i32, label %If_Dec6ComposeLut4.exit33, label %bb.t, !llvm.loop !14

If_Dec6ComposeLut4.exit33:                        ; preds = %bb.u
  ret i64 %.1.i31
}

; Function Attrs: nounwind uwtable
define void @If_Dec6Verify(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = tail call i64 @If_Dec6Truth(i64 noundef %1) ; 2 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq i64 %i.c, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @If_DecPrintConfig(i64 noundef %1)
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef 6) #15
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef 6) #15
  %putchar2 = call i32 @putchar(i32 10)           ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @If_Dec7Verify(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = lshr i64 %1, 16
  %i.c = and i64 %i.b, 7
  %i.d = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.c ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12
  %i.h = lshr i64 %1, 20
  %i.i = and i64 %i.h, 7
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 16, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !12
  %i.n = lshr i64 %1, 24
  %i.o = and i64 %i.n, 7
  %i.p = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12
  %i.t = lshr i64 %1, 28
  %i.u = and i64 %i.t, 7
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.u ; 2 uses
  %i.w = load i64, ptr %i.v, align 16, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !12
  %i.z = trunc i64 %1 to i32
  %i.aa = and i32 %i.z, 65535
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.ac = phi i64 [ 0, %bb.a ], [ %i.be, %bb.c ]
  %i.ad = phi i64 [ 0, %bb.a ], [ %i.bf, %bb.c ]
  %i.ae = phi i64 [ 0, %bb.a ], [ %i.bg, %bb.c ]  ; 2 uses
  %i.af = phi i64 [ 0, %bb.a ], [ %i.bh, %bb.c ]  ; 2 uses
  %.02328.i = phi i32 [ 0, %bb.a ], [ %i.bi, %bb.c ] ; 6 uses
  %i.ag = shl nuw nsw i32 1, %.02328.i
  %i.ah = and i32 %i.aa, %i.ag
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.c, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.ai = and i32 %.02328.i, 1
  %sext = add nsw i32 %i.ai, -1
  %i.aj = sext i32 %sext to i64                   ; 2 uses
  %.pn.i = xor i64 %i.e, %i.aj
  %i.ak = xor i64 %i.g, %i.aj
  %i.al = lshr i32 %.02328.i, 1
  %i.am = and i32 %i.al, 1
  %sext64 = add nsw i32 %i.am, -1
  %i.an = sext i32 %sext64 to i64                 ; 2 uses
  %. = xor i64 %i.k, %i.an
  %.47 = xor i64 %i.m, %i.an
  %i.ao = and i64 %., %.pn.i
  %i.ap = and i64 %.47, %i.ak
  %i.aq = lshr i32 %.02328.i, 2
  %i.ar = and i32 %i.aq, 1
  %sext65 = add nsw i32 %i.ar, -1
  %i.as = sext i32 %sext65 to i64                 ; 2 uses
  %.pn.2.i = xor i64 %i.q, %i.as
  %i.at = xor i64 %i.s, %i.as
  %i.au = and i64 %i.ao, %.pn.2.i
  %i.av = and i64 %i.ap, %i.at
  %i.aw = lshr i32 %.02328.i, 3
  %i.ax = and i32 %i.aw, 1
  %sext66 = add nsw i32 %i.ax, -1
  %i.ay = sext i32 %sext66 to i64                 ; 2 uses
  %.pn.3.i = xor i64 %i.w, %i.ay
  %i.az = xor i64 %i.y, %i.ay
  %i.ba = and i64 %i.au, %.pn.3.i
  %i.bb = and i64 %i.av, %i.az
  %i.bc = or i64 %i.ba, %i.af                     ; 2 uses
  %i.bd = or i64 %i.bb, %i.ae                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.preheader.i, %bb.b
  %i.be = phi i64 [ %i.ac, %bb.b ], [ %i.bd, %.preheader.preheader.i ] ; 2 uses
  %i.bf = phi i64 [ %i.ad, %bb.b ], [ %i.bc, %.preheader.preheader.i ] ; 3 uses
  %i.bg = phi i64 [ %i.ae, %bb.b ], [ %i.bd, %.preheader.preheader.i ]
  %i.bh = phi i64 [ %i.af, %bb.b ], [ %i.bc, %.preheader.preheader.i ]
  %i.bi = add nuw nsw i32 %.02328.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bi, 16
  br i1 %exitcond.not.i, label %If_Dec7ComposeLut4.exit, label %bb.b, !llvm.loop !16

If_Dec7ComposeLut4.exit:                          ; preds = %bb.c
  store i64 %i.bf, ptr %i.a, align 16
  %i.bj = lshr i64 %1, 48
  %i.bk = and i64 %i.bj, 7
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 16, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !12
  %i.bp = lshr i64 %1, 52
  %i.bq = and i64 %i.bp, 7
  %i.br = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !12
  %i.bv = lshr i64 %1, 56
  %i.bw = and i64 %i.bv, 7
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 16, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !12
  %i.cb = lshr i64 %1, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 65535
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %If_Dec7ComposeLut4.exit
  %i.ce = phi i64 [ 0, %If_Dec7ComposeLut4.exit ], [ %i.dg, %bb.e ]
  %i.cf = phi i64 [ 0, %If_Dec7ComposeLut4.exit ], [ %i.dh, %bb.e ]
  %i.cg = phi i64 [ 0, %If_Dec7ComposeLut4.exit ], [ %i.di, %bb.e ] ; 2 uses
  %i.ch = phi i64 [ 0, %If_Dec7ComposeLut4.exit ], [ %i.dj, %bb.e ] ; 2 uses
  %.02328.i23 = phi i32 [ 0, %If_Dec7ComposeLut4.exit ], [ %i.dk, %bb.e ] ; 6 uses
  %i.ci = shl nuw nsw i32 1, %.02328.i23
  %i.cj = and i32 %i.cd, %i.ci
  %.not.i24 = icmp eq i32 %i.cj, 0
  br i1 %.not.i24, label %bb.e, label %.preheader.preheader.i25

.preheader.preheader.i25:                         ; preds = %bb.d
  %i.ck = and i32 %.02328.i23, 1
  %sext67 = add nsw i32 %i.ck, -1
  %i.cl = sext i32 %sext67 to i64                 ; 2 uses
  %.pn.i28 = xor i64 %i.bm, %i.cl
  %i.cm = xor i64 %i.bo, %i.cl
  %i.cn = lshr i32 %.02328.i23, 1
  %i.co = and i32 %i.cn, 1
  %sext68 = add nsw i32 %i.co, -1
  %i.cp = sext i32 %sext68 to i64                 ; 2 uses
  %.48 = xor i64 %i.bs, %i.cp
  %.49 = xor i64 %i.bu, %i.cp
  %i.cq = and i64 %.48, %.pn.i28
  %i.cr = and i64 %.49, %i.cm
  %i.cs = lshr i32 %.02328.i23, 2
  %i.ct = and i32 %i.cs, 1
  %sext69 = add nsw i32 %i.ct, -1
  %i.cu = sext i32 %sext69 to i64                 ; 2 uses
  %.pn.2.i34 = xor i64 %i.by, %i.cu
  %i.cv = xor i64 %i.ca, %i.cu
  %i.cw = and i64 %i.cq, %.pn.2.i34
  %i.cx = and i64 %i.cr, %i.cv
  %i.cy = lshr i32 %.02328.i23, 3
  %i.cz = and i32 %i.cy, 1
  %sext70 = add nsw i32 %i.cz, -1
  %i.da = sext i32 %sext70 to i64                 ; 2 uses
  %.pn.3.i36 = xor i64 %i.bf, %i.da
  %i.db = xor i64 %i.be, %i.da
  %i.dc = and i64 %i.cw, %.pn.3.i36
  %i.dd = and i64 %i.cx, %i.db
  %i.de = or i64 %i.dc, %i.ch                     ; 2 uses
  %i.df = or i64 %i.dd, %i.cg                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.preheader.i25, %bb.d
  %i.dg = phi i64 [ %i.ce, %bb.d ], [ %i.df, %.preheader.preheader.i25 ] ; 3 uses
  %i.dh = phi i64 [ %i.cf, %bb.d ], [ %i.de, %.preheader.preheader.i25 ] ; 3 uses
  %i.di = phi i64 [ %i.cg, %bb.d ], [ %i.df, %.preheader.preheader.i25 ]
end_hunk_0
begin_hunk_1_@If_Dec6DeriveCount2:bb.a
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = trunc nuw nsw i64 %i.q to i32
  store i32 %i.r, ptr %2, align 4, !tbaa !8
  %i.s = or i32 %.1.2, 16
  %.pre21 = load i32, ptr %1, align 4, !tbaa !8
  %.pre37 = sext i32 %.pre21 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi38 = phi i64 [ %.pre37, %bb.h ], [ %.pre-phi36, %bb.g ] ; 2 uses
  %.1.3 = phi i32 [ %i.s, %bb.h ], [ %.1.2, %bb.g ] ; 2 uses
  %i.t = lshr i64 %0, 20
  %i.u = and i64 %i.t, 15                         ; 2 uses
  %.not.4 = icmp eq i64 %i.u, %.pre-phi38
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = trunc nuw nsw i64 %i.u to i32
  store i32 %i.v, ptr %2, align 4, !tbaa !8
  %i.w = or i32 %.1.3, 32
  %.pre22 = load i32, ptr %1, align 4, !tbaa !8
  %.pre39 = sext i32 %.pre22 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi40 = phi i64 [ %.pre39, %bb.j ], [ %.pre-phi38, %bb.i ] ; 2 uses
  %.1.4 = phi i32 [ %i.w, %bb.j ], [ %.1.3, %bb.i ] ; 2 uses
  %i.x = lshr i64 %0, 24
  %i.y = and i64 %i.x, 15                         ; 2 uses
  %.not.5 = icmp eq i64 %i.y, %.pre-phi40
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = trunc nuw nsw i64 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !8
  %i.aa = or i32 %.1.4, 64
  %.pre23 = load i32, ptr %1, align 4, !tbaa !8
  %.pre41 = sext i32 %.pre23 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi42 = phi i64 [ %.pre41, %bb.l ], [ %.pre-phi40, %bb.k ] ; 2 uses
  %.1.5 = phi i32 [ %i.aa, %bb.l ], [ %.1.4, %bb.k ] ; 2 uses
  %i.ab = lshr i64 %0, 28
  %i.ac = and i64 %i.ab, 15                       ; 2 uses
  %.not.6 = icmp eq i64 %i.ac, %.pre-phi42
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  store i32 %i.ad, ptr %2, align 4, !tbaa !8
  %i.ae = or i32 %.1.5, 128
  %.pre24 = load i32, ptr %1, align 4, !tbaa !8
  %.pre43 = sext i32 %.pre24 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi44 = phi i64 [ %.pre43, %bb.n ], [ %.pre-phi42, %bb.m ] ; 2 uses
  %.1.6 = phi i32 [ %i.ae, %bb.n ], [ %.1.5, %bb.m ] ; 2 uses
  %i.af = lshr i64 %0, 32
  %i.ag = and i64 %i.af, 15                       ; 2 uses
  %.not.7 = icmp eq i64 %i.ag, %.pre-phi44
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  store i32 %i.ah, ptr %2, align 4, !tbaa !8
  %i.ai = or i32 %.1.6, 256
  %.pre25 = load i32, ptr %1, align 4, !tbaa !8
  %.pre45 = sext i32 %.pre25 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi46 = phi i64 [ %.pre45, %bb.p ], [ %.pre-phi44, %bb.o ] ; 2 uses
  %.1.7 = phi i32 [ %i.ai, %bb.p ], [ %.1.6, %bb.o ] ; 2 uses
  %i.aj = lshr i64 %0, 36
  %i.ak = and i64 %i.aj, 15                       ; 2 uses
  %.not.8 = icmp eq i64 %i.ak, %.pre-phi46
  br i1 %.not.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = trunc nuw nsw i64 %i.ak to i32
  store i32 %i.al, ptr %2, align 4, !tbaa !8
  %i.am = or i32 %.1.7, 512
  %.pre26 = load i32, ptr %1, align 4, !tbaa !8
  %.pre47 = sext i32 %.pre26 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi48 = phi i64 [ %.pre47, %bb.r ], [ %.pre-phi46, %bb.q ] ; 2 uses
  %.1.8 = phi i32 [ %i.am, %bb.r ], [ %.1.7, %bb.q ] ; 2 uses
  %i.an = lshr i64 %0, 40
  %i.ao = and i64 %i.an, 15                       ; 2 uses
  %.not.9 = icmp eq i64 %i.ao, %.pre-phi48
  br i1 %.not.9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  store i32 %i.ap, ptr %2, align 4, !tbaa !8
  %i.aq = or i32 %.1.8, 1024
  %.pre27 = load i32, ptr %1, align 4, !tbaa !8
  %.pre49 = sext i32 %.pre27 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre-phi50 = phi i64 [ %.pre49, %bb.t ], [ %.pre-phi48, %bb.s ] ; 2 uses
  %.1.9 = phi i32 [ %i.aq, %bb.t ], [ %.1.8, %bb.s ] ; 2 uses
  %i.ar = lshr i64 %0, 44
  %i.as = and i64 %i.ar, 15                       ; 2 uses
  %.not.10 = icmp eq i64 %i.as, %.pre-phi50
  br i1 %.not.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = trunc nuw nsw i64 %i.as to i32
  store i32 %i.at, ptr %2, align 4, !tbaa !8
  %i.au = or i32 %.1.9, 2048
  %.pre28 = load i32, ptr %1, align 4, !tbaa !8
  %.pre51 = sext i32 %.pre28 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre-phi52 = phi i64 [ %.pre51, %bb.v ], [ %.pre-phi50, %bb.u ] ; 2 uses
  %.1.10 = phi i32 [ %i.au, %bb.v ], [ %.1.9, %bb.u ] ; 2 uses
  %i.av = lshr i64 %0, 48
  %i.aw = and i64 %i.av, 15                       ; 2 uses
  %.not.11 = icmp eq i64 %i.aw, %.pre-phi52
  br i1 %.not.11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  store i32 %i.ax, ptr %2, align 4, !tbaa !8
  %i.ay = or i32 %.1.10, 4096
  %.pre29 = load i32, ptr %1, align 4, !tbaa !8
  %.pre53 = sext i32 %.pre29 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pre-phi54 = phi i64 [ %.pre53, %bb.x ], [ %.pre-phi52, %bb.w ] ; 2 uses
  %.1.11 = phi i32 [ %i.ay, %bb.x ], [ %.1.10, %bb.w ] ; 2 uses
  %i.az = lshr i64 %0, 52
  %i.ba = and i64 %i.az, 15                       ; 2 uses
  %.not.12 = icmp eq i64 %i.ba, %.pre-phi54
  br i1 %.not.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  store i32 %i.bb, ptr %2, align 4, !tbaa !8
  %i.bc = or i32 %.1.11, 8192
  %.pre30 = load i32, ptr %1, align 4, !tbaa !8
  %.pre55 = sext i32 %.pre30 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre-phi56 = phi i64 [ %.pre55, %bb.z ], [ %.pre-phi54, %bb.y ] ; 2 uses
  %.1.12 = phi i32 [ %i.bc, %bb.z ], [ %.1.11, %bb.y ] ; 2 uses
  %i.bd = lshr i64 %0, 56
  %i.be = and i64 %i.bd, 15                       ; 2 uses
  %.not.13 = icmp eq i64 %i.be, %.pre-phi56
  br i1 %.not.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bf = trunc nuw nsw i64 %i.be to i32
  store i32 %i.bf, ptr %2, align 4, !tbaa !8
  %i.bg = or i32 %.1.12, 16384
  %.pre31 = load i32, ptr %1, align 4, !tbaa !8
  %.pre57 = sext i32 %.pre31 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre-phi58 = phi i64 [ %.pre57, %bb.ab ], [ %.pre-phi56, %bb.aa ]
  %.1.13 = phi i32 [ %i.bg, %bb.ab ], [ %.1.12, %bb.aa ] ; 2 uses
  %i.bh = lshr i64 %0, 60                         ; 2 uses
  %.not.14 = icmp eq i64 %i.bh, %.pre-phi58
  br i1 %.not.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  store i32 %i.bi, ptr %2, align 4, !tbaa !8
  %i.bj = or i32 %.1.13, 32768
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.14 = phi i32 [ %i.bj, %bb.ad ], [ %.1.13, %bb.ac ]
  ret i32 %.1.14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v4i64(<4 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctpop.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v16i32(<16 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15, !31}
!31 = !{!"llvm.loop.peeled.count", i32 7}
!32 = distinct !{!32, !15, !31}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = !{!49, !51, i64 8}
!49 = !{!"If_Man_t_", !50, i64 0, !51, i64 8, !52, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !6, i64 64, !5, i64 84, !54, i64 88, !54, i64 92, !54, i64 96, !54, i64 100, !5, i64 104, !54, i64 108, !5, i64 112, !5, i64 116, !6, i64 120, !55, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !56, i64 176, !6, i64 184, !5, i64 568, !5, i64 572, !5, i64 576, !56, i64 584, !56, i64 592, !57, i64 600, !57, i64 608, !57, i64 616, !53, i64 624, !56, i64 632, !5, i64 640, !5, i64 644, !5, i64 648, !6, i64 652, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !58, i64 736, !58, i64 744, !59, i64 752, !59, i64 760, !59, i64 768, !5, i64 776, !5, i64 780, !6, i64 784, !6, i64 912, !5, i64 1040, !5, i64 1044, !5, i64 1048, !5, i64 1052, !60, i64 1056, !6, i64 1064, !6, i64 1192, !6, i64 1320, !6, i64 1448, !6, i64 1576, !6, i64 1704, !6, i64 1832, !61, i64 1960, !56, i64 1968, !62, i64 1976, !63, i64 1984, !6, i64 1992, !5, i64 2024, !5, i64 2028, !5, i64 2032, !6, i64 2040, !6, i64 2088, !6, i64 2096, !56, i64 2104, !6, i64 2112, !53, i64 2176, !11, i64 2184, !56, i64 2192, !6, i64 2200, !62, i64 2264, !56, i64 2272, !56, i64 2280, !56, i64 2288, !52, i64 2296, !64, i64 2304, !5, i64 2312, !6, i64 2316, !6, i64 2444, !54, i64 2572, !5, i64 2576, !65, i64 2584, !56, i64 2592, !6, i64 2600, !6, i64 2608, !6, i64 2616, !58, i64 2632}
!50 = !{!"p1 omnipotent char", !11, i64 0}
!51 = !{!"p1 _ZTS9If_Par_t_", !11, i64 0}
!52 = !{!"p1 _ZTS9If_Obj_t_", !11, i64 0}
!53 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!54 = !{!"float", !6, i64 0}
!55 = !{!"p1 long", !11, i64 0}
!56 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!57 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!58 = !{!"p1 _ZTS12Mem_Fixed_t_", !11, i64 0}
!59 = !{!"p1 _ZTS9If_Set_t_", !11, i64 0}
!60 = !{!"p1 _ZTS12If_DsdMan_t_", !11, i64 0}
!61 = !{!"p1 _ZTS14Hash_IntMan_t_", !11, i64 0}
!62 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!63 = !{!"p1 _ZTS10Vec_Mem_t_", !11, i64 0}
!64 = !{!"p1 _ZTS9If_Cut_t_", !11, i64 0}
!65 = !{!"p1 _ZTS10Tim_Man_t_", !11, i64 0}
!66 = !{!67, !5, i64 0}
!67 = !{!"If_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !54, i64 24, !54, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !50, i64 208, !5, i64 216, !54, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !54, i64 280, !54, i64 284, !54, i64 288, !68, i64 296, !69, i64 304, !70, i64 312, !70, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368}
!68 = !{!"p1 _ZTS12If_LibLut_t_", !11, i64 0}
!69 = !{!"p1 _ZTS13If_LibCell_t_", !11, i64 0}
!70 = !{!"p1 float", !11, i64 0}
!71 = distinct !{!71, !15}
end_hunk_1
