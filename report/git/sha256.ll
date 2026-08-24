Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/sha256?download=true
inline.NumInlined: 272
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@blk_SHA256_Final.pad = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @blk_SHA256_Init(ptr nofree noundef writeonly captures(none) initializes((0, 44)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !15
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.c, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @blk_SHA256_Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = and i32 %i.c, 63                         ; 2 uses
  %i.e = add i64 %i.b, %2
  store i64 %i.e, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i32 64, %i.d
  %i.g = zext nneg i32 %i.f to i64
  %spec.select38 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 4 uses
  %spec.select = trunc nuw nsw i64 %spec.select38 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = and i64 %i.b, 63
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %1, i64 %spec.select38, i1 false)
  %i.k = add i32 %spec.select, %i.c
  %i.l = and i32 %i.k, 63
  %.not36 = icmp eq i32 %i.l, 0
  br i1 %.not36, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select38
  %i.n = sub i64 %2, %spec.select38
  tail call fastcc void @blk_SHA256_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.032 = phi ptr [ %i.m, %bb.c ], [ %1, %bb.a ]  ; 2 uses
  %.031 = phi i64 [ %i.n, %bb.c ], [ %2, %bb.a ]  ; 3 uses
  %i.o = icmp ugt i64 %.031, 63
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.140 = phi i64 [ %i.q, %.lr.ph ], [ %.031, %bb.d ]
  %.13339 = phi ptr [ %i.p, %.lr.ph ], [ %.032, %bb.d ] ; 2 uses
  tail call fastcc void @blk_SHA256_Transform(ptr noundef nonnull %0, ptr noundef %.13339)
  %i.p = getelementptr inbounds nuw i8, ptr %.13339, i64 64 ; 2 uses
  %i.q = add i64 %.140, -64                       ; 3 uses
  %i.r = icmp ugt i64 %i.q, 63
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.133.lcssa = phi ptr [ %.032, %bb.d ], [ %i.p, %.lr.ph ]
  %.1.lcssa = phi i64 [ %.031, %bb.d ], [ %i.q, %.lr.ph ] ; 2 uses
  %.not37 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not37, label %.critedge, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 1 %.133.lcssa, i64 %.1.lcssa, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @blk_SHA256_Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
.preheader214.preheader:
  %i.a = alloca [64 x i32], align 16              ; 68 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !16 ; 12 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !16 ; 4 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !16 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.57.0.copyload = load i32, ptr %.sroa.57.0..sroa_idx, align 4, !tbaa !16
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.75.0.copyload = load i32, ptr %.sroa.75.0..sroa_idx, align 4, !tbaa !16 ; 11 uses
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.93.0.copyload = load i32, ptr %.sroa.93.0..sroa_idx, align 4, !tbaa !16 ; 4 uses
  %.sroa.111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.111.0.copyload = load i32, ptr %.sroa.111.0..sroa_idx, align 4, !tbaa !16 ; 3 uses
  %.sroa.129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.129.0.copyload = load i32, ptr %.sroa.129.0..sroa_idx, align 4, !tbaa !16
  %i.b = load <32 x i8>, ptr %1, align 1, !tbaa !19 ; 4 uses
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
  store <8 x i32> %i.p, ptr %i.a, align 16, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.s = load <32 x i8>, ptr %i.q, align 1, !tbaa !19 ; 4 uses
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
  store <8 x i32> %i.ag, ptr %i.r, align 16, !tbaa !16
  br label %.preheader

.preheader:                                       ; preds = %.preheader214.preheader, %.preheader
  %indvars.iv = phi i64 [ 16, %.preheader214.preheader ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !16 ; 5 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 15)
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 13)
  %i.am = xor i32 %i.ak, %i.al
  %i.an = lshr i32 %i.aj, 10
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %i.ah, i64 -28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = add i32 %i.ao, %i.aq
  %i.as = getelementptr i8, ptr %i.ah, i64 -60
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16 ; 5 uses
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 25)
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 14)
  %i.aw = xor i32 %i.au, %i.av
  %i.ax = lshr i32 %i.at, 3
  %i.ay = xor i32 %i.aw, %i.ax
  %i.az = getelementptr i8, ptr %i.ah, i64 -64
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = add i32 %i.ar, %i.ba
  %i.bc = add i32 %i.bb, %i.ay
  store i32 %i.bc, ptr %i.ah, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !20

