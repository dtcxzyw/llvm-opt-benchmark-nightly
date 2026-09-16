Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/zuncompress?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@unlzw:bb.a

.preheader165.outer:                              ; preds = %.preheader165.outer.backedge, %vector.ph
  %.1138.ph = phi i8 [ 0, %vector.ph ], [ %.1138.ph.be, %.preheader165.outer.backedge ]
  %.1134.ph = phi i64 [ -1, %vector.ph ], [ %.1134.ph.be, %.preheader165.outer.backedge ]
  %.1130.ph = phi i64 [ %i.aj, %vector.ph ], [ %.1130.ph.be, %.preheader165.outer.backedge ]
  %.1125.ph = phi i32 [ 0, %vector.ph ], [ %.1125.ph.be, %.preheader165.outer.backedge ]
  %.1123.ph = phi i32 [ 511, %vector.ph ], [ %.1123.ph.be, %.preheader165.outer.backedge ]
  %.1119.ph = phi i64 [ %i.ak, %vector.ph ], [ %.1119.ph.be, %.preheader165.outer.backedge ]
  %.1116.ph = phi i64 [ 511, %vector.ph ], [ %.1116.ph.be, %.preheader165.outer.backedge ]
  %.1114.ph = phi i32 [ 9, %vector.ph ], [ %.1114.ph.be, %.preheader165.outer.backedge ] ; 6 uses
  %.1111.ph = phi i32 [ %i.af, %vector.ph ], [ %.2112, %.preheader165.outer.backedge ]
  %i.al = add nsw i32 %.1114.ph, -1
  %i.am = sext i32 %i.al to i64
  %i.an = zext i32 %.1123.ph to i64               ; 2 uses
  %i.ao = sext i32 %.1114.ph to i64               ; 2 uses
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165.outer, %.outer._crit_edge
  %.1138 = phi i8 [ %.2139.lcssa, %.outer._crit_edge ], [ %.1138.ph, %.preheader165.outer ] ; 2 uses
  %.1134 = phi i64 [ %.2135.lcssa, %.outer._crit_edge ], [ %.1134.ph, %.preheader165.outer ] ; 2 uses
  %.1130 = phi i64 [ %.2131.lcssa, %.outer._crit_edge ], [ %.1130.ph, %.preheader165.outer ]
  %.1125 = phi i32 [ %.2126.lcssa, %.outer._crit_edge ], [ %.1125.ph, %.preheader165.outer ] ; 2 uses
  %.1119 = phi i64 [ %.2120.ph.lcssa191, %.outer._crit_edge ], [ %.1119.ph, %.preheader165.outer ] ; 2 uses
  %.1111 = phi i32 [ %.2112, %.outer._crit_edge ], [ %.1111.ph, %.preheader165.outer ]
  %i.ap = load i32, ptr @insize, align 4, !tbaa !13
  %i.aq = lshr i64 %.1130, 3                      ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = sub i32 %i.ap, %i.ar                    ; 8 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader165
  %sext389 = shl i64 %i.aq, 32
  %i.au = ashr exact i64 %sext389, 32             ; 2 uses
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 8 uses
  %invariant.gep = getelementptr i8, ptr @inbuf, i64 %i.au ; 7 uses
  %min.iters.check = icmp ult i32 %i.as, 4
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond539 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond539, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check527 = icmp ult i32 %i.as, 32
  br i1 %min.iters.check527, label %vec.epilog.ph, label %vector.ph528

vector.ph528:                                     ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph528
  %index530 = phi i64 [ 0, %vector.ph528 ], [ %index.next532, %vector.body529 ] ; 3 uses
  %i.aw = getelementptr i8, ptr %invariant.gep, i64 %index530 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %wide.load = load <16 x i8>, ptr %i.aw, align 1, !tbaa !17
  %wide.load531 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr @inbuf, i64 %index530 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <16 x i8> %wide.load, ptr %i.ay, align 16, !tbaa !17
  store <16 x i8> %wide.load531, ptr %i.az, align 16, !tbaa !17
  %index.next532 = add nuw i64 %index530, 32      ; 2 uses
  %i.ba = icmp eq i64 %index.next532, %n.vec
  br i1 %i.ba, label %middle.block533, label %vector.body529, !llvm.loop !23

