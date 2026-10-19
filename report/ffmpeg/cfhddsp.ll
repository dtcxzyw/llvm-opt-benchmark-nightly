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
  br i1 %i.a, label %.lr.ph26, label %._crit_edge

.lr.ph26:                                         ; preds = %bb.a
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
  %scevgep32 = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = mul i64 %3, %i.e
  %i.j = add i64 %i.i, %wide.trip.count
  %i.k = shl i64 %i.j, 1
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %scevgep33 = getelementptr i8, ptr %i.l, i64 2
  %scevgep34 = getelementptr i8, ptr %4, i64 2
  %i.m = mul i64 %5, %i.e
  %i.n = add i64 %i.m, %wide.trip.count
  %i.o = shl i64 %i.n, 1
  %scevgep35 = getelementptr i8, ptr %4, i64 %i.o
  %i.p = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep33
  %bound1 = icmp ult ptr %2, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %.idx, 0
  %i.q = or i1 %found.conflict, %stride.check
  %.mask = and i64 %3, 4611686018427387904
  %stride.check36 = icmp ne i64 %.mask, 0
  %i.r = or i1 %i.q, %stride.check36
  %bound037 = icmp ult ptr %scevgep, %scevgep35
  %bound138 = icmp ult ptr %scevgep34, %scevgep32
  %found.conflict39 = and i1 %bound037, %bound138
  %stride.check40 = icmp slt i64 %.idx, 0
  %8 = or i1 %found.conflict39, %stride.check40
  %.mask45 = and i64 %5, 4611686018427387904
  %stride.check41 = icmp ne i64 %.mask45, 0
  %i.s = or i1 %8, %stride.check41
  %conflict.rdx = or i1 %i.r, %i.s
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.t = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %filter.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph26, %filter.exit
  %.025 = phi i32 [ 0, %.lr.ph26 ], [ %i.fg, %filter.exit ]
  %.01224 = phi ptr [ %0, %.lr.ph26 ], [ %i.ff, %filter.exit ] ; 6 uses
  %.01323 = phi ptr [ %2, %.lr.ph26 ], [ %i.fd, %filter.exit ] ; 10 uses
  %.01422 = phi ptr [ %4, %.lr.ph26 ], [ %i.fe, %filter.exit ] ; 6 uses
  %i.u = load i16, ptr %.01323, align 2, !tbaa !10
  %i.v = sext i16 %i.u to i32
  %i.w = mul nsw i32 %i.v, 11
  %i.x = getelementptr inbounds nuw i8, ptr %.01323, i64 2 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !10
  %i.z = sext i16 %i.y to i32
  %i.aa = shl nsw i32 %i.z, 2
  %i.ab = sub nsw i32 %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.01323, i64 4 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !10
  %i.ae = sext i16 %i.ad to i32
  %i.af = add nsw i32 %i.ab, %i.ae
  %i.ag = shl i32 %i.af, 13
  %i.ah = add i32 %i.ag, 32768
  %i.ai = ashr i32 %i.ah, 16
  %i.aj = load i16, ptr %.01422, align 2, !tbaa !10
  %i.ak = sext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ai, %i.ak
  %i.am = lshr i32 %i.al, 1
  %storemerge.i = trunc i32 %i.am to i16
  store i16 %storemerge.i, ptr %.01224, align 2, !tbaa !10
  %i.an = load i16, ptr %.01323, align 2, !tbaa !10
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, 5
  %i.aq = load i16, ptr %i.x, align 2, !tbaa !10
  %i.ar = sext i16 %i.aq to i32
  %i.as = shl nsw i32 %i.ar, 2
  %i.at = add nsw i32 %i.as, %i.ap
  %i.au = load i16, ptr %i.ac, align 2, !tbaa !10
  %i.av = sext i16 %i.au to i32
  %i.aw = sub nsw i32 %i.at, %i.av
  %i.ax = shl i32 %i.aw, 13
  %i.ay = add i32 %i.ax, 32768
  %i.az = ashr i32 %i.ay, 16
  %i.ba = load i16, ptr %.01422, align 2, !tbaa !10
  %i.bb = sext i16 %i.ba to i32
  %i.bc = sub nsw i32 %i.az, %i.bb
  %i.bd = lshr i32 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.01224, i64 2
  %storemerge134.i = trunc i32 %i.bd to i16
  store i16 %storemerge134.i, ptr %i.be, align 2, !tbaa !10
  br i1 %i.c, label %.lr.ph.preheader, label %filter.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.preheader46, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bf = or disjoint i64 %index, 1               ; 3 uses
  %i.bg = getelementptr [2 x i8], ptr %.01323, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  %wide.load = load <4 x i16>, ptr %i.bh, align 2, !tbaa !10, !alias.scope !26
  %i.bi = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.01323, i64 %index
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %wide.load42.a = load <4 x i16>, ptr %i.bk, align 2, !tbaa !10, !alias.scope !26
  %i.bl = sext <4 x i16> %wide.load42.a to <4 x i32> ; 2 uses
  %i.bm = add nsw <4 x i32> %i.bi, splat (i32 4)
  %i.bn = sub nsw <4 x i32> %i.bm, %i.bl
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 3)
  %wide.load43.a = load <4 x i16>, ptr %i.bg, align 2, !tbaa !10, !alias.scope !26
  %i.bp = sext <4 x i16> %wide.load43.a to <4 x i32> ; 2 uses
  %i.bq = add nsw <4 x i32> %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.01422, i64 %i.bf
  %wide.load44 = load <4 x i16>, ptr %i.br, align 2, !tbaa !10, !alias.scope !27
  %i.bs = sext <4 x i16> %wide.load44 to <4 x i32> ; 2 uses
  %i.bt = add nsw <4 x i32> %i.bq, %i.bs
  %i.bu = shl nuw nsw i64 %i.bf, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.01224, i64 %i.bu
  %i.bw = add nsw <4 x i32> %i.bl, splat (i32 4)
  %i.bx = sub nsw <4 x i32> %i.bw, %i.bi
  %i.by = lshr <4 x i32> %i.bx, splat (i32 3)
  %i.bz = add nsw <4 x i32> %i.by, %i.bp
  %i.ca = sub nsw <4 x i32> %i.bz, %i.bs
  %i.cb = shufflevector <4 x i32> %i.bt, <4 x i32> %i.ca, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cc = lshr <8 x i32> %i.cb, splat (i32 1)
  %interleaved.vec = trunc <8 x i32> %i.cc to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.bv, align 2, !tbaa !10, !alias.scope !28, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %filter.exit, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %middle.block ], [ 1, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader46 ] ; 4 uses
  %i.ce = getelementptr [2 x i8], ptr %.01323, i64 %indvars.iv ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -2     ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !10
  %i.ch = sext i16 %i.cg to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.01323, i64 %indvars.iv.next ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !10
  %i.ck = sext i16 %i.cj to i32
  %i.cl = add nsw i32 %i.ch, 4
  %i.cm = sub nsw i32 %i.cl, %i.ck
  %i.cn = lshr i32 %i.cm, 3
  %i.co = load i16, ptr %i.ce, align 2, !tbaa !10
  %i.cp = sext i16 %i.co to i32
  %i.cq = add nsw i32 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.01422, i64 %indvars.iv ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !10
  %i.ct = sext i16 %i.cs to i32
  %i.cu = add nsw i32 %i.cq, %i.ct
  %i.cv = lshr i32 %i.cu, 1
  %.idx31 = shl nuw nsw i64 %indvars.iv, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %.01224, i64 %.idx31 ; 2 uses
  %storemerge140.i = trunc i32 %i.cv to i16
  store i16 %storemerge140.i, ptr %i.cw, align 2, !tbaa !10
  %i.cx = load i16, ptr %i.ci, align 2, !tbaa !10
  %i.cy = sext i16 %i.cx to i32
  %i.cz = load i16, ptr %i.cf, align 2, !tbaa !10
  %i.da = sext i16 %i.cz to i32
  %i.db = add nsw i32 %i.cy, 4
  %i.dc = sub nsw i32 %i.db, %i.da
  %i.dd = lshr i32 %i.dc, 3
  %i.de = load i16, ptr %i.ce, align 2, !tbaa !10
  %i.df = sext i16 %i.de to i32
  %i.dg = add nsw i32 %i.dd, %i.df
  %i.dh = load i16, ptr %i.cr, align 2, !tbaa !10
  %i.di = sext i16 %i.dh to i32
  %i.dj = sub nsw i32 %i.dg, %i.di
  %i.dk = lshr i32 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %storemerge142.i = trunc i32 %i.dk to i16
  store i16 %storemerge142.i, ptr %i.dl, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %filter.exit, label %.lr.ph, !llvm.loop !24

