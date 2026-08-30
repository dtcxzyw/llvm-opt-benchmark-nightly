Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sha?download=true
inline.NumInlined: 244
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wc_Sha = type { i32, i32, i32, [16 x i32], [5 x i32], ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 1) i32 @wc_InitSha_ex(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -1009589776, ptr %i.d, align 4, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %0, i8 0, i64 76, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_ShaUpdate(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %2, 0
  %or.cond3 = and i1 %i.c, %i.e
  br i1 %or.cond3, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %0, align 8, !tbaa !12     ; 5 uses
  %i.g = icmp ugt i32 %i.f, 63
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 2 uses
  %i.j = add i32 %i.i, %2                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !13
  %i.k = icmp ult i32 %i.j, %i.i
  br i1 %i.k, label %bb.f, label %AddLength.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !14
  br label %AddLength.exit

AddLength.exit:                                   ; preds = %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %AddLength.exit
  %i.p = sub nuw nsw i32 64, %i.f                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = icmp uge i32 %2, %i.p
  %i.r = sext i1 %i.q to i32
  store volatile i32 %i.r, ptr %i.a, align 4, !tbaa !11
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !11
  %i.s = xor i32 %.0..0..0..0..0..0..i, -1
  %i.t = and i32 %2, %i.s
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4, !tbaa !11
  %i.u = and i32 %.0..0..0..0..0..0.2.i, %i.p
  %i.v = or i32 %i.u, %i.t                        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = zext nneg i32 %i.f to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.w
  %i.y = zext i32 %i.v to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %1, i64 %i.y, i1 false)
  %i.z = add i32 %i.v, %i.f                       ; 2 uses
  store i32 %i.z, ptr %0, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.ab = sub i32 %2, %i.v                        ; 2 uses
  %i.ac = icmp eq i32 %i.z, 64
  br i1 %i.ac, label %.lr.ph57.i.preheader, label %bb.h

.lr.ph57.i.preheader:                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ae = load <4 x i32>, ptr %i.o, align 4, !tbaa !11
  %i.af = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ae)
  store <4 x i32> %i.af, ptr %i.o, align 4, !tbaa !11
  %i.ag = load <4 x i32>, ptr %i.ad, align 4, !tbaa !11
  %i.ah = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ag)
  store <4 x i32> %i.ah, ptr %i.ad, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aj = load <4 x i32>, ptr %i.ai, align 4, !tbaa !11
  %i.ak = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.aj)
  store <4 x i32> %i.ak, ptr %i.ai, align 4, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.am = load <4 x i32>, ptr %i.al, align 4, !tbaa !11
  %i.an = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.am)
  store <4 x i32> %i.an, ptr %i.al, align 4, !tbaa !11
  tail call fastcc void @Transform(ptr noundef %0, ptr noundef %i.o)
  store i32 0, ptr %0, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph57.i.preheader, %AddLength.exit
  %.053 = phi ptr [ %i.aa, %.lr.ph57.i.preheader ], [ %i.aa, %bb.g ], [ %1, %AddLength.exit ] ; 2 uses
  %.051 = phi i32 [ %i.ab, %.lr.ph57.i.preheader ], [ %i.ab, %bb.g ], [ %2, %AddLength.exit ] ; 3 uses
  %i.ao = icmp ugt i32 %.051, 63
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  br label %.lr.ph57.i75.preheader.us

