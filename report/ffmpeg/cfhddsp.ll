Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cfhddsp?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_cfhddsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  store ptr @horiz_filter, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @vert_filter, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq i32 %2, 0
  %spec.select = select i1 %.not, ptr @horiz_filter_clip, ptr @horiz_filter_clip_bayer
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %spec.select, ptr %i.b, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @horiz_filter(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph24, label %._crit_edge

.lr.ph24:                                         ; preds = %bb.a
  %i.b = add i32 %6, -1                           ; 3 uses
  %i.c = icmp sgt i32 %6, 2
  %.idx = shl i64 %1, 2                           ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 5 uses
  %scevgep = getelementptr i8, ptr %0, i64 4      ; 2 uses
  %i.d = add nsw i32 %7, -1
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = mul i64 %1, %i.e
  %i.g = add i64 %i.f, %wide.trip.count
  %i.h = shl i64 %i.g, 2
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = mul i64 %3, %i.e
  %i.j = add i64 %i.i, %wide.trip.count
  %i.k = shl i64 %i.j, 1
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %scevgep31 = getelementptr i8, ptr %i.l, i64 2
  %scevgep32 = getelementptr i8, ptr %4, i64 2
  %i.m = mul i64 %5, %i.e
  %i.n = add i64 %i.m, %wide.trip.count
  %i.o = shl i64 %i.n, 1
  %scevgep33 = getelementptr i8, ptr %4, i64 %i.o
  %i.p = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep31
  %bound1 = icmp ult ptr %2, %scevgep30
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %.idx, 0
  %i.q = or i1 %found.conflict, %stride.check
  %.mask = and i64 %3, 4611686018427387904
  %stride.check34 = icmp ne i64 %.mask, 0
  %i.r = or i1 %i.q, %stride.check34
  %bound035 = icmp ult ptr %scevgep, %scevgep33
  %bound136 = icmp ult ptr %scevgep32, %scevgep30
  %found.conflict37 = and i1 %bound035, %bound136
  %stride.check38 = icmp slt i64 %.idx, 0
  %i.s = or i1 %found.conflict37, %stride.check38
  %.mask43 = and i64 %5, 4611686018427387904
  %stride.check39 = icmp ne i64 %.mask43, 0
  %i.t = or i1 %i.s, %stride.check39
  %conflict.rdx = or i1 %i.r, %i.t
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.u = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %filter.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph24, %filter.exit
  %.023 = phi i32 [ 0, %.lr.ph24 ], [ %i.em, %filter.exit ]
  %.01222 = phi ptr [ %0, %.lr.ph24 ], [ %i.el, %filter.exit ] ; 6 uses
  %.01321 = phi ptr [ %2, %.lr.ph24 ], [ %i.ej, %filter.exit ] ; 10 uses
  %.01420 = phi ptr [ %4, %.lr.ph24 ], [ %i.ek, %filter.exit ] ; 6 uses
  %i.v = load i16, ptr %.01321, align 2, !tbaa !10
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, 11
  %i.y = getelementptr inbounds nuw i8, ptr %.01321, i64 2 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !10
  %i.aa = sext i16 %i.z to i32
  %i.ab = shl nsw i32 %i.aa, 2
  %i.ac = sub nsw i32 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.01321, i64 4 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !10
  %i.af = sext i16 %i.ae to i32
  %i.ag = add nsw i32 %i.ac, %i.af
  %i.ah = shl i32 %i.ag, 13
  %i.ai = add i32 %i.ah, 32768
  %i.aj = ashr i32 %i.ai, 16
  %i.ak = load i16, ptr %.01420, align 2, !tbaa !10
  %i.al = sext i16 %i.ak to i32
  %i.am = add nsw i32 %i.aj, %i.al
  %i.an = lshr i32 %i.am, 1
  %storemerge.i = trunc i32 %i.an to i16
  store i16 %storemerge.i, ptr %.01222, align 2, !tbaa !10
  %i.ao = load i16, ptr %.01321, align 2, !tbaa !10
  %i.ap = sext i16 %i.ao to i32
  %i.aq = mul nsw i32 %i.ap, 5
  %i.ar = load i16, ptr %i.y, align 2, !tbaa !10
  %i.as = sext i16 %i.ar to i32
  %i.at = shl nsw i32 %i.as, 2
  %i.au = add nsw i32 %i.at, %i.aq
  %i.av = load i16, ptr %i.ad, align 2, !tbaa !10
  %i.aw = sext i16 %i.av to i32
  %i.ax = sub nsw i32 %i.au, %i.aw
  %i.ay = shl i32 %i.ax, 13
  %i.az = add i32 %i.ay, 32768
  %i.ba = ashr i32 %i.az, 16
  %i.bb = load i16, ptr %.01420, align 2, !tbaa !10
  %i.bc = sext i16 %i.bb to i32
  %i.bd = sub nsw i32 %i.ba, %i.bc
  %i.be = lshr i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01222, i64 2
  %storemerge135.i = trunc i32 %i.be to i16
  store i16 %storemerge135.i, ptr %i.bf, align 2, !tbaa !10
  br i1 %i.c, label %.lr.ph.preheader, label %filter.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.preheader44, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bg = or disjoint i64 %index, 1               ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %.01321, i64 %i.bg ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  %wide.load = load <4 x i16>, ptr %i.bi, align 2, !tbaa !10, !alias.scope !26
  %i.bj = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.01321, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %wide.load40 = load <4 x i16>, ptr %i.bl, align 2, !tbaa !10, !alias.scope !26
  %i.bm = sext <4 x i16> %wide.load40 to <4 x i32> ; 2 uses
  %8 = sub nsw <4 x i32> %i.bj, %i.bm
  %9 = shl nsw <4 x i32> %8, splat (i32 13)
  %10 = add nsw <4 x i32> %9, splat (i32 32768)
  %11 = ashr <4 x i32> %10, splat (i32 16)
  %wide.load41 = load <4 x i16>, ptr %i.bh, align 2, !tbaa !10, !alias.scope !26
  %12 = sext <4 x i16> %wide.load41 to <4 x i32>  ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.01420, i64 %i.bg
  %wide.load42 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !10, !alias.scope !27
  %i.bo = sext <4 x i16> %wide.load42 to <4 x i32> ; 2 uses
  %13 = add nsw <4 x i32> %i.bo, %12
  %i.bp = add nsw <4 x i32> %13, %11
  %i.bq = shl nuw nsw i64 %i.bg, 2
  %i.br = getelementptr inbounds nuw i8, ptr %.01222, i64 %i.bq
  %14 = sub nsw <4 x i32> %i.bm, %i.bj
  %15 = shl nsw <4 x i32> %14, splat (i32 13)
  %16 = add nsw <4 x i32> %15, splat (i32 32768)
  %17 = ashr <4 x i32> %16, splat (i32 16)
  %i.bs = sub nsw <4 x i32> %12, %i.bo
  %18 = add nsw <4 x i32> %i.bs, %17
  %i.bt = shufflevector <4 x i32> %i.bp, <4 x i32> %18, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bu = lshr <8 x i32> %i.bt, splat (i32 1)
  %interleaved.vec = trunc <8 x i32> %i.bu to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.br, align 2, !tbaa !10, !alias.scope !28, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %filter.exit, label %.lr.ph.preheader44

.lr.ph.preheader44:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.u, %middle.block ], [ 1, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader44, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader44 ] ; 4 uses
  %i.bw = getelementptr [2 x i8], ptr %.01321, i64 %indvars.iv ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -2     ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !10
  %i.bz = sext i16 %i.by to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.01321, i64 %indvars.iv.next ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !10
  %i.cc = sext i16 %i.cb to i32
  %19 = sub nsw i32 %i.bz, %i.cc
  %20 = shl nsw i32 %19, 13
  %21 = add nsw i32 %20, 32768
  %22 = ashr i32 %21, 16
  %23 = load i16, ptr %i.bw, align 2, !tbaa !10
  %24 = sext i16 %23 to i32
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.01420, i64 %indvars.iv ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !10
  %i.cf = sext i16 %i.ce to i32
  %25 = add nsw i32 %i.cf, %24
  %i.cg = add nsw i32 %25, %22
  %i.ch = lshr i32 %i.cg, 1
  %.idx29 = shl nuw nsw i64 %indvars.iv, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %.01222, i64 %.idx29 ; 2 uses
  %storemerge144.i = trunc i32 %i.ch to i16
  store i16 %storemerge144.i, ptr %i.ci, align 2, !tbaa !10
  %i.cj = load i16, ptr %i.ca, align 2, !tbaa !10
  %i.ck = sext i16 %i.cj to i32
  %i.cl = load i16, ptr %i.bx, align 2, !tbaa !10
  %i.cm = sext i16 %i.cl to i32
  %26 = sub nsw i32 %i.ck, %i.cm
  %27 = shl nsw i32 %26, 13
  %28 = add nsw i32 %27, 32768
  %29 = ashr i32 %28, 16
  %30 = load i16, ptr %i.bw, align 2, !tbaa !10
  %31 = sext i16 %30 to i32
  %i.cn = load i16, ptr %i.cd, align 2, !tbaa !10
  %i.co = sext i16 %i.cn to i32
  %i.cp = sub nsw i32 %31, %i.co
  %32 = add nsw i32 %i.cp, %29
  %i.cq = lshr i32 %32, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %storemerge147.i = trunc i32 %i.cq to i16
  store i16 %storemerge147.i, ptr %i.cr, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %filter.exit, label %.lr.ph, !llvm.loop !24

