Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dv?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@dv_calc_mb_coordinates.l_start = internal unnamed_addr constant [10 x i8] c"\00\04\09\0D\12\16\1B\1F$(", align 1
@dv_calc_mb_coordinates.serpent1 = internal unnamed_addr constant [27 x i8] c"\00\01\02\02\01\00\00\01\02\02\01\00\00\01\02\02\01\00\00\01\02\02\01\00\00\01\02", align 16
@dv_calc_mb_coordinates.serpent2 = internal unnamed_addr constant [30 x i8] c"\00\01\02\03\04\05\05\04\03\02\01\00\00\01\02\03\04\05\05\04\03\02\01\00\00\01\02\03\04\05", align 16
@dv_calc_mb_coordinates.remap = internal unnamed_addr constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\0A\00", [2 x i8] c"\0A\01", [2 x i8] c"\0A\02", [2 x i8] c"\0A\03", [2 x i8] c"\14\00", [2 x i8] c"\14\01", [2 x i8] c"\14\02", [2 x i8] c"\14\03", [2 x i8] c"\1E\00", [2 x i8] c"\1E\01", [2 x i8] c"\1E\02", [2 x i8] c"\1E\03", [2 x i8] c"(\00", [2 x i8] c"(\01", [2 x i8] c"(\02", [2 x i8] c"(\03", [2 x i8] c"2\00", [2 x i8] c"2\01", [2 x i8] c"2\02", [2 x i8] c"2\03", [2 x i8] c"<\00", [2 x i8] c"<\01", [2 x i8] c"<\02", [2 x i8] c"<\03", [2 x i8] c"F\00", [2 x i8] c"F\01", [2 x i8] c"F\02", [2 x i8] c"F\03", [2 x i8] c"\00@", [2 x i8] c"\00A", [2 x i8] c"\00B", [2 x i8] c"\0A@", [2 x i8] c"\0AA", [2 x i8] c"\0AB", [2 x i8] c"\14@", [2 x i8] c"\14A", [2 x i8] c"\14B", [2 x i8] c"\1E@", [2 x i8] c"\1EA", [2 x i8] c"\1EB", [2 x i8] c"(@", [2 x i8] c"(A", [2 x i8] c"(B", [2 x i8] c"2@", [2 x i8] c"2A", [2 x i8] c"2B", [2 x i8] c"<@", [2 x i8] c"<A", [2 x i8] c"<B", [2 x i8] c"F@", [2 x i8] c"FA", [2 x i8] c"FB", [2 x i8] c"\00C", [2 x i8] c"\14C", [2 x i8] c"(C", [2 x i8] c"<C"], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_dv_init_dynamic_tables(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge55.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 14 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  br i1 %i.f, label %.preheader.lr.ph.split, label %._crit_edge55.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %wide.trip.count62 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv60 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next61, %._crit_edge ] ; 8 uses
  %.054 = phi i16 [ 0, %.preheader.lr.ph.split ], [ %i.nx, %._crit_edge ]
  %.03452 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %.3, %._crit_edge ]
  %i.k = icmp ne i64 %indvars.iv60, 0
  %i.l = mul nuw nsw i64 %indvars.iv60, 10
  %i.m = trunc nuw nsw i64 %indvars.iv60 to i32   ; 7 uses
  %i.n = trunc i64 %indvars.iv60 to i1            ; 2 uses
  %i.o = select i1 %i.n, i32 9, i32 0             ; 2 uses
  %i.p = mul nuw nsw i64 %indvars.iv60, 11
  %i.q = shl i32 %i.m, 8
  %i.r = and i32 %i.q, 65024
  %i.s = add nuw nsw i32 %i.r, 512                ; 2 uses
  %i.t = lshr i32 %i.m, 1                         ; 3 uses
  %i.u = mul i32 %i.t, 45                         ; 2 uses
  %i.v = select i1 %i.n, i32 6, i32 0             ; 4 uses
  %i.w = or disjoint i32 %i.v, 24
  %i.x = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.y = or disjoint i32 %i.v, 48
  %i.z = shl i32 %i.t, 9
  %i.aa = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ab = shufflevector <4 x i32> %i.aa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ac = add <4 x i32> %i.ab, <i32 2120, i32 2084, i32 2156, i32 2048>
  %i.ad = icmp eq i64 %indvars.iv60, 0
  %indvars.iv60.tr = trunc i64 %indvars.iv60 to i32
  %2 = shl i32 %indvars.iv60.tr, 2                ; 2 uses
  %3 = zext i32 %2 to i64
  %i.ae = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %i.ah = shufflevector <4 x i32> %i.ag, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ai = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.aj = shufflevector <2 x i32> %i.x, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ak = add nuw nsw <4 x i32> %i.aj, <i32 12, i32 36, i32 poison, i32 poison>
  %i.al = shufflevector <4 x i32> %i.ai, <4 x i32> %i.ak, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.am = insertelement <4 x i32> %i.al, i32 %i.v, i64 3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.h
  %indvars.iv57 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next58, %bb.h ] ; 13 uses
  %.150 = phi i16 [ %.054, %.preheader ], [ %i.nx, %bb.h ]
  %.13548 = phi i32 [ %.03452, %.preheader ], [ %.3, %bb.h ]
  %i.an = add i16 %.150, 6
  %i.ao = icmp samesign ugt i64 %indvars.iv57, 9
  %i.ap = icmp eq i64 %indvars.iv57, 11           ; 2 uses
  %i.aq = add nuw nsw i64 %indvars.iv57, %i.l
  %i.ar = mul nuw nsw i64 %i.aq, 27
  %i.as = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.at = udiv i32 %i.as, 5
  %4 = add nuw nsw i32 %i.at, %2
  %i.au = add nuw nsw i64 %indvars.iv57, %i.p
  %i.av = mul nuw nsw i64 %i.au, 27
  %i.aw = add nuw nsw i64 %indvars.iv57, 2        ; 3 uses
  %i.ax = add nuw nsw i64 %indvars.iv57, 6        ; 3 uses
  %i.ay = add nuw nsw i64 %indvars.iv57, 8        ; 3 uses
  %i.az = add nuw nsw i64 %indvars.iv57, 4        ; 3 uses
  %or.cond.i = and i1 %i.ad, %i.ap
  %5 = zext i32 %4 to i64
  %i.ba = trunc nuw i64 %i.aw to i32
  %i.bb = trunc nuw i64 %i.ax to i32
  %i.bc = trunc nuw i64 %i.ay to i32
  %i.bd = trunc i64 %indvars.iv57 to i32
  %i.be = mul i32 %i.bd, 6
  %i.bf = trunc nuw i64 %i.az to i32
  %i.bg = trunc nuw i64 %i.aw to i32
  %i.bh = trunc nuw i64 %i.ax to i32
  %i.bi = trunc nuw i64 %i.ay to i32
  %i.bj = trunc i64 %indvars.iv57 to i32
  %i.bk = mul i32 %i.bj, 3
  %i.bl = trunc nuw i64 %i.az to i32
  %i.bm = trunc nuw i64 %i.aw to i32
  %i.bn = trunc nuw i64 %i.ax to i32
  %i.bo = trunc nuw i64 %i.ay to i32
  %indvars.iv57.tr = trunc i64 %indvars.iv57 to i32
  %i.bp = shl i32 %indvars.iv57.tr, 1
  %i.bq = add nsw i32 %i.bp, %i.m
  %i.br = mul nsw i32 %i.bq, 3
  %i.bs = trunc nuw i64 %i.az to i32
  %invariant.op = and i1 %i.k, %i.ap
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.g ] ; 12 uses
  %.247 = phi i16 [ %i.an, %bb.b ], [ %i.nx, %bb.g ]
  %.23646 = phi i32 [ %.13548, %bb.b ], [ %.3, %bb.g ] ; 4 uses
  %.03744 = phi i32 [ 0, %bb.b ], [ %i.ny, %bb.g ] ; 2 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i8       ; 3 uses
  %i.bt = urem i8 %.lhs.trunc, 3
  %i.bu = udiv i8 %.lhs.trunc, 3
  %.not = icmp eq i8 %i.bt, 0
  %i.bv = zext i1 %.not to i16
  %i.bw = add i16 %.247, %i.bv                    ; 2 uses
  switch i32 %i.j, label %.thread [
    i32 20, label %bb.d
    i32 24, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bx = load i32, ptr %1, align 8, !tbaa !16
  %i.by = icmp eq i32 %i.bx, 1
  %or.cond3.reass.reass.reass = and i1 %i.by, %invariant.op
  br i1 %or.cond3.reass.reass.reass, label %bb.g, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.bz = load i32, ptr %1, align 8, !tbaa !16
  %i.ca = icmp eq i32 %i.bz, 1
  %or.cond5 = select i1 %i.ca, i1 %i.ao, i1 false
  br i1 %or.cond5, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %i.cb = sext i32 %.23646 to i64
  %i.cc = getelementptr inbounds [12 x i8], ptr %0, i64 %i.cb ; 15 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2 ; 7 uses
  %i.ce = load i32, ptr %i.g, align 4, !tbaa !17
  %.zext39 = zext nneg i8 %i.bu to i32            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr @dv_calc_mb_coordinates.serpent1, i64 %indvars.iv ; 2 uses
  %i.cg = add nuw nsw i64 %indvars.iv, %i.ar      ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 1
  %i.ci = add nuw nsw i64 %i.ch, %5               ; 4 uses
  %i.cj = trunc nuw i64 %i.cg to i32
  %i.ck = udiv i32 %i.cj, 5
  %i.cl = urem i32 %i.ck, 27                      ; 3 uses
  %.lhs.trunc116.i = trunc nuw nsw i32 %i.cl to i8 ; 2 uses
  %i.cm = urem i8 %.lhs.trunc116.i, 9
  %i.cn = udiv i8 %.lhs.trunc116.i, 9
  %.sext117.i = zext nneg i8 %i.cm to i32
  %i.co = add nuw nsw i32 %i.o, %.sext117.i       ; 4 uses
  %i.cp = add nuw nsw i64 %indvars.iv, %i.av      ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, %3               ; 2 uses
  %i.cr = trunc nuw i64 %i.cp to i32
  %i.cs = udiv i32 %i.cr, 11
  %i.ct = urem i32 %i.cs, 27
  %.lhs.trunc.i = trunc nuw nsw i32 %i.ct to i8   ; 2 uses
  %i.cu = urem i8 %.lhs.trunc.i, 9
  %.sext.i = zext nneg i8 %i.cu to i32
  %i.cv = add nuw nsw i32 %i.o, %.sext.i
  %i.cw = udiv i8 %.lhs.trunc.i, 9
  %.sext115.i = zext nneg i8 %i.cw to i32         ; 2 uses
  switch i32 %i.ce, label %dv_calc_mb_coordinates.exit [
    i32 1440, label %.split.us.i
    i32 1280, label %.split.us127.4.i
    i32 960, label %.split.us129.preheader.i
    i32 720, label %.split.us131.i
  ]

.split.us129.preheader.i:                         ; preds = %.thread
  %i.cx = trunc i64 %i.ci to i32
  %i.cy = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.cz = shufflevector <4 x i32> %i.cy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.da = add <4 x i32> %i.cz, <i32 2, i32 6, i32 8, i32 0>
  %i.db = urem <4 x i32> %i.da, splat (i32 10)    ; 5 uses
  %i.dc = extractelement <4 x i32> %i.db, i64 0
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @dv_calc_mb_coordinates.l_start, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !18
  %i.dg = extractelement <4 x i32> %i.db, i64 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @dv_calc_mb_coordinates.l_start, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !18
  %i.dk = extractelement <4 x i32> %i.db, i64 2
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @dv_calc_mb_coordinates.l_start, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !18
  %i.do = trunc <4 x i32> %i.db to <4 x i1>
  %i.dp = select <4 x i1> %i.do, <4 x i32> splat (i32 3), <4 x i32> zeroinitializer
  %i.dq = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %i.dr = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ds = add nuw nsw <4 x i32> %i.dp, %i.dr
  %i.dt = trunc nuw nsw <4 x i32> %i.ds to <4 x i8>
  %.frozen = freeze <4 x i8> %i.dt                ; 2 uses
  %i.du = udiv <4 x i8> %.frozen, splat (i8 6)    ; 2 uses
  %i.dv = mul <4 x i8> %i.du, splat (i8 6)
  %.decomposed = sub <4 x i8> %.frozen, %i.dv
  %i.dw = zext nneg <4 x i8> %.decomposed to <4 x i32>
  %i.dx = add nuw nsw <4 x i32> %i.am, %i.dw
  %i.dy = extractelement <4 x i32> %i.db, i64 3
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @dv_calc_mb_coordinates.l_start, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18
  %i.ec = insertelement <4 x i8> poison, i8 %i.df, i64 0
  %i.ed = insertelement <4 x i8> %i.ec, i8 %i.dj, i64 1
  %i.ee = insertelement <4 x i8> %i.ed, i8 %i.dn, i64 2
  %i.ef = insertelement <4 x i8> %i.ee, i8 %i.eb, i64 3
  %i.eg = zext <4 x i8> %i.ef to <4 x i32>
  %i.eh = zext nneg <4 x i8> %i.du to <4 x i32>
  %i.ei = add <4 x i32> %i.ah, %i.eh
  %i.ej = add <4 x i32> %i.ei, %i.eg
  %i.ek = shl nuw nsw <4 x i32> %i.dx, splat (i32 1)
  %i.el = shl <4 x i32> %i.ej, splat (i32 9)
  %i.em = or disjoint <4 x i32> %i.el, %i.ek
  %i.en = trunc <4 x i32> %i.em to <4 x i16>
  store <4 x i16> %i.en, ptr %i.cd, align 2, !tbaa !19
  %i.eo = trunc i64 %i.ci to i32
  %i.ep = add i32 %i.eo, 4
  %i.eq = urem i32 %i.ep, 10                      ; 2 uses
  %i.er = trunc i32 %i.eq to i1
  %i.es = select i1 %i.er, i32 3, i32 0
  %i.et = add nuw nsw i32 %i.es, %i.cl
  %.lhs.trunc120.us.4.i = trunc nuw nsw i32 %i.et to i8 ; 2 uses
  %i.eu = urem i8 %.lhs.trunc120.us.4.i, 6
  %.sext121.us.4.i = zext nneg i8 %i.eu to i32
  %i.ev = add nuw nsw i32 %i.y, %.sext121.us.4.i
  %i.ew = zext nneg i32 %i.eq to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @dv_calc_mb_coordinates.l_start, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !18
  %i.ez = zext i8 %i.ey to i32
  %i.fa = udiv i8 %.lhs.trunc120.us.4.i, 6
  %.sext123.us.4.i = zext nneg i8 %i.fa to i32
  %i.fb = add i32 %i.u, %.sext123.us.4.i
  %i.fc = add i32 %i.fb, %i.ez
  %i.fd = shl nuw nsw i32 %i.ev, 1
  %i.fe = shl i32 %i.fc, 9
  %i.ff = or disjoint i32 %i.fe, %i.fd
  br label %.split126.us.sink.split.i

.split.us.i:                                      ; preds = %.thread
  br i1 %or.cond.i, label %.split.us.split.us.preheader.i, label %.split.us.split.preheader.i

.split.us.split.preheader.i:                      ; preds = %.split.us.i
  %i.fg = trunc i64 %i.cq to i32
  %i.fh = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %i.fi = shufflevector <4 x i32> %i.fh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fj = shl nuw nsw i32 %i.cv, 1                ; 4 uses
  %i.fk = add nuw nsw i32 %i.fj, 108
  %i.fl = insertelement <2 x i32> poison, i32 %i.fj, i64 0
  %i.fm = add <4 x i32> %i.fi, <i32 2, i32 6, i32 8, i32 0>
  %i.fn = urem <4 x i32> %i.fm, splat (i32 11)
  %i.fo = mul nuw nsw <4 x i32> %i.fn, splat (i32 3)
  %i.fp = insertelement <4 x i32> poison, i32 %.sext115.i, i64 0
  %i.fq = shufflevector <4 x i32> %i.fp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fr = add nuw nsw <4 x i32> %i.fo, %i.fq
  %i.fs = shl nuw nsw <4 x i32> %i.fr, splat (i32 10)
  %i.ft = add nuw nsw <4 x i32> %i.fs, %i.af
  %i.fu = insertelement <4 x i32> poison, i32 %i.fk, i64 2
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fj, i64 3
  %i.fw = shufflevector <2 x i32> %i.fl, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fx = add nuw nsw <4 x i32> %i.fw, <i32 72, i32 36, i32 poison, i32 poison>
  %i.fy = shufflevector <4 x i32> %i.fx, <4 x i32> %i.fv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fz = or disjoint <4 x i32> %i.ft, %i.fy
  %i.ga = trunc <4 x i32> %i.fz to <4 x i16>
  store <4 x i16> %i.ga, ptr %i.cd, align 2, !tbaa !19
  %i.gb = trunc i64 %i.cq to i32
  %i.gc = add i32 %i.gb, 4
  %i.gd = urem i32 %i.gc, 11
  %i.ge = mul nuw nsw i32 %i.gd, 3
  %i.gf = add nuw nsw i32 %i.ge, %.sext115.i
  %i.gg = shl nuw nsw i32 %i.gf, 10
  %i.gh = add nuw nsw i32 %i.gg, %i.s
  %i.gi = add nuw nsw i32 %i.fj, 144
  %i.gj = or disjoint i32 %i.gi, %i.gh
  br label %.split126.us.sink.split.i

.split.us.split.us.preheader.i:                   ; preds = %.split.us.i
  %.tr.i = trunc i64 %indvars.iv to i16
  %i.gk = shl nuw nsw i16 %.tr.i, 1               ; 3 uses
  store i16 %i.gk, ptr %i.cd, align 2, !tbaa !19
  %i.gl = add nuw nsw i16 %i.gk, 54
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !19
  %i.gn = add nuw nsw i16 %i.gk, 108
  %i.go = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i16 %i.gn, ptr %i.go, align 2, !tbaa !19
  %i.gp = icmp samesign ult i64 %indvars.iv, 9    ; 2 uses
  %i.gq = shl nuw i32 %.03744, 1
  %i.gr = add i32 %i.gq, 32750
  %i.gs = trunc i64 %indvars.iv to i32
  %i.gt = add i32 %i.gs, 81
  %.0107.us.us.3.i = select i1 %i.gp, i32 %i.gt, i32 %i.gr
  %.0.us.us.3.i = select i1 %i.gp, i32 0, i32 34304
  %i.gu = shl nuw nsw i32 %.0107.us.us.3.i, 1
  %i.gv = or i32 %i.gu, %.0.us.us.3.i
  %i.gw = trunc i32 %i.gv to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.gy = shl i32 %indvars.iv.tr, 2
  %i.gz = add i32 %i.gy, 99912
  br label %.split126.us.sink.split.i

.split.us127.4.i:                                 ; preds = %.thread
  %.sext119.i = zext nneg i8 %i.cn to i32         ; 2 uses
  %i.ha = trunc i64 %i.ci to i32
  %i.hb = insertelement <4 x i32> poison, i32 %i.ha, i64 0
  %i.hc = shufflevector <4 x i32> %i.hb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hd = shl nuw nsw i32 %i.co, 1
  %i.he = add <4 x i32> %i.hc, <i32 2, i32 6, i32 8, i32 0>
  %i.hf = urem <4 x i32> %i.he, splat (i32 10)
  %i.hg = mul nuw nsw <4 x i32> %i.hf, splat (i32 3)
  %i.hh = insertelement <4 x i32> poison, i32 %.sext119.i, i64 0
  %i.hi = shufflevector <4 x i32> %i.hh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hj = add nuw nsw <4 x i32> %i.hg, %i.hi
  %i.hk = shl nuw nsw <4 x i32> %i.hj, splat (i32 10)
  %i.hl = add <4 x i32> %i.ac, %i.hk              ; 2 uses
  %i.hm = insertelement <4 x i32> poison, i32 %i.hd, i64 0
  %i.hn = shufflevector <4 x i32> %i.hm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ho = add nuw nsw <4 x i32> %i.hl, %i.hn
  %i.hp = or disjoint <4 x i32> %i.hl, %i.hn
  %i.hq = shufflevector <4 x i32> %i.ho, <4 x i32> %i.hp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hr = trunc <4 x i32> %i.hq to <4 x i16>
  store <4 x i16> %i.hr, ptr %i.cd, align 2, !tbaa !19
  %i.hs = trunc i64 %i.ci to i32
  %i.ht = add i32 %i.hs, 4
  %i.hu = urem i32 %i.ht, 10
  %i.hv = add nuw nsw i32 %i.co, 72
  %i.hw = mul nuw nsw i32 %i.hu, 3
  %i.hx = add nuw nsw i32 %i.hw, %.sext119.i
  %i.hy = shl nuw nsw i32 %i.hx, 1
  %i.hz = add nuw nsw i32 %i.hy, %i.t             ; 2 uses
  %i.ia = add nuw nsw i32 %i.hz, 4                ; 2 uses
  %i.ib = icmp samesign ugt i32 %i.co, 7
  br i1 %i.ib, label %bb.f, label %.split126.us.loopexit139.i

bb.f:                                             ; preds = %.split.us127.4.i
  %i.ic = zext nneg i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw [2 x i8], ptr @dv_calc_mb_coordinates.remap, i64 %i.ic ; 2 uses
  %i.ie = load i8, ptr %i.id, align 2, !tbaa !18
  %i.if = zext i8 %i.ie to i32
  %i.ig = add nsw i32 %i.co, -8
  %i.ih = icmp samesign ugt i32 %i.hz, 55
  %i.ii = zext i1 %i.ih to i32
  %i.ij = shl nuw nsw i32 %i.ig, %i.ii
  %i.ik = add nuw nsw i32 %i.ij, %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !18
  %i.in = zext i8 %i.im to i32
  br label %.split126.us.loopexit139.i

.split126.us.loopexit139.i:                       ; preds = %bb.f, %.split.us127.4.i
  %.1108.us.4.i = phi i32 [ %i.ik, %bb.f ], [ %i.hv, %.split.us127.4.i ]
end_hunk_0
