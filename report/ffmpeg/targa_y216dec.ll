begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"targa_y216\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Pinnacle TARGA CineWave YUV16\00", align 1
@ff_targa_y216_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 200, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr @y216_decode_init, %union.anon { ptr @y216_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Insufficient input data.\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @y216_decode_init(ptr nofree noundef writeonly captures(none) initializes((136, 140), (652, 656)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 47, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 14, ptr %i.b, align 4, !tbaa !29
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @y216_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = add nsw i32 %i.d, 3
  %i.f = and i32 %i.e, -4                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  %i.k = shl nsw i32 %i.j, 2
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = icmp slt i32 %i.h, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #4 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.i, align 4, !tbaa !34   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge65.split

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.r = load i32, ptr %i.c, align 8, !tbaa !32
  %i.s = ashr i32 %i.r, 1                         ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %5 = load i32, ptr %4, align 8, !tbaa !35
  %6 = load <2 x i32>, ptr %i.u, align 8, !tbaa !35
  %7 = insertelement <4 x i32> poison, i32 %i.f, i64 2
  %8 = insertelement <4 x i32> %7, i32 %5, i64 3
  %9 = shufflevector <2 x i32> %6, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x i32> %9, <4 x i32> %8, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.v = ashr <4 x i32> %10, splat (i32 1)        ; 6 uses
  %11 = shl <4 x i32> %10, splat (i32 1)          ; 3 uses
  %12 = shufflevector <4 x i32> %i.v, <4 x i32> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.w = extractelement <4 x i32> %i.v, i64 0
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = extractelement <4 x i32> %i.v, i64 1
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = extractelement <4 x i32> %i.v, i64 3
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %13 = extractelement <4 x i32> %11, i64 2
  %i.ac = sext i32 %13 to i64                     ; 2 uses
  br i1 %i.t, label %.preheader.preheader, label %._crit_edge65.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ad = load ptr, ptr %1, align 8, !tbaa !36    ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 7 uses
  %i.ai = add nsw i32 %i.p, -1
  %i.aj = zext i32 %i.ai to i64                   ; 4 uses
  %i.ak = mul nsw i64 %i.z, %i.aj
  %i.al = add i64 %i.ak, %wide.trip.count
  %i.am = shl i64 %i.al, 1
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.am ; 3 uses
  %i.an = mul nsw i64 %i.x, %i.aj
  %i.ao = shl i64 %i.an, 1
  %i.ap = shl nuw nsw i64 %wide.trip.count, 2
  %i.aq = getelementptr i8, ptr %i.ad, i64 %i.ao
  %scevgep73 = getelementptr i8, ptr %i.aq, i64 %i.ap ; 3 uses
  %i.ar = mul nsw i64 %i.ab, %i.aj
  %i.as = add i64 %i.ar, %wide.trip.count
  %i.at = shl i64 %i.as, 1
  %scevgep74 = getelementptr i8, ptr %i.ah, i64 %i.at ; 3 uses
  %i.au = mul nsw i64 %i.ac, %i.aj
  %i.av = shl i64 %i.au, 1
  %i.aw = shl nuw nsw i64 %wide.trip.count, 3
  %i.ax = getelementptr i8, ptr %i.b, i64 %i.av
  %scevgep75 = getelementptr i8, ptr %i.ax, i64 %i.aw ; 3 uses
  %14 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 0>
  %15 = shufflevector <4 x i32> %11, <4 x i32> poison, <2 x i32> <i32 2, i32 2>
  %16 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  %min.iters.check = icmp ult i32 %i.s, 16
  %bound0 = icmp ult ptr %i.af, %scevgep73
  %bound1 = icmp ult ptr %i.ad, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %17 = or <4 x i32> %12, %14
  %bound178.a = icmp ult ptr %i.af, %scevgep74
  %bound178 = icmp ult ptr %i.ah, %scevgep
  %found.conflict79 = and i1 %bound178.a, %bound178
  %bound082 = icmp ult ptr %i.af, %scevgep75
  %bound183 = icmp ult ptr %i.b, %scevgep
  %found.conflict84 = and i1 %bound082, %bound183
  %bound088 = icmp ult ptr %i.ad, %scevgep74
  %bound189 = icmp ult ptr %i.ah, %scevgep73
  %found.conflict90 = and i1 %bound088, %bound189
  %18 = icmp slt <4 x i32> %17, zeroinitializer
  %bound195.a = icmp ult ptr %i.ad, %scevgep75
  %bound195 = icmp ult ptr %i.b, %scevgep73
  %found.conflict96 = and i1 %bound195.a, %bound195
  %bound0100 = icmp ult ptr %i.ah, %scevgep75
  %bound1101 = icmp ult ptr %i.b, %scevgep74
  %found.conflict102 = and i1 %bound0100, %bound1101
  %19 = bitcast <4 x i1> %18 to i4
  %20 = icmp ne i4 %19, 0
  %21 = or <2 x i32> %15, %16
  %22 = icmp slt <2 x i32> %21, zeroinitializer
  %23 = insertelement <2 x i1> poison, i1 %20, i64 0
  %24 = insertelement <2 x i1> %23, i1 %found.conflict, i64 1
  %25 = or <2 x i1> %24, %22
  %op.rdx106 = or i1 %found.conflict79, %found.conflict84
  %op.rdx107 = or i1 %found.conflict90, %found.conflict96
  %26 = bitcast <2 x i1> %25 to i2
  %op.rdx109 = icmp ne i2 %26, 0
  %op.rdx110 = or i1 %op.rdx106, %op.rdx107
  %op.rdx111 = or i1 %op.rdx109, %op.rdx110
  %op.rdx112 = or i1 %op.rdx111, %found.conflict102
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05364 = phi i32 [ %i.ee, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.05463 = phi ptr [ %i.ed, %._crit_edge ], [ %i.b, %.preheader.preheader ] ; 6 uses
  %.05562 = phi ptr [ %i.ec, %._crit_edge ], [ %i.ah, %.preheader.preheader ] ; 3 uses
  %.05661 = phi ptr [ %i.eb, %._crit_edge ], [ %i.af, %.preheader.preheader ] ; 3 uses
  %.05760 = phi ptr [ %i.ea, %._crit_edge ], [ %i.ad, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx112
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 8 uses
  %i.ay = shl nuw nsw i64 %index, 3
  %i.az = shl i64 %index, 3
  %i.ba = shl i64 %index, 3
  %i.bb = shl i64 %index, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.05463, i64 %i.ay ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05463, i64 %i.az ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.05463, i64 %i.ba ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.05463, i64 %i.bb ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i16, ptr %i.bc, align 2, !tbaa !37, !alias.scope !39
  %i.bk = load i16, ptr %i.be, align 2, !tbaa !37, !alias.scope !39
  %i.bl = load i16, ptr %i.bg, align 2, !tbaa !37, !alias.scope !39
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !37, !alias.scope !39
  %i.bn = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bk, i64 1
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 2
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bm, i64 3 ; 2 uses
  %i.br = tail call <4 x i16> @llvm.fshl.v4i16(<4 x i16> %i.bq, <4 x i16> %i.bq, <4 x i16> splat (i16 2))
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.05661, i64 %index
  store <4 x i16> %i.br, ptr %i.bs, align 2, !tbaa !37, !alias.scope !42, !noalias !44
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 26
  %i.bx = load i16, ptr %i.bt, align 2, !tbaa !37, !alias.scope !39
  %i.by = load i16, ptr %i.bu, align 2, !tbaa !37, !alias.scope !39
  %i.bz = load i16, ptr %i.bv, align 2, !tbaa !37, !alias.scope !39
  %i.ca = load i16, ptr %i.bw, align 2, !tbaa !37, !alias.scope !39
  %i.cb = insertelement <4 x i16> poison, i16 %i.bx, i64 0
  %i.cc = insertelement <4 x i16> %i.cb, i16 %i.by, i64 1
  %i.cd = insertelement <4 x i16> %i.cc, i16 %i.bz, i64 2
  %i.ce = insertelement <4 x i16> %i.cd, i16 %i.ca, i64 3 ; 2 uses
  %i.cf = tail call <4 x i16> @llvm.fshl.v4i16(<4 x i16> %i.ce, <4 x i16> %i.ce, <4 x i16> splat (i16 2))
  %i.cg = shl nuw nsw i64 %index, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.05760, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  %i.cm = load i16, ptr %i.ci, align 2, !tbaa !37, !alias.scope !39
  %i.cn = load i16, ptr %i.cj, align 2, !tbaa !37, !alias.scope !39
  %i.co = load i16, ptr %i.ck, align 2, !tbaa !37, !alias.scope !39
  %i.cp = load i16, ptr %i.cl, align 2, !tbaa !37, !alias.scope !39
  %i.cq = insertelement <4 x i16> poison, i16 %i.cm, i64 0
  %i.cr = insertelement <4 x i16> %i.cq, i16 %i.cn, i64 1
  %i.cs = insertelement <4 x i16> %i.cr, i16 %i.co, i64 2
  %i.ct = insertelement <4 x i16> %i.cs, i16 %i.cp, i64 3 ; 2 uses
  %i.cu = tail call <4 x i16> @llvm.fshl.v4i16(<4 x i16> %i.ct, <4 x i16> %i.ct, <4 x i16> splat (i16 2))
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.05562, i64 %index
  store <4 x i16> %i.cu, ptr %i.cv, align 2, !tbaa !37, !alias.scope !47, !noalias !39
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bf, i64 22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 30
  %i.da = load i16, ptr %i.cw, align 2, !tbaa !37, !alias.scope !39
  %i.db = load i16, ptr %i.cx, align 2, !tbaa !37, !alias.scope !39
  %i.dc = load i16, ptr %i.cy, align 2, !tbaa !37, !alias.scope !39
  %i.dd = load i16, ptr %i.cz, align 2, !tbaa !37, !alias.scope !39
  %i.de = insertelement <4 x i16> poison, i16 %i.da, i64 0
  %i.df = insertelement <4 x i16> %i.de, i16 %i.db, i64 1
  %i.dg = insertelement <4 x i16> %i.df, i16 %i.dc, i64 2
  %i.dh = insertelement <4 x i16> %i.dg, i16 %i.dd, i64 3 ; 2 uses
  %i.di = tail call <4 x i16> @llvm.fshl.v4i16(<4 x i16> %i.dh, <4 x i16> %i.dh, <4 x i16> splat (i16 2))
  %interleaved.vec = shufflevector <4 x i16> %i.cf, <4 x i16> %i.di, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.ch, align 2, !tbaa !37, !alias.scope !48, !noalias !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %.05463, i64 %.idx ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !37 ; 2 uses
  %i.dm = tail call i16 @llvm.fshl.i16(i16 %i.dl, i16 %i.dl, i16 2)
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.05661, i64 %indvars.iv
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !37
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !37 ; 2 uses
  %i.dq = tail call i16 @llvm.fshl.i16(i16 %i.dp, i16 %i.dp, i16 2)
  %.idx72 = shl nuw nsw i64 %indvars.iv, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %.05760, i64 %.idx72 ; 2 uses
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !37
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !37 ; 2 uses
  %i.du = tail call i16 @llvm.fshl.i16(i16 %i.dt, i16 %i.dt, i16 2)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.05562, i64 %indvars.iv
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 6
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !37 ; 2 uses
  %i.dy = tail call i16 @llvm.fshl.i16(i16 %i.dx, i16 %i.dx, i16 2)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ea = getelementptr inbounds [2 x i8], ptr %.05760, i64 %i.x
  %i.eb = getelementptr inbounds [2 x i8], ptr %.05661, i64 %i.z
  %i.ec = getelementptr inbounds [2 x i8], ptr %.05562, i64 %i.ab
  %i.ed = getelementptr inbounds [2 x i8], ptr %.05463, i64 %i.ac
  %i.ee = add nuw nsw i32 %.05364, 1              ; 2 uses
  %exitcond67.not = icmp eq i32 %i.ee, %i.p
  br i1 %exitcond67.not, label %._crit_edge65.split, label %.preheader, !llvm.loop !55

._crit_edge65.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.d
  store i32 1, ptr %2, align 4, !tbaa !35
  %i.ef = load i32, ptr %i.g, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge65.split, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ %i.ef, %._crit_edge65.split ], [ %i.n, %bb.c ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.fshl.v4i16(<4 x i16>, <4 x i16>, <4 x i16>) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = !{!10, !6, i64 136}
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
!29 = !{!10, !6, i64 652}
!30 = !{!31, !16, i64 24}
!31 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!32 = !{!10, !6, i64 112}
!33 = !{!31, !6, i64 32}
!34 = !{!10, !6, i64 116}
!35 = !{!6, !6, i64 0}
!36 = !{!16, !16, i64 0}
!37 = !{!38, !38, i64 0}
end_hunk_0
