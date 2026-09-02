Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj9?download=true
inline.NumInlined: 239
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Exa9_ManExactSynthesis:bb.a

.lr.ph53.i:                                       ; preds = %Abc_TtReadHexDigit.exit.i, %.lr.ph53.preheader.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph53.preheader.i ], [ %indvars.iv.next63.i, %Abc_TtReadHexDigit.exit.i ] ; 4 uses
  %i.en = xor i64 %indvars.iv62.i, -1
  %i.eo = getelementptr i8, ptr %i.em, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !40  ; 4 uses
  %i.eq = sext i8 %i.ep to i64                    ; 3 uses
  %i.er = add i8 %i.ep, -48
  %or.cond.i42.i = icmp ult i8 %i.er, 10
  br i1 %or.cond.i42.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph53.i
  %i.es = add nsw i64 %i.eq, -48
  br label %Abc_TtReadHexDigit.exit.i

bb.u:                                             ; preds = %.lr.ph53.i
  %i.et = add i8 %i.ep, -65
  %or.cond5.i.i = icmp ult i8 %i.et, 6
  br i1 %or.cond5.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eu = add nsw i64 %i.eq, -55
  br label %Abc_TtReadHexDigit.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ev = add i8 %i.ep, -97
  %or.cond8.i.i = icmp ult i8 %i.ev, 6
  %i.ew = add nsw i64 %i.eq, -87
  %spec.select.i.i = select i1 %or.cond8.i.i, i64 %i.ew, i64 -1
  br label %Abc_TtReadHexDigit.exit.i

Abc_TtReadHexDigit.exit.i:                        ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i = phi i64 [ %i.es, %bb.t ], [ %i.eu, %bb.v ], [ %spec.select.i.i, %bb.w ]
  %i.ex = shl i64 %indvars.iv62.i, 2
  %i.ey = and i64 %i.ex, 60
  %i.ez = shl i64 %.0.i.i, %i.ey
  %i.fa = lshr i64 %indvars.iv62.i, 4
  %i.fb = and i64 %i.fa, 268435455
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.fb ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !38
  %i.fe = or i64 %i.fd, %i.ez
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !38
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count.i
  br i1 %exitcond.not.i203, label %._crit_edge54.i, label %.lr.ph53.i, !llvm.loop !43

._crit_edge54.i:                                  ; preds = %Abc_TtReadHexDigit.exit.i
  %i.ff = icmp samesign ult i32 %.ph327.fr, 6
  br i1 %i.ff, label %bb.x, label %Abc_TtReadHex.exit

bb.x:                                             ; preds = %._crit_edge54.i
  %.pre = load i64, ptr %i.ar, align 8, !tbaa !38 ; 4 uses
  %i.fg = icmp ult i32 %.ph327.fr, 3
  %i.fh = and i64 %.pre, 15
  %i.fi = mul nuw nsw i64 %i.fh, 17
  %spec.select = select i1 %i.fg, i64 %i.fi, i64 %.pre
  %i.fj = icmp ult i32 %.ph327.fr, 4
  %i.fk = and i64 %spec.select, 255
  %i.fl = mul nuw nsw i64 %i.fk, 257
  %i.fm = select i1 %i.fj, i64 %i.fl, i64 %.pre
  %.not648 = icmp eq i32 %.ph327.fr, 5
  %i.fn = and i64 %i.fm, 65535
  %i.fo = mul nuw nsw i64 %i.fn, 65537
  %spec.select647 = select i1 %.not648, i64 %.pre, i64 %i.fo
  %i.fp = and i64 %spec.select647, 4294967295
  %i.fq = mul nuw i64 %i.fp, 4294967297
  br label %.sink.split.i

switch.hole_check:                                ; preds = %bb.s
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph53.preheader.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.fr = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Exa9_ManExactSynthesis, i64 %i.fr
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %._crit_edge.i, %bb.x, %switch.lookup
  %.5.i.sink.i = phi i64 [ %switch.load, %switch.lookup ], [ %i.fq, %bb.x ], [ 0, %._crit_edge.i ], [ 0, %bb.r ]
  store i64 %.5.i.sink.i, ptr %i.ar, align 8, !tbaa !38
  br label %Abc_TtReadHex.exit

