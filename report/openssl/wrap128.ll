loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@default_iv = internal constant [8 x i8] c"\A6\A6\A6\A6\A6\A6\A6\A6", align 1
@default_aiv = internal constant [4 x i8] c"\A6YY\A6", align 1
@CRYPTO_128_unwrap_pad.zeros = internal global [8 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define range(i64 0, 2147483657) i64 @CRYPTO_128_wrap(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = and i64 %4, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = add i64 %4, -2147483649
  %i.e = icmp ult i64 %i.d, -2147483633
  %or.cond3 = or i1 %i.c, %i.e
  br i1 %or.cond3, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %3, i64 %4, i1 false)
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @default_iv, ptr %1
  %i.g = load i64, ptr %spec.store.select, align 1
  store i64 %i.g, ptr %i.a, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 12 uses
  %i.m = add nsw i64 %4, -8
  %i.n = lshr exact i64 %i.m, 3                   ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 5 uses
  %i.p = add nuw nsw i64 %i.n, 2                  ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %bb.d
  %.143 = phi i64 [ 1, %.preheader.preheader ], [ %i.ai, %bb.d ] ; 6 uses
  %.03841 = phi ptr [ %i.f, %.preheader.preheader ], [ %i.aj, %bb.d ] ; 3 uses
  %i.q = load i64, ptr %.03841, align 1
  store i64 %i.q, ptr %i.h, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.r = trunc i64 %.143 to i8
  %i.s = load i8, ptr %i.i, align 1, !tbaa !8
  %i.t = xor i8 %i.s, %i.r
  store i8 %i.t, ptr %i.i, align 1, !tbaa !8
  %i.u = icmp samesign ugt i64 %.143, 255
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load i8, ptr %i.j, align 2, !tbaa !8
  %i.w = lshr i64 %.143, 8
  %i.x = trunc i64 %i.w to i8
  %i.y = xor i8 %i.v, %i.x
  store i8 %i.y, ptr %i.j, align 2, !tbaa !8
  %i.z = load i8, ptr %i.k, align 1, !tbaa !8
  %i.aa = lshr i64 %.143, 16
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = xor i8 %i.z, %i.ab
  store i8 %i.ac, ptr %i.k, align 1, !tbaa !8
  %i.ad = load i8, ptr %i.l, align 4, !tbaa !8
  %i.ae = lshr i64 %.143, 24
  %i.af = trunc i64 %i.ae to i8
  %i.ag = xor i8 %i.ad, %i.af
  store i8 %i.ag, ptr %i.l, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = load i64, ptr %i.h, align 8
  store i64 %i.ah, ptr %.03841, align 1
  %i.ai = add nuw nsw i64 %.143, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03841, i64 8
  %exitcond.not = icmp eq i64 %i.ai, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.d
  %i.ak = add nuw nsw i64 %i.o, %i.p              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %._crit_edge
  %.143.1 = phi i64 [ %i.p, %._crit_edge ], [ %i.bd, %bb.g ] ; 6 uses
  %.03841.1 = phi ptr [ %i.f, %._crit_edge ], [ %i.be, %bb.g ] ; 3 uses
  %i.al = load i64, ptr %.03841.1, align 1
  store i64 %i.al, ptr %i.h, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.am = trunc i64 %.143.1 to i8
  %i.an = load i8, ptr %i.i, align 1, !tbaa !8
  %i.ao = xor i8 %i.an, %i.am
  store i8 %i.ao, ptr %i.i, align 1, !tbaa !8
  %i.ap = icmp samesign ugt i64 %.143.1, 255
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load i8, ptr %i.j, align 2, !tbaa !8
  %i.ar = lshr i64 %.143.1, 8
  %i.as = trunc i64 %i.ar to i8
  %i.at = xor i8 %i.aq, %i.as
  store i8 %i.at, ptr %i.j, align 2, !tbaa !8
  %i.au = load i8, ptr %i.k, align 1, !tbaa !8
  %i.av = lshr i64 %.143.1, 16
  %i.aw = trunc i64 %i.av to i8
  %i.ax = xor i8 %i.au, %i.aw
  store i8 %i.ax, ptr %i.k, align 1, !tbaa !8
  %i.ay = load i8, ptr %i.l, align 4, !tbaa !8
  %i.az = lshr i64 %.143.1, 24
  %i.ba = trunc i64 %i.az to i8
  %i.bb = xor i8 %i.ay, %i.ba
  store i8 %i.bb, ptr %i.l, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = load i64, ptr %i.h, align 8
  store i64 %i.bc, ptr %.03841.1, align 1
  %i.bd = add nuw nsw i64 %.143.1, 1              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03841.1, i64 8
  %exitcond.1.not = icmp eq i64 %i.bd, %i.ak
  br i1 %exitcond.1.not, label %._crit_edge.1, label %bb.e, !llvm.loop !9

._crit_edge.1:                                    ; preds = %bb.g
  %i.bf = add nuw nsw i64 %i.o, %i.ak             ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %._crit_edge.1
  %.143.2 = phi i64 [ %i.ak, %._crit_edge.1 ], [ %i.by, %bb.j ] ; 6 uses
  %.03841.2 = phi ptr [ %i.f, %._crit_edge.1 ], [ %i.bz, %bb.j ] ; 3 uses
  %i.bg = load i64, ptr %.03841.2, align 1
  store i64 %i.bg, ptr %i.h, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.bh = trunc i64 %.143.2 to i8
  %i.bi = load i8, ptr %i.i, align 1, !tbaa !8
  %i.bj = xor i8 %i.bi, %i.bh
  store i8 %i.bj, ptr %i.i, align 1, !tbaa !8
  %i.bk = icmp samesign ugt i64 %.143.2, 255
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load i8, ptr %i.j, align 2, !tbaa !8
  %i.bm = lshr i64 %.143.2, 8
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = xor i8 %i.bl, %i.bn
  store i8 %i.bo, ptr %i.j, align 2, !tbaa !8
  %i.bp = load i8, ptr %i.k, align 1, !tbaa !8
  %i.bq = lshr i64 %.143.2, 16
  %i.br = trunc i64 %i.bq to i8
  %i.bs = xor i8 %i.bp, %i.br
  store i8 %i.bs, ptr %i.k, align 1, !tbaa !8
  %i.bt = load i8, ptr %i.l, align 4, !tbaa !8
  %i.bu = lshr i64 %.143.2, 24
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = xor i8 %i.bt, %i.bv
  store i8 %i.bw, ptr %i.l, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bx = load i64, ptr %i.h, align 8
  store i64 %i.bx, ptr %.03841.2, align 1
  %i.by = add nuw nsw i64 %.143.2, 1              ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.03841.2, i64 8
  %exitcond.2.not = icmp eq i64 %i.by, %i.bf
  br i1 %exitcond.2.not, label %._crit_edge.2, label %bb.h, !llvm.loop !9

._crit_edge.2:                                    ; preds = %bb.j
  %i.ca = add nuw i64 %i.o, %i.bf                 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %._crit_edge.2
  %.143.3 = phi i64 [ %i.bf, %._crit_edge.2 ], [ %i.ct, %bb.m ] ; 6 uses
  %.03841.3 = phi ptr [ %i.f, %._crit_edge.2 ], [ %i.cu, %bb.m ] ; 3 uses
  %i.cb = load i64, ptr %.03841.3, align 1
  store i64 %i.cb, ptr %i.h, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.cc = trunc i64 %.143.3 to i8
  %i.cd = load i8, ptr %i.i, align 1, !tbaa !8
  %i.ce = xor i8 %i.cd, %i.cc
  store i8 %i.ce, ptr %i.i, align 1, !tbaa !8
  %i.cf = icmp samesign ugt i64 %.143.3, 255
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = load i8, ptr %i.j, align 2, !tbaa !8
  %i.ch = lshr i64 %.143.3, 8
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = xor i8 %i.cg, %i.ci
  store i8 %i.cj, ptr %i.j, align 2, !tbaa !8
  %i.ck = load i8, ptr %i.k, align 1, !tbaa !8
  %i.cl = lshr i64 %.143.3, 16
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = xor i8 %i.ck, %i.cm
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !8
  %i.co = load i8, ptr %i.l, align 4, !tbaa !8
  %i.cp = lshr i64 %.143.3, 24
  %i.cq = trunc i64 %i.cp to i8
  %i.cr = xor i8 %i.co, %i.cq
  store i8 %i.cr, ptr %i.l, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cs = load i64, ptr %i.h, align 8
  store i64 %i.cs, ptr %.03841.3, align 1
  %i.ct = add nuw nsw i64 %.143.3, 1              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.03841.3, i64 8
  %exitcond.3.not = icmp eq i64 %i.ct, %i.ca
  br i1 %exitcond.3.not, label %._crit_edge.3, label %bb.k, !llvm.loop !9

._crit_edge.3:                                    ; preds = %bb.m
  %i.cv = add nuw i64 %i.o, %i.ca                 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %._crit_edge.3
  %.143.4 = phi i64 [ %i.ca, %._crit_edge.3 ], [ %i.do, %bb.p ] ; 6 uses
  %.03841.4 = phi ptr [ %i.f, %._crit_edge.3 ], [ %i.dp, %bb.p ] ; 3 uses
  %i.cw = load i64, ptr %.03841.4, align 1
  store i64 %i.cw, ptr %i.h, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.cx = trunc i64 %.143.4 to i8
  %i.cy = load i8, ptr %i.i, align 1, !tbaa !8
  %i.cz = xor i8 %i.cy, %i.cx
  store i8 %i.cz, ptr %i.i, align 1, !tbaa !8
  %i.da = icmp ugt i64 %.143.4, 255
  br i1 %i.da, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.db = load i8, ptr %i.j, align 2, !tbaa !8
  %i.dc = lshr i64 %.143.4, 8
  %i.dd = trunc i64 %i.dc to i8
  %i.de = xor i8 %i.db, %i.dd
  store i8 %i.de, ptr %i.j, align 2, !tbaa !8
  %i.df = load i8, ptr %i.k, align 1, !tbaa !8
  %i.dg = lshr i64 %.143.4, 16
  %i.dh = trunc i64 %i.dg to i8
  %i.di = xor i8 %i.df, %i.dh
  store i8 %i.di, ptr %i.k, align 1, !tbaa !8
  %i.dj = load i8, ptr %i.l, align 4, !tbaa !8
  %i.dk = lshr i64 %.143.4, 24
  %i.dl = trunc i64 %i.dk to i8
  %i.dm = xor i8 %i.dj, %i.dl
  store i8 %i.dm, ptr %i.l, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dn = load i64, ptr %i.h, align 8
  store i64 %i.dn, ptr %.03841.4, align 1
  %i.do = add nuw nsw i64 %.143.4, 1              ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.03841.4, i64 8
  %exitcond.4.not = icmp eq i64 %i.do, %i.cv
  br i1 %exitcond.4.not, label %._crit_edge.4, label %bb.n, !llvm.loop !9

._crit_edge.4:                                    ; preds = %bb.p
  %i.dq = add nuw i64 %i.o, %i.cv
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %._crit_edge.4
  %.143.5 = phi i64 [ %i.cv, %._crit_edge.4 ], [ %i.ej, %bb.s ] ; 6 uses
  %.03841.5 = phi ptr [ %i.f, %._crit_edge.4 ], [ %i.ek, %bb.s ] ; 3 uses
  %i.dr = load i64, ptr %.03841.5, align 1
  store i64 %i.dr, ptr %i.h, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.ds = trunc i64 %.143.5 to i8
  %i.dt = load i8, ptr %i.i, align 1, !tbaa !8
  %i.du = xor i8 %i.dt, %i.ds
  store i8 %i.du, ptr %i.i, align 1, !tbaa !8
  %i.dv = icmp ugt i64 %.143.5, 255
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = load i8, ptr %i.j, align 2, !tbaa !8
  %i.dx = lshr i64 %.143.5, 8
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = xor i8 %i.dw, %i.dy
  store i8 %i.dz, ptr %i.j, align 2, !tbaa !8
  %i.ea = load i8, ptr %i.k, align 1, !tbaa !8
  %i.eb = lshr i64 %.143.5, 16
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = xor i8 %i.ea, %i.ec
  store i8 %i.ed, ptr %i.k, align 1, !tbaa !8
  %i.ee = load i8, ptr %i.l, align 4, !tbaa !8
  %i.ef = lshr i64 %.143.5, 24
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = xor i8 %i.ee, %i.eg
  store i8 %i.eh, ptr %i.l, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ei = load i64, ptr %i.h, align 8
  store i64 %i.ei, ptr %.03841.5, align 1
  %i.ej = add nuw nsw i64 %.143.5, 1              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.03841.5, i64 8
  %exitcond.5.not = icmp eq i64 %i.ej, %i.dq
  br i1 %exitcond.5.not, label %.split46, label %bb.q, !llvm.loop !9

.split46:                                         ; preds = %bb.s
  %.pre = load i64, ptr %i.a, align 16
  store i64 %.pre, ptr %2, align 1
  %i.el = add nuw nsw i64 %4, 8
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %.split46
  %.039 = phi i64 [ %i.el, %.split46 ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.039
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i64 0, 2147483649) i64 @CRYPTO_128_unwrap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = call fastcc i64 @crypto_128_unwrap_raw(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @default_iv, ptr %1
  %i.d = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select, i64 noundef 8) #5
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @OPENSSL_cleanse(ptr noundef %2, i64 noundef %i.b) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.b, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 2147483649) i64 @crypto_128_unwrap_raw(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = add i64 %4, -8                           ; 11 uses
  %i.c = and i64 %4, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = add i64 %4, -2147483657
  %i.f = icmp ult i64 %i.e, -2147483633
  %or.cond3 = or i1 %i.d, %i.f
  br i1 %or.cond3, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %3, align 1                ; 2 uses
  store i64 %i.g, ptr %i.a, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.h, i64 %i.b, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.b ; 6 uses
  %.not = icmp eq i64 %i.b, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 12 uses
  br i1 %.not, label %.split49, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = lshr exact i64 %i.b, 3
  %i.p = mul nuw nsw i64 %i.o, 6
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader, %bb.e
  %.pn = phi ptr [ %i.i, %.lr.ph.preheader ], [ %.04046, %bb.e ]
  %.145 = phi i64 [ %i.p, %.lr.ph.preheader ], [ %i.aj, %bb.e ] ; 6 uses
  %.03944 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ai, %bb.e ]
  %.04046 = getelementptr inbounds i8, ptr %.pn, i64 -8 ; 3 uses
  %i.q = trunc i64 %.145 to i8
  %i.r = load i8, ptr %i.j, align 1, !tbaa !8
  %i.s = xor i8 %i.r, %i.q
  store i8 %i.s, ptr %i.j, align 1, !tbaa !8
  %i.t = icmp ugt i64 %.145, 255
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.k, align 2, !tbaa !8
  %i.v = lshr i64 %.145, 8
  %i.w = trunc i64 %i.v to i8
  %i.x = xor i8 %i.u, %i.w
  store i8 %i.x, ptr %i.k, align 2, !tbaa !8
  %i.y = load i8, ptr %i.l, align 1, !tbaa !8
  %i.z = lshr i64 %.145, 16
  %i.aa = trunc i64 %i.z to i8
  %i.ab = xor i8 %i.y, %i.aa
  store i8 %i.ab, ptr %i.l, align 1, !tbaa !8
  %i.ac = load i8, ptr %i.m, align 4, !tbaa !8
  %i.ad = lshr i64 %.145, 24
  %i.ae = trunc i64 %i.ad to i8
  %i.af = xor i8 %i.ac, %i.ae
  store i8 %i.af, ptr %i.m, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = load i64, ptr %.04046, align 1
  store i64 %i.ag, ptr %i.n, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.ah = load i64, ptr %i.n, align 8
  store i64 %i.ah, ptr %.04046, align 1
  %i.ai = add nuw nsw i64 %.03944, 8              ; 2 uses
  %i.aj = add i64 %.145, -1                       ; 2 uses
  %i.ak = icmp ult i64 %i.ai, %i.b
  br i1 %i.ak, label %bb.c, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.e, %bb.g
  %.pn.1 = phi ptr [ %.04046.1, %bb.g ], [ %i.i, %bb.e ]
  %.145.1 = phi i64 [ %i.be, %bb.g ], [ %i.aj, %bb.e ] ; 6 uses
  %.03944.1 = phi i64 [ %i.bd, %bb.g ], [ 0, %bb.e ]
  %.04046.1 = getelementptr inbounds i8, ptr %.pn.1, i64 -8 ; 3 uses
  %i.al = trunc i64 %.145.1 to i8
  %i.am = load i8, ptr %i.j, align 1, !tbaa !8
  %i.an = xor i8 %i.am, %i.al
  store i8 %i.an, ptr %i.j, align 1, !tbaa !8
  %i.ao = icmp ugt i64 %.145.1, 255
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ap = load i8, ptr %i.k, align 2, !tbaa !8
  %i.aq = lshr i64 %.145.1, 8
  %i.ar = trunc i64 %i.aq to i8
  %i.as = xor i8 %i.ap, %i.ar
  store i8 %i.as, ptr %i.k, align 2, !tbaa !8
  %i.at = load i8, ptr %i.l, align 1, !tbaa !8
  %i.au = lshr i64 %.145.1, 16
  %i.av = trunc i64 %i.au to i8
  %i.aw = xor i8 %i.at, %i.av
  store i8 %i.aw, ptr %i.l, align 1, !tbaa !8
  %i.ax = load i8, ptr %i.m, align 4, !tbaa !8
  %i.ay = lshr i64 %.145.1, 24
  %i.az = trunc i64 %i.ay to i8
  %i.ba = xor i8 %i.ax, %i.az
  store i8 %i.ba, ptr %i.m, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.bb = load i64, ptr %.04046.1, align 1
  store i64 %i.bb, ptr %i.n, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.bc = load i64, ptr %i.n, align 8
  store i64 %i.bc, ptr %.04046.1, align 1
  %i.bd = add nuw nsw i64 %.03944.1, 8            ; 2 uses
  %i.be = add i64 %.145.1, -1                     ; 2 uses
  %i.bf = icmp ult i64 %i.bd, %i.b
end_hunk_0
