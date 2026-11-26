Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cfhddsp?download=true
begin_hunk_0_@horiz_filter:bb.a
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
  br i1 %brmerge, label %.lr.ph.preheader54, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bf = or disjoint i64 %index, 1               ; 3 uses
  %i.bg = getelementptr [2 x i8], ptr %.01323, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  %wide.load = load <4 x i16>, ptr %i.bh, align 2, !tbaa !10, !alias.scope !26
  %i.bi = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.01323, i64 %index
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %wide.load50 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !10, !alias.scope !26
  %i.bl = sext <4 x i16> %wide.load50 to <4 x i32> ; 2 uses
  %i.bm = add nsw <4 x i32> %i.bi, splat (i32 4)
  %i.bn = sub nsw <4 x i32> %i.bm, %i.bl
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 3)
  %wide.load51 = load <4 x i16>, ptr %i.bg, align 2, !tbaa !10, !alias.scope !26
  %i.bp = sext <4 x i16> %wide.load51 to <4 x i32> ; 2 uses
  %i.bq = add nsw <4 x i32> %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.01422, i64 %i.bf
  %wide.load52 = load <4 x i16>, ptr %i.br, align 2, !tbaa !10, !alias.scope !27
  %i.bs = sext <4 x i16> %wide.load52 to <4 x i32> ; 2 uses
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
  br i1 %cmp.n, label %filter.exit, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %middle.block ], [ 1, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader54, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader54 ] ; 4 uses
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
  %i.ff = getelementptr inbounds i8, ptr %.01224, i64 %.idx
  %i.fg = add nuw nsw i32 %.025, 1                ; 2 uses
  %exitcond29.not = icmp eq i32 %i.fg, %7
  br i1 %exitcond29.not, label %._crit_edge, label %bb.b, !llvm.loop !25
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vert_filter(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph26, label %._crit_edge

.lr.ph26:                                         ; preds = %bb.a
  %.idx.i = shl nsw i64 %3, 2
  %i.b = add i32 %7, -1                           ; 3 uses
  %i.c = icmp sgt i32 %7, 2
  %wide.trip.count = zext i32 %i.b to i64         ; 4 uses
  %8 = add nsw i32 %6, -1
  %wide.trip.count.a = zext i32 %8 to i64         ; 2 uses
  %9 = shl nuw nsw i64 %wide.trip.count.a, 1
  %10 = add nuw nsw i64 %wide.trip.count, %wide.trip.count.a
  %11 = shl nuw nsw i64 %10, 1                    ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %11
  %scevgep40 = getelementptr i8, ptr %4, i64 2
  %12 = getelementptr i8, ptr %2, i64 %11
  %scevgep41 = getelementptr i8, ptr %12, i64 2
  %13 = shl nuw nsw i64 %wide.trip.count, 2
  %14 = getelementptr i8, ptr %0, i64 %13
  %scevgep42 = getelementptr i8, ptr %14, i64 %9  ; 2 uses
  %scevgep43 = getelementptr i8, ptr %0, i64 4    ; 2 uses
  %15 = add nsw i64 %wide.trip.count, -1          ; 3 uses
  %min.iters.check = icmp ult i64 %15, 4
  %ident.check = icmp ne i64 %3, 1
  %ident.check31 = icmp ne i64 %5, 1
  %ident.check32 = icmp ne i64 %1, 1
  %16 = or i1 %ident.check, %ident.check31
  %17 = or i1 %16, %ident.check32
  %bound0 = icmp ult ptr %scevgep43, %scevgep41
  %bound1 = icmp ult ptr %2, %scevgep42
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %scevgep43, %scevgep
  %bound145 = icmp ult ptr %scevgep40, %scevgep42
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  %n.vec = and i64 %15, -4                        ; 3 uses
  %18 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %15, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %filter.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph26, %filter.exit
  %.025 = phi i32 [ 0, %.lr.ph26 ], [ %i.el, %filter.exit ]
  %.01224 = phi ptr [ %0, %.lr.ph26 ], [ %i.ek, %filter.exit ] ; 8 uses
  %.01323 = phi ptr [ %2, %.lr.ph26 ], [ %i.ei, %filter.exit ] ; 14 uses
  %.01422 = phi ptr [ %4, %.lr.ph26 ], [ %i.ej, %filter.exit ] ; 6 uses
  %i.d = load i16, ptr %.01323, align 2, !tbaa !10
  %i.e = sext i16 %i.d to i32
  %i.f = mul nsw i32 %i.e, 11
  %i.g = getelementptr inbounds [2 x i8], ptr %.01323, i64 %3 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = sext i16 %i.h to i32
  %i.j = shl nsw i32 %i.i, 2
  %i.k = sub nsw i32 %i.f, %i.j
  %i.l = getelementptr inbounds i8, ptr %.01323, i64 %.idx.i ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !10
  %i.n = sext i16 %i.m to i32
  %i.o = add nsw i32 %i.k, %i.n
  %i.p = shl i32 %i.o, 13
  %i.q = add i32 %i.p, 32768
  %i.r = ashr i32 %i.q, 16
  %i.s = load i16, ptr %.01422, align 2, !tbaa !10
  %i.t = sext i16 %i.s to i32
  %i.u = add nsw i32 %i.r, %i.t
  %i.v = lshr i32 %i.u, 1
  %storemerge.i = trunc i32 %i.v to i16
  store i16 %storemerge.i, ptr %.01224, align 2, !tbaa !10
  %i.w = load i16, ptr %.01323, align 2, !tbaa !10
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
  %i.aj = load i16, ptr %.01422, align 2, !tbaa !10
  %i.ak = sext i16 %i.aj to i32
  %i.al = sub nsw i32 %i.ai, %i.ak
  %i.am = lshr i32 %i.al, 1
  %i.an = getelementptr inbounds [2 x i8], ptr %.01224, i64 %1
  %storemerge134.i = trunc i32 %i.am to i16
  store i16 %storemerge134.i, ptr %i.an, align 2, !tbaa !10
  br i1 %i.c, label %.lr.ph.preheader, label %filter.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %brmerge = or i1 %min.iters.check, %17
  %brmerge51 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge51, label %.lr.ph.preheader50, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %19 = or disjoint i64 %index, 1                 ; 3 uses
  %20 = getelementptr inbounds [2 x i8], ptr %.01323, i64 %index
  %wide.load = load <4 x i16>, ptr %20, align 2, !tbaa !10, !alias.scope !37
  %21 = sext <4 x i16> %wide.load to <4 x i32>    ; 2 uses
  %22 = getelementptr [2 x i8], ptr %.01323, i64 %index
  %23 = getelementptr i8, ptr %22, i64 4
  %wide.load47 = load <4 x i16>, ptr %23, align 2, !tbaa !10, !alias.scope !37
  %24 = sext <4 x i16> %wide.load47 to <4 x i32>  ; 2 uses
  %25 = add nsw <4 x i32> %21, splat (i32 4)
  %26 = sub nsw <4 x i32> %25, %24
  %27 = lshr <4 x i32> %26, splat (i32 3)
  %28 = getelementptr inbounds [2 x i8], ptr %.01323, i64 %19
  %wide.load48 = load <4 x i16>, ptr %28, align 2, !tbaa !10, !alias.scope !37
  %29 = sext <4 x i16> %wide.load48 to <4 x i32>  ; 2 uses
  %30 = add nsw <4 x i32> %27, %29
  %31 = getelementptr inbounds [2 x i8], ptr %.01422, i64 %19
  %wide.load49 = load <4 x i16>, ptr %31, align 2, !tbaa !10, !alias.scope !38
  %32 = sext <4 x i16> %wide.load49 to <4 x i32>  ; 2 uses
  %33 = add nsw <4 x i32> %30, %32
  %.idx = shl nsw i64 %19, 2
  %34 = getelementptr inbounds i8, ptr %.01224, i64 %.idx
  %35 = add nsw <4 x i32> %24, splat (i32 4)
  %36 = sub nsw <4 x i32> %35, %21
  %37 = lshr <4 x i32> %36, splat (i32 3)
  %38 = add nsw <4 x i32> %37, %29
  %39 = sub nsw <4 x i32> %38, %32
  %40 = shufflevector <4 x i32> %33, <4 x i32> %39, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %41 = lshr <8 x i32> %40, splat (i32 1)
  %interleaved.vec = trunc <8 x i32> %41 to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %34, align 2, !tbaa !10, !alias.scope !39, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %42 = icmp eq i64 %index.next, %n.vec
  br i1 %42, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %filter.exit, label %.lr.ph.preheader50

.lr.ph.preheader50:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %18, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader50, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader50 ] ; 5 uses
  %i.ao = add nsw i64 %indvars.iv, -1
  %i.ap = mul nsw i64 %3, %i.ao
  %i.aq = getelementptr inbounds [2 x i8], ptr %.01323, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !10
  %i.as = sext i16 %i.ar to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.at = mul nsw i64 %3, %indvars.iv.next
  %i.au = getelementptr inbounds [2 x i8], ptr %.01323, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !10
  %i.aw = sext i16 %i.av to i32
  %i.ax = add nsw i32 %i.as, 4
  %i.ay = sub nsw i32 %i.ax, %i.aw
  %i.az = lshr i32 %i.ay, 3
  %i.ba = mul nsw i64 %3, %indvars.iv
  %i.bb = getelementptr inbounds [2 x i8], ptr %.01323, i64 %i.ba ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !10
  %i.bd = sext i16 %i.bc to i32
  %i.be = add nsw i32 %i.az, %i.bd
  %i.bf = mul nsw i64 %5, %indvars.iv
  %i.bg = getelementptr inbounds [2 x i8], ptr %.01422, i64 %i.bf ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !10
  %i.bi = sext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.be, %i.bi
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bm = mul nsw i64 %1, %i.bl
  %i.bn = getelementptr inbounds [2 x i8], ptr %.01224, i64 %i.bm
  %storemerge140.i = trunc i32 %i.bk to i16
  store i16 %storemerge140.i, ptr %i.bn, align 2, !tbaa !10
  %i.bo = load i16, ptr %i.au, align 2, !tbaa !10
  %i.bp = sext i16 %i.bo to i32
  %i.bq = load i16, ptr %i.aq, align 2, !tbaa !10
  %i.br = sext i16 %i.bq to i32
  %i.bs = add nsw i32 %i.bp, 4
  %i.bt = sub nsw i32 %i.bs, %i.br
  %i.bu = lshr i32 %i.bt, 3
  %i.bv = load i16, ptr %i.bb, align 2, !tbaa !10
  %i.bw = sext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bu, %i.bw
  %i.by = load i16, ptr %i.bg, align 2, !tbaa !10
  %i.bz = sext i16 %i.by to i32
  %i.ca = sub nsw i32 %i.bx, %i.bz
  %i.cb = lshr i32 %i.ca, 1
  %i.cc = or disjoint i64 %i.bl, 1
  %i.cd = mul nsw i64 %1, %i.cc
  %i.ce = getelementptr inbounds [2 x i8], ptr %.01224, i64 %i.cd
  %storemerge142.i = trunc i32 %i.cb to i16
  store i16 %storemerge142.i, ptr %i.ce, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %filter.exit, label %.lr.ph, !llvm.loop !35