middle.block533:                                  ; preds = %vector.body529
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block533
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec534 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index535 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next537, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr i8, ptr %invariant.gep, i64 %index535
  %wide.load536 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr @inbuf, i64 %index535
  store <4 x i8> %wide.load536, ptr %i.bc, align 4, !tbaa !17
  %index.next537 = add nuw i64 %index535, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next537, %n.vec534
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n538 = icmp eq i64 %n.vec534, %wide.trip.count
  br i1 %cmp.n538, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec534, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.be = load i8, ptr %gep.prol, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr @inbuf, i64 %indvars.iv.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !17
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !25

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bi = load i8, ptr %gep, align 1, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr @inbuf, i64 %indvars.iv
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.bk = load i8, ptr %gep.1, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr @inbuf, i64 %indvars.iv.next
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bm = load i8, ptr %gep.2, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr @inbuf, i64 %indvars.iv.next.1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !17
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bo = load i8, ptr %gep.3, align 1, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr @inbuf, i64 %indvars.iv.next.2
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block533, %vec.epilog.middle.block, %.preheader165
  store i32 %i.as, ptr @insize, align 4, !tbaa !13
  %i.bq = icmp ult i32 %i.as, 64
  br i1 %i.bq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.br = zext nneg i32 %i.as to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @inbuf, i64 %i.br
  %i.bt = tail call i64 @fread(ptr noundef nonnull %i.bs, i64 noundef 1, i64 noundef 32768, ptr noundef %0) ; 2 uses
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ffpmsg(ptr noundef nonnull @ifname) #7
  tail call void @ffpmsg(ptr noundef nonnull @.str.4) #7
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.bw = load i32, ptr @insize, align 4, !tbaa !13
  %i.bx = add i32 %i.bw, %i.bu                    ; 2 uses
  store i32 %i.bx, ptr @insize, align 4, !tbaa !13
  %sext = shl i64 %i.bt, 32
  %i.by = ashr exact i64 %sext, 32
  %i.bz = load i64, ptr @bytes_in, align 8, !tbaa !16
  %i.ca = add i64 %i.bz, %i.by
  store i64 %i.ca, ptr @bytes_in, align 8, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.cb = phi i32 [ %i.bx, %bb.l ], [ %i.as, %._crit_edge ] ; 2 uses
  %.2112 = phi i32 [ %i.bu, %bb.l ], [ %.1111, %._crit_edge ] ; 3 uses
  %.not159 = icmp eq i32 %.2112, 0                ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  br i1 %.not159, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = urem i32 %i.cb, %.1114.ph
  %i.ce = zext i32 %i.cd to i64
  %i.cf = sub nsw i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 3
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ch = shl nuw nsw i64 %i.cc, 3
  %i.ci = sub nsw i64 %i.ch, %i.am
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cj = phi i64 [ %i.cg, %bb.n ], [ %i.ci, %bb.o ] ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %.lr.ph213, label %.outer._crit_edge

.lr.ph213:                                        ; preds = %bb.p, %.outer
  %.2120.ph282 = phi i64 [ %.3121, %.outer ], [ %.1119, %bb.p ] ; 10 uses
  %.2126.ph281 = phi i32 [ %.6, %.outer ], [ %.1125, %bb.p ] ; 4 uses
  %.2131.ph280 = phi i64 [ %.lcssa, %.outer ], [ 0, %bb.p ] ; 4 uses
  %.2135.ph279 = phi i64 [ %.lcssa186, %.outer ], [ %.1134, %bb.p ] ; 3 uses
  %.2139.ph278 = phi i8 [ %i.ec, %.outer ], [ %.1138, %bb.p ] ; 2 uses
  %i.cl = icmp sgt i64 %.2120.ph282, %.1116.ph
  br i1 %i.cl, label %._crit_edge265, label %.lr.ph213.split.us