bb.a:                                             ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.br = tail call i32 @llvm.fshl.i32(i32 %.sroa.75.0.copyload, i32 %.sroa.75.0.copyload, i32 26)
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %.sroa.75.0.copyload, i32 %.sroa.75.0.copyload, i32 21)
  %i.bt = xor i32 %i.br, %i.bs
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %.sroa.75.0.copyload, i32 %.sroa.75.0.copyload, i32 7)
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = xor i32 %.sroa.111.0.copyload, %.sroa.93.0.copyload
  %i.bx = and i32 %i.bw, %.sroa.75.0.copyload
  %i.by = xor i32 %i.bx, %.sroa.111.0.copyload
  %i.bz = load i32, ptr %i.a, align 16, !tbaa !16
  %i.ca = add i32 %.sroa.129.0.copyload, 1116352408
  %i.cb = add i32 %i.ca, %i.bv
  %i.cc = add i32 %i.cb, %i.bz
  %i.cd = add i32 %i.cc, %i.by                    ; 2 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0.0.copyload, i32 30)
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0.0.copyload, i32 19)
  %i.cg = xor i32 %i.ce, %i.cf
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0.0.copyload, i32 10)
  %i.ci = xor i32 %i.cg, %i.ch
  %i.cj = or i32 %.sroa.21.0.copyload, %.sroa.0.0.copyload
  %i.ck = and i32 %i.cj, %.sroa.39.0.copyload
  %i.cl = and i32 %.sroa.21.0.copyload, %.sroa.0.0.copyload
  %i.cm = or i32 %i.ck, %i.cl
  %i.cn = add i32 %i.cm, %i.ci
  %i.co = add i32 %i.cd, %.sroa.57.0.copyload     ; 11 uses
  %i.cp = add i32 %i.cn, %i.cd                    ; 12 uses
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 26)
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 21)
  %i.cs = xor i32 %i.cq, %i.cr
  %i.ct = tail call i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 7)
  %i.cu = xor i32 %i.cs, %i.ct
  %i.cv = xor i32 %.sroa.93.0.copyload, %.sroa.75.0.copyload
  %i.cw = and i32 %i.co, %i.cv
  %i.cx = xor i32 %i.cw, %.sroa.93.0.copyload
  %i.cy = load i32, ptr %i.bq, align 4, !tbaa !16
  %i.cz = add i32 %.sroa.111.0.copyload, 1899447441
  %i.da = add i32 %i.cz, %i.cy
  %i.db = add i32 %i.da, %i.cx
  %i.dc = add i32 %i.db, %i.cu                    ; 2 uses
  %i.dd = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 30)
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 19)
  %i.df = xor i32 %i.dd, %i.de
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 10)
  %i.dh = xor i32 %i.df, %i.dg
  %i.di = or i32 %i.cp, %.sroa.0.0.copyload
  %i.dj = and i32 %i.di, %.sroa.21.0.copyload
  %i.dk = and i32 %i.cp, %.sroa.0.0.copyload
  %i.dl = or i32 %i.dj, %i.dk
  %i.dm = add i32 %i.dh, %i.dl
  %i.dn = add i32 %i.dc, %.sroa.39.0.copyload     ; 11 uses
  %i.do = add i32 %i.dm, %i.dc                    ; 12 uses
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 26)
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 21)
  %i.dr = xor i32 %i.dp, %i.dq
  %i.ds = tail call i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 7)
  %i.dt = xor i32 %i.dr, %i.ds
  %i.du = xor i32 %i.co, %.sroa.75.0.copyload
  %i.dv = and i32 %i.dn, %i.du
  %i.dw = xor i32 %i.dv, %.sroa.75.0.copyload
  %i.dx = load i32, ptr %i.bp, align 8, !tbaa !16
  %i.dy = add i32 %.sroa.93.0.copyload, -1245643825
  %i.dz = add i32 %i.dy, %i.dx
