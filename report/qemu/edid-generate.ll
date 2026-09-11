Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/edid-generate?download=true
inline.NumInlined: 57
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.edid_mode = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"RHT\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"QEMU Monitor\00", align 1
@modes = internal unnamed_addr constant [22 x %struct.edid_mode] [%struct.edid_mode { i32 5120, i32 2160, i32 0, i32 0, i32 0, i32 125 }, %struct.edid_mode { i32 4096, i32 2160, i32 0, i32 0, i32 0, i32 101 }, %struct.edid_mode { i32 3840, i32 2160, i32 0, i32 0, i32 0, i32 96 }, %struct.edid_mode { i32 2560, i32 1080, i32 0, i32 0, i32 0, i32 89 }, %struct.edid_mode { i32 2048, i32 1152, i32 0, i32 0, i32 0, i32 0 }, %struct.edid_mode { i32 1920, i32 1080, i32 0, i32 0, i32 0, i32 31 }, %struct.edid_mode { i32 3840, i32 2160, i32 0, i32 0, i32 0, i32 97 }, %struct.edid_mode { i32 1920, i32 1200, i32 0, i32 10, i32 0, i32 0 }, %struct.edid_mode { i32 1600, i32 1200, i32 0, i32 9, i32 2, i32 0 }, %struct.edid_mode { i32 1680, i32 1050, i32 0, i32 9, i32 5, i32 0 }, %struct.edid_mode { i32 1440, i32 900, i32 0, i32 8, i32 5, i32 0 }, %struct.edid_mode { i32 1280, i32 1024, i32 0, i32 7, i32 1, i32 0 }, %struct.edid_mode { i32 1280, i32 960, i32 0, i32 7, i32 3, i32 0 }, %struct.edid_mode { i32 1280, i32 768, i32 0, i32 7, i32 6, i32 0 }, %struct.edid_mode { i32 1920, i32 1440, i32 0, i32 11, i32 5, i32 0 }, %struct.edid_mode { i32 1856, i32 1392, i32 0, i32 10, i32 3, i32 0 }, %struct.edid_mode { i32 1792, i32 1344, i32 0, i32 10, i32 5, i32 0 }, %struct.edid_mode { i32 1440, i32 1050, i32 0, i32 8, i32 1, i32 0 }, %struct.edid_mode { i32 1360, i32 768, i32 0, i32 8, i32 7, i32 0 }, %struct.edid_mode { i32 1024, i32 768, i32 36, i32 0, i32 3, i32 0 }, %struct.edid_mode { i32 800, i32 600, i32 35, i32 0, i32 0, i32 0 }, %struct.edid_mode { i32 640, i32 480, i32 35, i32 0, i32 5, i32 0 }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 429496730) i32 @qemu_edid_dpi_to_mm(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i32 %1, 254
  %i.b = udiv i32 %i.a, 10
  %i.c = udiv i32 %i.b, %0
  ret i32 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_edid_generate(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %.ptr225 = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %spec.select = select i1 %.not, i32 75000, i32 %i.b
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %.not140 = icmp eq ptr %i.c, null
  br i1 %.not140, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #8
  %.not141 = icmp eq i64 %i.d, 3
  br i1 %.not141, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @.str, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not142 = icmp eq ptr %i.f, null
  br i1 %.not142, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @.str.1, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not143 = icmp eq i32 %i.h, 0
  br i1 %.not143, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1280, ptr %i.g, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = phi i32 [ 1280, %bb.g ], [ %i.h, %bb.f ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %.not144 = icmp eq i32 %i.k, 0
  br i1 %.not144, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 800, ptr %i.j, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.l = phi i32 [ 800, %bb.i ], [ %i.k, %bb.h ]  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i16, ptr %i.m, align 8              ; 2 uses
  %i.o = zext i16 %i.n to i32
  %.not145 = icmp eq i16 %i.n, 0
  br i1 %.not145, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.q = load i16, ptr %i.p, align 2              ; 2 uses
  %.not146 = icmp eq i16 %i.q, 0
  br i1 %.not146, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = zext i16 %i.q to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.s = mul i32 %i.i, 254
  %i.t = udiv i32 %i.s, 1000
  %i.u = mul i32 %i.l, 254
  %i.v = udiv i32 %i.u, 1000
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0127 = phi i32 [ %i.t, %bb.m ], [ %i.o, %bb.l ] ; 3 uses
  %.0126 = phi i32 [ %i.v, %bb.m ], [ %i.r, %bb.l ] ; 3 uses
  %i.w = mul i32 %i.i, 25
  %i.x = udiv i32 %i.w, 100                       ; 3 uses
  %i.y = mul i32 %i.i, 3
  %i.z = udiv i32 %i.y, 100                       ; 3 uses
  %i.aa = mul i32 %i.i, 35
  %i.ab = udiv i32 %i.aa, 100                     ; 4 uses
  %i.ac = mul i32 %i.l, 5
  %i.ad = udiv i32 %i.ac, 1000                    ; 5 uses
  %i.ae = mul i32 %i.l, 35
  %i.af = udiv i32 %i.ae, 1000                    ; 4 uses
  %i.ag = zext i32 %spec.select to i64
  %i.ah = add i32 %i.ab, %i.i
  %i.ai = zext i32 %i.ah to i64
  %i.aj = mul nuw i64 %i.ai, %i.ag
  %i.ak = add i32 %i.af, %i.l
  %i.al = zext i32 %i.ak to i64
  %i.am = mul i64 %i.aj, %i.al                    ; 2 uses
  %i.an = udiv i64 %i.am, 10000000                ; 5 uses
  %i.ao = icmp ugt i32 %i.i, 4095
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = icmp ugt i32 %i.l, 4095
  %i.aq = icmp ugt i64 %i.am, 655359999999
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ar = phi i1 [ true, %bb.p ], [ false, %bb.o ] ; 4 uses
  %i.as = icmp ugt i64 %1, 255
  br i1 %i.as, label %bb.r, label %init_displayid.exit

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = add i8 %i.av, 1
  store i8 %i.aw, ptr %i.au, align 1
  store <4 x i8> <i8 2, i8 3, i8 5, i8 0>, ptr %i.at, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 64, ptr %i.ax, align 1
  %i.ay = icmp ugt i64 %1, 383
  %or.cond4 = and i1 %i.ay, %i.ar
  br i1 %or.cond4, label %bb.s, label %init_displayid.exit

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ba = add i8 %i.av, 2
  store i8 %i.ba, ptr %i.au, align 1
  store <4 x i8> <i8 112, i8 19, i8 4, i8 3>, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.bc = load <4 x i8>, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.bc)
  %i.bh = zext i8 %i.bg to i32
  %op.rdx313.a = add nuw nsw i32 %i.bh, %i.bf
  %op.rdx314 = add nuw nsw i32 %op.rdx313.a, 26   ; 2 uses
  %i.bi = and i32 %op.rdx314, 255
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %init_displayid.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = trunc i32 %op.rdx314 to i8
  %i.bk = sub i8 0, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 %i.bk, ptr %i.bl, align 1
  br label %init_displayid.exit

init_displayid.exit:                              ; preds = %bb.q, %bb.t, %bb.s, %bb.r
  %.0129208 = phi ptr [ %i.at, %bb.t ], [ %i.at, %bb.r ], [ %i.at, %bb.s ], [ null, %bb.q ] ; 10 uses
  %.0128 = phi ptr [ %i.az, %bb.t ], [ null, %bb.r ], [ %i.az, %bb.s ], [ null, %bb.q ] ; 58 uses
  store i8 0, ptr %0, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bm, i8 -1, i64 6, i1 false)
  store i8 0, ptr %i.bn, align 1
  %i.bo = load ptr, ptr %2, align 8               ; 2 uses
  %i.bp = load <2 x i8>, ptr %i.bo, align 1
  %i.bq = and <2 x i8> %i.bp, splat (i8 31)
  %i.br = zext nneg <2 x i8> %i.bq to <2 x i16>
  %i.bs = shl nuw nsw <2 x i16> %i.br, <i16 10, i16 5> ; 2 uses
  %shift = shufflevector <2 x i16> %i.bs, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %shift, %i.bs
  %i.bt = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = and i8 %i.bv, 31
  %i.bx = zext nneg i8 %i.bw to i16
  %i.by = or disjoint i16 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not147 = icmp eq ptr %i.ca, null
  br i1 %.not147, label %bb.v, label %bb.u

bb.u:                                             ; preds = %init_displayid.exit
  %i.cb = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ca, ptr noundef null, i32 noundef 10) #9, !inline_history !7
  %i.cc = trunc i64 %i.cb to i32
  br label %bb.v

