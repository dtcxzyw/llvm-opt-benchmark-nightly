Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/msvideo1?download=true
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
  %i.ah = sdiv i32 %i.ag, 4                       ; 2 uses
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
  %.0184.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.3.i, %._crit_edge.i ]
  %.0103183.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.3106.i, %._crit_edge.i ]
  %.0107182.i = phi i32 [ %i.an, %.lr.ph.preheader.i ], [ %i.ll, %._crit_edge.i ] ; 2 uses
  %.0115181.i = phi i32 [ %i.ao, %.lr.ph.preheader.i ], [ %.2117.i, %._crit_edge.i ]
  %i.au = sext i32 %indvars.iv.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv213.i = phi i64 [ %i.au, %.lr.ph.i ], [ %indvars.iv.next214.i, %.loopexit.i ] ; 7 uses
  %.1178.i = phi i32 [ %.0184.i, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %.1104177.i = phi i32 [ %.0103183.i, %.lr.ph.i ], [ %.3106.i, %.loopexit.i ] ; 5 uses
  %.0108176.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.lj, %.loopexit.i ] ; 2 uses
  %.1116175.i = phi i32 [ %.0115181.i, %.lr.ph.i ], [ %.2117.i, %.loopexit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.1178.i, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %.1178.i, -1
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.g
  %i.aw = add nsw i32 %.1104177.i, 2              ; 6 uses
  %i.ax = load i32, ptr %i.j, align 8, !tbaa !45  ; 6 uses
  %i.ay = icmp sgt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.az, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.aw, i32 noundef %i.ax) #5
  br label %msvideo1_decode_8bit.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !44  ; 3 uses
  %i.bb = sext i32 %.1104177.i to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !48  ; 7 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !48  ; 4 uses
  %i.bg = zext i8 %i.bd to i32                    ; 4 uses
  %i.bh = icmp eq i8 %i.bd, 0
  %i.bi = zext i8 %i.bf to i32                    ; 4 uses
  %i.bj = icmp eq i8 %i.bf, 0
  %or.cond.i = select i1 %i.bh, i1 %i.bj, i1 false
  %i.bk = icmp eq i32 %.1116175.i, 0
  %or.cond4.i = select i1 %or.cond.i, i1 %i.bk, i1 false
  br i1 %or.cond4.i, label %msvideo1_decode_8bit.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = and i32 %i.bi, 252
  %i.bm = icmp eq i32 %i.bl, 132
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = shl nuw nsw i32 %i.bi, 8
  %i.bo = add nuw nsw i32 %i.bg, -33793
  %i.bp = add nsw i32 %i.bo, %i.bn
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.l
  %i.bq = icmp sgt i8 %i.bf, -1
  br i1 %i.bq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.br = add nsw i32 %.1104177.i, 4              ; 3 uses
  %i.bs = icmp sgt i32 %i.br, %i.ax
  br i1 %i.bs, label %bb.p, label %.preheader.i

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bt, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.br, i32 noundef %i.ax) #5
  br label %msvideo1_decode_8bit.exit