end_hunk_0
begin_hunk_1_@blk_SHA256_Transform:.preheader214.preheader
  %i.bgf = xor i32 %i.bgd, %i.bge
  %i.bgg = xor i32 %i.bez, %i.bdz
  %i.bgh = and i32 %i.bfz, %i.bgg
  %i.bgi = xor i32 %i.bgh, %i.bdz
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.bgk = load i32, ptr %i.bgj, align 4, !tbaa !16
  %i.bgl = add i32 %i.bgk, 2024104815
  %i.bgm = add i32 %i.bgl, %i.bcz
  %i.bgn = add i32 %i.bgm, %i.bgi
  %i.bgo = add i32 %i.bgn, %i.bgf                 ; 2 uses
  %i.bgp = tail call i32 @llvm.fshl.i32(i32 %i.bga, i32 %i.bga, i32 30)
  %i.bgq = tail call i32 @llvm.fshl.i32(i32 %i.bga, i32 %i.bga, i32 19)
  %i.bgr = xor i32 %i.bgp, %i.bgq
  %i.bgs = tail call i32 @llvm.fshl.i32(i32 %i.bga, i32 %i.bga, i32 10)
  %i.bgt = xor i32 %i.bgr, %i.bgs
  %i.bgu = or i32 %i.bga, %i.bfa
  %i.bgv = and i32 %i.bgu, %i.bea
  %i.bgw = and i32 %i.bga, %i.bfa
  %i.bgx = or i32 %i.bgv, %i.bgw
  %i.bgy = add i32 %i.bgt, %i.bgx
  %i.bgz = add i32 %i.bgo, %i.bda                 ; 11 uses
  %i.bha = add i32 %i.bgy, %i.bgo                 ; 12 uses
  %i.bhb = tail call i32 @llvm.fshl.i32(i32 %i.bgz, i32 %i.bgz, i32 26)
  %i.bhc = tail call i32 @llvm.fshl.i32(i32 %i.bgz, i32 %i.bgz, i32 21)
  %i.bhd = xor i32 %i.bhb, %i.bhc
  %i.bhe = tail call i32 @llvm.fshl.i32(i32 %i.bgz, i32 %i.bgz, i32 7)
  %i.bhf = xor i32 %i.bhd, %i.bhe
  %i.bhg = xor i32 %i.bfz, %i.bez
  %i.bhh = and i32 %i.bgz, %i.bhg
  %i.bhi = xor i32 %i.bhh, %i.bez
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.bhk = load i32, ptr %i.bhj, align 8, !tbaa !16
  %i.bhl = add i32 %i.bhk, -2067236844
  %i.bhm = add i32 %i.bhl, %i.bdz
  %i.bhn = add i32 %i.bhm, %i.bhi
  %i.bho = add i32 %i.bhn, %i.bhf                 ; 2 uses
  %i.bhp = tail call i32 @llvm.fshl.i32(i32 %i.bha, i32 %i.bha, i32 30)
  %i.bhq = tail call i32 @llvm.fshl.i32(i32 %i.bha, i32 %i.bha, i32 19)
  %i.bhr = xor i32 %i.bhp, %i.bhq
  %i.bhs = tail call i32 @llvm.fshl.i32(i32 %i.bha, i32 %i.bha, i32 10)
  %i.bht = xor i32 %i.bhr, %i.bhs
  %i.bhu = or i32 %i.bha, %i.bga
  %i.bhv = and i32 %i.bhu, %i.bfa
  %i.bhw = and i32 %i.bha, %i.bga
  %i.bhx = or i32 %i.bhv, %i.bhw
  %i.bhy = add i32 %i.bht, %i.bhx
  %i.bhz = add i32 %i.bho, %i.bea                 ; 11 uses
  %i.bia = add i32 %i.bhy, %i.bho                 ; 12 uses
  %i.bib = tail call i32 @llvm.fshl.i32(i32 %i.bhz, i32 %i.bhz, i32 26)
  %i.bic = tail call i32 @llvm.fshl.i32(i32 %i.bhz, i32 %i.bhz, i32 21)
  %i.bid = xor i32 %i.bib, %i.bic
  %i.bie = tail call i32 @llvm.fshl.i32(i32 %i.bhz, i32 %i.bhz, i32 7)
  %i.bif = xor i32 %i.bid, %i.bie
  %i.big = xor i32 %i.bgz, %i.bfz
  %i.bih = and i32 %i.bhz, %i.big
  %i.bii = xor i32 %i.bih, %i.bfz
  %i.bij = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !16
  %i.bil = add i32 %i.bik, -1933114872
  %i.bim = add i32 %i.bil, %i.bez
  %i.bin = add i32 %i.bim, %i.bii
  %i.bio = add i32 %i.bin, %i.bif                 ; 2 uses
  %i.bip = tail call i32 @llvm.fshl.i32(i32 %i.bia, i32 %i.bia, i32 30)
  %i.biq = tail call i32 @llvm.fshl.i32(i32 %i.bia, i32 %i.bia, i32 19)
  %i.bir = xor i32 %i.bip, %i.biq
  %i.bis = tail call i32 @llvm.fshl.i32(i32 %i.bia, i32 %i.bia, i32 10)
  %i.bit = xor i32 %i.bir, %i.bis
  %i.biu = or i32 %i.bia, %i.bha
  %i.biv = and i32 %i.biu, %i.bga
  %i.biw = and i32 %i.bia, %i.bha
  %i.bix = or i32 %i.biv, %i.biw
  %i.biy = add i32 %i.bit, %i.bix
  %i.biz = add i32 %i.bio, %i.bfa                 ; 11 uses
  %i.bja = add i32 %i.biy, %i.bio                 ; 12 uses
  %i.bjb = tail call i32 @llvm.fshl.i32(i32 %i.biz, i32 %i.biz, i32 26)
  %i.bjc = tail call i32 @llvm.fshl.i32(i32 %i.biz, i32 %i.biz, i32 21)
  %i.bjd = xor i32 %i.bjb, %i.bjc
  %i.bje = tail call i32 @llvm.fshl.i32(i32 %i.biz, i32 %i.biz, i32 7)
  %i.bjf = xor i32 %i.bjd, %i.bje
  %i.bjg = xor i32 %i.bhz, %i.bgz
  %i.bjh = and i32 %i.biz, %i.bjg
  %i.bji = xor i32 %i.bjh, %i.bgz
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.bjk = load i32, ptr %i.bjj, align 16, !tbaa !16
  %i.bjl = add i32 %i.bjk, -1866530822
  %i.bjm = add i32 %i.bjl, %i.bfz
  %i.bjn = add i32 %i.bjm, %i.bji
  %i.bjo = add i32 %i.bjn, %i.bjf                 ; 2 uses
  %i.bjp = tail call i32 @llvm.fshl.i32(i32 %i.bja, i32 %i.bja, i32 30)
  %i.bjq = tail call i32 @llvm.fshl.i32(i32 %i.bja, i32 %i.bja, i32 19)
  %i.bjr = xor i32 %i.bjp, %i.bjq
  %i.bjs = tail call i32 @llvm.fshl.i32(i32 %i.bja, i32 %i.bja, i32 10)
  %i.bjt = xor i32 %i.bjr, %i.bjs
  %i.bju = or i32 %i.bja, %i.bia
  %i.bjv = and i32 %i.bju, %i.bha
  %i.bjw = and i32 %i.bja, %i.bia
  %i.bjx = or i32 %i.bjv, %i.bjw
  %i.bjy = add i32 %i.bjt, %i.bjx
  %i.bjz = xor i32 %i.biz, %i.bhz
  %i.bka = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !16
  %i.bkc = add i32 %i.bkb, -1538233109
  %i.bkd = add i32 %i.bkc, %i.bgz
  %i.bke = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.bkf = load i32, ptr %i.bke, align 8, !tbaa !16
  %i.bkg = add i32 %i.bkf, -1090935817
  %i.bkh = add i32 %i.bkg, %i.bhz
  %i.bki = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.bkj = load i32, ptr %i.bki, align 4, !tbaa !16
  %i.bkk = add i32 %i.bkj, -965641998
  %i.bkl = add i32 %i.bkk, %i.biz
  %i.bkm = add i32 %i.bjy, %i.bjo                 ; 12 uses
  %i.bkn = tail call i32 @llvm.fshl.i32(i32 %i.bkm, i32 %i.bkm, i32 30)
  %i.bko = tail call i32 @llvm.fshl.i32(i32 %i.bkm, i32 %i.bkm, i32 19)
  %i.bkp = xor i32 %i.bkn, %i.bko
  %i.bkq = tail call i32 @llvm.fshl.i32(i32 %i.bkm, i32 %i.bkm, i32 10)
  %i.bkr = xor i32 %i.bkp, %i.bkq
  %i.bks = or i32 %i.bkm, %i.bja
  %i.bkt = and i32 %i.bks, %i.bia
  %i.bku = and i32 %i.bkm, %i.bja
  %i.bkv = or i32 %i.bkt, %i.bku
  %i.bkw = add i32 %i.bkr, %i.bkv
  %i.bkx = load <4 x i32>, ptr %0, align 4, !tbaa !16
  %i.bky = add i32 %i.bjo, %i.bga                 ; 11 uses
  %i.bkz = tail call i32 @llvm.fshl.i32(i32 %i.bky, i32 %i.bky, i32 26)
  %i.bla = tail call i32 @llvm.fshl.i32(i32 %i.bky, i32 %i.bky, i32 21)
  %i.blb = xor i32 %i.bkz, %i.bla
  %i.blc = tail call i32 @llvm.fshl.i32(i32 %i.bky, i32 %i.bky, i32 7)
  %i.bld = xor i32 %i.blb, %i.blc
  %i.ble = and i32 %i.bky, %i.bjz
  %i.blf = xor i32 %i.ble, %i.bhz
  %i.blg = add i32 %i.bkd, %i.blf
  %i.blh = add i32 %i.blg, %i.bld                 ; 2 uses
  %i.bli = add i32 %i.blh, %i.bha                 ; 9 uses
  %i.blj = tail call i32 @llvm.fshl.i32(i32 %i.bli, i32 %i.bli, i32 26)
  %i.blk = tail call i32 @llvm.fshl.i32(i32 %i.bli, i32 %i.bli, i32 21)
  %i.bll = xor i32 %i.blj, %i.blk
  %i.blm = tail call i32 @llvm.fshl.i32(i32 %i.bli, i32 %i.bli, i32 7)
  %i.bln = xor i32 %i.bll, %i.blm
  %i.blo = xor i32 %i.bky, %i.biz
  %i.blp = and i32 %i.bli, %i.blo
  %i.blq = xor i32 %i.blp, %i.biz
  %i.blr = add i32 %i.bkh, %i.blq
  %i.bls = add i32 %i.blr, %i.bln                 ; 2 uses
  %i.blt = add i32 %i.bls, %i.bia                 ; 8 uses
  %i.blu = tail call i32 @llvm.fshl.i32(i32 %i.blt, i32 %i.blt, i32 26)
  %i.blv = tail call i32 @llvm.fshl.i32(i32 %i.blt, i32 %i.blt, i32 21)
  %i.blw = xor i32 %i.blu, %i.blv
  %i.blx = tail call i32 @llvm.fshl.i32(i32 %i.blt, i32 %i.blt, i32 7)
  %i.bly = xor i32 %i.blw, %i.blx
  %i.blz = xor i32 %i.bli, %i.bky
  %i.bma = and i32 %i.blt, %i.blz
  %i.bmb = xor i32 %i.bma, %i.bky
  %i.bmc = add i32 %i.bkl, %i.bmb
  %i.bmd = add i32 %i.bmc, %i.bly                 ; 2 uses
  %i.bme = add i32 %i.bmd, %i.bja
  %i.bmf = add i32 %i.bkw, %i.blh                 ; 11 uses
  %i.bmg = tail call i32 @llvm.fshl.i32(i32 %i.bmf, i32 %i.bmf, i32 30)
  %i.bmh = tail call i32 @llvm.fshl.i32(i32 %i.bmf, i32 %i.bmf, i32 19)
  %i.bmi = xor i32 %i.bmg, %i.bmh
  %i.bmj = tail call i32 @llvm.fshl.i32(i32 %i.bmf, i32 %i.bmf, i32 10)
  %i.bmk = xor i32 %i.bmi, %i.bmj
  %i.bml = or i32 %i.bmf, %i.bkm
  %i.bmm = and i32 %i.bml, %i.bja
  %i.bmn = and i32 %i.bmf, %i.bkm
  %i.bmo = or i32 %i.bmm, %i.bmn
  %i.bmp = add i32 %i.bmk, %i.bmo
  %i.bmq = add i32 %i.bmp, %i.bls                 ; 9 uses
  %i.bmr = tail call i32 @llvm.fshl.i32(i32 %i.bmq, i32 %i.bmq, i32 30)
  %i.bms = tail call i32 @llvm.fshl.i32(i32 %i.bmq, i32 %i.bmq, i32 19)
  %i.bmt = xor i32 %i.bmr, %i.bms
  %i.bmu = tail call i32 @llvm.fshl.i32(i32 %i.bmq, i32 %i.bmq, i32 10)
  %i.bmv = xor i32 %i.bmt, %i.bmu
  %i.bmw = or i32 %i.bmq, %i.bmf
  %i.bmx = and i32 %i.bmw, %i.bkm
  %i.bmy = and i32 %i.bmq, %i.bmf
  %i.bmz = or i32 %i.bmx, %i.bmy
  %i.bna = add i32 %i.bmv, %i.bmz
  %i.bnb = add i32 %i.bna, %i.bmd
  %i.bnc = insertelement <4 x i32> poison, i32 %i.bnb, i64 0
  %i.bnd = insertelement <4 x i32> %i.bnc, i32 %i.bmq, i64 1
  %i.bne = insertelement <4 x i32> %i.bnd, i32 %i.bmf, i64 2
  %i.bnf = insertelement <4 x i32> %i.bne, i32 %i.bkm, i64 3
  %i.bng = add <4 x i32> %i.bkx, %i.bnf
  store <4 x i32> %i.bng, ptr %0, align 4, !tbaa !16
  %i.bnh = load <4 x i32>, ptr %.sroa.75.0..sroa_idx, align 4, !tbaa !16
  %i.bni = insertelement <4 x i32> poison, i32 %i.bme, i64 0
  %i.bnj = insertelement <4 x i32> %i.bni, i32 %i.blt, i64 1
  %i.bnk = insertelement <4 x i32> %i.bnj, i32 %i.bli, i64 2
  %i.bnl = insertelement <4 x i32> %i.bnk, i32 %i.bky, i64 3
  %i.bnm = add <4 x i32> %i.bnh, %i.bnl
  store <4 x i32> %i.bnm, ptr %.sroa.75.0..sroa_idx, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @blk_SHA256_Final(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 5 uses
  %i.d = lshr i64 %i.c, 29
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %i.a, align 4, !tbaa !16
  %.tr = trunc i64 %i.c to i32                    ; 3 uses
  %i.g = shl i32 %.tr, 3
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !16
  %i.j = sub i64 55, %i.c
  %i.k = and i64 %i.j, 63
  %i.l = add nuw nsw i64 %i.k, 1                  ; 4 uses
  %i.m = and i32 %.tr, 63                         ; 2 uses
  %i.n = add i64 %i.l, %i.c
  store i64 %i.n, ptr %i.b, align 8, !tbaa !15
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i32 64, %i.m
  %i.p = zext nneg i32 %i.o to i64
  %spec.select38.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.p) ; 4 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select38.i to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.r = and i64 %i.c, 63
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 16 dereferenceable(1) @blk_SHA256_Final.pad, i64 %spec.select38.i, i1 false)
  %i.t = add i32 %spec.select.i, %.tr
  %i.u = and i32 %i.t, 63
  %.not36.i = icmp eq i32 %i.u, 0
  br i1 %.not36.i, label %2, label %blk_SHA256_Update.exit

