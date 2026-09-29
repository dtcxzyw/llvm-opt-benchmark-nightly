Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_Vary_Apply_Glyph_Deltas:bb.a
  %i.u = add nuw nsw i64 %i.t, 56                 ; 2 uses
  %scevgep.a = getelementptr i8, ptr %2, i64 %i.u
  %scevgep562 = getelementptr i8, ptr %i.r, i64 %i.u
  %scevgep563 = getelementptr nuw i8, ptr %2, i64 8
  %i.v = add nuw nsw i64 %i.t, 64                 ; 2 uses
  %scevgep564 = getelementptr i8, ptr %2, i64 %i.v
  %scevgep565 = getelementptr nuw i8, ptr %i.r, i64 8
  %scevgep566 = getelementptr i8, ptr %i.r, i64 %i.v
  %bound0 = icmp ult ptr %2, %scevgep562
  %bound1 = icmp ult ptr %i.r, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0567 = icmp ult ptr %scevgep563, %scevgep566
  %bound1568 = icmp ult ptr %scevgep565, %scevgep564
  %found.conflict569 = and i1 %bound0567, %bound1568
  %conflict.rdx = or i1 %found.conflict, %found.conflict569
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 131070       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %index
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.w
  %wide.load = load <2 x i64>, ptr %i.x, align 8
  %wide.load570 = load <2 x i64>, ptr %i.y, align 8
  %i.z = shl nsw <2 x i64> %wide.load, splat (i64 6)
  %i.aa = shl nsw <2 x i64> %wide.load570, splat (i64 6)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w
  store <2 x i64> %i.z, ptr %i.ab, align 8
  store <2 x i64> %i.aa, ptr %i.ac, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !827

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit643, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ae = zext i16 %i.l to i64                    ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 3
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.ph
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.ph
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !185
  %i.aj = shl nsw <2 x i64> %i.ai, splat (i64 6)
  store <2 x i64> %i.aj, ptr %i.ah, align 8, !tbaa !185
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ak = icmp eq i64 %i.af, %indvars.iv.ph
  br i1 %i.ak, label %.loopexit643, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.an = load <2 x i64>, ptr %i.al, align 8, !tbaa !185
  %i.ao = shl nsw <2 x i64> %i.an, splat (i64 6)
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !185
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !185
  %i.as = shl nsw <2 x i64> %i.ar, splat (i64 6)
  store <2 x i64> %i.as, ptr %i.aq, align 8, !tbaa !185
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit643, label %scalar.ph, !llvm.loop !828

.loopexit643:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 1201
  %i.au = load i8, ptr %i.at, align 1, !tbaa !321
  %.not = icmp eq i8 %i.au, 0
  br i1 %.not, label %.thread439, label %bb.b

bb.b:                                             ; preds = %.loopexit643
  %.not410 = icmp eq ptr %i.p, null
  br i1 %.not410, label %bb.av, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !385
  %.not411 = icmp ult i32 %i.j, %i.aw
  br i1 %.not411, label %bb.d, label %bb.av

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !383 ; 2 uses
  %i.az = zext i32 %i.j to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !185 ; 3 uses
  %i.bc = add nuw i32 %i.j, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !185 ; 2 uses
  %i.bg = icmp eq i64 %i.bb, %i.bf
  br i1 %i.bg, label %bb.av, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = sub i64 %i.bf, %i.bb                    ; 3 uses
  %i.bi = tail call i32 @FT_Stream_Seek(ptr noundef nonnull %i.f, i64 noundef %i.bb) #21 ; 2 uses
  %.not412 = icmp eq i32 %i.bi, 0
  br i1 %.not412, label %bb.f, label %bb.av

bb.f:                                             ; preds = %bb.e
  %i.bj = tail call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.f, i64 noundef %i.bh) #21 ; 3 uses
  store i32 %i.bj, ptr %i.a, align 4, !tbaa !152
  %.not413 = icmp eq i32 %i.bj, 0
  br i1 %.not413, label %bb.g, label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 9 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !345
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !391
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = tail call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %i.f) #21 ; 2 uses
  %i.br = tail call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %i.f) #21
  %i.bs = zext i16 %i.br to i64                   ; 2 uses
  %i.bt = icmp ult i64 %i.bh, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = and i16 %i.bq, 4095                     ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i32              ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, 2
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = icmp ult i64 %i.bh, %i.bx
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %bb.au