filter.exit:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0.i.lcssa = phi i32 [ 1, %bb.b ], [ %i.b, %middle.block ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.cs = zext nneg i32 %.0.i.lcssa to i64        ; 2 uses
  %i.ct = getelementptr [2 x i8], ptr %.01321, i64 %i.cs ; 4 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !10
  %i.cv = sext i16 %i.cu to i32
  %i.cw = mul nsw i32 %i.cv, 5
  %i.cx = getelementptr i8, ptr %i.ct, i64 -2     ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !10
  %i.cz = sext i16 %i.cy to i32
  %i.da = shl nsw i32 %i.cz, 2
  %i.db = add nsw i32 %i.da, %i.cw
  %i.dc = getelementptr i8, ptr %i.ct, i64 -4     ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !10
  %i.de = sext i16 %i.dd to i32
  %i.df = sub nsw i32 %i.db, %i.de
  %i.dg = shl i32 %i.df, 13
  %i.dh = add i32 %i.dg, 32768
  %i.di = ashr i32 %i.dh, 16
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.01420, i64 %i.cs ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !10
  %i.dl = sext i16 %i.dk to i32
  %i.dm = add nsw i32 %i.di, %i.dl
  %i.dn = lshr i32 %i.dm, 1
  %i.do = shl nuw nsw i32 %.0.i.lcssa, 1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.01222, i64 %i.dp ; 2 uses
  %storemerge138.i.a = trunc i32 %i.dn to i16
  store i16 %storemerge138.i.a, ptr %i.dq, align 2, !tbaa !10
  %i.dr = load i16, ptr %i.ct, align 2, !tbaa !10
  %i.ds = sext i16 %i.dr to i32
  %i.dt = mul nsw i32 %i.ds, 11
  %i.du = load i16, ptr %i.cx, align 2, !tbaa !10
  %i.dv = sext i16 %i.du to i32
  %i.dw = shl nsw i32 %i.dv, 2
  %i.dx = sub nsw i32 %i.dt, %i.dw
  %i.dy = load i16, ptr %i.dc, align 2, !tbaa !10
  %i.dz = sext i16 %i.dy to i32
  %i.ea = add nsw i32 %i.dx, %i.dz
  %i.eb = shl i32 %i.ea, 13
  %i.ec = add i32 %i.eb, 32768
  %i.ed = ashr i32 %i.ec, 16
  %i.ee = load i16, ptr %i.dj, align 2, !tbaa !10
  %i.ef = sext i16 %i.ee to i32
  %i.eg = sub nsw i32 %i.ed, %i.ef
  %i.eh = lshr i32 %i.eg, 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %storemerge141.i = trunc i32 %i.eh to i16
  store i16 %storemerge141.i, ptr %i.ei, align 2, !tbaa !10
  %i.ej = getelementptr inbounds [2 x i8], ptr %.01321, i64 %3
  %i.ek = getelementptr inbounds [2 x i8], ptr %.01420, i64 %5
  %i.el = getelementptr inbounds i8, ptr %.01222, i64 %.idx
  %i.em = add nuw nsw i32 %.023, 1                ; 2 uses
  %exitcond27.not = icmp eq i32 %i.em, %7
  br i1 %exitcond27.not, label %._crit_edge, label %bb.b, !llvm.loop !25
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vert_filter(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph24, label %._crit_edge

.lr.ph24:                                         ; preds = %bb.a
  %.idx.i = shl nsw i64 %3, 2
  %i.b = add i32 %7, -1                           ; 2 uses
  %i.c = icmp sgt i32 %7, 2
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %filter.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph24, %filter.exit
  %.023 = phi i32 [ 0, %.lr.ph24 ], [ %i.eb, %filter.exit ]
  %.01222 = phi ptr [ %0, %.lr.ph24 ], [ %i.ea, %filter.exit ] ; 7 uses
  %.01321 = phi ptr [ %2, %.lr.ph24 ], [ %i.dy, %filter.exit ] ; 11 uses
  %.01420 = phi ptr [ %4, %.lr.ph24 ], [ %i.dz, %filter.exit ] ; 5 uses
  %i.d = load i16, ptr %.01321, align 2, !tbaa !10
  %i.e = sext i16 %i.d to i32
  %i.f = mul nsw i32 %i.e, 11
  %i.g = getelementptr inbounds [2 x i8], ptr %.01321, i64 %3 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = sext i16 %i.h to i32
  %i.j = shl nsw i32 %i.i, 2
  %i.k = sub nsw i32 %i.f, %i.j
  %i.l = getelementptr inbounds i8, ptr %.01321, i64 %.idx.i ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !10
  %i.n = sext i16 %i.m to i32
  %i.o = add nsw i32 %i.k, %i.n
  %i.p = shl i32 %i.o, 13
  %i.q = add i32 %i.p, 32768
  %i.r = ashr i32 %i.q, 16
  %i.s = load i16, ptr %.01420, align 2, !tbaa !10
  %i.t = sext i16 %i.s to i32
  %i.u = add nsw i32 %i.r, %i.t
  %i.v = lshr i32 %i.u, 1
  %storemerge.i = trunc i32 %i.v to i16
  store i16 %storemerge.i, ptr %.01222, align 2, !tbaa !10
  %i.w = load i16, ptr %.01321, align 2, !tbaa !10
  %i.x = sext i16 %i.w to i32
  %i.y = mul nsw i32 %i.x, 5
  %i.z = load i16, ptr %i.g, align 2, !tbaa !10
  %i.aa = sext i16 %i.z to i32
  %i.ab = shl nsw i32 %i.aa, 2
  %i.ac = add nsw i32 %i.ab, %i.y
  %i.ad = load i16, ptr %i.l, align 2, !tbaa !10
  %i.ae = sext i16 %i.ad to i32
  %i.af = sub nsw i32 %i.ac, %i.ae
  %i.ag = shl i32 %i.af, 13
  %i.ah = add i32 %i.ag, 32768
  %i.ai = ashr i32 %i.ah, 16
  %i.aj = load i16, ptr %.01420, align 2, !tbaa !10
  %i.ak = sext i16 %i.aj to i32
  %i.al = sub nsw i32 %i.ai, %i.ak
  %i.am = lshr i32 %i.al, 1
  %i.an = getelementptr inbounds [2 x i8], ptr %.01222, i64 %1
  %storemerge135.i = trunc i32 %i.am to i16
  store i16 %storemerge135.i, ptr %i.an, align 2, !tbaa !10
  br i1 %i.c, label %.lr.ph, label %filter.exit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.b ] ; 5 uses
  %i.ao = add nsw i64 %indvars.iv, -1
  %i.ap = mul nsw i64 %3, %i.ao
  %i.aq = getelementptr inbounds [2 x i8], ptr %.01321, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !10
  %i.as = sext i16 %i.ar to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.at = mul nsw i64 %3, %indvars.iv.next
  %i.au = getelementptr inbounds [2 x i8], ptr %.01321, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !10
  %i.aw = sext i16 %i.av to i32
  %8 = sub nsw i32 %i.as, %i.aw
  %9 = shl nsw i32 %8, 13
  %10 = add nsw i32 %9, 32768
  %11 = ashr i32 %10, 16
  %i.ax = mul nsw i64 %3, %indvars.iv
  %i.ay = getelementptr inbounds [2 x i8], ptr %.01321, i64 %i.ax ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !10
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i64 %5, %indvars.iv
  %i.bc = getelementptr inbounds [2 x i8], ptr %.01420, i64 %i.bb ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !10
  %i.be = sext i16 %i.bd to i32
  %12 = add nsw i32 %i.be, %i.ba
  %i.bf = add nsw i32 %12, %11
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bi = mul nsw i64 %1, %i.bh
  %i.bj = getelementptr inbounds [2 x i8], ptr %.01222, i64 %i.bi
  %storemerge144.i = trunc i32 %i.bg to i16
  store i16 %storemerge144.i, ptr %i.bj, align 2, !tbaa !10
  %i.bk = load i16, ptr %i.au, align 2, !tbaa !10
  %i.bl = sext i16 %i.bk to i32
  %i.bm = load i16, ptr %i.aq, align 2, !tbaa !10
  %i.bn = sext i16 %i.bm to i32
  %13 = sub nsw i32 %i.bl, %i.bn
  %14 = shl nsw i32 %13, 13
  %15 = add nsw i32 %14, 32768
  %16 = ashr i32 %15, 16
  %17 = load i16, ptr %i.ay, align 2, !tbaa !10
  %18 = sext i16 %17 to i32
  %i.bo = load i16, ptr %i.bc, align 2, !tbaa !10
  %i.bp = sext i16 %i.bo to i32
  %i.bq = sub nsw i32 %18, %i.bp
  %19 = add nsw i32 %i.bq, %16
  %i.br = lshr i32 %19, 1
  %i.bs = or disjoint i64 %i.bh, 1
  %i.bt = mul nsw i64 %1, %i.bs
  %i.bu = getelementptr inbounds [2 x i8], ptr %.01222, i64 %i.bt
  %storemerge147.i = trunc i32 %i.br to i16
  store i16 %storemerge147.i, ptr %i.bu, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %filter.exit, label %.lr.ph, !llvm.loop !30

filter.exit:                                      ; preds = %.lr.ph, %bb.b
  %.0.i.lcssa = phi i32 [ 1, %bb.b ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.bv = zext nneg i32 %.0.i.lcssa to i64        ; 2 uses
  %i.bw = mul nsw i64 %3, %i.bv
  %i.bx = getelementptr inbounds [2 x i8], ptr %.01321, i64 %i.bw ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !10
  %i.bz = sext i16 %i.by to i32
  %i.ca = mul nsw i32 %i.bz, 5
  %i.cb = add nsw i32 %.0.i.lcssa, -1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = mul nsw i64 %3, %i.cc
  %i.ce = getelementptr inbounds [2 x i8], ptr %.01321, i64 %i.cd ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !10
  %i.cg = sext i16 %i.cf to i32
  %i.ch = shl nsw i32 %i.cg, 2
  %i.ci = add nsw i32 %i.ch, %i.ca
  %i.cj = add nsw i32 %.0.i.lcssa, -2
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %3, %i.ck
  %i.cm = getelementptr inbounds [2 x i8], ptr %.01321, i64 %i.cl ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !10
  %i.co = sext i16 %i.cn to i32
  %i.cp = sub nsw i32 %i.ci, %i.co
  %i.cq = shl i32 %i.cp, 13
  %i.cr = add i32 %i.cq, 32768
  %i.cs = ashr i32 %i.cr, 16
  %i.ct = mul nsw i64 %5, %i.bv
  %i.cu = getelementptr inbounds [2 x i8], ptr %.01420, i64 %i.ct ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !10
  %i.cw = sext i16 %i.cv to i32
  %i.cx = add nsw i32 %i.cs, %i.cw
  %i.cy = lshr i32 %i.cx, 1
  %i.cz = shl nuw nsw i32 %.0.i.lcssa, 1          ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = mul nsw i64 %1, %i.da
  %i.dc = getelementptr inbounds [2 x i8], ptr %.01222, i64 %i.db
  %storemerge138.i.a = trunc i32 %i.cy to i16
  store i16 %storemerge138.i.a, ptr %i.dc, align 2, !tbaa !10
  %i.dd = load i16, ptr %i.bx, align 2, !tbaa !10
  %i.de = sext i16 %i.dd to i32
  %i.df = mul nsw i32 %i.de, 11
  %i.dg = load i16, ptr %i.ce, align 2, !tbaa !10
  %i.dh = sext i16 %i.dg to i32
  %i.di = shl nsw i32 %i.dh, 2
  %i.dj = sub nsw i32 %i.df, %i.di
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !10
  %i.dl = sext i16 %i.dk to i32
  %i.dm = add nsw i32 %i.dj, %i.dl
  %i.dn = shl i32 %i.dm, 13
  %i.do = add i32 %i.dn, 32768
  %i.dp = ashr i32 %i.do, 16
  %i.dq = load i16, ptr %i.cu, align 2, !tbaa !10
  %i.dr = sext i16 %i.dq to i32
  %i.ds = sub nsw i32 %i.dp, %i.dr
  %i.dt = lshr i32 %i.ds, 1
  %i.du = or disjoint i32 %i.cz, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = mul nsw i64 %1, %i.dv
  %i.dx = getelementptr inbounds [2 x i8], ptr %.01222, i64 %i.dw
  %storemerge141.i = trunc i32 %i.dt to i16
  store i16 %storemerge141.i, ptr %i.dx, align 2, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %.01321, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %.01420, i64 2
  %i.ea = getelementptr inbounds nuw i8, ptr %.01222, i64 2
  %i.eb = add nuw nsw i32 %.023, 1                ; 2 uses
  %exitcond27.not = icmp eq i32 %i.eb, %6
  br i1 %exitcond27.not, label %._crit_edge, label %bb.b, !llvm.loop !31
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @horiz_filter_clip_bayer(ptr nofree noundef writeonly captures(none) initializes((0, 2), (4, 6)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !10
  %i.b = sext i16 %i.a to i32
  %i.c = mul nsw i32 %i.b, 11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !10
  %i.f = sext i16 %i.e to i32
  %i.g = shl nsw i32 %i.f, 2
  %i.h = sub nsw i32 %i.c, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !10
  %i.k = sext i16 %i.j to i32
  %i.l = add nsw i32 %i.h, %i.k
  %i.m = shl i32 %i.l, 13
  %i.n = add i32 %i.m, 32768
  %i.o = ashr i32 %i.n, 16
  %i.p = load i16, ptr %2, align 2, !tbaa !10
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.o, %i.q
  %i.s = lshr i32 %i.r, 1                         ; 2 uses
  %.not.i = icmp eq i32 %4, 0                     ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext.i = shl i32 %i.s, 16
  %i.t = ashr exact i32 %sext.i, 16               ; 3 uses
  %notmask.i22 = shl nsw i32 -1, %4               ; 2 uses
  %i.u = and i32 %i.t, %notmask.i22
  %.not.i23 = icmp eq i32 %i.u, 0
  %i.v = xor i32 %notmask.i22, -1
  %isnotneg.inv.i24 = icmp slt i32 %i.t, 0
  %i.w = select i1 %isnotneg.inv.i24, i32 0, i32 %i.v
  %.0.i25 = select i1 %.not.i23, i32 %i.t, i32 %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.in.i = phi i32 [ %.0.i25, %bb.b ], [ %i.s, %bb.a ]
  %storemerge.i = trunc i32 %storemerge.in.i to i16
  store i16 %storemerge.i, ptr %0, align 2, !tbaa !10
  %i.x = load i16, ptr %1, align 2, !tbaa !10
  %i.y = sext i16 %i.x to i32
  %i.z = mul nsw i32 %i.y, 5
  %i.aa = load i16, ptr %i.d, align 2, !tbaa !10
  %i.ab = sext i16 %i.aa to i32
  %i.ac = shl nsw i32 %i.ab, 2
  %i.ad = add nsw i32 %i.ac, %i.z
  %i.ae = load i16, ptr %i.i, align 2, !tbaa !10
  %i.af = sext i16 %i.ae to i32
  %i.ag = sub nsw i32 %i.ad, %i.af
  %i.ah = shl i32 %i.ag, 13
  %i.ai = add i32 %i.ah, 32768
  %i.aj = ashr i32 %i.ai, 16
  %i.ak = load i16, ptr %2, align 2, !tbaa !10
  %i.al = sext i16 %i.ak to i32
  %i.am = sub nsw i32 %i.aj, %i.al
  %i.an = lshr i32 %i.am, 1                       ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %.not.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %storemerge135.i = trunc i32 %i.an to i16
  store i16 %storemerge135.i, ptr %i.ao, align 2, !tbaa !10
  %i.ap = add i32 %3, -1                          ; 3 uses
  %i.aq = icmp sgt i32 %3, 2
  br i1 %i.aq, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.c
  %sext134.i = shl i32 %i.an, 16
  %i.ar = ashr exact i32 %sext134.i, 16           ; 2 uses
  %notmask.i18 = shl nsw i32 -1, %4               ; 2 uses
  %i.as = and i32 %i.ar, %notmask.i18
  %.not.i19 = icmp eq i32 %i.as, 0
  %i.at = xor i32 %notmask.i18, -1
  %isnotneg.inv.i20 = icmp slt i32 %i.ar, 0
  %i.au = select i1 %isnotneg.inv.i20, i32 0, i32 %i.at
  %.0.i21 = select i1 %.not.i19, i32 %i.an, i32 %i.au
  %storemerge135.i41 = trunc i32 %.0.i21 to i16
  store i16 %storemerge135.i41, ptr %i.ao, align 2, !tbaa !10
  %i.av = add i32 %3, -1                          ; 3 uses
  %i.aw = icmp sgt i32 %3, 2
  br i1 %i.aw, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %notmask.i642 = shl nsw i32 -1, %4              ; 4 uses
  %i.ax = xor i32 %notmask.i642, -1               ; 3 uses
  %wide.trip.count = zext i32 %i.av to i64        ; 5 uses
  %i.ay = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader110, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.preheader
  %i.az = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %mul.result.mask107 = and i64 %i.az, 1073741823
  %i.ba = icmp eq i64 %mul.result.mask107, 1073741823
  %i.bb = icmp ugt i64 %i.az, 1073741823
  %i.bc = or i1 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.split.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bd = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 2
  %i.bg = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bh = shl nuw nsw i64 %wide.trip.count, 3
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -2     ; 2 uses
  %i.bk = getelementptr i8, ptr %2, i64 2
  %i.bl = getelementptr i8, ptr %2, i64 %i.bd
  %bound0 = icmp ult ptr %1, %i.bj
  %bound1 = icmp ult ptr %i.bg, %i.bf
  %found.conflict = and i1 %bound0, %bound1
  %bound053 = icmp ult ptr %i.bk, %i.bj
  %bound154 = icmp ult ptr %i.bg, %i.bl
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx = or i1 %found.conflict, %found.conflict55
  br i1 %conflict.rdx, label %.lr.ph.split.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, -8                      ; 3 uses
  %i.bm = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %notmask.i642, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert56 = insertelement <8 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat57 = shufflevector <8 x i32> %broadcast.splatinsert56, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = or disjoint i64 %index, 1               ; 3 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 8 uses
  %i.bp = getelementptr [2 x i8], ptr %1, i64 %i.bn ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -2     ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bq, align 2, !tbaa !10, !alias.scope !44, !noalias !45
  %i.br = sext <8 x i16> %wide.load to <8 x i32>
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %wide.load58 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !10, !alias.scope !44, !noalias !45
  %i.bu = sext <8 x i16> %wide.load58 to <8 x i32>
  %5 = sub nsw <8 x i32> %i.br, %i.bu
  %6 = shl nsw <8 x i32> %5, splat (i32 13)
  %7 = add nsw <8 x i32> %6, splat (i32 32768)
  %8 = ashr <8 x i32> %7, splat (i32 16)
  %wide.load59 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !10, !alias.scope !44, !noalias !45
  %9 = sext <8 x i16> %wide.load59 to <8 x i32>
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bn ; 2 uses
  %wide.load60 = load <8 x i16>, ptr %i.bv, align 2, !tbaa !10, !alias.scope !46, !noalias !45
  %i.bw = sext <8 x i16> %wide.load60 to <8 x i32>
  %10 = add nsw <8 x i32> %i.bw, %9
  %i.bx = add nsw <8 x i32> %10, %8
  %i.by = shl i32 %i.bo, 2                        ; 2 uses
  %i.bz = shl i32 %i.bo, 2
  %i.ca = add nuw nsw i32 %i.bz, 4                ; 2 uses
  %i.cb = shl i32 %i.bo, 2                        ; 2 uses
  %i.cc = or disjoint i32 %i.cb, 8
  %i.cd = shl i32 %i.bo, 2
  %i.ce = add nuw nsw i32 %i.cd, 12               ; 2 uses
  %i.cf = shl i32 %i.bo, 2                        ; 2 uses
  %i.cg = or disjoint i32 %i.cf, 16
  %i.ch = shl i32 %i.bo, 2
  %i.ci = add nuw nsw i32 %i.ch, 20               ; 2 uses
  %i.cj = shl i32 %i.bo, 2                        ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 24
  %i.cl = shl i32 %i.bo, 2
  %i.cm = add i32 %i.cl, 28                       ; 2 uses
  %i.cn = zext i32 %i.by to i64
  %i.co = zext i32 %i.ca to i64
  %i.cp = zext i32 %i.cc to i64
  %i.cq = zext i32 %i.ce to i64
  %i.cr = zext i32 %i.cg to i64
  %i.cs = zext i32 %i.ci to i64
  %i.ct = zext i32 %i.ck to i64
  %i.cu = zext i32 %i.cm to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cn
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.co
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cp
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cq
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cr
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cs
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.dd = shl <8 x i32> %i.bx, splat (i32 15)
  %i.de = ashr <8 x i32> %i.dd, splat (i32 16)    ; 3 uses
  %i.df = and <8 x i32> %i.de, %broadcast.splat
  %i.dg = icmp eq <8 x i32> %i.df, zeroinitializer
  %i.dh = icmp slt <8 x i32> %i.de, zeroinitializer
  %i.di = select <8 x i1> %i.dh, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat57
  %i.dj = select <8 x i1> %i.dg, <8 x i32> %i.de, <8 x i32> %i.di
  %i.dk = trunc <8 x i32> %i.dj to <8 x i16>      ; 8 uses
  %i.dl = extractelement <8 x i16> %i.dk, i64 0
  store i16 %i.dl, ptr %i.cv, align 2, !tbaa !10, !alias.scope !45
  %i.dm = extractelement <8 x i16> %i.dk, i64 1
  store i16 %i.dm, ptr %i.cw, align 2, !tbaa !10, !alias.scope !45
  %i.dn = extractelement <8 x i16> %i.dk, i64 2
  store i16 %i.dn, ptr %i.cx, align 2, !tbaa !10, !alias.scope !45
  %i.do = extractelement <8 x i16> %i.dk, i64 3
  store i16 %i.do, ptr %i.cy, align 2, !tbaa !10, !alias.scope !45
  %i.dp = extractelement <8 x i16> %i.dk, i64 4
  store i16 %i.dp, ptr %i.cz, align 2, !tbaa !10, !alias.scope !45
  %i.dq = extractelement <8 x i16> %i.dk, i64 5
  store i16 %i.dq, ptr %i.da, align 2, !tbaa !10, !alias.scope !45
  %i.dr = extractelement <8 x i16> %i.dk, i64 6
  store i16 %i.dr, ptr %i.db, align 2, !tbaa !10, !alias.scope !45
  %i.ds = extractelement <8 x i16> %i.dk, i64 7
  store i16 %i.ds, ptr %i.dc, align 2, !tbaa !10, !alias.scope !45
  %wide.load61.a = load <8 x i16>, ptr %i.bt, align 2, !tbaa !10, !alias.scope !44, !noalias !45
  %i.dt = sext <8 x i16> %wide.load61.a to <8 x i32>
  %wide.load62 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !10, !alias.scope !44, !noalias !45
  %i.du = sext <8 x i16> %wide.load62 to <8 x i32>
  %11 = sub nsw <8 x i32> %i.dt, %i.du
  %12 = shl nsw <8 x i32> %11, splat (i32 13)
  %13 = add nsw <8 x i32> %12, splat (i32 32768)
  %14 = ashr <8 x i32> %13, splat (i32 16)
  %wide.load63 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !10, !alias.scope !44, !noalias !45
  %15 = sext <8 x i16> %wide.load63 to <8 x i32>
  %wide.load64 = load <8 x i16>, ptr %i.bv, align 2, !tbaa !10, !alias.scope !46, !noalias !45
  %i.dv = sext <8 x i16> %wide.load64 to <8 x i32>
  %i.dw = sub nsw <8 x i32> %15, %i.dv
  %16 = add nsw <8 x i32> %i.dw, %14
  %i.dx = or disjoint i32 %i.by, 2
  %i.dy = or disjoint i32 %i.ca, 2
  %i.dz = or disjoint i32 %i.cb, 10
  %i.ea = or disjoint i32 %i.ce, 2
  %i.eb = or disjoint i32 %i.cf, 18
  %i.ec = or disjoint i32 %i.ci, 2
  %i.ed = or disjoint i32 %i.cj, 26
  %i.ee = or disjoint i32 %i.cm, 2
  %i.ef = zext i32 %i.dx to i64
  %i.eg = zext i32 %i.dy to i64
  %i.eh = zext i32 %i.dz to i64
  %i.ei = zext i32 %i.ea to i64
  %i.ej = zext i32 %i.eb to i64
  %i.ek = zext i32 %i.ec to i64
  %i.el = zext i32 %i.ed to i64
  %i.em = zext i32 %i.ee to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ej
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ek
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.el
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.em
  %i.ev = shl <8 x i32> %16, splat (i32 15)
  %i.ew = ashr <8 x i32> %i.ev, splat (i32 16)    ; 3 uses
  %i.ex = and <8 x i32> %i.ew, %broadcast.splat
  %i.ey = icmp eq <8 x i32> %i.ex, zeroinitializer
  %i.ez = icmp slt <8 x i32> %i.ew, zeroinitializer
  %i.fa = select <8 x i1> %i.ez, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat57
  %i.fb = select <8 x i1> %i.ey, <8 x i32> %i.ew, <8 x i32> %i.fa
  %i.fc = trunc <8 x i32> %i.fb to <8 x i16>      ; 8 uses
  %i.fd = extractelement <8 x i16> %i.fc, i64 0
  store i16 %i.fd, ptr %i.en, align 2, !tbaa !10, !alias.scope !45
  %i.fe = extractelement <8 x i16> %i.fc, i64 1
  store i16 %i.fe, ptr %i.eo, align 2, !tbaa !10, !alias.scope !45
  %i.ff = extractelement <8 x i16> %i.fc, i64 2
  store i16 %i.ff, ptr %i.ep, align 2, !tbaa !10, !alias.scope !45
  %i.fg = extractelement <8 x i16> %i.fc, i64 3
  store i16 %i.fg, ptr %i.eq, align 2, !tbaa !10, !alias.scope !45
  %i.fh = extractelement <8 x i16> %i.fc, i64 4
  store i16 %i.fh, ptr %i.er, align 2, !tbaa !10, !alias.scope !45
  %i.fi = extractelement <8 x i16> %i.fc, i64 5
  store i16 %i.fi, ptr %i.es, align 2, !tbaa !10, !alias.scope !45
  %i.fj = extractelement <8 x i16> %i.fc, i64 6
  store i16 %i.fj, ptr %i.et, align 2, !tbaa !10, !alias.scope !45
  %i.fk = extractelement <8 x i16> %i.fc, i64 7
  store i16 %i.fk, ptr %i.eu, align 2, !tbaa !10, !alias.scope !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader110

.lr.ph.split.preheader110:                        ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph.split.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.d
  %wide.trip.count38 = zext i32 %i.ap to i64      ; 5 uses
  %i.fm = add nsw i64 %wide.trip.count38, -1      ; 3 uses
  %min.iters.check82 = icmp ult i64 %i.fm, 16
  br i1 %min.iters.check82, label %.lr.ph.split.us.preheader109, label %vector.scevcheck65

vector.scevcheck65:                               ; preds = %.lr.ph.split.us.preheader
  %i.fn = add nsw i64 %wide.trip.count38, -2      ; 2 uses
  %mul.result67.mask108 = and i64 %i.fn, 1073741823
  %i.fo = icmp eq i64 %mul.result67.mask108, 1073741823
  %i.fp = icmp ugt i64 %i.fn, 1073741823
  %i.fq = or i1 %i.fo, %i.fp
  br i1 %i.fq, label %.lr.ph.split.us.preheader109, label %vector.memcheck83

vector.memcheck83:                                ; preds = %vector.scevcheck65
  %i.fr = shl nuw nsw i64 %wide.trip.count38, 1   ; 2 uses
  %i.fs = getelementptr i8, ptr %1, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 2
  %i.fu = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.fv = shl nuw nsw i64 %wide.trip.count38, 3
  %i.fw = getelementptr i8, ptr %0, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 -2     ; 2 uses
  %i.fy = getelementptr i8, ptr %2, i64 2
  %i.fz = getelementptr i8, ptr %2, i64 %i.fr
  %bound084 = icmp ult ptr %1, %i.fx
  %bound185 = icmp ult ptr %i.fu, %i.ft
  %found.conflict86 = and i1 %bound084, %bound185
  %bound087 = icmp ult ptr %i.fy, %i.fx
  %bound188 = icmp ult ptr %i.fu, %i.fz
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %found.conflict86, %found.conflict89
  br i1 %conflict.rdx90, label %.lr.ph.split.us.preheader109, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck83
  %n.vec92 = and i64 %i.fm, -8                    ; 3 uses
  %i.ga = or disjoint i64 %n.vec92, 1
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next103, %vector.body93 ] ; 3 uses
  %i.gb = or disjoint i64 %index94, 1             ; 3 uses
  %i.gc = trunc i64 %i.gb to i32                  ; 8 uses
  %i.gd = getelementptr [2 x i8], ptr %1, i64 %i.gb ; 3 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 -2     ; 2 uses
  %wide.load95 = load <8 x i16>, ptr %i.ge, align 2, !tbaa !10, !alias.scope !47, !noalias !48
  %i.gf = sext <8 x i16> %wide.load95 to <8 x i32>
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index94
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 2 uses
  %wide.load96 = load <8 x i16>, ptr %i.gh, align 2, !tbaa !10, !alias.scope !47, !noalias !48
  %i.gi = sext <8 x i16> %wide.load96 to <8 x i32>
  %17 = sub nsw <8 x i32> %i.gf, %i.gi
  %18 = shl nsw <8 x i32> %17, splat (i32 13)
  %19 = add nsw <8 x i32> %18, splat (i32 32768)
  %20 = ashr <8 x i32> %19, splat (i32 16)
  %wide.load97 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !10, !alias.scope !47, !noalias !48
  %21 = sext <8 x i16> %wide.load97 to <8 x i32>
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.gb ; 2 uses
  %wide.load98 = load <8 x i16>, ptr %i.gj, align 2, !tbaa !10, !alias.scope !49, !noalias !48
  %i.gk = sext <8 x i16> %wide.load98 to <8 x i32>
  %22 = add nsw <8 x i32> %i.gk, %21
  %i.gl = add nsw <8 x i32> %22, %20
  %i.gm = lshr <8 x i32> %i.gl, splat (i32 1)
  %i.gn = shl i32 %i.gc, 2                        ; 2 uses
  %i.go = shl i32 %i.gc, 2
  %i.gp = add nuw nsw i32 %i.go, 4                ; 2 uses
  %i.gq = shl i32 %i.gc, 2                        ; 2 uses
  %i.gr = or disjoint i32 %i.gq, 8
  %i.gs = shl i32 %i.gc, 2
  %i.gt = add nuw nsw i32 %i.gs, 12               ; 2 uses
  %i.gu = shl i32 %i.gc, 2                        ; 2 uses
  %i.gv = or disjoint i32 %i.gu, 16
  %i.gw = shl i32 %i.gc, 2
  %i.gx = add nuw nsw i32 %i.gw, 20               ; 2 uses
  %i.gy = shl i32 %i.gc, 2                        ; 2 uses
  %i.gz = or disjoint i32 %i.gy, 24
  %i.ha = shl i32 %i.gc, 2
  %i.hb = add i32 %i.ha, 28                       ; 2 uses
  %i.hc = zext i32 %i.gn to i64
  %i.hd = zext i32 %i.gp to i64
  %i.he = zext i32 %i.gr to i64
  %i.hf = zext i32 %i.gt to i64
  %i.hg = zext i32 %i.gv to i64
  %i.hh = zext i32 %i.gx to i64
  %i.hi = zext i32 %i.gz to i64
  %i.hj = zext i32 %i.hb to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hc
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hd
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.he
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hf
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hg
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hh
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hi
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hj
  %i.hs = trunc <8 x i32> %i.gm to <8 x i16>      ; 8 uses
  %i.ht = extractelement <8 x i16> %i.hs, i64 0
  store i16 %i.ht, ptr %i.hk, align 2, !tbaa !10, !alias.scope !48
  %i.hu = extractelement <8 x i16> %i.hs, i64 1
  store i16 %i.hu, ptr %i.hl, align 2, !tbaa !10, !alias.scope !48
  %i.hv = extractelement <8 x i16> %i.hs, i64 2
  store i16 %i.hv, ptr %i.hm, align 2, !tbaa !10, !alias.scope !48
  %i.hw = extractelement <8 x i16> %i.hs, i64 3
  store i16 %i.hw, ptr %i.hn, align 2, !tbaa !10, !alias.scope !48
  %i.hx = extractelement <8 x i16> %i.hs, i64 4
  store i16 %i.hx, ptr %i.ho, align 2, !tbaa !10, !alias.scope !48
  %i.hy = extractelement <8 x i16> %i.hs, i64 5
  store i16 %i.hy, ptr %i.hp, align 2, !tbaa !10, !alias.scope !48
  %i.hz = extractelement <8 x i16> %i.hs, i64 6
  store i16 %i.hz, ptr %i.hq, align 2, !tbaa !10, !alias.scope !48
  %i.ia = extractelement <8 x i16> %i.hs, i64 7
  store i16 %i.ia, ptr %i.hr, align 2, !tbaa !10, !alias.scope !48
  %wide.load99.a = load <8 x i16>, ptr %i.gh, align 2, !tbaa !10, !alias.scope !47, !noalias !48
  %i.ib = sext <8 x i16> %wide.load99.a to <8 x i32>
  %wide.load100 = load <8 x i16>, ptr %i.ge, align 2, !tbaa !10, !alias.scope !47, !noalias !48
  %i.ic = sext <8 x i16> %wide.load100 to <8 x i32>
  %23 = sub nsw <8 x i32> %i.ib, %i.ic
  %24 = shl nsw <8 x i32> %23, splat (i32 13)
  %25 = add nsw <8 x i32> %24, splat (i32 32768)
  %26 = ashr <8 x i32> %25, splat (i32 16)
  %wide.load101 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !10, !alias.scope !47, !noalias !48
  %27 = sext <8 x i16> %wide.load101 to <8 x i32>
  %wide.load102 = load <8 x i16>, ptr %i.gj, align 2, !tbaa !10, !alias.scope !49, !noalias !48
  %i.id = sext <8 x i16> %wide.load102 to <8 x i32>
  %i.ie = sub nsw <8 x i32> %27, %i.id
  %28 = add nsw <8 x i32> %i.ie, %26
  %i.if = lshr <8 x i32> %28, splat (i32 1)
  %i.ig = or disjoint i32 %i.gn, 2
  %i.ih = or disjoint i32 %i.gp, 2
  %i.ii = or disjoint i32 %i.gq, 10
  %i.ij = or disjoint i32 %i.gt, 2
  %i.ik = or disjoint i32 %i.gu, 18
  %i.il = or disjoint i32 %i.gx, 2
  %i.im = or disjoint i32 %i.gy, 26
  %i.in = or disjoint i32 %i.hb, 2
  %i.io = zext i32 %i.ig to i64
  %i.ip = zext i32 %i.ih to i64
  %i.iq = zext i32 %i.ii to i64
  %i.ir = zext i32 %i.ij to i64
  %i.is = zext i32 %i.ik to i64
  %i.it = zext i32 %i.il to i64
  %i.iu = zext i32 %i.im to i64
  %i.iv = zext i32 %i.in to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.io
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ip
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.iq
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ir
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.is
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.it
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.iu
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.iv
  %i.je = trunc <8 x i32> %i.if to <8 x i16>      ; 8 uses
  %i.jf = extractelement <8 x i16> %i.je, i64 0
  store i16 %i.jf, ptr %i.iw, align 2, !tbaa !10, !alias.scope !48
  %i.jg = extractelement <8 x i16> %i.je, i64 1
  store i16 %i.jg, ptr %i.ix, align 2, !tbaa !10, !alias.scope !48
  %i.jh = extractelement <8 x i16> %i.je, i64 2
  store i16 %i.jh, ptr %i.iy, align 2, !tbaa !10, !alias.scope !48
  %i.ji = extractelement <8 x i16> %i.je, i64 3
  store i16 %i.ji, ptr %i.iz, align 2, !tbaa !10, !alias.scope !48
  %i.jj = extractelement <8 x i16> %i.je, i64 4
  store i16 %i.jj, ptr %i.ja, align 2, !tbaa !10, !alias.scope !48
  %i.jk = extractelement <8 x i16> %i.je, i64 5
  store i16 %i.jk, ptr %i.jb, align 2, !tbaa !10, !alias.scope !48
  %i.jl = extractelement <8 x i16> %i.je, i64 6
  store i16 %i.jl, ptr %i.jc, align 2, !tbaa !10, !alias.scope !48
  %i.jm = extractelement <8 x i16> %i.je, i64 7
  store i16 %i.jm, ptr %i.jd, align 2, !tbaa !10, !alias.scope !48
  %index.next103 = add nuw i64 %index94, 8        ; 2 uses
  %i.jn = icmp eq i64 %index.next103, %n.vec92
  br i1 %i.jn, label %middle.block104, label %vector.body93, !llvm.loop !41

middle.block104:                                  ; preds = %vector.body93
  %cmp.n105 = icmp eq i64 %i.fm, %n.vec92
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph.split.us.preheader109

.lr.ph.split.us.preheader109:                     ; preds = %vector.memcheck83, %vector.scevcheck65, %.lr.ph.split.us.preheader, %middle.block104
  %indvars.iv35.ph = phi i64 [ 1, %vector.memcheck83 ], [ 1, %vector.scevcheck65 ], [ 1, %.lr.ph.split.us.preheader ], [ %i.ga, %middle.block104 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader109, %.lr.ph.split.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph.split.us ], [ %indvars.iv35.ph, %.lr.ph.split.us.preheader109 ] ; 4 uses
  %i.jo = getelementptr [2 x i8], ptr %1, i64 %indvars.iv35 ; 3 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 -2     ; 2 uses
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !10
  %i.jr = sext i16 %i.jq to i32
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next36 ; 2 uses
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !10
  %i.ju = sext i16 %i.jt to i32
  %29 = sub nsw i32 %i.jr, %i.ju
  %30 = shl nsw i32 %29, 13
  %31 = add nsw i32 %30, 32768
  %32 = ashr i32 %31, 16
  %33 = load i16, ptr %i.jo, align 2, !tbaa !10
  %34 = sext i16 %33 to i32
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35 ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !10
  %i.jx = sext i16 %i.jw to i32
  %35 = add nsw i32 %i.jx, %34
  %i.jy = add nsw i32 %35, %32
  %i.jz = lshr i32 %i.jy, 1
  %i.ka = trunc nuw nsw i64 %indvars.iv35 to i32
  %i.kb = shl i32 %i.ka, 2                        ; 2 uses
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.kc
  %storemerge144.i.us = trunc i32 %i.jz to i16
  store i16 %storemerge144.i.us, ptr %i.kd, align 2, !tbaa !10
  %i.ke = load i16, ptr %i.js, align 2, !tbaa !10
  %i.kf = sext i16 %i.ke to i32
  %i.kg = load i16, ptr %i.jp, align 2, !tbaa !10
  %i.kh = sext i16 %i.kg to i32
  %36 = sub nsw i32 %i.kf, %i.kh
  %37 = shl nsw i32 %36, 13
  %38 = add nsw i32 %37, 32768
  %39 = ashr i32 %38, 16
  %40 = load i16, ptr %i.jo, align 2, !tbaa !10
  %41 = sext i16 %40 to i32
  %i.ki = load i16, ptr %i.jv, align 2, !tbaa !10
  %i.kj = sext i16 %i.ki to i32
  %i.kk = sub nsw i32 %41, %i.kj
  %42 = add nsw i32 %i.kk, %39
  %i.kl = lshr i32 %42, 1
  %i.km = or disjoint i32 %i.kb, 2
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.kn
  %storemerge147.i.us = trunc i32 %i.kl to i16
  store i16 %storemerge147.i.us, ptr %i.ko, align 2, !tbaa !10
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !42

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader110, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader110 ] ; 4 uses
  %i.kp = getelementptr [2 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 -2     ; 2 uses
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !10
  %i.ks = sext i16 %i.kr to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !10
  %i.kv = sext i16 %i.ku to i32
  %43 = sub nsw i32 %i.ks, %i.kv
  %44 = shl nsw i32 %43, 13
  %45 = add nsw i32 %44, 32768
  %46 = ashr i32 %45, 16
  %47 = load i16, ptr %i.kp, align 2, !tbaa !10
  %48 = sext i16 %47 to i32
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !10
  %i.ky = sext i16 %i.kx to i32
  %49 = add nsw i32 %i.ky, %48
  %i.kz = add nsw i32 %49, %46
  %i.la = trunc nuw nsw i64 %indvars.iv to i32
  %i.lb = shl i32 %i.la, 2                        ; 2 uses
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lc
  %i.le = shl i32 %i.kz, 15
  %i.lf = ashr i32 %i.le, 16                      ; 3 uses
  %i.lg = and i32 %i.lf, %notmask.i642
  %.not.i7 = icmp eq i32 %i.lg, 0
  %isnotneg.inv.i8 = icmp slt i32 %i.lf, 0
  %i.lh = select i1 %isnotneg.inv.i8, i32 0, i32 %i.ax
  %.0.i9 = select i1 %.not.i7, i32 %i.lf, i32 %i.lh
  %storemerge144.i = trunc i32 %.0.i9 to i16
  store i16 %storemerge144.i, ptr %i.ld, align 2, !tbaa !10
  %i.li = load i16, ptr %i.kt, align 2, !tbaa !10
  %i.lj = sext i16 %i.li to i32
  %i.lk = load i16, ptr %i.kq, align 2, !tbaa !10
  %i.ll = sext i16 %i.lk to i32
  %50 = sub nsw i32 %i.lj, %i.ll
  %51 = shl nsw i32 %50, 13
  %52 = add nsw i32 %51, 32768
  %53 = ashr i32 %52, 16
  %54 = load i16, ptr %i.kp, align 2, !tbaa !10
  %55 = sext i16 %54 to i32
  %i.lm = load i16, ptr %i.kw, align 2, !tbaa !10
  %i.ln = sext i16 %i.lm to i32
  %i.lo = sub nsw i32 %55, %i.ln
  %56 = add nsw i32 %i.lo, %53
  %i.lp = or disjoint i32 %i.lb, 2
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lq
  %i.ls = shl i32 %56, 15
  %i.lt = ashr i32 %i.ls, 16                      ; 3 uses
  %i.lu = and i32 %i.lt, %notmask.i642
  %.not.i4 = icmp eq i32 %i.lu, 0
  %isnotneg.inv.i = icmp slt i32 %i.lt, 0
  %i.lv = select i1 %isnotneg.inv.i, i32 0, i32 %i.ax
  %.0.i5 = select i1 %.not.i4, i32 %i.lt, i32 %i.lv
  %storemerge147.i = trunc i32 %.0.i5 to i16
  store i16 %storemerge147.i, ptr %i.lr, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block104, %.thread, %bb.d
  %.0.i.lcssa = phi i32 [ %i.ap, %middle.block104 ], [ 1, %.thread ], [ 1, %bb.d ], [ %i.av, %middle.block ], [ %i.ap, %.lr.ph.split.us ], [ %i.av, %.lr.ph.split ] ; 2 uses
  %i.lw = zext nneg i32 %.0.i.lcssa to i64        ; 2 uses
  %i.lx = getelementptr [2 x i8], ptr %1, i64 %i.lw ; 4 uses
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !10
  %i.lz = sext i16 %i.ly to i32
  %i.ma = mul nsw i32 %i.lz, 5
  %i.mb = getelementptr i8, ptr %i.lx, i64 -2     ; 2 uses
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !10
  %i.md = sext i16 %i.mc to i32
  %i.me = shl nsw i32 %i.md, 2
  %i.mf = add nsw i32 %i.me, %i.ma
  %i.mg = getelementptr i8, ptr %i.lx, i64 -4     ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !10
  %i.mi = sext i16 %i.mh to i32
  %i.mj = sub nsw i32 %i.mf, %i.mi
  %i.mk = shl i32 %i.mj, 13
  %i.ml = add i32 %i.mk, 32768
  %i.mm = ashr i32 %i.ml, 16
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lw ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !10
  %i.mp = sext i16 %i.mo to i32
  %i.mq = add nsw i32 %i.mm, %i.mp
  %i.mr = lshr i32 %i.mq, 1                       ; 2 uses
  %i.ms = shl i32 %.0.i.lcssa, 2                  ; 2 uses
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.mt
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %sext137.i.a = shl i32 %i.mr, 16
  %i.mv = ashr exact i32 %sext137.i.a, 16         ; 3 uses
  %notmask.i14 = shl nsw i32 -1, %4               ; 2 uses
  %i.mw = and i32 %i.mv, %notmask.i14
  %.not.i15 = icmp eq i32 %i.mw, 0
  %i.mx = xor i32 %notmask.i14, -1
  %isnotneg.inv.i16 = icmp slt i32 %i.mv, 0
  %i.my = select i1 %isnotneg.inv.i16, i32 0, i32 %i.mx
  %.0.i17 = select i1 %.not.i15, i32 %i.mv, i32 %i.my
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %storemerge138.in.i.a = phi i32 [ %.0.i17, %bb.e ], [ %i.mr, %._crit_edge ]
  %storemerge138.i.a = trunc i32 %storemerge138.in.i.a to i16
  store i16 %storemerge138.i.a, ptr %i.mu, align 2, !tbaa !10
  %i.mz = load i16, ptr %i.lx, align 2, !tbaa !10
  %i.na = sext i16 %i.mz to i32
  %i.nb = mul nsw i32 %i.na, 11
  %i.nc = load i16, ptr %i.mb, align 2, !tbaa !10
  %i.nd = sext i16 %i.nc to i32
  %i.ne = shl nsw i32 %i.nd, 2
  %i.nf = sub nsw i32 %i.nb, %i.ne
  %i.ng = load i16, ptr %i.mg, align 2, !tbaa !10
  %i.nh = sext i16 %i.ng to i32
  %i.ni = add nsw i32 %i.nf, %i.nh
  %i.nj = shl i32 %i.ni, 13
  %i.nk = add i32 %i.nj, 32768
  %i.nl = ashr i32 %i.nk, 16
  %i.nm = load i16, ptr %i.mn, align 2, !tbaa !10
  %i.nn = sext i16 %i.nm to i32
  %i.no = sub nsw i32 %i.nl, %i.nn
  %i.np = lshr i32 %i.no, 1                       ; 2 uses
  br i1 %.not.i, label %filter.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sext140.i = shl i32 %i.np, 16
  %i.nq = ashr exact i32 %sext140.i, 16           ; 3 uses
  %notmask.i10 = shl nsw i32 -1, %4               ; 2 uses
  %i.nr = and i32 %i.nq, %notmask.i10
  %.not.i11 = icmp eq i32 %i.nr, 0
  %i.ns = xor i32 %notmask.i10, -1
  %isnotneg.inv.i12 = icmp slt i32 %i.nq, 0
  %i.nt = select i1 %isnotneg.inv.i12, i32 0, i32 %i.ns
  %.0.i13 = select i1 %.not.i11, i32 %i.nq, i32 %i.nt
  br label %filter.exit

filter.exit:                                      ; preds = %bb.f, %bb.g
  %storemerge141.in.i = phi i32 [ %.0.i13, %bb.g ], [ %i.np, %bb.f ]
  %i.nu = or disjoint i32 %i.ms, 2
  %i.nv = zext i32 %i.nu to i64
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.nv
  %storemerge141.i = trunc i32 %storemerge141.in.i to i16
  store i16 %storemerge141.i, ptr %i.nw, align 2, !tbaa !10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @horiz_filter_clip(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !10
  %i.b = sext i16 %i.a to i32
  %i.c = mul nsw i32 %i.b, 11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !10
  %i.f = sext i16 %i.e to i32
  %i.g = shl nsw i32 %i.f, 2
  %i.h = sub nsw i32 %i.c, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !10
  %i.k = sext i16 %i.j to i32
  %i.l = add nsw i32 %i.h, %i.k
  %i.m = shl i32 %i.l, 13
  %i.n = add i32 %i.m, 32768
  %i.o = ashr i32 %i.n, 16
  %i.p = load i16, ptr %2, align 2, !tbaa !10
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.o, %i.q
  %i.s = lshr i32 %i.r, 1                         ; 2 uses
  %.not.i = icmp eq i32 %4, 0                     ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext.i = shl i32 %i.s, 16
  %i.t = ashr exact i32 %sext.i, 16               ; 3 uses
  %notmask.i22 = shl nsw i32 -1, %4               ; 2 uses
  %i.u = and i32 %i.t, %notmask.i22
  %.not.i23 = icmp eq i32 %i.u, 0
  %i.v = xor i32 %notmask.i22, -1
  %isnotneg.inv.i24 = icmp slt i32 %i.t, 0
  %i.w = select i1 %isnotneg.inv.i24, i32 0, i32 %i.v
  %.0.i25 = select i1 %.not.i23, i32 %i.t, i32 %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.in.i = phi i32 [ %.0.i25, %bb.b ], [ %i.s, %bb.a ]
  %storemerge.i = trunc i32 %storemerge.in.i to i16
  store i16 %storemerge.i, ptr %0, align 2, !tbaa !10
  %i.x = load i16, ptr %1, align 2, !tbaa !10
  %i.y = sext i16 %i.x to i32
  %i.z = mul nsw i32 %i.y, 5
  %i.aa = load i16, ptr %i.d, align 2, !tbaa !10
  %i.ab = sext i16 %i.aa to i32
  %i.ac = shl nsw i32 %i.ab, 2
  %i.ad = add nsw i32 %i.ac, %i.z
  %i.ae = load i16, ptr %i.i, align 2, !tbaa !10
  %i.af = sext i16 %i.ae to i32
  %i.ag = sub nsw i32 %i.ad, %i.af
  %i.ah = shl i32 %i.ag, 13
  %i.ai = add i32 %i.ah, 32768
  %i.aj = ashr i32 %i.ai, 16
  %i.ak = load i16, ptr %2, align 2, !tbaa !10
  %i.al = sext i16 %i.ak to i32
  %i.am = sub nsw i32 %i.aj, %i.al
  %i.an = lshr i32 %i.am, 1                       ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %storemerge135.i = trunc i32 %i.an to i16
  store i16 %storemerge135.i, ptr %i.ao, align 2, !tbaa !10
  %i.ap = add i32 %3, -1                          ; 3 uses
  %i.aq = icmp sgt i32 %3, 2
  br i1 %i.aq, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.c
  %sext134.i = shl i32 %i.an, 16
  %i.ar = ashr exact i32 %sext134.i, 16           ; 2 uses
  %notmask.i18 = shl nsw i32 -1, %4               ; 2 uses
  %i.as = and i32 %i.ar, %notmask.i18
  %.not.i19 = icmp eq i32 %i.as, 0
  %i.at = xor i32 %notmask.i18, -1
  %isnotneg.inv.i20 = icmp slt i32 %i.ar, 0
  %i.au = select i1 %isnotneg.inv.i20, i32 0, i32 %i.at
  %.0.i21 = select i1 %.not.i19, i32 %i.an, i32 %i.au
  %storemerge135.i42 = trunc i32 %.0.i21 to i16
  store i16 %storemerge135.i42, ptr %i.ao, align 2, !tbaa !10
  %i.av = add i32 %3, -1                          ; 3 uses
  %i.aw = icmp sgt i32 %3, 2
  br i1 %i.aw, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %notmask.i643 = shl nsw i32 -1, %4              ; 4 uses
  %i.ax = xor i32 %notmask.i643, -1               ; 3 uses
  %wide.trip.count = zext i32 %i.av to i64        ; 4 uses
  %i.ay = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader98, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.az = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ba = shl nuw nsw i64 %wide.trip.count, 2
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba     ; 2 uses
  %i.bc = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.bd = getelementptr i8, ptr %1, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 2
  %i.bf = getelementptr i8, ptr %2, i64 2
  %i.bg = getelementptr i8, ptr %2, i64 %i.bc
  %bound0 = icmp ult ptr %i.az, %i.be
  %bound1 = icmp ult ptr %1, %i.bb
  %found.conflict = and i1 %bound0, %bound1
  %bound054 = icmp ult ptr %i.az, %i.bg
  %bound155 = icmp ult ptr %i.bf, %i.bb
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx = or i1 %found.conflict, %found.conflict56
  br i1 %conflict.rdx, label %.lr.ph.split.preheader98, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  %i.bh = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %notmask.i643, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert57 = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat58 = shufflevector <4 x i32> %broadcast.splatinsert57, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = or disjoint i64 %index, 1               ; 3 uses
  %i.bj = getelementptr [2 x i8], ptr %1, i64 %i.bi ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %wide.load = load <4 x i16>, ptr %i.bk, align 2, !tbaa !10, !alias.scope !62
  %i.bl = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %wide.load59 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !10, !alias.scope !62
  %i.bo = sext <4 x i16> %wide.load59 to <4 x i32> ; 2 uses
  %5 = sub nsw <4 x i32> %i.bl, %i.bo
  %6 = shl nsw <4 x i32> %5, splat (i32 13)
  %7 = add nsw <4 x i32> %6, splat (i32 32768)
  %8 = ashr <4 x i32> %7, splat (i32 16)
  %wide.load60 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !10, !alias.scope !62
  %9 = sext <4 x i16> %wide.load60 to <4 x i32>   ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bi
  %wide.load61 = load <4 x i16>, ptr %i.bp, align 2, !tbaa !10, !alias.scope !63
  %i.bq = sext <4 x i16> %wide.load61 to <4 x i32> ; 2 uses
  %10 = add nsw <4 x i32> %i.bq, %9
  %i.br = add nsw <4 x i32> %10, %8
  %i.bs = shl nuw nsw i64 %i.bi, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %i.bu = shl <4 x i32> %i.br, splat (i32 15)
  %i.bv = ashr <4 x i32> %i.bu, splat (i32 16)    ; 3 uses
  %i.bw = and <4 x i32> %i.bv, %broadcast.splat
  %i.bx = icmp eq <4 x i32> %i.bw, zeroinitializer
  %i.by = icmp slt <4 x i32> %i.bv, zeroinitializer
  %i.bz = select <4 x i1> %i.by, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat58
  %i.ca = select <4 x i1> %i.bx, <4 x i32> %i.bv, <4 x i32> %i.bz
  %11 = sub nsw <4 x i32> %i.bo, %i.bl
  %12 = shl nsw <4 x i32> %11, splat (i32 13)
  %13 = add nsw <4 x i32> %12, splat (i32 32768)
  %14 = ashr <4 x i32> %13, splat (i32 16)
  %i.cb = sub nsw <4 x i32> %9, %i.bq
  %15 = add nsw <4 x i32> %i.cb, %14
  %i.cc = shl <4 x i32> %15, splat (i32 15)
  %i.cd = ashr <4 x i32> %i.cc, splat (i32 16)    ; 3 uses
  %i.ce = and <4 x i32> %i.cd, %broadcast.splat
  %i.cf = icmp eq <4 x i32> %i.ce, zeroinitializer
  %i.cg = icmp slt <4 x i32> %i.cd, zeroinitializer
  %i.ch = select <4 x i1> %i.cg, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat58
  %i.ci = select <4 x i1> %i.cf, <4 x i32> %i.cd, <4 x i32> %i.ch
  %i.cj = shufflevector <4 x i32> %i.ca, <4 x i32> %i.ci, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.cj to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.bt, align 2, !tbaa !10, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader98

.lr.ph.split.preheader98:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.split.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.d
  %wide.trip.count38 = zext i32 %i.ap to i64      ; 4 uses
  %i.cl = add nsw i64 %wide.trip.count38, -1      ; 3 uses
  %min.iters.check75 = icmp ult i64 %i.cl, 4
  br i1 %min.iters.check75, label %.lr.ph.split.us.preheader97, label %vector.memcheck76

vector.memcheck76:                                ; preds = %.lr.ph.split.us.preheader
  %i.cm = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.cn = shl nuw nsw i64 %wide.trip.count38, 2
  %i.co = getelementptr i8, ptr %0, i64 %i.cn     ; 2 uses
  %i.cp = shl nuw nsw i64 %wide.trip.count38, 1   ; 2 uses
  %i.cq = getelementptr i8, ptr %1, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 2
  %i.cs = getelementptr i8, ptr %2, i64 2
  %i.ct = getelementptr i8, ptr %2, i64 %i.cp
  %bound077 = icmp ult ptr %i.cm, %i.cr
  %bound178 = icmp ult ptr %1, %i.co
  %found.conflict79 = and i1 %bound077, %bound178
  %bound080 = icmp ult ptr %i.cm, %i.ct
  %bound181 = icmp ult ptr %i.cs, %i.co
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %found.conflict79, %found.conflict82
  br i1 %conflict.rdx83, label %.lr.ph.split.us.preheader97, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck76
  %n.vec85 = and i64 %i.cl, -4                    ; 3 uses
  %i.cu = or disjoint i64 %n.vec85, 1
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next93, %vector.body86 ] ; 3 uses
  %i.cv = or disjoint i64 %index87, 1             ; 3 uses
  %i.cw = getelementptr [2 x i8], ptr %1, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -2
  %wide.load88 = load <4 x i16>, ptr %i.cx, align 2, !tbaa !10, !alias.scope !66
  %i.cy = sext <4 x i16> %wide.load88 to <4 x i32> ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index87
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %wide.load89 = load <4 x i16>, ptr %i.da, align 2, !tbaa !10, !alias.scope !66
  %i.db = sext <4 x i16> %wide.load89 to <4 x i32> ; 2 uses
  %16 = sub nsw <4 x i32> %i.cy, %i.db
  %17 = shl nsw <4 x i32> %16, splat (i32 13)
  %18 = add nsw <4 x i32> %17, splat (i32 32768)
  %19 = ashr <4 x i32> %18, splat (i32 16)
  %wide.load90 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !10, !alias.scope !66
  %20 = sext <4 x i16> %wide.load90 to <4 x i32>  ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cv
  %wide.load91 = load <4 x i16>, ptr %i.dc, align 2, !tbaa !10, !alias.scope !67
  %i.dd = sext <4 x i16> %wide.load91 to <4 x i32> ; 2 uses
  %21 = add nsw <4 x i32> %i.dd, %20
  %i.de = add nsw <4 x i32> %21, %19
  %i.df = shl nuw nsw i64 %i.cv, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.df
  %22 = sub nsw <4 x i32> %i.db, %i.cy
  %23 = shl nsw <4 x i32> %22, splat (i32 13)
  %24 = add nsw <4 x i32> %23, splat (i32 32768)
  %25 = ashr <4 x i32> %24, splat (i32 16)
  %i.dh = sub nsw <4 x i32> %20, %i.dd
  %26 = add nsw <4 x i32> %i.dh, %25
  %i.di = shufflevector <4 x i32> %i.de, <4 x i32> %26, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dj = lshr <8 x i32> %i.di, splat (i32 1)
  %interleaved.vec92 = trunc <8 x i32> %i.dj to <8 x i16>
  store <8 x i16> %interleaved.vec92, ptr %i.dg, align 2, !tbaa !10, !alias.scope !68, !noalias !69
  %index.next93 = add nuw i64 %index87, 4         ; 2 uses
  %i.dk = icmp eq i64 %index.next93, %n.vec85
  br i1 %i.dk, label %middle.block94, label %vector.body86, !llvm.loop !59

middle.block94:                                   ; preds = %vector.body86
  %cmp.n95 = icmp eq i64 %i.cl, %n.vec85
  br i1 %cmp.n95, label %._crit_edge, label %.lr.ph.split.us.preheader97

.lr.ph.split.us.preheader97:                      ; preds = %vector.memcheck76, %.lr.ph.split.us.preheader, %middle.block94
  %indvars.iv35.ph = phi i64 [ 1, %vector.memcheck76 ], [ 1, %.lr.ph.split.us.preheader ], [ %i.cu, %middle.block94 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader97, %.lr.ph.split.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph.split.us ], [ %indvars.iv35.ph, %.lr.ph.split.us.preheader97 ] ; 4 uses
  %i.dl = getelementptr [2 x i8], ptr %1, i64 %indvars.iv35 ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -2     ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !10
  %i.do = sext i16 %i.dn to i32
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next36 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !10
  %i.dr = sext i16 %i.dq to i32
  %27 = sub nsw i32 %i.do, %i.dr
  %28 = shl nsw i32 %27, 13
  %29 = add nsw i32 %28, 32768
  %30 = ashr i32 %29, 16
  %31 = load i16, ptr %i.dl, align 2, !tbaa !10
  %32 = sext i16 %31 to i32
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !10
  %i.du = sext i16 %i.dt to i32
  %33 = add nsw i32 %i.du, %32
  %i.dv = add nsw i32 %33, %30
  %i.dw = lshr i32 %i.dv, 1
  %.idx40 = shl nuw nsw i64 %indvars.iv35, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx40 ; 2 uses
  %storemerge144.i.us = trunc i32 %i.dw to i16
  store i16 %storemerge144.i.us, ptr %i.dx, align 2, !tbaa !10
  %i.dy = load i16, ptr %i.dp, align 2, !tbaa !10
  %i.dz = sext i16 %i.dy to i32
  %i.ea = load i16, ptr %i.dm, align 2, !tbaa !10
  %i.eb = sext i16 %i.ea to i32
  %34 = sub nsw i32 %i.dz, %i.eb
  %35 = shl nsw i32 %34, 13
  %36 = add nsw i32 %35, 32768
  %37 = ashr i32 %36, 16
  %38 = load i16, ptr %i.dl, align 2, !tbaa !10
  %39 = sext i16 %38 to i32
  %i.ec = load i16, ptr %i.ds, align 2, !tbaa !10
  %i.ed = sext i16 %i.ec to i32
  %i.ee = sub nsw i32 %39, %i.ed
  %40 = add nsw i32 %i.ee, %37
  %i.ef = lshr i32 %40, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %storemerge147.i.us = trunc i32 %i.ef to i16
  store i16 %storemerge147.i.us, ptr %i.eg, align 2, !tbaa !10
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !60

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader98, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader98 ] ; 4 uses
  %i.eh = getelementptr [2 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -2     ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !10
  %i.ek = sext i16 %i.ej to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !10
  %i.en = sext i16 %i.em to i32
  %41 = sub nsw i32 %i.ek, %i.en
  %42 = shl nsw i32 %41, 13
  %43 = add nsw i32 %42, 32768
  %44 = ashr i32 %43, 16
  %45 = load i16, ptr %i.eh, align 2, !tbaa !10
  %46 = sext i16 %45 to i32
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !10
  %i.eq = sext i16 %i.ep to i32
  %47 = add nsw i32 %i.eq, %46
  %i.er = add nsw i32 %47, %44
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.et = shl i32 %i.er, 15
  %i.eu = ashr i32 %i.et, 16                      ; 3 uses
  %i.ev = and i32 %i.eu, %notmask.i643
  %.not.i7 = icmp eq i32 %i.ev, 0
  %isnotneg.inv.i8 = icmp slt i32 %i.eu, 0
  %i.ew = select i1 %isnotneg.inv.i8, i32 0, i32 %i.ax
  %.0.i9 = select i1 %.not.i7, i32 %i.eu, i32 %i.ew
  %storemerge144.i = trunc i32 %.0.i9 to i16
  store i16 %storemerge144.i, ptr %i.es, align 2, !tbaa !10
  %i.ex = load i16, ptr %i.el, align 2, !tbaa !10
  %i.ey = sext i16 %i.ex to i32
  %i.ez = load i16, ptr %i.ei, align 2, !tbaa !10
  %i.fa = sext i16 %i.ez to i32
  %48 = sub nsw i32 %i.ey, %i.fa
  %49 = shl nsw i32 %48, 13
  %50 = add nsw i32 %49, 32768
  %51 = ashr i32 %50, 16
  %52 = load i16, ptr %i.eh, align 2, !tbaa !10
  %53 = sext i16 %52 to i32
  %i.fb = load i16, ptr %i.eo, align 2, !tbaa !10
  %i.fc = sext i16 %i.fb to i32
  %i.fd = sub nsw i32 %53, %i.fc
  %54 = add nsw i32 %i.fd, %51
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.ff = shl i32 %54, 15
  %i.fg = ashr i32 %i.ff, 16                      ; 3 uses
  %i.fh = and i32 %i.fg, %notmask.i643
  %.not.i4 = icmp eq i32 %i.fh, 0
  %isnotneg.inv.i = icmp slt i32 %i.fg, 0
  %i.fi = select i1 %isnotneg.inv.i, i32 0, i32 %i.ax
  %.0.i5 = select i1 %.not.i4, i32 %i.fg, i32 %i.fi
  %storemerge147.i = trunc i32 %.0.i5 to i16
  store i16 %storemerge147.i, ptr %i.fe, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block94, %.thread, %bb.d
  %.0.i.lcssa = phi i32 [ %i.ap, %middle.block94 ], [ 1, %.thread ], [ 1, %bb.d ], [ %i.av, %middle.block ], [ %i.ap, %.lr.ph.split.us ], [ %i.av, %.lr.ph.split ] ; 2 uses
  %i.fj = zext nneg i32 %.0.i.lcssa to i64        ; 2 uses
  %i.fk = getelementptr [2 x i8], ptr %1, i64 %i.fj ; 4 uses
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !10
  %i.fm = sext i16 %i.fl to i32
  %i.fn = mul nsw i32 %i.fm, 5
  %i.fo = getelementptr i8, ptr %i.fk, i64 -2     ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !10
  %i.fq = sext i16 %i.fp to i32
  %i.fr = shl nsw i32 %i.fq, 2
  %i.fs = add nsw i32 %i.fr, %i.fn
  %i.ft = getelementptr i8, ptr %i.fk, i64 -4     ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !10
  %i.fv = sext i16 %i.fu to i32
  %i.fw = sub nsw i32 %i.fs, %i.fv
  %i.fx = shl i32 %i.fw, 13
  %i.fy = add i32 %i.fx, 32768
  %i.fz = ashr i32 %i.fy, 16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.fj ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !10
  %i.gc = sext i16 %i.gb to i32
  %i.gd = add nsw i32 %i.fz, %i.gc
  %i.ge = lshr i32 %i.gd, 1                       ; 2 uses
  %i.gf = shl nuw nsw i32 %.0.i.lcssa, 1
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gg ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %sext137.i.a = shl i32 %i.ge, 16
  %i.gi = ashr exact i32 %sext137.i.a, 16         ; 3 uses
  %notmask.i14 = shl nsw i32 -1, %4               ; 2 uses
  %i.gj = and i32 %i.gi, %notmask.i14
  %.not.i15 = icmp eq i32 %i.gj, 0
  %i.gk = xor i32 %notmask.i14, -1
  %isnotneg.inv.i16 = icmp slt i32 %i.gi, 0
  %i.gl = select i1 %isnotneg.inv.i16, i32 0, i32 %i.gk
  %.0.i17 = select i1 %.not.i15, i32 %i.gi, i32 %i.gl
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %storemerge138.in.i.a = phi i32 [ %.0.i17, %bb.e ], [ %i.ge, %._crit_edge ]
  %storemerge138.i.a = trunc i32 %storemerge138.in.i.a to i16
  store i16 %storemerge138.i.a, ptr %i.gh, align 2, !tbaa !10
  %i.gm = load i16, ptr %i.fk, align 2, !tbaa !10
  %i.gn = sext i16 %i.gm to i32
  %i.go = mul nsw i32 %i.gn, 11
  %i.gp = load i16, ptr %i.fo, align 2, !tbaa !10
  %i.gq = sext i16 %i.gp to i32
  %i.gr = shl nsw i32 %i.gq, 2
  %i.gs = sub nsw i32 %i.go, %i.gr
  %i.gt = load i16, ptr %i.ft, align 2, !tbaa !10
  %i.gu = sext i16 %i.gt to i32
  %i.gv = add nsw i32 %i.gs, %i.gu
  %i.gw = shl i32 %i.gv, 13
  %i.gx = add i32 %i.gw, 32768
  %i.gy = ashr i32 %i.gx, 16
  %i.gz = load i16, ptr %i.ga, align 2, !tbaa !10
  %i.ha = sext i16 %i.gz to i32
  %i.hb = sub nsw i32 %i.gy, %i.ha
  %i.hc = lshr i32 %i.hb, 1                       ; 2 uses
  br i1 %.not.i, label %filter.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sext140.i = shl i32 %i.hc, 16
  %i.hd = ashr exact i32 %sext140.i, 16           ; 3 uses
  %notmask.i10 = shl nsw i32 -1, %4               ; 2 uses
  %i.he = and i32 %i.hd, %notmask.i10
  %.not.i11 = icmp eq i32 %i.he, 0
  %i.hf = xor i32 %notmask.i10, -1
  %isnotneg.inv.i12 = icmp slt i32 %i.hd, 0
  %i.hg = select i1 %isnotneg.inv.i12, i32 0, i32 %i.hf
  %.0.i13 = select i1 %.not.i11, i32 %i.hd, i32 %i.hg
  br label %filter.exit

filter.exit:                                      ; preds = %bb.f, %bb.g
  %storemerge141.in.i = phi i32 [ %.0.i13, %bb.g ], [ %i.hc, %bb.f ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %storemerge141.i = trunc i32 %storemerge141.in.i to i16
  store i16 %storemerge141.i, ptr %i.hh, align 2, !tbaa !10
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"CFHDDSPContext", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!15, !14, i64 16}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !11, !12, !13}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11}
!26 = !{!20}
!27 = !{!21}
!28 = !{!22}
!29 = !{!20, !21}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !11, !12, !13}
!37 = distinct !{!37, i1 false, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !11, !12, !13}
!42 = distinct !{!42, !11, !12}
!43 = distinct !{!43, !11, !12}
!44 = !{!33}
!45 = !{!34}
!46 = !{!35}
!47 = !{!38}
!48 = !{!39}
!49 = !{!40}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !11, !12, !13}
!55 = distinct !{!55, i1 false, !"LVerDomain"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !55}
!59 = distinct !{!59, !11, !12, !13}
!60 = distinct !{!60, !11, !12}
!61 = distinct !{!61, !11, !12}
!62 = !{!51}
!63 = !{!52}
!64 = !{!53}
!65 = !{!51, !52}
!66 = !{!56}
!67 = !{!57}
!68 = !{!58}
!69 = !{!56, !57}
end_hunk_0