.preheader.i:                                     ; preds = %bb.o
  %i.bu = shl nuw nsw i32 %i.bi, 8
  %i.bv = or disjoint i32 %i.bu, %i.bg
  %i.bw = trunc nuw nsw i32 %i.bv to i16          ; 15 uses
  %i.bx = sext i32 %i.aw to i64
  %i.by = getelementptr inbounds i8, ptr %i.ba, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !48
  store i8 %i.bz, ptr %i.b, align 8, !tbaa !48
  %i.ca = getelementptr i8, ptr %i.bc, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !48  ; 2 uses
  store i8 %i.cb, ptr %i.am, align 1, !tbaa !48
  %i.cc = and i16 %i.bw, 1
  %i.cd = xor i16 %i.cc, 1
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !48
  %i.ch = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv213.i ; 4 uses
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !48
  %i.ci = lshr i16 %i.bw, 1
  %i.cj = and i16 %i.ci, 1
  %i.ck = xor i16 %i.cj, 1
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !48
  %i.co = getelementptr i8, ptr %i.ch, i64 1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !48
  %i.cp = lshr i16 %i.bw, 2
  %i.cq = and i16 %i.cp, 1
  %i.cr = xor i16 %i.cq, 1
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !48
  %i.cv = getelementptr i8, ptr %i.ch, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !48
  %i.cw = lshr i16 %i.bw, 3
  %i.cx = and i16 %i.cw, 1
  %i.cy = xor i16 %i.cx, 1
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !48
  %i.dc = getelementptr i8, ptr %i.ch, i64 3
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !48
  %i.dd = lshr i16 %i.bw, 4
  %i.de = trunc i64 %indvars.iv213.i to i32
  %i.df = sub i32 %i.de, %i.ad                    ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = and i16 %i.dd, 1
  %i.di = xor i16 %i.dh, 1
  %i.dj = zext nneg i16 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !48
  %i.dm = getelementptr inbounds i8, ptr %i.ab, i64 %i.dg ; 4 uses
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !48
  %i.dn = lshr i16 %i.bw, 5
  %i.do = and i16 %i.dn, 1
  %i.dp = xor i16 %i.do, 1
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !48
  %i.dt = getelementptr i8, ptr %i.dm, i64 1
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !48
  %i.du = lshr i16 %i.bw, 6
  %i.dv = and i16 %i.du, 1
  %i.dw = xor i16 %i.dv, 1
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !48
  %i.ea = getelementptr i8, ptr %i.dm, i64 2
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !48
  %i.eb = lshr i16 %i.bw, 7
  %i.ec = and i16 %i.eb, 1
  %i.ed = xor i16 %i.ec, 1
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !48
  %i.eh = getelementptr i8, ptr %i.dm, i64 3
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !48
  %i.ei = lshr i16 %i.bw, 8
  %i.ej = sub i32 %i.df, %i.ad                    ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = and i16 %i.ei, 1
  %i.em = xor i16 %i.el, 1
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !48
  %i.eq = getelementptr inbounds i8, ptr %i.ab, i64 %i.ek ; 4 uses
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !48
  %i.er = lshr i16 %i.bw, 9
  %i.es = and i16 %i.er, 1
  %i.et = xor i16 %i.es, 1
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !48
  %i.ex = getelementptr i8, ptr %i.eq, i64 1
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !48
  %i.ey = lshr i16 %i.bw, 10
  %i.ez = and i16 %i.ey, 1
  %i.fa = xor i16 %i.ez, 1
  %i.fb = zext nneg i16 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !48
  %i.fe = getelementptr i8, ptr %i.eq, i64 2
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !48
  %i.ff = lshr i16 %i.bw, 11
  %i.fg = and i16 %i.ff, 1
  %i.fh = xor i16 %i.fg, 1
  %i.fi = zext nneg i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !48
  %i.fl = getelementptr i8, ptr %i.eq, i64 3
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !48
  %i.fm = lshr i16 %i.bw, 12
  %i.fn = sub i32 %i.ej, %i.ad
  %i.fo = sext i32 %i.fn to i64
  %i.fp = and i16 %i.fm, 1
  %i.fq = xor i16 %i.fp, 1
  %i.fr = zext nneg i16 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !48
  %i.fu = getelementptr inbounds i8, ptr %i.ab, i64 %i.fo ; 4 uses
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !48
  %i.fv = lshr i16 %i.bw, 13
  %i.fw = and i16 %i.fv, 1
  %i.fx = xor i16 %i.fw, 1
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !48
  %i.gb = getelementptr i8, ptr %i.fu, i64 1
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !48
  %i.gc = lshr i16 %i.bw, 14
  %i.gd = xor i16 %i.gc, 1
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !48
  %i.gh = getelementptr i8, ptr %i.fu, i64 2
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !48
  %i.gi = getelementptr i8, ptr %i.fu, i64 3
  store i8 %i.cb, ptr %i.gi, align 1, !tbaa !48
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.n
  %i.gj = icmp samesign ugt i8 %i.bf, -113
  br i1 %i.gj, label %bb.r, label %.preheader133.i

bb.r:                                             ; preds = %bb.q
  %i.gk = add nsw i32 %.1104177.i, 10             ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, %i.ax
  br i1 %i.gl, label %bb.s, label %.preheader132.i

bb.s:                                             ; preds = %bb.r
  %i.gm = load ptr, ptr %i.h, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gm, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.gk, i32 noundef %i.ax) #5
  br label %msvideo1_decode_8bit.exit