Abc_TtReadHex.exit:                               ; preds = %.sink.split.i, %._crit_edge54.i, %bb.o
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !26
  %.not174 = icmp eq i32 %i.ft, 0
  br i1 %.not174, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %Abc_TtReadHex.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !22
  %.not175 = icmp eq i32 %i.fv, 0
  br i1 %.not175, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %Abc_TtReadHex.exit
  store i32 0, ptr %i.fs, align 4, !tbaa !26
  %i.fw = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #20 ; 36 uses
  store ptr %0, ptr %i.fw, align 8, !tbaa !44
  %i.fx = load i32, ptr %0, align 8, !tbaa !14    ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 23 uses
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !49
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !15 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12 ; 22 uses
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !50
  %i.gc = add nsw i32 %i.ga, %i.fx                ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 54 uses
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !51
  %i.ge = icmp slt i32 %i.fx, 7                   ; 2 uses
  %i.gf = add nsw i32 %i.fx, -6                   ; 2 uses
  %i.gg = shl nuw i32 1, %i.gf
  %i.gh = select i1 %i.ge, i32 1, i32 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 20 ; 5 uses
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !52
  %i.gj = shl nuw i32 1, %i.fx
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 14 uses
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !53
  %i.gl = shl nsw i32 %i.ga, 2
  %i.gm = or disjoint i32 %i.gl, 2
  %i.gn = mul i32 %i.gm, %i.gc                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fw, i64 28 ; 11 uses
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !54
  %i.gp = mul nsw i32 %i.gc, 3
  %i.gq = shl i32 %i.gp, %i.fx                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fw, i64 32 ; 5 uses
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !55
  %i.gs = sext i32 %i.gn to i64
  %i.gt = shl nsw i64 %i.gs, 1
  %i.gu = sext i32 %i.gq to i64
  %i.gv = add nsw i64 %i.gt, %i.gu
  %spec.store.select.i.i = call i64 @llvm.smin.i64(i64 %i.gv, i64 2147483647)
  %i.gw = trunc i64 %spec.store.select.i.i to i32 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 36
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !56
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fw, i64 64 ; 4 uses
  store ptr %i.ar, ptr %i.gy, align 8, !tbaa !57
  %i.gz = add nsw i32 %i.gc, 1
  %i.ha = select i1 %i.ge, i32 0, i32 %i.gf
  %i.hb = shl i32 %i.gz, %i.ha                    ; 4 uses
  %i.hc = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.hd = add i32 %i.hb, -1
  %or.cond.i.i.i = icmp ult i32 %i.hd, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.hb ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.hc, align 8, !tbaa !58
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WrdStart.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.he = sext i32 %spec.store.select.i.i.i to i64
  %i.hf = shl nsw i64 %i.he, 3
  %i.hg = call noalias ptr @malloc(i64 noundef %i.hf) #21
  br label %Vec_WrdStart.exit.i

Vec_WrdStart.exit.i:                              ; preds = %bb.ab, %bb.aa
  %i.hh = phi ptr [ %i.hg, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.hh, ptr %i.hj, align 8, !tbaa !60
  store i32 %i.hb, ptr %i.hi, align 4, !tbaa !61
  %i.hk = sext i32 %i.hb to i64
  %i.hl = shl nsw i64 %i.hk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hh, i8 0, i64 %i.hl, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fw, i64 72 ; 6 uses
  store ptr %i.hc, ptr %i.hm, align 8, !tbaa !62
  %i.hn = call ptr @kissat_init() #19             ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fw, i64 80 ; 90 uses
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_reserve(ptr noundef %i.hn, i32 noundef %i.gw) #19
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !24 ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %bb.ac, label %Exa9_ManAlloc.exit

bb.ac:                                            ; preds = %Vec_WrdStart.exit.i
  %i.hs = call i32 @kissat_set_option(ptr noundef %i.hn, ptr noundef nonnull @.str.20, i32 noundef %i.hq) #19 ; 0 uses
  br label %Exa9_ManAlloc.exit

Exa9_ManAlloc.exit:                               ; preds = %Vec_WrdStart.exit.i, %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fw, i64 88 ; 3 uses
  store i64 0, ptr %i.ht, align 8, !tbaa !64
  %i.hu = load i32, ptr %i.n, align 4, !tbaa !21
  %.not176 = icmp eq i32 %i.hu, 0
  br i1 %.not176, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %Exa9_ManAlloc.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !22
  %.not177 = icmp eq i32 %i.hw, 0
  br i1 %.not177, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.hx = load i32, ptr %i.gb, align 4, !tbaa !50 ; 14 uses
  %i.hy = shl nsw i32 %i.hx, 2
  %i.hz = load i32, ptr %i.gd, align 8, !tbaa !51 ; 3 uses
  %i.ia = or disjoint i32 %i.hy, 2
  %i.ib = mul i32 %i.ia, %i.hz                    ; 5 uses
  %i.ic = load ptr, ptr %i.fw, align 8, !tbaa !44
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 104
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !23
  %.fr.i = freeze i32 %i.ie                       ; 3 uses
  %i.if = icmp sgt i32 %i.hx, 0
  br i1 %i.if, label %.lr.ph.i205, label %._crit_edge.i204

.lr.ph.i205:                                      ; preds = %bb.ae
  %i.ig = load i32, ptr %i.fy, align 8, !tbaa !49 ; 6 uses
  switch i32 %.fr.i, label %._crit_edge.i204 [
    i32 3, label %.lr.ph.split.us.i.preheader
    i32 1, label %.lr.ph.split.us19.i.preheader
    i32 2, label %.lr.ph.split.us26.i.preheader
  ]

.lr.ph.split.us26.i.preheader:                    ; preds = %.lr.ph.i205
  %min.iters.check696 = icmp ult i32 %i.hx, 8
  br i1 %min.iters.check696, label %.lr.ph.split.us26.i.preheader927, label %vector.ph697

vector.ph697:                                     ; preds = %.lr.ph.split.us26.i.preheader
  %n.vec698 = and i32 %i.hx, 2147483640           ; 3 uses
  %broadcast.splatinsert699 = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %broadcast.splat700 = shufflevector <4 x i32> %broadcast.splatinsert699, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat700 ; 2 uses
  %invariant.op991 = add <4 x i32> %broadcast.splat700, splat (i32 5)
  %invariant.op993 = add <4 x i32> %invariant.op, splat (i32 5)
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph697
  %index702 = phi i32 [ 0, %vector.ph697 ], [ %index.next708, %vector.body701 ]
  %vec.phi703.a = phi <4 x i32> [ zeroinitializer, %vector.ph697 ], [ %i.iu, %vector.body701 ]
  %vec.phi704 = phi <4 x i32> [ zeroinitializer, %vector.ph697 ], [ %i.iv, %vector.body701 ]
  %vec.ind705 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph697 ], [ %vec.ind.next709, %vector.body701 ] ; 5 uses
  %i.ih = add nsw <4 x i32> %vec.ind705, %broadcast.splat700
  %.reass = add <4 x i32> %vec.ind705, %invariant.op
  %i.ii = icmp slt <4 x i32> %i.ih, splat (i32 7)
  %i.ij = icmp slt <4 x i32> %.reass, splat (i32 7)
  %.reass992 = add <4 x i32> %vec.ind705, %invariant.op991
  %.reass994 = add <4 x i32> %vec.ind705, %invariant.op993
  %i.ik = udiv <4 x i32> %.reass992, splat (i32 6)
  %i.il = udiv <4 x i32> %.reass994, splat (i32 6)
  %i.im = add nsw <4 x i32> %i.ik, splat (i32 -1)
  %i.in = add nsw <4 x i32> %i.il, splat (i32 -1)
  %i.io = call range(i32 0, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.im, i1 true)
  %i.ip = call range(i32 0, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.in, i1 true)
  %i.iq = shl nuw nsw <4 x i32> %i.io, splat (i32 2)
  %i.ir = shl nuw nsw <4 x i32> %i.ip, splat (i32 2)
  %i.is = sub nuw nsw <4 x i32> splat (i32 128), %i.iq
  %i.it = sub nuw nsw <4 x i32> splat (i32 128), %i.ir
  %predphi = select <4 x i1> %i.ii, <4 x i32> zeroinitializer, <4 x i32> %i.is
  %predphi707 = select <4 x i1> %i.ij, <4 x i32> zeroinitializer, <4 x i32> %i.it
  %i.iu = add <4 x i32> %predphi, %vec.phi703.a   ; 2 uses
  %i.iv = add <4 x i32> %predphi707, %vec.phi704  ; 2 uses
  %index.next708 = add nuw i32 %index702, 8       ; 2 uses
  %vec.ind.next709 = add nuw <4 x i32> %vec.ind705, splat (i32 8)
  %i.iw = icmp eq i32 %index.next708, %n.vec698
  br i1 %i.iw, label %middle.block710, label %vector.body701, !llvm.loop !65

