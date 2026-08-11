inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"msvideo1\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Microsoft Video 1\00", align 1
@ff_msvideo1_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 46, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 1056, ptr null, ptr null, ptr null, ptr @msvideo1_decode_init, %union.anon { ptr @msvideo1_decode_frame }, ptr @msvideo1_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Packet is too small\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c" MS Video-1 warning: stream_ptr out of bounds (%d >= %d)\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @msvideo1_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %i.e = icmp slt i32 %i.d, 4
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34
  %i.h = icmp slt i32 %i.g, 4
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %i.k = icmp eq i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.l, align 4, !tbaa !36
  store i32 11, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !38
  %i.p = icmp sgt i32 %i.o, 1023
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.q, ptr noundef nonnull align 1 dereferenceable(1024) %i.s, i64 1024, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 4, !tbaa !36
  store i32 39, ptr %i.m, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.t = tail call ptr @av_frame_alloc() #5       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !40
  %.not = icmp eq ptr %i.t, null
  %. = select i1 %.not, i32 -12, i32 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a, %bb.b
  %.0 = phi i32 [ %., %bb.g ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @msvideo1_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 37 uses
  %i.b = alloca [8 x i8], align 8                 ; 37 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store i32 %i.f, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !46
  %i.m = sdiv <2 x i32> %i.l, splat (i32 4)       ; 2 uses
  %i.n = extractelement <2 x i32> %i.m, i64 0
  %i.o = extractelement <2 x i32> %i.m, i64 1
  %i.p = mul nsw i32 %i.o, %i.n
  %i.q = sdiv i32 %i.p, 512
  %i.r = icmp slt i32 %i.f, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #5
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = tail call i32 @ff_reget_buffer(ptr noundef nonnull %0, ptr noundef %i.t, i32 noundef 0) #5 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 28 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !36
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.z = tail call i32 @ff_copy_palette(ptr noundef nonnull %i.y, ptr noundef nonnull %3, ptr noundef nonnull %0) #5 ; 0 uses
  %.pr = load i32, ptr %i.w, align 4, !tbaa !36
  %.not29 = icmp eq i32 %.pr, 0
  br i1 %.not29, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46 ; 11 uses
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !29  ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %i.ah = sdiv i32 %i.ag, 4                       ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 116
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !34 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 3
  br i1 %i.ak, label %.lr.ph186.i, label %._crit_edge187.split.i

.lr.ph186.i:                                      ; preds = %bb.f
  %i.al = icmp sgt i32 %i.ag, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br i1 %i.al, label %.lr.ph.preheader.i, label %._crit_edge187.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph186.i
  %i.an = lshr i32 %i.aj, 2                       ; 2 uses
  %i.ao = mul nuw nsw i32 %i.an, %i.ah
  %i.ap = and i32 %i.aj, 2147483644
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = mul i32 %i.aq, %i.ad
  %i.as = shl i32 %i.ad, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i32 [ %i.ar, %.lr.ph.preheader.i ], [ %indvars.iv.next212.i, %._crit_edge.i ] ; 2 uses
  %.0101184.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.3104.i, %._crit_edge.i ]
  %.0109183.i = phi i32 [ %i.ao, %.lr.ph.preheader.i ], [ %i.av, %._crit_edge.i ] ; 2 uses
  %.0115182.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.3118.i, %._crit_edge.i ]
  %.0123181.i = phi i32 [ %i.an, %.lr.ph.preheader.i ], [ %i.ll, %._crit_edge.i ] ; 2 uses
  %i.au = sext i32 %indvars.iv.i to i64
  %i.av = sub i32 %.0109183.i, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv213.i = phi i64 [ %i.au, %.lr.ph.i ], [ %indvars.iv.next214.i, %.loopexit.i ] ; 7 uses
  %.1102177.i = phi i32 [ %.0101184.i, %.lr.ph.i ], [ %.3104.i, %.loopexit.i ] ; 2 uses
  %.1110176.i = phi i32 [ %.0109183.i, %.lr.ph.i ], [ %.2111.i, %.loopexit.i ] ; 2 uses
  %.1116175.i = phi i32 [ %.0115182.i, %.lr.ph.i ], [ %.3118.i, %.loopexit.i ] ; 5 uses
  %.0122174.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.lj, %.loopexit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.1102177.i, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = add nsw i32 %.1102177.i, -1
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.g
  %i.ax = add nsw i32 %.1116175.i, 2              ; 6 uses
  %i.ay = load i32, ptr %i.j, align 8, !tbaa !45  ; 6 uses
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ba, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.ax, i32 noundef %i.ay) #5
  br label %msvideo1_decode_8bit.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !44  ; 3 uses
  %i.bc = sext i32 %.1116175.i to i64
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !48  ; 7 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !48  ; 4 uses
  %i.bh = zext i8 %i.be to i32                    ; 4 uses
  %i.bi = icmp eq i8 %i.be, 0
  %i.bj = zext i8 %i.bg to i32                    ; 4 uses
  %i.bk = icmp eq i8 %i.bg, 0
  %or.cond.i = select i1 %i.bi, i1 %i.bk, i1 false
  %i.bl = icmp eq i32 %.1110176.i, 0
  %or.cond4.i = select i1 %or.cond.i, i1 %i.bl, i1 false
  br i1 %or.cond4.i, label %msvideo1_decode_8bit.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = and i32 %i.bj, 252
  %i.bn = icmp eq i32 %i.bm, 132
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = shl nuw nsw i32 %i.bj, 8
  %i.bp = add nuw nsw i32 %i.bh, -33793
  %i.bq = add nsw i32 %i.bp, %i.bo
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.l
  %i.br = icmp sgt i8 %i.bg, -1
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = add nsw i32 %.1116175.i, 4              ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, %i.ay
  br i1 %i.bt, label %bb.p, label %.preheader.i

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bu, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.bs, i32 noundef %i.ay) #5
  br label %msvideo1_decode_8bit.exit