.preheader132.i:                                  ; preds = %bb.r
  %i.gn = shl nuw nsw i32 %i.bi, 8
  %i.go = or disjoint i32 %i.gn, %i.bg
  %i.gp = trunc nuw i32 %i.go to i16              ; 14 uses
  %i.gq = sext i32 %i.aw to i64
  %i.gr = getelementptr inbounds i8, ptr %i.ba, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 1
  store i64 %i.gs, ptr %i.b, align 8
  %i.gt = and i32 %i.bg, 1
  %i.gu = xor i32 %i.gt, 1
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !48
  %i.gy = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv213.i ; 4 uses
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !48
  %i.gz = lshr i16 %i.gp, 1
  %i.ha = and i16 %i.gz, 1
  %i.hb = xor i16 %i.ha, 1
  %i.hc = zext nneg i16 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !48
  %i.hf = getelementptr i8, ptr %i.gy, i64 1
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !48
  %i.hg = lshr i16 %i.gp, 2
  %i.hh = and i16 %i.hg, 1
  %i.hi = xor i16 %i.hh, 3
  %i.hj = zext nneg i16 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !48
  %i.hm = getelementptr i8, ptr %i.gy, i64 2
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !48
  %i.hn = lshr i16 %i.gp, 3
  %i.ho = and i16 %i.hn, 1
  %i.hp = xor i16 %i.ho, 3
  %i.hq = zext nneg i16 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !48
  %i.ht = getelementptr i8, ptr %i.gy, i64 3
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !48
  %i.hu = lshr i16 %i.gp, 4
  %i.hv = trunc i64 %indvars.iv213.i to i32
  %i.hw = sub i32 %i.hv, %i.ad                    ; 2 uses
  %i.hx = sext i32 %i.hw to i64
  %i.hy = and i16 %i.hu, 1
  %i.hz = xor i16 %i.hy, 1
  %i.ia = zext nneg i16 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !48
  %i.id = getelementptr inbounds i8, ptr %i.ab, i64 %i.hx ; 4 uses
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !48
  %i.ie = lshr i16 %i.gp, 5
  %i.if = and i16 %i.ie, 1
  %i.ig = xor i16 %i.if, 1
  %i.ih = zext nneg i16 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !48
  %i.ik = getelementptr i8, ptr %i.id, i64 1
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !48
  %i.il = lshr i16 %i.gp, 6
  %i.im = and i16 %i.il, 1
  %i.in = xor i16 %i.im, 3
  %i.io = zext nneg i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !48
  %i.ir = getelementptr i8, ptr %i.id, i64 2
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !48
  %i.is = lshr i16 %i.gp, 7
  %i.it = and i16 %i.is, 1
  %i.iu = xor i16 %i.it, 3
  %i.iv = zext nneg i16 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !48
  %i.iy = getelementptr i8, ptr %i.id, i64 3
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !48
  %i.iz = lshr i16 %i.gp, 8
  %i.ja = sub i32 %i.hw, %i.ad                    ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = and i16 %i.iz, 1
  %i.jd = xor i16 %i.jc, 5
  %i.je = zext nneg i16 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !48
  %i.jh = getelementptr inbounds i8, ptr %i.ab, i64 %i.jb ; 4 uses
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !48
  %i.ji = lshr i16 %i.gp, 9
  %i.jj = and i16 %i.ji, 1
  %i.jk = xor i16 %i.jj, 5
  %i.jl = zext nneg i16 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !48
  %i.jo = getelementptr i8, ptr %i.jh, i64 1
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !48
  %i.jp = lshr i16 %i.gp, 10
  %i.jq = and i16 %i.jp, 1
  %i.jr = xor i16 %i.jq, 7
  %i.js = zext nneg i16 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !48
  %i.jv = getelementptr i8, ptr %i.jh, i64 2
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !48
  %i.jw = lshr i16 %i.gp, 11
  %i.jx = and i16 %i.jw, 1
  %i.jy = xor i16 %i.jx, 7
  %i.jz = zext nneg i16 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !48
  %i.kc = getelementptr i8, ptr %i.jh, i64 3
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !48
  %i.kd = lshr i16 %i.gp, 12
  %i.ke = sub i32 %i.ja, %i.ad
  %i.kf = sext i32 %i.ke to i64
  %i.kg = and i16 %i.kd, 1
  %i.kh = xor i16 %i.kg, 5
  %i.ki = zext nneg i16 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !48
  %i.kl = getelementptr inbounds i8, ptr %i.ab, i64 %i.kf ; 4 uses
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !48
  %i.km = lshr i16 %i.gp, 13
  %i.kn = and i16 %i.km, 5
  %i.ko = xor i16 %i.kn, 1
  %i.kp = zext nneg i16 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !48
  %i.ks = getelementptr i8, ptr %i.kl, i64 1
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !48
  %i.kt = lshr i16 %i.gp, 14
  %i.ku = and i16 %i.kt, 1
  %i.kv = xor i16 %i.ku, 7
  %i.kw = zext nneg i16 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !48
  %i.kz = getelementptr i8, ptr %i.kl, i64 2
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !48
  %i.la = load i8, ptr %i.at, align 2, !tbaa !48
  %i.lb = getelementptr i8, ptr %i.kl, i64 3
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !48
  br label %.loopexit.i

