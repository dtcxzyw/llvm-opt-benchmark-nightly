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
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 8, !tbaa !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.a, align 8, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Sha256_Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not11 = icmp eq i64 %2, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
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
  %i.k = load i64, ptr %i.a, align 8, !tbaa !8
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.a, align 8, !tbaa !8
  %i.m = add i64 %.0813, -1                       ; 2 uses
  %i.n = icmp eq i32 %i.h, 64
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @Sha256_WriteByteBlock(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12

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
  %i.e = load <32 x i8>, ptr %i.d, align 1, !tbaa !11 ; 4 uses
  %i.f = shufflevector <32 x i8> %i.e, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.g = zext <8 x i8> %i.f to <8 x i32>
  %i.h = shl nuw <8 x i32> %i.g, splat (i32 24)
  %i.i = shufflevector <32 x i8> %i.e, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.j = zext <8 x i8> %i.i to <8 x i32>
  %i.k = shl nuw nsw <8 x i32> %i.j, splat (i32 16)
  %i.l = or disjoint <8 x i32> %i.k, %i.h
  %i.m = shufflevector <32 x i8> %i.e, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = zext <8 x i8> %i.m to <8 x i32>
  %i.o = shl nuw nsw <8 x i32> %i.n, splat (i32 8)
  %i.p = or disjoint <8 x i32> %i.l, %i.o
  %i.q = shufflevector <32 x i8> %i.e, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.r = zext <8 x i8> %i.q to <8 x i32>
  %i.s = or disjoint <8 x i32> %i.p, %i.r
  store <8 x i32> %i.s, ptr %i.c, align 16, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.v = load <32 x i8>, ptr %i.t, align 1, !tbaa !11 ; 4 uses
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.x = zext <8 x i8> %i.w to <8 x i32>
  %i.y = shl nuw <8 x i32> %i.x, splat (i32 24)
  %i.z = shufflevector <32 x i8> %i.v, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.aa = zext <8 x i8> %i.z to <8 x i32>
  %i.ab = shl nuw nsw <8 x i32> %i.aa, splat (i32 16)
  %i.ac = or disjoint <8 x i32> %i.ab, %i.y
  %i.ad = shufflevector <32 x i8> %i.v, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ae = zext <8 x i8> %i.ad to <8 x i32>
  %i.af = shl nuw nsw <8 x i32> %i.ae, splat (i32 8)
  %i.ag = or disjoint <8 x i32> %i.ac, %i.af
  %i.ah = shufflevector <32 x i8> %i.v, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ai = zext <8 x i8> %i.ah to <8 x i32>
  %i.aj = or disjoint <8 x i32> %i.ag, %i.ai
  store <8 x i32> %i.aj, ptr %i.u, align 16, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa !4
  br label %.lver.check

.lver.check:                                      ; preds = %.loopexit, %bb.a
  %indvars.iv65.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next66.i, %.loopexit ] ; 4 uses
  %.not.i = icmp eq i64 %indvars.iv65.i, 0
  %invariant.gep.i = getelementptr [4 x i8], ptr @K, i64 %indvars.iv65.i
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lver.check
  %indvars.iv.i.lver.orig = phi i64 [ 0, %.lver.check ], [ %indvars.iv.next.pre-phi.i.lver.orig, %bb.e ] ; 16 uses
  %i.ak = sub nsw i64 4, %indvars.iv.i.lver.orig
  %1 = and i64 %i.ak, 7
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 7 uses
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 26)
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 21)
  %i.ap = xor i32 %i.an, %i.ao
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 7)
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = sub nsw i64 6, %indvars.iv.i.lver.orig
  %2 = and i64 %i.as, 7
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %2
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = sub nsw i64 5, %indvars.iv.i.lver.orig
  %3 = and i64 %i.av, 7
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = xor i32 %i.ax, %i.au
  %i.az = and i32 %i.ay, %i.am
  %i.ba = xor i32 %i.az, %i.au
  %gep.i.lver.orig = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.lver.orig
  %i.bb = load i32, ptr %gep.i.lver.orig, align 4, !tbaa !4
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = add nuw nsw i64 %indvars.iv.i.lver.orig, 14
  %i.bd = and i64 %i.bc, 15
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4  ; 5 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 15)
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 13)
  %i.bi = xor i32 %i.bg, %i.bh
  %i.bj = lshr i32 %i.bf, 10
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = add nuw nsw i64 %indvars.iv.i.lver.orig, 9
  %i.bm = and i64 %i.bl, 15
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = add i32 %i.bk, %i.bo
  %i.bq = add nuw nsw i64 %indvars.iv.i.lver.orig, 1 ; 2 uses
  %i.br = and i64 %i.bq, 15
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 5 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 25)
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 14)
  %i.bw = xor i32 %i.bu, %i.bv
  %i.bx = lshr i32 %i.bt, 3
  %i.by = xor i32 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.lver.orig ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = add i32 %i.bp, %i.ca
  %i.cc = add i32 %i.cb, %i.by                    ; 2 uses
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.lver.orig
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4  ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.lver.orig
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !4
  %.pre.i.lver.orig = add nuw nsw i64 %indvars.iv.i.lver.orig, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.pre-phi.i.lver.orig = phi i64 [ %.pre.i.lver.orig, %bb.d ], [ %i.bq, %bb.c ] ; 2 uses
  %i.cg = phi i32 [ %i.ce, %bb.d ], [ %i.cc, %bb.c ]
  %i.ch = and i64 %indvars.iv.i.lver.orig, 7
  %i.ci = xor i64 %i.ch, 7
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ci ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = add i32 %i.bb, %i.ar
  %i.cm = add i32 %i.cl, %i.ba
  %i.cn = add i32 %i.cm, %i.cg
  %i.co = add i32 %i.cn, %i.ck                    ; 2 uses
  store i32 %i.co, ptr %i.cj, align 4, !tbaa !4
  %i.cp = sub nsw i64 3, %indvars.iv.i.lver.orig
  %4 = and i64 %i.cp, 7
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = add i32 %i.cr, %i.co
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !4
  %5 = sub nsw i64 0, %indvars.iv.i.lver.orig
  %6 = and i64 %5, 7
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %6
  %i.ct = load i32, ptr %7, align 4, !tbaa !4     ; 8 uses
  %i.cu = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 30)
  %i.cv = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 19)
  %i.cw = xor i32 %i.cu, %i.cv
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 10)
  %i.cy = xor i32 %i.cw, %i.cx
  %i.cz = sub nsw i64 1, %indvars.iv.i.lver.orig
  %8 = and i64 %i.cz, 7
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4  ; 2 uses
  %i.dc = and i32 %i.db, %i.ct
  %i.dd = sub nsw i64 2, %indvars.iv.i.lver.orig
  %9 = and i64 %i.dd, 7
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %9
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = or i32 %i.db, %i.ct
  %i.dh = and i32 %i.df, %i.dg
  %i.di = or i32 %i.dh, %i.dc
  %i.dj = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.dk = add i32 %i.dj, %i.cy
  %i.dl = add i32 %i.dk, %i.di
  store i32 %i.dl, ptr %i.cj, align 4, !tbaa !4
  %exitcond.not.i.lver.orig = icmp eq i64 %indvars.iv.next.pre-phi.i.lver.orig, 16
  br i1 %exitcond.not.i.lver.orig, label %.loopexit, label %bb.b, !llvm.loop !14