.preheader.i:                                     ; preds = %bb.o
  %i.bv = shl nuw nsw i32 %i.bj, 8
  %i.bw = or disjoint i32 %i.bv, %i.bh
  %i.bx = trunc nuw nsw i32 %i.bw to i16          ; 15 uses
  %i.by = sext i32 %i.ax to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bb, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !48
  store i8 %i.ca, ptr %i.b, align 8, !tbaa !48
  %i.cb = getelementptr i8, ptr %i.bd, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !48  ; 2 uses
  store i8 %i.cc, ptr %i.am, align 1, !tbaa !48
  %i.cd = and i16 %i.bx, 1
  %i.ce = xor i16 %i.cd, 1
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !48
  %i.ci = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv213.i ; 4 uses
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !48
  %i.cj = lshr i16 %i.bx, 1
  %i.ck = and i16 %i.cj, 1
  %i.cl = xor i16 %i.ck, 1
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !48
  %i.cp = getelementptr i8, ptr %i.ci, i64 1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !48
  %i.cq = lshr i16 %i.bx, 2
  %i.cr = and i16 %i.cq, 1
  %i.cs = xor i16 %i.cr, 1
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !48
  %i.cw = getelementptr i8, ptr %i.ci, i64 2
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !48
  %i.cx = lshr i16 %i.bx, 3
  %i.cy = and i16 %i.cx, 1
  %i.cz = xor i16 %i.cy, 1
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !48
  %i.dd = getelementptr i8, ptr %i.ci, i64 3
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !48
  %i.de = lshr i16 %i.bx, 4
  %i.df = trunc i64 %indvars.iv213.i to i32
  %i.dg = sub i32 %i.df, %i.ad                    ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = and i16 %i.de, 1
  %i.dj = xor i16 %i.di, 1
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !48
  %i.dn = getelementptr inbounds i8, ptr %i.ab, i64 %i.dh ; 4 uses
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !48
  %i.do = lshr i16 %i.bx, 5
  %i.dp = and i16 %i.do, 1
  %i.dq = xor i16 %i.dp, 1
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !48
  %i.du = getelementptr i8, ptr %i.dn, i64 1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !48
  %i.dv = lshr i16 %i.bx, 6
  %i.dw = and i16 %i.dv, 1
  %i.dx = xor i16 %i.dw, 1
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !48
  %i.eb = getelementptr i8, ptr %i.dn, i64 2
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !48
  %i.ec = lshr i16 %i.bx, 7
  %i.ed = and i16 %i.ec, 1
  %i.ee = xor i16 %i.ed, 1
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !48
  %i.ei = getelementptr i8, ptr %i.dn, i64 3
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !48
  %i.ej = lshr i16 %i.bx, 8
  %i.ek = sub i32 %i.dg, %i.ad                    ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = and i16 %i.ej, 1
  %i.en = xor i16 %i.em, 1
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !48
  %i.er = getelementptr inbounds i8, ptr %i.ab, i64 %i.el ; 4 uses
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !48
  %i.es = lshr i16 %i.bx, 9
  %i.et = and i16 %i.es, 1
  %i.eu = xor i16 %i.et, 1
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !48
  %i.ey = getelementptr i8, ptr %i.er, i64 1
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !48
  %i.ez = lshr i16 %i.bx, 10
  %i.fa = and i16 %i.ez, 1
  %i.fb = xor i16 %i.fa, 1
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !48
  %i.ff = getelementptr i8, ptr %i.er, i64 2
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !48
  %i.fg = lshr i16 %i.bx, 11
  %i.fh = and i16 %i.fg, 1
  %i.fi = xor i16 %i.fh, 1
  %i.fj = zext nneg i16 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !48
  %i.fm = getelementptr i8, ptr %i.er, i64 3
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !48
  %i.fn = lshr i16 %i.bx, 12
  %i.fo = sub i32 %i.ek, %i.ad
  %i.fp = sext i32 %i.fo to i64
  %i.fq = and i16 %i.fn, 1
  %i.fr = xor i16 %i.fq, 1
  %i.fs = zext nneg i16 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !48
  %i.fv = getelementptr inbounds i8, ptr %i.ab, i64 %i.fp ; 4 uses
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !48
  %i.fw = lshr i16 %i.bx, 13
  %i.fx = and i16 %i.fw, 1
  %i.fy = xor i16 %i.fx, 1
  %i.fz = zext nneg i16 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !48
  %i.gc = getelementptr i8, ptr %i.fv, i64 1
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !48
  %i.gd = lshr i16 %i.bx, 14
  %i.ge = xor i16 %i.gd, 1
  %i.gf = zext nneg i16 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !48
  %i.gi = getelementptr i8, ptr %i.fv, i64 2
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !48
  %i.gj = getelementptr i8, ptr %i.fv, i64 3
  store i8 %i.cc, ptr %i.gj, align 1, !tbaa !48
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.n
  %i.gk = icmp samesign ugt i8 %i.bg, -113
  br i1 %i.gk, label %bb.r, label %.preheader133.i