.lr.ph57.i75.preheader.us:                        ; preds = %.lr.ph, %.lr.ph57.i75.preheader.us
  %.15283.us = phi i32 [ %i.bb, %.lr.ph57.i75.preheader.us ], [ %.051, %.lr.ph ]
  %.15482.us = phi ptr [ %i.ba, %.lr.ph57.i75.preheader.us ], [ %.053, %.lr.ph ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.o, ptr noundef nonnull align 1 dereferenceable(64) %.15482.us, i64 64, i1 false)
  %i.as = load <4 x i32>, ptr %i.o, align 4, !tbaa !11
  %i.at = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.as)
  store <4 x i32> %i.at, ptr %i.o, align 4, !tbaa !11
  %i.au = load <4 x i32>, ptr %i.ap, align 4, !tbaa !11
  %i.av = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.au)
  store <4 x i32> %i.av, ptr %i.ap, align 4, !tbaa !11
  %i.aw = load <4 x i32>, ptr %i.aq, align 4, !tbaa !11
  %i.ax = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.aw)
  store <4 x i32> %i.ax, ptr %i.aq, align 4, !tbaa !11
  %i.ay = load <4 x i32>, ptr %i.ar, align 4, !tbaa !11
  %i.az = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ay)
  store <4 x i32> %i.az, ptr %i.ar, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %.15482.us, i64 64 ; 2 uses
  %i.bb = add i32 %.15283.us, -64                 ; 3 uses
  tail call fastcc void @Transform(ptr noundef %0, ptr noundef %i.o)
  %i.bc = icmp ugt i32 %i.bb, 63
  br i1 %i.bc, label %.lr.ph57.i75.preheader.us, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph57.i75.preheader.us, %bb.h
  %.154.lcssa = phi ptr [ %.053, %bb.h ], [ %i.ba, %.lr.ph57.i75.preheader.us ]
  %.152.lcssa = phi i32 [ %.051, %bb.h ], [ %i.bb, %.lr.ph57.i75.preheader.us ] ; 3 uses
  %.not59 = icmp eq i32 %.152.lcssa, 0
  br i1 %.not59, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bd = zext nneg i32 %.152.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 1 %.154.lcssa, i64 %i.bd, i1 false)
  store i32 %.152.lcssa, ptr %0, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -132, %bb.d ], [ -173, %bb.a ], [ 0, %bb.c ], [ -173, %bb.b ], [ 0, %bb.i ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Transform(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11   ; 2 uses
  %i.k = xor i32 %i.h, %i.f
  %i.l = and i32 %i.k, %i.d
  %i.m = xor i32 %i.l, %i.h
  %i.n = load i32, ptr %1, align 4, !tbaa !11     ; 2 uses
  %i.o = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 5)
  %i.p = add i32 %i.o, 1518500249
  %i.q = add i32 %i.p, %i.j
  %i.r = add i32 %i.q, %i.n
  %i.s = add i32 %i.r, %i.m                       ; 5 uses
  %i.t = tail call noundef i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 30) ; 4 uses
  %i.u = xor i32 %i.t, %i.f
  %i.v = and i32 %i.u, %i.b
  %i.w = xor i32 %i.v, %i.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11   ; 2 uses
  %i.z = tail call noundef i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 5)
  %i.aa = add i32 %i.h, 1518500249
  %i.ab = add i32 %i.aa, %i.w
  %i.ac = add i32 %i.ab, %i.y
  %i.ad = add i32 %i.ac, %i.z                     ; 5 uses
  %i.ae = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 30) ; 4 uses
  %i.af = xor i32 %i.t, %i.ae
  %i.ag = and i32 %i.s, %i.af
  %i.ah = xor i32 %i.ag, %i.t
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !11 ; 3 uses
  %i.ak = tail call noundef i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 5)
  %i.al = add i32 %i.f, 1518500249
  %i.am = add i32 %i.al, %i.aj
  %i.an = add i32 %i.am, %i.ah
  %i.ao = add i32 %i.an, %i.ak                    ; 5 uses
  %i.ap = tail call noundef i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 30) ; 4 uses
  %i.aq = xor i32 %i.ap, %i.ae
  %i.ar = and i32 %i.ad, %i.aq
  %i.as = xor i32 %i.ar, %i.ae
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11 ; 3 uses
  %i.av = tail call noundef i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 5)
  %i.aw = add i32 %i.t, 1518500249
  %i.ax = add i32 %i.aw, %i.au
  %i.ay = add i32 %i.ax, %i.as
  %i.az = add i32 %i.ay, %i.av                    ; 5 uses
  %i.ba = tail call noundef i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 30) ; 4 uses
  %i.bb = xor i32 %i.ba, %i.ap
  %i.bc = and i32 %i.ao, %i.bb
  %i.bd = xor i32 %i.bc, %i.ap
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !11 ; 3 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 5)
  %i.bh = add i32 %i.ae, 1518500249
  %i.bi = add i32 %i.bh, %i.bf
  %i.bj = add i32 %i.bi, %i.bd
  %i.bk = add i32 %i.bj, %i.bg                    ; 5 uses
  %i.bl = tail call noundef i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 30) ; 4 uses
  %i.bm = xor i32 %i.bl, %i.ba
  %i.bn = and i32 %i.az, %i.bm
  %i.bo = xor i32 %i.bn, %i.ba
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !11 ; 3 uses
  %i.br = tail call noundef i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 5)
  %i.bs = add i32 %i.bq, 1518500249
  %i.bt = add i32 %i.bs, %i.ap
  %i.bu = add i32 %i.bt, %i.bo
  %i.bv = add i32 %i.bu, %i.br                    ; 5 uses
  %i.bw = tail call noundef i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 30) ; 4 uses
  %i.bx = xor i32 %i.bw, %i.bl
  %i.by = and i32 %i.bk, %i.bx
  %i.bz = xor i32 %i.by, %i.bl
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !11 ; 3 uses
  %i.cc = tail call noundef i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 5)
  %i.cd = add i32 %i.cb, 1518500249
  %i.ce = add i32 %i.cd, %i.ba
  %i.cf = add i32 %i.ce, %i.bz
  %i.cg = add i32 %i.cf, %i.cc                    ; 5 uses
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 30) ; 4 uses
  %i.ci = xor i32 %i.ch, %i.bw
  %i.cj = and i32 %i.bv, %i.ci
  %i.ck = xor i32 %i.cj, %i.bw
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !11 ; 3 uses
  %i.cn = tail call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 5)
  %i.co = add i32 %i.cm, 1518500249
  %i.cp = add i32 %i.co, %i.bl
  %i.cq = add i32 %i.cp, %i.ck
  %i.cr = add i32 %i.cq, %i.cn                    ; 5 uses
  %i.cs = tail call noundef i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 30) ; 4 uses
  %i.ct = xor i32 %i.cs, %i.ch
  %i.cu = and i32 %i.cg, %i.ct
  %i.cv = xor i32 %i.cu, %i.ch
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !11 ; 4 uses
  %i.cy = tail call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 5)
  %i.cz = add i32 %i.cx, 1518500249
  %i.da = add i32 %i.cz, %i.bw
  %i.db = add i32 %i.da, %i.cv
  %i.dc = add i32 %i.db, %i.cy                    ; 5 uses
  %i.dd = tail call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 30) ; 4 uses
  %i.de = xor i32 %i.dd, %i.cs
  %i.df = and i32 %i.cr, %i.de
  %i.dg = xor i32 %i.df, %i.cs
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !11 ; 4 uses
  %i.dj = tail call noundef i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 5)
  %i.dk = add i32 %i.di, 1518500249
  %i.dl = add i32 %i.dk, %i.ch
  %i.dm = add i32 %i.dl, %i.dg
  %i.dn = add i32 %i.dm, %i.dj                    ; 5 uses
  %i.do = tail call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 30) ; 4 uses
  %i.dp = xor i32 %i.do, %i.dd
  %i.dq = and i32 %i.dc, %i.dp
  %i.dr = xor i32 %i.dq, %i.dd
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !11 ; 4 uses
  %i.du = tail call noundef i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 5)
  %i.dv = add i32 %i.dt, 1518500249
  %i.dw = add i32 %i.dv, %i.cs
  %i.dx = add i32 %i.dw, %i.dr
  %i.dy = add i32 %i.dx, %i.du                    ; 5 uses
  %i.dz = tail call noundef i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 30) ; 4 uses
  %i.ea = xor i32 %i.dz, %i.do
  %i.eb = and i32 %i.dn, %i.ea
  %i.ec = xor i32 %i.eb, %i.do
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !11 ; 4 uses
  %i.ef = tail call noundef i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 5)
  %i.eg = add i32 %i.ee, 1518500249
  %i.eh = add i32 %i.eg, %i.dd
  %i.ei = add i32 %i.eh, %i.ec
  %i.ej = add i32 %i.ei, %i.ef                    ; 5 uses
  %i.ek = tail call noundef i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 30) ; 4 uses
  %i.el = xor i32 %i.ek, %i.dz
  %i.em = and i32 %i.dy, %i.el
  %i.en = xor i32 %i.em, %i.dz
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !11 ; 4 uses
  %i.eq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 5)
  %i.er = add i32 %i.ep, 1518500249
  %i.es = add i32 %i.er, %i.do
  %i.et = add i32 %i.es, %i.en
  %i.eu = add i32 %i.et, %i.eq                    ; 5 uses
  %i.ev = tail call noundef i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 30) ; 4 uses
  %i.ew = xor i32 %i.ev, %i.ek
  %i.ex = and i32 %i.ej, %i.ew
  %i.ey = xor i32 %i.ex, %i.ek
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !11 ; 5 uses
  %i.fb = tail call noundef i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 5)
  %i.fc = add i32 %i.fa, 1518500249
  %i.fd = add i32 %i.fc, %i.dz
  %i.fe = add i32 %i.fd, %i.ey
  %i.ff = add i32 %i.fe, %i.fb                    ; 5 uses
  %i.fg = tail call noundef i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 30) ; 4 uses
  %i.fh = xor i32 %i.fg, %i.ev
  %i.fi = and i32 %i.eu, %i.fh
  %i.fj = xor i32 %i.fi, %i.ev
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !11 ; 5 uses
  %i.fm = tail call noundef i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 5)
  %i.fn = add i32 %i.fl, 1518500249
  %i.fo = add i32 %i.fn, %i.ek
  %i.fp = add i32 %i.fo, %i.fj
  %i.fq = add i32 %i.fp, %i.fm                    ; 5 uses
  %i.fr = tail call noundef i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 30) ; 4 uses
  %i.fs = xor i32 %i.fr, %i.fg
  %i.ft = and i32 %i.ff, %i.fs
  %i.fu = xor i32 %i.ft, %i.fg
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !11 ; 5 uses
  %i.fx = tail call noundef i32 @llvm.fshl.i32(i32 %i.fq, i32 %i.fq, i32 5)
  %i.fy = add i32 %i.fw, 1518500249
  %i.fz = add i32 %i.fy, %i.ev
  %i.ga = add i32 %i.fz, %i.fu
  %i.gb = add i32 %i.ga, %i.fx                    ; 5 uses
  %i.gc = tail call noundef i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 30) ; 4 uses
  %i.gd = xor i32 %i.gc, %i.fr
end_hunk_0