.preheader133.i:                                  ; preds = %bb.q
  store i8 %i.bd, ptr %i.b, align 8, !tbaa !48
  %scevgep.i = getelementptr i8, ptr %i.ab, i64 %indvars.iv213.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.i, i8 %i.bd, i64 4, i1 false), !tbaa !48
  %i.lc = trunc i64 %indvars.iv213.i to i32
  %i.ld = sub i32 %i.lc, %i.ad                    ; 2 uses
  %i.le = sext i32 %i.ld to i64
  %scevgep.1.i = getelementptr i8, ptr %i.ab, i64 %i.le
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.1.i, i8 %i.bd, i64 4, i1 false), !tbaa !48
  %i.lf = sub i32 %i.ld, %i.ad                    ; 2 uses
  %i.lg = sext i32 %i.lf to i64
  %scevgep.2.i = getelementptr i8, ptr %i.ab, i64 %i.lg
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.2.i, i8 %i.bd, i64 4, i1 false), !tbaa !48
  %i.lh = sub i32 %i.lf, %i.ad
  %i.li = sext i32 %i.lh to i64
  %scevgep.3.i = getelementptr i8, ptr %i.ab, i64 %i.li
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.3.i, i8 %i.bd, i64 4, i1 false), !tbaa !48
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader133.i, %.preheader132.i, %.preheader.i, %bb.m, %bb.h
  %.3106.i = phi i32 [ %.1104177.i, %bb.h ], [ %i.aw, %bb.m ], [ %i.gk, %.preheader132.i ], [ %i.br, %.preheader.i ], [ %i.aw, %.preheader133.i ] ; 2 uses
  %.3.i = phi i32 [ %i.av, %bb.h ], [ %i.bp, %bb.m ], [ 0, %.preheader132.i ], [ 0, %.preheader.i ], [ 0, %.preheader133.i ] ; 2 uses
  %.2117.i = add nsw i32 %.1116175.i, -1          ; 2 uses
  %indvars.iv.next214.i = add nsw i64 %indvars.iv213.i, 4
  %i.lj = add nsw i32 %.0108176.i, -1
  %i.lk = icmp sgt i32 %.0108176.i, 1
  br i1 %i.lk, label %bb.g, label %._crit_edge.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.ll = add nsw i32 %.0107182.i, -1
  %i.lm = icmp sgt i32 %.0107182.i, 1
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
  %i.mc = sdiv i32 %i.mb, 4                       ; 2 uses
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

.lr.ph.i31:                                       ; preds = %._crit_edge.i36, %.lr.ph.preheader.i30
  %indvars.iv.i32 = phi i32 [ %i.mo, %.lr.ph.preheader.i30 ], [ %indvars.iv.next233.i, %._crit_edge.i36 ] ; 2 uses
  %.0200.i = phi i32 [ 0, %.lr.ph.preheader.i30 ], [ %.3.i35, %._crit_edge.i36 ]
  %.0115199.i = phi i32 [ 0, %.lr.ph.preheader.i30 ], [ %.3118.i, %._crit_edge.i36 ]
  %.0119198.i = phi i32 [ %i.mk, %.lr.ph.preheader.i30 ], [ %i.xp, %._crit_edge.i36 ] ; 2 uses
  %.0127197.i = phi i32 [ %i.ml, %.lr.ph.preheader.i30 ], [ %.2129.i, %._crit_edge.i36 ]
  %i.mq = sext i32 %indvars.iv.i32 to i64
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.i34, %.lr.ph.i31
  %indvars.iv234.i = phi i64 [ %i.mq, %.lr.ph.i31 ], [ %indvars.iv.next235.i, %.loopexit.i34 ] ; 7 uses
  %.1194.i = phi i32 [ %.0200.i, %.lr.ph.i31 ], [ %.3.i35, %.loopexit.i34 ] ; 2 uses
  %.1116193.i = phi i32 [ %.0115199.i, %.lr.ph.i31 ], [ %.3118.i, %.loopexit.i34 ] ; 5 uses
  %.0120192.i = phi i32 [ %i.mc, %.lr.ph.i31 ], [ %i.xn, %.loopexit.i34 ] ; 2 uses
  %.1128191.i = phi i32 [ %.0127197.i, %.lr.ph.i31 ], [ %.2129.i, %.loopexit.i34 ] ; 2 uses
  %.not.i33 = icmp eq i32 %.1194.i, 0
  br i1 %.not.i33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mr = add nsw i32 %.1194.i, -1
  br label %.loopexit.i34

bb.w:                                             ; preds = %bb.u
  %i.ms = add nsw i32 %.1116193.i, 2              ; 5 uses
  %i.mt = load i32, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.mu = icmp sgt i32 %i.ms, %i.mt
  br i1 %i.mu, label %msvideo1_decode_16bit.exit.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mv = load ptr, ptr %i.i, align 8, !tbaa !44  ; 3 uses
  %i.mw = sext i32 %.1116193.i to i64
  %i.mx = getelementptr i8, ptr %i.mv, i64 %i.mw  ; 7 uses
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !48  ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mx, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !48  ; 3 uses
  %i.nb = zext i8 %i.my to i32                    ; 3 uses
  %i.nc = icmp eq i8 %i.my, 0
  %i.nd = zext i8 %i.na to i32                    ; 3 uses
  %i.ne = icmp eq i8 %i.na, 0
  %or.cond.i37 = select i1 %i.nc, i1 %i.ne, i1 false
  %i.nf = icmp eq i32 %.1128191.i, 0
  %or.cond4.i38 = select i1 %or.cond.i37, i1 %i.nf, i1 false
  br i1 %or.cond4.i38, label %msvideo1_decode_16bit.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ng = and i32 %i.nd, 252
  %i.nh = icmp eq i32 %i.ng, 132
  br i1 %i.nh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ni = shl nuw nsw i32 %i.nd, 8
  %i.nj = add nuw nsw i32 %i.nb, -33793
  %i.nk = add nsw i32 %i.nj, %i.ni
  br label %.loopexit.i34