middle.block710:                                  ; preds = %vector.body701
  %bin.rdx711 = add <4 x i32> %i.iv, %i.iu
  %i.ix = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx711) ; 2 uses
  %cmp.n712 = icmp eq i32 %i.hx, %n.vec698
  br i1 %cmp.n712, label %._crit_edge.i204, label %.lr.ph.split.us26.i.preheader927

.lr.ph.split.us26.i.preheader927:                 ; preds = %.lr.ph.split.us26.i.preheader, %middle.block710
  %.018.us27.i.ph = phi i32 [ 0, %.lr.ph.split.us26.i.preheader ], [ %i.ix, %middle.block710 ]
  %.01417.us28.i.ph = phi i32 [ 0, %.lr.ph.split.us26.i.preheader ], [ %n.vec698, %middle.block710 ]
  br label %.lr.ph.split.us26.i

.lr.ph.split.us19.i.preheader:                    ; preds = %.lr.ph.i205
  %min.iters.check716 = icmp ult i32 %i.hx, 8
  br i1 %min.iters.check716, label %.lr.ph.split.us19.i.preheader922, label %vector.ph717

vector.ph717:                                     ; preds = %.lr.ph.split.us19.i.preheader
  %n.vec718 = and i32 %i.hx, 2147483640           ; 3 uses
  %broadcast.splatinsert719 = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %broadcast.splat720 = shufflevector <4 x i32> %broadcast.splatinsert719, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op995 = add <4 x i32> splat (i32 4), %broadcast.splat720
  br label %vector.body721