.lr.ph213.split.us:                               ; preds = %.lr.ph213
  %2 = ashr i64 %.2131.ph280, 3
  %3 = getelementptr inbounds i8, ptr @inbuf, i64 %2 ; 2 uses
  %4 = load i16, ptr %3, align 1
  %5 = zext i16 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %7 = load i8, ptr %6, align 1, !tbaa !17
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 16
  %10 = or disjoint i64 %9, %5
  %11 = and i64 %.2131.ph280, 7
  %12 = lshr i64 %10, %11
  %13 = and i64 %12, %i.an                        ; 5 uses
  %14 = add nsw i64 %.2131.ph280, %i.ao           ; 6 uses
  %15 = icmp eq i64 %.2135.ph279, -1
  br i1 %15, label %.lr.ph264, label %bb.s

.lr.ph213.split:                                  ; preds = %bb.r
  %i.cm = ashr i64 %14, 3
  %i.cn = getelementptr inbounds i8, ptr @inbuf, i64 %i.cm ; 2 uses
  %i.co = load i16, ptr %i.cn, align 1
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 16
  %i.cu = or disjoint i64 %i.ct, %i.cp
  %i.cv = and i64 %14, 7
  %i.cw = lshr i64 %i.cu, %i.cv
  %i.cx = and i64 %i.cw, %i.an
  %i.cy = add nsw i64 %14, %i.ao
  br label %bb.s

._crit_edge265:                                   ; preds = %.lr.ph213
  %16 = add nsw i64 %.2131.ph280, -1
  %17 = shl i32 %.1114.ph, 3
  %18 = sext i32 %17 to i64                       ; 2 uses
  %19 = add i64 %16, %18                          ; 2 uses
  %20 = srem i64 %19, %18
  %21 = sub i64 %19, %20
  %22 = add nsw i32 %.1114.ph, 1                  ; 4 uses
  %23 = load i32, ptr @maxbits, align 4, !tbaa !13
  %24 = icmp eq i32 %22, %23
  %25 = zext nneg i32 %22 to i64
  %notmask = shl nsw i64 -1, %25
  %26 = xor i64 %notmask, -1
  %.2117 = select i1 %24, i64 %i.ae, i64 %26
  %notmask161 = shl nsw i32 -1, %22
  %27 = xor i32 %notmask161, -1
  br label %.preheader165.outer.backedge

.preheader165.outer.backedge:                     ; preds = %._crit_edge265, %bb.t
  %.1138.ph.be = phi i8 [ %.2139.lcssa180, %bb.t ], [ %.2139.ph278, %._crit_edge265 ]
  %.1134.ph.be = phi i64 [ %.2135.lcssa175, %bb.t ], [ %.2135.ph279, %._crit_edge265 ]
  %.1130.ph.be = phi i64 [ %i.dn, %bb.t ], [ %21, %._crit_edge265 ]
  %.1125.ph.be = phi i32 [ %.2126.lcssa167, %bb.t ], [ %.2126.ph281, %._crit_edge265 ]
  %.1123.ph.be = phi i32 [ 511, %bb.t ], [ %27, %._crit_edge265 ]
  %.1119.ph.be = phi i64 [ 256, %bb.t ], [ %.2120.ph282, %._crit_edge265 ]
  %.1116.ph.be = phi i64 [ 511, %bb.t ], [ %.2117, %._crit_edge265 ]
  %.1114.ph.be = phi i32 [ 9, %bb.t ], [ %22, %._crit_edge265 ]
  br label %.preheader165.outer

.lr.ph264:                                        ; preds = %.lr.ph213.split.us
  %i.cz = icmp samesign ugt i64 %13, 255
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph264
  tail call void @ffpmsg(ptr noundef nonnull @ifname) #7
  tail call void @ffpmsg(ptr noundef nonnull @.str.5) #7
  br label %.critedge

