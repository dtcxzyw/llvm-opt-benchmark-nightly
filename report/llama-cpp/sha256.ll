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
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.0813.i = phi i64 [ %2, %.lr.ph.i ], [ %i.j, %bb.d ]
  %.0912.i = phi ptr [ %1, %.lr.ph.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0912.i, i64 1
  %i.e = load i8, ptr %.0912.i, align 1, !tbaa !13
  %i.f = add nuw nsw i32 %.014.i, 1               ; 2 uses
  %i.g = zext nneg i32 %.014.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  store i8 %i.e, ptr %i.h, align 1, !tbaa !13
  %4 = load i64, ptr %i.b, align 16, !tbaa !12
  %i.i = add i64 %4, 1
  store i64 %i.i, ptr %i.b, align 16, !tbaa !12
  %i.j = add i64 %.0813.i, -1                     ; 2 uses
  %i.k = icmp eq i32 %i.f, 64
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @sha256_write_byte_block(ptr noundef nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ 0, %bb.c ], [ %i.f, %bb.b ]
  %.not.i = icmp eq i64 %i.j, 0
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.014 = phi i32 [ %i.d, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.0813 = phi i64 [ %2, %.lr.ph ], [ %i.l, %bb.d ]
  %.0912 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0912, i64 1
  %i.g = load i8, ptr %.0912, align 1, !tbaa !13
  %i.h = add nuw nsw i32 %.014, 1                 ; 2 uses
  %i.i = zext nneg i32 %.014 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  store i8 %i.g, ptr %i.j, align 1, !tbaa !13
  %3 = load i64, ptr %i.a, align 8, !tbaa !12
  %i.k = add i64 %3, 1
  store i64 %i.k, ptr %i.a, align 8, !tbaa !12
  %i.l = add i64 %.0813, -1                       ; 2 uses
  %i.m = icmp eq i32 %i.h, 64
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @sha256_write_byte_block(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  %.not = icmp eq i64 %i.l, 0
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
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9
  %i.av = lshr i32 %i.au, 24
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !13
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !9
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !13
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !9
  %i.bd = lshr i32 %i.bc, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !13
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !9
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !9
  %i.bl = lshr i32 %i.bk, 24
  %i.bm = trunc nuw i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bm, ptr %i.bi, align 1, !tbaa !13
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !9
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !13
  %i.bs = load i32, ptr %i.bj, align 8, !tbaa !9
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !13
  %i.bw = load i32, ptr %i.bj, align 8, !tbaa !9
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !9
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !13
  %i.ce = load i32, ptr %i.bz, align 4, !tbaa !9
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !13
  %i.ci = load i32, ptr %i.bz, align 4, !tbaa !9
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !13
  %i.cm = load i32, ptr %i.bz, align 4, !tbaa !9
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !9
  %i.cr = lshr i32 %i.cq, 24
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !13
  %i.cu = load i32, ptr %i.cp, align 8, !tbaa !9
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.cw, ptr %i.ct, align 1, !tbaa !13
  %i.cy = load i32, ptr %i.cp, align 8, !tbaa !9
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.da, ptr %i.cx, align 1, !tbaa !13
  %i.dc = load i32, ptr %i.cp, align 8, !tbaa !9
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !9
  %i.dh = lshr i32 %i.dg, 24
  %i.di = trunc nuw i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.di, ptr %i.de, align 1, !tbaa !13
  %i.dk = load i32, ptr %i.df, align 4, !tbaa !9
  %i.dl = lshr i32 %i.dk, 16
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !13
  %i.do = load i32, ptr %i.df, align 4, !tbaa !9
  %i.dp = lshr i32 %i.do, 8
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !13
  %i.ds = load i32, ptr %i.df, align 4, !tbaa !9
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !9
  %i.dx = lshr i32 %i.dw, 24
  %i.dy = trunc nuw i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !13
  %i.ea = load i32, ptr %i.dv, align 8, !tbaa !9
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !13
  %i.ee = load i32, ptr %i.dv, align 8, !tbaa !9
  %i.ef = lshr i32 %i.ee, 8
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !13
  %i.ei = load i32, ptr %i.dv, align 8, !tbaa !9
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = lshr i32 %i.em, 24
  %i.eo = trunc nuw i32 %i.en to i8
end_hunk_0