vector.body721:                                   ; preds = %vector.body721, %vector.ph717
  %index722 = phi i32 [ 0, %vector.ph717 ], [ %index.next727, %vector.body721 ]
  %vec.phi723.a = phi <4 x i32> [ zeroinitializer, %vector.ph717 ], [ %i.jf, %vector.body721 ]
  %vec.phi724 = phi <4 x i32> [ zeroinitializer, %vector.ph717 ], [ %i.jg, %vector.body721 ]
  %vec.ind725 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph717 ], [ %vec.ind.next728, %vector.body721 ] ; 3 uses
  %i.iy = add nsw <4 x i32> %vec.ind725, %broadcast.splat720
  %.reass996 = add <4 x i32> %vec.ind725, %invariant.op995
  %i.iz = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.iy, <4 x i32> splat (i32 1))
  %i.ja = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.reass996, <4 x i32> splat (i32 1))
  %i.jb = shl <4 x i32> %i.iz, splat (i32 2)
  %i.jc = shl <4 x i32> %i.ja, splat (i32 2)
  %i.jd = add <4 x i32> %vec.phi723.a, splat (i32 -4)
  %i.je = add <4 x i32> %vec.phi724, splat (i32 -4)
  %i.jf = add <4 x i32> %i.jd, %i.jb              ; 2 uses
  %i.jg = add <4 x i32> %i.je, %i.jc              ; 2 uses
  %index.next727 = add nuw i32 %index722, 8       ; 2 uses
  %vec.ind.next728 = add nuw <4 x i32> %vec.ind725, splat (i32 8)
  %i.jh = icmp eq i32 %index.next727, %n.vec718
  br i1 %i.jh, label %middle.block729, label %vector.body721, !llvm.loop !66

middle.block729:                                  ; preds = %vector.body721
  %bin.rdx730 = add <4 x i32> %i.jg, %i.jf
  %i.ji = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx730) ; 2 uses
  %cmp.n731 = icmp eq i32 %i.hx, %n.vec718
  br i1 %cmp.n731, label %._crit_edge.i204, label %.lr.ph.split.us19.i.preheader922

.lr.ph.split.us19.i.preheader922:                 ; preds = %.lr.ph.split.us19.i.preheader, %middle.block729
  %.018.us20.i.ph = phi i32 [ 0, %.lr.ph.split.us19.i.preheader ], [ %i.ji, %middle.block729 ]
  %.01417.us21.i.ph = phi i32 [ 0, %.lr.ph.split.us19.i.preheader ], [ %n.vec718, %middle.block729 ]
  br label %.lr.ph.split.us19.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i205
  %min.iters.check735 = icmp ult i32 %i.hx, 8
  br i1 %min.iters.check735, label %.lr.ph.split.us.i.preheader918, label %vector.ph736

vector.ph736:                                     ; preds = %.lr.ph.split.us.i.preheader
  %n.vec737 = and i32 %i.hx, 2147483640           ; 3 uses
  %broadcast.splatinsert738 = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %broadcast.splat739 = shufflevector <4 x i32> %broadcast.splatinsert738, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %invariant.op997 = add <4 x i32> splat (i32 4), %broadcast.splat739 ; 2 uses
  %invariant.op999 = add <4 x i32> %broadcast.splat739, splat (i32 4)
  %invariant.op1001 = add <4 x i32> %invariant.op997, splat (i32 4)
  br label %vector.body740

vector.body740:                                   ; preds = %vector.body740, %vector.ph736
  %index741 = phi i32 [ 0, %vector.ph736 ], [ %index.next748, %vector.body740 ]
  %vec.phi742.a = phi <4 x i32> [ zeroinitializer, %vector.ph736 ], [ %i.jq, %vector.body740 ]
  %vec.phi743 = phi <4 x i32> [ zeroinitializer, %vector.ph736 ], [ %i.jr, %vector.body740 ]
  %vec.ind744 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph736 ], [ %vec.ind.next749, %vector.body740 ] ; 5 uses
  %i.jj = add nsw <4 x i32> %vec.ind744, %broadcast.splat739
  %.reass998 = add <4 x i32> %vec.ind744, %invariant.op997
  %i.jk = icmp slt <4 x i32> %i.jj, splat (i32 6)
  %i.jl = icmp slt <4 x i32> %.reass998, splat (i32 6)
  %.reass1000 = add <4 x i32> %vec.ind744, %invariant.op999
  %.reass1002 = add <4 x i32> %vec.ind744, %invariant.op1001
  %i.jm = udiv <4 x i32> %.reass1000, splat (i32 5)
  %i.jn = udiv <4 x i32> %.reass1002, splat (i32 5)
  %i.jo = shl nuw nsw <4 x i32> %i.jm, splat (i32 2)
  %i.jp = shl nuw nsw <4 x i32> %i.jn, splat (i32 2)
  %predphi746.a = select <4 x i1> %i.jk, <4 x i32> zeroinitializer, <4 x i32> %i.jo
  %predphi747 = select <4 x i1> %i.jl, <4 x i32> zeroinitializer, <4 x i32> %i.jp
  %i.jq = add <4 x i32> %predphi746.a, %vec.phi742.a ; 2 uses
  %i.jr = add <4 x i32> %predphi747, %vec.phi743  ; 2 uses
  %index.next748 = add nuw i32 %index741, 8       ; 2 uses
  %vec.ind.next749 = add nuw <4 x i32> %vec.ind744, splat (i32 8)
  %i.js = icmp eq i32 %index.next748, %n.vec737
  br i1 %i.js, label %middle.block750, label %vector.body740, !llvm.loop !67

middle.block750:                                  ; preds = %vector.body740
  %bin.rdx751 = add <4 x i32> %i.jr, %i.jq
  %i.jt = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx751) ; 2 uses
  %cmp.n752 = icmp eq i32 %i.hx, %n.vec737
  br i1 %cmp.n752, label %._crit_edge.i204, label %.lr.ph.split.us.i.preheader918