bb.v:                                             ; preds = %init_displayid.exit, %bb.u
  %i.cd = phi i32 [ %i.cc, %bb.u ], [ 0, %init_displayid.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = tail call i16 @llvm.bswap.i16(i16 range(i16 0, -32768) %i.by)
  store i16 %i.cf, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 4660, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.cd, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i8> <i8 42, i8 24, i8 1, i8 4>, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 -91, ptr %i.cj, align 1
  %i.ck = udiv i32 %.0127, 10
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = udiv i32 %.0126, 10
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.co, ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 23
  store <8 x i8> <i8 120, i8 6, i8 -18, i8 -111, i8 -93, i8 84, i8 76, i8 -103>, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 31
  store <4 x i8> <i8 38, i8 15, i8 80, i8 84>, ptr %i.cr, align 1
  br i1 %i.ar, label %edid_desc_next.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ct = load i32, ptr %i.j, align 8             ; 2 uses
  %i.cu = trunc i64 %i.an to i16
  store i16 %i.cu, ptr %.ptr225, align 1
  %i.cv = trunc i32 %i.cs to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = trunc i32 %i.ab to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = lshr i32 %i.cs, 4
  %i.da = and i32 %i.cz, 240
  %i.db = lshr i32 %i.ab, 8
  %i.dc = and i32 %i.db, 15
  %i.dd = or disjoint i32 %i.da, %i.dc
  %i.de = trunc nuw i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = trunc i32 %i.ct to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = trunc i32 %i.af to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.di, ptr %i.dj, align 1
  %i.dk = lshr i32 %i.ct, 4
  %i.dl = and i32 %i.dk, 240
  %i.dm = lshr i32 %i.af, 8
  %i.dn = and i32 %i.dm, 15
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = trunc nuw i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = trunc i32 %i.x to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i8 %i.dr, ptr %i.ds, align 1
  %i.dt = trunc i32 %i.z to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = shl nuw nsw i32 %i.ad, 4
  %i.dw = and i32 %i.ad, 15
  %i.dx = or disjoint i32 %i.dw, %i.dv
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.dy, ptr %i.dz, align 1
  %i.ea = lshr i32 %i.x, 2
  %i.eb = and i32 %i.ea, 192
  %i.ec = lshr i32 %i.z, 4
  %i.ed = and i32 %i.ec, 48
  %i.ee = or disjoint i32 %i.ed, %i.eb
  %i.ef = lshr i32 %i.ad, 2
  %i.eg = and i32 %i.ef, 12
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = lshr i32 %i.ad, 4
  %i.ej = and i32 %i.ei, 3
  %i.ek = or disjoint i32 %i.eh, %i.ej
  %i.el = trunc nuw i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %i.el, ptr %i.em, align 1
  %i.en = trunc i32 %.0127 to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 %i.en, ptr %i.eo, align 1
  %i.ep = trunc i32 %.0126 to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 67
  store i8 %i.ep, ptr %i.eq, align 1
  %i.er = lshr i32 %.0127, 4
  %i.es = and i32 %i.er, 240
  %i.et = lshr i32 %.0126, 8
  %i.eu = and i32 %i.et, 15
  %i.ev = or disjoint i32 %i.eu, %i.es
  %i.ew = trunc nuw i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 71
  store i8 24, ptr %i.ey, align 1
  br label %edid_desc_next.exit

edid_desc_next.exit:                              ; preds = %bb.w, %bb.v
  %.0130.idx = phi i64 [ 54, %bb.v ], [ 72, %bb.w ]
  %.0130.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0130.idx ; 11 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -9>, ptr %.0130.ptr, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 4
  store i8 0, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 5
  store i8 10, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.fc = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fe = load i32, ptr %i.fd, align 8            ; 2 uses
  %.not.i154 = icmp eq i32 %i.fc, 0
  %.not42.i = icmp eq i32 %i.fe, 0
  %.not44.i = icmp eq ptr %.0129208, null         ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0129208, i64 2 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0129208, i64 4 ; 2 uses
  br label %bb.x

.preheader.i:                                     ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 18
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 127 ; 5 uses
  %i.fj = icmp slt i32 %.2.i, 54
  br i1 %i.fj, label %.lr.ph.preheader.i, label %bb.ap

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.fk = sext i32 %.2.i to i64
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.fk
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.2.i, i32 52)
  %reass.sub = sub i32 %smax.i, %.2.i
  %i.fl = add i32 %reass.sub, 1
  %i.fm = and i32 %i.fl, -2
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add nuw nsw i64 %i.fn, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 1, i64 %i.fo, i1 false)
  br label %bb.ap