bb.j:                                             ; preds = %bb.h
  %i.bz = add i64 %i.bp, %i.bs                    ; 3 uses
  %.not414 = icmp sgt i16 %i.bq, -1
  br i1 %.not414, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !345
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !391 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !384 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cd
  %i.cj = icmp ult i64 %i.bz, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  %i.cl = select i1 %i.cj, ptr %i.ck, ptr %i.cg
  store ptr %i.cl, ptr %i.bk, align 8, !tbaa !345
  %i.cm = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %i.f, ptr noundef %i.c)
  %i.cn = load ptr, ptr %i.bk, align 8, !tbaa !345
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !391 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = load ptr, ptr %i.cf, align 8, !tbaa !384 ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cq
  %i.cv = icmp ult i64 %i.ce, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ce
  %i.cx = select i1 %i.cv, ptr %i.cw, ptr %i.cs
  store ptr %i.cx, ptr %i.bk, align 8, !tbaa !345
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0394 = phi i64 [ %i.cr, %bb.k ], [ %i.bz, %bb.j ]
  %.0371 = phi ptr [ %i.cm, %bb.k ], [ null, %bb.j ] ; 3 uses
  %i.cy = load i32, ptr %i.p, align 8, !tbaa !317
  %i.cz = mul i32 %i.cy, 24                       ; 2 uses
  %i.da = add nuw nsw i32 %i.m, 11
  %i.db = and i32 %i.da, 131064
  %i.dc = mul nuw nsw i32 %i.n, 48
  %i.dd = add nuw nsw i32 %i.dc, %i.db
  %i.de = add i32 %i.dd, %i.cz
  %i.df = zext i32 %i.de to i64
  %i.dg = call ptr @ft_mem_alloc(ptr noundef %i.h, i64 noundef %i.df, ptr noundef nonnull %i.a) #21 ; 13 uses
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !152
  %.not415 = icmp eq i32 %i.dh, 0
  br i1 %.not415, label %bb.m, label %.thread433

bb.m:                                             ; preds = %bb.l
  %i.di = shl nuw nsw i32 %i.n, 4
  %i.dj = zext nneg i32 %i.di to i64              ; 5 uses
  %i.dk = zext i32 %i.cz to i64                   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dk ; 14 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.dj  ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dl, i8 0, i64 %i.dj, i1 false)
  %i.dn = load i32, ptr %i.p, align 8, !tbaa !317
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !442 ; 9 uses
  %min.iters.check586 = icmp ult i16 %i.l, 16
  br i1 %min.iters.check586, label %scalar.ph585.preheader, label %vector.memcheck571

vector.memcheck571:                               ; preds = %bb.m
  %i.dp = zext i16 %i.l to i64                    ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 5
  %3 = add nuw nsw i64 %i.dq, %i.dk               ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dg, i64 %3
  %scevgep572 = getelementptr i8, ptr %i.dr, i64 120
  %i.ds = shl nuw nsw i64 %i.dp, 4                ; 2 uses
  %scevgep573 = getelementptr i8, ptr %i.do, i64 %i.ds
  %i.dt = getelementptr i8, ptr %scevgep573, i64 56
  %i.du = getelementptr i8, ptr %i.dg, i64 %i.ds
  %scevgep574 = getelementptr i8, ptr %i.du, i64 %i.dk
  %i.dv = getelementptr i8, ptr %scevgep574, i64 72
  %i.dw = getelementptr i8, ptr %i.dg, i64 %3
  %scevgep575 = getelementptr i8, ptr %i.dw, i64 128
  %scevgep576 = getelementptr nuw i8, ptr %i.do, i64 8
  %scevgep577 = getelementptr i8, ptr %i.do, i64 %i.dj
  %bound0578 = icmp ult ptr %i.dm, %i.dt
  %bound1579 = icmp ult ptr %i.do, %scevgep572
  %found.conflict580 = and i1 %bound0578, %bound1579
  %bound0581 = icmp ult ptr %i.dv, %scevgep577
  %bound1582 = icmp ult ptr %scevgep576, %scevgep575
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx584 = or i1 %found.conflict580, %found.conflict583
  br i1 %conflict.rdx584, label %scalar.ph585.preheader, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck571
  %n.vec588 = and i64 %wide.trip.count, 131070    ; 3 uses
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph587
  %index590 = phi i64 [ 0, %vector.ph587 ], [ %index.next593, %vector.body589 ] ; 4 uses
  %i.dx = or disjoint i64 %index590, 1            ; 2 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %index590
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dx
  %wide.load591 = load <2 x i64>, ptr %i.dy, align 8
  %wide.load592 = load <2 x i64>, ptr %i.dz, align 8
  %i.ea = shl <2 x i64> %wide.load591, splat (i64 16)
  %i.eb = shl <2 x i64> %wide.load592, splat (i64 16)
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %index590
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dx
  store <2 x i64> %i.ea, ptr %i.ec, align 8
  store <2 x i64> %i.eb, ptr %i.ed, align 8
  %index.next593 = add nuw i64 %index590, 2       ; 2 uses
  %i.ee = icmp eq i64 %index.next593, %n.vec588
  br i1 %i.ee, label %middle.block594, label %vector.body589, !llvm.loop !829

middle.block594:                                  ; preds = %vector.body589
  %cmp.n595 = icmp eq i64 %n.vec588, %wide.trip.count
  br i1 %cmp.n595, label %.loopexit642, label %scalar.ph585.preheader

scalar.ph585.preheader:                           ; preds = %vector.memcheck571, %bb.m, %middle.block594
  %indvars.iv491.ph = phi i64 [ 0, %vector.memcheck571 ], [ 0, %bb.m ], [ %n.vec588, %middle.block594 ] ; 5 uses
  %i.ef = zext i16 %i.l to i64                    ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, 3
  %xtraiter647 = and i64 %i.ef, 1
  %lcmp.mod648.not = icmp eq i64 %xtraiter647, 0
  br i1 %lcmp.mod648.not, label %scalar.ph585.prol.loopexit, label %scalar.ph585.prol

