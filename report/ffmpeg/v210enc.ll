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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  store ptr @v210_planar_pack_8_c, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @v210_planar_pack_10_c, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x i32> <i32 2, i32 1>, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 20, ptr %i.h, align 8, !tbaa !34
  %i.i = tail call i64 @ff_guess_coded_bitrate(ptr noundef nonnull %0) #7
  %i.j = shl nsw i64 %i.i, 4
  %i.k = sdiv i64 %i.j, 15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %.fr50 = freeze i32 %i.b
  %i.c = add i32 %.fr50, 47                       ; 2 uses
  %i.d = srem i32 %i.c, 48
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = shl nsw i32 %i.e, 3
  %i.g = sdiv i32 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  switch i32 %i.q, label %v210_enc_10.exit [
    i32 64, label %bb.d
    i32 4, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !36
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph194.i, label %v210_enc_10.exit

.lr.ph194.i:                                      ; preds = %bb.d
  %i.w = load i32, ptr %i.a, align 8, !tbaa !9
  %.fr118.i = freeze i32 %i.w                     ; 3 uses
  %i.x = load i32, ptr %i.t, align 4, !tbaa !44
  %i.y = mul nsw i32 %i.x, 6                      ; 2 uses
  %i.z = sdiv i32 %.fr118.i, %i.y                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = load ptr, ptr %2, align 8, !tbaa !45
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
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph194.i
  %.0102192.i = phi ptr [ %i.ab, %.lr.ph194.i ], [ %i.gb, %bb.j ] ; 2 uses
  %.0104191.i = phi ptr [ %i.ad, %.lr.ph194.i ], [ %i.fw, %bb.j ] ; 2 uses
  %.0108190.i = phi ptr [ %i.ae, %.lr.ph194.i ], [ %i.fq, %bb.j ] ; 2 uses
  %.0113189.i = phi i32 [ 0, %.lr.ph194.i ], [ %i.gc, %bb.j ]
  %.0114188.i = phi ptr [ %i.o, %.lr.ph194.i ], [ %i.fk, %bb.j ] ; 2 uses
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !32
  tail call void %i.ax(ptr noundef %.0108190.i, ptr noundef %.0104191.i, ptr noundef %.0102192.i, ptr noundef %.0114188.i, i64 noundef %i.ap) #7, !inline_history !46
  %i.ay = getelementptr inbounds [2 x i8], ptr %.0108190.i, i64 %i.ap ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %.0104191.i, i64 %i.ar ; 2 uses
  %i.ba = getelementptr inbounds [2 x i8], ptr %.0102192.i, i64 %i.ar ; 2 uses
  %i.bb = load i32, ptr %i.t, align 4, !tbaa !44
  %i.bc = mul nsw i32 %i.as, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %.0114188.i, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.bg = add nsw i32 %i.bf, -5
  %i.bh = icmp slt i32 %i.an, %i.bg
  br i1 %i.bh, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.1103181.i = phi ptr [ %i.db, %.lr.ph.i ], [ %i.ba, %bb.e ] ; 4 uses
  %.1105180.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %i.az, %bb.e ] ; 4 uses
  %.1109179.i = phi ptr [ %i.df, %.lr.ph.i ], [ %i.ay, %bb.e ] ; 7 uses
  %.0112178.i = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.an, %bb.e ]
  %.1115177.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %i.be, %bb.e ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1105180.i, i64 2
  %i.bj = load i16, ptr %.1105180.i, align 2, !tbaa !47
  %i.bk = tail call i16 @llvm.umax.i16(i16 %i.bj, i16 4)
  %narrow165.i = tail call i16 @llvm.umin.i16(i16 %i.bk, i16 1019)
  %.0.i157.i = zext nneg i16 %narrow165.i to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 2
  %i.bm = load i16, ptr %.1109179.i, align 2, !tbaa !47
  %i.bn = tail call i16 @llvm.umax.i16(i16 %i.bm, i16 4)
  %narrow166.i = tail call i16 @llvm.umin.i16(i16 %i.bn, i16 1019)
  %.0.i155.i = zext nneg i16 %narrow166.i to i32
  %i.bo = shl nuw nsw i32 %.0.i155.i, 10
  %i.bp = getelementptr inbounds nuw i8, ptr %.1103181.i, i64 2
  %i.bq = load i16, ptr %.1103181.i, align 2, !tbaa !47
  %i.br = tail call i16 @llvm.umax.i16(i16 %i.bq, i16 4)
  %narrow167.i = tail call i16 @llvm.umin.i16(i16 %i.br, i16 1019)
  %.0.i153.i = zext nneg i16 %narrow167.i to i32
  %i.bs = shl nuw nsw i32 %.0.i153.i, 20
  %i.bt = or disjoint i32 %i.bs, %i.bo
  %i.bu = or disjoint i32 %i.bt, %.0.i157.i
  store i32 %i.bu, ptr %.1115177.i, align 1, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %.1115177.i, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 4
  %i.bx = load i16, ptr %i.bl, align 2, !tbaa !47
  %i.by = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 4)
  %narrow168.i = tail call i16 @llvm.umin.i16(i16 %i.by, i16 1019)
  %.0.i151.i = zext nneg i16 %narrow168.i to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.1105180.i, i64 4
  %i.ca = load i16, ptr %i.bi, align 2, !tbaa !47
  %i.cb = tail call i16 @llvm.umax.i16(i16 %i.ca, i16 4)
  %narrow169.i = tail call i16 @llvm.umin.i16(i16 %i.cb, i16 1019)
  %.0.i149.i = zext nneg i16 %narrow169.i to i32
  %i.cc = shl nuw nsw i32 %.0.i149.i, 10
  %i.cd = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 6
  %i.ce = load i16, ptr %i.bw, align 2, !tbaa !47
  %i.cf = tail call i16 @llvm.umax.i16(i16 %i.ce, i16 4)
  %narrow170.i = tail call i16 @llvm.umin.i16(i16 %i.cf, i16 1019)
  %.0.i147.i = zext nneg i16 %narrow170.i to i32
  %i.cg = shl nuw nsw i32 %.0.i147.i, 20
  %i.ch = or disjoint i32 %i.cg, %i.cc
  %i.ci = or disjoint i32 %i.ch, %.0.i151.i
  store i32 %i.ci, ptr %i.bv, align 1, !tbaa !49
  %i.cj = getelementptr inbounds nuw i8, ptr %.1115177.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.1103181.i, i64 4
  %i.cl = load i16, ptr %i.bp, align 2, !tbaa !47
  %i.cm = tail call i16 @llvm.umax.i16(i16 %i.cl, i16 4)
  %narrow171.i = tail call i16 @llvm.umin.i16(i16 %i.cm, i16 1019)
  %.0.i145.i = zext nneg i16 %narrow171.i to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 8
  %i.co = load i16, ptr %i.cd, align 2, !tbaa !47
  %i.cp = tail call i16 @llvm.umax.i16(i16 %i.co, i16 4)
  %narrow172.i = tail call i16 @llvm.umin.i16(i16 %i.cp, i16 1019)
  %.0.i143.i = zext nneg i16 %narrow172.i to i32
  %i.cq = shl nuw nsw i32 %.0.i143.i, 10
  %i.cr = getelementptr inbounds nuw i8, ptr %.1105180.i, i64 6 ; 2 uses
  %i.cs = load i16, ptr %i.bz, align 2, !tbaa !47
  %i.ct = tail call i16 @llvm.umax.i16(i16 %i.cs, i16 4)
  %narrow173.i = tail call i16 @llvm.umin.i16(i16 %i.ct, i16 1019)
  %.0.i141.i = zext nneg i16 %narrow173.i to i32
  %i.cu = shl nuw nsw i32 %.0.i141.i, 20
  %i.cv = or disjoint i32 %i.cu, %i.cq
  %i.cw = or disjoint i32 %i.cv, %.0.i145.i
  store i32 %i.cw, ptr %i.cj, align 1, !tbaa !49
  %i.cx = getelementptr inbounds nuw i8, ptr %.1115177.i, i64 12
  %i.cy = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 10
  %i.cz = load i16, ptr %i.cn, align 2, !tbaa !47
  %i.da = tail call i16 @llvm.umax.i16(i16 %i.cz, i16 4)
  %narrow174.i = tail call i16 @llvm.umin.i16(i16 %i.da, i16 1019)
  %.0.i139.i = zext nneg i16 %narrow174.i to i32
  %i.db = getelementptr inbounds nuw i8, ptr %.1103181.i, i64 6 ; 2 uses
  %i.dc = load i16, ptr %i.ck, align 2, !tbaa !47
  %i.dd = tail call i16 @llvm.umax.i16(i16 %i.dc, i16 4)
  %narrow175.i = tail call i16 @llvm.umin.i16(i16 %i.dd, i16 1019)
  %.0.i137.i = zext nneg i16 %narrow175.i to i32
  %i.de = shl nuw nsw i32 %.0.i137.i, 10
  %i.df = getelementptr inbounds nuw i8, ptr %.1109179.i, i64 12 ; 2 uses
  %i.dg = load i16, ptr %i.cy, align 2, !tbaa !47
  %i.dh = tail call i16 @llvm.umax.i16(i16 %i.dg, i16 4)
  %narrow176.i = tail call i16 @llvm.umin.i16(i16 %i.dh, i16 1019)
  %.0.i135.i = zext nneg i16 %narrow176.i to i32
  %i.di = shl nuw nsw i32 %.0.i135.i, 20
  %i.dj = or disjoint i32 %i.di, %i.de
  %i.dk = or disjoint i32 %i.dj, %.0.i139.i       ; 2 uses
  store i32 %i.dk, ptr %i.cx, align 1, !tbaa !49
  %i.dl = getelementptr inbounds nuw i8, ptr %.1115177.i, i64 16 ; 2 uses
  %i.dm = add nsw i32 %.0112178.i, 6              ; 3 uses
  %i.dn = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.do = add nsw i32 %i.dn, -5
  %i.dp = icmp slt i32 %i.dm, %i.do
  br i1 %i.dp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !50

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.1115.lcssa.i = phi ptr [ %i.be, %bb.e ], [ %i.dl, %.lr.ph.i ] ; 4 uses
  %.0112.lcssa.i = phi i32 [ %i.an, %bb.e ], [ %i.dm, %.lr.ph.i ] ; 3 uses
  %.1109.lcssa.i = phi ptr [ %i.ay, %bb.e ], [ %i.df, %.lr.ph.i ] ; 4 uses
  %.1105.lcssa.i = phi ptr [ %i.az, %bb.e ], [ %i.cr, %.lr.ph.i ] ; 3 uses
  %.1103.lcssa.i = phi ptr [ %i.ba, %bb.e ], [ %i.db, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ undef, %bb.e ], [ %i.dk, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.bf, %bb.e ], [ %i.dn, %.lr.ph.i ] ; 2 uses
  %i.dq = add nsw i32 %.lcssa.i, -1
  %i.dr = icmp slt i32 %.0112.lcssa.i, %i.dq
  br i1 %i.dr, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.1105.lcssa.i, i64 2 ; 2 uses
  %i.dt = load i16, ptr %.1105.lcssa.i, align 2, !tbaa !47
  %i.du = tail call i16 @llvm.umax.i16(i16 %i.dt, i16 4)
  %narrow.i = tail call i16 @llvm.umin.i16(i16 %i.du, i16 1019)
  %.0.i133.i = zext nneg i16 %narrow.i to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %.1109.lcssa.i, i64 2
  %i.dw = load i16, ptr %.1109.lcssa.i, align 2, !tbaa !47
  %i.dx = tail call i16 @llvm.umax.i16(i16 %i.dw, i16 4)
  %narrow158.i = tail call i16 @llvm.umin.i16(i16 %i.dx, i16 1019)
  %.0.i131.i = zext nneg i16 %narrow158.i to i32
  %i.dy = shl nuw nsw i32 %.0.i131.i, 10
  %i.dz = getelementptr inbounds nuw i8, ptr %.1103.lcssa.i, i64 2 ; 2 uses
  %i.ea = load i16, ptr %.1103.lcssa.i, align 2, !tbaa !47
  %i.eb = tail call i16 @llvm.umax.i16(i16 %i.ea, i16 4)
  %narrow159.i = tail call i16 @llvm.umin.i16(i16 %i.eb, i16 1019)
  %.0.i129.i = zext nneg i16 %narrow159.i to i32
  %i.ec = shl nuw nsw i32 %.0.i129.i, 20
  %i.ed = or disjoint i32 %i.ec, %i.dy
  %i.ee = or disjoint i32 %i.ed, %.0.i133.i
  store i32 %i.ee, ptr %.1115.lcssa.i, align 1, !tbaa !49
  %i.ef = getelementptr inbounds nuw i8, ptr %.1115.lcssa.i, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1109.lcssa.i, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.dv, align 2, !tbaa !47
  %i.ei = tail call i16 @llvm.umax.i16(i16 %i.eh, i16 4)
  %narrow160.i = tail call i16 @llvm.umin.i16(i16 %i.ei, i16 1019)
  %.0.i127.i = zext nneg i16 %narrow160.i to i32  ; 3 uses
  %i.ej = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ek = add nsw i32 %i.ej, -2
  %i.el = icmp eq i32 %.0112.lcssa.i, %i.ek
  br i1 %i.el, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %.0.i127.i, ptr %i.ef, align 1, !tbaa !49
  %i.em = getelementptr inbounds nuw i8, ptr %.1115.lcssa.i, i64 8
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.en = phi i32 [ %.pre.i, %bb.g ], [ %i.ej, %bb.f ], [ %.lcssa.i, %._crit_edge.i ]
  %.2116.i = phi ptr [ %i.em, %bb.g ], [ %i.ef, %bb.f ], [ %.1115.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.2110.i = phi ptr [ %i.eg, %bb.g ], [ %i.eg, %bb.f ], [ %.1109.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.2106.i = phi ptr [ %i.ds, %bb.g ], [ %i.ds, %bb.f ], [ %.1105.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.2.i = phi ptr [ %i.dz, %bb.g ], [ %i.dz, %bb.f ], [ %.1103.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1.i = phi i32 [ %.0.i127.i, %bb.g ], [ %.0.i127.i, %bb.f ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.eo = add nsw i32 %i.en, -3
  %i.ep = icmp slt i32 %.0112.lcssa.i, %i.eo
  br i1 %i.ep, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eq = getelementptr inbounds nuw i8, ptr %.2106.i, i64 2
  %i.er = load i16, ptr %.2106.i, align 2, !tbaa !47
  %i.es = tail call i16 @llvm.umax.i16(i16 %i.er, i16 4)
  %narrow161.i = tail call i16 @llvm.umin.i16(i16 %i.es, i16 1019)
  %.0.i125.i = zext nneg i16 %narrow161.i to i32
  %i.et = shl nuw nsw i32 %.0.i125.i, 10
  %i.eu = getelementptr inbounds nuw i8, ptr %.2110.i, i64 2
  %i.ev = load i16, ptr %.2110.i, align 2, !tbaa !47
  %i.ew = tail call i16 @llvm.umax.i16(i16 %i.ev, i16 4)
  %narrow162.i = tail call i16 @llvm.umin.i16(i16 %i.ew, i16 1019)
  %.0.i123.i = zext nneg i16 %narrow162.i to i32
  %i.ex = shl nuw nsw i32 %.0.i123.i, 20
  %i.ey = or disjoint i32 %i.ex, %i.et
  %i.ez = or i32 %i.ey, %.1.i
  store i32 %i.ez, ptr %.2116.i, align 1, !tbaa !49
  %i.fa = getelementptr inbounds nuw i8, ptr %.2116.i, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  %i.fc = load i16, ptr %.2.i, align 2, !tbaa !47
  %i.fd = tail call i16 @llvm.umax.i16(i16 %i.fc, i16 4)
  %narrow163.i = tail call i16 @llvm.umin.i16(i16 %i.fd, i16 1019)
  %.0.i121.i = zext nneg i16 %narrow163.i to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %.2110.i, i64 4
  %i.ff = load i16, ptr %i.eu, align 2, !tbaa !47
  %i.fg = tail call i16 @llvm.umax.i16(i16 %i.ff, i16 4)
  %narrow164.i = tail call i16 @llvm.umin.i16(i16 %i.fg, i16 1019)
  %.0.i.i = zext nneg i16 %narrow164.i to i32
  %i.fh = shl nuw nsw i32 %.0.i.i, 10
  %i.fi = or disjoint i32 %i.fh, %.0.i121.i
  store i32 %i.fi, ptr %i.fa, align 1, !tbaa !49
  %i.fj = getelementptr inbounds nuw i8, ptr %.2116.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3117.i = phi ptr [ %i.fj, %bb.i ], [ %.2116.i, %bb.h ] ; 2 uses
  %.3111.i = phi ptr [ %i.fe, %bb.i ], [ %.2110.i, %bb.h ]
  %.3107.i = phi ptr [ %i.eq, %bb.i ], [ %.2106.i, %bb.h ]
  %.3.i = phi ptr [ %i.fb, %bb.i ], [ %.2.i, %bb.h ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.3117.i, i8 0, i64 %i.at, i1 false)
  %i.fk = getelementptr inbounds i8, ptr %.3117.i, i64 %i.at
  %i.fl = load i32, ptr %i.au, align 8, !tbaa !33
  %i.fm = sdiv i32 %i.fl, 2
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.fo = sub nsw i32 %i.fm, %i.fn
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [2 x i8], ptr %.3111.i, i64 %i.fp
  %i.fr = load i32, ptr %i.av, align 4, !tbaa !33
  %i.fs = sdiv i32 %i.fr, 2
  %i.ft = sdiv i32 %i.fn, 2                       ; 2 uses
  %i.fu = sub nsw i32 %i.fs, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [2 x i8], ptr %.3107.i, i64 %i.fv
  %i.fx = load i32, ptr %i.aw, align 8, !tbaa !33
  %i.fy = sdiv i32 %i.fx, 2
  %i.fz = sub nsw i32 %i.fy, %i.ft
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %.3.i, i64 %i.ga
  %i.gc = add nuw nsw i32 %.0113189.i, 1          ; 2 uses
  %i.gd = load i32, ptr %i.h, align 4, !tbaa !36
  %i.ge = icmp slt i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.e, label %v210_enc_10.exit, !llvm.loop !52

bb.k:                                             ; preds = %bb.c
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !29 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gi = load i32, ptr %i.h, align 4, !tbaa !36
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph214.i, label %v210_enc_10.exit

.lr.ph214.i:                                      ; preds = %bb.k
  %i.gk = load i32, ptr %i.a, align 8, !tbaa !9
  %.fr118.i58 = freeze i32 %i.gk                  ; 3 uses
  %i.gl = load i32, ptr %i.gh, align 8, !tbaa !53
  %i.gm = mul nsw i32 %i.gl, 6                    ; 2 uses
  %i.gn = sdiv i32 %.fr118.i58, %i.gm             ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !45
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !45
  %i.gs = load ptr, ptr %2, align 8, !tbaa !45
  %i.gt = add i32 %.fr118.i58, 47                 ; 2 uses
  %i.gu = srem i32 %i.gt, 48
  %i.gv = sub nsw i32 %i.gt, %i.gu
  %i.gw = shl nsw i32 %i.gv, 3
  %i.gx = sdiv i32 %i.gw, 3
  %i.gy = shl nsw i32 %.fr118.i58, 3
  %i.gz = add nsw i32 %i.gy, 11
  %.neg.i59 = sdiv i32 %i.gz, -12
  %.neg119.i60 = shl nsw i32 %.neg.i59, 2
  %i.ha = add nsw i32 %i.gx, %.neg119.i60
  %i.hb = mul nsw i32 %i.gn, %i.gm                ; 5 uses
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = ashr exact i32 %i.hb, 1
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = shl nsw i32 %i.gn, 4
  %i.hg = sext i32 %i.ha to i64                   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.lr.ph214.i
  %.0102212.i = phi ptr [ %i.gp, %.lr.ph214.i ], [ %i.ms, %bb.q ] ; 2 uses
  %.0104211.i = phi ptr [ %i.gr, %.lr.ph214.i ], [ %i.mo, %bb.q ] ; 2 uses
  %.0108210.i = phi ptr [ %i.gs, %.lr.ph214.i ], [ %i.mj, %bb.q ] ; 2 uses
  %.0113209.i = phi i32 [ 0, %.lr.ph214.i ], [ %i.mt, %bb.q ]
  %.0114208.i = phi ptr [ %i.o, %.lr.ph214.i ], [ %i.me, %bb.q ] ; 2 uses
  %i.hk = load ptr, ptr %i.gg, align 8, !tbaa !30
  tail call void %i.hk(ptr noundef %.0108210.i, ptr noundef %.0104211.i, ptr noundef %.0102212.i, ptr noundef %.0114208.i, i64 noundef %i.hc) #7, !inline_history !54
  %i.hl = getelementptr inbounds i8, ptr %.0108210.i, i64 %i.hc ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %.0104211.i, i64 %i.he ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %.0102212.i, i64 %i.he ; 2 uses
  %i.ho = load i32, ptr %i.gh, align 8, !tbaa !53
  %i.hp = mul nsw i32 %i.hf, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %.0114208.i, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ht = add nsw i32 %i.hs, -5
  %i.hu = icmp slt i32 %i.hb, %i.ht
  br i1 %i.hu, label %.lr.ph.i103, label %._crit_edge.i61

.lr.ph.i103:                                      ; preds = %bb.l, %.lr.ph.i103
  %.1103201.i = phi ptr [ %i.js, %.lr.ph.i103 ], [ %i.hn, %bb.l ] ; 4 uses
  %.1105200.i = phi ptr [ %i.jh, %.lr.ph.i103 ], [ %i.hm, %bb.l ] ; 4 uses
  %.1109199.i = phi ptr [ %i.jw, %.lr.ph.i103 ], [ %i.hl, %bb.l ] ; 7 uses
  %.0112198.i = phi i32 [ %i.kd, %.lr.ph.i103 ], [ %i.hb, %bb.l ]
  %.1115197.i = phi ptr [ %i.kc, %.lr.ph.i103 ], [ %i.hr, %bb.l ] ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.1105200.i, i64 1
  %i.hw = load i8, ptr %.1105200.i, align 1, !tbaa !49 ; 2 uses
  %i.hx = icmp eq i8 %i.hw, 0
  %narrow173.i104 = tail call i8 @llvm.umin.i8(i8 %i.hw, i8 -2)
  %narrow174.i105 = select i1 %i.hx, i8 1, i8 %narrow173.i104
  %.0.i157.i106 = zext i8 %narrow174.i105 to i32
  %i.hy = shl nuw nsw i32 %.0.i157.i106, 2
  %i.hz = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 1
  %i.ia = load i8, ptr %.1109199.i, align 1, !tbaa !49 ; 2 uses
  %i.ib = icmp eq i8 %i.ia, 0
  %narrow175.i107 = tail call i8 @llvm.umin.i8(i8 %i.ia, i8 -2)
  %narrow176.i108 = select i1 %i.ib, i8 1, i8 %narrow175.i107
  %.0.i155.i109 = zext i8 %narrow176.i108 to i32
  %i.ic = shl nuw nsw i32 %.0.i155.i109, 12
  %i.id = getelementptr inbounds nuw i8, ptr %.1103201.i, i64 1
  %i.ie = load i8, ptr %.1103201.i, align 1, !tbaa !49 ; 2 uses
  %i.if = icmp eq i8 %i.ie, 0
  %narrow177.i = tail call i8 @llvm.umin.i8(i8 %i.ie, i8 -2)
  %narrow178.i = select i1 %i.if, i8 1, i8 %narrow177.i
  %.0.i153.i110 = zext i8 %narrow178.i to i32
  %i.ig = shl nuw nsw i32 %.0.i153.i110, 22
  %i.ih = or disjoint i32 %i.ig, %i.ic
  %i.ii = or disjoint i32 %i.ih, %i.hy
  store i32 %i.ii, ptr %.1115197.i, align 1, !tbaa !49
  %i.ij = getelementptr inbounds nuw i8, ptr %.1115197.i, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 2
  %i.il = load i8, ptr %i.hz, align 1, !tbaa !49  ; 2 uses
  %i.im = icmp eq i8 %i.il, 0
  %narrow179.i = tail call i8 @llvm.umin.i8(i8 %i.il, i8 -2)
  %narrow180.i = select i1 %i.im, i8 1, i8 %narrow179.i
  %.0.i151.i111 = zext i8 %narrow180.i to i32
  %i.in = shl nuw nsw i32 %.0.i151.i111, 2
  %i.io = getelementptr inbounds nuw i8, ptr %.1105200.i, i64 2
  %i.ip = load i8, ptr %i.hv, align 1, !tbaa !49  ; 2 uses
  %i.iq = icmp eq i8 %i.ip, 0
  %narrow181.i = tail call i8 @llvm.umin.i8(i8 %i.ip, i8 -2)
  %narrow182.i = select i1 %i.iq, i8 1, i8 %narrow181.i
  %.0.i149.i112 = zext i8 %narrow182.i to i32
  %i.ir = shl nuw nsw i32 %.0.i149.i112, 12
  %i.is = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 3
  %i.it = load i8, ptr %i.ik, align 1, !tbaa !49  ; 2 uses
  %i.iu = icmp eq i8 %i.it, 0
  %narrow183.i = tail call i8 @llvm.umin.i8(i8 %i.it, i8 -2)
  %narrow184.i = select i1 %i.iu, i8 1, i8 %narrow183.i
  %.0.i147.i113 = zext i8 %narrow184.i to i32
  %i.iv = shl nuw nsw i32 %.0.i147.i113, 22
  %i.iw = or disjoint i32 %i.iv, %i.ir
  %i.ix = or disjoint i32 %i.iw, %i.in
  store i32 %i.ix, ptr %i.ij, align 1, !tbaa !49
  %i.iy = getelementptr inbounds nuw i8, ptr %.1115197.i, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %.1103201.i, i64 2
  %i.ja = load i8, ptr %i.id, align 1, !tbaa !49  ; 2 uses
  %i.jb = icmp eq i8 %i.ja, 0
  %narrow185.i = tail call i8 @llvm.umin.i8(i8 %i.ja, i8 -2)
  %narrow186.i = select i1 %i.jb, i8 1, i8 %narrow185.i
  %.0.i145.i114 = zext i8 %narrow186.i to i32
  %i.jc = shl nuw nsw i32 %.0.i145.i114, 2
  %i.jd = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 4
  %i.je = load i8, ptr %i.is, align 1, !tbaa !49  ; 2 uses
  %i.jf = icmp eq i8 %i.je, 0
  %narrow187.i = tail call i8 @llvm.umin.i8(i8 %i.je, i8 -2)
  %narrow188.i = select i1 %i.jf, i8 1, i8 %narrow187.i
  %.0.i143.i115 = zext i8 %narrow188.i to i32
  %i.jg = shl nuw nsw i32 %.0.i143.i115, 12
  %i.jh = getelementptr inbounds nuw i8, ptr %.1105200.i, i64 3 ; 2 uses
  %i.ji = load i8, ptr %i.io, align 1, !tbaa !49  ; 2 uses
  %i.jj = icmp eq i8 %i.ji, 0
  %narrow189.i = tail call i8 @llvm.umin.i8(i8 %i.ji, i8 -2)
  %narrow190.i = select i1 %i.jj, i8 1, i8 %narrow189.i
  %.0.i141.i116 = zext i8 %narrow190.i to i32
  %i.jk = shl nuw nsw i32 %.0.i141.i116, 22
  %i.jl = or disjoint i32 %i.jk, %i.jg
  %i.jm = or disjoint i32 %i.jl, %i.jc
  store i32 %i.jm, ptr %i.iy, align 1, !tbaa !49
  %i.jn = getelementptr inbounds nuw i8, ptr %.1115197.i, i64 12
  %i.jo = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 5
  %i.jp = load i8, ptr %i.jd, align 1, !tbaa !49  ; 2 uses
  %i.jq = icmp eq i8 %i.jp, 0
  %narrow191.i = tail call i8 @llvm.umin.i8(i8 %i.jp, i8 -2)
  %narrow192.i = select i1 %i.jq, i8 1, i8 %narrow191.i
  %.0.i139.i117 = zext i8 %narrow192.i to i32
  %i.jr = shl nuw nsw i32 %.0.i139.i117, 2
  %i.js = getelementptr inbounds nuw i8, ptr %.1103201.i, i64 3 ; 2 uses
  %i.jt = load i8, ptr %i.iz, align 1, !tbaa !49  ; 2 uses
  %i.ju = icmp eq i8 %i.jt, 0
  %narrow193.i = tail call i8 @llvm.umin.i8(i8 %i.jt, i8 -2)
  %narrow194.i = select i1 %i.ju, i8 1, i8 %narrow193.i
  %.0.i137.i118 = zext i8 %narrow194.i to i32
  %i.jv = shl nuw nsw i32 %.0.i137.i118, 12
  %i.jw = getelementptr inbounds nuw i8, ptr %.1109199.i, i64 6 ; 2 uses
  %i.jx = load i8, ptr %i.jo, align 1, !tbaa !49  ; 2 uses
  %i.jy = icmp eq i8 %i.jx, 0
  %narrow195.i = tail call i8 @llvm.umin.i8(i8 %i.jx, i8 -2)
  %narrow196.i = select i1 %i.jy, i8 1, i8 %narrow195.i
  %.0.i135.i119 = zext i8 %narrow196.i to i32
  %i.jz = shl nuw nsw i32 %.0.i135.i119, 22
  %i.ka = or disjoint i32 %i.jz, %i.jv
  %i.kb = or disjoint i32 %i.ka, %i.jr            ; 2 uses
  store i32 %i.kb, ptr %i.jn, align 1, !tbaa !49
  %i.kc = getelementptr inbounds nuw i8, ptr %.1115197.i, i64 16 ; 2 uses
  %i.kd = add nsw i32 %.0112198.i, 6              ; 3 uses
  %i.ke = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.kf = add nsw i32 %i.ke, -5
  %i.kg = icmp slt i32 %i.kd, %i.kf
  br i1 %i.kg, label %.lr.ph.i103, label %._crit_edge.i61, !llvm.loop !55

._crit_edge.i61:                                  ; preds = %.lr.ph.i103, %bb.l
  %.1115.lcssa.i62 = phi ptr [ %i.hr, %bb.l ], [ %i.kc, %.lr.ph.i103 ] ; 4 uses
  %.0112.lcssa.i63 = phi i32 [ %i.hb, %bb.l ], [ %i.kd, %.lr.ph.i103 ] ; 3 uses
  %.1109.lcssa.i64 = phi ptr [ %i.hl, %bb.l ], [ %i.jw, %.lr.ph.i103 ] ; 4 uses
  %.1105.lcssa.i65 = phi ptr [ %i.hm, %bb.l ], [ %i.jh, %.lr.ph.i103 ] ; 3 uses
  %.1103.lcssa.i66 = phi ptr [ %i.hn, %bb.l ], [ %i.js, %.lr.ph.i103 ] ; 3 uses
  %.0.lcssa.i67 = phi i32 [ undef, %bb.l ], [ %i.kb, %.lr.ph.i103 ]
  %.lcssa.i68 = phi i32 [ %i.hs, %bb.l ], [ %i.ke, %.lr.ph.i103 ] ; 2 uses
  %i.kh = add nsw i32 %.lcssa.i68, -1
  %i.ki = icmp slt i32 %.0112.lcssa.i63, %i.kh
  br i1 %i.ki, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge.i61
  %i.kj = getelementptr inbounds nuw i8, ptr %.1105.lcssa.i65, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.1105.lcssa.i65, align 1, !tbaa !49 ; 2 uses
  %i.kl = icmp eq i8 %i.kk, 0
  %narrow.i90 = tail call i8 @llvm.umin.i8(i8 %i.kk, i8 -2)
  %narrow158.i91 = select i1 %i.kl, i8 1, i8 %narrow.i90
  %.0.i133.i92 = zext i8 %narrow158.i91 to i32
  %i.km = shl nuw nsw i32 %.0.i133.i92, 2
  %i.kn = getelementptr inbounds nuw i8, ptr %.1109.lcssa.i64, i64 1
  %i.ko = load i8, ptr %.1109.lcssa.i64, align 1, !tbaa !49 ; 2 uses
  %i.kp = icmp eq i8 %i.ko, 0
  %narrow159.i93 = tail call i8 @llvm.umin.i8(i8 %i.ko, i8 -2)
  %narrow160.i94 = select i1 %i.kp, i8 1, i8 %narrow159.i93
  %.0.i131.i95 = zext i8 %narrow160.i94 to i32
  %i.kq = shl nuw nsw i32 %.0.i131.i95, 12
  %i.kr = getelementptr inbounds nuw i8, ptr %.1103.lcssa.i66, i64 1 ; 2 uses
  %i.ks = load i8, ptr %.1103.lcssa.i66, align 1, !tbaa !49 ; 2 uses
  %i.kt = icmp eq i8 %i.ks, 0
  %narrow161.i96 = tail call i8 @llvm.umin.i8(i8 %i.ks, i8 -2)
  %narrow162.i97 = select i1 %i.kt, i8 1, i8 %narrow161.i96
  %.0.i129.i98 = zext i8 %narrow162.i97 to i32
  %i.ku = shl nuw nsw i32 %.0.i129.i98, 22
  %i.kv = or disjoint i32 %i.ku, %i.kq
  %i.kw = or disjoint i32 %i.kv, %i.km
  store i32 %i.kw, ptr %.1115.lcssa.i62, align 1, !tbaa !49
  %i.kx = getelementptr inbounds nuw i8, ptr %.1115.lcssa.i62, i64 4 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1109.lcssa.i64, i64 2 ; 2 uses
  %i.kz = load i8, ptr %i.kn, align 1, !tbaa !49  ; 2 uses
  %i.la = icmp eq i8 %i.kz, 0
  %narrow163.i99 = tail call i8 @llvm.umin.i8(i8 %i.kz, i8 -2)
  %narrow164.i100 = select i1 %i.la, i8 1, i8 %narrow163.i99
  %.0.i127.i101 = zext i8 %narrow164.i100 to i32
  %i.lb = shl nuw nsw i32 %.0.i127.i101, 2        ; 3 uses
  %i.lc = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ld = add nsw i32 %i.lc, -2
  %i.le = icmp eq i32 %.0112.lcssa.i63, %i.ld
  br i1 %i.le, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.lb, ptr %i.kx, align 1, !tbaa !49
  %i.lf = getelementptr inbounds nuw i8, ptr %.1115.lcssa.i62, i64 8
  %.pre.i102 = load i32, ptr %i.a, align 8, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i61
  %i.lg = phi i32 [ %.pre.i102, %bb.n ], [ %i.lc, %bb.m ], [ %.lcssa.i68, %._crit_edge.i61 ]
  %.2116.i69 = phi ptr [ %i.lf, %bb.n ], [ %i.kx, %bb.m ], [ %.1115.lcssa.i62, %._crit_edge.i61 ] ; 4 uses
  %.2110.i70 = phi ptr [ %i.ky, %bb.n ], [ %i.ky, %bb.m ], [ %.1109.lcssa.i64, %._crit_edge.i61 ] ; 4 uses
  %.2106.i71 = phi ptr [ %i.kj, %bb.n ], [ %i.kj, %bb.m ], [ %.1105.lcssa.i65, %._crit_edge.i61 ] ; 3 uses
  %.2.i72 = phi ptr [ %i.kr, %bb.n ], [ %i.kr, %bb.m ], [ %.1103.lcssa.i66, %._crit_edge.i61 ] ; 3 uses
  %.1.i73 = phi i32 [ %i.lb, %bb.n ], [ %i.lb, %bb.m ], [ %.0.lcssa.i67, %._crit_edge.i61 ]
  %i.lh = add nsw i32 %i.lg, -3
  %i.li = icmp slt i32 %.0112.lcssa.i63, %i.lh
  br i1 %i.li, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.lj = getelementptr inbounds nuw i8, ptr %.2106.i71, i64 1
  %i.lk = load i8, ptr %.2106.i71, align 1, !tbaa !49 ; 2 uses
  %i.ll = icmp eq i8 %i.lk, 0
  %narrow165.i78 = tail call i8 @llvm.umin.i8(i8 %i.lk, i8 -2)
  %narrow166.i79 = select i1 %i.ll, i8 1, i8 %narrow165.i78
  %.0.i125.i80 = zext i8 %narrow166.i79 to i32
  %i.lm = shl nuw nsw i32 %.0.i125.i80, 12
  %i.ln = getelementptr inbounds nuw i8, ptr %.2110.i70, i64 1
  %i.lo = load i8, ptr %.2110.i70, align 1, !tbaa !49 ; 2 uses
  %i.lp = icmp eq i8 %i.lo, 0
  %narrow167.i81 = tail call i8 @llvm.umin.i8(i8 %i.lo, i8 -2)
  %narrow168.i82 = select i1 %i.lp, i8 1, i8 %narrow167.i81
  %.0.i123.i83 = zext i8 %narrow168.i82 to i32
  %i.lq = shl nuw nsw i32 %.0.i123.i83, 22
  %i.lr = or disjoint i32 %i.lq, %i.lm
  %i.ls = or i32 %i.lr, %.1.i73
  store i32 %i.ls, ptr %.2116.i69, align 1, !tbaa !49
  %i.lt = getelementptr inbounds nuw i8, ptr %.2116.i69, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %.2.i72, i64 1
  %i.lv = load i8, ptr %.2.i72, align 1, !tbaa !49 ; 2 uses
  %i.lw = icmp eq i8 %i.lv, 0
  %narrow169.i84 = tail call i8 @llvm.umin.i8(i8 %i.lv, i8 -2)
  %narrow170.i85 = select i1 %i.lw, i8 1, i8 %narrow169.i84
  %.0.i121.i86 = zext i8 %narrow170.i85 to i32
  %i.lx = shl nuw nsw i32 %.0.i121.i86, 2
  %i.ly = getelementptr inbounds nuw i8, ptr %.2110.i70, i64 2
  %i.lz = load i8, ptr %i.ln, align 1, !tbaa !49  ; 2 uses
  %i.ma = icmp eq i8 %i.lz, 0
  %narrow171.i87 = tail call i8 @llvm.umin.i8(i8 %i.lz, i8 -2)
  %narrow172.i88 = select i1 %i.ma, i8 1, i8 %narrow171.i87
  %.0.i.i89 = zext i8 %narrow172.i88 to i32
  %i.mb = shl nuw nsw i32 %.0.i.i89, 12
  %i.mc = or disjoint i32 %i.mb, %i.lx
  store i32 %i.mc, ptr %i.lt, align 1, !tbaa !49
  %i.md = getelementptr inbounds nuw i8, ptr %.2116.i69, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3117.i74 = phi ptr [ %i.md, %bb.p ], [ %.2116.i69, %bb.o ] ; 2 uses
  %.3111.i75 = phi ptr [ %i.ly, %bb.p ], [ %.2110.i70, %bb.o ]
  %.3107.i76 = phi ptr [ %i.lj, %bb.p ], [ %.2106.i71, %bb.o ]
  %.3.i77 = phi ptr [ %i.lu, %bb.p ], [ %.2.i72, %bb.o ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.3117.i74, i8 0, i64 %i.hg, i1 false)
  %i.me = getelementptr inbounds i8, ptr %.3117.i74, i64 %i.hg
  %i.mf = load i32, ptr %i.hh, align 8, !tbaa !33
  %i.mg = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.mh = sub nsw i32 %i.mf, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds i8, ptr %.3111.i75, i64 %i.mi
  %i.mk = load i32, ptr %i.hi, align 4, !tbaa !33
  %i.ml = sdiv i32 %i.mg, 2                       ; 2 uses
  %i.mm = sub nsw i32 %i.mk, %i.ml
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %.3107.i76, i64 %i.mn
  %i.mp = load i32, ptr %i.hj, align 8, !tbaa !33
  %i.mq = sub nsw i32 %i.mp, %i.ml
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds i8, ptr %.3.i77, i64 %i.mr
  %i.mt = add nuw nsw i32 %.0113209.i, 1          ; 2 uses
  %i.mu = load i32, ptr %i.h, align 4, !tbaa !36
  %i.mv = icmp slt i32 %i.mt, %i.mu
  br i1 %i.mv, label %bb.l, label %v210_enc_10.exit, !llvm.loop !56

v210_enc_10.exit:                                 ; preds = %bb.q, %bb.j, %bb.k, %bb.d, %bb.c
  %i.mw = tail call ptr @av_frame_get_side_data(ptr noundef nonnull %2, i32 noundef 1) #7 ; 3 uses
  %.not = icmp eq ptr %i.mw, null
  br i1 %.not, label %bb.u, label %bb.r

bb.r:                                             ; preds = %v210_enc_10.exit
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !57 ; 2 uses
  %.not51 = icmp eq i64 %i.my, 0
  br i1 %.not51, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mz = tail call ptr @av_packet_new_side_data(ptr noundef %1, i32 noundef 23, i64 noundef %i.my) #7 ; 2 uses
  %.not52.not = icmp eq ptr %i.mz, null
  br i1 %.not52.not, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !59
  %i.nc = load i64, ptr %i.mx, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mz, ptr align 1 %i.nb, i64 %i.nc, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %v210_enc_10.exit
  %i.nd = tail call ptr @av_frame_get_side_data(ptr noundef nonnull %2, i32 noundef 7) #7 ; 3 uses
  %.not53 = icmp eq ptr %i.nd, null
  br i1 %.not53, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !57 ; 2 uses
  %.not54 = icmp eq i64 %i.nf, 0
  br i1 %.not54, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ng = tail call ptr @av_packet_new_side_data(ptr noundef %1, i32 noundef 26, i64 noundef %i.nf) #7 ; 2 uses
  %.not55.not = icmp eq ptr %i.ng, null
  br i1 %.not55.not, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !59
  %i.nj = load i64, ptr %i.ne, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ng, ptr align 1 %i.ni, i64 %i.nj, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u
  store i32 1, ptr %3, align 4, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.s, %bb.y, %bb.b
  %.3 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.y ], [ -12, %bb.s ], [ -12, %bb.w ]
  ret i32 %.3
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @ff_guess_coded_bitrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @v210_planar_pack_8_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) #3 {
bb.a:
  %i.a = add nsw i64 %4, -11
  %i.b = icmp sgt i64 %4, 11
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i64 %4, -12                      ; 2 uses
  %i.d = udiv i64 %i.c, 12
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 36
  br i1 %min.iters.check, label %.lr.ph.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = add nsw i64 %4, -12
  %i.g = udiv i64 %i.f, 12                        ; 3 uses
  %i.h = shl i64 %i.g, 5
  %i.i = getelementptr i8, ptr %3, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 32   ; 3 uses
  %i.j = mul nuw nsw i64 %i.g, 6
  %i.k = add nuw i64 %i.j, 6                      ; 2 uses
  %scevgep161 = getelementptr i8, ptr %1, i64 %i.k
  %i.l = mul nuw i64 %i.g, 12
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %scevgep162 = getelementptr i8, ptr %i.m, i64 12
  %scevgep163 = getelementptr i8, ptr %2, i64 %i.k
  %bound0 = icmp ult ptr %3, %scevgep161
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0164 = icmp ult ptr %3, %scevgep162
  %bound1165 = icmp ult ptr %0, %scevgep
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict, %found.conflict166
  %bound0167 = icmp ult ptr %3, %scevgep163
  %bound1168 = icmp ult ptr %2, %scevgep
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx, %found.conflict169
  br i1 %conflict.rdx170, label %.lr.ph.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 5 uses
  %i.n = mul i64 %n.vec, 12                       ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %i.p = shl i64 %n.vec, 5
  %i.q = getelementptr i8, ptr %3, i64 %i.p
  %i.r = mul i64 %n.vec, 6                        ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %i.t = getelementptr i8, ptr %1, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = mul i64 %index, 12                       ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.u  ; 12 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.u       ; 12 uses
  %next.gep171 = getelementptr i8, ptr %i.v, i64 12
  %i.w = getelementptr i8, ptr %0, i64 %i.u       ; 12 uses
  %next.gep172 = getelementptr i8, ptr %i.w, i64 24
  %i.x = getelementptr i8, ptr %0, i64 %i.u       ; 12 uses
  %next.gep173 = getelementptr i8, ptr %i.x, i64 36
  %i.y = shl i64 %index, 5
  %next.gep174 = getelementptr i8, ptr %3, i64 %i.y
  %i.z = mul i64 %index, 6                        ; 5 uses
  %i.aa = or disjoint i64 %i.z, 6                 ; 2 uses
  %i.ab = add i64 %i.z, 12                        ; 2 uses
  %i.ac = add i64 %i.z, 18                        ; 2 uses
  %next.gep175 = getelementptr i8, ptr %2, i64 %i.z ; 6 uses
  %next.gep176 = getelementptr i8, ptr %2, i64 %i.aa ; 6 uses
  %next.gep177 = getelementptr i8, ptr %2, i64 %i.ab ; 6 uses
  %next.gep178 = getelementptr i8, ptr %2, i64 %i.ac ; 6 uses
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.z ; 6 uses
  %next.gep180 = getelementptr i8, ptr %1, i64 %i.aa ; 6 uses
  %next.gep181 = getelementptr i8, ptr %1, i64 %i.ab ; 6 uses
  %next.gep182 = getelementptr i8, ptr %1, i64 %i.ac ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep179, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep180, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep181, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep182, i64 1
  %i.ah = load i8, ptr %next.gep179, align 1, !tbaa !49, !alias.scope !60
  %i.ai = load i8, ptr %next.gep180, align 1, !tbaa !49, !alias.scope !60
  %i.aj = load i8, ptr %next.gep181, align 1, !tbaa !49, !alias.scope !60
  %i.ak = load i8, ptr %next.gep182, align 1, !tbaa !49, !alias.scope !60
  %i.al = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %i.am = insertelement <4 x i8> %i.al, i8 %i.ai, i64 1
  %i.an = insertelement <4 x i8> %i.am, i8 %i.aj, i64 2
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.ak, i64 3 ; 2 uses
  %i.ap = icmp eq <4 x i8> %i.ao, zeroinitializer
  %i.aq = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %i.ao, <4 x i8> splat (i8 -2))
  %i.ar = select <4 x i1> %i.ap, <4 x i8> splat (i8 1), <4 x i8> %i.aq
  %i.as = zext <4 x i8> %i.ar to <4 x i32>
  %i.at = shl nuw nsw <4 x i32> %i.as, splat (i32 2)
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.av = getelementptr i8, ptr %i.v, i64 13
  %i.aw = getelementptr i8, ptr %i.w, i64 25
  %i.ax = getelementptr i8, ptr %i.x, i64 37
  %i.ay = load i8, ptr %next.gep, align 1, !tbaa !49, !alias.scope !63
  %i.az = load i8, ptr %next.gep171, align 1, !tbaa !49, !alias.scope !63
  %i.ba = load i8, ptr %next.gep172, align 1, !tbaa !49, !alias.scope !63
  %i.bb = load i8, ptr %next.gep173, align 1, !tbaa !49, !alias.scope !63
  %i.bc = insertelement <4 x i8> poison, i8 %i.ay, i64 0
  %i.bd = insertelement <4 x i8> %i.bc, i8 %i.az, i64 1
  %i.be = insertelement <4 x i8> %i.bd, i8 %i.ba, i64 2
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bb, i64 3 ; 2 uses
  %i.bg = icmp eq <4 x i8> %i.bf, zeroinitializer
  %i.bh = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %i.bf, <4 x i8> splat (i8 -2))
  %i.bi = select <4 x i1> %i.bg, <4 x i8> splat (i8 1), <4 x i8> %i.bh
  %i.bj = zext <4 x i8> %i.bi to <4 x i32>
  %i.bk = shl nuw nsw <4 x i32> %i.bj, splat (i32 12)
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep175, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep176, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %next.gep177, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep178, i64 1
  %i.bp = load i8, ptr %next.gep175, align 1, !tbaa !49, !alias.scope !65
  %i.bq = load i8, ptr %next.gep176, align 1, !tbaa !49, !alias.scope !65
  %i.br = load i8, ptr %next.gep177, align 1, !tbaa !49, !alias.scope !65
  %i.bs = load i8, ptr %next.gep178, align 1, !tbaa !49, !alias.scope !65
  %i.bt = insertelement <4 x i8> poison, i8 %i.bp, i64 0
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bq, i64 1
  %i.bv = insertelement <4 x i8> %i.bu, i8 %i.br, i64 2
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bs, i64 3 ; 2 uses
  %i.bx = icmp eq <4 x i8> %i.bw, zeroinitializer
  %i.by = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %i.bw, <4 x i8> splat (i8 -2))
  %i.bz = select <4 x i1> %i.bx, <4 x i8> splat (i8 1), <4 x i8> %i.by
  %i.ca = zext <4 x i8> %i.bz to <4 x i32>
  %i.cb = shl nuw nsw <4 x i32> %i.ca, splat (i32 22)
  %i.cc = or disjoint <4 x i32> %i.cb, %i.bk
  %i.cd = or disjoint <4 x i32> %i.cc, %i.at
  %i.ce = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cf = getelementptr i8, ptr %i.v, i64 14
  %i.cg = getelementptr i8, ptr %i.w, i64 26
  %i.ch = getelementptr i8, ptr %i.x, i64 38
  %i.ci = load i8, ptr %i.au, align 1, !tbaa !49, !alias.scope !63
  %i.cj = load i8, ptr %i.av, align 1, !tbaa !49, !alias.scope !63
  %i.ck = load i8, ptr %i.aw, align 1, !tbaa !49, !alias.scope !63
  %i.cl = load i8, ptr %i.ax, align 1, !tbaa !49, !alias.scope !63
  %i.cm = insertelement <4 x i8> poison, i8 %i.ci, i64 0
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cj, i64 1
  %i.co = insertelement <4 x i8> %i.cn, i8 %i.ck, i64 2
  %i.cp = insertelement <4 x i8> %i.co, i8 %i.cl, i64 3 ; 2 uses
  %i.cq = icmp eq <4 x i8> %i.cp, zeroinitializer
  %i.cr = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %i.cp, <4 x i8> splat (i8 -2))
  %i.cs = select <4 x i1> %i.cq, <4 x i8> splat (i8 1), <4 x i8> %i.cr
  %i.ct = zext <4 x i8> %i.cs to <4 x i32>
  %i.cu = shl nuw nsw <4 x i32> %i.ct, splat (i32 2)
  %i.cv = getelementptr inbounds nuw i8, ptr %next.gep179, i64 2
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep180, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep181, i64 2
  %i.cy = getelementptr inbounds nuw i8, ptr %next.gep182, i64 2
  %i.cz = load i8, ptr %i.ad, align 1, !tbaa !49, !alias.scope !60
  %i.da = load i8, ptr %i.ae, align 1, !tbaa !49, !alias.scope !60
  %i.db = load i8, ptr %i.af, align 1, !tbaa !49, !alias.scope !60
  %i.dc = load i8, ptr %i.ag, align 1, !tbaa !49, !alias.scope !60
  %i.dd = insertelement <4 x i8> poison, i8 %i.cz, i64 0
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.da, i64 1
  %i.df = insertelement <4 x i8> %i.de, i8 %i.db, i64 2
  %i.dg = insertelement <4 x i8> %i.df, i8 %i.dc, i64 3 ; 2 uses
  %i.dh = icmp eq <4 x i8> %i.dg, zeroinitializer
  %i.di = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %i.dg, <4 x i8> splat (i8 -2))
  %i.dj = select <4 x i1> %i.dh, <4 x i8> splat (i8 1), <4 x i8> %i.di
  %i.dk = zext <4 x i8> %i.dj to <4 x i32>
  %i.dl = shl nuw nsw <4 x i32> %i.dk, splat (i32 12)
  %i.dm = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.dn = getelementptr i8, ptr %i.v, i64 15
  %i.do = getelementptr i8, ptr %i.w, i64 27
  %i.dp = getelementptr i8, ptr %i.x, i64 39
  %i.dq = load i8, ptr %i.ce, align 1, !tbaa !49, !alias.scope !63
  %i.dr = load i8, ptr %i.cf, align 1, !tbaa !49, !alias.scope !63
  %i.ds = load i8, ptr %i.cg, align 1, !tbaa !49, !alias.scope !63
  %i.dt = load i8, ptr %i.ch, align 1, !tbaa !49, !alias.scope !63
  %i.du = insertelement <4 x i8> poison, i8 %i.dq, i64 0
  %i.dv = insertelement <4 x i8> %i.du, i8 %i.dr, i64 1
  %i.dw = insertelement <4 x i8> %i.dv, i8 %i.ds, i64 2
  %i.dx = insertelement <4 x i8> %i.dw, i8 %i.dt, i64 3 ; 2 uses
  %i.dy = icmp eq <4 x i8> %i.dx, zeroinitializer
  %i.dz = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %i.dx, <4 x i8> splat (i8 -2))
  %i.ea = select <4 x i1> %i.dy, <4 x i8> splat (i8 1), <4 x i8> %i.dz
  %i.eb = zext <4 x i8> %i.ea to <4 x i32>
  %i.ec = shl nuw nsw <4 x i32> %i.eb, splat (i32 22)
  %i.ed = or disjoint <4 x i32> %i.ec, %i.dl
  %i.ee = or disjoint <4 x i32> %i.ed, %i.cu
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep175, i64 2
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep176, i64 2
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep177, i64 2
  %i.ei = getelementptr inbounds nuw i8, ptr %next.gep178, i64 2
  %i.ej = load i8, ptr %i.bl, align 1, !tbaa !49, !alias.scope !65
  %i.ek = load i8, ptr %i.bm, align 1, !tbaa !49, !alias.scope !65
  %i.el = load i8, ptr %i.bn, align 1, !tbaa !49, !alias.scope !65
  %i.em = load i8, ptr %i.bo, align 1, !tbaa !49, !alias.scope !65
