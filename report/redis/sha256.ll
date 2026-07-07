loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@k = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
.lr.ph.preheader:
  %i.a = alloca [64 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %2 = load <32 x i8>, ptr %1, align 1, !tbaa !13 ; 4 uses
  %3 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %4 = zext <8 x i8> %3 to <8 x i32>
  %5 = shl nuw <8 x i32> %4, splat (i32 24)
  %6 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %7 = zext <8 x i8> %6 to <8 x i32>
  %8 = shl nuw nsw <8 x i32> %7, splat (i32 16)
  %9 = or disjoint <8 x i32> %8, %5
  %10 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %11 = zext <8 x i8> %10 to <8 x i32>
  %12 = shl nuw nsw <8 x i32> %11, splat (i32 8)
  %13 = or disjoint <8 x i32> %9, %12
  %14 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %15 = zext <8 x i8> %14 to <8 x i32>
  %16 = or disjoint <8 x i32> %13, %15
  store <8 x i32> %16, ptr %i.a, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %17 = load <32 x i8>, ptr %i.b, align 1, !tbaa !13 ; 4 uses
  %18 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %19 = zext <8 x i8> %18 to <8 x i32>
  %20 = shl nuw <8 x i32> %19, splat (i32 24)
  %21 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %22 = zext <8 x i8> %21 to <8 x i32>
  %23 = shl nuw nsw <8 x i32> %22, splat (i32 16)
  %24 = or disjoint <8 x i32> %23, %20
  %25 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %26 = zext <8 x i8> %25 to <8 x i32>
  %27 = shl nuw nsw <8 x i32> %26, splat (i32 8)
  %28 = or disjoint <8 x i32> %24, %27
  %29 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %30 = zext <8 x i8> %29 to <8 x i32>
  %31 = or disjoint <8 x i32> %28, %30
  store <8 x i32> %31, ptr %i.c, align 16, !tbaa !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 5 uses
  %i.g = tail call i32 @llvm.fshl.i32(i32 %i.f, i32 %i.f, i32 15)
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.f, i32 %i.f, i32 13)
  %i.i = xor i32 %i.g, %i.h
  %i.j = lshr i32 %i.f, 10
  %i.k = xor i32 %i.i, %i.j
  %i.l = getelementptr i8, ptr %i.d, i64 -28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = add i32 %i.k, %i.m
  %i.o = getelementptr i8, ptr %i.d, i64 -60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9    ; 5 uses
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 25)
  %i.r = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 14)
  %i.s = xor i32 %i.q, %i.r
  %i.t = lshr i32 %i.p, 3
  %i.u = xor i32 %i.s, %i.t
  %i.v = getelementptr i8, ptr %i.d, i64 -64
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = add i32 %i.n, %i.w
  %i.y = add i32 %i.x, %i.u
  store i32 %i.y, ptr %i.d, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !9   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !9  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9  ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %bb.a
  %indvars.iv116 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next117, %bb.a ] ; 3 uses
  %.0107 = phi i32 [ %i.aa, %._crit_edge ], [ %i.br, %bb.a ] ; 9 uses
  %.087106 = phi i32 [ %i.ac, %._crit_edge ], [ %.0107, %bb.a ] ; 4 uses
  %.090104 = phi i32 [ %i.ao, %._crit_edge ], [ %.091103, %bb.a ]
  %.091103 = phi i32 [ %i.am, %._crit_edge ], [ %.092102, %bb.a ] ; 3 uses
  %.092102 = phi i32 [ %i.ak, %._crit_edge ], [ %.093101, %bb.a ] ; 3 uses
  %.093101 = phi i32 [ %i.ai, %._crit_edge ], [ %i.bq, %bb.a ] ; 10 uses
  %.094100 = phi i32 [ %i.ag, %._crit_edge ], [ %.09599, %bb.a ]
  %.09599 = phi i32 [ %i.ae, %._crit_edge ], [ %.087106, %bb.a ] ; 4 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %.093101, i32 %.093101, i32 26)
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %.093101, i32 %.093101, i32 21)
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = tail call i32 @llvm.fshl.i32(i32 %.093101, i32 %.093101, i32 7)
  %i.at = xor i32 %i.ar, %i.as
  %i.au = add i32 %.090104, %i.at
  %i.av = and i32 %.092102, %.093101
  %i.aw = xor i32 %.093101, -1
  %i.ax = and i32 %.091103, %i.aw
  %i.ay = or i32 %i.ax, %i.av
  %i.az = add i32 %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @k, i64 %indvars.iv116
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = add i32 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv116
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 30)
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 19)
  %i.bi = xor i32 %i.bg, %i.bh
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 10)
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = xor i32 %.087106, %.09599
  %i.bm = and i32 %.0107, %i.bl
  %i.bn = and i32 %.087106, %.09599
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = add i32 %i.bk, %i.bo
  %i.bq = add i32 %i.bf, %.094100                 ; 2 uses
  %i.br = add i32 %i.bp, %i.bf                    ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, 64
  br i1 %exitcond119.not, label %bb.b, label %bb.a, !llvm.loop !16

bb.b:                                             ; preds = %bb.a
  %i.bs = add i32 %i.br, %i.aa
  store i32 %i.bs, ptr %i.z, align 8, !tbaa !9
  %i.bt = add i32 %.0107, %i.ac
  store i32 %i.bt, ptr %i.ab, align 4, !tbaa !9
  %i.bu = add i32 %.087106, %i.ae
  store i32 %i.bu, ptr %i.ad, align 8, !tbaa !9
  %i.bv = add i32 %.09599, %i.ag
  store i32 %i.bv, ptr %i.af, align 4, !tbaa !9
  %i.bw = add i32 %i.bq, %i.ai
  store i32 %i.bw, ptr %i.ah, align 8, !tbaa !9
  %i.bx = add i32 %.093101, %i.ak
  store i32 %i.bx, ptr %i.aj, align 4, !tbaa !9
  %i.by = add i32 %.092102, %i.am
  store i32 %i.by, ptr %i.al, align 8, !tbaa !9
  %i.bz = add i32 %.091103, %i.ao
  store i32 %i.bz, ptr %i.an, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha256_init(ptr nofree noundef writeonly captures(none) initializes((64, 68), (72, 112)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.d, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.c = phi i32 [ %.pre, %.lr.ph ], [ %i.n, %bb.d ]
  %i.d = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.d ]
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !13
  %i.i = load i32, ptr %i.a, align 8, !tbaa !17
  %i.j = add i32 %i.i, 1                          ; 3 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !17
  %i.k = icmp eq i32 %i.j, 64
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !20
  %i.m = add i64 %i.l, 512
  store i64 %i.m, ptr %i.b, align 8, !tbaa !20
  store i32 0, ptr %i.a, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.j, %bb.b ], [ 0, %bb.c ]
  %i.o = add i32 %.013, 1                         ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = icmp ult i32 %i.b, 56
  %i.d = zext i32 %i.b to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 -128, ptr %i.e, align 1, !tbaa !13
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 55
  br i1 %.not, label %.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  %scevgep77 = getelementptr i8, ptr %i.f, i64 1
  %narrow = sub nuw nsw i32 55, %i.b
  %i.g = zext nneg i32 %narrow to i64
end_hunk_0
