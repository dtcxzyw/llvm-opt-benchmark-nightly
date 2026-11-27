Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sha256?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@k = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16, !guid !13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 !guid !22 {
.lr.ph.preheader:
  %i.a = alloca [64 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load <32 x i8>, ptr %1, align 1, !tbaa !14 ; 4 uses
  %i.c = shufflevector <32 x i8> %i.b, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.d = zext <8 x i8> %i.c to <8 x i32>
  %i.e = shl nuw <8 x i32> %i.d, splat (i32 24)
  %i.f = shufflevector <32 x i8> %i.b, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.g = zext <8 x i8> %i.f to <8 x i32>
  %i.h = shl nuw nsw <8 x i32> %i.g, splat (i32 16)
  %i.i = or disjoint <8 x i32> %i.h, %i.e
  %i.j = shufflevector <32 x i8> %i.b, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = zext <8 x i8> %i.j to <8 x i32>
  %i.l = shl nuw nsw <8 x i32> %i.k, splat (i32 8)
  %i.m = or disjoint <8 x i32> %i.i, %i.l
  %i.n = shufflevector <32 x i8> %i.b, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.o = zext <8 x i8> %i.n to <8 x i32>
  %i.p = or disjoint <8 x i32> %i.m, %i.o
  store <8 x i32> %i.p, ptr %i.a, align 16, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load <32 x i8>, ptr %i.q, align 1, !tbaa !14 ; 4 uses
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.u = zext <8 x i8> %i.t to <8 x i32>
  %i.v = shl nuw <8 x i32> %i.u, splat (i32 24)
  %i.w = shufflevector <32 x i8> %i.s, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.x = zext <8 x i8> %i.w to <8 x i32>
  %i.y = shl nuw nsw <8 x i32> %i.x, splat (i32 16)
  %i.z = or disjoint <8 x i32> %i.y, %i.v
  %i.aa = shufflevector <32 x i8> %i.s, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ab = zext <8 x i8> %i.aa to <8 x i32>
  %i.ac = shl nuw nsw <8 x i32> %i.ab, splat (i32 8)
  %i.ad = or disjoint <8 x i32> %i.z, %i.ac
  %i.ae = shufflevector <32 x i8> %i.s, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.af = zext <8 x i8> %i.ae to <8 x i32>
  %i.ag = or disjoint <8 x i32> %i.ad, %i.af
  store <8 x i32> %i.ag, ptr %i.r, align 16, !tbaa !12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12 ; 5 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 15)
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 13)
  %i.am = xor i32 %i.ak, %i.al
  %i.an = lshr i32 %i.aj, 10
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %i.ah, i64 -28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = add i32 %i.ao, %i.aq
  %i.as = getelementptr i8, ptr %i.ah, i64 -60
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12 ; 5 uses
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 25)
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 14)
  %i.aw = xor i32 %i.au, %i.av
  %i.ax = lshr i32 %i.at, 3
  %i.ay = xor i32 %i.aw, %i.ax
  %i.az = getelementptr i8, ptr %i.ah, i64 -64
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bb = add i32 %i.ar, %i.ba
  %i.bc = add i32 %i.bb, %i.ay
  store i32 %i.bc, ptr %i.ah, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !12 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !12 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %bb.a
  %indvars.iv116 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next117, %bb.a ] ; 3 uses
  %.088106 = phi i32 [ %i.bs, %._crit_edge ], [ %.089105, %bb.a ]
  %.089105 = phi i32 [ %i.bq, %._crit_edge ], [ %.090104, %bb.a ] ; 3 uses
  %.090104 = phi i32 [ %i.bo, %._crit_edge ], [ %.091103, %bb.a ] ; 3 uses
  %.091103 = phi i32 [ %i.bm, %._crit_edge ], [ %i.cu, %bb.a ] ; 10 uses
  %.092102 = phi i32 [ %i.bk, %._crit_edge ], [ %.093101, %bb.a ]
  %.093101 = phi i32 [ %i.bi, %._crit_edge ], [ %.094100, %bb.a ] ; 4 uses
  %.094100 = phi i32 [ %i.bg, %._crit_edge ], [ %.09599, %bb.a ] ; 4 uses
  %.09599 = phi i32 [ %i.be, %._crit_edge ], [ %i.cv, %bb.a ] ; 9 uses
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %.091103, i32 %.091103, i32 26)
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %.091103, i32 %.091103, i32 21)
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %.091103, i32 %.091103, i32 7)
  %i.bx = xor i32 %i.bv, %i.bw
  %i.by = add i32 %.088106, %i.bx
  %i.bz = and i32 %.090104, %.091103
  %i.ca = xor i32 %.091103, -1
  %i.cb = and i32 %.089105, %i.ca
  %i.cc = or i32 %i.cb, %i.bz
  %i.cd = add i32 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @k, i64 %indvars.iv116
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !12
  %i.cg = add i32 %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv116
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12
  %i.cj = add i32 %i.cg, %i.ci                    ; 2 uses
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %.09599, i32 %.09599, i32 30)
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %.09599, i32 %.09599, i32 19)
  %i.cm = xor i32 %i.ck, %i.cl
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %.09599, i32 %.09599, i32 10)
  %i.co = xor i32 %i.cm, %i.cn
  %i.cp = xor i32 %.093101, %.094100
  %i.cq = and i32 %i.cp, %.09599
  %i.cr = and i32 %.093101, %.094100
  %i.cs = xor i32 %i.cq, %i.cr
  %i.ct = add i32 %i.cs, %i.co
  %i.cu = add i32 %i.cj, %.092102                 ; 2 uses
  %i.cv = add i32 %i.ct, %i.cj                    ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, 64
  br i1 %exitcond119.not, label %bb.b, label %bb.a, !llvm.loop !21