end_hunk_0
begin_hunk_1_@v210_planar_pack_10_c:bb.a
  %i.gz = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.gy, <4 x i16> splat (i16 4))
  %i.ha = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.gz, <4 x i16> splat (i16 1019))
  %i.hb = zext nneg <4 x i16> %i.ha to <4 x i32>
  %i.hc = shl nuw nsw <4 x i32> %i.hb, splat (i32 20)
  %i.hd = or disjoint <4 x i32> %i.hc, %i.gq
  %i.he = or disjoint <4 x i32> %i.hd, %i.ge
  %i.hf = shufflevector <4 x i32> %i.bz, <4 x i32> %i.dw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hg = shufflevector <4 x i32> %i.fp, <4 x i32> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec, ptr %next.gep86, align 1, !tbaa !49, !alias.scope !81, !noalias !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader99

.lr.ph.preheader99:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.03070.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  %.03169.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  %.03268.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %.03367.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader99, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader99 ]
  %.03070 = phi ptr [ %i.jf, %.lr.ph ], [ %.03070.ph, %.lr.ph.preheader99 ] ; 7 uses
  %.03169 = phi ptr [ %i.jl, %.lr.ph ], [ %.03169.ph, %.lr.ph.preheader99 ] ; 5 uses
  %.03268 = phi ptr [ %i.jb, %.lr.ph ], [ %.03268.ph, %.lr.ph.preheader99 ] ; 4 uses
  %.03367 = phi ptr [ %i.ir, %.lr.ph ], [ %.03367.ph, %.lr.ph.preheader99 ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.03367, i64 2
  %i.hj = load i16, ptr %.03367, align 2, !tbaa !47
  %i.hk = tail call i16 @llvm.umax.i16(i16 %i.hj, i16 4)
  %narrow = tail call i16 @llvm.umin.i16(i16 %i.hk, i16 1019)
  %.0.i55 = zext nneg i16 %narrow to i32
  %i.hl = getelementptr inbounds nuw i8, ptr %.03070, i64 2
  %i.hm = load i16, ptr %.03070, align 2, !tbaa !47
  %i.hn = tail call i16 @llvm.umax.i16(i16 %i.hm, i16 4)
  %narrow56 = tail call i16 @llvm.umin.i16(i16 %i.hn, i16 1019)
  %.0.i53 = zext nneg i16 %narrow56 to i32
  %i.ho = shl nuw nsw i32 %.0.i53, 10
  %i.hp = getelementptr inbounds nuw i8, ptr %.03268, i64 2
  %i.hq = load i16, ptr %.03268, align 2, !tbaa !47
  %i.hr = tail call i16 @llvm.umax.i16(i16 %i.hq, i16 4)
  %narrow57 = tail call i16 @llvm.umin.i16(i16 %i.hr, i16 1019)
  %.0.i51 = zext nneg i16 %narrow57 to i32
  %i.hs = shl nuw nsw i32 %.0.i51, 20
  %i.ht = or disjoint i32 %i.hs, %i.ho
  %i.hu = or disjoint i32 %i.ht, %.0.i55
  store i32 %i.hu, ptr %.03169, align 1, !tbaa !49
  %i.hv = getelementptr inbounds nuw i8, ptr %.03169, i64 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.03070, i64 4
  %i.hx = load i16, ptr %i.hl, align 2, !tbaa !47
  %i.hy = tail call i16 @llvm.umax.i16(i16 %i.hx, i16 4)
  %narrow58 = tail call i16 @llvm.umin.i16(i16 %i.hy, i16 1019)
  %.0.i49 = zext nneg i16 %narrow58 to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %.03367, i64 4
  %i.ia = load i16, ptr %i.hi, align 2, !tbaa !47
  %i.ib = tail call i16 @llvm.umax.i16(i16 %i.ia, i16 4)
  %narrow59 = tail call i16 @llvm.umin.i16(i16 %i.ib, i16 1019)
  %.0.i47 = zext nneg i16 %narrow59 to i32
  %i.ic = shl nuw nsw i32 %.0.i47, 10
  %i.id = getelementptr inbounds nuw i8, ptr %.03070, i64 6
  %i.ie = load i16, ptr %i.hw, align 2, !tbaa !47
  %i.if = tail call i16 @llvm.umax.i16(i16 %i.ie, i16 4)
  %narrow60 = tail call i16 @llvm.umin.i16(i16 %i.if, i16 1019)
  %.0.i45 = zext nneg i16 %narrow60 to i32
  %i.ig = shl nuw nsw i32 %.0.i45, 20
  %i.ih = or disjoint i32 %i.ig, %i.ic
  %i.ii = or disjoint i32 %i.ih, %.0.i49
  store i32 %i.ii, ptr %i.hv, align 1, !tbaa !49
  %i.ij = getelementptr inbounds nuw i8, ptr %.03169, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.03268, i64 4
  %i.il = load i16, ptr %i.hp, align 2, !tbaa !47
  %i.im = tail call i16 @llvm.umax.i16(i16 %i.il, i16 4)
  %narrow61 = tail call i16 @llvm.umin.i16(i16 %i.im, i16 1019)
  %.0.i43 = zext nneg i16 %narrow61 to i32
  %i.in = getelementptr inbounds nuw i8, ptr %.03070, i64 8
  %i.io = load i16, ptr %i.id, align 2, !tbaa !47
  %i.ip = tail call i16 @llvm.umax.i16(i16 %i.io, i16 4)
  %narrow62 = tail call i16 @llvm.umin.i16(i16 %i.ip, i16 1019)
  %.0.i41 = zext nneg i16 %narrow62 to i32
  %i.iq = shl nuw nsw i32 %.0.i41, 10
  %i.ir = getelementptr inbounds nuw i8, ptr %.03367, i64 6
  %i.is = load i16, ptr %i.hz, align 2, !tbaa !47
  %i.it = tail call i16 @llvm.umax.i16(i16 %i.is, i16 4)
  %narrow63 = tail call i16 @llvm.umin.i16(i16 %i.it, i16 1019)
  %.0.i39 = zext nneg i16 %narrow63 to i32
  %i.iu = shl nuw nsw i32 %.0.i39, 20
  %i.iv = or disjoint i32 %i.iu, %i.iq
  %i.iw = or disjoint i32 %i.iv, %.0.i43
  store i32 %i.iw, ptr %i.ij, align 1, !tbaa !49
  %i.ix = getelementptr inbounds nuw i8, ptr %.03169, i64 12
  %i.iy = getelementptr inbounds nuw i8, ptr %.03070, i64 10
  %i.iz = load i16, ptr %i.in, align 2, !tbaa !47
  %i.ja = tail call i16 @llvm.umax.i16(i16 %i.iz, i16 4)
  %narrow64 = tail call i16 @llvm.umin.i16(i16 %i.ja, i16 1019)
  %.0.i37 = zext nneg i16 %narrow64 to i32
  %i.jb = getelementptr inbounds nuw i8, ptr %.03268, i64 6
  %i.jc = load i16, ptr %i.ik, align 2, !tbaa !47
  %i.jd = tail call i16 @llvm.umax.i16(i16 %i.jc, i16 4)
  %narrow65 = tail call i16 @llvm.umin.i16(i16 %i.jd, i16 1019)
  %.0.i35 = zext nneg i16 %narrow65 to i32
  %i.je = shl nuw nsw i32 %.0.i35, 10
  %i.jf = getelementptr inbounds nuw i8, ptr %.03070, i64 12
  %i.jg = load i16, ptr %i.iy, align 2, !tbaa !47
  %i.jh = tail call i16 @llvm.umax.i16(i16 %i.jg, i16 4)
  %narrow66 = tail call i16 @llvm.umin.i16(i16 %i.jh, i16 1019)
  %.0.i = zext nneg i16 %narrow66 to i32
  %i.ji = shl nuw nsw i32 %.0.i, 20
  %i.jj = or disjoint i32 %i.ji, %i.je
  %i.jk = or disjoint i32 %i.jj, %.0.i37
  store i32 %i.jk, ptr %i.ix, align 1, !tbaa !49
  %i.jl = getelementptr inbounds nuw i8, ptr %.03169, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.jm = icmp sgt i64 %i.a, %indvars.iv.next
  br i1 %i.jm, label %.lr.ph, label %._crit_edge, !llvm.loop !85
}

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_frame_get_side_data(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!9 = !{!10, !6, i64 112}
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
!29 = !{!10, !12, i64 32}
!30 = !{!31, !12, i64 0}
!31 = !{!"V210EncContext", !12, i64 0, !12, i64 8, !6, i64 16, !6, i64 20}
!32 = !{!31, !12, i64 8}
!33 = !{!6, !6, i64 0}
!34 = !{!10, !6, i64 648}
!35 = !{!10, !15, i64 56}
!36 = !{!10, !6, i64 116}
!37 = !{!38, !16, i64 24}
!38 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!39 = !{!40, !6, i64 116}
!40 = !{!"AVFrame", !7, i64 0, !7, i64 64, !41, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !42, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !43, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!41 = !{!"p2 omnipotent char", !28, i64 0}
!42 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!43 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!44 = !{!31, !6, i64 20}
!45 = !{!16, !16, i64 0}
!46 = distinct !{null}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !7, i64 0}
!49 = !{!7, !7, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!31, !6, i64 16}
!54 = distinct !{null}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !51}
!57 = !{!58, !15, i64 16}
!58 = !{!"AVFrameSideData", !6, i64 0, !16, i64 8, !15, i64 16, !43, i64 24, !23, i64 32}
!59 = !{!58, !16, i64 8}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = !{!66}
!66 = distinct !{!66, !62}
!67 = !{!68}
!68 = distinct !{!68, !62}
!69 = !{!61, !64, !66}
!70 = distinct !{!70, !51, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = distinct !{!73, !51, !71}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = !{!80}
!80 = distinct !{!80, !76}
!81 = !{!82}
!82 = distinct !{!82, !76}
!83 = !{!75, !78, !80}
!84 = distinct !{!84, !51, !71, !72}
!85 = distinct !{!85, !51, !71}
end_hunk_1