filter.exit:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0.i.lcssa = phi i32 [ 1, %bb.b ], [ %i.b, %middle.block ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.cf = zext nneg i32 %.0.i.lcssa to i64        ; 2 uses
  %i.cg = mul nsw i64 %3, %i.cf
  %i.ch = getelementptr inbounds [2 x i8], ptr %.01323, i64 %i.cg ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !10
  %i.cj = sext i16 %i.ci to i32
  %i.ck = mul nsw i32 %i.cj, 5
  %i.cl = add nsw i32 %.0.i.lcssa, -1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = mul nsw i64 %3, %i.cm
  %i.co = getelementptr inbounds [2 x i8], ptr %.01323, i64 %i.cn ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !10
  %i.cq = sext i16 %i.cp to i32
  %i.cr = shl nsw i32 %i.cq, 2
  %i.cs = add nsw i32 %i.cr, %i.ck
  %i.ct = add nsw i32 %.0.i.lcssa, -2
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %3, %i.cu
  %i.cw = getelementptr inbounds [2 x i8], ptr %.01323, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !10
  %i.cy = sext i16 %i.cx to i32
  %i.cz = sub nsw i32 %i.cs, %i.cy
  %i.da = shl i32 %i.cz, 13
  %i.db = add i32 %i.da, 32768
  %i.dc = ashr i32 %i.db, 16
  %i.dd = mul nsw i64 %5, %i.cf
  %i.de = getelementptr inbounds [2 x i8], ptr %.01422, i64 %i.dd ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !10
  %i.dg = sext i16 %i.df to i32
  %i.dh = add nsw i32 %i.dc, %i.dg
  %i.di = lshr i32 %i.dh, 1
  %i.dj = shl nuw nsw i32 %.0.i.lcssa, 1          ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = mul nsw i64 %1, %i.dk
  %i.dm = getelementptr inbounds [2 x i8], ptr %.01224, i64 %i.dl
  %storemerge136.i = trunc i32 %i.di to i16
  store i16 %storemerge136.i, ptr %i.dm, align 2, !tbaa !10
  %i.dn = load i16, ptr %i.ch, align 2, !tbaa !10
  %i.do = sext i16 %i.dn to i32
  %i.dp = mul nsw i32 %i.do, 11
  %i.dq = load i16, ptr %i.co, align 2, !tbaa !10
  %i.dr = sext i16 %i.dq to i32
  %i.ds = shl nsw i32 %i.dr, 2
  %i.dt = sub nsw i32 %i.dp, %i.ds
  %i.du = load i16, ptr %i.cw, align 2, !tbaa !10
  %i.dv = sext i16 %i.du to i32
  %i.dw = add nsw i32 %i.dt, %i.dv
  %i.dx = shl i32 %i.dw, 13
  %i.dy = add i32 %i.dx, 32768
  %i.dz = ashr i32 %i.dy, 16
  %i.ea = load i16, ptr %i.de, align 2, !tbaa !10
  %i.eb = sext i16 %i.ea to i32
  %i.ec = sub nsw i32 %i.dz, %i.eb
  %i.ed = lshr i32 %i.ec, 1
  %i.ee = or disjoint i32 %i.dj, 1
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = mul nsw i64 %1, %i.ef
  %i.eh = getelementptr inbounds [2 x i8], ptr %.01224, i64 %i.eg
  %storemerge138.i = trunc i32 %i.ed to i16
  store i16 %storemerge138.i, ptr %i.eh, align 2, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %.01323, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.01422, i64 2
  %i.ek = getelementptr inbounds nuw i8, ptr %.01224, i64 2
  %i.el = add nuw nsw i32 %.025, 1                ; 2 uses
  %exitcond29.not = icmp eq i32 %i.el, %6
  br i1 %exitcond29.not, label %._crit_edge, label %bb.b, !llvm.loop !36
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
  %storemerge134.i = trunc i32 %i.an to i16
  store i16 %storemerge134.i, ptr %i.ao, align 2, !tbaa !10
  %i.ap = add i32 %3, -1                          ; 3 uses
  %i.aq = icmp sgt i32 %3, 2
  br i1 %i.aq, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.c
  %sext133.i = shl i32 %i.an, 16
  %i.ar = ashr exact i32 %sext133.i, 16           ; 2 uses
  %notmask.i18 = shl nsw i32 -1, %4               ; 2 uses
  %i.as = and i32 %i.ar, %notmask.i18
  %.not.i19 = icmp eq i32 %i.as, 0
  %i.at = xor i32 %notmask.i18, -1
  %isnotneg.inv.i20 = icmp slt i32 %i.ar, 0
  %i.au = select i1 %isnotneg.inv.i20, i32 0, i32 %i.at
  %.0.i21 = select i1 %.not.i19, i32 %i.an, i32 %i.au
  %storemerge134.i43 = trunc i32 %.0.i21 to i16
  store i16 %storemerge134.i43, ptr %i.ao, align 2, !tbaa !10
  %i.av = add i32 %3, -1                          ; 3 uses
  %i.aw = icmp sgt i32 %3, 2
  br i1 %i.aw, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %notmask.i644 = shl nsw i32 -1, %4              ; 4 uses
  %i.ax = xor i32 %notmask.i644, -1               ; 3 uses
  %wide.trip.count = zext i32 %i.av to i64        ; 5 uses
  %i.ay = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader112, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.preheader
  %i.az = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %mul.result.mask109 = and i64 %i.az, 1073741823
  %i.ba = icmp eq i64 %mul.result.mask109, 1073741823
  %i.bb = icmp ugt i64 %i.az, 1073741823
  %i.bc = or i1 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.split.preheader112, label %vector.memcheck

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
  %bound055 = icmp ult ptr %i.bk, %i.bj
  %bound156 = icmp ult ptr %i.bg, %i.bl
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  br i1 %conflict.rdx, label %.lr.ph.split.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, -8                      ; 3 uses
  %i.bm = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %notmask.i644, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert58 = insertelement <8 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat59 = shufflevector <8 x i32> %broadcast.splatinsert58, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = or disjoint i64 %index, 1               ; 3 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 8 uses
  %i.bp = getelementptr [2 x i8], ptr %1, i64 %i.bn ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -2     ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bq, align 2, !tbaa !10, !alias.scope !53, !noalias !54
  %i.br = sext <8 x i16> %wide.load to <8 x i32>
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %wide.load60 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !10, !alias.scope !53, !noalias !54
  %i.bu = sext <8 x i16> %wide.load60 to <8 x i32>
  %i.bv = add nsw <8 x i32> %i.br, splat (i32 4)
  %i.bw = sub nsw <8 x i32> %i.bv, %i.bu
  %i.bx = lshr <8 x i32> %i.bw, splat (i32 3)
  %wide.load61 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !10, !alias.scope !53, !noalias !54
  %i.by = sext <8 x i16> %wide.load61 to <8 x i32>
  %i.bz = add nsw <8 x i32> %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bn ; 2 uses
  %wide.load62 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !10, !alias.scope !55, !noalias !54
  %i.cb = sext <8 x i16> %wide.load62 to <8 x i32>
  %i.cc = add nsw <8 x i32> %i.bz, %i.cb
  %i.cd = shl i32 %i.bo, 2                        ; 2 uses
  %i.ce = shl i32 %i.bo, 2
  %i.cf = add nuw nsw i32 %i.ce, 4                ; 2 uses
  %i.cg = shl i32 %i.bo, 2                        ; 2 uses
  %i.ch = or disjoint i32 %i.cg, 8
  %i.ci = shl i32 %i.bo, 2
  %i.cj = add nuw nsw i32 %i.ci, 12               ; 2 uses
  %i.ck = shl i32 %i.bo, 2                        ; 2 uses
  %i.cl = or disjoint i32 %i.ck, 16
  %i.cm = shl i32 %i.bo, 2
  %i.cn = add nuw nsw i32 %i.cm, 20               ; 2 uses
  %i.co = shl i32 %i.bo, 2                        ; 2 uses
  %i.cp = or disjoint i32 %i.co, 24
  %i.cq = shl i32 %i.bo, 2
  %i.cr = add i32 %i.cq, 28                       ; 2 uses
  %i.cs = zext i32 %i.cd to i64
  %i.ct = zext i32 %i.cf to i64
  %i.cu = zext i32 %i.ch to i64
  %i.cv = zext i32 %i.cj to i64
  %i.cw = zext i32 %i.cl to i64
  %i.cx = zext i32 %i.cn to i64
  %i.cy = zext i32 %i.cp to i64
  %i.cz = zext i32 %i.cr to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cs
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cv
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cw
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cx
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cy
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cz
  %i.di = shl <8 x i32> %i.cc, splat (i32 15)
  %i.dj = ashr <8 x i32> %i.di, splat (i32 16)    ; 3 uses
  %i.dk = and <8 x i32> %i.dj, %broadcast.splat
  %i.dl = icmp eq <8 x i32> %i.dk, zeroinitializer
  %i.dm = icmp slt <8 x i32> %i.dj, zeroinitializer
  %i.dn = select <8 x i1> %i.dm, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat59
  %i.do = select <8 x i1> %i.dl, <8 x i32> %i.dj, <8 x i32> %i.dn
  %i.dp = trunc <8 x i32> %i.do to <8 x i16>      ; 8 uses
  %i.dq = extractelement <8 x i16> %i.dp, i64 0
  store i16 %i.dq, ptr %i.da, align 2, !tbaa !10, !alias.scope !54
  %i.dr = extractelement <8 x i16> %i.dp, i64 1
  store i16 %i.dr, ptr %i.db, align 2, !tbaa !10, !alias.scope !54
  %i.ds = extractelement <8 x i16> %i.dp, i64 2
  store i16 %i.ds, ptr %i.dc, align 2, !tbaa !10, !alias.scope !54
  %i.dt = extractelement <8 x i16> %i.dp, i64 3
  store i16 %i.dt, ptr %i.dd, align 2, !tbaa !10, !alias.scope !54
  %i.du = extractelement <8 x i16> %i.dp, i64 4
  store i16 %i.du, ptr %i.de, align 2, !tbaa !10, !alias.scope !54
  %i.dv = extractelement <8 x i16> %i.dp, i64 5
  store i16 %i.dv, ptr %i.df, align 2, !tbaa !10, !alias.scope !54
  %i.dw = extractelement <8 x i16> %i.dp, i64 6
  store i16 %i.dw, ptr %i.dg, align 2, !tbaa !10, !alias.scope !54
  %i.dx = extractelement <8 x i16> %i.dp, i64 7
  store i16 %i.dx, ptr %i.dh, align 2, !tbaa !10, !alias.scope !54
  %wide.load63 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !10, !alias.scope !53, !noalias !54
  %i.dy = sext <8 x i16> %wide.load63 to <8 x i32>
  %wide.load64 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !10, !alias.scope !53, !noalias !54
  %i.dz = sext <8 x i16> %wide.load64 to <8 x i32>
  %i.ea = add nsw <8 x i32> %i.dy, splat (i32 4)
  %i.eb = sub nsw <8 x i32> %i.ea, %i.dz
  %i.ec = lshr <8 x i32> %i.eb, splat (i32 3)
  %wide.load65 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !10, !alias.scope !53, !noalias !54
  %i.ed = sext <8 x i16> %wide.load65 to <8 x i32>
  %i.ee = add nsw <8 x i32> %i.ec, %i.ed
  %wide.load66 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !10, !alias.scope !55, !noalias !54
  %i.ef = sext <8 x i16> %wide.load66 to <8 x i32>
  %i.eg = sub nsw <8 x i32> %i.ee, %i.ef
  %i.eh = or disjoint i32 %i.cd, 2
  %i.ei = or disjoint i32 %i.cf, 2
  %i.ej = or disjoint i32 %i.cg, 10
  %i.ek = or disjoint i32 %i.cj, 2
  %i.el = or disjoint i32 %i.ck, 18
  %i.em = or disjoint i32 %i.cn, 2
  %i.en = or disjoint i32 %i.co, 26
  %i.eo = or disjoint i32 %i.cr, 2
  %i.ep = zext i32 %i.eh to i64
  %i.eq = zext i32 %i.ei to i64
  %i.er = zext i32 %i.ej to i64
  %i.es = zext i32 %i.ek to i64
  %i.et = zext i32 %i.el to i64
  %i.eu = zext i32 %i.em to i64
  %i.ev = zext i32 %i.en to i64
  %i.ew = zext i32 %i.eo to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ep
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eq
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.er
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.es
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.et
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eu
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ev
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ew
  %i.ff = shl <8 x i32> %i.eg, splat (i32 15)
  %i.fg = ashr <8 x i32> %i.ff, splat (i32 16)    ; 3 uses
  %i.fh = and <8 x i32> %i.fg, %broadcast.splat
  %i.fi = icmp eq <8 x i32> %i.fh, zeroinitializer
  %i.fj = icmp slt <8 x i32> %i.fg, zeroinitializer
  %i.fk = select <8 x i1> %i.fj, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat59
  %i.fl = select <8 x i1> %i.fi, <8 x i32> %i.fg, <8 x i32> %i.fk
  %i.fm = trunc <8 x i32> %i.fl to <8 x i16>      ; 8 uses
  %i.fn = extractelement <8 x i16> %i.fm, i64 0
  store i16 %i.fn, ptr %i.ex, align 2, !tbaa !10, !alias.scope !54
  %i.fo = extractelement <8 x i16> %i.fm, i64 1
  store i16 %i.fo, ptr %i.ey, align 2, !tbaa !10, !alias.scope !54
  %i.fp = extractelement <8 x i16> %i.fm, i64 2
  store i16 %i.fp, ptr %i.ez, align 2, !tbaa !10, !alias.scope !54
  %i.fq = extractelement <8 x i16> %i.fm, i64 3
  store i16 %i.fq, ptr %i.fa, align 2, !tbaa !10, !alias.scope !54
  %i.fr = extractelement <8 x i16> %i.fm, i64 4
  store i16 %i.fr, ptr %i.fb, align 2, !tbaa !10, !alias.scope !54
  %i.fs = extractelement <8 x i16> %i.fm, i64 5
  store i16 %i.fs, ptr %i.fc, align 2, !tbaa !10, !alias.scope !54
  %i.ft = extractelement <8 x i16> %i.fm, i64 6
  store i16 %i.ft, ptr %i.fd, align 2, !tbaa !10, !alias.scope !54
  %i.fu = extractelement <8 x i16> %i.fm, i64 7
  store i16 %i.fu, ptr %i.fe, align 2, !tbaa !10, !alias.scope !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader112

.lr.ph.split.preheader112:                        ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph.split.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.d
  %wide.trip.count40 = zext i32 %i.ap to i64      ; 5 uses
  %i.fw = add nsw i64 %wide.trip.count40, -1      ; 3 uses
  %min.iters.check84 = icmp ult i64 %i.fw, 16
  br i1 %min.iters.check84, label %.lr.ph.split.us.preheader111, label %vector.scevcheck67

vector.scevcheck67:                               ; preds = %.lr.ph.split.us.preheader
  %i.fx = add nsw i64 %wide.trip.count40, -2      ; 2 uses
  %mul.result69.mask110 = and i64 %i.fx, 1073741823
  %i.fy = icmp eq i64 %mul.result69.mask110, 1073741823
  %i.fz = icmp ugt i64 %i.fx, 1073741823
  %i.ga = or i1 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph.split.us.preheader111, label %vector.memcheck85

vector.memcheck85:                                ; preds = %vector.scevcheck67
  %i.gb = shl nuw nsw i64 %wide.trip.count40, 1   ; 2 uses
  %i.gc = getelementptr i8, ptr %1, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 2
  %i.ge = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.gf = shl nuw nsw i64 %wide.trip.count40, 3
  %i.gg = getelementptr i8, ptr %0, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 -2     ; 2 uses
  %i.gi = getelementptr i8, ptr %2, i64 2
  %i.gj = getelementptr i8, ptr %2, i64 %i.gb
  %bound086 = icmp ult ptr %1, %i.gh
  %bound187 = icmp ult ptr %i.ge, %i.gd
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %i.gi, %i.gh
  %bound190 = icmp ult ptr %i.ge, %i.gj
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %found.conflict88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph.split.us.preheader111, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck85
  %n.vec94 = and i64 %i.fw, -8                    ; 3 uses
  %i.gk = or disjoint i64 %n.vec94, 1
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next105, %vector.body95 ] ; 3 uses
  %i.gl = or disjoint i64 %index96, 1             ; 3 uses
  %i.gm = trunc i64 %i.gl to i32                  ; 8 uses
  %i.gn = getelementptr [2 x i8], ptr %1, i64 %i.gl ; 3 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 -2     ; 2 uses
  %wide.load97 = load <8 x i16>, ptr %i.go, align 2, !tbaa !10, !alias.scope !56, !noalias !57
  %i.gp = sext <8 x i16> %wide.load97 to <8 x i32>
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %wide.load98 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !10, !alias.scope !56, !noalias !57
  %i.gs = sext <8 x i16> %wide.load98 to <8 x i32>
  %i.gt = add nsw <8 x i32> %i.gp, splat (i32 4)
  %i.gu = sub nsw <8 x i32> %i.gt, %i.gs
  %i.gv = lshr <8 x i32> %i.gu, splat (i32 3)
  %wide.load99 = load <8 x i16>, ptr %i.gn, align 2, !tbaa !10, !alias.scope !56, !noalias !57
  %i.gw = sext <8 x i16> %wide.load99 to <8 x i32>
  %i.gx = add nsw <8 x i32> %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.gl ; 2 uses
  %wide.load100 = load <8 x i16>, ptr %i.gy, align 2, !tbaa !10, !alias.scope !58, !noalias !57
  %i.gz = sext <8 x i16> %wide.load100 to <8 x i32>
  %i.ha = add nsw <8 x i32> %i.gx, %i.gz
  %i.hb = lshr <8 x i32> %i.ha, splat (i32 1)
  %i.hc = shl i32 %i.gm, 2                        ; 2 uses
  %i.hd = shl i32 %i.gm, 2
  %i.he = add nuw nsw i32 %i.hd, 4                ; 2 uses
  %i.hf = shl i32 %i.gm, 2                        ; 2 uses
  %i.hg = or disjoint i32 %i.hf, 8
  %i.hh = shl i32 %i.gm, 2
  %i.hi = add nuw nsw i32 %i.hh, 12               ; 2 uses
  %i.hj = shl i32 %i.gm, 2                        ; 2 uses
  %i.hk = or disjoint i32 %i.hj, 16
  %i.hl = shl i32 %i.gm, 2
  %i.hm = add nuw nsw i32 %i.hl, 20               ; 2 uses
  %i.hn = shl i32 %i.gm, 2                        ; 2 uses
  %i.ho = or disjoint i32 %i.hn, 24
  %i.hp = shl i32 %i.gm, 2
  %i.hq = add i32 %i.hp, 28                       ; 2 uses
  %i.hr = zext i32 %i.hc to i64
  %i.hs = zext i32 %i.he to i64
  %i.ht = zext i32 %i.hg to i64
  %i.hu = zext i32 %i.hi to i64
  %i.hv = zext i32 %i.hk to i64
  %i.hw = zext i32 %i.hm to i64
  %i.hx = zext i32 %i.ho to i64
  %i.hy = zext i32 %i.hq to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hr
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hs
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ht
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hu
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hv
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hw
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hx
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hy
  %i.ih = trunc <8 x i32> %i.hb to <8 x i16>      ; 8 uses
  %i.ii = extractelement <8 x i16> %i.ih, i64 0
  store i16 %i.ii, ptr %i.hz, align 2, !tbaa !10, !alias.scope !57
  %i.ij = extractelement <8 x i16> %i.ih, i64 1
  store i16 %i.ij, ptr %i.ia, align 2, !tbaa !10, !alias.scope !57
  %i.ik = extractelement <8 x i16> %i.ih, i64 2
  store i16 %i.ik, ptr %i.ib, align 2, !tbaa !10, !alias.scope !57
  %i.il = extractelement <8 x i16> %i.ih, i64 3
  store i16 %i.il, ptr %i.ic, align 2, !tbaa !10, !alias.scope !57
  %i.im = extractelement <8 x i16> %i.ih, i64 4
  store i16 %i.im, ptr %i.id, align 2, !tbaa !10, !alias.scope !57
  %i.in = extractelement <8 x i16> %i.ih, i64 5
  store i16 %i.in, ptr %i.ie, align 2, !tbaa !10, !alias.scope !57
  %i.io = extractelement <8 x i16> %i.ih, i64 6
  store i16 %i.io, ptr %i.if, align 2, !tbaa !10, !alias.scope !57
  %i.ip = extractelement <8 x i16> %i.ih, i64 7
  store i16 %i.ip, ptr %i.ig, align 2, !tbaa !10, !alias.scope !57
  %wide.load101 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !10, !alias.scope !56, !noalias !57
  %i.iq = sext <8 x i16> %wide.load101 to <8 x i32>
  %wide.load102 = load <8 x i16>, ptr %i.go, align 2, !tbaa !10, !alias.scope !56, !noalias !57
  %i.ir = sext <8 x i16> %wide.load102 to <8 x i32>
  %i.is = add nsw <8 x i32> %i.iq, splat (i32 4)
  %i.it = sub nsw <8 x i32> %i.is, %i.ir
  %i.iu = lshr <8 x i32> %i.it, splat (i32 3)
  %wide.load103 = load <8 x i16>, ptr %i.gn, align 2, !tbaa !10, !alias.scope !56, !noalias !57
  %i.iv = sext <8 x i16> %wide.load103 to <8 x i32>
  %i.iw = add nsw <8 x i32> %i.iu, %i.iv
  %wide.load104 = load <8 x i16>, ptr %i.gy, align 2, !tbaa !10, !alias.scope !58, !noalias !57
  %i.ix = sext <8 x i16> %wide.load104 to <8 x i32>
  %i.iy = sub nsw <8 x i32> %i.iw, %i.ix
  %i.iz = lshr <8 x i32> %i.iy, splat (i32 1)
  %i.ja = or disjoint i32 %i.hc, 2
  %i.jb = or disjoint i32 %i.he, 2
  %i.jc = or disjoint i32 %i.hf, 10
  %i.jd = or disjoint i32 %i.hi, 2
  %i.je = or disjoint i32 %i.hj, 18
  %i.jf = or disjoint i32 %i.hm, 2
  %i.jg = or disjoint i32 %i.hn, 26
  %i.jh = or disjoint i32 %i.hq, 2
  %i.ji = zext i32 %i.ja to i64
  %i.jj = zext i32 %i.jb to i64
  %i.jk = zext i32 %i.jc to i64
  %i.jl = zext i32 %i.jd to i64
  %i.jm = zext i32 %i.je to i64
  %i.jn = zext i32 %i.jf to i64
  %i.jo = zext i32 %i.jg to i64
  %i.jp = zext i32 %i.jh to i64
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ji
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jj
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jk
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jl
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jm
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jn
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jo
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jp
  %i.jy = trunc <8 x i32> %i.iz to <8 x i16>      ; 8 uses
  %i.jz = extractelement <8 x i16> %i.jy, i64 0
  store i16 %i.jz, ptr %i.jq, align 2, !tbaa !10, !alias.scope !57
  %i.ka = extractelement <8 x i16> %i.jy, i64 1
  store i16 %i.ka, ptr %i.jr, align 2, !tbaa !10, !alias.scope !57
  %i.kb = extractelement <8 x i16> %i.jy, i64 2
  store i16 %i.kb, ptr %i.js, align 2, !tbaa !10, !alias.scope !57
  %i.kc = extractelement <8 x i16> %i.jy, i64 3
  store i16 %i.kc, ptr %i.jt, align 2, !tbaa !10, !alias.scope !57
  %i.kd = extractelement <8 x i16> %i.jy, i64 4
  store i16 %i.kd, ptr %i.ju, align 2, !tbaa !10, !alias.scope !57
  %i.ke = extractelement <8 x i16> %i.jy, i64 5
  store i16 %i.ke, ptr %i.jv, align 2, !tbaa !10, !alias.scope !57
  %i.kf = extractelement <8 x i16> %i.jy, i64 6
  store i16 %i.kf, ptr %i.jw, align 2, !tbaa !10, !alias.scope !57
  %i.kg = extractelement <8 x i16> %i.jy, i64 7
  store i16 %i.kg, ptr %i.jx, align 2, !tbaa !10, !alias.scope !57
  %index.next105 = add nuw i64 %index96, 8        ; 2 uses
  %i.kh = icmp eq i64 %index.next105, %n.vec94
  br i1 %i.kh, label %middle.block106, label %vector.body95, !llvm.loop !50