filter.exit:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0.i.lcssa = phi i32 [ 1, %bb.b ], [ %i.b, %middle.block ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.dm = zext nneg i32 %.0.i.lcssa to i64        ; 2 uses
  %i.dn = getelementptr [2 x i8], ptr %.01323, i64 %i.dm ; 4 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !10
  %i.dp = sext i16 %i.do to i32
  %i.dq = mul nsw i32 %i.dp, 5
  %i.dr = getelementptr i8, ptr %i.dn, i64 -2     ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !10
  %i.dt = sext i16 %i.ds to i32
  %i.du = shl nsw i32 %i.dt, 2
  %i.dv = add nsw i32 %i.du, %i.dq
  %i.dw = getelementptr i8, ptr %i.dn, i64 -4     ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !10
  %i.dy = sext i16 %i.dx to i32
  %i.dz = sub nsw i32 %i.dv, %i.dy
  %i.ea = shl i32 %i.dz, 13
  %i.eb = add i32 %i.ea, 32768
  %i.ec = ashr i32 %i.eb, 16
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.01422, i64 %i.dm ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.ef = sext i16 %i.ee to i32
  %i.eg = add nsw i32 %i.ec, %i.ef
  %i.eh = lshr i32 %i.eg, 1
  %i.ei = shl nuw nsw i32 %.0.i.lcssa, 1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %.01224, i64 %i.ej ; 2 uses
  %storemerge136.i = trunc i32 %i.eh to i16
  store i16 %storemerge136.i, ptr %i.ek, align 2, !tbaa !10
  %i.el = load i16, ptr %i.dn, align 2, !tbaa !10
  %i.em = sext i16 %i.el to i32
  %i.en = mul nsw i32 %i.em, 11
  %i.eo = load i16, ptr %i.dr, align 2, !tbaa !10
  %i.ep = sext i16 %i.eo to i32
  %i.eq = shl nsw i32 %i.ep, 2
  %i.er = sub nsw i32 %i.en, %i.eq
  %i.es = load i16, ptr %i.dw, align 2, !tbaa !10
  %i.et = sext i16 %i.es to i32
  %i.eu = add nsw i32 %i.er, %i.et
  %i.ev = shl i32 %i.eu, 13
  %i.ew = add i32 %i.ev, 32768
  %i.ex = ashr i32 %i.ew, 16
  %i.ey = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.ez = sext i16 %i.ey to i32
  %i.fa = sub nsw i32 %i.ex, %i.ez
  %i.fb = lshr i32 %i.fa, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %storemerge138.i = trunc i32 %i.fb to i16
  store i16 %storemerge138.i, ptr %i.fc, align 2, !tbaa !10
  %i.fd = getelementptr inbounds [2 x i8], ptr %.01323, i64 %3
  %i.fe = getelementptr inbounds [2 x i8], ptr %.01422, i64 %5
end_hunk_0