.lr.ph.split.us.i.preheader918:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block750
  %.018.us.i.ph = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.jt, %middle.block750 ]
  %.01417.us.i.ph = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec737, %middle.block750 ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader918, %Exa9_ManCountAuxOneHot.exit.us.i
  %.018.us.i = phi i32 [ %i.jy, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %.018.us.i.ph, %.lr.ph.split.us.i.preheader918 ]
  %.01417.us.i = phi i32 [ %i.jz, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %.01417.us.i.ph, %.lr.ph.split.us.i.preheader918 ] ; 2 uses
  %i.ju = add nsw i32 %.01417.us.i, %i.ig         ; 2 uses
  %or.cond.i = icmp slt i32 %i.ju, 6
  br i1 %or.cond.i, label %Exa9_ManCountAuxOneHot.exit.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.jv = add nuw nsw i32 %i.ju, 4
  %i.jw = udiv i32 %i.jv, 5
  %i.jx = shl nuw nsw i32 %i.jw, 2
  br label %Exa9_ManCountAuxOneHot.exit.us.i

Exa9_ManCountAuxOneHot.exit.us.i:                 ; preds = %bb.af, %.lr.ph.split.us.i
  %.2.i.us.i = phi i32 [ %i.jx, %bb.af ], [ 0, %.lr.ph.split.us.i ]
  %i.jy = add nuw nsw i32 %.2.i.us.i, %.018.us.i  ; 2 uses
  %i.jz = add nuw nsw i32 %.01417.us.i, 1         ; 2 uses
  %exitcond40.not.i = icmp eq i32 %i.jz, %i.hx
  br i1 %exitcond40.not.i, label %._crit_edge.i204, label %.lr.ph.split.us.i, !llvm.loop !68

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.split.us19.i.preheader922, %.lr.ph.split.us19.i
  %.018.us20.i = phi i32 [ %i.kd, %.lr.ph.split.us19.i ], [ %.018.us20.i.ph, %.lr.ph.split.us19.i.preheader922 ]
  %.01417.us21.i = phi i32 [ %i.ke, %.lr.ph.split.us19.i ], [ %.01417.us21.i.ph, %.lr.ph.split.us19.i.preheader922 ] ; 2 uses
  %i.ka = add nsw i32 %.01417.us21.i, %i.ig
  %i.kb = call i32 @llvm.smax.i32(i32 %i.ka, i32 1)
  %spec.select.i207 = shl i32 %i.kb, 2
  %i.kc = add i32 %.018.us20.i, -4
  %i.kd = add i32 %i.kc, %spec.select.i207        ; 2 uses
  %i.ke = add nuw nsw i32 %.01417.us21.i, 1       ; 2 uses
  %exitcond39.not.i = icmp eq i32 %i.ke, %i.hx
  br i1 %exitcond39.not.i, label %._crit_edge.i204, label %.lr.ph.split.us19.i, !llvm.loop !69

.lr.ph.split.us26.i:                              ; preds = %.lr.ph.split.us26.i.preheader927, %Exa9_ManCountAuxOneHot.exit.us29.i
  %.018.us27.i = phi i32 [ %i.km, %Exa9_ManCountAuxOneHot.exit.us29.i ], [ %.018.us27.i.ph, %.lr.ph.split.us26.i.preheader927 ]
  %.01417.us28.i = phi i32 [ %i.kn, %Exa9_ManCountAuxOneHot.exit.us29.i ], [ %.01417.us28.i.ph, %.lr.ph.split.us26.i.preheader927 ] ; 2 uses
  %i.kf = add nsw i32 %.01417.us28.i, %i.ig       ; 2 uses
  %or.cond33.i = icmp slt i32 %i.kf, 7
  br i1 %or.cond33.i, label %Exa9_ManCountAuxOneHot.exit.us29.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us26.i
  %i.kg = add nuw nsw i32 %i.kf, 5
  %i.kh = udiv i32 %i.kg, 6
  %i.ki = add nsw i32 %i.kh, -1
  %i.kj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ki, i1 true)
  %i.kk = shl nuw nsw i32 %i.kj, 2
  %i.kl = sub nuw nsw i32 128, %i.kk
  br label %Exa9_ManCountAuxOneHot.exit.us29.i

Exa9_ManCountAuxOneHot.exit.us29.i:               ; preds = %bb.ag, %.lr.ph.split.us26.i
  %.2.i.us30.i = phi i32 [ %i.kl, %bb.ag ], [ 0, %.lr.ph.split.us26.i ]
  %i.km = add nuw nsw i32 %.2.i.us30.i, %.018.us27.i ; 2 uses
  %i.kn = add nuw nsw i32 %.01417.us28.i, 1       ; 2 uses
  %exitcond.not.i206 = icmp eq i32 %i.kn, %i.hx
  br i1 %exitcond.not.i206, label %._crit_edge.i204, label %.lr.ph.split.us26.i, !llvm.loop !70