bb.aa:                                            ; preds = %bb.y
  %i.nl = icmp sgt i8 %i.na, -1
  %i.nm = shl nuw nsw i32 %i.nd, 8
  %i.nn = or disjoint i32 %i.nm, %i.nb
  %i.no = trunc nuw i32 %i.nn to i16              ; 31 uses
  br i1 %i.nl, label %bb.ab, label %.preheader146.i

bb.ab:                                            ; preds = %bb.aa
  %i.np = add nsw i32 %.1116193.i, 6              ; 4 uses
  %i.nq = icmp sgt i32 %i.np, %i.mt
  br i1 %i.nq, label %msvideo1_decode_16bit.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nr = sext i32 %i.ms to i64
  %i.ns = getelementptr inbounds i8, ptr %i.mv, i64 %i.nr
  %i.nt = load i16, ptr %i.ns, align 1, !tbaa !48 ; 2 uses
  store i16 %i.nt, ptr %i.a, align 16, !tbaa !52
  %i.nu = getelementptr i8, ptr %i.mx, i64 4
  %i.nv = load i16, ptr %i.nu, align 1, !tbaa !48 ; 2 uses
  store i16 %i.nv, ptr %i.mh, align 2, !tbaa !52
  %.not144.i = icmp sgt i16 %i.nt, -1
  br i1 %.not144.i, label %.preheader.preheader.i, label %bb.ad