bb.x:                                             ; preds = %bb.ao, %edid_desc_next.exit
  %indvars.iv.i = phi i64 [ 0, %edid_desc_next.exit ], [ %indvars.iv.next.i, %bb.ao ] ; 5 uses
  %.03351.i = phi i32 [ 38, %edid_desc_next.exit ], [ %.2.i, %bb.ao ] ; 10 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr @modes, i64 %indvars.iv.i ; 9 uses
  br i1 %.not.i154, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = icmp ugt i32 %i.fq, %i.fc
  br i1 %i.fr, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %.not42.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = icmp ugt i32 %i.ft, %i.fe
  br i1 %i.fu, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not43.i = icmp samesign ult i64 %indvars.iv.i, 19
  br i1 %.not43.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = shl nuw i32 1, %i.fy
  %i.ga = zext i32 %i.fw to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = trunc i32 %i.fz to i8
  %i.ge = or i8 %i.gc, %i.gd
  store i8 %i.ge, ptr %i.gb, align 1
  br label %edid_std_mode.exit.thread.i

bb.ad:                                            ; preds = %bb.ab
  %i.gf = icmp slt i32 %.03351.i, 54
  br i1 %i.gf, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.gg = sext i32 %.03351.i to i64
  %i.gh = getelementptr inbounds i8, ptr %0, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.fp, align 8            ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.gk = load i32, ptr %i.gj, align 4            ; 3 uses
  %i.gl = mul i32 %i.gi, 10
  %i.gm = shl i32 %i.gk, 4                        ; 2 uses
  %i.gn = icmp eq i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.go = mul i32 %i.gi, 3
  %i.gp = shl i32 %i.gk, 2
  %i.gq = icmp eq i32 %i.go, %i.gp
  br i1 %i.gq, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gr = shl i32 %i.gi, 2
  %i.gs = mul i32 %i.gk, 5
  %i.gt = icmp eq i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gu = mul i32 %i.gi, 9
  %i.gv = icmp eq i32 %i.gu, %i.gm
  br i1 %i.gv, label %bb.ai, label %edid_std_mode.exit.thread.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.0.i.i = phi i8 [ -128, %bb.ag ], [ 0, %bb.ae ], [ 64, %bb.af ], [ -64, %bb.ah ]
  %i.gw = lshr i32 %i.gi, 3
  %i.gx = add nsw i32 %i.gw, -31                  ; 2 uses
  %i.gy = icmp ugt i32 %i.gx, 255
  br i1 %i.gy, label %edid_std_mode.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gz = trunc nuw i32 %i.gx to i8
  store i8 %i.gz, ptr %i.gh, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store i8 %.0.i.i, ptr %i.ha, align 1
  %i.hb = add nsw i32 %.03351.i, 2
  br label %edid_std_mode.exit.thread.i