scalar.ph585.prol:                                ; preds = %scalar.ph585.preheader
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv491.ph
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv491.ph
  %i.ej = load <2 x i64>, ptr %i.eh, align 8, !tbaa !185
  %i.ek = shl <2 x i64> %i.ej, splat (i64 16)
  store <2 x i64> %i.ek, ptr %i.ei, align 8, !tbaa !185
  %indvars.iv.next492.prol = or disjoint i64 %indvars.iv491.ph, 1
  br label %scalar.ph585.prol.loopexit

scalar.ph585.prol.loopexit:                       ; preds = %scalar.ph585.prol, %scalar.ph585.preheader
  %indvars.iv491.unr = phi i64 [ %indvars.iv491.ph, %scalar.ph585.preheader ], [ %indvars.iv.next492.prol, %scalar.ph585.prol ]
  %i.el = icmp eq i64 %i.eg, %indvars.iv491.ph
  br i1 %i.el, label %.loopexit642, label %scalar.ph585

scalar.ph585:                                     ; preds = %scalar.ph585.prol.loopexit, %scalar.ph585
  %indvars.iv491 = phi i64 [ %indvars.iv.next492.1, %scalar.ph585 ], [ %indvars.iv491.unr, %scalar.ph585.prol.loopexit ] ; 4 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv491
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv491
  %i.eo = load <2 x i64>, ptr %i.em, align 8, !tbaa !185
  %i.ep = shl <2 x i64> %i.eo, splat (i64 16)
  store <2 x i64> %i.ep, ptr %i.en, align 8, !tbaa !185
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv.next492
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv.next492
  %i.es = load <2 x i64>, ptr %i.eq, align 8, !tbaa !185
  %i.et = shl <2 x i64> %i.es, splat (i64 16)
  store <2 x i64> %i.et, ptr %i.er, align 8, !tbaa !185
  %indvars.iv.next492.1 = add nuw nsw i64 %indvars.iv491, 2 ; 2 uses
  %exitcond495.not.1 = icmp eq i64 %indvars.iv.next492.1, %wide.trip.count
  br i1 %exitcond495.not.1, label %.loopexit642, label %scalar.ph585, !llvm.loop !830

.loopexit642:                                     ; preds = %scalar.ph585.prol.loopexit, %scalar.ph585, %middle.block594
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.dj ; 5 uses
  %i.ew = zext i32 %i.dn to i64                   ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ew ; 5 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew ; 4 uses
  %i.ez = getelementptr [8 x i8], ptr %i.dl, i64 %wide.trip.count ; 13 uses
  %.not482 = icmp eq i16 %i.bu, 0
  br i1 %.not482, label %._crit_edge480, label %.lr.ph479

.lr.ph479:                                        ; preds = %.loopexit642
  %i.fa = load ptr, ptr %i.bk, align 8, !tbaa !345
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.fd = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ff = zext i16 %i.l to i64
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = add nuw nsw i64 %i.fg, 32               ; 2 uses
  %xtraiter665 = and i64 %wide.trip.count, 1
  %unroll_iter668 = and i64 %wide.trip.count, 131070
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  %lcmp.mod667 = trunc i16 %i.l to i1
  %n.vec630 = and i64 %wide.trip.count, 131070    ; 3 uses
  %cmp.n641 = icmp eq i64 %n.vec630, %wide.trip.count
  %n.vec617 = and i64 %wide.trip.count, 131070    ; 3 uses
  %cmp.n626 = icmp eq i64 %n.vec617, %wide.trip.count
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph479, %bb.aj
  %.0369477 = phi ptr [ null, %.lr.ph479 ], [ %.3, %bb.aj ] ; 2 uses
  %.0377476 = phi ptr [ %i.fa, %.lr.ph479 ], [ %.6, %bb.aj ] ; 6 uses
  %.1392475 = phi i32 [ 0, %.lr.ph479 ], [ %i.qg, %bb.aj ]
  %.1395474 = phi i64 [ %.0394, %.lr.ph479 ], [ %.2396, %bb.aj ] ; 3 uses
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !384
  %i.fj = ptrtoint ptr %i.fi to i64               ; 3 uses
  %i.fk = ptrtoint ptr %.0377476 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = icmp slt i64 %i.fl, 4
  br i1 %i.fm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %.thread433

bb.p:                                             ; preds = %bb.n
  %i.fn = load ptr, ptr %i.fc, align 8, !tbaa !381 ; 2 uses
  %i.fo = load i8, ptr %.0377476, align 1, !tbaa !186
  %i.fp = zext i8 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.0377476, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !186
  %i.ft = zext i8 %i.fs to i64
  %.pn = or disjoint i64 %i.fq, %i.ft
  %i.fu = getelementptr inbounds nuw i8, ptr %.0377476, i64 4 ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0377476, i64 2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !186
  %i.fx = zext i8 %i.fw to i16
  %i.fy = shl nuw i16 %i.fx, 8                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0377476, i64 3
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !186
  %i.gb = zext i8 %i.ga to i16
  %i.gc = or disjoint i16 %i.fy, %i.gb            ; 2 uses
  %i.gd = zext i16 %i.gc to i32                   ; 4 uses
  %i.ge = and i32 %i.gd, 16384
  %.not420 = icmp eq i32 %i.ge, 0                 ; 2 uses
  %spec.select = select i1 %.not420, ptr %i.fn, ptr null ; 2 uses
  %.not421 = icmp sgt i16 %i.fy, -1
  br i1 %.not421, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gf = load i32, ptr %i.p, align 8, !tbaa !317 ; 7 uses
  %i.gg = shl i32 %i.gf, 1
  %i.gh = ptrtoint ptr %i.fu to i64
  %i.gi = sub i64 %i.fj, %i.gh
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = icmp ugt i32 %i.gg, %i.gj
  br i1 %i.gk, label %bb.r, label %.preheader455