.preheader.preheader.i:                           ; preds = %bb.ac
  %i.nw = and i16 %i.no, 1
  %i.nx = xor i16 %i.nw, 1
  %i.ny = zext nneg i16 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ny
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !52
  %i.ob = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %indvars.iv234.i ; 4 uses
  store i16 %i.oa, ptr %i.ob, align 2, !tbaa !52
  %i.oc = lshr i16 %i.no, 1
  %i.od = and i16 %i.oc, 1
  %i.oe = xor i16 %i.od, 1
  %i.of = zext nneg i16 %i.oe to i64
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.of
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !52
  %i.oi = getelementptr i8, ptr %i.ob, i64 2
  store i16 %i.oh, ptr %i.oi, align 2, !tbaa !52
  %i.oj = lshr i16 %i.no, 2
  %i.ok = and i16 %i.oj, 1
  %i.ol = xor i16 %i.ok, 1
  %i.om = zext nneg i16 %i.ol to i64
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.om
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !52
  %i.op = getelementptr i8, ptr %i.ob, i64 4
  store i16 %i.oo, ptr %i.op, align 2, !tbaa !52
  %i.oq = lshr i16 %i.no, 3
  %i.or = and i16 %i.oq, 1
  %i.os = xor i16 %i.or, 1
  %i.ot = zext nneg i16 %i.os to i64
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ot
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !52
  %i.ow = getelementptr i8, ptr %i.ob, i64 6
  store i16 %i.ov, ptr %i.ow, align 2, !tbaa !52
  %i.ox = lshr i16 %i.no, 4
  %i.oy = trunc i64 %indvars.iv234.i to i32
  %i.oz = sub i32 %i.oy, %i.ly                    ; 2 uses
  %i.pa = sext i32 %i.oz to i64
  %i.pb = and i16 %i.ox, 1
  %i.pc = xor i16 %i.pb, 1
  %i.pd = zext nneg i16 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !52
  %i.pg = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.pa ; 4 uses
  store i16 %i.pf, ptr %i.pg, align 2, !tbaa !52
  %i.ph = lshr i16 %i.no, 5
  %i.pi = and i16 %i.ph, 1
  %i.pj = xor i16 %i.pi, 1
  %i.pk = zext nneg i16 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pk
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !52
  %i.pn = getelementptr i8, ptr %i.pg, i64 2
  store i16 %i.pm, ptr %i.pn, align 2, !tbaa !52
  %i.po = lshr i16 %i.no, 6
  %i.pp = and i16 %i.po, 1
  %i.pq = xor i16 %i.pp, 1
  %i.pr = zext nneg i16 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pr
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !52
  %i.pu = getelementptr i8, ptr %i.pg, i64 4
  store i16 %i.pt, ptr %i.pu, align 2, !tbaa !52
  %i.pv = lshr i16 %i.no, 7
  %i.pw = and i16 %i.pv, 1
  %i.px = xor i16 %i.pw, 1
  %i.py = zext nneg i16 %i.px to i64
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.py
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !52
  %i.qb = getelementptr i8, ptr %i.pg, i64 6
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !52
  %i.qc = lshr i16 %i.no, 8
  %i.qd = sub i32 %i.oz, %i.ly                    ; 2 uses
  %i.qe = sext i32 %i.qd to i64
  %i.qf = and i16 %i.qc, 1
  %i.qg = xor i16 %i.qf, 1
  %i.qh = zext nneg i16 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qh
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !52
  %i.qk = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.qe ; 4 uses
  store i16 %i.qj, ptr %i.qk, align 2, !tbaa !52
  %i.ql = lshr i16 %i.no, 9
  %i.qm = and i16 %i.ql, 1
  %i.qn = xor i16 %i.qm, 1
  %i.qo = zext nneg i16 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qo
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !52
  %i.qr = getelementptr i8, ptr %i.qk, i64 2
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !52
  %i.qs = lshr i16 %i.no, 10
  %i.qt = and i16 %i.qs, 1
  %i.qu = xor i16 %i.qt, 1
  %i.qv = zext nneg i16 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !52
  %i.qy = getelementptr i8, ptr %i.qk, i64 4
  store i16 %i.qx, ptr %i.qy, align 2, !tbaa !52
  %i.qz = lshr i16 %i.no, 11
  %i.ra = and i16 %i.qz, 1
  %i.rb = xor i16 %i.ra, 1
  %i.rc = zext nneg i16 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.rc
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !52
  %i.rf = getelementptr i8, ptr %i.qk, i64 6
  store i16 %i.re, ptr %i.rf, align 2, !tbaa !52
  %i.rg = lshr i16 %i.no, 12
  %i.rh = sub i32 %i.qd, %i.ly
  %i.ri = sext i32 %i.rh to i64
  %i.rj = and i16 %i.rg, 1
  %i.rk = xor i16 %i.rj, 1
  %i.rl = zext nneg i16 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.rl
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !52
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.ri ; 4 uses
  store i16 %i.rn, ptr %i.ro, align 2, !tbaa !52
  %i.rp = lshr i16 %i.no, 13
  %i.rq = and i16 %i.rp, 1
  %i.rr = xor i16 %i.rq, 1
  %i.rs = zext nneg i16 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.rs
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !52
  %i.rv = getelementptr i8, ptr %i.ro, i64 2
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !52
  %i.rw = lshr i16 %i.no, 14
  %i.rx = xor i16 %i.rw, 1
  %i.ry = zext nneg i16 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ry
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !52
  %i.sb = getelementptr i8, ptr %i.ro, i64 4
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !52
  %i.sc = getelementptr i8, ptr %i.ro, i64 6
  store i16 %i.nv, ptr %i.sc, align 2, !tbaa !52
  br label %.loopexit.i34

bb.ad:                                            ; preds = %bb.ac
  %i.sd = add nsw i32 %.1116193.i, 18             ; 3 uses
  %i.se = icmp sgt i32 %i.sd, %i.mt
  br i1 %i.se, label %msvideo1_decode_16bit.exit.sink.split, label %.preheader145.i