bb.r:                                             ; preds = %bb.q
  %i.gl = add nsw i32 %.1116175.i, 10             ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, %i.ay
  br i1 %i.gm, label %bb.s, label %.preheader132.i

bb.s:                                             ; preds = %bb.r
  %i.gn = load ptr, ptr %i.h, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gn, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.gl, i32 noundef %i.ay) #5
  br label %msvideo1_decode_8bit.exit

.preheader132.i:                                  ; preds = %bb.r
  %i.go = shl nuw nsw i32 %i.bj, 8
  %i.gp = or disjoint i32 %i.go, %i.bh
  %i.gq = trunc nuw i32 %i.gp to i16              ; 14 uses
  %i.gr = sext i32 %i.ax to i64
  %i.gs = getelementptr inbounds i8, ptr %i.bb, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 1
  store i64 %i.gt, ptr %i.b, align 8
  %i.gu = and i32 %i.bh, 1
  %i.gv = xor i32 %i.gu, 1
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !48
  %i.gz = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv213.i ; 4 uses
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !48
  %i.ha = lshr i16 %i.gq, 1
  %i.hb = and i16 %i.ha, 1
  %i.hc = xor i16 %i.hb, 1
  %i.hd = zext nneg i16 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !48
  %i.hg = getelementptr i8, ptr %i.gz, i64 1
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !48
  %i.hh = lshr i16 %i.gq, 2
  %i.hi = and i16 %i.hh, 1
  %i.hj = xor i16 %i.hi, 3
  %i.hk = zext nneg i16 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !48
  %i.hn = getelementptr i8, ptr %i.gz, i64 2
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !48
  %i.ho = lshr i16 %i.gq, 3
  %i.hp = and i16 %i.ho, 1
  %i.hq = xor i16 %i.hp, 3
  %i.hr = zext nneg i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !48
  %i.hu = getelementptr i8, ptr %i.gz, i64 3
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !48
  %i.hv = lshr i16 %i.gq, 4
  %i.hw = trunc i64 %indvars.iv213.i to i32
  %i.hx = sub i32 %i.hw, %i.ad                    ; 2 uses
  %i.hy = sext i32 %i.hx to i64
  %i.hz = and i16 %i.hv, 1
  %i.ia = xor i16 %i.hz, 1
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !48
  %i.ie = getelementptr inbounds i8, ptr %i.ab, i64 %i.hy ; 4 uses
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !48
  %i.if = lshr i16 %i.gq, 5
  %i.ig = and i16 %i.if, 1
  %i.ih = xor i16 %i.ig, 1
  %i.ii = zext nneg i16 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !48
  %i.il = getelementptr i8, ptr %i.ie, i64 1
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !48
  %i.im = lshr i16 %i.gq, 6
  %i.in = and i16 %i.im, 1
  %i.io = xor i16 %i.in, 3
  %i.ip = zext nneg i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !48
  %i.is = getelementptr i8, ptr %i.ie, i64 2
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !48
  %i.it = lshr i16 %i.gq, 7
  %i.iu = and i16 %i.it, 1
  %i.iv = xor i16 %i.iu, 3
  %i.iw = zext nneg i16 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !48
  %i.iz = getelementptr i8, ptr %i.ie, i64 3
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !48
  %i.ja = lshr i16 %i.gq, 8
  %i.jb = sub i32 %i.hx, %i.ad                    ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = and i16 %i.ja, 1
  %i.je = xor i16 %i.jd, 5
  %i.jf = zext nneg i16 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !48
  %i.ji = getelementptr inbounds i8, ptr %i.ab, i64 %i.jc ; 4 uses
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !48
  %i.jj = lshr i16 %i.gq, 9
  %i.jk = and i16 %i.jj, 1
  %i.jl = xor i16 %i.jk, 5
  %i.jm = zext nneg i16 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !48
  %i.jp = getelementptr i8, ptr %i.ji, i64 1
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !48
  %i.jq = lshr i16 %i.gq, 10
  %i.jr = and i16 %i.jq, 1
  %i.js = xor i16 %i.jr, 7
  %i.jt = zext nneg i16 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !48
  %i.jw = getelementptr i8, ptr %i.ji, i64 2
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !48
  %i.jx = lshr i16 %i.gq, 11
  %i.jy = and i16 %i.jx, 1
  %i.jz = xor i16 %i.jy, 7
  %i.ka = zext nneg i16 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !48
  %i.kd = getelementptr i8, ptr %i.ji, i64 3
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !48
  %i.ke = lshr i16 %i.gq, 12
  %i.kf = sub i32 %i.jb, %i.ad
  %i.kg = sext i32 %i.kf to i64
  %i.kh = and i16 %i.ke, 1
  %i.ki = xor i16 %i.kh, 5
  %i.kj = zext nneg i16 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !48
  %i.km = getelementptr inbounds i8, ptr %i.ab, i64 %i.kg ; 4 uses
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !48
  %i.kn = lshr i16 %i.gq, 13
  %i.ko = and i16 %i.kn, 5
  %i.kp = xor i16 %i.ko, 1
  %i.kq = zext nneg i16 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !48
  %i.kt = getelementptr i8, ptr %i.km, i64 1
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !48
  %i.ku = lshr i16 %i.gq, 14
  %i.kv = and i16 %i.ku, 1
  %i.kw = xor i16 %i.kv, 7
  %i.kx = zext nneg i16 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !48
  %i.la = getelementptr i8, ptr %i.km, i64 2
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !48
  %i.lb = load i8, ptr %i.at, align 2, !tbaa !48
  %i.lc = getelementptr i8, ptr %i.km, i64 3
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !48
  br label %.loopexit.i