2:                                                ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr @blk_SHA256_Final.pad, i64 %spec.select38.i
  %4 = sub nsw i64 %i.l, %spec.select38.i
  tail call fastcc void @blk_SHA256_Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.q)
  br label %bb.c

bb.c:                                             ; preds = %2, %bb.a
  %.032.i = phi ptr [ %3, %2 ], [ @blk_SHA256_Final.pad, %bb.a ] ; 2 uses
  %.031.i = phi i64 [ %4, %2 ], [ %i.l, %bb.a ]   ; 3 uses
  %5 = icmp ugt i64 %.031.i, 63
  br i1 %5, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.140.i = phi i64 [ %7, %.lr.ph.i ], [ %.031.i, %bb.c ]
  %.13339.i = phi ptr [ %6, %.lr.ph.i ], [ %.032.i, %bb.c ] ; 2 uses
  tail call fastcc void @blk_SHA256_Transform(ptr noundef nonnull %1, ptr noundef %.13339.i)
  %6 = getelementptr inbounds nuw i8, ptr %.13339.i, i64 64 ; 2 uses
  %7 = add i64 %.140.i, -64                       ; 3 uses
  %8 = icmp ugt i64 %7, 63
  br i1 %8, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.133.lcssa.i = phi ptr [ %.032.i, %bb.c ], [ %6, %.lr.ph.i ]
  %.1.lcssa.i = phi i64 [ %.031.i, %bb.c ], [ %7, %.lr.ph.i ] ; 2 uses
  %.not37.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not37.i, label %blk_SHA256_Update.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 1 %.133.lcssa.i, i64 %.1.lcssa.i, i1 false)
  br label %blk_SHA256_Update.exit