.preheader455:                                    ; preds = %bb.q
  %.not483 = icmp eq i32 %i.gf, 0
  br i1 %.not483, label %.loopexit456, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader455
  %wide.trip.count499 = zext i32 %i.gf to i64     ; 2 uses
  %xtraiter649 = and i64 %wide.trip.count499, 1
  %i.gl = icmp eq i32 %i.gf, 1
  br i1 %i.gl, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count499, 4294967294
  br label %.lr.ph

bb.r:                                             ; preds = %bb.q
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %.thread433

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv496 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next497.1, %.lr.ph ] ; 3 uses
  %.1378460 = phi ptr [ %i.fu, %.lr.ph.preheader.new ], [ %i.gx, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.1378460, i64 2
  %i.gn = load i8, ptr %.1378460, align 1, !tbaa !186
  %i.go = zext i8 %i.gn to i16
  %i.gp = shl nuw i16 %i.go, 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.1378460, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !186
  %i.gs = zext i8 %i.gr to i16
  %i.gt = or disjoint i16 %i.gp, %i.gs
  %i.gu = sext i16 %i.gt to i64
  %i.gv = shl nsw i64 %i.gu, 2
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv496
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !185
  %i.gx = getelementptr inbounds nuw i8, ptr %.1378460, i64 4 ; 3 uses
  %i.gy = load i8, ptr %i.gm, align 1, !tbaa !186
  %i.gz = zext i8 %i.gy to i16
  %i.ha = shl nuw i16 %i.gz, 8
  %i.hb = getelementptr inbounds nuw i8, ptr %.1378460, i64 3
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !186
  %i.hd = zext i8 %i.hc to i16
  %i.he = or disjoint i16 %i.ha, %i.hd
  %i.hf = sext i16 %i.he to i64
  %i.hg = shl nsw i64 %i.hf, 2
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv496
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i64 %i.hg, ptr %i.hi, align 8, !tbaa !185
  %indvars.iv.next497.1 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit456.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !831

end_hunk_0
begin_hunk_1_@TT_Vary_Apply_Glyph_Deltas:bb.a
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %i.mb) #21
  %i.py = load ptr, ptr %i.fb, align 8, !tbaa !384 ; 2 uses
  %i.pz = load ptr, ptr %i.f, align 8, !tbaa !391 ; 2 uses
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = icmp ult i64 %i.ln, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.ln
  %i.qf = select i1 %i.qd, ptr %i.qe, ptr %i.py
  store ptr %i.qf, ptr %i.bk, align 8, !tbaa !345
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.3 = phi ptr [ %.2, %bb.ai ], [ %.0369477, %bb.z ]
  %.2396 = add i64 %.pn, %.1395474
  %i.qg = add nuw nsw i32 %.1392475, 1            ; 2 uses
  %exitcond531.not = icmp eq i32 %i.qg, %i.bv
  br i1 %exitcond531.not, label %._crit_edge480, label %bb.n, !llvm.loop !845