.preheader133.i:                                  ; preds = %bb.q
  store i8 %i.be, ptr %i.b, align 8, !tbaa !48
  %scevgep.i = getelementptr i8, ptr %i.ab, i64 %indvars.iv213.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.i, i8 %i.be, i64 4, i1 false), !tbaa !48
  %i.ld = trunc i64 %indvars.iv213.i to i32
  %i.le = sub i32 %i.ld, %i.ad                    ; 2 uses
  %i.lf = sext i32 %i.le to i64
  %scevgep.1.i = getelementptr i8, ptr %i.ab, i64 %i.lf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.1.i, i8 %i.be, i64 4, i1 false), !tbaa !48
  %i.lg = sub i32 %i.le, %i.ad                    ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %scevgep.2.i = getelementptr i8, ptr %i.ab, i64 %i.lh
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.2.i, i8 %i.be, i64 4, i1 false), !tbaa !48
  %4 = sub i32 %i.lg, %i.ad
  %i.li = sext i32 %4 to i64
  %scevgep.3.i = getelementptr i8, ptr %i.ab, i64 %i.li
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.3.i, i8 %i.be, i64 4, i1 false), !tbaa !48
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader133.i, %.preheader132.i, %.preheader.i, %bb.m, %bb.h
  %.3118.i = phi i32 [ %.1116175.i, %bb.h ], [ %i.ax, %bb.m ], [ %i.gl, %.preheader132.i ], [ %i.bs, %.preheader.i ], [ %i.ax, %.preheader133.i ] ; 2 uses
  %.3104.i = phi i32 [ %i.aw, %bb.h ], [ %i.bq, %bb.m ], [ 0, %.preheader132.i ], [ 0, %.preheader.i ], [ 0, %.preheader133.i ] ; 2 uses
  %indvars.iv.next214.i = add nsw i64 %indvars.iv213.i, 4
  %.2111.i = add nsw i32 %.1110176.i, -1
  %i.lj = add nsw i32 %.0122174.i, -1
  %i.lk = icmp sgt i32 %.0122174.i, 1
  br i1 %i.lk, label %bb.g, label %._crit_edge.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.ll = add nsw i32 %.0123181.i, -1
  %i.lm = icmp sgt i32 %.0123181.i, 1
  %indvars.iv.next212.i = sub i32 %indvars.iv.i, %i.as
  br i1 %i.lm, label %.lr.ph.i, label %._crit_edge187.split.loopexit.i, !llvm.loop !51

._crit_edge187.split.loopexit.i:                  ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %._crit_edge187.split.i

._crit_edge187.split.i:                           ; preds = %._crit_edge187.split.loopexit.i, %.lr.ph186.i, %bb.f
  %i.ln = phi ptr [ %.pre.i, %._crit_edge187.split.loopexit.i ], [ %i.ae, %.lr.ph186.i ], [ %i.ae, %bb.f ]
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 136
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !37
  %i.lq = icmp eq i32 %i.lp, 11
  br i1 %i.lq, label %bb.t, label %msvideo1_decode_8bit.exit

bb.t:                                             ; preds = %._crit_edge187.split.i
  %i.lr = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.lt, ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.y, i64 1024, i1 false)
  br label %msvideo1_decode_8bit.exit

msvideo1_decode_8bit.exit:                        ; preds = %bb.k, %bb.j, %bb.p, %bb.s, %._crit_edge187.split.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.ae

.thread:                                          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.lu = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !47 ; 12 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 64
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !46
  %i.ly = sdiv i32 %i.lx, 2                       ; 11 uses
  %i.lz = load ptr, ptr %i.h, align 8, !tbaa !29  ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 112
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !33 ; 2 uses
  %i.mc = sdiv i32 %i.mb, 4                       ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 116
  %i.me = load i32, ptr %i.md, align 4, !tbaa !34 ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 3
  br i1 %i.mf, label %.lr.ph202.i, label %msvideo1_decode_16bit.exit

.lr.ph202.i:                                      ; preds = %.thread
  %i.mg = icmp sgt i32 %i.mb, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br i1 %i.mg, label %.lr.ph.preheader.i30, label %msvideo1_decode_16bit.exit