middle.block106:                                  ; preds = %vector.body95
  %cmp.n107 = icmp eq i64 %i.fw, %n.vec94
  br i1 %cmp.n107, label %._crit_edge, label %.lr.ph.split.us.preheader111

.lr.ph.split.us.preheader111:                     ; preds = %vector.memcheck85, %vector.scevcheck67, %.lr.ph.split.us.preheader, %middle.block106
  %indvars.iv37.ph = phi i64 [ 1, %vector.memcheck85 ], [ 1, %vector.scevcheck67 ], [ 1, %.lr.ph.split.us.preheader ], [ %i.gk, %middle.block106 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader111, %.lr.ph.split.us
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.lr.ph.split.us ], [ %indvars.iv37.ph, %.lr.ph.split.us.preheader111 ] ; 4 uses
  %i.ki = getelementptr [2 x i8], ptr %1, i64 %indvars.iv37 ; 3 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 -2     ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !10
  %i.kl = sext i16 %i.kk to i32
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 3 uses
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next38 ; 2 uses
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !10
  %i.ko = sext i16 %i.kn to i32
  %i.kp = add nsw i32 %i.kl, 4
  %i.kq = sub nsw i32 %i.kp, %i.ko
  %i.kr = lshr i32 %i.kq, 3
  %i.ks = load i16, ptr %i.ki, align 2, !tbaa !10
  %i.kt = sext i16 %i.ks to i32
  %i.ku = add nsw i32 %i.kr, %i.kt
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv37 ; 2 uses
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !10
  %i.kx = sext i16 %i.kw to i32
  %i.ky = add nsw i32 %i.ku, %i.kx
  %i.kz = lshr i32 %i.ky, 1
  %i.la = trunc nuw nsw i64 %indvars.iv37 to i32
  %i.lb = shl i32 %i.la, 2                        ; 2 uses
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lc
  %storemerge140.i.us = trunc i32 %i.kz to i16
  store i16 %storemerge140.i.us, ptr %i.ld, align 2, !tbaa !10
  %i.le = load i16, ptr %i.km, align 2, !tbaa !10
  %i.lf = sext i16 %i.le to i32
  %i.lg = load i16, ptr %i.kj, align 2, !tbaa !10
  %i.lh = sext i16 %i.lg to i32
  %i.li = add nsw i32 %i.lf, 4
  %i.lj = sub nsw i32 %i.li, %i.lh
  %i.lk = lshr i32 %i.lj, 3
  %i.ll = load i16, ptr %i.ki, align 2, !tbaa !10
  %i.lm = sext i16 %i.ll to i32
  %i.ln = add nsw i32 %i.lk, %i.lm
  %i.lo = load i16, ptr %i.kv, align 2, !tbaa !10
  %i.lp = sext i16 %i.lo to i32
  %i.lq = sub nsw i32 %i.ln, %i.lp
  %i.lr = lshr i32 %i.lq, 1
  %i.ls = or disjoint i32 %i.lb, 2
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lt
  %storemerge142.i.us = trunc i32 %i.lr to i16
  store i16 %storemerge142.i.us, ptr %i.lu, align 2, !tbaa !10
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader112, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader112 ] ; 4 uses
  %i.lv = getelementptr [2 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.lw = getelementptr i8, ptr %i.lv, i64 -2     ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !10
  %i.ly = sext i16 %i.lx to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !10
  %i.mb = sext i16 %i.ma to i32
  %i.mc = add nsw i32 %i.ly, 4
  %i.md = sub nsw i32 %i.mc, %i.mb
  %i.me = lshr i32 %i.md, 3
  %i.mf = load i16, ptr %i.lv, align 2, !tbaa !10
  %i.mg = sext i16 %i.mf to i32
  %i.mh = add nsw i32 %i.me, %i.mg
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !10
  %i.mk = sext i16 %i.mj to i32
  %i.ml = add nsw i32 %i.mh, %i.mk
  %i.mm = trunc nuw nsw i64 %indvars.iv to i32
  %i.mn = shl i32 %i.mm, 2                        ; 2 uses
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.mo
  %i.mq = shl i32 %i.ml, 15
  %i.mr = ashr i32 %i.mq, 16                      ; 3 uses
  %i.ms = and i32 %i.mr, %notmask.i644
  %.not.i7 = icmp eq i32 %i.ms, 0
  %isnotneg.inv.i8 = icmp slt i32 %i.mr, 0
  %i.mt = select i1 %isnotneg.inv.i8, i32 0, i32 %i.ax
  %.0.i9 = select i1 %.not.i7, i32 %i.mr, i32 %i.mt
  %storemerge140.i = trunc i32 %.0.i9 to i16
  store i16 %storemerge140.i, ptr %i.mp, align 2, !tbaa !10
  %i.mu = load i16, ptr %i.lz, align 2, !tbaa !10
  %i.mv = sext i16 %i.mu to i32
  %i.mw = load i16, ptr %i.lw, align 2, !tbaa !10
  %i.mx = sext i16 %i.mw to i32
  %i.my = add nsw i32 %i.mv, 4
  %i.mz = sub nsw i32 %i.my, %i.mx
  %i.na = lshr i32 %i.mz, 3
  %i.nb = load i16, ptr %i.lv, align 2, !tbaa !10
  %i.nc = sext i16 %i.nb to i32
  %i.nd = add nsw i32 %i.na, %i.nc
  %i.ne = load i16, ptr %i.mi, align 2, !tbaa !10
  %i.nf = sext i16 %i.ne to i32
  %i.ng = sub nsw i32 %i.nd, %i.nf
  %i.nh = or disjoint i32 %i.mn, 2
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ni
  %i.nk = shl i32 %i.ng, 15
  %i.nl = ashr i32 %i.nk, 16                      ; 3 uses
  %i.nm = and i32 %i.nl, %notmask.i644
  %.not.i4 = icmp eq i32 %i.nm, 0
  %isnotneg.inv.i = icmp slt i32 %i.nl, 0
  %i.nn = select i1 %isnotneg.inv.i, i32 0, i32 %i.ax
  %.0.i5 = select i1 %.not.i4, i32 %i.nl, i32 %i.nn
  %storemerge142.i = trunc i32 %.0.i5 to i16
  store i16 %storemerge142.i, ptr %i.nj, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block106, %.thread, %bb.d
  %.0.i.lcssa = phi i32 [ %i.ap, %middle.block106 ], [ 1, %.thread ], [ 1, %bb.d ], [ %i.av, %middle.block ], [ %i.ap, %.lr.ph.split.us ], [ %i.av, %.lr.ph.split ] ; 2 uses
  %i.no = zext nneg i32 %.0.i.lcssa to i64        ; 2 uses
  %i.np = getelementptr [2 x i8], ptr %1, i64 %i.no ; 4 uses
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !10
  %i.nr = sext i16 %i.nq to i32
  %i.ns = mul nsw i32 %i.nr, 5
  %i.nt = getelementptr i8, ptr %i.np, i64 -2     ; 2 uses
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !10
  %i.nv = sext i16 %i.nu to i32
  %i.nw = shl nsw i32 %i.nv, 2
  %i.nx = add nsw i32 %i.nw, %i.ns
  %i.ny = getelementptr i8, ptr %i.np, i64 -4     ; 2 uses
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !10
  %i.oa = sext i16 %i.nz to i32
  %i.ob = sub nsw i32 %i.nx, %i.oa
  %i.oc = shl i32 %i.ob, 13
  %i.od = add i32 %i.oc, 32768
  %i.oe = ashr i32 %i.od, 16
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.no ; 2 uses
  %i.og = load i16, ptr %i.of, align 2, !tbaa !10
  %i.oh = sext i16 %i.og to i32
  %i.oi = add nsw i32 %i.oe, %i.oh
  %i.oj = lshr i32 %i.oi, 1                       ; 2 uses
  %i.ok = shl i32 %.0.i.lcssa, 2                  ; 2 uses
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ol
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %sext135.i = shl i32 %i.oj, 16
  %i.on = ashr exact i32 %sext135.i, 16           ; 3 uses
  %notmask.i14 = shl nsw i32 -1, %4               ; 2 uses
  %i.oo = and i32 %i.on, %notmask.i14
  %.not.i15 = icmp eq i32 %i.oo, 0
  %i.op = xor i32 %notmask.i14, -1
  %isnotneg.inv.i16 = icmp slt i32 %i.on, 0
  %i.oq = select i1 %isnotneg.inv.i16, i32 0, i32 %i.op
  %.0.i17 = select i1 %.not.i15, i32 %i.on, i32 %i.oq
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %storemerge136.in.i = phi i32 [ %.0.i17, %bb.e ], [ %i.oj, %._crit_edge ]
  %storemerge136.i = trunc i32 %storemerge136.in.i to i16
  store i16 %storemerge136.i, ptr %i.om, align 2, !tbaa !10
  %i.or = load i16, ptr %i.np, align 2, !tbaa !10
  %i.os = sext i16 %i.or to i32
  %i.ot = mul nsw i32 %i.os, 11
  %i.ou = load i16, ptr %i.nt, align 2, !tbaa !10
  %i.ov = sext i16 %i.ou to i32
  %i.ow = shl nsw i32 %i.ov, 2
  %i.ox = sub nsw i32 %i.ot, %i.ow
  %i.oy = load i16, ptr %i.ny, align 2, !tbaa !10
  %i.oz = sext i16 %i.oy to i32
  %i.pa = add nsw i32 %i.ox, %i.oz
  %i.pb = shl i32 %i.pa, 13
  %i.pc = add i32 %i.pb, 32768
  %i.pd = ashr i32 %i.pc, 16
  %i.pe = load i16, ptr %i.of, align 2, !tbaa !10
  %i.pf = sext i16 %i.pe to i32
  %i.pg = sub nsw i32 %i.pd, %i.pf
  %i.ph = lshr i32 %i.pg, 1                       ; 2 uses
  br i1 %.not.i, label %filter.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sext137.i = shl i32 %i.ph, 16
  %i.pi = ashr exact i32 %sext137.i, 16           ; 3 uses
  %notmask.i10 = shl nsw i32 -1, %4               ; 2 uses
  %i.pj = and i32 %i.pi, %notmask.i10
  %.not.i11 = icmp eq i32 %i.pj, 0
  %i.pk = xor i32 %notmask.i10, -1
  %isnotneg.inv.i12 = icmp slt i32 %i.pi, 0
  %i.pl = select i1 %isnotneg.inv.i12, i32 0, i32 %i.pk
  %.0.i13 = select i1 %.not.i11, i32 %i.pi, i32 %i.pl
  br label %filter.exit

filter.exit:                                      ; preds = %bb.f, %bb.g
  %storemerge138.in.i = phi i32 [ %.0.i13, %bb.g ], [ %i.ph, %bb.f ]
  %i.pm = or disjoint i32 %i.ok, 2
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pn
  %storemerge138.i = trunc i32 %storemerge138.in.i to i16
  store i16 %storemerge138.i, ptr %i.po, align 2, !tbaa !10
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
  %storemerge134.i = trunc i32 %i.an to i16
  store i16 %storemerge134.i, ptr %i.ao, align 2, !tbaa !10
  %i.ap = add i32 %3, -1                          ; 3 uses
  %i.aq = icmp sgt i32 %3, 2
  br i1 %i.aq, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.c
  %sext133.i = shl i32 %i.an, 16
  %i.ar = ashr exact i32 %sext133.i, 16           ; 2 uses
  %notmask.i18 = shl nsw i32 -1, %4               ; 2 uses
  %i.as = and i32 %i.ar, %notmask.i18
  %.not.i19 = icmp eq i32 %i.as, 0
  %i.at = xor i32 %notmask.i18, -1
  %isnotneg.inv.i20 = icmp slt i32 %i.ar, 0
  %i.au = select i1 %isnotneg.inv.i20, i32 0, i32 %i.at
  %.0.i21 = select i1 %.not.i19, i32 %i.an, i32 %i.au
  %storemerge134.i44 = trunc i32 %.0.i21 to i16
  store i16 %storemerge134.i44, ptr %i.ao, align 2, !tbaa !10
  %i.av = add i32 %3, -1                          ; 3 uses
  %i.aw = icmp sgt i32 %3, 2
  br i1 %i.aw, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %notmask.i645 = shl nsw i32 -1, %4              ; 4 uses
  %i.ax = xor i32 %notmask.i645, -1               ; 3 uses
  %wide.trip.count = zext i32 %i.av to i64        ; 4 uses
  %i.ay = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader100, label %vector.memcheck

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
  %bound056 = icmp ult ptr %i.az, %i.bg
  %bound157 = icmp ult ptr %i.bf, %i.bb
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  br i1 %conflict.rdx, label %.lr.ph.split.preheader100, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  %i.bh = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %notmask.i645, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat60 = shufflevector <4 x i32> %broadcast.splatinsert59, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = or disjoint i64 %index, 1               ; 3 uses
  %i.bj = getelementptr [2 x i8], ptr %1, i64 %i.bi ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %wide.load = load <4 x i16>, ptr %i.bk, align 2, !tbaa !10, !alias.scope !71
  %i.bl = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %wide.load61 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !10, !alias.scope !71
  %i.bo = sext <4 x i16> %wide.load61 to <4 x i32> ; 2 uses
  %i.bp = add nsw <4 x i32> %i.bl, splat (i32 4)
  %i.bq = sub nsw <4 x i32> %i.bp, %i.bo
  %i.br = lshr <4 x i32> %i.bq, splat (i32 3)
  %wide.load62 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !10, !alias.scope !71
  %i.bs = sext <4 x i16> %wide.load62 to <4 x i32> ; 2 uses
  %i.bt = add nsw <4 x i32> %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bi
  %wide.load63 = load <4 x i16>, ptr %i.bu, align 2, !tbaa !10, !alias.scope !72
  %i.bv = sext <4 x i16> %wide.load63 to <4 x i32> ; 2 uses
  %i.bw = add nsw <4 x i32> %i.bt, %i.bv
  %i.bx = shl nuw nsw i64 %i.bi, 2
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %i.bz = shl <4 x i32> %i.bw, splat (i32 15)
  %i.ca = ashr <4 x i32> %i.bz, splat (i32 16)    ; 3 uses
  %i.cb = and <4 x i32> %i.ca, %broadcast.splat
  %i.cc = icmp eq <4 x i32> %i.cb, zeroinitializer
  %i.cd = icmp slt <4 x i32> %i.ca, zeroinitializer
  %i.ce = select <4 x i1> %i.cd, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat60
  %i.cf = select <4 x i1> %i.cc, <4 x i32> %i.ca, <4 x i32> %i.ce
  %i.cg = add nsw <4 x i32> %i.bo, splat (i32 4)
  %i.ch = sub nsw <4 x i32> %i.cg, %i.bl
  %i.ci = lshr <4 x i32> %i.ch, splat (i32 3)
  %i.cj = add nsw <4 x i32> %i.ci, %i.bs
  %i.ck = sub nsw <4 x i32> %i.cj, %i.bv
  %i.cl = shl <4 x i32> %i.ck, splat (i32 15)
  %i.cm = ashr <4 x i32> %i.cl, splat (i32 16)    ; 3 uses
  %i.cn = and <4 x i32> %i.cm, %broadcast.splat
  %i.co = icmp eq <4 x i32> %i.cn, zeroinitializer
  %i.cp = icmp slt <4 x i32> %i.cm, zeroinitializer
  %i.cq = select <4 x i1> %i.cp, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat60
  %i.cr = select <4 x i1> %i.co, <4 x i32> %i.cm, <4 x i32> %i.cq
  %i.cs = shufflevector <4 x i32> %i.cf, <4 x i32> %i.cr, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.cs to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.by, align 2, !tbaa !10, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader100

.lr.ph.split.preheader100:                        ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.split.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.d
  %wide.trip.count40 = zext i32 %i.ap to i64      ; 4 uses
  %i.cu = add nsw i64 %wide.trip.count40, -1      ; 3 uses
  %min.iters.check77 = icmp ult i64 %i.cu, 4
  br i1 %min.iters.check77, label %.lr.ph.split.us.preheader99, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph.split.us.preheader
  %i.cv = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.cw = shl nuw nsw i64 %wide.trip.count40, 2
  %i.cx = getelementptr i8, ptr %0, i64 %i.cw     ; 2 uses
  %i.cy = shl nuw nsw i64 %wide.trip.count40, 1   ; 2 uses
  %i.cz = getelementptr i8, ptr %1, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 2
  %i.db = getelementptr i8, ptr %2, i64 2
  %i.dc = getelementptr i8, ptr %2, i64 %i.cy
  %bound079 = icmp ult ptr %i.cv, %i.da
  %bound180 = icmp ult ptr %1, %i.cx
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %i.cv, %i.dc
  %bound183 = icmp ult ptr %i.db, %i.cx
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %.lr.ph.split.us.preheader99, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck78
  %n.vec87 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = or disjoint i64 %n.vec87, 1
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next95, %vector.body88 ] ; 3 uses
  %i.de = or disjoint i64 %index89, 1             ; 3 uses
  %i.df = getelementptr [2 x i8], ptr %1, i64 %i.de ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 -2
  %wide.load90 = load <4 x i16>, ptr %i.dg, align 2, !tbaa !10, !alias.scope !75
  %i.dh = sext <4 x i16> %wide.load90 to <4 x i32> ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index89
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %wide.load91 = load <4 x i16>, ptr %i.dj, align 2, !tbaa !10, !alias.scope !75
  %i.dk = sext <4 x i16> %wide.load91 to <4 x i32> ; 2 uses
  %i.dl = add nsw <4 x i32> %i.dh, splat (i32 4)
  %i.dm = sub nsw <4 x i32> %i.dl, %i.dk
  %i.dn = lshr <4 x i32> %i.dm, splat (i32 3)
  %wide.load92 = load <4 x i16>, ptr %i.df, align 2, !tbaa !10, !alias.scope !75
  %i.do = sext <4 x i16> %wide.load92 to <4 x i32> ; 2 uses
  %i.dp = add nsw <4 x i32> %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.de
  %wide.load93 = load <4 x i16>, ptr %i.dq, align 2, !tbaa !10, !alias.scope !76
  %i.dr = sext <4 x i16> %wide.load93 to <4 x i32> ; 2 uses
  %i.ds = add nsw <4 x i32> %i.dp, %i.dr
  %i.dt = shl nuw nsw i64 %i.de, 2
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.dt
  %i.dv = add nsw <4 x i32> %i.dk, splat (i32 4)
  %i.dw = sub nsw <4 x i32> %i.dv, %i.dh
  %i.dx = lshr <4 x i32> %i.dw, splat (i32 3)
  %i.dy = add nsw <4 x i32> %i.dx, %i.do
  %i.dz = sub nsw <4 x i32> %i.dy, %i.dr
  %i.ea = shufflevector <4 x i32> %i.ds, <4 x i32> %i.dz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.eb = lshr <8 x i32> %i.ea, splat (i32 1)
  %interleaved.vec94 = trunc <8 x i32> %i.eb to <8 x i16>
  store <8 x i16> %interleaved.vec94, ptr %i.du, align 2, !tbaa !10, !alias.scope !77, !noalias !78
  %index.next95 = add nuw i64 %index89, 4         ; 2 uses
  %i.ec = icmp eq i64 %index.next95, %n.vec87
  br i1 %i.ec, label %middle.block96, label %vector.body88, !llvm.loop !68