._crit_edge.i204:                                 ; preds = %Exa9_ManCountAuxOneHot.exit.us29.i, %.lr.ph.split.us19.i, %Exa9_ManCountAuxOneHot.exit.us.i, %middle.block710, %middle.block729, %middle.block750, %.lr.ph.i205, %bb.ae
  %.0.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.kd, %.lr.ph.split.us19.i ], [ 0, %.lr.ph.i205 ], [ %i.jy, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %i.jt, %middle.block750 ], [ %i.ji, %middle.block729 ], [ %i.ix, %middle.block710 ], [ %i.km, %Exa9_ManCountAuxOneHot.exit.us29.i ] ; 8 uses
  %i.ko = shl nsw i32 %i.hz, 1                    ; 5 uses
  %i.kp = icmp slt i32 %i.hz, 1
  br i1 %i.kp, label %Exa9_ManCountAuxTotal.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i204
  switch i32 %.fr.i, label %Exa9_ManCountAuxTotal.exit [
    i32 3, label %bb.ak
    i32 1, label %Exa9_ManCountAuxTotal.exit.thread590
    i32 2, label %bb.ai
  ]

Exa9_ManCountAuxTotal.exit.thread590:             ; preds = %bb.ah
  %i.kq = add nsw i32 %i.ko, -1
  %i.kr = add nsw i32 %i.kq, %.0.lcssa.i          ; 2 uses
  %i.ks = add nsw i32 %i.kr, %i.ib
  %i.kt = load i32, ptr %i.gr, align 8, !tbaa !55 ; 2 uses
  %i.ku = add nsw i32 %i.ks, %i.kt
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.kv = icmp samesign ult i32 %i.ko, 7
  br i1 %i.kv, label %Exa9_ManCountAuxTotal.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kw = add nuw nsw i32 %i.ko, 4
  %i.kx = udiv i32 %i.kw, 6
  %i.ky = add nsw i32 %i.kx, -1
  %i.kz = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ky, i1 true)
  %i.la = sub nuw nsw i32 32, %i.kz
  br label %Exa9_ManCountAuxTotal.exit.thread

bb.ak:                                            ; preds = %bb.ah
  %i.lb = icmp samesign ult i32 %i.ko, 6
  br i1 %i.lb, label %Exa9_ManCountAuxTotal.exit.thread588, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lc = add nuw nsw i32 %i.ko, 4
  %i.ld = udiv i32 %i.lc, 5
  br label %Exa9_ManCountAuxTotal.exit.thread588

Exa9_ManCountAuxTotal.exit.thread:                ; preds = %bb.ai, %bb.aj
  %.2.i15.i.ph = phi i32 [ %i.la, %bb.aj ], [ 0, %bb.ai ]
  %i.le = add nsw i32 %.2.i15.i.ph, %.0.lcssa.i   ; 2 uses
  %i.lf = add nsw i32 %i.le, %i.ib
  %i.lg = load i32, ptr %i.gr, align 8, !tbaa !55 ; 2 uses
  %i.lh = add nsw i32 %i.lf, %i.lg
  br label %bb.an

Exa9_ManCountAuxTotal.exit.thread588:             ; preds = %bb.ak, %bb.al
  %.2.i15.i.ph587 = phi i32 [ %i.ld, %bb.al ], [ 0, %bb.ak ]
  %i.li = add nsw i32 %.2.i15.i.ph587, %.0.lcssa.i ; 2 uses
  %i.lj = add nsw i32 %i.li, %i.ib
  %i.lk = load i32, ptr %i.gr, align 8, !tbaa !55 ; 2 uses
  %i.ll = add nsw i32 %i.lj, %i.lk
  br label %bb.an

Exa9_ManCountAuxTotal.exit:                       ; preds = %._crit_edge.i204, %bb.ah
  %i.lm = add nsw i32 %.0.lcssa.i, %i.ib
  %i.ln = load i32, ptr %i.gr, align 8, !tbaa !55 ; 5 uses
  %i.lo = add nsw i32 %i.lm, %i.ln                ; 4 uses
  switch i32 %.fr.i, label %bb.am [
    i32 1, label %bb.an
    i32 2, label %.fold.split
    i32 3, label %switch.edge
  ]

switch.edge:                                      ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

bb.am:                                            ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

.fold.split:                                      ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