bb.r:                                             ; preds = %.lr.ph264
  %i.da = trunc nuw i64 %13 to i8                 ; 3 uses
  %i.db = add nsw i32 %.2126.ph281, 1             ; 2 uses
  %i.dc = sext i32 %.2126.ph281 to i64
  %i.dd = getelementptr inbounds i8, ptr @outbuf, i64 %i.dc
  store i8 %i.da, ptr %i.dd, align 1, !tbaa !17
  %i.de = icmp sgt i64 %i.cj, %14
  br i1 %i.de, label %.lr.ph213.split, label %.outer._crit_edge, !llvm.loop !27

bb.s:                                             ; preds = %.lr.ph213.split, %.lr.ph213.split.us
  %.lcssa186 = phi i64 [ %i.cx, %.lr.ph213.split ], [ %13, %.lr.ph213.split.us ] ; 6 uses
  %.lcssa = phi i64 [ %i.cy, %.lr.ph213.split ], [ %14, %.lr.ph213.split.us ] ; 4 uses
  %.2139.lcssa180 = phi i8 [ %i.da, %.lr.ph213.split ], [ %.2139.ph278, %.lr.ph213.split.us ] ; 2 uses
  %.2135.lcssa175 = phi i64 [ %13, %.lr.ph213.split ], [ %.2135.ph279, %.lr.ph213.split.us ] ; 3 uses
  %.2126.lcssa167 = phi i32 [ %i.db, %.lr.ph213.split ], [ %.2126.ph281, %.lr.ph213.split.us ] ; 7 uses
  %i.df = icmp eq i64 %.lcssa186, 256
  %i.dg = load i32, ptr @block_mode, align 4
  %i.dh = icmp ne i32 %i.dg, 0
  %or.cond = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @prev, i8 0, i64 256, i1 false)
  %i.di = add nsw i64 %.lcssa, -1
  %i.dj = shl i32 %.1114.ph, 3
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = add i64 %i.di, %i.dk                    ; 2 uses
  %i.dm = srem i64 %i.dl, %i.dk
  %i.dn = sub i64 %i.dl, %i.dm
  br label %.preheader165.outer.backedge

bb.u:                                             ; preds = %bb.s
  %.not160 = icmp slt i64 %.lcssa186, %.2120.ph282
  br i1 %.not160, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = icmp sgt i64 %.lcssa186, %.2120.ph282
  br i1 %i.do, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.dp = icmp sgt i32 %.2126.lcssa167, 0
  br i1 %i.dp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @write_buf(i32 noundef %.2126.lcssa167)
  %i.dq = zext nneg i32 %.2126.lcssa167 to i64
  %i.dr = load i64, ptr @bytes_out, align 8, !tbaa !16
  %i.ds = add i64 %i.dr, %i.dq
  store i64 %i.ds, ptr @bytes_out, align 8, !tbaa !16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @ffpmsg(ptr noundef nonnull @ifname) #7
  tail call void @ffpmsg(ptr noundef nonnull @.str.5) #7
  br label %.critedge

bb.z:                                             ; preds = %bb.v
  store i8 %.2139.lcssa180, ptr getelementptr inbounds nuw (i8, ptr @d_buf, i64 65533), align 1, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  %.0144 = phi ptr [ getelementptr inbounds nuw (i8, ptr @d_buf, i64 65533), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @d_buf, i64 65534), %bb.u ] ; 2 uses
  %.1142 = phi i64 [ %.2135.lcssa175, %bb.z ], [ %.lcssa186, %bb.u ] ; 3 uses
  %i.dt = icmp ugt i64 %.1142, 255
  br i1 %i.dt, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %bb.aa, %.lr.ph274
  %.2143272 = phi i64 [ %i.dz, %.lr.ph274 ], [ %.1142, %bb.aa ] ; 2 uses
  %.1145271 = phi ptr [ %i.dw, %.lr.ph274 ], [ %.0144, %bb.aa ]
  %i.du = getelementptr inbounds i8, ptr @window, i64 %.2143272
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !17
  %i.dw = getelementptr inbounds i8, ptr %.1145271, i64 -1 ; 3 uses
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !17
  %i.dx = getelementptr inbounds [2 x i8], ptr @prev, i64 %.2143272
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !36 ; 2 uses
  %i.dz = zext i16 %i.dy to i64                   ; 2 uses
  %i.ea = icmp ugt i16 %i.dy, 255
  br i1 %i.ea, label %.lr.ph274, label %._crit_edge275, !llvm.loop !28