.loopexit:                                        ; preds = %bb.e
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 16
  %i.dm = icmp samesign ult i64 %indvars.iv65.i, 48
  br i1 %i.dm, label %.lver.check, label %Sha256_Transform.exit, !llvm.loop !15

Sha256_Transform.exit:                            ; preds = %.loopexit
  %i.dn = load <4 x i32>, ptr %i.b, align 16, !tbaa !4
  %i.do = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %i.dp = add <4 x i32> %i.do, %i.dn
  store <4 x i32> %i.dp, ptr %0, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ds = load <4 x i32>, ptr %i.dq, align 16, !tbaa !4
  %i.dt = load <4 x i32>, ptr %i.dr, align 4, !tbaa !4
  %i.du = add <4 x i32> %i.dt, %i.ds
  store <4 x i32> %i.du, ptr %i.dr, align 4, !tbaa !4
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 10 uses
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
  %i.ae = load i32, ptr %0, align 8, !tbaa !4
  %i.af = lshr i32 %i.ae, 24
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ag, ptr %1, align 1, !tbaa !11
  %i.ai = load i32, ptr %0, align 8, !tbaa !4
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !11
  %i.am = load i32, ptr %0, align 8, !tbaa !4
  %i.an = lshr i32 %i.am, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !11
  %i.aq = load i32, ptr %0, align 8, !tbaa !4
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = lshr i32 %i.au, 24
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !11
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !4
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !11
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !4
  %i.bd = lshr i32 %i.bc, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !11
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !4
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !4
  %i.bl = lshr i32 %i.bk, 24
  %i.bm = trunc nuw i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bm, ptr %i.bi, align 1, !tbaa !11
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !4
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !11
  %i.bs = load i32, ptr %i.bj, align 8, !tbaa !4
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !11
  %i.bw = load i32, ptr %i.bj, align 8, !tbaa !4
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !11
  %i.ce = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !11
  %i.ci = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !11
  %i.cm = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !4
  %i.cr = lshr i32 %i.cq, 24
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !11
  %i.cu = load i32, ptr %i.cp, align 8, !tbaa !4
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.cw, ptr %i.ct, align 1, !tbaa !11
  %i.cy = load i32, ptr %i.cp, align 8, !tbaa !4
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.da, ptr %i.cx, align 1, !tbaa !11
  %i.dc = load i32, ptr %i.cp, align 8, !tbaa !4
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = lshr i32 %i.dg, 24
  %i.di = trunc nuw i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.di, ptr %i.de, align 1, !tbaa !11
  %i.dk = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dl = lshr i32 %i.dk, 16
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !11
  %i.do = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dp = lshr i32 %i.do, 8
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !11
end_hunk_0