blk_SHA256_Update.exit:                           ; preds = %bb.b, %._crit_edge.i, %bb.d
  %i.w = load i64, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = and i32 %i.x, 63                         ; 3 uses
  %i.z = add i64 %i.w, 8
  store i64 %i.z, ptr %i.b, align 8, !tbaa !15
  %.not.i12 = icmp eq i32 %i.y, 0
  br i1 %.not.i12, label %._crit_edge.i18.thread, label %bb.e

bb.e:                                             ; preds = %blk_SHA256_Update.exit
  %i.aa = sub nuw nsw i32 64, %i.y
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 8) ; 2 uses
  %spec.select38.i13 = zext nneg i32 %i.ab to i64 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ad = and i64 %i.w, 63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.a, i64 %spec.select38.i13, i1 false)
  %i.af = add i32 %i.ab, %i.x
  %i.ag = and i32 %i.af, 63
  %.not36.i15 = icmp eq i32 %i.ag, 0
  br i1 %.not36.i15, label %._crit_edge.i18, label %blk_SHA256_Update.exit25

._crit_edge.i18:                                  ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select38.i13
  %i.ai = sub nuw nsw i64 8, %spec.select38.i13
  tail call fastcc void @blk_SHA256_Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.ac)
  %.not37.i21 = icmp samesign ult i32 %i.y, 57
  br i1 %.not37.i21, label %blk_SHA256_Update.exit25, label %._crit_edge.i18.thread

