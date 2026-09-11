Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/segdec?download=true
inline.NumInlined: 90
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@DecodeSignificantRun.aRemap = internal unnamed_addr constant [15 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7, i32 1, i32 2, i32 3, i32 5, i32 7, i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@gSignificantRunBin = external local_unnamed_addr constant [0 x i32], align 4
@gSignificantRunFixedLength = external local_unnamed_addr constant [0 x i32], align 4
@DecodeMacroblockLowpass.aRemap = internal unnamed_addr constant [7 x i32] [i32 4, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], align 16
@DecodeSignificantAbsLevel.aRemap = internal unnamed_addr constant [6 x i32] [i32 2, i32 3, i32 4, i32 6, i32 10, i32 14], align 16
@DecodeSignificantAbsLevel.aFixedLength = internal unnamed_addr constant [6 x i32] [i32 0, i32 0, i32 1, i32 2, i32 2, i32 2], align 16
@DecodeCBP.gFLC0 = internal unnamed_addr constant [6 x i32] [i32 0, i32 2, i32 1, i32 2, i32 2, i32 0], align 16
@DecodeCBP.gOff0 = internal unnamed_addr constant [6 x i32] [i32 0, i32 4, i32 2, i32 8, i32 12, i32 1], align 16
@DecodeCBP.gOut0 = internal unnamed_addr constant [16 x i32] [i32 0, i32 15, i32 3, i32 12, i32 1, i32 2, i32 4, i32 8, i32 5, i32 6, i32 9, i32 10, i32 7, i32 11, i32 13, i32 14], align 16
@DecodeCBP.aTab.1 = internal unnamed_addr constant [4 x i32] [i32 6, i32 9, i32 10, i32 12], align 16
@__const.DecodeCBP.iShift = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 4, i32 5], align 16
@dctIndex = external local_unnamed_addr constant [3 x [16 x i32]], align 16
@blkOffset = external local_unnamed_addr constant [16 x i32], align 16
@blkOffsetUV = external local_unnamed_addr constant [4 x i32], align 16
@blkOffsetUV_422 = external local_unnamed_addr constant [8 x i32], align 16

