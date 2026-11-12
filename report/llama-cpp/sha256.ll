Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/sha256?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sha256_t = type { [8 x i32], i64, [64 x i8] }

@K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @sha256_init(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #0 {
bb.a:
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @sha256_hash(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.sha256_t, align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %3, align 16, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.a, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 0, ptr %i.b, align 16, !tbaa !12
  %.not11.i = icmp eq i64 %2, 0
  br i1 %.not11.i, label %sha256_update.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.d = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ]
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.0813.i = phi i64 [ %2, %.lr.ph.i ], [ %i.k, %bb.d ]
  %.0912.i = phi ptr [ %1, %.lr.ph.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0912.i, i64 1
  %i.f = load i8, ptr %.0912.i, align 1, !tbaa !13
  %i.g = add nuw nsw i32 %.014.i, 1               ; 2 uses
  %i.h = zext nneg i32 %.014.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  store i8 %i.f, ptr %i.i, align 1, !tbaa !13
  %i.j = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.j, ptr %i.b, align 16, !tbaa !12
  %i.k = add i64 %.0813.i, -1                     ; 2 uses
  %i.l = icmp eq i32 %i.g, 64
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @sha256_write_byte_block(ptr noundef nonnull %3)
  %.pre.i = load i64, ptr %i.b, align 16, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ %.pre.i, %bb.c ], [ %i.j, %bb.b ]
  %.1.i = phi i32 [ 0, %bb.c ], [ %i.g, %bb.b ]
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %sha256_update.exit, label %bb.b, !llvm.loop !0

sha256_update.exit:                               ; preds = %bb.d, %bb.a
  call void @sha256_final(ptr noundef nonnull %3, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @sha256_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not11 = icmp eq i64 %2, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.f = phi i64 [ %i.b, %.lr.ph ], [ %i.o, %bb.d ]
  %.014 = phi i32 [ %i.d, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.0813 = phi i64 [ %2, %.lr.ph ], [ %i.m, %bb.d ]
  %.0912 = phi ptr [ %1, %.lr.ph ], [ %i.g, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0912, i64 1
  %i.h = load i8, ptr %.0912, align 1, !tbaa !13
  %i.i = add nuw nsw i32 %.014, 1                 ; 2 uses
  %i.j = zext nneg i32 %.014 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  store i8 %i.h, ptr %i.k, align 1, !tbaa !13
  %i.l = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !12
  %i.m = add i64 %.0813, -1                       ; 2 uses
  %i.n = icmp eq i32 %i.i, 64
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @sha256_write_byte_block(ptr noundef nonnull %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i64 [ %.pre, %bb.c ], [ %i.l, %bb.b ]
  %.1 = phi i32 [ 0, %bb.c ], [ %i.i, %bb.b ]
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @sha256_final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 10 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = and i64 %i.b, 63
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 -128, ptr %i.g, align 1, !tbaa !13
  %.03135 = add nuw nsw i32 %i.d, 1               ; 2 uses
  %.not36 = icmp eq i32 %.03135, 56
  br i1 %.not36, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %bb.a
  %i.h = lshr i64 %i.b, 53
  %i.i = trunc i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.i, ptr %i.j, align 8, !tbaa !13
  %i.k = lshr i64 %i.b, 45
  %i.l = trunc i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %i.l, ptr %i.m, align 1, !tbaa !13
  %i.n = lshr i64 %i.b, 37
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %i.o, ptr %i.p, align 2, !tbaa !13
  %i.q = lshr i64 %i.b, 29
  %i.r = trunc i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.r, ptr %i.s, align 1, !tbaa !13
  %i.t = lshr i64 %i.b, 21
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.u, ptr %i.v, align 4, !tbaa !13
  %i.w = lshr i64 %i.b, 13
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.x, ptr %i.y, align 1, !tbaa !13
  %i.z = lshr i64 %i.b, 5
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %i.aa, ptr %i.ab, align 2, !tbaa !13
  %.tr = trunc i64 %i.b to i8
  %i.ac = shl i8 %.tr, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !13
  tail call fastcc void @sha256_write_byte_block(ptr noundef nonnull %0)
  %i.ae = load i32, ptr %0, align 8, !tbaa !9
  %i.af = lshr i32 %i.ae, 24
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ag, ptr %1, align 1, !tbaa !13
  %i.ai = load i32, ptr %0, align 8, !tbaa !9
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !13
  %i.am = load i32, ptr %0, align 8, !tbaa !9
  %i.an = lshr i32 %i.am, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !13
  %i.aq = load i32, ptr %0, align 8, !tbaa !9
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %2 = getelementptr i8, ptr %0, i64 7
  %3 = load i8, ptr %2, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %3, ptr %i.as, align 1, !tbaa !13
  %i.av = load i32, ptr %i.at, align 4, !tbaa !9
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !13
  %i.az = load i32, ptr %i.at, align 4, !tbaa !9
  %i.ba = lshr i32 %i.az, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !13
  %i.bd = load i32, ptr %i.at, align 4, !tbaa !9
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %4 = getelementptr i8, ptr %0, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %5, ptr %i.bf, align 1, !tbaa !13
  %i.bi = load i32, ptr %i.bg, align 8, !tbaa !9
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !13
  %i.bm = load i32, ptr %i.bg, align 8, !tbaa !9
  %i.bn = lshr i32 %i.bm, 8
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !13
  %i.bq = load i32, ptr %i.bg, align 8, !tbaa !9
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %6 = getelementptr i8, ptr %0, i64 15
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %7, ptr %i.bs, align 1, !tbaa !13
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !9
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !13
  %i.bz = load i32, ptr %i.bt, align 4, !tbaa !9
  %i.ca = lshr i32 %i.bz, 8
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !13
  %i.cd = load i32, ptr %i.bt, align 4, !tbaa !9
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %8 = getelementptr i8, ptr %0, i64 19
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %9, ptr %i.cf, align 1, !tbaa !13
  %i.ci = load i32, ptr %i.cg, align 8, !tbaa !9
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !13
  %i.cm = load i32, ptr %i.cg, align 8, !tbaa !9
  %i.cn = lshr i32 %i.cm, 8
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.co, ptr %i.cl, align 1, !tbaa !13
  %i.cq = load i32, ptr %i.cg, align 8, !tbaa !9
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %10 = getelementptr i8, ptr %0, i64 23
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %11, ptr %i.cs, align 1, !tbaa !13
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !9
  %i.cw = lshr i32 %i.cv, 16
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.cx, ptr %i.cu, align 1, !tbaa !13
  %i.cz = load i32, ptr %i.ct, align 4, !tbaa !9
  %i.da = lshr i32 %i.cz, 8
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.db, ptr %i.cy, align 1, !tbaa !13
  %i.dd = load i32, ptr %i.ct, align 4, !tbaa !9
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %12 = getelementptr i8, ptr %0, i64 27
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %13, ptr %i.df, align 1, !tbaa !13
  %i.di = load i32, ptr %i.dg, align 8, !tbaa !9
  %i.dj = lshr i32 %i.di, 16
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.dk, ptr %i.dh, align 1, !tbaa !13
  %i.dm = load i32, ptr %i.dg, align 8, !tbaa !9
  %i.dn = lshr i32 %i.dm, 8
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !13
  %i.dq = load i32, ptr %i.dg, align 8, !tbaa !9
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %14 = getelementptr i8, ptr %0, i64 31
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %15, ptr %i.ds, align 1, !tbaa !13
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !9
  %i.dw = lshr i32 %i.dv, 16
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.dx, ptr %i.du, align 1, !tbaa !13
  %i.dz = load i32, ptr %i.dt, align 4, !tbaa !9
  %i.ea = lshr i32 %i.dz, 8
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !13
  %i.ed = load i32, ptr %i.dt, align 4, !tbaa !9
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !13
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 8, !tbaa !9
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.cg, align 8, !tbaa !9
  store i64 0, ptr %i.a, align 8, !tbaa !12
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03137 = phi i32 [ %.031, %bb.c ], [ %.03135, %bb.a ]
  %i.ef = and i32 %.03137, 63                     ; 3 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @sha256_write_byte_block(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.eh = zext nneg i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eh
  store i8 0, ptr %i.ei, align 1, !tbaa !13
  %.031 = add nuw nsw i32 %i.ef, 1                ; 2 uses
  %.not = icmp eq i32 %.031, 56
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha256_write_byte_block(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw i32 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or disjoint i32 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = or disjoint i32 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw i32 %i.u, 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = or disjoint i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw i32 %i.am, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 16
  %i.as = or disjoint i32 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = or disjoint i32 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw i32 %i.be, 24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 16
  %i.bk = or disjoint i32 %i.bj, %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = or disjoint i32 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw i32 %i.bw, 24
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !13
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 16
  %i.cc = or disjoint i32 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = or disjoint i32 %i.cc, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = zext i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw i32 %i.co, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 16
  %i.cu = or disjoint i32 %i.ct, %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = zext i8 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 8
  %i.cz = or disjoint i32 %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.db = load i8, ptr %i.da, align 1, !tbaa !13
  %i.dc = zext i8 %i.db to i32
  %i.dd = or disjoint i32 %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw i32 %i.dg, 24
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 16
  %i.dm = or disjoint i32 %i.dl, %i.dh
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = or disjoint i32 %i.dm, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.dr, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw i32 %i.dy, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 16
  %i.ee = or disjoint i32 %i.ed, %i.dz
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 8
  %i.ej = or disjoint i32 %i.ee, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 71
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13
  %i.em = zext i8 %i.el to i32
  %i.en = or disjoint i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !13
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw i32 %i.eq, 24
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.et = load i8, ptr %i.es, align 1, !tbaa !13
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 16
  %i.ew = or disjoint i32 %i.ev, %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !13
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8
end_hunk_0