._crit_edge.i18.thread:                           ; preds = %blk_SHA256_Update.exit, %._crit_edge.i18
  %.1.lcssa.i2030 = phi i64 [ %i.ai, %._crit_edge.i18 ], [ 8, %blk_SHA256_Update.exit ]
  %.133.lcssa.i1929 = phi ptr [ %i.ah, %._crit_edge.i18 ], [ %i.a, %blk_SHA256_Update.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 1 %.133.lcssa.i1929, i64 %.1.lcssa.i2030, i1 false)
  br label %blk_SHA256_Update.exit25

blk_SHA256_Update.exit25:                         ; preds = %bb.e, %._crit_edge.i18, %._crit_edge.i18.thread
  %i.ak = load i32, ptr %1, align 8, !tbaa !16    ; 4 uses
  %i.al = lshr i32 %i.ak, 24
  %i.am = trunc nuw i32 %i.al to i8
  store i8 %i.am, ptr %0, align 1, !tbaa !19
  %i.an = lshr i32 %i.ak, 16
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !19
  %i.aq = lshr i32 %i.ak, 8
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !19
  %i.at = trunc i32 %i.ak to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.at, ptr %i.au, align 1, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16 ; 4 uses
  %i.ay = lshr i32 %i.ax, 24
  %i.az = trunc nuw i32 %i.ay to i8
  store i8 %i.az, ptr %i.av, align 1, !tbaa !19
  %i.ba = lshr i32 %i.ax, 16
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !19
  %i.bd = lshr i32 %i.ax, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !19
  %i.bg = trunc i32 %i.ax to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !16 ; 4 uses
  %i.bl = lshr i32 %i.bk, 24
  %i.bm = trunc nuw i32 %i.bl to i8
  store i8 %i.bm, ptr %i.bi, align 1, !tbaa !19
  %i.bn = lshr i32 %i.bk, 16
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !19
  %i.bq = lshr i32 %i.bk, 8
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !19
  %i.bt = trunc i32 %i.bk to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16 ; 4 uses
  %i.by = lshr i32 %i.bx, 24
  %i.bz = trunc nuw i32 %i.by to i8
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !19
  %i.ca = lshr i32 %i.bx, 16
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !19
  %i.cd = lshr i32 %i.bx, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !19
  %i.cg = trunc i32 %i.bx to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !16 ; 4 uses
  %i.cl = lshr i32 %i.ck, 24
  %i.cm = trunc nuw i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !19
  %i.cn = lshr i32 %i.ck, 16
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !19
  %i.cq = lshr i32 %i.ck, 8
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !19
  %i.ct = trunc i32 %i.ck to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !19
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !16 ; 4 uses
  %i.cy = lshr i32 %i.cx, 24
  %i.cz = trunc nuw i32 %i.cy to i8
  store i8 %i.cz, ptr %i.cv, align 1, !tbaa !19
  %i.da = lshr i32 %i.cx, 16
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !19
  %i.dd = lshr i32 %i.cx, 8
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.de, ptr %i.df, align 1, !tbaa !19
  %i.dg = trunc i32 %i.cx to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !16 ; 4 uses
  %i.dl = lshr i32 %i.dk, 24
  %i.dm = trunc nuw i32 %i.dl to i8
  store i8 %i.dm, ptr %i.di, align 1, !tbaa !19
  %i.dn = lshr i32 %i.dk, 16
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !19
  %i.dq = lshr i32 %i.dk, 8
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !19
  %i.dt = trunc i32 %i.dk to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !16 ; 4 uses
  %i.dy = lshr i32 %i.dx, 24
  %i.dz = trunc nuw i32 %i.dy to i8
  store i8 %i.dz, ptr %i.dv, align 1, !tbaa !19
  %i.ea = lshr i32 %i.dx, 16
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !19
  %i.ed = lshr i32 %i.dx, 8
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !19
  %i.eg = trunc i32 %i.dx to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
end_hunk_1