.lr.ph.preheader.i30:                             ; preds = %.lr.ph202.i
  %i.mk = lshr i32 %i.me, 2                       ; 2 uses
  %i.ml = mul nuw nsw i32 %i.mk, %i.mc
  %i.mm = and i32 %i.me, 2147483644
  %i.mn = add nsw i32 %i.mm, -1
  %i.mo = mul i32 %i.mn, %i.ly
  %i.mp = shl i32 %i.ly, 2
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %._crit_edge.i35, %.lr.ph.preheader.i30
  %indvars.iv.i32 = phi i32 [ %i.mo, %.lr.ph.preheader.i30 ], [ %indvars.iv.next233.i, %._crit_edge.i35 ] ; 2 uses
  %.0113200.i = phi i32 [ 0, %.lr.ph.preheader.i30 ], [ %.3116.i, %._crit_edge.i35 ]
  %.0121199.i = phi i32 [ %i.ml, %.lr.ph.preheader.i30 ], [ %i.mr, %._crit_edge.i35 ] ; 2 uses
  %.0127198.i = phi i32 [ 0, %.lr.ph.preheader.i30 ], [ %.3130.i, %._crit_edge.i35 ]
  %.0135197.i = phi i32 [ %i.mk, %.lr.ph.preheader.i30 ], [ %i.xq, %._crit_edge.i35 ] ; 2 uses
  %i.mq = sext i32 %indvars.iv.i32 to i64
  %i.mr = sub i32 %.0121199.i, %i.mc
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.i34, %.lr.ph.i31
  %indvars.iv234.i = phi i64 [ %i.mq, %.lr.ph.i31 ], [ %indvars.iv.next235.i, %.loopexit.i34 ] ; 7 uses
  %.1114193.i = phi i32 [ %.0113200.i, %.lr.ph.i31 ], [ %.3116.i, %.loopexit.i34 ] ; 2 uses
  %.1122192.i = phi i32 [ %.0121199.i, %.lr.ph.i31 ], [ %.2123.i, %.loopexit.i34 ] ; 2 uses
  %.1128191.i = phi i32 [ %.0127198.i, %.lr.ph.i31 ], [ %.3130.i, %.loopexit.i34 ] ; 5 uses
  %.0134190.i = phi i32 [ %i.mc, %.lr.ph.i31 ], [ %i.xo, %.loopexit.i34 ] ; 2 uses
  %.not.i33 = icmp eq i32 %.1114193.i, 0
  br i1 %.not.i33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ms = add nsw i32 %.1114193.i, -1
  br label %.loopexit.i34

bb.w:                                             ; preds = %bb.u
  %i.mt = add nsw i32 %.1128191.i, 2              ; 5 uses
  %i.mu = load i32, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.mv = icmp sgt i32 %i.mt, %i.mu
  br i1 %i.mv, label %msvideo1_decode_16bit.exit.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mw = load ptr, ptr %i.i, align 8, !tbaa !44  ; 3 uses
  %i.mx = sext i32 %.1128191.i to i64
  %i.my = getelementptr i8, ptr %i.mw, i64 %i.mx  ; 7 uses
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !48  ; 2 uses
  %i.na = getelementptr i8, ptr %i.my, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !48  ; 3 uses
  %i.nc = zext i8 %i.mz to i32                    ; 3 uses
  %i.nd = icmp eq i8 %i.mz, 0
  %i.ne = zext i8 %i.nb to i32                    ; 3 uses
  %i.nf = icmp eq i8 %i.nb, 0
  %or.cond.i36 = select i1 %i.nd, i1 %i.nf, i1 false
  %i.ng = icmp eq i32 %.1122192.i, 0
  %or.cond4.i37 = select i1 %or.cond.i36, i1 %i.ng, i1 false
  br i1 %or.cond4.i37, label %msvideo1_decode_16bit.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nh = and i32 %i.ne, 252
  %i.ni = icmp eq i32 %i.nh, 132
  br i1 %i.ni, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.nj = shl nuw nsw i32 %i.ne, 8
  %i.nk = add nuw nsw i32 %i.nc, -33793
  %i.nl = add nsw i32 %i.nk, %i.nj
  br label %.loopexit.i34

bb.aa:                                            ; preds = %bb.y
  %i.nm = icmp sgt i8 %i.nb, -1
  %i.nn = shl nuw nsw i32 %i.ne, 8
  %i.no = or disjoint i32 %i.nn, %i.nc
  %i.np = trunc nuw i32 %i.no to i16              ; 31 uses
  br i1 %i.nm, label %bb.ab, label %.preheader146.i

bb.ab:                                            ; preds = %bb.aa
  %i.nq = add nsw i32 %.1128191.i, 6              ; 4 uses
  %i.nr = icmp sgt i32 %i.nq, %i.mu
  br i1 %i.nr, label %msvideo1_decode_16bit.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ns = sext i32 %i.mt to i64
  %i.nt = getelementptr inbounds i8, ptr %i.mw, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 1, !tbaa !48 ; 2 uses
  store i16 %i.nu, ptr %i.a, align 16, !tbaa !52
  %i.nv = getelementptr i8, ptr %i.my, i64 4
  %i.nw = load i16, ptr %i.nv, align 1, !tbaa !48 ; 2 uses
  store i16 %i.nw, ptr %i.mh, align 2, !tbaa !52
  %.not144.i = icmp sgt i16 %i.nu, -1
  br i1 %.not144.i, label %.preheader.preheader.i, label %bb.ad

