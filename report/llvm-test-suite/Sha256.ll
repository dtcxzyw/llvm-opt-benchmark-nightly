Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Sha256?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @Sha256_Init(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #0 {
bb.a:
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Sha256_Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not11 = icmp eq i64 %2, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.014 = phi i32 [ %i.d, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.0813 = phi i64 [ %2, %.lr.ph ], [ %i.m, %bb.d ]
  %.0912 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0912, i64 1
  %i.g = load i8, ptr %.0912, align 1, !tbaa !11
  %i.h = add nuw nsw i32 %.014, 1                 ; 2 uses
  %i.i = zext nneg i32 %.014 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  store i8 %i.g, ptr %i.j, align 1, !tbaa !11
  %i.k = load i64, ptr %i.a, align 8, !tbaa !10
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.a, align 8, !tbaa !10
  %i.m = add i64 %.0813, -1                       ; 2 uses
  %i.n = icmp eq i32 %i.h, 64
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @Sha256_WriteByteBlock(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Sha256_WriteByteBlock(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %i.b = alloca [8 x i32], align 16               ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %1 = load <32 x i8>, ptr %i.d, align 1, !tbaa !11 ; 4 uses
  %2 = shufflevector <32 x i8> %1, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %3 = zext <8 x i8> %2 to <8 x i32>
  %4 = shl nuw <8 x i32> %3, splat (i32 24)
  %5 = shufflevector <32 x i8> %1, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %6 = zext <8 x i8> %5 to <8 x i32>
  %7 = shl nuw nsw <8 x i32> %6, splat (i32 16)
  %8 = or disjoint <8 x i32> %7, %4
  %9 = shufflevector <32 x i8> %1, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %10 = zext <8 x i8> %9 to <8 x i32>
  %11 = shl nuw nsw <8 x i32> %10, splat (i32 8)
  %12 = or disjoint <8 x i32> %8, %11
  %13 = shufflevector <32 x i8> %1, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %14 = zext <8 x i8> %13 to <8 x i32>
  %15 = or disjoint <8 x i32> %12, %14
  store <8 x i32> %15, ptr %i.c, align 16, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %16 = load <32 x i8>, ptr %i.e, align 1, !tbaa !11 ; 4 uses
  %17 = shufflevector <32 x i8> %16, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %18 = zext <8 x i8> %17 to <8 x i32>
  %19 = shl nuw <8 x i32> %18, splat (i32 24)
  %20 = shufflevector <32 x i8> %16, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %21 = zext <8 x i8> %20 to <8 x i32>
  %22 = shl nuw nsw <8 x i32> %21, splat (i32 16)
  %23 = or disjoint <8 x i32> %22, %19
  %24 = shufflevector <32 x i8> %16, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %25 = zext <8 x i8> %24 to <8 x i32>
  %26 = shl nuw nsw <8 x i32> %25, splat (i32 8)
  %27 = or disjoint <8 x i32> %23, %26
  %28 = shufflevector <32 x i8> %16, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %29 = zext <8 x i8> %28 to <8 x i32>
  %30 = or disjoint <8 x i32> %27, %29
  store <8 x i32> %30, ptr %i.f, align 16, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa !7
  br label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.f, %bb.a
  %indvars.iv65.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next66.i, %bb.f ] ; 4 uses
  %.not.i = icmp eq i64 %indvars.iv65.i, 0
  %invariant.gep.i = getelementptr [4 x i8], ptr @K, i64 %indvars.iv65.i
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.preheader57.i
  %indvars.iv.i = phi i64 [ 0, %.preheader57.i ], [ %indvars.iv.next.pre-phi.i, %bb.e ] ; 16 uses
  %i.g = sub nsw i64 4, %indvars.iv.i
  %i.h = and i64 %i.g, 7
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 7 uses
  %i.k = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 26)
  %i.l = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 21)
  %i.m = xor i32 %i.k, %i.l
  %i.n = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 7)
  %i.o = xor i32 %i.m, %i.n
  %i.p = sub nsw i64 6, %indvars.iv.i
  %i.q = and i64 %i.p, 7
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %i.t = sub nsw i64 5, %indvars.iv.i
  %i.u = and i64 %i.t, 7
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = xor i32 %i.w, %i.s
  %i.y = and i32 %i.x, %i.j
  %i.z = xor i32 %i.y, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.aa = load i32, ptr %gep.i, align 4, !tbaa !7
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = add nuw nsw i64 %indvars.iv.i, 14
  %i.ac = and i64 %i.ab, 15
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7  ; 5 uses
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 15)
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 13)
  %i.ah = xor i32 %i.af, %i.ag
  %i.ai = lshr i32 %i.ae, 10
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = add nuw nsw i64 %indvars.iv.i, 9
  %i.al = and i64 %i.ak, 15
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.aq = and i64 %i.ap, 15
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7  ; 5 uses
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 25)
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 14)
  %i.av = xor i32 %i.at, %i.au
  %i.aw = lshr i32 %i.as, 3
  %i.ax = xor i32 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = add i32 %i.ao, %i.az
  %i.bb = add i32 %i.ba, %i.ax                    ; 2 uses
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  %.pre.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre.i, %bb.d ], [ %i.ap, %bb.c ] ; 2 uses
  %i.bf = phi i32 [ %i.bd, %bb.d ], [ %i.bb, %bb.c ]
  %i.bg = and i64 %indvars.iv.i, 7
  %i.bh = xor i64 %i.bg, 7
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bh ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = add i32 %i.aa, %i.o
  %i.bl = add i32 %i.bk, %i.z
  %i.bm = add i32 %i.bl, %i.bf
  %i.bn = add i32 %i.bm, %i.bj                    ; 2 uses
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !7
  %i.bo = sub nsw i64 3, %indvars.iv.i
  %i.bp = and i64 %i.bo, 7
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = add i32 %i.br, %i.bn
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !7
  %i.bt = sub nsw i64 0, %indvars.iv.i
  %i.bu = and i64 %i.bt, 7
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7  ; 8 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 30)
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 19)
  %i.bz = xor i32 %i.bx, %i.by
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 10)
  %i.cb = xor i32 %i.bz, %i.ca
  %i.cc = sub nsw i64 1, %indvars.iv.i
  %i.cd = and i64 %i.cc, 7
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7  ; 2 uses
  %i.cg = and i32 %i.cf, %i.bw
  %i.ch = sub nsw i64 2, %indvars.iv.i
  %i.ci = and i64 %i.ch, 7
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7
  %i.cl = or i32 %i.cf, %i.bw
  %i.cm = and i32 %i.ck, %i.cl
  %i.cn = or i32 %i.cm, %i.cg
  %i.co = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.cp = add i32 %i.co, %i.cb
  %i.cq = add i32 %i.cp, %i.cn
  store i32 %i.cq, ptr %i.bi, align 4, !tbaa !7
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.pre-phi.i, 16
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !14

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 16
  %i.cr = icmp samesign ult i64 %indvars.iv65.i, 48
  br i1 %i.cr, label %.preheader57.i, label %Sha256_Transform.exit, !llvm.loop !15