._crit_edge480:                                   ; preds = %bb.aj, %.loopexit642
  %i.qh = getelementptr inbounds nuw i8, ptr %i.d, i64 1216 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !231 ; 3 uses
  %i.qj = and i32 %i.qi, 2
  %.not416 = icmp eq i32 %i.qj, 0                 ; 2 uses
  br i1 %.not416, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge480
  %i.qk = zext i16 %i.l to i64                    ; 2 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.qk
  store i64 0, ptr %i.ql, align 8, !tbaa !185
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.qk
  store i64 0, ptr %i.qm, align 8, !tbaa !185
  %i.qn = add nuw nsw i32 %i.m, 1
  %i.qo = zext nneg i32 %i.qn to i64              ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.qo
  store i64 0, ptr %i.qp, align 8, !tbaa !185
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.qo
  store i64 0, ptr %i.qq, align 8, !tbaa !185
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge480
  %i.qr = and i32 %i.qi, 16
  %.not417 = icmp eq i32 %i.qr, 0
  br i1 %.not417, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qs = add nuw nsw i32 %i.m, 2
  %i.qt = zext nneg i32 %i.qs to i64              ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.qt
  store i64 0, ptr %i.qu, align 8, !tbaa !185
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.qt
  store i64 0, ptr %i.qv, align 8, !tbaa !185
  %i.qw = add nuw nsw i32 %i.m, 3
  %i.qx = zext nneg i32 %i.qw to i64              ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.qx
  store i64 0, ptr %i.qy, align 8, !tbaa !185
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.qx
  store i64 0, ptr %i.qz, align 8, !tbaa !185
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ra = load ptr, ptr %i.q, align 8, !tbaa !442 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ao
  %indvars.iv532 = phi i64 [ 0, %bb.an ], [ %indvars.iv.next533, %bb.ao ] ; 5 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv532 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !185
  %i.rd = add nsw i64 %i.rc, 512
  %i.re = ashr i64 %i.rd, 10
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv532 ; 3 uses
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !230
  %i.rh = add nsw i64 %i.re, %i.rg
  store i64 %i.rh, ptr %i.rf, align 8, !tbaa !230
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv532 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !185
  %i.rk = add nsw i64 %i.rj, 512
  %i.rl = ashr i64 %i.rk, 10
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 2 uses
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !257
  %i.ro = add nsw i64 %i.rl, %i.rn
  store i64 %i.ro, ptr %i.rm, align 8, !tbaa !257
  %i.rp = load i64, ptr %i.rb, align 8, !tbaa !185
  %i.rq = shl i64 %i.rp, 32
  %i.rr = add i64 %i.rq, 140737488355328
  %i.rs = ashr i64 %i.rr, 48
  %i.rt = getelementptr inbounds nuw [16 x i8], ptr %i.ra, i64 %indvars.iv532 ; 3 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !230
  %i.rv = add nsw i64 %i.rs, %i.ru
  store i64 %i.rv, ptr %i.rt, align 8, !tbaa !230
  %i.rw = load i64, ptr %i.ri, align 8, !tbaa !185
  %i.rx = shl i64 %i.rw, 32
  %i.ry = add i64 %i.rx, 140737488355328
  %i.rz = ashr i64 %i.ry, 48
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !257
  %i.sc = add nsw i64 %i.rz, %i.sb
  store i64 %i.sc, ptr %i.sa, align 8, !tbaa !257
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count
  br i1 %exitcond536.not, label %bb.ap, label %bb.ao, !llvm.loop !846

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not416, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.se = zext i16 %i.l to i64                    ; 2 uses
  %i.sf = getelementptr inbounds nuw [16 x i8], ptr %i.ra, i64 %i.se
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sd, ptr noundef nonnull align 8 dereferenceable(16) %i.sf, i64 16, i1 false), !tbaa.struct !299
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.sh = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.si = add nuw nsw i32 %i.m, 1
  %i.sj = zext nneg i32 %i.si to i64              ; 2 uses
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.sh, i64 %i.sj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sg, ptr noundef nonnull align 8 dereferenceable(16) %i.sk, i64 16, i1 false), !tbaa.struct !299
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.sj
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !230
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.se
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !230
  %i.sp = add i64 %i.sm, 32
  %i.sq = sub i64 %i.sp, %i.so
  %i.sr = lshr i64 %i.sq, 6
  %i.ss = trunc i64 %i.sr to i32
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ss, ptr %i.st, align 8, !tbaa !145
  %.pre537 = load i32, ptr %i.qh, align 8, !tbaa !231
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.su = phi i32 [ %.pre537, %bb.aq ], [ %i.qi, %bb.ap ]
  %i.sv = and i32 %i.su, 16
  %.not419 = icmp eq i32 %i.sv, 0
  br i1 %.not419, label %bb.as, label %.thread433

bb.as:                                            ; preds = %bb.ar
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.sx = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.sy = add nuw nsw i32 %i.m, 2
  %i.sz = zext nneg i32 %i.sy to i64              ; 2 uses
  %i.ta = getelementptr inbounds nuw [16 x i8], ptr %i.sx, i64 %i.sz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sw, ptr noundef nonnull align 8 dereferenceable(16) %i.ta, i64 16, i1 false), !tbaa.struct !299
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.tc = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.td = add nuw nsw i32 %i.m, 3
  %i.te = zext nneg i32 %i.td to i64              ; 2 uses
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.tc, i64 %i.te
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tb, ptr noundef nonnull align 8 dereferenceable(16) %i.tf, i64 16, i1 false), !tbaa.struct !299
  %i.tg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.te
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !257
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.sz
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !257
  %i.tm = add i64 %i.ti, 32
  %i.tn = sub i64 %i.tm, %i.tl
  %i.to = lshr i64 %i.tn, 6
  %i.tp = trunc i64 %i.to to i32
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.tp, ptr %i.tq, align 4, !tbaa !147
  br label %.thread433

.thread433:                                       ; preds = %bb.v, %bb.x, %bb.r, %bb.o, %bb.ar, %bb.as, %bb.l
  %.not428 = icmp eq ptr %.0371, inttoptr (i64 -1 to ptr)
  br i1 %.not428, label %bb.at, label %.thread439

.thread439:                                       ; preds = %.loopexit643, %.thread433
  %.1372445 = phi ptr [ %.0371, %.thread433 ], [ null, %.loopexit643 ]
  %.0382443 = phi ptr [ %i.dg, %.thread433 ], [ null, %.loopexit643 ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.1372445) #21
  br label %bb.at

bb.at:                                            ; preds = %.thread433, %.thread439
  %.0382444 = phi ptr [ %i.dg, %.thread433 ], [ %.0382443, %.thread439 ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0382444) #21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.i
  call void @FT_Stream_ExitFrame(ptr noundef %i.f) #21
  %i.tr = load i32, ptr %i.a, align 4, !tbaa !152
  br label %bb.av