.preheader.preheader.i:                           ; preds = %bb.ac
  %i.nx = and i16 %i.np, 1
  %i.ny = xor i16 %i.nx, 1
  %i.nz = zext nneg i16 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.nz
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !52
  %i.oc = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %indvars.iv234.i ; 4 uses
  store i16 %i.ob, ptr %i.oc, align 2, !tbaa !52
  %i.od = lshr i16 %i.np, 1
  %i.oe = and i16 %i.od, 1
  %i.of = xor i16 %i.oe, 1
  %i.og = zext nneg i16 %i.of to i64
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.og
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !52
  %i.oj = getelementptr i8, ptr %i.oc, i64 2
  store i16 %i.oi, ptr %i.oj, align 2, !tbaa !52
  %i.ok = lshr i16 %i.np, 2
  %i.ol = and i16 %i.ok, 1
  %i.om = xor i16 %i.ol, 1
  %i.on = zext nneg i16 %i.om to i64
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.on
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !52
  %i.oq = getelementptr i8, ptr %i.oc, i64 4
  store i16 %i.op, ptr %i.oq, align 2, !tbaa !52
  %i.or = lshr i16 %i.np, 3
  %i.os = and i16 %i.or, 1
  %i.ot = xor i16 %i.os, 1
  %i.ou = zext nneg i16 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ou
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !52
  %i.ox = getelementptr i8, ptr %i.oc, i64 6
  store i16 %i.ow, ptr %i.ox, align 2, !tbaa !52
  %i.oy = lshr i16 %i.np, 4
  %i.oz = trunc i64 %indvars.iv234.i to i32
  %i.pa = sub i32 %i.oz, %i.ly                    ; 2 uses
  %i.pb = sext i32 %i.pa to i64
  %i.pc = and i16 %i.oy, 1
  %i.pd = xor i16 %i.pc, 1
  %i.pe = zext nneg i16 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pe
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !52
  %i.ph = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.pb ; 4 uses
  store i16 %i.pg, ptr %i.ph, align 2, !tbaa !52
  %i.pi = lshr i16 %i.np, 5
  %i.pj = and i16 %i.pi, 1
  %i.pk = xor i16 %i.pj, 1
  %i.pl = zext nneg i16 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pl
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !52
  %i.po = getelementptr i8, ptr %i.ph, i64 2
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !52
  %i.pp = lshr i16 %i.np, 6
  %i.pq = and i16 %i.pp, 1
  %i.pr = xor i16 %i.pq, 1
  %i.ps = zext nneg i16 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ps
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !52
  %i.pv = getelementptr i8, ptr %i.ph, i64 4
  store i16 %i.pu, ptr %i.pv, align 2, !tbaa !52
  %i.pw = lshr i16 %i.np, 7
  %i.px = and i16 %i.pw, 1
  %i.py = xor i16 %i.px, 1
  %i.pz = zext nneg i16 %i.py to i64
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pz
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !52
  %i.qc = getelementptr i8, ptr %i.ph, i64 6
  store i16 %i.qb, ptr %i.qc, align 2, !tbaa !52
  %i.qd = lshr i16 %i.np, 8
  %i.qe = sub i32 %i.pa, %i.ly                    ; 2 uses
  %i.qf = sext i32 %i.qe to i64
  %i.qg = and i16 %i.qd, 1
  %i.qh = xor i16 %i.qg, 1
  %i.qi = zext nneg i16 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qi
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !52
  %i.ql = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.qf ; 4 uses
  store i16 %i.qk, ptr %i.ql, align 2, !tbaa !52
  %i.qm = lshr i16 %i.np, 9
  %i.qn = and i16 %i.qm, 1
  %i.qo = xor i16 %i.qn, 1
  %i.qp = zext nneg i16 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qp
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !52
  %i.qs = getelementptr i8, ptr %i.ql, i64 2
  store i16 %i.qr, ptr %i.qs, align 2, !tbaa !52
  %i.qt = lshr i16 %i.np, 10
  %i.qu = and i16 %i.qt, 1
  %i.qv = xor i16 %i.qu, 1
  %i.qw = zext nneg i16 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qw
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !52
  %i.qz = getelementptr i8, ptr %i.ql, i64 4
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !52
  %i.ra = lshr i16 %i.np, 11
  %i.rb = and i16 %i.ra, 1
  %i.rc = xor i16 %i.rb, 1
  %i.rd = zext nneg i16 %i.rc to i64
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.rd
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !52
  %i.rg = getelementptr i8, ptr %i.ql, i64 6
  store i16 %i.rf, ptr %i.rg, align 2, !tbaa !52
  %i.rh = lshr i16 %i.np, 12
  %i.ri = sub i32 %i.qe, %i.ly
  %i.rj = sext i32 %i.ri to i64
  %i.rk = and i16 %i.rh, 1
  %i.rl = xor i16 %i.rk, 1
  %i.rm = zext nneg i16 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.rm
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !52
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.rj ; 4 uses
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !52
  %i.rq = lshr i16 %i.np, 13
  %i.rr = and i16 %i.rq, 1
  %i.rs = xor i16 %i.rr, 1
  %i.rt = zext nneg i16 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.rt
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !52
  %i.rw = getelementptr i8, ptr %i.rp, i64 2
  store i16 %i.rv, ptr %i.rw, align 2, !tbaa !52
  %i.rx = lshr i16 %i.np, 14
  %i.ry = xor i16 %i.rx, 1
  %i.rz = zext nneg i16 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.rz
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !52
  %i.sc = getelementptr i8, ptr %i.rp, i64 4
  store i16 %i.sb, ptr %i.sc, align 2, !tbaa !52
  %i.sd = getelementptr i8, ptr %i.rp, i64 6
  store i16 %i.nw, ptr %i.sd, align 2, !tbaa !52
  br label %.loopexit.i34

bb.ad:                                            ; preds = %bb.ac
  %i.se = add nsw i32 %.1128191.i, 18             ; 3 uses
  %i.sf = icmp sgt i32 %i.se, %i.mu
  br i1 %i.sf, label %msvideo1_decode_16bit.exit.sink.split, label %.preheader145.i