Sha256_Transform.exit:                            ; preds = %bb.f
  %i.cs = load <4 x i32>, ptr %i.b, align 16, !tbaa !7
  %i.ct = load <4 x i32>, ptr %0, align 4, !tbaa !7
  %i.cu = add <4 x i32> %i.ct, %i.cs
  store <4 x i32> %i.cu, ptr %0, align 4, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cx = load <4 x i32>, ptr %i.cv, align 16, !tbaa !7
  %i.cy = load <4 x i32>, ptr %i.cw, align 4, !tbaa !7
  %i.cz = add <4 x i32> %i.cy, %i.cx
  store <4 x i32> %i.cz, ptr %i.cw, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Sha256_Final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 10 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = and i64 %i.b, 63
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 -128, ptr %i.g, align 1, !tbaa !11
  %.03135 = add nuw nsw i32 %i.d, 1               ; 2 uses
  %.not36 = icmp eq i32 %.03135, 56
  br i1 %.not36, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %bb.a
  %i.h = lshr i64 %i.b, 53
  %i.i = trunc i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.i, ptr %i.j, align 8, !tbaa !11
  %i.k = lshr i64 %i.b, 45
  %i.l = trunc i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %i.l, ptr %i.m, align 1, !tbaa !11
  %i.n = lshr i64 %i.b, 37
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %i.o, ptr %i.p, align 2, !tbaa !11
  %i.q = lshr i64 %i.b, 29
  %i.r = trunc i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.r, ptr %i.s, align 1, !tbaa !11
  %i.t = lshr i64 %i.b, 21
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.u, ptr %i.v, align 4, !tbaa !11
  %i.w = lshr i64 %i.b, 13
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.x, ptr %i.y, align 1, !tbaa !11
  %i.z = lshr i64 %i.b, 5
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %i.aa, ptr %i.ab, align 2, !tbaa !11
  %.tr = trunc i64 %i.b to i8
  %i.ac = shl i8 %.tr, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !11
  tail call fastcc void @Sha256_WriteByteBlock(ptr noundef nonnull %0)
  %i.ae = load i32, ptr %0, align 8, !tbaa !7
  %i.af = lshr i32 %i.ae, 24
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ag, ptr %1, align 1, !tbaa !11
  %i.ai = load i32, ptr %0, align 8, !tbaa !7
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !11
  %i.am = load i32, ptr %0, align 8, !tbaa !7
  %i.an = lshr i32 %i.am, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !11
  %i.aq = load i32, ptr %0, align 8, !tbaa !7
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = lshr i32 %i.au, 24
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !11
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !7
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !11
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !7
  %i.bd = lshr i32 %i.bc, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !11
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !7
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !7
  %i.bl = lshr i32 %i.bk, 24
  %i.bm = trunc nuw i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bm, ptr %i.bi, align 1, !tbaa !11
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !7
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !11
  %i.bs = load i32, ptr %i.bj, align 8, !tbaa !7
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !11
  %i.bw = load i32, ptr %i.bj, align 8, !tbaa !7
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !11
  %i.ce = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !11
  %i.ci = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !11
  %i.cm = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !7
  %i.cr = lshr i32 %i.cq, 24
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !11
  %i.cu = load i32, ptr %i.cp, align 8, !tbaa !7
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.cw, ptr %i.ct, align 1, !tbaa !11
  %i.cy = load i32, ptr %i.cp, align 8, !tbaa !7
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.da, ptr %i.cx, align 1, !tbaa !11
  %i.dc = load i32, ptr %i.cp, align 8, !tbaa !7
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = lshr i32 %i.dg, 24
  %i.di = trunc nuw i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.di, ptr %i.de, align 1, !tbaa !11
  %i.dk = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dl = lshr i32 %i.dk, 16
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !11
  %i.do = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dp = lshr i32 %i.do, 8
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !11
  %i.ds = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !7
  %i.dx = lshr i32 %i.dw, 24
  %i.dy = trunc nuw i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !11
  %i.ea = load i32, ptr %i.dv, align 8, !tbaa !7
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !11
  %i.ee = load i32, ptr %i.dv, align 8, !tbaa !7
  %i.ef = lshr i32 %i.ee, 8
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !11
  %i.ei = load i32, ptr %i.dv, align 8, !tbaa !7
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = lshr i32 %i.em, 24
  %i.eo = trunc nuw i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.eo, ptr %i.ek, align 1, !tbaa !11
  %i.eq = load i32, ptr %i.el, align 4, !tbaa !7
  %i.er = lshr i32 %i.eq, 16
  %i.es = trunc i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.es, ptr %i.ep, align 1, !tbaa !11
  %i.eu = load i32, ptr %i.el, align 4, !tbaa !7
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.ew, ptr %i.et, align 1, !tbaa !11
  %i.ey = load i32, ptr %i.el, align 4, !tbaa !7
  %i.ez = trunc i32 %i.ey to i8
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !11
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 8, !tbaa !7
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.cp, align 8, !tbaa !7
  store i64 0, ptr %i.a, align 8, !tbaa !10
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03137 = phi i32 [ %.031, %bb.c ], [ %.03135, %bb.a ]
  %i.fa = and i32 %.03137, 63                     ; 3 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @Sha256_WriteByteBlock(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fc
  store i8 0, ptr %i.fd, align 1, !tbaa !11
  %.031 = add nuw nsw i32 %i.fa, 1                ; 2 uses
  %.not = icmp eq i32 %.031, 56
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !16
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"long long", !5, i64 0}
!9 = !{!"", !5, i64 0, !8, i64 32, !5, i64 40}
!10 = !{!9, !8, i64 32}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
end_hunk_0