bb.av:                                            ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.au
  %.0 = phi i32 [ 6, %bb.b ], [ 0, %bb.c ], [ %i.tr, %bb.au ], [ 0, %bb.d ], [ %i.bj, %bb.f ], [ %i.bi, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TT_Process_Simple_Glyph(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 98 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !440  ; 4 uses
  %i.g = zext i16 %i.f to i32
  %i.h = load ptr, ptr %0, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.m = zext i16 %i.f to i64                     ; 8 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !299
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !299
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !299
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !299
  %i.ab = add nuw nsw i32 %i.g, 4                 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !140   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !118
  %i.af = and i64 %i.ae, 2147418112
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.ai = and i64 %i.ah, 32768
  %.not102 = icmp eq i64 %i.ai, 0
  br i1 %.not102, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = zext nneg i32 %i.ab to i64
  %i.ak = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 16, i64 noundef 0, i64 noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 4 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !152
  %.not103 = icmp eq i32 %i.al, 0
  br i1 %.not103, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.am = call fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.ak) ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !152
  %.not104 = icmp eq i32 %i.am, 0
  br i1 %.not104, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0100 = phi ptr [ %i.ak, %bb.d ], [ null, %bb.b ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !139 ; 2 uses
  %i.ap = and i64 %i.ao, 2
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = load i16, ptr %i.e, align 2, !tbaa !461
  %i.at = add i16 %i.as, 4                        ; 2 uses
  store i16 %i.at, ptr %i.ar, align 8, !tbaa !178
  %i.au = load i16, ptr %i.d, align 8, !tbaa !462
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 %i.au, ptr %i.av, align 2, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.az = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !197
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !463
  %i.bb = load <2 x ptr>, ptr %i.k, align 8, !tbaa !154
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !464
  %i.bd = shufflevector <2 x ptr> %i.az, <2 x ptr> %i.bb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %i.bd, ptr %i.ax, align 8, !tbaa !154
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !465
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !182
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i16 0, ptr %i.bh, align 8, !tbaa !184
  %i.bi = zext i16 %i.at to i64
  %i.bj = shl nuw nsw i64 %i.bi, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ba, ptr align 8 %i.bc, i64 %i.bj, i1 false)
  %.pre = load i64, ptr %i.an, align 8, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = phi i64 [ %.pre, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !442 ; 12 uses
  %i.bm = shl nuw nsw i32 %i.ab, 4
  %.idx = zext nneg i32 %i.bm to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx ; 2 uses
  %i.bo = and i64 %i.bk, 1
  %.not106 = icmp eq i64 %i.bo, 0
  %.pre127 = load ptr, ptr %0, align 8, !tbaa !140 ; 3 uses
  br i1 %.not106, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !117
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load <2 x i64>, ptr %i.bt, align 8, !tbaa !185 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre127, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !118
  %i.bx = and i64 %i.bw, 2147418112
  %.not107 = icmp eq i64 %i.bx, 0
  br i1 %.not107, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.pre127, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !70
  %i.ca = and i64 %i.bz, 32768
  %.not108 = icmp eq i64 %i.ca, 0
  br i1 %.not108, label %.lr.ph125.preheader, label %.lr.ph.preheader

.lr.ph125.preheader:                              ; preds = %bb.i
  %1 = ptrtoaddr ptr %i.bl to i64                 ; 3 uses
  %i.cb = zext i16 %i.f to i64
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = add i64 %i.cc, %1
  %i.ce = add i64 %i.cd, 64
  %i.cf = add i64 %1, 16
  %i.cg = call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cf)
  %i.ch = xor i64 %1, -1
  %i.ci = add i64 %i.cg, %i.ch
  %i.cj = lshr i64 %i.ci, 4                       ; 2 uses
  %min.iters.check142 = icmp eq i64 %i.cj, 0
  br i1 %min.iters.check142, label %.lr.ph125, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph125.preheader
  %i.ck = extractelement <2 x i64> %i.bu, i64 0
  %i.cl = extractelement <2 x i64> %i.bu, i64 1
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next149, %vector.body145 ] ; 3 uses
  %i.cm = shl i64 %index146, 4
  %next.gep147 = getelementptr i8, ptr %i.bl, i64 %i.cm ; 2 uses
  %wide.load148 = load <2 x i64>, ptr %next.gep147, align 8
  %i.cn = mul <2 x i64> %wide.load148, %i.bu      ; 2 uses
  %i.co = ashr <2 x i64> %i.cn, splat (i64 63)
  %i.cp = add <2 x i64> %i.cn, splat (i64 32768)
  %i.cq = add <2 x i64> %i.cp, %i.co
  %i.cr = ashr <2 x i64> %i.cq, splat (i64 16)
  store <2 x i64> %i.cr, ptr %next.gep147, align 8
  %index.next149 = add nuw i64 %index146, 1
  %i.cs = icmp eq i64 %index146, %i.cj
  br i1 %i.cs, label %.loopexit, label %vector.body145, !llvm.loop !852

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.i
  %2 = ptrtoaddr ptr %i.bl to i64                 ; 5 uses
  %i.ct = zext i16 %i.f to i64                    ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 4
  %i.cv = add i64 %i.cu, %2
  %i.cw = add i64 %i.cv, 64
  %i.cx = add i64 %2, 16                          ; 2 uses
  %i.cy = call i64 @llvm.umax.i64(i64 %i.cw, i64 %i.cx)
  %i.cz = xor i64 %2, -1
  %i.da = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = lshr i64 %i.da, 4
  %min.iters.check = icmp ult i64 %i.da, 144
  br i1 %min.iters.check, label %.lr.ph.preheader156, label %vector.memcheck