._crit_edge275:                                   ; preds = %.lr.ph274, %bb.aa
  %.1145.lcssa = phi ptr [ %.0144, %bb.aa ], [ %i.dw, %.lr.ph274 ]
  %.2143.lcssa = phi i64 [ %.1142, %bb.aa ], [ %i.dz, %.lr.ph274 ]
  %i.eb = getelementptr inbounds nuw i8, ptr @window, i64 %.2143.lcssa
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !17  ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %.1145.lcssa, i64 -1 ; 4 uses
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !17
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = sub i32 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @d_buf, i64 65534) to i32), %i.ef ; 3 uses
  %i.eh = add nsw i32 %i.eg, %.2126.lcssa167      ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 16383
  br i1 %i.ei, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %._crit_edge275, %bb.aj
  %.2146 = phi ptr [ %i.fm, %bb.aj ], [ %i.ed, %._crit_edge275 ] ; 2 uses
  %.3127 = phi i32 [ %.5, %bb.aj ], [ %.2126.lcssa167, %._crit_edge275 ] ; 4 uses
  %.1107 = phi i32 [ %i.fp, %bb.aj ], [ %i.eg, %._crit_edge275 ]
  %i.ej = sub nsw i32 16384, %.3127
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.1107, i32 %i.ej) ; 4 uses
  %i.ek = icmp sgt i32 %spec.select, 0
  br i1 %i.ek, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.preheader
  %i.el = sext i32 %.3127 to i64
  %i.em = getelementptr inbounds i8, ptr @outbuf, i64 %i.el
  %i.en = zext nneg i32 %spec.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %.2146, i64 %i.en, i1 false)
  %i.eo = add nsw i32 %spec.select, %.3127
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.preheader
  %.4128 = phi i32 [ %i.eo, %bb.ab ], [ %.3127, %.preheader ] ; 4 uses
  %i.ep = icmp sgt i32 %.4128, 16383
  br i1 %i.ep, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.eq = load ptr, ptr @realloc_fn, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.er = zext nneg i32 %.4128 to i64             ; 4 uses
  %i.es = load ptr, ptr @ofd, align 8, !tbaa !12
  %i.et = tail call i64 @fwrite(ptr noundef nonnull @outbuf, i64 noundef 1, i64 noundef %i.er, ptr noundef %i.es)
  %.not8.i = icmp eq i64 %i.et, %i.er
  br i1 %.not8.i, label %write_buf.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @ffpmsg(ptr noundef nonnull @ifname) #7
  tail call void @ffpmsg(ptr noundef nonnull @.str.6) #7
  br label %write_buf.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eu = load i64, ptr @bytes_out, align 8, !tbaa !16 ; 2 uses
  %i.ev = zext nneg i32 %.4128 to i64             ; 5 uses
  %i.ew = add nsw i64 %i.eu, %i.ev                ; 2 uses
  %i.ex = load ptr, ptr @memsize, align 8, !tbaa !20
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !16
  %i.ez = icmp ugt i64 %i.ew, %i.ey
  %.pre.i = load ptr, ptr @memptr, align 8, !tbaa !22
  %i.fa = load ptr, ptr %.pre.i, align 8, !tbaa !18 ; 2 uses
  br i1 %i.ez, label %bb.ah, label %._crit_edge.i