bb.ak:                                            ; preds = %bb.ad
  %i.hc = icmp samesign ugt i64 %indvars.iv.i, 6
  br i1 %i.hc, label %bb.al, label %edid_std_mode.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.hg = load i32, ptr %i.hf, align 8
  %i.hh = shl nuw i32 1, %i.hg
  %i.hi = zext i32 %i.he to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 %i.hi ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = trunc i32 %i.hh to i8
  %i.hm = or i8 %i.hk, %i.hl
  store i8 %i.hm, ptr %i.hj, align 1
  br label %edid_std_mode.exit.thread.i

edid_std_mode.exit.thread.i:                      ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ac
  %.1.i = phi i32 [ %.03351.i, %bb.ac ], [ %.03351.i, %bb.ak ], [ %.03351.i, %bb.al ], [ %i.hb, %bb.aj ], [ %.03351.i, %bb.ai ], [ %.03351.i, %bb.ah ] ; 3 uses
  br i1 %.not44.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %edid_std_mode.exit.thread.i
  %i.hn = shl nuw nsw i64 1, %indvars.iv.i
  %i.ho = and i64 %i.hn, 4194192
  %.not45.not.i = icmp eq i64 %i.ho, 0
  br i1 %.not45.not.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = trunc i32 %i.hq to i8
  %i.hs = load i8, ptr %i.ff, align 1
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %.0129208, i64 %i.ht
  store i8 %i.hr, ptr %i.hu, align 1
  %i.hv = load i8, ptr %i.ff, align 1
  %i.hw = add i8 %i.hv, 1
  store i8 %i.hw, ptr %i.ff, align 1
  %i.hx = load i8, ptr %i.fg, align 1
  %i.hy = add i8 %i.hx, 1
  store i8 %i.hy, ptr %i.fg, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %edid_std_mode.exit.thread.i, %bb.aa, %bb.y
  %.2.i = phi i32 [ %.03351.i, %bb.y ], [ %.03351.i, %bb.aa ], [ %.1.i, %bb.an ], [ %.1.i, %bb.am ], [ %.1.i, %edid_std_mode.exit.thread.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 22
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.x, !llvm.loop !8

bb.ap:                                            ; preds = %.lr.ph.preheader.i, %.preheader.i
  store <8 x i8> <i8 0, i8 0, i8 0, i8 -3, i8 0, i8 50, i8 125, i8 30>, ptr %i.fh, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 26
  store <4 x i8> <i8 -96, i8 -1, i8 1, i8 10>, ptr %i.hz, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ia, i8 noundef 32, i64 noundef 6, i1 noundef false) #9
  %i.ib = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 36 ; 3 uses
  %i.ic = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not149 = icmp eq ptr %i.ic, null
  br i1 %.not149, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -4>, ptr %i.ib, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 40
  store i8 0, ptr %i.id, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 41 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ie, i8 noundef 32, i64 noundef 13, i1 noundef false) #9
  %i.if = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ic) #8
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.if, i64 12) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ie, ptr noundef nonnull readonly align 1 %i.ic, i64 noundef %spec.store.select.i, i1 noundef false) #9
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 %spec.store.select.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 5
  store i8 10, ptr %i.ih, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0130.ptr, i64 54
  br i1 %i.ar, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not44.i, label %._crit_edge.thread, label %bb.as