.preheader145.i:                                  ; preds = %bb.ad
  %i.sg = sext i32 %i.nq to i64
  %i.sh = getelementptr inbounds i8, ptr %i.mw, i64 %i.sg
  %i.si = load i16, ptr %i.sh, align 1, !tbaa !48
  %i.sj = getelementptr i8, ptr %i.my, i64 8
  %i.sk = getelementptr i8, ptr %i.my, i64 12
  %i.sl = load i16, ptr %i.sk, align 1, !tbaa !48
  %i.sm = load <2 x i16>, ptr %i.sj, align 1, !tbaa !48
  %i.sn = shufflevector <2 x i16> %i.sm, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.so = insertelement <4 x i16> %i.sn, i16 %i.si, i64 0
  %i.sp = insertelement <4 x i16> %i.so, i16 %i.sl, i64 3
  store <4 x i16> %i.sp, ptr %i.mi, align 4, !tbaa !52
  %i.sq = getelementptr i8, ptr %i.my, i64 14
  %i.sr = getelementptr i8, ptr %i.my, i64 16
  %i.ss = load i16, ptr %i.sr, align 1, !tbaa !48
  %i.st = load <2 x i16>, ptr %i.sq, align 1, !tbaa !48
  store <2 x i16> %i.st, ptr %i.mj, align 4, !tbaa !52
  %i.su = and i32 %i.nc, 1
  %i.sv = xor i32 %i.su, 1
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.sw
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !52
  %i.sz = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %indvars.iv234.i ; 4 uses
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !52
  %i.ta = lshr i16 %i.np, 1
  %i.tb = and i16 %i.ta, 1
  %i.tc = xor i16 %i.tb, 1
  %i.td = zext nneg i16 %i.tc to i64
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.td
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !52
  %i.tg = getelementptr i8, ptr %i.sz, i64 2
  store i16 %i.tf, ptr %i.tg, align 2, !tbaa !52
  %i.th = lshr i16 %i.np, 2
  %i.ti = and i16 %i.th, 1
  %i.tj = xor i16 %i.ti, 3
  %i.tk = zext nneg i16 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.tk
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !52
  %i.tn = getelementptr i8, ptr %i.sz, i64 4
  store i16 %i.tm, ptr %i.tn, align 2, !tbaa !52
  %i.to = lshr i16 %i.np, 3
  %i.tp = and i16 %i.to, 1
  %i.tq = xor i16 %i.tp, 3
  %i.tr = zext nneg i16 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !52
  %i.tu = getelementptr i8, ptr %i.sz, i64 6
  store i16 %i.tt, ptr %i.tu, align 2, !tbaa !52
  %i.tv = lshr i16 %i.np, 4
  %i.tw = trunc i64 %indvars.iv234.i to i32
  %i.tx = sub i32 %i.tw, %i.ly                    ; 2 uses
  %i.ty = sext i32 %i.tx to i64
  %i.tz = and i16 %i.tv, 1
  %i.ua = xor i16 %i.tz, 1
  %i.ub = zext nneg i16 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ub
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !52
  %i.ue = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.ty ; 4 uses
  store i16 %i.ud, ptr %i.ue, align 2, !tbaa !52
  %i.uf = lshr i16 %i.np, 5
  %i.ug = and i16 %i.uf, 1
  %i.uh = xor i16 %i.ug, 1
  %i.ui = zext nneg i16 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ui
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !52
  %i.ul = getelementptr i8, ptr %i.ue, i64 2
  store i16 %i.uk, ptr %i.ul, align 2, !tbaa !52
  %i.um = lshr i16 %i.np, 6
  %i.un = and i16 %i.um, 1
  %i.uo = xor i16 %i.un, 3
  %i.up = zext nneg i16 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.up
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !52
  %i.us = getelementptr i8, ptr %i.ue, i64 4
  store i16 %i.ur, ptr %i.us, align 2, !tbaa !52
  %i.ut = lshr i16 %i.np, 7
  %i.uu = and i16 %i.ut, 1
  %i.uv = xor i16 %i.uu, 3
  %i.uw = zext nneg i16 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.uw
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !52
  %i.uz = getelementptr i8, ptr %i.ue, i64 6
  store i16 %i.uy, ptr %i.uz, align 2, !tbaa !52
  %i.va = lshr i16 %i.np, 8
  %i.vb = sub i32 %i.tx, %i.ly                    ; 2 uses
  %i.vc = sext i32 %i.vb to i64
  %i.vd = and i16 %i.va, 1
  %i.ve = xor i16 %i.vd, 5
  %i.vf = zext nneg i16 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vf
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !52
  %i.vi = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.vc ; 4 uses
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !52
  %i.vj = lshr i16 %i.np, 9
  %i.vk = and i16 %i.vj, 1
  %i.vl = xor i16 %i.vk, 5
  %i.vm = zext nneg i16 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vm
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !52
  %i.vp = getelementptr i8, ptr %i.vi, i64 2
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !52
  %i.vq = lshr i16 %i.np, 10
  %i.vr = and i16 %i.vq, 1
  %i.vs = xor i16 %i.vr, 7
  %i.vt = zext nneg i16 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vt
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !52
  %i.vw = getelementptr i8, ptr %i.vi, i64 4
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !52
  %i.vx = lshr i16 %i.np, 11
  %i.vy = and i16 %i.vx, 1
  %i.vz = xor i16 %i.vy, 7
  %i.wa = zext nneg i16 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wa
  %i.wc = load i16, ptr %i.wb, align 2, !tbaa !52
  %i.wd = getelementptr i8, ptr %i.vi, i64 6
  store i16 %i.wc, ptr %i.wd, align 2, !tbaa !52
  %i.we = lshr i16 %i.np, 12
  %i.wf = sub i32 %i.vb, %i.ly
  %i.wg = sext i32 %i.wf to i64
  %i.wh = and i16 %i.we, 1
  %i.wi = xor i16 %i.wh, 5
  %i.wj = zext nneg i16 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wj
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !52
  %i.wm = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.wg ; 4 uses
  store i16 %i.wl, ptr %i.wm, align 2, !tbaa !52
  %i.wn = lshr i16 %i.np, 13
  %i.wo = and i16 %i.wn, 1
  %i.wp = xor i16 %i.wo, 5
  %i.wq = zext nneg i16 %i.wp to i64
  %i.wr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wq
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !52
  %i.wt = getelementptr i8, ptr %i.wm, i64 2
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !52
  %i.wu = lshr i16 %i.np, 14
  %i.wv = xor i16 %i.wu, 7
  %i.ww = zext nneg i16 %i.wv to i64
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ww
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !52
  %i.wz = getelementptr i8, ptr %i.wm, i64 4
  store i16 %i.wy, ptr %i.wz, align 2, !tbaa !52
  %i.xa = getelementptr i8, ptr %i.wm, i64 6
  store i16 %i.ss, ptr %i.xa, align 2, !tbaa !52
  br label %.loopexit.i34

