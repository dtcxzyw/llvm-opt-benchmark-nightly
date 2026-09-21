Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/v210enc?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"v210\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Uncompressed 4:2:2 10-bit\00", align 1
@.compoundliteral = internal constant [3 x i32] [i32 64, i32 4, i32 -1], align 4
@ff_v210_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 127, i32 1052674, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 24, ptr null, ptr null, ptr null, ptr @encode_init, %union.anon { ptr @encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"v210 needs even width\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error getting output packet.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @encode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  store ptr @v210_planar_pack_8_c, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @v210_planar_pack_10_c, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x i32> <i32 2, i32 1>, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 20, ptr %i.h, align 8, !tbaa !40
  %i.i = tail call i64 @ff_guess_coded_bitrate(ptr noundef nonnull %0) #7
  %i.j = shl nsw i64 %i.i, 4
  %i.k = sdiv i64 %i.j, 15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.l, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %.fr50 = freeze i32 %i.b
  %i.c = add i32 %.fr50, 47                       ; 2 uses
  %i.d = srem i32 %i.c, 48
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = shl nsw i32 %i.e, 3
  %i.g = sdiv i32 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !48
  %i.j = mul nsw i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = tail call i32 @ff_get_encode_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %i.k, i32 noundef 0) #7 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.q = load i32, ptr %i.p, align 4, !tbaa !55
  switch i32 %i.q, label %v210_enc_10.exit [
    i32 64, label %bb.d
    i32 4, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !48
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph194.i, label %v210_enc_10.exit

.lr.ph194.i:                                      ; preds = %bb.d
  %i.w = load i32, ptr %i.a, align 8, !tbaa !28
  %.fr118.i = freeze i32 %i.w                     ; 3 uses
  %i.x = load i32, ptr %i.t, align 4, !tbaa !56
  %i.y = mul nsw i32 %i.x, 6                      ; 2 uses
  %i.z = sdiv i32 %.fr118.i, %i.y                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.ae = load ptr, ptr %2, align 8, !tbaa !57
  %i.af = add i32 %.fr118.i, 47                   ; 2 uses
  %i.ag = srem i32 %i.af, 48
  %i.ah = sub nsw i32 %i.af, %i.ag
  %i.ai = shl nsw i32 %i.ah, 3
  %i.aj = sdiv i32 %i.ai, 3
  %i.ak = shl nsw i32 %.fr118.i, 3
  %i.al = add nsw i32 %i.ak, 11
  %.neg.i = sdiv i32 %i.al, -12
  %.neg119.i = shl nsw i32 %.neg.i, 2
  %i.am = add nsw i32 %i.aj, %.neg119.i
  %i.an = mul nsw i32 %i.z, %i.y                  ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = sext i32 %i.an to i64                   ; 2 uses
  %i.aq = ashr exact i32 %i.an, 1
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = shl nsw i32 %i.z, 4
  %i.at = sext i32 %i.am to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph194.i
  %.0102192.i = phi ptr [ %i.ab, %.lr.ph194.i ], [ %i.fw, %bb.j ] ; 2 uses
  %.0104191.i = phi ptr [ %i.ad, %.lr.ph194.i ], [ %i.fr, %bb.j ] ; 2 uses
  %.0108190.i = phi ptr [ %i.ae, %.lr.ph194.i ], [ %i.fn, %bb.j ] ; 2 uses
  %.0113189.i = phi i32 [ 0, %.lr.ph194.i ], [ %i.fx, %bb.j ]
  %.0114188.i = phi ptr [ %i.o, %.lr.ph194.i ], [ %i.fj, %bb.j ] ; 2 uses
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !32
  tail call void %i.aw(ptr noundef %.0108190.i, ptr noundef %.0104191.i, ptr noundef %.0102192.i, ptr noundef %.0114188.i, i64 noundef %i.ap) #7, !inline_history !42
  %i.ax = getelementptr inbounds [2 x i8], ptr %.0108190.i, i64 %i.ap ; 2 uses
  %i.ay = getelementptr inbounds [2 x i8], ptr %.0104191.i, i64 %i.ar ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %.0102192.i, i64 %i.ar ; 2 uses
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !56
  %i.bb = mul nsw i32 %i.as, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %.0114188.i, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.bf = add nsw i32 %i.be, -5
  %i.bg = icmp slt i32 %i.an, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.1103181.i = phi ptr [ %i.da, %.lr.ph.i ], [ %i.az, %bb.e ] ; 4 uses
  %.1105180.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %i.ay, %bb.e ] ; 4 uses
  %.1109179.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.ax, %bb.e ] ; 7 uses
  %.0112178.i = phi i32 [ %i.dl, %.lr.ph.i ], [ %i.an, %bb.e ]
  %.1115177.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %i.bd, %bb.e ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1105180.i, i64 2
  %i.bi = load i16, ptr %.1105180.i, align 2, !tbaa !35
  %i.bj = tail call i16 @llvm.umax.i16(i16 %i.bi, i16 4)
  %narrow165.i = tail call i16 @llvm.umin.i16(i16 %i.bj, i16 1019)
  %.0.i157.i = zext nneg i16 %narrow165.i to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 2
  %i.bl = load i16, ptr %.1109179.i, align 2, !tbaa !35
  %i.bm = tail call i16 @llvm.umax.i16(i16 %i.bl, i16 4)
  %narrow166.i = tail call i16 @llvm.umin.i16(i16 %i.bm, i16 1019)
  %.0.i155.i = zext nneg i16 %narrow166.i to i32
  %i.bn = shl nuw nsw i32 %.0.i155.i, 10
  %i.bo = getelementptr inbounds nuw i8, ptr %.1103181.i, i64 2
  %i.bp = load i16, ptr %.1103181.i, align 2, !tbaa !35
  %i.bq = tail call i16 @llvm.umax.i16(i16 %i.bp, i16 4)
  %narrow167.i = tail call i16 @llvm.umin.i16(i16 %i.bq, i16 1019)
  %.0.i153.i = zext nneg i16 %narrow167.i to i32
  %i.br = shl nuw nsw i32 %.0.i153.i, 20
  %i.bs = or disjoint i32 %i.br, %i.bn
  %i.bt = or disjoint i32 %i.bs, %.0.i157.i
  store i32 %i.bt, ptr %.1115177.i, align 1, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %.1115177.i, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 4
  %i.bw = load i16, ptr %i.bk, align 2, !tbaa !35
  %i.bx = tail call i16 @llvm.umax.i16(i16 %i.bw, i16 4)
  %narrow168.i = tail call i16 @llvm.umin.i16(i16 %i.bx, i16 1019)
  %.0.i151.i = zext nneg i16 %narrow168.i to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.1105180.i, i64 4
  %i.bz = load i16, ptr %i.bh, align 2, !tbaa !35
  %i.ca = tail call i16 @llvm.umax.i16(i16 %i.bz, i16 4)
  %narrow169.i = tail call i16 @llvm.umin.i16(i16 %i.ca, i16 1019)
  %.0.i149.i = zext nneg i16 %narrow169.i to i32
  %i.cb = shl nuw nsw i32 %.0.i149.i, 10
  %i.cc = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 6
  %i.cd = load i16, ptr %i.bv, align 2, !tbaa !35
  %i.ce = tail call i16 @llvm.umax.i16(i16 %i.cd, i16 4)
  %narrow170.i = tail call i16 @llvm.umin.i16(i16 %i.ce, i16 1019)
  %.0.i147.i = zext nneg i16 %narrow170.i to i32
  %i.cf = shl nuw nsw i32 %.0.i147.i, 20
  %i.cg = or disjoint i32 %i.cf, %i.cb
  %i.ch = or disjoint i32 %i.cg, %.0.i151.i
  store i32 %i.ch, ptr %i.bu, align 1, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %.1115177.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.1103181.i, i64 4
  %i.ck = load i16, ptr %i.bo, align 2, !tbaa !35
  %i.cl = tail call i16 @llvm.umax.i16(i16 %i.ck, i16 4)
  %narrow171.i = tail call i16 @llvm.umin.i16(i16 %i.cl, i16 1019)
  %.0.i145.i = zext nneg i16 %narrow171.i to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 8
  %i.cn = load i16, ptr %i.cc, align 2, !tbaa !35
  %i.co = tail call i16 @llvm.umax.i16(i16 %i.cn, i16 4)
  %narrow172.i = tail call i16 @llvm.umin.i16(i16 %i.co, i16 1019)
  %.0.i143.i = zext nneg i16 %narrow172.i to i32
  %i.cp = shl nuw nsw i32 %.0.i143.i, 10
  %i.cq = getelementptr inbounds nuw i8, ptr %.1105180.i, i64 6 ; 2 uses
  %i.cr = load i16, ptr %i.by, align 2, !tbaa !35
  %i.cs = tail call i16 @llvm.umax.i16(i16 %i.cr, i16 4)
  %narrow173.i = tail call i16 @llvm.umin.i16(i16 %i.cs, i16 1019)
  %.0.i141.i = zext nneg i16 %narrow173.i to i32
  %i.ct = shl nuw nsw i32 %.0.i141.i, 20
  %i.cu = or disjoint i32 %i.ct, %i.cp
  %i.cv = or disjoint i32 %i.cu, %.0.i145.i
  store i32 %i.cv, ptr %i.ci, align 1, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %.1115177.i, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 10
  %i.cy = load i16, ptr %i.cm, align 2, !tbaa !35
  %i.cz = tail call i16 @llvm.umax.i16(i16 %i.cy, i16 4)
  %narrow174.i = tail call i16 @llvm.umin.i16(i16 %i.cz, i16 1019)
  %.0.i139.i = zext nneg i16 %narrow174.i to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.1103181.i, i64 6 ; 2 uses
  %i.db = load i16, ptr %i.cj, align 2, !tbaa !35
  %i.dc = tail call i16 @llvm.umax.i16(i16 %i.db, i16 4)
  %narrow175.i = tail call i16 @llvm.umin.i16(i16 %i.dc, i16 1019)
  %.0.i137.i = zext nneg i16 %narrow175.i to i32
  %i.dd = shl nuw nsw i32 %.0.i137.i, 10
  %i.de = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 12 ; 2 uses
  %i.df = load i16, ptr %i.cx, align 2, !tbaa !35
  %i.dg = tail call i16 @llvm.umax.i16(i16 %i.df, i16 4)
  %narrow176.i = tail call i16 @llvm.umin.i16(i16 %i.dg, i16 1019)
  %.0.i135.i = zext nneg i16 %narrow176.i to i32
  %i.dh = shl nuw nsw i32 %.0.i135.i, 20
  %i.di = or disjoint i32 %i.dh, %i.dd
  %i.dj = or disjoint i32 %i.di, %.0.i139.i       ; 2 uses
  store i32 %i.dj, ptr %i.cw, align 1, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %.1115177.i, i64 16 ; 2 uses
  %i.dl = add nsw i32 %.0112178.i, 6              ; 3 uses
  %i.dm = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.dn = add nsw i32 %i.dm, -5
  %i.do = icmp slt i32 %i.dl, %i.dn
  br i1 %i.do, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.1115.lcssa.i = phi ptr [ %i.bd, %bb.e ], [ %i.dk, %.lr.ph.i ] ; 4 uses
  %.0112.lcssa.i = phi i32 [ %i.an, %bb.e ], [ %i.dl, %.lr.ph.i ] ; 3 uses
  %.1109.lcssa.i = phi ptr [ %i.ax, %bb.e ], [ %i.de, %.lr.ph.i ] ; 4 uses
  %.1105.lcssa.i = phi ptr [ %i.ay, %bb.e ], [ %i.cq, %.lr.ph.i ] ; 3 uses
  %.1103.lcssa.i = phi ptr [ %i.az, %bb.e ], [ %i.da, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ undef, %bb.e ], [ %i.dj, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.be, %bb.e ], [ %i.dm, %.lr.ph.i ] ; 2 uses
  %i.dp = add nsw i32 %.lcssa.i, -1
  %i.dq = icmp slt i32 %.0112.lcssa.i, %i.dp
  br i1 %i.dq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.1105.lcssa.i, i64 2 ; 2 uses
  %i.ds = load i16, ptr %.1105.lcssa.i, align 2, !tbaa !35
  %i.dt = tail call i16 @llvm.umax.i16(i16 %i.ds, i16 4)
  %narrow.i = tail call i16 @llvm.umin.i16(i16 %i.dt, i16 1019)
  %.0.i133.i = zext nneg i16 %narrow.i to i32
  %i.du = getelementptr inbounds nuw i8, ptr %.1109.lcssa.i, i64 2
  %i.dv = load i16, ptr %.1109.lcssa.i, align 2, !tbaa !35
  %i.dw = tail call i16 @llvm.umax.i16(i16 %i.dv, i16 4)
  %narrow158.i = tail call i16 @llvm.umin.i16(i16 %i.dw, i16 1019)
  %.0.i131.i = zext nneg i16 %narrow158.i to i32
  %i.dx = shl nuw nsw i32 %.0.i131.i, 10
  %i.dy = getelementptr inbounds nuw i8, ptr %.1103.lcssa.i, i64 2 ; 2 uses
  %i.dz = load i16, ptr %.1103.lcssa.i, align 2, !tbaa !35
  %i.ea = tail call i16 @llvm.umax.i16(i16 %i.dz, i16 4)
  %narrow159.i = tail call i16 @llvm.umin.i16(i16 %i.ea, i16 1019)
  %.0.i129.i = zext nneg i16 %narrow159.i to i32
  %i.eb = shl nuw nsw i32 %.0.i129.i, 20
  %i.ec = or disjoint i32 %i.eb, %i.dx
  %i.ed = or disjoint i32 %i.ec, %.0.i133.i
  store i32 %i.ed, ptr %.1115.lcssa.i, align 1, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %.1115.lcssa.i, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1109.lcssa.i, i64 4 ; 2 uses
  %i.eg = load i16, ptr %i.du, align 2, !tbaa !35
  %i.eh = tail call i16 @llvm.umax.i16(i16 %i.eg, i16 4)
  %narrow160.i = tail call i16 @llvm.umin.i16(i16 %i.eh, i16 1019)
  %.0.i127.i = zext nneg i16 %narrow160.i to i32  ; 3 uses
  %i.ei = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ej = add nsw i32 %i.ei, -2
  %i.ek = icmp eq i32 %.0112.lcssa.i, %i.ej
  br i1 %i.ek, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %.0.i127.i, ptr %i.ee, align 1, !tbaa !36
  %i.el = getelementptr inbounds nuw i8, ptr %.1115.lcssa.i, i64 8
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.em = phi i32 [ %.pre.i, %bb.g ], [ %i.ei, %bb.f ], [ %.lcssa.i, %._crit_edge.i ]
  %.2116.i = phi ptr [ %i.el, %bb.g ], [ %i.ee, %bb.f ], [ %.1115.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.2110.i = phi ptr [ %i.ef, %bb.g ], [ %i.ef, %bb.f ], [ %.1109.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.2106.i = phi ptr [ %i.dr, %bb.g ], [ %i.dr, %bb.f ], [ %.1105.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.2.i = phi ptr [ %i.dy, %bb.g ], [ %i.dy, %bb.f ], [ %.1103.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1.i = phi i32 [ %.0.i127.i, %bb.g ], [ %.0.i127.i, %bb.f ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.en = add nsw i32 %i.em, -3
  %i.eo = icmp slt i32 %.0112.lcssa.i, %i.en
  br i1 %i.eo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %.2106.i, i64 2
  %i.eq = load i16, ptr %.2106.i, align 2, !tbaa !35
  %i.er = tail call i16 @llvm.umax.i16(i16 %i.eq, i16 4)
  %narrow161.i = tail call i16 @llvm.umin.i16(i16 %i.er, i16 1019)
  %.0.i125.i = zext nneg i16 %narrow161.i to i32
  %i.es = shl nuw nsw i32 %.0.i125.i, 10
  %i.et = getelementptr inbounds nuw i8, ptr %.2110.i, i64 2
  %i.eu = load i16, ptr %.2110.i, align 2, !tbaa !35
  %i.ev = tail call i16 @llvm.umax.i16(i16 %i.eu, i16 4)
  %narrow162.i = tail call i16 @llvm.umin.i16(i16 %i.ev, i16 1019)
  %.0.i123.i = zext nneg i16 %narrow162.i to i32
  %i.ew = shl nuw nsw i32 %.0.i123.i, 20
  %i.ex = or disjoint i32 %i.ew, %i.es
  %i.ey = or i32 %i.ex, %.1.i
  store i32 %i.ey, ptr %.2116.i, align 1, !tbaa !36
  %i.ez = getelementptr inbounds nuw i8, ptr %.2116.i, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  %i.fb = load i16, ptr %.2.i, align 2, !tbaa !35
  %i.fc = tail call i16 @llvm.umax.i16(i16 %i.fb, i16 4)
  %narrow163.i = tail call i16 @llvm.umin.i16(i16 %i.fc, i16 1019)
  %.0.i121.i = zext nneg i16 %narrow163.i to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %.2110.i, i64 4
  %i.fe = load i16, ptr %i.et, align 2, !tbaa !35
  %i.ff = tail call i16 @llvm.umax.i16(i16 %i.fe, i16 4)
  %narrow164.i = tail call i16 @llvm.umin.i16(i16 %i.ff, i16 1019)
  %.0.i.i = zext nneg i16 %narrow164.i to i32
  %i.fg = shl nuw nsw i32 %.0.i.i, 10
  %i.fh = or disjoint i32 %i.fg, %.0.i121.i
  store i32 %i.fh, ptr %i.ez, align 1, !tbaa !36
  %i.fi = getelementptr inbounds nuw i8, ptr %.2116.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3117.i = phi ptr [ %i.fi, %bb.i ], [ %.2116.i, %bb.h ] ; 2 uses
  %.3111.i = phi ptr [ %i.fd, %bb.i ], [ %.2110.i, %bb.h ]
  %.3107.i = phi ptr [ %i.ep, %bb.i ], [ %.2106.i, %bb.h ]
  %.3.i = phi ptr [ %i.fa, %bb.i ], [ %.2.i, %bb.h ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.3117.i, i8 0, i64 %i.at, i1 false)
  %i.fj = getelementptr inbounds i8, ptr %.3117.i, i64 %i.at
  %i.fk = load i32, ptr %i.au, align 8, !tbaa !33
  %5 = sdiv i32 %i.fk, 2
  %6 = load i32, ptr %i.a, align 8, !tbaa !28     ; 2 uses
  %i.fl = sub nsw i32 %5, %6
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [2 x i8], ptr %.3111.i, i64 %i.fm
  %7 = load i32, ptr %4, align 4, !tbaa !33
  %i.fo = sdiv i32 %7, 2
  %8 = sdiv i32 %6, 2                             ; 2 uses
  %i.fp = sub nsw i32 %i.fo, %8
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [2 x i8], ptr %.3107.i, i64 %i.fq
  %i.fs = load i32, ptr %i.av, align 8, !tbaa !33
  %i.ft = sdiv i32 %i.fs, 2
  %i.fu = sub nsw i32 %i.ft, %8
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [2 x i8], ptr %.3.i, i64 %i.fv
  %i.fx = add nuw nsw i32 %.0113189.i, 1          ; 2 uses
  %i.fy = load i32, ptr %i.h, align 4, !tbaa !48
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.e, label %v210_enc_10.exit, !llvm.loop !44

bb.k:                                             ; preds = %bb.c
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !29 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.gd = load i32, ptr %i.h, align 4, !tbaa !48
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph214.i, label %v210_enc_10.exit

.lr.ph214.i:                                      ; preds = %bb.k
  %i.gf = load i32, ptr %i.a, align 8, !tbaa !28
  %.fr118.i58 = freeze i32 %i.gf                  ; 3 uses
  %i.gg = load i32, ptr %i.gc, align 8, !tbaa !58
  %i.gh = mul nsw i32 %i.gg, 6                    ; 2 uses
  %i.gi = sdiv i32 %.fr118.i58, %i.gh             ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !57
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !57
  %i.gn = load ptr, ptr %2, align 8, !tbaa !57
  %i.go = add i32 %.fr118.i58, 47                 ; 2 uses
  %i.gp = srem i32 %i.go, 48
  %i.gq = sub nsw i32 %i.go, %i.gp
  %i.gr = shl nsw i32 %i.gq, 3
  %i.gs = sdiv i32 %i.gr, 3
  %i.gt = shl nsw i32 %.fr118.i58, 3
  %i.gu = add nsw i32 %i.gt, 11
  %.neg.i59 = sdiv i32 %i.gu, -12
  %.neg119.i60 = shl nsw i32 %.neg.i59, 2
  %i.gv = add nsw i32 %i.gs, %.neg119.i60
  %i.gw = mul nsw i32 %i.gi, %i.gh                ; 5 uses
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = ashr exact i32 %i.gw, 1
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = shl nsw i32 %i.gi, 4
  %i.hb = sext i32 %i.gv to i64                   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.lr.ph214.i
  %.0102212.i = phi ptr [ %i.gk, %.lr.ph214.i ], [ %i.mn, %bb.q ] ; 2 uses
  %.0104211.i = phi ptr [ %i.gm, %.lr.ph214.i ], [ %i.mj, %bb.q ] ; 2 uses
  %.0108210.i = phi ptr [ %i.gn, %.lr.ph214.i ], [ %i.me, %bb.q ] ; 2 uses
  %.0113209.i = phi i32 [ 0, %.lr.ph214.i ], [ %i.mo, %bb.q ]
  %.0114208.i = phi ptr [ %i.o, %.lr.ph214.i ], [ %i.lz, %bb.q ] ; 2 uses
  %i.hf = load ptr, ptr %i.gb, align 8, !tbaa !31
  tail call void %i.hf(ptr noundef %.0108210.i, ptr noundef %.0104211.i, ptr noundef %.0102212.i, ptr noundef %.0114208.i, i64 noundef %i.gx) #7, !inline_history !45
  %i.hg = getelementptr inbounds i8, ptr %.0108210.i, i64 %i.gx ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %.0104211.i, i64 %i.gz ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %.0102212.i, i64 %i.gz ; 2 uses
  %i.hj = load i32, ptr %i.gc, align 8, !tbaa !58
  %i.hk = mul nsw i32 %i.ha, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %.0114208.i, i64 %i.hl ; 2 uses
  %i.hn = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ho = add nsw i32 %i.hn, -5
  %i.hp = icmp slt i32 %i.gw, %i.ho
  br i1 %i.hp, label %.lr.ph.i103, label %._crit_edge.i61

.lr.ph.i103:                                      ; preds = %bb.l, %.lr.ph.i103
  %.1103201.i = phi ptr [ %i.jn, %.lr.ph.i103 ], [ %i.hi, %bb.l ] ; 4 uses
  %.1105200.i = phi ptr [ %i.jc, %.lr.ph.i103 ], [ %i.hh, %bb.l ] ; 4 uses
  %.1109199.i = phi ptr [ %i.jr, %.lr.ph.i103 ], [ %i.hg, %bb.l ] ; 7 uses
  %.0112198.i = phi i32 [ %i.jy, %.lr.ph.i103 ], [ %i.gw, %bb.l ]
  %.1115197.i = phi ptr [ %i.jx, %.lr.ph.i103 ], [ %i.hm, %bb.l ] ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.1105200.i, i64 1
  %i.hr = load i8, ptr %.1105200.i, align 1, !tbaa !36 ; 2 uses
  %i.hs = icmp eq i8 %i.hr, 0
  %narrow173.i104 = tail call i8 @llvm.umin.i8(i8 %i.hr, i8 -2)
  %narrow174.i105 = select i1 %i.hs, i8 1, i8 %narrow173.i104
  %.0.i157.i106 = zext i8 %narrow174.i105 to i32
  %i.ht = shl nuw nsw i32 %.0.i157.i106, 2
  %i.hu = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 1
  %i.hv = load i8, ptr %.1109199.i, align 1, !tbaa !36 ; 2 uses
  %i.hw = icmp eq i8 %i.hv, 0
  %narrow175.i107 = tail call i8 @llvm.umin.i8(i8 %i.hv, i8 -2)
  %narrow176.i108 = select i1 %i.hw, i8 1, i8 %narrow175.i107
  %.0.i155.i109 = zext i8 %narrow176.i108 to i32
  %i.hx = shl nuw nsw i32 %.0.i155.i109, 12
  %i.hy = getelementptr inbounds nuw i8, ptr %.1103201.i, i64 1
  %i.hz = load i8, ptr %.1103201.i, align 1, !tbaa !36 ; 2 uses
  %i.ia = icmp eq i8 %i.hz, 0
  %narrow177.i = tail call i8 @llvm.umin.i8(i8 %i.hz, i8 -2)
  %narrow178.i = select i1 %i.ia, i8 1, i8 %narrow177.i
  %.0.i153.i110 = zext i8 %narrow178.i to i32
  %i.ib = shl nuw nsw i32 %.0.i153.i110, 22
  %i.ic = or disjoint i32 %i.ib, %i.hx
  %i.id = or disjoint i32 %i.ic, %i.ht
  store i32 %i.id, ptr %.1115197.i, align 1, !tbaa !36
  %i.ie = getelementptr inbounds nuw i8, ptr %.1115197.i, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 2
  %i.ig = load i8, ptr %i.hu, align 1, !tbaa !36  ; 2 uses
  %i.ih = icmp eq i8 %i.ig, 0
  %narrow179.i = tail call i8 @llvm.umin.i8(i8 %i.ig, i8 -2)
  %narrow180.i = select i1 %i.ih, i8 1, i8 %narrow179.i
  %.0.i151.i111 = zext i8 %narrow180.i to i32
  %i.ii = shl nuw nsw i32 %.0.i151.i111, 2
  %i.ij = getelementptr inbounds nuw i8, ptr %.1105200.i, i64 2
  %i.ik = load i8, ptr %i.hq, align 1, !tbaa !36  ; 2 uses
  %i.il = icmp eq i8 %i.ik, 0
  %narrow181.i = tail call i8 @llvm.umin.i8(i8 %i.ik, i8 -2)
  %narrow182.i = select i1 %i.il, i8 1, i8 %narrow181.i
  %.0.i149.i112 = zext i8 %narrow182.i to i32
  %i.im = shl nuw nsw i32 %.0.i149.i112, 12
  %i.in = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 3
  %i.io = load i8, ptr %i.if, align 1, !tbaa !36  ; 2 uses
  %i.ip = icmp eq i8 %i.io, 0
  %narrow183.i = tail call i8 @llvm.umin.i8(i8 %i.io, i8 -2)
  %narrow184.i = select i1 %i.ip, i8 1, i8 %narrow183.i
  %.0.i147.i113 = zext i8 %narrow184.i to i32
  %i.iq = shl nuw nsw i32 %.0.i147.i113, 22
  %i.ir = or disjoint i32 %i.iq, %i.im
  %i.is = or disjoint i32 %i.ir, %i.ii
  store i32 %i.is, ptr %i.ie, align 1, !tbaa !36
  %i.it = getelementptr inbounds nuw i8, ptr %.1115197.i, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %.1103201.i, i64 2
  %i.iv = load i8, ptr %i.hy, align 1, !tbaa !36  ; 2 uses
  %i.iw = icmp eq i8 %i.iv, 0
  %narrow185.i = tail call i8 @llvm.umin.i8(i8 %i.iv, i8 -2)
  %narrow186.i = select i1 %i.iw, i8 1, i8 %narrow185.i
  %.0.i145.i114 = zext i8 %narrow186.i to i32
  %i.ix = shl nuw nsw i32 %.0.i145.i114, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 4
  %i.iz = load i8, ptr %i.in, align 1, !tbaa !36  ; 2 uses
  %i.ja = icmp eq i8 %i.iz, 0
  %narrow187.i = tail call i8 @llvm.umin.i8(i8 %i.iz, i8 -2)
  %narrow188.i = select i1 %i.ja, i8 1, i8 %narrow187.i
  %.0.i143.i115 = zext i8 %narrow188.i to i32
  %i.jb = shl nuw nsw i32 %.0.i143.i115, 12
  %i.jc = getelementptr inbounds nuw i8, ptr %.1105200.i, i64 3 ; 2 uses
  %i.jd = load i8, ptr %i.ij, align 1, !tbaa !36  ; 2 uses
  %i.je = icmp eq i8 %i.jd, 0
  %narrow189.i = tail call i8 @llvm.umin.i8(i8 %i.jd, i8 -2)
  %narrow190.i = select i1 %i.je, i8 1, i8 %narrow189.i
  %.0.i141.i116 = zext i8 %narrow190.i to i32
  %i.jf = shl nuw nsw i32 %.0.i141.i116, 22
  %i.jg = or disjoint i32 %i.jf, %i.jb
  %i.jh = or disjoint i32 %i.jg, %i.ix
  store i32 %i.jh, ptr %i.it, align 1, !tbaa !36
  %i.ji = getelementptr inbounds nuw i8, ptr %.1115197.i, i64 12
  %i.jj = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 5
  %i.jk = load i8, ptr %i.iy, align 1, !tbaa !36  ; 2 uses
  %i.jl = icmp eq i8 %i.jk, 0
  %narrow191.i = tail call i8 @llvm.umin.i8(i8 %i.jk, i8 -2)
  %narrow192.i = select i1 %i.jl, i8 1, i8 %narrow191.i
  %.0.i139.i117 = zext i8 %narrow192.i to i32
  %i.jm = shl nuw nsw i32 %.0.i139.i117, 2
  %i.jn = getelementptr inbounds nuw i8, ptr %.1103201.i, i64 3 ; 2 uses
  %i.jo = load i8, ptr %i.iu, align 1, !tbaa !36  ; 2 uses
  %i.jp = icmp eq i8 %i.jo, 0
  %narrow193.i = tail call i8 @llvm.umin.i8(i8 %i.jo, i8 -2)
  %narrow194.i = select i1 %i.jp, i8 1, i8 %narrow193.i
  %.0.i137.i118 = zext i8 %narrow194.i to i32
  %i.jq = shl nuw nsw i32 %.0.i137.i118, 12
  %i.jr = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 6 ; 2 uses
  %i.js = load i8, ptr %i.jj, align 1, !tbaa !36  ; 2 uses
  %i.jt = icmp eq i8 %i.js, 0
  %narrow195.i = tail call i8 @llvm.umin.i8(i8 %i.js, i8 -2)
  %narrow196.i = select i1 %i.jt, i8 1, i8 %narrow195.i
  %.0.i135.i119 = zext i8 %narrow196.i to i32
  %i.ju = shl nuw nsw i32 %.0.i135.i119, 22
  %i.jv = or disjoint i32 %i.ju, %i.jq
  %i.jw = or disjoint i32 %i.jv, %i.jm            ; 2 uses
  store i32 %i.jw, ptr %i.ji, align 1, !tbaa !36
  %i.jx = getelementptr inbounds nuw i8, ptr %.1115197.i, i64 16 ; 2 uses
  %i.jy = add nsw i32 %.0112198.i, 6              ; 3 uses
  %i.jz = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ka = add nsw i32 %i.jz, -5
  %i.kb = icmp slt i32 %i.jy, %i.ka
  br i1 %i.kb, label %.lr.ph.i103, label %._crit_edge.i61, !llvm.loop !46

._crit_edge.i61:                                  ; preds = %.lr.ph.i103, %bb.l
  %.1115.lcssa.i62 = phi ptr [ %i.hm, %bb.l ], [ %i.jx, %.lr.ph.i103 ] ; 4 uses
  %.0112.lcssa.i63 = phi i32 [ %i.gw, %bb.l ], [ %i.jy, %.lr.ph.i103 ] ; 3 uses
  %.1109.lcssa.i64 = phi ptr [ %i.hg, %bb.l ], [ %i.jr, %.lr.ph.i103 ] ; 4 uses
  %.1105.lcssa.i65 = phi ptr [ %i.hh, %bb.l ], [ %i.jc, %.lr.ph.i103 ] ; 3 uses
  %.1103.lcssa.i66 = phi ptr [ %i.hi, %bb.l ], [ %i.jn, %.lr.ph.i103 ] ; 3 uses
  %.0.lcssa.i67 = phi i32 [ undef, %bb.l ], [ %i.jw, %.lr.ph.i103 ]
  %.lcssa.i68 = phi i32 [ %i.hn, %bb.l ], [ %i.jz, %.lr.ph.i103 ] ; 2 uses
  %i.kc = add nsw i32 %.lcssa.i68, -1
  %i.kd = icmp slt i32 %.0112.lcssa.i63, %i.kc
  br i1 %i.kd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge.i61
  %i.ke = getelementptr inbounds nuw i8, ptr %.1105.lcssa.i65, i64 1 ; 2 uses
  %i.kf = load i8, ptr %.1105.lcssa.i65, align 1, !tbaa !36 ; 2 uses
  %i.kg = icmp eq i8 %i.kf, 0
  %narrow.i90 = tail call i8 @llvm.umin.i8(i8 %i.kf, i8 -2)
  %narrow158.i91 = select i1 %i.kg, i8 1, i8 %narrow.i90
  %.0.i133.i92 = zext i8 %narrow158.i91 to i32
  %i.kh = shl nuw nsw i32 %.0.i133.i92, 2
  %i.ki = getelementptr inbounds nuw i8, ptr %.1109.lcssa.i64, i64 1
end_hunk_0