._crit_edge.thread:                               ; preds = %bb.ar
  %i.ij = icmp ne ptr %.0128, null
  br label %vector.body

bb.as:                                            ; preds = %bb.ar
  %i.ik = load i8, ptr %i.ff, align 1
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %.0129208, i64 %i.il
  br label %bb.at

bb.at:                                            ; preds = %bb.ap, %bb.as, %bb.aq
  %.1.ph = phi ptr [ %i.ii, %bb.aq ], [ %i.im, %bb.as ], [ %i.ib, %bb.ap ] ; 8 uses
  %i.in = load ptr, ptr %i.bz, align 8            ; 3 uses
  %.not151 = icmp eq ptr %i.in, null
  br i1 %.not151, label %.lr.ph, label %bb.au

bb.au:                                            ; preds = %bb.at
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, ptr %.1.ph, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.1.ph, i64 4
  store i8 0, ptr %i.io, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.1.ph, i64 5 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ip, i8 noundef 32, i64 noundef 13, i1 noundef false) #9
  %i.iq = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.in) #8
  %spec.store.select.i161 = tail call i64 @llvm.umin.i64(i64 %i.iq, i64 12) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ip, ptr noundef nonnull readonly align 1 %i.in, i64 noundef %spec.store.select.i161, i1 noundef false) #9
  %i.ir = getelementptr inbounds nuw i8, ptr %.1.ph, i64 %spec.store.select.i161
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 5
  store i8 10, ptr %i.is, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %.1.ph, i64 18 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.1.ph, i64 36 ; 2 uses
  %i.iv = icmp ult ptr %i.iu, %i.fi
  br i1 %i.iv, label %.lr.ph, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not44.i, label %._crit_edge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iw = icmp ult ptr %.1.ph, %i.fi
  br i1 %i.iw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ix = load i8, ptr %i.ff, align 1
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %.0129208, i64 %i.iy
  br label %.lr.ph.split.preheader