.preheader145.i:                                  ; preds = %bb.ad
  %i.sf = sext i32 %i.np to i64
  %i.sg = getelementptr inbounds i8, ptr %i.mv, i64 %i.sf
  %i.sh = load i16, ptr %i.sg, align 1, !tbaa !48
  %i.si = getelementptr i8, ptr %i.mx, i64 8
  %i.sj = getelementptr i8, ptr %i.mx, i64 12
  %i.sk = load i16, ptr %i.sj, align 1, !tbaa !48
  %i.sl = load <2 x i16>, ptr %i.si, align 1, !tbaa !48
  %i.sm = shufflevector <2 x i16> %i.sl, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.sn = insertelement <4 x i16> %i.sm, i16 %i.sh, i64 0
  %i.so = insertelement <4 x i16> %i.sn, i16 %i.sk, i64 3
  store <4 x i16> %i.so, ptr %i.mi, align 4, !tbaa !52
  %i.sp = getelementptr i8, ptr %i.mx, i64 14
  %i.sq = getelementptr i8, ptr %i.mx, i64 16
  %i.sr = load i16, ptr %i.sq, align 1, !tbaa !48
  %i.ss = load <2 x i16>, ptr %i.sp, align 1, !tbaa !48
  store <2 x i16> %i.ss, ptr %i.mj, align 4, !tbaa !52
  %i.st = and i32 %i.nb, 1
  %i.su = xor i32 %i.st, 1
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.sv
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !52
  %i.sy = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %indvars.iv234.i ; 4 uses
  store i16 %i.sx, ptr %i.sy, align 2, !tbaa !52
  %i.sz = lshr i16 %i.no, 1
  %i.ta = and i16 %i.sz, 1
  %i.tb = xor i16 %i.ta, 1
  %i.tc = zext nneg i16 %i.tb to i64
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.tc
  %i.te = load i16, ptr %i.td, align 2, !tbaa !52
  %i.tf = getelementptr i8, ptr %i.sy, i64 2
  store i16 %i.te, ptr %i.tf, align 2, !tbaa !52
  %i.tg = lshr i16 %i.no, 2
  %i.th = and i16 %i.tg, 1
  %i.ti = xor i16 %i.th, 3
  %i.tj = zext nneg i16 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.tj
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !52
  %i.tm = getelementptr i8, ptr %i.sy, i64 4
  store i16 %i.tl, ptr %i.tm, align 2, !tbaa !52
  %i.tn = lshr i16 %i.no, 3
  %i.to = and i16 %i.tn, 1
  %i.tp = xor i16 %i.to, 3
  %i.tq = zext nneg i16 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.tq
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !52
  %i.tt = getelementptr i8, ptr %i.sy, i64 6
  store i16 %i.ts, ptr %i.tt, align 2, !tbaa !52
  %i.tu = lshr i16 %i.no, 4
  %i.tv = trunc i64 %indvars.iv234.i to i32
  %i.tw = sub i32 %i.tv, %i.ly                    ; 2 uses
  %i.tx = sext i32 %i.tw to i64
  %i.ty = and i16 %i.tu, 1
  %i.tz = xor i16 %i.ty, 1
  %i.ua = zext nneg i16 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ua
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !52
  %i.ud = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.tx ; 4 uses
  store i16 %i.uc, ptr %i.ud, align 2, !tbaa !52
  %i.ue = lshr i16 %i.no, 5
  %i.uf = and i16 %i.ue, 1
  %i.ug = xor i16 %i.uf, 1
  %i.uh = zext nneg i16 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.uh
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !52
  %i.uk = getelementptr i8, ptr %i.ud, i64 2
  store i16 %i.uj, ptr %i.uk, align 2, !tbaa !52
  %i.ul = lshr i16 %i.no, 6
  %i.um = and i16 %i.ul, 1
  %i.un = xor i16 %i.um, 3
  %i.uo = zext nneg i16 %i.un to i64
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.uo
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !52
  %i.ur = getelementptr i8, ptr %i.ud, i64 4
  store i16 %i.uq, ptr %i.ur, align 2, !tbaa !52
  %i.us = lshr i16 %i.no, 7
  %i.ut = and i16 %i.us, 1
  %i.uu = xor i16 %i.ut, 3
  %i.uv = zext nneg i16 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.uv
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !52
  %i.uy = getelementptr i8, ptr %i.ud, i64 6
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !52
  %i.uz = lshr i16 %i.no, 8
  %i.va = sub i32 %i.tw, %i.ly                    ; 2 uses
  %i.vb = sext i32 %i.va to i64
  %i.vc = and i16 %i.uz, 1
  %i.vd = xor i16 %i.vc, 5
  %i.ve = zext nneg i16 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ve
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !52
  %i.vh = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.vb ; 4 uses
  store i16 %i.vg, ptr %i.vh, align 2, !tbaa !52
  %i.vi = lshr i16 %i.no, 9
  %i.vj = and i16 %i.vi, 1
  %i.vk = xor i16 %i.vj, 5
  %i.vl = zext nneg i16 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vl
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !52
  %i.vo = getelementptr i8, ptr %i.vh, i64 2
  store i16 %i.vn, ptr %i.vo, align 2, !tbaa !52
  %i.vp = lshr i16 %i.no, 10
  %i.vq = and i16 %i.vp, 1
  %i.vr = xor i16 %i.vq, 7
  %i.vs = zext nneg i16 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vs
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !52
  %i.vv = getelementptr i8, ptr %i.vh, i64 4
  store i16 %i.vu, ptr %i.vv, align 2, !tbaa !52
  %i.vw = lshr i16 %i.no, 11
  %i.vx = and i16 %i.vw, 1
  %i.vy = xor i16 %i.vx, 7
  %i.vz = zext nneg i16 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vz
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !52
  %i.wc = getelementptr i8, ptr %i.vh, i64 6
  store i16 %i.wb, ptr %i.wc, align 2, !tbaa !52
  %i.wd = lshr i16 %i.no, 12
  %i.we = sub i32 %i.va, %i.ly
  %i.wf = sext i32 %i.we to i64
  %i.wg = and i16 %i.wd, 1
  %i.wh = xor i16 %i.wg, 5
  %i.wi = zext nneg i16 %i.wh to i64
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wi
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !52
  %i.wl = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.wf ; 4 uses
  store i16 %i.wk, ptr %i.wl, align 2, !tbaa !52
  %i.wm = lshr i16 %i.no, 13
  %i.wn = and i16 %i.wm, 1
  %i.wo = xor i16 %i.wn, 5
  %i.wp = zext nneg i16 %i.wo to i64
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wp
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !52
  %i.ws = getelementptr i8, ptr %i.wl, i64 2
  store i16 %i.wr, ptr %i.ws, align 2, !tbaa !52
  %i.wt = lshr i16 %i.no, 14
  %i.wu = xor i16 %i.wt, 7
  %i.wv = zext nneg i16 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.wv
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !52
  %i.wy = getelementptr i8, ptr %i.wl, i64 4
  store i16 %i.wx, ptr %i.wy, align 2, !tbaa !52
  %i.wz = getelementptr i8, ptr %i.wl, i64 6
  store i16 %i.sr, ptr %i.wz, align 2, !tbaa !52
  br label %.loopexit.i34