middle.block96:                                   ; preds = %vector.body88
  %cmp.n97 = icmp eq i64 %i.cu, %n.vec87
  br i1 %cmp.n97, label %._crit_edge, label %.lr.ph.split.us.preheader99

.lr.ph.split.us.preheader99:                      ; preds = %vector.memcheck78, %.lr.ph.split.us.preheader, %middle.block96
  %indvars.iv37.ph = phi i64 [ 1, %vector.memcheck78 ], [ 1, %.lr.ph.split.us.preheader ], [ %i.dd, %middle.block96 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader99, %.lr.ph.split.us
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.lr.ph.split.us ], [ %indvars.iv37.ph, %.lr.ph.split.us.preheader99 ] ; 4 uses
  %i.ed = getelementptr [2 x i8], ptr %1, i64 %indvars.iv37 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -2     ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !10
  %i.eg = sext i16 %i.ef to i32
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next38 ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !10
  %i.ej = sext i16 %i.ei to i32
  %i.ek = add nsw i32 %i.eg, 4
  %i.el = sub nsw i32 %i.ek, %i.ej
  %i.em = lshr i32 %i.el, 3
  %i.en = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.eo = sext i16 %i.en to i32
  %i.ep = add nsw i32 %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv37 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !10
  %i.es = sext i16 %i.er to i32
  %i.et = add nsw i32 %i.ep, %i.es
  %i.eu = lshr i32 %i.et, 1
  %.idx42 = shl nuw nsw i64 %indvars.iv37, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.idx42 ; 2 uses
  %storemerge140.i.us = trunc i32 %i.eu to i16
  store i16 %storemerge140.i.us, ptr %i.ev, align 2, !tbaa !10
  %i.ew = load i16, ptr %i.eh, align 2, !tbaa !10
  %i.ex = sext i16 %i.ew to i32
  %i.ey = load i16, ptr %i.ee, align 2, !tbaa !10
  %i.ez = sext i16 %i.ey to i32
  %i.fa = add nsw i32 %i.ex, 4
  %i.fb = sub nsw i32 %i.fa, %i.ez
  %i.fc = lshr i32 %i.fb, 3
  %i.fd = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.fe = sext i16 %i.fd to i32
  %i.ff = add nsw i32 %i.fc, %i.fe
  %i.fg = load i16, ptr %i.eq, align 2, !tbaa !10
  %i.fh = sext i16 %i.fg to i32
  %i.fi = sub nsw i32 %i.ff, %i.fh
  %i.fj = lshr i32 %i.fi, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %storemerge142.i.us = trunc i32 %i.fj to i16
  store i16 %storemerge142.i.us, ptr %i.fk, align 2, !tbaa !10
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !69

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader100, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader100 ] ; 4 uses
  %i.fl = getelementptr [2 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 -2     ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !10
  %i.fo = sext i16 %i.fn to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !10
  %i.fr = sext i16 %i.fq to i32
  %i.fs = add nsw i32 %i.fo, 4
  %i.ft = sub nsw i32 %i.fs, %i.fr
  %i.fu = lshr i32 %i.ft, 3
  %i.fv = load i16, ptr %i.fl, align 2, !tbaa !10
  %i.fw = sext i16 %i.fv to i32
  %i.fx = add nsw i32 %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !10
  %i.ga = sext i16 %i.fz to i32
  %i.gb = add nsw i32 %i.fx, %i.ga
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.gd = shl i32 %i.gb, 15
  %i.ge = ashr i32 %i.gd, 16                      ; 3 uses
  %i.gf = and i32 %i.ge, %notmask.i645
  %.not.i7 = icmp eq i32 %i.gf, 0
  %isnotneg.inv.i8 = icmp slt i32 %i.ge, 0
  %i.gg = select i1 %isnotneg.inv.i8, i32 0, i32 %i.ax
  %.0.i9 = select i1 %.not.i7, i32 %i.ge, i32 %i.gg
  %storemerge140.i = trunc i32 %.0.i9 to i16
  store i16 %storemerge140.i, ptr %i.gc, align 2, !tbaa !10
  %i.gh = load i16, ptr %i.fp, align 2, !tbaa !10
  %i.gi = sext i16 %i.gh to i32
  %i.gj = load i16, ptr %i.fm, align 2, !tbaa !10
  %i.gk = sext i16 %i.gj to i32
  %i.gl = add nsw i32 %i.gi, 4
  %i.gm = sub nsw i32 %i.gl, %i.gk
  %i.gn = lshr i32 %i.gm, 3
  %i.go = load i16, ptr %i.fl, align 2, !tbaa !10
  %i.gp = sext i16 %i.go to i32
  %i.gq = add nsw i32 %i.gn, %i.gp
  %i.gr = load i16, ptr %i.fy, align 2, !tbaa !10
  %i.gs = sext i16 %i.gr to i32
  %i.gt = sub nsw i32 %i.gq, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gv = shl i32 %i.gt, 15
  %i.gw = ashr i32 %i.gv, 16                      ; 3 uses
  %i.gx = and i32 %i.gw, %notmask.i645
  %.not.i4 = icmp eq i32 %i.gx, 0
  %isnotneg.inv.i = icmp slt i32 %i.gw, 0
  %i.gy = select i1 %isnotneg.inv.i, i32 0, i32 %i.ax
  %.0.i5 = select i1 %.not.i4, i32 %i.gw, i32 %i.gy
  %storemerge142.i = trunc i32 %.0.i5 to i16
  store i16 %storemerge142.i, ptr %i.gu, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block96, %.thread, %bb.d
  %.0.i.lcssa = phi i32 [ %i.ap, %middle.block96 ], [ 1, %.thread ], [ 1, %bb.d ], [ %i.av, %middle.block ], [ %i.ap, %.lr.ph.split.us ], [ %i.av, %.lr.ph.split ] ; 2 uses
  %i.gz = zext nneg i32 %.0.i.lcssa to i64        ; 2 uses
  %i.ha = getelementptr [2 x i8], ptr %1, i64 %i.gz ; 4 uses
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !10
  %i.hc = sext i16 %i.hb to i32
  %i.hd = mul nsw i32 %i.hc, 5
  %i.he = getelementptr i8, ptr %i.ha, i64 -2     ; 2 uses
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !10
  %i.hg = sext i16 %i.hf to i32
  %i.hh = shl nsw i32 %i.hg, 2
  %i.hi = add nsw i32 %i.hh, %i.hd
  %i.hj = getelementptr i8, ptr %i.ha, i64 -4     ; 2 uses
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !10
  %i.hl = sext i16 %i.hk to i32
  %i.hm = sub nsw i32 %i.hi, %i.hl
  %i.hn = shl i32 %i.hm, 13
  %i.ho = add i32 %i.hn, 32768
  %i.hp = ashr i32 %i.ho, 16
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.gz ; 2 uses
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !10
  %i.hs = sext i16 %i.hr to i32
  %i.ht = add nsw i32 %i.hp, %i.hs
  %i.hu = lshr i32 %i.ht, 1                       ; 2 uses
  %i.hv = shl nuw nsw i32 %.0.i.lcssa, 1
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hw ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %sext135.i = shl i32 %i.hu, 16
  %i.hy = ashr exact i32 %sext135.i, 16           ; 3 uses
  %notmask.i14 = shl nsw i32 -1, %4               ; 2 uses
  %i.hz = and i32 %i.hy, %notmask.i14
  %.not.i15 = icmp eq i32 %i.hz, 0
  %i.ia = xor i32 %notmask.i14, -1
  %isnotneg.inv.i16 = icmp slt i32 %i.hy, 0
  %i.ib = select i1 %isnotneg.inv.i16, i32 0, i32 %i.ia
  %.0.i17 = select i1 %.not.i15, i32 %i.hy, i32 %i.ib
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %storemerge136.in.i = phi i32 [ %.0.i17, %bb.e ], [ %i.hu, %._crit_edge ]
  %storemerge136.i = trunc i32 %storemerge136.in.i to i16
  store i16 %storemerge136.i, ptr %i.hx, align 2, !tbaa !10
  %i.ic = load i16, ptr %i.ha, align 2, !tbaa !10
  %i.id = sext i16 %i.ic to i32
  %i.ie = mul nsw i32 %i.id, 11
  %i.if = load i16, ptr %i.he, align 2, !tbaa !10
  %i.ig = sext i16 %i.if to i32
  %i.ih = shl nsw i32 %i.ig, 2
  %i.ii = sub nsw i32 %i.ie, %i.ih
  %i.ij = load i16, ptr %i.hj, align 2, !tbaa !10
  %i.ik = sext i16 %i.ij to i32
  %i.il = add nsw i32 %i.ii, %i.ik
  %i.im = shl i32 %i.il, 13
  %i.in = add i32 %i.im, 32768
  %i.io = ashr i32 %i.in, 16
  %i.ip = load i16, ptr %i.hq, align 2, !tbaa !10
  %i.iq = sext i16 %i.ip to i32
  %i.ir = sub nsw i32 %i.io, %i.iq
  %i.is = lshr i32 %i.ir, 1                       ; 2 uses
  br i1 %.not.i, label %filter.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sext137.i = shl i32 %i.is, 16
  %i.it = ashr exact i32 %sext137.i, 16           ; 3 uses
  %notmask.i10 = shl nsw i32 -1, %4               ; 2 uses
  %i.iu = and i32 %i.it, %notmask.i10
  %.not.i11 = icmp eq i32 %i.iu, 0
  %i.iv = xor i32 %notmask.i10, -1
  %isnotneg.inv.i12 = icmp slt i32 %i.it, 0
  %i.iw = select i1 %isnotneg.inv.i12, i32 0, i32 %i.iv
  %.0.i13 = select i1 %.not.i11, i32 %i.it, i32 %i.iw
  br label %filter.exit

filter.exit:                                      ; preds = %bb.f, %bb.g
  %storemerge138.in.i = phi i32 [ %.0.i13, %bb.g ], [ %i.is, %bb.f ]
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %storemerge138.i = trunc i32 %storemerge138.in.i to i16
  store i16 %storemerge138.i, ptr %i.ix, align 2, !tbaa !10
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
!30 = distinct !{!30, i1 false, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !11, !12, !13}
!35 = distinct !{!35, !11, !12}
!36 = distinct !{!36, !11}
!37 = !{!31}
!38 = !{!32}
!39 = !{!33}
!40 = !{!31, !32}
!41 = distinct !{!41, i1 false, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !11, !12, !13}
!46 = distinct !{!46, i1 false, !"LVerDomain"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
!50 = distinct !{!50, !11, !12, !13}
!51 = distinct !{!51, !11, !12}
!52 = distinct !{!52, !11, !12}
!53 = !{!42}
!54 = !{!43}
!55 = !{!44}
!56 = !{!47}
!57 = !{!48}
!58 = !{!49}
!59 = distinct !{!59, i1 false, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !11, !12, !13}
!64 = distinct !{!64, i1 false, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !11, !12, !13}
!69 = distinct !{!69, !11, !12}
!70 = distinct !{!70, !11, !12}
!71 = !{!60}
!72 = !{!61}
!73 = !{!62}
!74 = !{!60, !61}
!75 = !{!65}
!76 = !{!66}
!77 = !{!67}
!78 = !{!65, !66}
end_hunk_0