; Function Attrs: nounwind uwtable
define range(i32 0, 32768) i32 @getHuff(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @peekBit16(ptr noundef %1, i32 noundef 5) #6
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = icmp slt i16 %i.d, 0
  %i.g = and i32 %i.e, 7
  %i.h = select i1 %i.f, i32 5, i32 %i.g
  %i.i = tail call i32 @flushBit16(ptr noundef %1, i32 noundef %i.h) #6 ; 0 uses
  %i.j = ashr i32 %i.e, 3                         ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i32 [ %i.r, %.preheader ], [ %i.e, %bb.a ]
  %i.l = add nsw i32 %.0, 32768
  %i.m = tail call i32 @getBit16(ptr noundef %1, i32 noundef 1) #6
  %i.n = add i32 %i.l, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !10   ; 2 uses
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = icmp slt i16 %i.q, 0
  br i1 %i.s, label %.preheader, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.1 = phi i32 [ %i.j, %bb.a ], [ %i.r, %.preheader ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @peekBit16(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @flushBit16(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @getBit16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @DecodeSignificantRun(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 5
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = add i32 %i.f, 1                          ; 5 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !18
  %i.h = icmp ult i32 %i.g, 16
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl i32 %i.d, 1
  br label %_getBool16.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = lshr i32 %i.g, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !20
  %i.r = sext i32 %i.q to i64
  %i.s = and i64 %i.o, %i.r
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  store ptr %i.t, ptr %i.j, align 8, !tbaa !19
  %i.u = and i32 %i.g, 15
  store i32 %i.u, ptr %i.e, align 8, !tbaa !18
  %.val.i = load i32, ptr %i.t, align 1
  %i.v = tail call i32 @_byteswap_ulong(i32 noundef %.val.i) #6
  %i.w = load i32, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.x = shl i32 %i.v, %i.w
  br label %_getBool16.exit

_getBool16.exit:                                  ; preds = %bb.d, %bb.e
  %i.y = phi i32 [ %i.w, %bb.e ], [ %i.g, %bb.d ]
  %storemerge.i = phi i32 [ %i.x, %bb.e ], [ %i.i, %bb.d ] ; 3 uses
  store i32 %storemerge.i, ptr %i.c, align 4, !tbaa !17
  %.not22 = icmp sgt i32 %i.d, -1
  br i1 %.not22, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_getBool16.exit
  %i.z = icmp eq i32 %0, 2
  br i1 %i.z, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i32 %i.y, 1                         ; 4 uses
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !18
  %i.ab = icmp ult i32 %i.aa, 16
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = shl i32 %storemerge.i, 1
  br label %_getBool16.exit27

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = lshr i32 %i.aa, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !20
  %i.al = sext i32 %i.ak to i64
  %i.am = and i64 %i.ai, %i.al
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !19
  %i.ao = and i32 %i.aa, 15
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !18
  %.val.i25 = load i32, ptr %i.an, align 1
  %i.ap = tail call i32 @_byteswap_ulong(i32 noundef %.val.i25) #6
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !18
  %i.ar = shl i32 %i.ap, %i.aq
  br label %_getBool16.exit27

_getBool16.exit27:                                ; preds = %bb.h, %bb.i
  %storemerge.i26 = phi i32 [ %i.ar, %bb.i ], [ %i.ac, %bb.h ]
  store i32 %storemerge.i26, ptr %i.c, align 4, !tbaa !17
  %.not23 = icmp sgt i32 %storemerge.i, -1
  br i1 %.not23, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_getBool16.exit27
  %i.as = icmp eq i32 %0, 3
  br i1 %i.as, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = tail call fastcc i32 @_getBool16(ptr noundef nonnull %2)
  %spec.select = sub nuw nsw i32 4, %i.at
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.au = zext nneg i32 %0 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @gSignificantRunBin, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.az = getelementptr i8, ptr %2, i64 4         ; 3 uses
  %.val.i28 = load i32, ptr %i.az, align 4, !tbaa !17
  %i.ba = lshr i32 %.val.i28, 27
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !10
  %i.be = sext i16 %i.bd to i32                   ; 2 uses
  %i.bf = and i32 %i.be, 7
  %i.bg = tail call i32 @flushBit16(ptr noundef %2, i32 noundef %i.bf) #6 ; 0 uses
  %i.bh = ashr i32 %i.be, 3
  %i.bi = mul nsw i32 %i.aw, 5
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr @DecodeSignificantRun.aRemap, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !21 ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr @gSignificantRunFixedLength, i64 %i.bk
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21 ; 3 uses
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i29 = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bp = sub i32 32, %i.bo
  %i.bq = lshr i32 %.val.i29, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !18
  %i.bt = add i32 %i.bs, %i.bo                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !19
  %i.bw = lshr i32 %i.bt, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !20
  %i.cc = sext i32 %i.cb to i64
  %i.cd = and i64 %i.bz, %i.cc
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  store ptr %i.ce, ptr %i.bu, align 8, !tbaa !19
  %i.cf = and i32 %i.bt, 15
  store i32 %i.cf, ptr %i.br, align 8, !tbaa !18
  %.val.i.i = load i32, ptr %i.ce, align 1
  %i.cg = tail call i32 @_byteswap_ulong(i32 noundef %.val.i.i) #6
  %i.ch = load i32, ptr %i.br, align 8, !tbaa !18
  %i.ci = shl i32 %i.cg, %i.ch
  store i32 %i.ci, ptr %i.az, align 4, !tbaa !17
  %i.cj = add i32 %i.bq, %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.j, %bb.f, %_getBool16.exit27, %_getBool16.exit, %bb.b
  %.019 = phi i32 [ 3, %bb.j ], [ 1, %bb.b ], [ 1, %_getBool16.exit ], [ 2, %bb.f ], [ %i.bm, %bb.l ], [ 2, %_getBool16.exit27 ], [ %spec.select, %bb.k ], [ %i.cj, %bb.m ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_getBool16(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = add i32 %i.d, 1                          ; 4 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !18
  %i.f = icmp ult i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %i.b, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = lshr i32 %i.e, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !20
  %i.p = sext i32 %i.o to i64
  %i.q = and i64 %i.m, %i.p
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  store ptr %i.r, ptr %i.h, align 8, !tbaa !19
  %i.s = and i32 %i.e, 15
  store i32 %i.s, ptr %i.c, align 8, !tbaa !18
  %.val = load i32, ptr %i.r, align 1
  %i.t = tail call i32 @_byteswap_ulong(i32 noundef %.val) #6
  %i.u = load i32, ptr %i.c, align 8, !tbaa !18
  %i.v = shl i32 %i.t, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ %i.v, %bb.c ], [ %i.g, %bb.b ]
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !17
  %i.w = lshr i32 %i.b, 31
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define internal i32 @_getBit16(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !17
  %i.b = sub i32 32, %1
  %i.c = lshr i32 %.val, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18
  %i.f = add i32 %i.e, %1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = lshr i32 %i.f, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20
  %i.o = sext i32 %i.n to i64
  %i.p = and i64 %i.l, %i.o
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  store ptr %i.q, ptr %i.g, align 8, !tbaa !19
  %i.r = and i32 %i.f, 15
  store i32 %i.r, ptr %i.d, align 8, !tbaa !18
  %.val.i = load i32, ptr %i.q, align 1
  %i.s = tail call i32 @_byteswap_ulong(i32 noundef %.val.i) #6
  %i.t = load i32, ptr %i.d, align 8, !tbaa !18
  %i.u = shl i32 %i.s, %i.t
  store i32 %i.u, ptr %i.a, align 4, !tbaa !17
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define zeroext i8 @decodeQPIndex(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = lshr i32 %i.d, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  %i.m = sext i32 %i.l to i64
  %i.n = and i64 %i.j, %i.m
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !19
  %i.p = and i32 %i.d, 15
  store i32 %i.p, ptr %i.b, align 8, !tbaa !18
  %.val.i.i = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @_byteswap_ulong(i32 noundef %.val.i.i) #6
  %i.r = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.s = shl i32 %i.q, %i.r                       ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !17
  %i.t = icmp sgt i32 %.val.i, -1
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = zext i8 %1 to i32                        ; 2 uses
  %i.v = sub nsw i32 32, %i.u
  %i.w = lshr i32 %i.s, %i.v
  %i.x = add i32 %i.r, %i.u                       ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.z = lshr i32 %i.x, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !20
  %i.ae = sext i32 %i.ad to i64
  %i.af = and i64 %i.ac, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !19
  %i.ah = and i32 %i.x, 15
  store i32 %i.ah, ptr %i.b, align 8, !tbaa !18
  %.val.i.i4 = load i32, ptr %i.ag, align 1
  %i.ai = tail call i32 @_byteswap_ulong(i32 noundef %.val.i.i4) #6
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !18
  %i.ak = shl i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !17
  %i.al = trunc i32 %i.w to i8
  %i.am = add i8 %i.al, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.am, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
end_hunk_0