bb.ah:                                            ; preds = %bb.ag
  %i.fb = tail call ptr %i.eq(ptr noundef %i.fa, i64 noundef %i.ew) #7, !inline_history !37 ; 3 uses
  %i.fc = load ptr, ptr @memptr, align 8, !tbaa !22
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !18
  %i.fd = load i64, ptr @bytes_out, align 8, !tbaa !16 ; 2 uses
  %i.fe = add nsw i64 %i.fd, %i.ev
  %i.ff = load ptr, ptr @memsize, align 8, !tbaa !20
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !16
  %.not9.i = icmp eq ptr %i.fb, null
  br i1 %.not9.i, label %bb.ai, label %._crit_edge.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @ffpmsg(ptr noundef nonnull @ifname) #7
  tail call void @ffpmsg(ptr noundef nonnull @.str.7) #7
  br label %write_buf.exit

._crit_edge.i:                                    ; preds = %bb.ah, %bb.ag
  %i.fg = phi i64 [ %i.fd, %bb.ah ], [ %i.eu, %bb.ag ]
  %i.fh = phi ptr [ %i.fb, %bb.ah ], [ %i.fa, %bb.ag ]
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.fg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fi, ptr noundef nonnull align 16 dereferenceable(1) @outbuf, i64 %i.ev, i1 false)
  br label %write_buf.exit

write_buf.exit:                                   ; preds = %bb.ae, %bb.af, %bb.ai, %._crit_edge.i
  %.pre-phi = phi i64 [ %i.er, %bb.ae ], [ %i.er, %bb.af ], [ %i.ev, %bb.ai ], [ %i.ev, %._crit_edge.i ]
  %i.fj = load i64, ptr @bytes_out, align 8, !tbaa !16
  %i.fk = add i64 %i.fj, %.pre-phi
  store i64 %i.fk, ptr @bytes_out, align 8, !tbaa !16
  br label %bb.aj

bb.aj:                                            ; preds = %write_buf.exit, %bb.ac
  %.5 = phi i32 [ 0, %write_buf.exit ], [ %.4128, %bb.ac ] ; 2 uses
  %i.fl = sext i32 %spec.select to i64
  %i.fm = getelementptr inbounds i8, ptr %.2146, i64 %i.fl ; 2 uses
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = sub i32 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @d_buf, i64 65534) to i32), %i.fo ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.preheader, label %.loopexit, !llvm.loop !29

bb.ak:                                            ; preds = %._crit_edge275
  %i.fr = sext i32 %.2126.lcssa167 to i64
  %i.fs = getelementptr inbounds i8, ptr @outbuf, i64 %i.fr
  %i.ft = sext i32 %i.eg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 1 %i.ed, i64 %i.ft, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %bb.ak
  %.6 = phi i32 [ %i.eh, %bb.ak ], [ %.5, %bb.aj ] ; 2 uses
  %i.fu = icmp slt i64 %.2120.ph282, %i.ae
  br i1 %i.fu, label %bb.al, label %.outer

bb.al:                                            ; preds = %.loopexit
  %i.fv = trunc i64 %.2135.lcssa175 to i16
  %i.fw = getelementptr inbounds [2 x i8], ptr @prev, i64 %.2120.ph282
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !36
  %i.fx = getelementptr inbounds i8, ptr @window, i64 %.2120.ph282
  store i8 %i.ec, ptr %i.fx, align 1, !tbaa !17
  %i.fy = add nsw i64 %.2120.ph282, 1
  br label %.outer

.outer:                                           ; preds = %bb.al, %.loopexit
  %.3121 = phi i64 [ %i.fy, %bb.al ], [ %.2120.ph282, %.loopexit ] ; 2 uses
  %i.fz = icmp sgt i64 %i.cj, %.lcssa
  br i1 %i.fz, label %.lr.ph213, label %.outer._crit_edge, !llvm.loop !27