bb.ay:                                            ; preds = %bb.aw
  %i.ja = getelementptr inbounds nuw i8, ptr %.0129208, i64 127
  %i.jb = icmp ult ptr %i.iu, %i.ja
  br i1 %i.jb, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %bb.at, %bb.au
  %.2.ph = phi ptr [ %.1.ph, %bb.at ], [ %i.it, %bb.au ] ; 2 uses
  br i1 %.not44.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.ax, %bb.ay, %.lr.ph
  %.2.ph274 = phi ptr [ %.2.ph, %.lr.ph ], [ %i.it, %bb.ay ], [ %i.iz, %bb.ax ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.0129208, i64 127
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.3231.us = phi ptr [ %i.je, %.lr.ph.split.us ], [ %.2.ph, %.lr.ph ] ; 4 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 16>, ptr %.3231.us, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.3231.us, i64 4
  store i8 0, ptr %i.jd, align 1
  %i.je = getelementptr inbounds nuw i8, ptr %.3231.us, i64 18
  %i.jf = getelementptr inbounds nuw i8, ptr %.3231.us, i64 36
  %.not234 = icmp ult ptr %i.jf, %i.fi
  br i1 %.not234, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !9

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader
  %.3231 = phi ptr [ %.2.ph274, %.lr.ph.split.preheader ], [ %i.jh, %.lr.ph.split ] ; 4 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 16>, ptr %.3231, align 1
  %i.jg = getelementptr inbounds nuw i8, ptr %.3231, i64 4
  store i8 0, ptr %i.jg, align 1
  %i.jh = getelementptr inbounds nuw i8, ptr %.3231, i64 18
  %i.ji = getelementptr inbounds nuw i8, ptr %.3231, i64 36 ; 2 uses
  %3 = icmp ult ptr %i.ji, %i.fi
  %i.jj = icmp ult ptr %i.ji, %i.jc
  %or.cond281 = select i1 %3, i1 true, i1 %i.jj
  br i1 %or.cond281, label %.lr.ph.split, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.av, %bb.ay
  %.0129212271 = phi ptr [ null, %bb.av ], [ null, %.lr.ph.split.us ], [ %.0129208, %bb.ay ], [ %.0129208, %.lr.ph.split ] ; 3 uses
  %i.jk = icmp ne ptr %.0128, null                ; 4 uses
  %or.cond6 = and i1 %i.ar, %i.jk
  br i1 %or.cond6, label %bb.az, label %vector.body

bb.az:                                            ; preds = %._crit_edge
  %i.jl = load i32, ptr %i.g, align 4
  %i.jm = load i32, ptr %i.j, align 8
  store <4 x i8> <i8 112, i8 19, i8 23, i8 3>, ptr %.0128, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.0128, i64 5
  store i8 3, ptr %i.jn, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.0128, i64 6
  store i8 0, ptr %i.jo, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %.0128, i64 7
  store i8 20, ptr %i.jp, align 1
  %i.jq = trunc i64 %i.an to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %.0128, i64 8
  store i8 %i.jq, ptr %i.jr, align 1
  %i.js = lshr i64 %i.an, 8                       ; 2 uses
  %i.jt = trunc i64 %i.js to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %.0128, i64 9
  store i8 %i.jt, ptr %i.ju, align 1
  %i.jv = lshr i64 %i.an, 16                      ; 2 uses
  %i.jw = trunc i64 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %.0128, i64 10
  store i8 %i.jw, ptr %i.jx, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.0128, i64 11
  store i8 -120, ptr %i.jy, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.0128, i64 12
  %i.ka = trunc i32 %i.jl to i16
  %i.kb = add i16 %i.ka, -1                       ; 3 uses
  store i16 %i.kb, ptr %i.jz, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %.0128, i64 14
  %i.kd = trunc i32 %i.ab to i16                  ; 2 uses
  %i.ke = add i16 %i.kd, -1                       ; 2 uses
  store i16 %i.ke, ptr %i.kc, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %.0128, i64 16
  %i.kg = trunc i32 %i.x to i16
  %i.kh = add i16 %i.kg, -1                       ; 3 uses
  store i16 %i.kh, ptr %i.kf, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.0128, i64 18
  %i.kj = trunc i32 %i.z to i16
  %i.kk = add i16 %i.kj, -1                       ; 3 uses
  store i16 %i.kk, ptr %i.ki, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %.0128, i64 20
  %i.km = trunc i32 %i.jm to i16
  %i.kn = add i16 %i.km, -1                       ; 3 uses
  store i16 %i.kn, ptr %i.kl, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %.0128, i64 22
  %i.kp = trunc i32 %i.af to i16
  %i.kq = add i16 %i.kp, -1                       ; 3 uses
  store i16 %i.kq, ptr %i.ko, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.0128, i64 24
  %i.ks = trunc i32 %i.ad to i16
  %i.kt = add i16 %i.ks, -1                       ; 4 uses
  store i16 %i.kt, ptr %i.kr, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %.0128, i64 26
  store i16 %i.kt, ptr %i.ku, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %.0128, i64 4
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = zext i8 %i.kw to i32
  %i.ky = trunc i64 %i.an to i32
  %i.kz = trunc i64 %i.js to i32
  %i.la = trunc nuw nsw i64 %i.jv to i32
  %i.lb = lshr i16 %i.kb, 8
  %i.lc = lshr i16 %i.ke, 8
  %i.ld = lshr i16 %i.kh, 8
  %i.le = lshr i16 %i.kk, 8
  %i.lf = lshr i16 %i.kn, 8
  %i.lg = lshr i16 %i.kq, 8
  %i.lh = and i16 %i.kt, 255
  %i.li = lshr i16 %i.kt, 8
  %narrow = add nuw nsw i16 %i.lh, %i.li
  %i.lj = shl nuw nsw i16 %narrow, 1
  %narrow235 = add i16 %i.kd, 203
  %narrow236 = add i16 %narrow235, %i.lc
  %narrow237 = add i16 %narrow236, %i.kh
  %narrow238 = add i16 %narrow237, %i.ld
  %narrow239 = add i16 %narrow238, %i.kk
  %narrow240 = add i16 %narrow239, %i.le
  %i.lk = insertelement <8 x i16> poison, i16 %narrow240, i64 0
  %i.ll = insertelement <8 x i16> %i.lk, i16 %i.kq, i64 1
  %i.lm = insertelement <8 x i16> %i.ll, i16 %i.lg, i64 2
  %i.ln = insertelement <8 x i16> %i.lm, i16 %i.kb, i64 3
  %i.lo = insertelement <8 x i16> %i.ln, i16 %i.lb, i64 4
  %i.lp = insertelement <8 x i16> %i.lo, i16 %i.kn, i64 5
  %i.lq = insertelement <8 x i16> %i.lp, i16 %i.lf, i64 6
  %i.lr = insertelement <8 x i16> %i.lq, i16 %i.lj, i64 7
  %i.ls = zext <8 x i16> %i.lr to <8 x i32>
  %i.lt = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ls)
  %op.rdx = add i32 %i.lt, %i.kz
  %op.rdx310 = add nuw nsw i32 %i.la, %i.kx
  %op.rdx311 = add i32 %op.rdx, %op.rdx310
  %op.rdx312 = add i32 %op.rdx311, %i.ky          ; 2 uses
  %i.lu = and i32 %op.rdx312, 255
  %.not.i.i168 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i168, label %vector.body, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lv = trunc i32 %op.rdx312 to i8
  %i.lw = sub i8 0, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.0128, i64 28
  store i8 %i.lw, ptr %i.lx, align 1
  br label %vector.body