bb.b:                                             ; preds = %bb.a
  %i.cw = add i32 %i.cv, %i.be
  store i32 %i.cw, ptr %i.bd, align 8, !tbaa !12
  %i.cx = add i32 %.09599, %i.bg
  store i32 %i.cx, ptr %i.bf, align 4, !tbaa !12
  %i.cy = add i32 %.094100, %i.bi
  store i32 %i.cy, ptr %i.bh, align 8, !tbaa !12
  %i.cz = add i32 %.093101, %i.bk
  store i32 %i.cz, ptr %i.bj, align 4, !tbaa !12
  %i.da = add i32 %i.cu, %i.bm
  store i32 %i.da, ptr %i.bl, align 8, !tbaa !12
  %i.db = add i32 %.091103, %i.bo
  store i32 %i.db, ptr %i.bn, align 4, !tbaa !12
  %i.dc = add i32 %.090104, %i.bq
  store i32 %i.dc, ptr %i.bp, align 8, !tbaa !12
  %i.dd = add i32 %.089105, %i.bs
  store i32 %i.dd, ptr %i.br, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha256_init(ptr nofree noundef writeonly captures(none) initializes((64, 68), (72, 112)) %0) local_unnamed_addr #2 !guid !23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -4942790177982912921, ptr %i.c, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -6534734903820487822, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -7276294671082564993, ptr %i.d, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 6620516960021240235, ptr %2, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 !guid !25 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.c = phi i32 [ %.pre, %.lr.ph ], [ %i.n, %bb.d ]
  %i.d = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.d ]
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !14
  %i.i = load i32, ptr %i.a, align 8, !tbaa !18
  %i.j = add i32 %i.i, 1                          ; 3 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !18
  %i.k = icmp eq i32 %i.j, 64
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !19
  %i.m = add i64 %i.l, 512
  store i64 %i.m, ptr %i.b, align 8, !tbaa !19
  store i32 0, ptr %i.a, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.j, %bb.b ], [ 0, %bb.c ]
  %i.o = add i32 %.013, 1                         ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #0 !guid !26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 6 uses
  %i.c = icmp ult i32 %i.b, 56
  %i.d = zext i32 %i.b to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 -128, ptr %i.e, align 1, !tbaa !14
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 55
  br i1 %.not, label %.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  %scevgep77 = getelementptr i8, ptr %i.f, i64 1
  %narrow = sub nuw nsw i32 55, %i.b
  %i.g = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 range(i64 0, 56) %i.g, i1 false), !tbaa !14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.170 = add i32 %i.b, 1                         ; 2 uses
  %i.h = icmp ult i32 %.170, 64
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = zext nneg i32 %.170 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.i
  %i.j = sub nsw i32 62, %i.b
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 65) %i.l, i1 false), !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph74.preheader, %bb.b, %._crit_edge
  %i.m = load i32, ptr %i.a, align 8, !tbaa !18
  %i.n = shl i32 %i.m, 3
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = tail call i64 @llvm.bswap.i64(i64 %i.r)
  store i64 %i.t, ptr %i.s, align 8, !tbaa !14
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !12
  %i.ad = lshr i32 %i.ac, 24
  %i.ae = trunc nuw i32 %i.ad to i8
  store i8 %i.ae, ptr %1, align 1, !tbaa !14
  %i.af = load i32, ptr %i.v, align 4, !tbaa !12
  %i.ag = lshr i32 %i.af, 24
  %i.ah = trunc nuw i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !14
  %i.aj = load i32, ptr %i.w, align 8, !tbaa !12
  %i.ak = lshr i32 %i.aj, 24
  %i.al = trunc nuw i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.al, ptr %i.am, align 1, !tbaa !14
  %i.an = load i32, ptr %i.x, align 4, !tbaa !12
  %i.ao = lshr i32 %i.an, 24
  %i.ap = trunc nuw i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !14
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !12
  %i.as = lshr i32 %i.ar, 24
  %i.at = trunc nuw i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.at, ptr %i.au, align 1, !tbaa !14
  %i.av = load i32, ptr %i.z, align 4, !tbaa !12
  %i.aw = lshr i32 %i.av, 24
  %i.ax = trunc nuw i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !14
  %i.az = load i32, ptr %i.aa, align 8, !tbaa !12
  %i.ba = lshr i32 %i.az, 24
  %i.bb = trunc nuw i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !14
  %i.bd = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.be = lshr i32 %i.bd, 24
  %i.bf = trunc nuw i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !14
  %i.bh = load i32, ptr %i.u, align 8, !tbaa !12
  %i.bi = lshr i32 %i.bh, 16
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !14
  %i.bl = load i32, ptr %i.v, align 4, !tbaa !12
  %i.bm = lshr i32 %i.bl, 16
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !14
  %i.bp = load i32, ptr %i.w, align 8, !tbaa !12
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !14
  %i.bt = load i32, ptr %i.x, align 4, !tbaa !12
  %i.bu = lshr i32 %i.bt, 16
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !14
  %i.bx = load i32, ptr %i.y, align 8, !tbaa !12
  %i.by = lshr i32 %i.bx, 16
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !14
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !12
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !14
  %i.cf = load i32, ptr %i.aa, align 8, !tbaa !12
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !14
  %i.cj = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !14
  %i.cn = load i32, ptr %i.u, align 8, !tbaa !12
  %i.co = lshr i32 %i.cn, 8
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !14
  %i.cr = load i32, ptr %i.v, align 4, !tbaa !12
  %i.cs = lshr i32 %i.cr, 8
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !14
end_hunk_0