bb.an:                                            ; preds = %Exa9_ManCountAuxTotal.exit.thread, %Exa9_ManCountAuxTotal.exit.thread588, %Exa9_ManCountAuxTotal.exit.thread590, %switch.edge, %Exa9_ManCountAuxTotal.exit, %.fold.split, %bb.am
  %i.lp = phi i32 [ %i.lo, %Exa9_ManCountAuxTotal.exit ], [ %i.lo, %bb.am ], [ %i.lo, %switch.edge ], [ %i.ku, %Exa9_ManCountAuxTotal.exit.thread590 ], [ %i.ll, %Exa9_ManCountAuxTotal.exit.thread588 ], [ %i.lh, %Exa9_ManCountAuxTotal.exit.thread ], [ %i.lo, %.fold.split ]
  %i.lq = phi i32 [ %i.ln, %Exa9_ManCountAuxTotal.exit ], [ %i.ln, %bb.am ], [ %i.ln, %switch.edge ], [ %i.kt, %Exa9_ManCountAuxTotal.exit.thread590 ], [ %i.lk, %Exa9_ManCountAuxTotal.exit.thread588 ], [ %i.lg, %Exa9_ManCountAuxTotal.exit.thread ], [ %i.ln, %.fold.split ]
  %i.lr = phi i32 [ %.0.lcssa.i, %Exa9_ManCountAuxTotal.exit ], [ %.0.lcssa.i, %bb.am ], [ %.0.lcssa.i, %switch.edge ], [ %i.kr, %Exa9_ManCountAuxTotal.exit.thread590 ], [ %i.li, %Exa9_ManCountAuxTotal.exit.thread588 ], [ %i.le, %Exa9_ManCountAuxTotal.exit.thread ], [ %.0.lcssa.i, %.fold.split ]
  %i.ls = phi ptr [ @.str.3, %Exa9_ManCountAuxTotal.exit ], [ @.str.6, %bb.am ], [ @.str.5, %switch.edge ], [ @.str.3, %Exa9_ManCountAuxTotal.exit.thread590 ], [ @.str.5, %Exa9_ManCountAuxTotal.exit.thread588 ], [ @.str.4, %Exa9_ManCountAuxTotal.exit.thread ], [ @.str.4, %.fold.split ]
  %i.lt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ib, ptr noundef nonnull %i.ls, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ad, %Exa9_ManAlloc.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fw, i64 52 ; 19 uses
  store i32 1, ptr %i.lu, align 4, !tbaa !71
  %i.lv = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 13 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4 ; 4 uses
  store i32 100, ptr %i.lv, align 8, !tbaa !72
  %i.lx = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 4 uses
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !74
  %i.lz = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 13 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4 ; 4 uses
  store i32 100, ptr %i.lz, align 8, !tbaa !72
  %i.mb = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 8 uses
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !74
  %i.md = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 18 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 5 uses
  store i32 0, ptr %i.me, align 4, !tbaa !75
  store i32 100, ptr %i.md, align 8, !tbaa !72
  %i.mf = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 15 uses
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !74
  %i.mh = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph.i209, label %._crit_edge281.i

.lr.ph.i209:                                      ; preds = %bb.ao
  %i.mj = getelementptr inbounds nuw i8, ptr %i.fw, i64 56 ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fw, i64 44 ; 12 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fw, i64 40 ; 12 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 12 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge278.i, %.lr.ph.i209
  %.promoted267398.i = phi ptr [ %i.mb, %.lr.ph.i209 ], [ %.promoted267402.i, %._crit_edge278.i ]
  %.promoted264393.i = phi i32 [ 100, %.lr.ph.i209 ], [ %.promoted264397.i, %._crit_edge278.i ]
  %.promoted259386.i = phi ptr [ %i.lx, %.lr.ph.i209 ], [ %.promoted259390.i, %._crit_edge278.i ]
  %.promoted256381.i = phi i32 [ 100, %.lr.ph.i209 ], [ %.promoted256385.i, %._crit_edge278.i ]
  %indvars.iv347.i = phi i32 [ 2, %.lr.ph.i209 ], [ %indvars.iv.next348.i, %._crit_edge278.i ] ; 2 uses
  %.0138279.i = phi i32 [ 0, %.lr.ph.i209 ], [ %i.tc, %._crit_edge278.i ] ; 3 uses
  %i.mn = load i32, ptr %i.fy, align 8, !tbaa !49 ; 2 uses
  %i.mo = add nsw i32 %i.mn, %.0138279.i          ; 2 uses
  %i.mp = shl i32 %.0138279.i, 2                  ; 5 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.by
  br i1 %i.mt, label %bb.ar, label %.preheader247.i, !llvm.loop !76

.preheader247.i:                                  ; preds = %bb.aq
  %.not149276.i = icmp slt i32 %i.mo, 1
  br i1 %.not149276.i, label %._crit_edge278.i, label %.preheader246.lr.ph.i

.preheader246.lr.ph.i:                            ; preds = %.preheader247.i
  %i.mq = add i32 %i.mn, %indvars.iv347.i
  %i.mr = or disjoint i32 %i.mp, 2                ; 2 uses
  %i.ms = or disjoint i32 %i.mp, 3                ; 2 uses
  %.neg473.i = xor i32 %i.mp, -1
  br label %.preheader246.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.promoted267399.i = phi ptr [ %.promoted267398.i, %bb.ap ], [ %.promoted267402.i, %bb.aq ] ; 2 uses
  %.promoted264394.i = phi i32 [ %.promoted264393.i, %bb.ap ], [ %.promoted264397.i, %bb.aq ]
  %.promoted259387.i = phi ptr [ %.promoted259386.i, %bb.ap ], [ %.promoted259390.i, %bb.aq ] ; 2 uses
  %.promoted256382.i = phi i32 [ %.promoted256381.i, %bb.ap ], [ %.promoted256385.i, %bb.aq ]
  %i.mt = phi i1 [ true, %bb.ap ], [ false, %bb.aq ]
  %.0132272.i = phi i32 [ 0, %bb.ap ], [ 2, %bb.aq ]
  store i32 0, ptr %i.lw, align 4, !tbaa !75
  store i32 0, ptr %i.ma, align 4, !tbaa !75
  %i.mu = load i32, ptr %i.gd, align 8, !tbaa !51 ; 2 uses
  %.not152270.i = icmp slt i32 %i.mu, 1
  br i1 %.not152270.i, label %._crit_edge.thread.i, label %.preheader245.lr.ph.i