.outer._crit_edge:                                ; preds = %bb.r, %.outer, %bb.p
  %.2120.ph.lcssa191 = phi i64 [ %.1119, %bb.p ], [ %.2120.ph282, %bb.r ], [ %.3121, %.outer ]
  %.2139.lcssa = phi i8 [ %.1138, %bb.p ], [ %i.da, %bb.r ], [ %i.ec, %.outer ]
  %.2135.lcssa = phi i64 [ %.1134, %bb.p ], [ %13, %bb.r ], [ %.lcssa186, %.outer ]
  %.2131.lcssa = phi i64 [ 0, %bb.p ], [ %14, %bb.r ], [ %.lcssa, %.outer ]
  %.2126.lcssa = phi i32 [ %.1125, %bb.p ], [ %i.db, %bb.r ], [ %.6, %.outer ] ; 4 uses
  br i1 %.not159, label %bb.am, label %.preheader165, !llvm.loop !30

bb.am:                                            ; preds = %.outer._crit_edge
  %i.ga = icmp sgt i32 %.2126.lcssa, 0
  br i1 %i.ga, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @write_buf(i32 noundef %.2126.lcssa)
  %i.gb = zext nneg i32 %.2126.lcssa to i64
  %i.gc = load i64, ptr @bytes_out, align 8, !tbaa !16
  %i.gd = add i64 %i.gc, %i.gb
  store i64 %i.gd, ptr @bytes_out, align 8, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.q, %bb.y, %bb.am, %bb.an, %bb.i
  %.2 = phi i32 [ 1, %bb.i ], [ 0, %bb.am ], [ 0, %bb.an ], [ 1, %bb.y ], [ 1, %bb.q ], [ 1, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zuncompress2mem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i32, ptr %6, align 4, !tbaa !13     ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr @ifname, align 16, !tbaa !17
  %i.d = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) @ifname, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 127) #7 ; 0 uses
  store ptr %1, ptr @ifd, align 8, !tbaa !12
  store ptr %2, ptr @memptr, align 8, !tbaa !22
  store ptr %3, ptr @memsize, align 8, !tbaa !20
  store ptr %4, ptr @realloc_fn, align 8, !tbaa !18
  store i32 0, ptr @inptr, align 4, !tbaa !13
  store i64 0, ptr @bytes_out, align 8, !tbaa !16
  store i64 0, ptr @bytes_in, align 8, !tbaa !16
  store i32 0, ptr @insize, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = phi i32 [ %i.n, %bb.d ], [ 0, %bb.b ]    ; 2 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @inbuf, i64 %i.f
  %i.h = sub nuw nsw i32 32768, %i.e
  %i.i = zext nneg i32 %i.h to i64
  %i.j = load ptr, ptr @ifd, align 8, !tbaa !12
  %i.k = tail call i64 @fread(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef %i.i, ptr noundef %i.j)
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = add i32 %i.l, 1
  %or.cond.i = icmp ult i32 %i.m, 2
  %.pr.i = load i32, ptr @insize, align 4, !tbaa !13 ; 3 uses
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %.pr.i, %i.l                     ; 4 uses
  store i32 %i.n, ptr @insize, align 4, !tbaa !13
  %i.o = icmp ult i32 %i.n, 32768
  br i1 %i.o, label %bb.c, label %.thread.i, !llvm.loop !0

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %.pr.i, 0
  br i1 %i.p, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  tail call void @ffpmsg(ptr noundef nonnull @ifname) #7
  tail call void @ffpmsg(ptr noundef nonnull @.str.4) #7
  %.pre = load i32, ptr @inptr, align 4, !tbaa !13
  %.pre28 = load i32, ptr @insize, align 4, !tbaa !13
  br label %fill_inbuf.exit