.preheader146.i:                                  ; preds = %bb.aa
  store i16 %i.np, ptr %i.a, align 16, !tbaa !52
  %i.xb = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %indvars.iv234.i
  %i.xc = insertelement <4 x i16> poison, i16 %i.np, i64 0
  %i.xd = shufflevector <4 x i16> %i.xc, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.xd, ptr %i.xb, align 2, !tbaa !52
  %i.xe = trunc i64 %indvars.iv234.i to i32
  %i.xf = sub i32 %i.xe, %i.ly                    ; 2 uses
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.xg
  store <4 x i16> %i.xd, ptr %i.xh, align 2, !tbaa !52
  %i.xi = sub i32 %i.xf, %i.ly                    ; 2 uses
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.xj
  store <4 x i16> %i.xd, ptr %i.xk, align 2, !tbaa !52
  %i.xl = sub i32 %i.xi, %i.ly
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.xm
  store <4 x i16> %i.xd, ptr %i.xn, align 2, !tbaa !52
  br label %.loopexit.i34

.loopexit.i34:                                    ; preds = %.preheader146.i, %.preheader145.i, %.preheader.preheader.i, %bb.z, %bb.v
  %.3130.i = phi i32 [ %.1128191.i, %bb.v ], [ %i.mt, %bb.z ], [ %i.nq, %.preheader.preheader.i ], [ %i.se, %.preheader145.i ], [ %i.mt, %.preheader146.i ] ; 2 uses
  %.3116.i = phi i32 [ %i.ms, %bb.v ], [ %i.nl, %bb.z ], [ 0, %.preheader.preheader.i ], [ 0, %.preheader145.i ], [ 0, %.preheader146.i ] ; 2 uses
  %indvars.iv.next235.i = add nsw i64 %indvars.iv234.i, 4
  %.2123.i = add nsw i32 %.1122192.i, -1
  %i.xo = add nsw i32 %.0134190.i, -1
  %i.xp = icmp sgt i32 %.0134190.i, 1
  br i1 %i.xp, label %bb.u, label %._crit_edge.i35, !llvm.loop !54

._crit_edge.i35:                                  ; preds = %.loopexit.i34
  %i.xq = add nsw i32 %.0135197.i, -1
  %i.xr = icmp sgt i32 %.0135197.i, 1
  %indvars.iv.next233.i = sub i32 %indvars.iv.i32, %i.mp
  br i1 %i.xr, label %.lr.ph.i31, label %msvideo1_decode_16bit.exit, !llvm.loop !55

msvideo1_decode_16bit.exit.sink.split:            ; preds = %bb.ad, %bb.ab, %bb.w
  %.sink = phi i32 [ %i.nq, %bb.ab ], [ %i.mt, %bb.w ], [ %i.se, %bb.ad ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lz, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef %i.mu) #5
  br label %msvideo1_decode_16bit.exit

msvideo1_decode_16bit.exit:                       ; preds = %._crit_edge.i35, %bb.x, %msvideo1_decode_16bit.exit.sink.split, %.thread, %.lr.ph202.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ae

bb.ae:                                            ; preds = %msvideo1_decode_16bit.exit, %msvideo1_decode_8bit.exit
  %i.xs = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.xt = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.xs) #5 ; 2 uses
  %i.xu = icmp slt i32 %i.xt, 0
  br i1 %i.xu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %2, align 4, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.c, %bb.af, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ %i.f, %bb.af ], [ %i.u, %bb.c ], [ %i.xt, %bb.ae ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @msvideo1_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_copy_palette(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"Msvideo1Context", !31, i64 0, !32, i64 8, !16, i64 16, !6, i64 24, !6, i64 28, !7, i64 32}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!33 = !{!10, !6, i64 112}
!34 = !{!10, !6, i64 116}
!35 = !{!10, !6, i64 648}
!36 = !{!30, !6, i64 28}
!37 = !{!10, !6, i64 136}
!38 = !{!10, !6, i64 80}
!39 = !{!10, !16, i64 72}
!40 = !{!30, !32, i64 8}
!41 = !{!42, !16, i64 24}
!42 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!43 = !{!42, !6, i64 32}
!44 = !{!30, !16, i64 16}
!45 = !{!30, !6, i64 24}
!46 = !{!6, !6, i64 0}
!47 = !{!16, !16, i64 0}
!48 = !{!7, !7, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !7, i64 0}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
end_hunk_0