.lr.ph.preheader156:                              ; preds = %vector.memcheck, %.lr.ph.preheader
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dc = shl nuw nsw i64 %i.ct, 4
  %i.dd = add i64 %i.dc, %2
  %i.de = add i64 %i.dd, 64
  %umax = call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cx)
  %i.df = xor i64 %2, -1
  %i.dg = add i64 %umax, %i.df
  %i.dh = and i64 %i.dg, -16                      ; 2 uses
  %i.di = or disjoint i64 %i.dh, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bl, i64 %i.di
  %scevgep131 = getelementptr i8, ptr %.0100, i64 %i.di
  %scevgep132 = getelementptr i8, ptr %i.bl, i64 8
  %i.dj = add i64 %i.dh, 16                       ; 2 uses
  %scevgep133 = getelementptr i8, ptr %i.bl, i64 %i.dj
  %scevgep134 = getelementptr i8, ptr %.0100, i64 8
  %scevgep135 = getelementptr i8, ptr %.0100, i64 %i.dj
  %bound0 = icmp ult ptr %i.bl, %scevgep131
  %bound1 = icmp ult ptr %.0100, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0136 = icmp ult ptr %scevgep132, %scevgep135
  %bound1137 = icmp ult ptr %scevgep134, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx = or i1 %found.conflict, %found.conflict138
  br i1 %conflict.rdx, label %.lr.ph.preheader156, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dk = extractelement <2 x i64> %i.bu, i64 0
  %i.dl = extractelement <2 x i64> %i.bu, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0100, i64 %i.dm
  %next.gep139 = getelementptr i8, ptr %i.bl, i64 %i.dm
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %i.dn = mul <2 x i64> %wide.load, %i.bu         ; 2 uses
  %i.do = ashr <2 x i64> %i.dn, splat (i64 63)
  %i.dp = add <2 x i64> %i.dn, splat (i64 32768)
  %i.dq = add <2 x i64> %i.dp, %i.do
  %i.dr = ashr <2 x i64> %i.dq, splat (i64 16)
  %i.ds = add nsw <2 x i64> %i.dr, splat (i64 32)
  %i.dt = ashr <2 x i64> %i.ds, splat (i64 6)
  store <2 x i64> %i.dt, ptr %next.gep139, align 8
  %index.next = add nuw i64 %index, 1
  %i.du = icmp eq i64 %index, %i.db
  br i1 %i.du, label %.loopexit, label %vector.body, !llvm.loop !853

.lr.ph:                                           ; preds = %.lr.ph.preheader156, %.lr.ph
  %.0123 = phi ptr [ %i.ee, %.lr.ph ], [ %.0100, %.lr.ph.preheader156 ] ; 2 uses
  %.099122 = phi ptr [ %i.ed, %.lr.ph ], [ %i.bl, %.lr.ph.preheader156 ] ; 2 uses
  %i.dv = load <2 x i64>, ptr %.0123, align 8, !tbaa !185
  %i.dw = mul <2 x i64> %i.dv, %i.bu              ; 2 uses
  %i.dx = ashr <2 x i64> %i.dw, splat (i64 63)
  %i.dy = add <2 x i64> %i.dw, splat (i64 32768)
  %i.dz = add <2 x i64> %i.dy, %i.dx
  %i.ea = ashr <2 x i64> %i.dz, splat (i64 16)
  %i.eb = add nsw <2 x i64> %i.ea, splat (i64 32)
  %i.ec = ashr <2 x i64> %i.eb, splat (i64 6)
  store <2 x i64> %i.ec, ptr %.099122, align 8, !tbaa !185
  %i.ed = getelementptr inbounds nuw i8, ptr %.099122, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0123, i64 16
  %i.ef = icmp ult ptr %i.ed, %i.bn
  br i1 %i.ef, label %.lr.ph, label %.loopexit.loopexit157, !llvm.loop !854

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.lr.ph125
  %.1124 = phi ptr [ %i.em, %.lr.ph125 ], [ %i.bl, %.lr.ph125.preheader ] ; 3 uses
  %i.eg = load <2 x i64>, ptr %.1124, align 8, !tbaa !185
  %i.eh = mul <2 x i64> %i.eg, %i.bu              ; 2 uses
  %i.ei = ashr <2 x i64> %i.eh, splat (i64 63)
  %i.ej = add <2 x i64> %i.eh, splat (i64 32768)
  %i.ek = add <2 x i64> %i.ej, %i.ei
  %i.el = ashr <2 x i64> %i.ek, splat (i64 16)
  store <2 x i64> %i.el, ptr %.1124, align 8, !tbaa !185
  %i.em = getelementptr inbounds nuw i8, ptr %.1124, i64 16 ; 2 uses
  %i.en = icmp ult ptr %i.em, %i.bn
  br i1 %i.en, label %.lr.ph125, label %.loopexit.loopexit, !llvm.loop !855

.loopexit.loopexit:                               ; preds = %.lr.ph125
  %i.eo = extractelement <2 x i64> %i.bu, i64 1
  %i.ep = extractelement <2 x i64> %i.bu, i64 0
  br label %.loopexit