.preheader146.i:                                  ; preds = %bb.aa
  store i16 %i.no, ptr %i.a, align 16, !tbaa !52
  %i.xa = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %indvars.iv234.i
  %i.xb = insertelement <4 x i16> poison, i16 %i.no, i64 0
  %i.xc = shufflevector <4 x i16> %i.xb, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.xc, ptr %i.xa, align 2, !tbaa !52
  %i.xd = trunc i64 %indvars.iv234.i to i32
  %i.xe = sub i32 %i.xd, %i.ly                    ; 2 uses
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.xf
  store <4 x i16> %i.xc, ptr %i.xg, align 2, !tbaa !52
  %i.xh = sub i32 %i.xe, %i.ly                    ; 2 uses
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.xi
  store <4 x i16> %i.xc, ptr %i.xj, align 2, !tbaa !52
  %i.xk = sub i32 %i.xh, %i.ly
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [2 x i8], ptr %i.lv, i64 %i.xl
  store <4 x i16> %i.xc, ptr %i.xm, align 2, !tbaa !52
  br label %.loopexit.i34

.loopexit.i34:                                    ; preds = %.preheader146.i, %.preheader145.i, %.preheader.preheader.i, %bb.z, %bb.v
  %.3118.i = phi i32 [ %.1116193.i, %bb.v ], [ %i.ms, %bb.z ], [ %i.np, %.preheader.preheader.i ], [ %i.sd, %.preheader145.i ], [ %i.ms, %.preheader146.i ] ; 2 uses
  %.3.i35 = phi i32 [ %i.mr, %bb.v ], [ %i.nk, %bb.z ], [ 0, %.preheader.preheader.i ], [ 0, %.preheader145.i ], [ 0, %.preheader146.i ] ; 2 uses
  %.2129.i = add nsw i32 %.1128191.i, -1          ; 2 uses
  %indvars.iv.next235.i = add nsw i64 %indvars.iv234.i, 4
  %i.xn = add nsw i32 %.0120192.i, -1
  %i.xo = icmp sgt i32 %.0120192.i, 1
  br i1 %i.xo, label %bb.u, label %._crit_edge.i36, !llvm.loop !54

._crit_edge.i36:                                  ; preds = %.loopexit.i34
  %i.xp = add nsw i32 %.0119198.i, -1
  %i.xq = icmp sgt i32 %.0119198.i, 1
  %indvars.iv.next233.i = sub i32 %indvars.iv.i32, %i.mp
  br i1 %i.xq, label %.lr.ph.i31, label %msvideo1_decode_16bit.exit, !llvm.loop !55

msvideo1_decode_16bit.exit.sink.split:            ; preds = %bb.ad, %bb.ab, %bb.w
  %.sink = phi i32 [ %i.np, %bb.ab ], [ %i.ms, %bb.w ], [ %i.sd, %bb.ad ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lz, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef %i.mt) #5
  br label %msvideo1_decode_16bit.exit

msvideo1_decode_16bit.exit:                       ; preds = %._crit_edge.i36, %bb.x, %msvideo1_decode_16bit.exit.sink.split, %.thread, %.lr.ph202.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ae

bb.ae:                                            ; preds = %msvideo1_decode_16bit.exit, %msvideo1_decode_8bit.exit
  %i.xr = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.xs = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.xr) #5 ; 2 uses
  %i.xt = icmp slt i32 %i.xs, 0
  br i1 %i.xt, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %2, align 4, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.c, %bb.af, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ %i.f, %bb.af ], [ %i.u, %bb.c ], [ %i.xs, %bb.ae ]
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