vector.body:                                      ; preds = %._crit_edge, %bb.az, %bb.ba, %._crit_edge.thread
  %i.ly = phi i1 [ %i.ij, %._crit_edge.thread ], [ %i.jk, %bb.ba ], [ %i.jk, %bb.az ], [ %i.jk, %._crit_edge ]
  %.0129212271279 = phi ptr [ null, %._crit_edge.thread ], [ %.0129212271, %bb.ba ], [ %.0129212271, %bb.az ], [ %.0129212271, %._crit_edge ] ; 38 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.load287 = load <4 x i8>, ptr %i.lz, align 1
  %i.ma = zext <4 x i8> %wide.load287 to <4 x i32>
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %wide.load287.1 = load <4 x i8>, ptr %i.mb, align 1
  %i.mc = zext <4 x i8> %wide.load287.1 to <4 x i32>
  %i.md = add nuw nsw <4 x i32> %i.ma, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load287.2 = load <4 x i8>, ptr %i.me, align 1
  %i.mf = zext <4 x i8> %wide.load287.2 to <4 x i32>
  %i.mg = add nuw nsw <4 x i32> %i.md, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.load287.3 = load <4 x i8>, ptr %i.mh, align 1
  %i.mi = zext <4 x i8> %wide.load287.3 to <4 x i32>
  %i.mj = add nuw nsw <4 x i32> %i.mg, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %wide.load287.4 = load <4 x i8>, ptr %i.mk, align 1
  %i.ml = zext <4 x i8> %wide.load287.4 to <4 x i32>
  %i.mm = add nuw nsw <4 x i32> %i.mj, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %wide.load287.5 = load <4 x i8>, ptr %i.mn, align 1
  %i.mo = zext <4 x i8> %wide.load287.5 to <4 x i32>
  %i.mp = add nuw nsw <4 x i32> %i.mm, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %wide.load287.6 = load <4 x i8>, ptr %i.mq, align 1
  %i.mr = zext <4 x i8> %wide.load287.6 to <4 x i32>
  %i.ms = add nuw nsw <4 x i32> %i.mp, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 60
  %wide.load287.7 = load <4 x i8>, ptr %i.mt, align 1
  %i.mu = zext <4 x i8> %wide.load287.7 to <4 x i32>
  %i.mv = add <4 x i32> %i.ms, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 68
  %wide.load287.8 = load <4 x i8>, ptr %i.mw, align 1
  %i.mx = zext <4 x i8> %wide.load287.8 to <4 x i32>
  %i.my = add <4 x i32> %i.mv, %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 76
  %wide.load287.9 = load <4 x i8>, ptr %i.mz, align 1
  %i.na = zext <4 x i8> %wide.load287.9 to <4 x i32>
  %i.nb = add <4 x i32> %i.my, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.load287.10 = load <4 x i8>, ptr %i.nc, align 1
  %i.nd = zext <4 x i8> %wide.load287.10 to <4 x i32>
  %i.ne = add <4 x i32> %i.nb, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %wide.load287.11 = load <4 x i8>, ptr %i.nf, align 1
  %i.ng = zext <4 x i8> %wide.load287.11 to <4 x i32>
  %i.nh = add <4 x i32> %i.ne, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 100
  %wide.load287.12 = load <4 x i8>, ptr %i.ni, align 1
  %i.nj = zext <4 x i8> %wide.load287.12 to <4 x i32>
  %i.nk = add <4 x i32> %i.nh, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 108
  %wide.load287.13 = load <4 x i8>, ptr %i.nl, align 1
  %i.nm = zext <4 x i8> %wide.load287.13 to <4 x i32>
  %i.nn = add <4 x i32> %i.nk, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 116
  %wide.load287.14 = load <4 x i8>, ptr %i.no, align 1
  %i.np = zext <4 x i8> %wide.load287.14 to <4 x i32>
  %i.nq = add <4 x i32> %i.nn, %i.np
  %wide.load = load <4 x i8>, ptr %0, align 1
  %i.nr = zext <4 x i8> %wide.load to <4 x i32>
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.load.1 = load <4 x i8>, ptr %i.ns, align 1
  %i.nt = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.nu = add nuw nsw <4 x i32> %i.nr, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load.2 = load <4 x i8>, ptr %i.nv, align 1
  %i.nw = zext <4 x i8> %wide.load.2 to <4 x i32>
  %i.nx = add nuw nsw <4 x i32> %i.nu, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.load.3 = load <4 x i8>, ptr %i.ny, align 1
  %i.nz = zext <4 x i8> %wide.load.3 to <4 x i32>
  %i.oa = add nuw nsw <4 x i32> %i.nx, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.load.4 = load <4 x i8>, ptr %i.ob, align 1
  %i.oc = zext <4 x i8> %wide.load.4 to <4 x i32>
  %i.od = add nuw nsw <4 x i32> %i.oa, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.load.5 = load <4 x i8>, ptr %i.oe, align 1
  %i.of = zext <4 x i8> %wide.load.5 to <4 x i32>
  %i.og = add nuw nsw <4 x i32> %i.od, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load.6 = load <4 x i8>, ptr %i.oh, align 1
  %i.oi = zext <4 x i8> %wide.load.6 to <4 x i32>
  %i.oj = add nuw nsw <4 x i32> %i.og, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.load.7 = load <4 x i8>, ptr %i.ok, align 1
  %i.ol = zext <4 x i8> %wide.load.7 to <4 x i32>
  %i.om = add <4 x i32> %i.oj, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.load.8 = load <4 x i8>, ptr %i.on, align 1
  %i.oo = zext <4 x i8> %wide.load.8 to <4 x i32>
  %i.op = add <4 x i32> %i.om, %i.oo
end_hunk_0