.loopexit.loopexit157:                            ; preds = %.lr.ph
  %i.eq = extractelement <2 x i64> %i.bu, i64 1
  %i.er = extractelement <2 x i64> %i.bu, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %vector.body145, %.loopexit.loopexit157, %.loopexit.loopexit, %bb.g
  %.097117 = phi i64 [ %i.eo, %.loopexit.loopexit ], [ 0, %bb.g ], [ %i.eq, %.loopexit.loopexit157 ], [ %i.cl, %vector.body145 ], [ %i.dl, %vector.body ] ; 2 uses
  %.098114 = phi i64 [ %i.ep, %.loopexit.loopexit ], [ 0, %bb.g ], [ %i.er, %.loopexit.loopexit157 ], [ %i.ck, %vector.body145 ], [ %i.dk, %vector.body ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.pre127, i64 1216 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !231 ; 2 uses
  %i.eu = and i32 %i.et, 2
  %.not109 = icmp ne i32 %i.eu, 0
  %i.ev = and i64 %i.bk, 2
  %i.ew = icmp eq i64 %i.ev, 0                    ; 3 uses
  %or.cond = and i1 %i.ew, %.not109
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ex = load i64, ptr %i.o, align 8, !tbaa !229
  %i.ey = mul i64 %i.ex, %.098114                 ; 2 uses
  %i.ez = ashr i64 %i.ey, 63
  %i.fa = add i64 %i.ey, 32768
  %i.fb = add i64 %i.fa, %i.ez
  %i.fc = ashr i64 %i.fb, 16
  store i64 %i.fc, ptr %i.o, align 8, !tbaa !229
  %i.fd = load i64, ptr %i.s, align 8, !tbaa !435
  %i.fe = mul i64 %i.fd, %.098114                 ; 2 uses
  %i.ff = ashr i64 %i.fe, 63
  %i.fg = add i64 %i.fe, 32768
  %i.fh = add i64 %i.fg, %i.ff
  %i.fi = ashr i64 %i.fh, 16
  store i64 %i.fi, ptr %i.s, align 8, !tbaa !435
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !299
  %i.fk = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.m
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !299
  %.pre128 = load i32, ptr %i.es, align 8, !tbaa !231
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fn = phi i32 [ %.pre128, %bb.k ], [ %i.et, %bb.j ]
  %i.fo = and i32 %i.fn, 16
  %.not110 = icmp ne i32 %i.fo, 0
  %or.cond120 = and i1 %i.ew, %.not110
  br i1 %or.cond120, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.fp = load i64, ptr %i.w, align 8, !tbaa !436
  %i.fq = mul i64 %i.fp, %.098114                 ; 2 uses
  %i.fr = ashr i64 %i.fq, 63
  %i.fs = add i64 %i.fq, 32768
  %i.ft = add i64 %i.fs, %i.fr
  %i.fu = ashr i64 %i.ft, 16
  store i64 %i.fu, ptr %i.w, align 8, !tbaa !436
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !437
  %i.fx = mul i64 %i.fw, %.097117                 ; 2 uses
  %i.fy = ashr i64 %i.fx, 63
  %i.fz = add i64 %i.fx, 32768
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = ashr i64 %i.ga, 16
  store i64 %i.gb, ptr %i.fv, align 8, !tbaa !437
  %i.gc = load i64, ptr %i.aa, align 8, !tbaa !438
  %i.gd = mul i64 %i.gc, %.098114                 ; 2 uses
  %i.ge = ashr i64 %i.gd, 63
  %i.gf = add i64 %i.gd, 32768
  %i.gg = add i64 %i.gf, %i.ge
  %i.gh = ashr i64 %i.gg, 16
  store i64 %i.gh, ptr %i.aa, align 8, !tbaa !438
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !439
  %i.gk = mul i64 %i.gj, %.097117                 ; 2 uses
  %i.gl = ashr i64 %i.gk, 63
  %i.gm = add i64 %i.gk, 32768
  %i.gn = add i64 %i.gm, %i.gl
  %i.go = ashr i64 %i.gn, 16
  store i64 %i.go, ptr %i.gi, align 8, !tbaa !439
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gp = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.m
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !tbaa.struct !299
  %i.gs = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.m
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false), !tbaa.struct !299
  br i1 %i.ew, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  %i.gv = call fastcc i32 @TT_Hint_Glyph(ptr noundef %0, i8 noundef zeroext 0)
  store i32 %i.gv, ptr %i.a, align 4, !tbaa !152
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.d, %bb.n, %bb.m
  %.1101 = phi ptr [ %i.ak, %bb.c ], [ %i.ak, %bb.d ], [ %.0100, %bb.n ], [ %.0100, %bb.m ]
  call void @ft_mem_free(ptr noundef %i.j, ptr noundef %.1101) #21
  %i.gw = load i32, ptr %i.a, align 4, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.gw
}

declare hidden void @FT_GlyphLoader_Add(ptr noundef) local_unnamed_addr #4

declare ptr @FT_List_Find(ptr noundef, ptr noundef) local_unnamed_addr #4

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @FT_List_Add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 22) i32 @TT_Process_Composite_Component(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 65536) %2, i32 noundef range(i32 0, 65536) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.FT_Outline_, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
end_hunk_1