.thread.i:                                        ; preds = %bb.d, %bb.e
  %i.q = phi i32 [ %.pr.i, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = load i64, ptr @bytes_in, align 8, !tbaa !16
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr @bytes_in, align 8, !tbaa !16
  store i32 1, ptr @inptr, align 4, !tbaa !13
  %i.u = load i8, ptr @inbuf, align 16, !tbaa !17
  br label %fill_inbuf.exit

fill_inbuf.exit:                                  ; preds = %bb.f, %.thread.i
  %i.v = phi i32 [ %i.q, %.thread.i ], [ %.pre28, %bb.f ]
  %i.w = phi i32 [ 1, %.thread.i ], [ %.pre, %bb.f ] ; 3 uses
  %.0.i = phi i8 [ %i.u, %.thread.i ], [ 1, %bb.f ]
  store i8 %.0.i, ptr %i.a, align 1, !tbaa !17
  %i.x = icmp ult i32 %i.w, %i.v
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %fill_inbuf.exit
  %i.y = add nuw i32 %i.w, 1
  store i32 %i.y, ptr @inptr, align 4, !tbaa !13
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @inbuf, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  br label %fill_inbuf.exit21

bb.h:                                             ; preds = %fill_inbuf.exit
  store i32 0, ptr @insize, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ac = phi i32 [ %i.al, %bb.j ], [ 0, %bb.h ]  ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @inbuf, i64 %i.ad
  %i.af = sub nuw nsw i32 32768, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = load ptr, ptr @ifd, align 8, !tbaa !12
  %i.ai = tail call i64 @fread(ptr noundef nonnull %i.ae, i64 noundef 1, i64 noundef %i.ag, ptr noundef %i.ah)
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = add i32 %i.aj, 1
  %or.cond.i17 = icmp ult i32 %i.ak, 2
  %.pr.i18 = load i32, ptr @insize, align 4, !tbaa !13 ; 3 uses
  br i1 %or.cond.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = add i32 %.pr.i18, %i.aj                 ; 4 uses
  store i32 %i.al, ptr @insize, align 4, !tbaa !13
  %i.am = icmp ult i32 %i.al, 32768
  br i1 %i.am, label %bb.i, label %.thread.i19, !llvm.loop !0

bb.k:                                             ; preds = %bb.i
  %i.an = icmp eq i32 %.pr.i18, 0
  br i1 %i.an, label %bb.l, label %.thread.i19

bb.l:                                             ; preds = %bb.k
  tail call void @ffpmsg(ptr noundef nonnull @ifname) #7
  tail call void @ffpmsg(ptr noundef nonnull @.str.4) #7
  br label %fill_inbuf.exit21

.thread.i19:                                      ; preds = %bb.j, %bb.k
  %i.ao = phi i32 [ %.pr.i18, %bb.k ], [ %i.al, %bb.j ]
  %i.ap = zext i32 %i.ao to i64
  %i.aq = load i64, ptr @bytes_in, align 8, !tbaa !16
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr @bytes_in, align 8, !tbaa !16
  store i32 1, ptr @inptr, align 4, !tbaa !13
  %i.as = load i8, ptr @inbuf, align 16, !tbaa !17
  br label %fill_inbuf.exit21

fill_inbuf.exit21:                                ; preds = %.thread.i19, %bb.l, %bb.g
  %i.at = phi i8 [ %i.ab, %bb.g ], [ %i.as, %.thread.i19 ], [ 1, %bb.l ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !17
  %i.av = load i16, ptr %i.a, align 1
  %i.aw = icmp ne i16 %i.av, -25313
  %i.ax = zext i1 %i.aw to i32
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %fill_inbuf.exit21
  tail call void @ffpmsg(ptr noundef nonnull @ifname) #7
  tail call void @ffpmsg(ptr noundef nonnull @.str.1) #7
  br label %bb.s

bb.n:                                             ; preds = %fill_inbuf.exit21
  store ptr @unlzw, ptr @work, align 8, !tbaa !18
  %i.ay = load ptr, ptr @ifd, align 8, !tbaa !12
  %i.az = load ptr, ptr @ofd, align 8, !tbaa !12
  %i.ba = tail call i32 @unlzw(ptr noundef %i.ay, ptr noundef %i.az)
  %.not15 = icmp eq i32 %i.ba, 0
  br i1 %.not15, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 414, ptr %6, align 4, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not16 = icmp eq ptr %5, null
  br i1 %.not16, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load i64, ptr @bytes_out, align 8, !tbaa !16
  store i64 %i.bb, ptr %5, align 8, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = load i32, ptr %6, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r, %bb.m
  %.0 = phi i32 [ %i.bc, %bb.r ], [ -1, %bb.m ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

end_hunk_0