.preheader245.lr.ph.i:                            ; preds = %bb.ar
  %i.mv = or disjoint i32 %.0132272.i, %i.mp      ; 5 uses
  %i.mw = or disjoint i32 %i.mv, 1                ; 2 uses
  %.neg.i = xor i32 %i.mv, -1
  br label %.preheader245.i

.preheader245.i:                                  ; preds = %.split254.us.i, %.preheader245.lr.ph.i
  %.val162.us.i = phi i32 [ %i.mu, %.preheader245.lr.ph.i ], [ %i.qd, %.split254.us.i ] ; 2 uses
  %.promoted267.i = phi ptr [ %.promoted267399.i, %.preheader245.lr.ph.i ], [ %.promoted267402.i, %.split254.us.i ] ; 8 uses
  %.promoted264.i = phi i32 [ %.promoted264394.i, %.preheader245.lr.ph.i ], [ %.promoted264397.i, %.split254.us.i ] ; 8 uses
  %.promoted262.i = phi i32 [ 0, %.preheader245.lr.ph.i ], [ %.promoted262392.i, %.split254.us.i ] ; 6 uses
  %i.mx = phi ptr [ %.promoted259387.i, %.preheader245.lr.ph.i ], [ %.promoted259390.i, %.split254.us.i ] ; 9 uses
  %.promoted256.i = phi i32 [ %.promoted256382.i, %.preheader245.lr.ph.i ], [ %.promoted256385.i, %.split254.us.i ] ; 8 uses
  %.promoted.i = phi i32 [ 0, %.preheader245.lr.ph.i ], [ %.promoted380.i, %.split254.us.i ] ; 6 uses
  %.0134271.i = phi i32 [ 1, %.preheader245.lr.ph.i ], [ %i.qc, %.split254.us.i ] ; 9 uses
  %.not154.not.i = icmp sgt i32 %.0134271.i, %i.mo
  br i1 %.not154.not.i, label %.preheader245.split.us.preheader.i, label %.preheader245.split.i

.preheader245.split.us.preheader.i:               ; preds = %.preheader245.i
  %i.my = mul nsw i32 %.val162.us.i, %i.mv
  %i.mz = add i32 %i.my, %.0134271.i
  %i.na = sub nsw i32 0, %i.mz
  %i.nb = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.nb, i32 noundef %i.na) #19
  %i.nc = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.nc, i32 noundef 0) #19
  %i.nd = load i32, ptr %i.lu, align 4, !tbaa !71
  %.not.i.i.us.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i.us.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.preheader245.split.us.preheader.i
  %i.ne = load i32, ptr %i.mj, align 8, !tbaa !77
  %.not12.i.i.us.i = icmp eq i32 %i.ne, 0
  br i1 %.not12.i.i.us.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nf = load i32, ptr %i.mk, align 4, !tbaa !78
  %i.ng = add nsw i32 %i.nf, 1
  store i32 %i.ng, ptr %i.mk, align 4, !tbaa !78
  br label %Exa9_ManAddUnit.exit.us.i

bb.au:                                            ; preds = %bb.as
  %i.nh = load i32, ptr %i.ml, align 8, !tbaa !79
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.ml, align 8, !tbaa !79
  br label %Exa9_ManAddUnit.exit.us.i

bb.av:                                            ; preds = %.preheader245.split.us.preheader.i
  %i.nj = load i32, ptr %i.mm, align 8, !tbaa !80
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.mm, align 8, !tbaa !80
  br label %Exa9_ManAddUnit.exit.us.i

Exa9_ManAddUnit.exit.us.i:                        ; preds = %bb.av, %bb.au, %bb.at
  %i.nl = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.nm = call i32 @kissat_is_inconsistent(ptr noundef %i.nl) #19
  %.not13.i.i.not.us.i = icmp eq i32 %i.nm, 0
  br i1 %.not13.i.i.not.us.i, label %.preheader245.split.us.1.i, label %.split.us.i

.preheader245.split.us.1.i:                       ; preds = %Exa9_ManAddUnit.exit.us.i
  %.val162.us.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %.neg471.i = mul i32 %.val162.us.1.i, %.neg.i
  %.neg472.i = sub i32 %.neg471.i, %.0134271.i
  %i.nn = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.nn, i32 noundef %.neg472.i) #19
  %i.no = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.no, i32 noundef 0) #19
  %i.np = load i32, ptr %i.lu, align 4, !tbaa !71
  %.not.i.i.us.1.i = icmp eq i32 %i.np, 0
  br i1 %.not.i.i.us.1.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %.preheader245.split.us.1.i
  %i.nq = load i32, ptr %i.mj, align 8, !tbaa !77
  %.not12.i.i.us.1.i = icmp eq i32 %i.nq, 0
  br i1 %.not12.i.i.us.1.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nr = load i32, ptr %i.mk, align 4, !tbaa !78
end_hunk_0
