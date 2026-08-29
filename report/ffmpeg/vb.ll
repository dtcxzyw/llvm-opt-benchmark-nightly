Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vb?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@decode_frame:bb.a
.preheader204.3.i:                                ; preds = %bb.v, %.preheader204.2.i
  %.sink269.i = phi i32 [ %i.dk, %bb.v ], [ 0, %.preheader204.2.i ]
  %i.dl = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cc
  store i32 %.sink269.i, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds i8, ptr %.0136232.i, i64 %i.cg ; 3 uses
  %i.dn = icmp ult ptr %i.dm, %i.bk
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dp = icmp ugt ptr %i.do, %i.bp
  %.not202.3.i = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %.not202.3.i, label %.loopexit.loopexit.i, label %bb.w

bb.w:                                             ; preds = %.preheader204.3.i
  %i.dq = load i32, ptr %i.dm, align 1
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.w, %.preheader204.3.i
  %.sink270.i = phi i32 [ %i.dq, %bb.w ], [ 0, %.preheader204.3.i ]
  %i.dr = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cg
  store i32 %.sink270.i, ptr %i.dr, align 1
  br label %.loopexit.i

bb.x:                                             ; preds = %bytestream2_get_byte.exit159.i
  %i.ds = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dt = sub i64 %i.q, %i.ds
  %i.du = icmp slt i64 %i.dt, 1
  br i1 %i.du, label %bytestream2_get_byte.exit157.thread.i, label %bytestream2_get_byte.exit157.i

bytestream2_get_byte.exit157.i:                   ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 1 ; 3 uses
  %i.dw = load i8, ptr %.sroa.0.1.i, align 1, !tbaa !45 ; 2 uses
  %.not144.i = icmp eq i8 %i.dw, 0
  br i1 %.not144.i, label %bytestream2_get_byte.exit157.bytestream2_get_byte.exit157.thread_crit_edge.i, label %bb.z

bytestream2_get_byte.exit157.bytestream2_get_byte.exit157.thread_crit_edge.i: ; preds = %bytestream2_get_byte.exit157.i
  %.pre275.i = ptrtoint ptr %i.dv to i64
  br label %bytestream2_get_byte.exit157.thread.i

bytestream2_get_byte.exit157.thread.i:            ; preds = %bytestream2_get_byte.exit157.bytestream2_get_byte.exit157.thread_crit_edge.i, %bb.x
  %.pre-phi276.i = phi i64 [ %.pre275.i, %bytestream2_get_byte.exit157.bytestream2_get_byte.exit157.thread_crit_edge.i ], [ %i.q, %bb.x ]
  %.sroa.0.9190.i = phi ptr [ %i.dv, %bytestream2_get_byte.exit157.bytestream2_get_byte.exit157.thread_crit_edge.i ], [ %i.o, %bb.x ] ; 2 uses
  %i.dx = sub i64 %i.q, %.pre-phi276.i            ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = icmp slt i32 %i.dy, 16
  br i1 %i.dz, label %bb.y, label %.preheader205.preheader.i

.preheader205.preheader.i:                        ; preds = %bytestream2_get_byte.exit157.thread.i
  %i.ea = tail call i64 @llvm.smin.i64(i64 %i.dx, i64 4)
  %i.eb = and i64 %i.ea, 2147483647               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0134234.i, ptr align 1 %.sroa.0.9190.i, i64 %i.eb, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.9190.i, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.by
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.q, %i.ee
  %i.eg = tail call i64 @llvm.smin.i64(i64 %i.ef, i64 4)
  %i.eh = and i64 %i.eg, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %i.ec, i64 %i.eh, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eh ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cc
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.q, %i.ek
  %i.em = tail call i64 @llvm.smin.i64(i64 %i.el, i64 4)
  %i.en = and i64 %i.em, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ei, i64 %i.en, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.en ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cg
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.q, %i.eq
  %i.es = tail call i64 @llvm.smin.i64(i64 %i.er, i64 4)
  %i.et = and i64 %i.es, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.eo, i64 %i.et, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.et
  br label %.loopexit.i

bb.y:                                             ; preds = %bytestream2_get_byte.exit157.thread.i
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ev, i32 noundef 16, ptr noundef nonnull @.str.7) #8
  br label %vb_decode_framedata.exit

bb.z:                                             ; preds = %bytestream2_get_byte.exit157.i
  %i.ew = zext i8 %i.dw to i32                    ; 2 uses
  %sext.i = shl i32 %i.ew, 28
  %i.ex = ashr exact i32 %sext.i, 28
  %i.ey = shl nuw i32 %i.ew, 24
  %i.ez = ashr i32 %i.ey, 28
  %i.fa = mul nsw i32 %i.ez, %i.bi
  %i.fb = add nsw i32 %i.fa, %i.ex
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %.0136232.i, i64 %i.fc ; 6 uses
  %i.fe = icmp ult ptr %i.fd, %i.bk
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fg = icmp ugt ptr %i.ff, %i.bp
  %.not199.i = select i1 %i.fe, i1 true, i1 %i.fg
  br i1 %.not199.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = load i32, ptr %i.fd, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink271.i = phi i32 [ %i.fh, %bb.aa ], [ 0, %bb.z ]
  store i32 %.sink271.i, ptr %.0134234.i, align 1
  %i.fi = getelementptr inbounds i8, ptr %i.fd, i64 %i.by ; 3 uses
  %i.fj = icmp ult ptr %i.fi, %i.bk
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fl = icmp ugt ptr %i.fk, %i.bp
  %.not199.1.i = select i1 %i.fj, i1 true, i1 %i.fl
  br i1 %.not199.1.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fm = load i32, ptr %i.fi, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink272.i = phi i32 [ %i.fm, %bb.ac ], [ 0, %bb.ab ]
  %i.fn = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.by
  store i32 %.sink272.i, ptr %i.fn, align 1
  %i.fo = getelementptr inbounds i8, ptr %i.fd, i64 %i.cc ; 3 uses
  %i.fp = icmp ult ptr %i.fo, %i.bk
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = icmp ugt ptr %i.fq, %i.bp
  %.not199.2.i = select i1 %i.fp, i1 true, i1 %i.fr
  br i1 %.not199.2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = load i32, ptr %i.fo, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink273.i = phi i32 [ %i.fs, %bb.ae ], [ 0, %bb.ad ]
  %i.ft = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cc
  store i32 %.sink273.i, ptr %i.ft, align 1
  %i.fu = getelementptr inbounds i8, ptr %i.fd, i64 %i.cg ; 3 uses
  %i.fv = icmp ult ptr %i.fu, %i.bk
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fx = icmp ugt ptr %i.fw, %i.bp
  %.not199.3.i = select i1 %i.fv, i1 true, i1 %i.fx
  br i1 %.not199.3.i, label %.loopexit.loopexit240.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = load i32, ptr %i.fu, align 1
  br label %.loopexit.loopexit240.i

.loopexit.loopexit240.i:                          ; preds = %bb.ag, %bb.af
  %.sink274.i = phi i32 [ %i.fy, %bb.ag ], [ 0, %bb.af ]
  %i.fz = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cg
  store i32 %.sink274.i, ptr %i.fz, align 1
  br label %.loopexit.i

bb.ah:                                            ; preds = %bytestream2_get_byte.exit159.i
  %i.ga = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gb = sub i64 %i.q, %i.ga
  %i.gc = icmp slt i64 %i.gb, 1
  br i1 %i.gc, label %bytestream2_get_byte.exit155.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 1
  %i.ge = load i8, ptr %.sroa.0.1.i, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit155.i

bytestream2_get_byte.exit155.i:                   ; preds = %bb.ai, %bb.ah
  %.sroa.0.8.i = phi ptr [ %i.gd, %bb.ai ], [ %i.o, %bb.ah ]
  %.0.i154.i = phi i8 [ %i.ge, %bb.ai ], [ 0, %bb.ah ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %.0134234.i, i8 %.0.i154.i, i64 4, i1 false)
  %i.gf = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.by
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.gf, i8 %.0.i154.i, i64 4, i1 false)
  %i.gg = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.gg, i8 %.0.i154.i, i64 4, i1 false)
  %i.gh = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cg
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.gh, i8 %.0.i154.i, i64 4, i1 false)
  br label %.loopexit.i

bb.aj:                                            ; preds = %bytestream2_get_byte.exit159.i
  %i.gi = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gj = sub i64 %i.q, %i.gi
  %i.gk = icmp slt i64 %i.gj, 1
  br i1 %i.gk, label %bytestream2_get_byte.exit153.thread.i, label %bytestream2_get_byte.exit153.i

bytestream2_get_byte.exit153.i:                   ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 1 ; 4 uses
  %i.gm = load i8, ptr %.sroa.0.1.i, align 1, !tbaa !45
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %i.go = lshr i32 %i.gn, 6
  %i.gp = and i32 %i.gn, 63
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr @vb_patterns, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !46
  %i.gt = zext i16 %i.gs to i32                   ; 3 uses
  switch i32 %i.go, label %default.unreachable [
    i32 0, label %bytestream2_get_byte.exit153.bytestream2_get_byte.exit153.thread_crit_edge.i
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.cq
  ]

bytestream2_get_byte.exit153.bytestream2_get_byte.exit153.thread_crit_edge.i: ; preds = %bytestream2_get_byte.exit153.i
  %.pre277.i = ptrtoint ptr %i.gl to i64
  br label %bytestream2_get_byte.exit153.thread.i

bytestream2_get_byte.exit153.thread.i:            ; preds = %bytestream2_get_byte.exit153.bytestream2_get_byte.exit153.thread_crit_edge.i, %bb.aj
  %.pre-phi278.i = phi i64 [ %.pre277.i, %bytestream2_get_byte.exit153.bytestream2_get_byte.exit153.thread_crit_edge.i ], [ %i.q, %bb.aj ]
  %i.gu = phi i32 [ %i.gt, %bytestream2_get_byte.exit153.bytestream2_get_byte.exit153.thread_crit_edge.i ], [ 1632, %bb.aj ]
  %.sroa.0.7193.i = phi ptr [ %i.gl, %bytestream2_get_byte.exit153.bytestream2_get_byte.exit153.thread_crit_edge.i ], [ %i.o, %bb.aj ] ; 2 uses
  %i.gv = sub i64 %i.q, %.pre-phi278.i
  %i.gw = icmp slt i64 %i.gv, 1
  br i1 %i.gw, label %bytestream2_get_byte.exit151.i, label %bb.ak

bb.ak:                                            ; preds = %bytestream2_get_byte.exit153.thread.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.7193.i, i64 1 ; 2 uses
  %i.gy = load i8, ptr %.sroa.0.7193.i, align 1, !tbaa !45
  %.pre.i = ptrtoint ptr %i.gx to i64
  br label %bytestream2_get_byte.exit151.i

bytestream2_get_byte.exit151.i:                   ; preds = %bb.ak, %bytestream2_get_byte.exit153.thread.i
  %.pre-phi.i = phi i64 [ %i.q, %bytestream2_get_byte.exit153.thread.i ], [ %.pre.i, %bb.ak ]
  %.sroa.0.6.i = phi ptr [ %i.o, %bytestream2_get_byte.exit153.thread.i ], [ %i.gx, %bb.ak ] ; 2 uses
  %.0.i150.i = phi i8 [ 0, %bytestream2_get_byte.exit153.thread.i ], [ %i.gy, %bb.ak ]
  %i.gz = sub i64 %i.q, %.pre-phi.i
  %i.ha = icmp slt i64 %i.gz, 1
  br i1 %i.ha, label %bytestream2_get_byte.exit149.i, label %bb.al

bb.al:                                            ; preds = %bytestream2_get_byte.exit151.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.6.i, i64 1
  %i.hc = load i8, ptr %.sroa.0.6.i, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit149.i

bytestream2_get_byte.exit149.i:                   ; preds = %bb.al, %bytestream2_get_byte.exit151.i
  %.sroa.0.5.i = phi ptr [ %i.hb, %bb.al ], [ %i.o, %bytestream2_get_byte.exit151.i ]
  %.0.i148.i = phi i8 [ %i.hc, %bb.al ], [ 0, %bytestream2_get_byte.exit151.i ]
  %i.hd = insertelement <4 x i32> poison, i32 %i.gu, i64 0
  %i.he = shufflevector <4 x i32> %i.hd, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hf = and <4 x i32> %i.he, <i32 1, i32 2, i32 4, i32 8>
  %i.hg = icmp eq <4 x i32> %i.hf, zeroinitializer
  %i.hh = insertelement <4 x i8> poison, i8 %.0.i150.i, i64 0
  %i.hi = shufflevector <4 x i8> %i.hh, <4 x i8> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hj = insertelement <4 x i8> poison, i8 %.0.i148.i, i64 0
  %i.hk = shufflevector <4 x i8> %i.hj, <4 x i8> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hl = select <4 x i1> %i.hg, <4 x i8> %i.hi, <4 x i8> %i.hk
  store <4 x i8> %i.hl, ptr %.0134234.i, align 1, !tbaa !45
  %i.hm = and <4 x i32> %i.he, <i32 16, i32 32, i32 64, i32 128>
  %i.hn = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.by
  %i.ho = icmp eq <4 x i32> %i.hm, zeroinitializer
  %i.hp = select <4 x i1> %i.ho, <4 x i8> %i.hi, <4 x i8> %i.hk
  store <4 x i8> %i.hp, ptr %i.hn, align 1, !tbaa !45
  %i.hq = and <4 x i32> %i.he, <i32 256, i32 512, i32 1024, i32 2048>
  %i.hr = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cc
  %i.hs = icmp eq <4 x i32> %i.hq, zeroinitializer
  %i.ht = select <4 x i1> %i.hs, <4 x i8> %i.hi, <4 x i8> %i.hk
  store <4 x i8> %i.ht, ptr %i.hr, align 1, !tbaa !45
  %i.hu = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cg
  %4 = and <4 x i32> %i.he, <i32 4096, i32 8192, i32 16384, i32 -1>
  %5 = icmp samesign ult <4 x i32> %4, <i32 1, i32 1, i32 1, i32 32768>
  %6 = select <4 x i1> %5, <4 x i8> %i.hi, <4 x i8> %i.hk
  store <4 x i8> %6, ptr %i.hu, align 1, !tbaa !45
  br label %.loopexit.i

bb.am:                                            ; preds = %bytestream2_get_byte.exit153.i
  %i.hv = xor i32 %i.gt, -1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bytestream2_get_byte.exit153.i
  %.2.i = phi i32 [ %i.hv, %bb.am ], [ %i.gt, %bytestream2_get_byte.exit153.i ] ; 16 uses
  %i.hw = ptrtoint ptr %i.gl to i64
  %i.hx = sub i64 %i.q, %i.hw
  %i.hy = icmp slt i64 %i.hx, 1
  br i1 %i.hy, label %bytestream2_get_byte.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 2
  %i.ia = load i8, ptr %i.gl, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.ao, %bb.an
  %.sroa.0.4.i = phi ptr [ %i.hz, %bb.ao ], [ %i.o, %bb.an ] ; 2 uses
  %.0.i.i = phi i8 [ %i.ia, %bb.ao ], [ 0, %bb.an ] ; 23 uses
  %i.ib = and i32 %.2.i, 1
  %.not141.i = icmp eq i32 %i.ib, 0
  br i1 %.not141.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bytestream2_get_byte.exit.i
  %i.ic = icmp ult ptr %.0136232.i, %i.bk
  %i.id = icmp uge ptr %.0136232.i, %i.bp
  %.not196.i = or i1 %i.ic, %i.id
  br i1 %.not196.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ie = load i8, ptr %.0136232.i, align 1, !tbaa !45
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bytestream2_get_byte.exit.i
  %storemerge.i = phi i8 [ %i.ie, %bb.aq ], [ %.0.i.i, %bb.ap ], [ %.0.i.i, %bytestream2_get_byte.exit.i ]
  store i8 %storemerge.i, ptr %.0134234.i, align 1, !tbaa !45
  %i.if = and i32 %.2.i, 2
  %.not141.1.i = icmp eq i32 %i.if, 0
  br i1 %.not141.1.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %gep.1.i = getelementptr i8, ptr %.0136232.i, i64 1 ; 3 uses
  %i.ig = icmp ult ptr %gep.1.i, %i.bk
  %i.ih = icmp uge ptr %gep.1.i, %i.bp
  %.not196.1.i = or i1 %i.ig, %i.ih
  br i1 %.not196.1.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ii = load i8, ptr %gep.1.i, align 1, !tbaa !45
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.0.i.sink.i = phi i8 [ %i.ii, %bb.at ], [ %.0.i.i, %bb.as ], [ %.0.i.i, %bb.ar ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.0134234.i, i64 1
  store i8 %.0.i.sink.i, ptr %i.ij, align 1, !tbaa !45
  %i.ik = and i32 %.2.i, 4
  %.not141.2.i = icmp eq i32 %i.ik, 0
  br i1 %.not141.2.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %gep.2.i = getelementptr i8, ptr %.0136232.i, i64 2 ; 3 uses
  %i.il = icmp ult ptr %gep.2.i, %i.bk
  %i.im = icmp uge ptr %gep.2.i, %i.bp
  %.not196.2.i = or i1 %i.il, %i.im
  br i1 %.not196.2.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.in = load i8, ptr %gep.2.i, align 1, !tbaa !45
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0.i.sink299.i = phi i8 [ %i.in, %bb.aw ], [ %.0.i.i, %bb.av ], [ %.0.i.i, %bb.au ]
  %i.io = getelementptr inbounds nuw i8, ptr %.0134234.i, i64 2
  store i8 %.0.i.sink299.i, ptr %i.io, align 1, !tbaa !45
  %i.ip = and i32 %.2.i, 8
  %.not141.3.i = icmp eq i32 %i.ip, 0
  br i1 %.not141.3.i, label %.preheader203.1.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %gep.3.i = getelementptr i8, ptr %.0136232.i, i64 3 ; 3 uses
  %i.iq = icmp ult ptr %gep.3.i, %i.bk
  %i.ir = icmp uge ptr %gep.3.i, %i.bp
  %.not196.3.i = or i1 %i.iq, %i.ir
  br i1 %.not196.3.i, label %.preheader203.1.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.is = load i8, ptr %gep.3.i, align 1, !tbaa !45
  br label %.preheader203.1.i

.preheader203.1.i:                                ; preds = %bb.az, %bb.ay, %bb.ax
  %.0.i.sink301.i = phi i8 [ %i.is, %bb.az ], [ %.0.i.i, %bb.ay ], [ %.0.i.i, %bb.ax ]
  %i.it = getelementptr inbounds nuw i8, ptr %.0134234.i, i64 3
  store i8 %.0.i.sink301.i, ptr %i.it, align 1, !tbaa !45
  %invariant.gep.1.i = getelementptr i8, ptr %.0136232.i, i64 %i.by ; 6 uses
  %i.iu = and i32 %.2.i, 16
  %.not141.1253.i = icmp eq i32 %i.iu, 0
  br i1 %.not141.1253.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.preheader203.1.i
  %i.iv = icmp ult ptr %invariant.gep.1.i, %i.bk
  %i.iw = icmp uge ptr %invariant.gep.1.i, %i.bp
  %.not196.1254.i = or i1 %i.iv, %i.iw
  br i1 %.not196.1254.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ix = load i8, ptr %invariant.gep.1.i, align 1, !tbaa !45
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.preheader203.1.i
  %.0.i.sink303.i = phi i8 [ %i.ix, %bb.bb ], [ %.0.i.i, %bb.ba ], [ %.0.i.i, %.preheader203.1.i ]
  %i.iy = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.by ; 4 uses
  store i8 %.0.i.sink303.i, ptr %i.iy, align 1, !tbaa !45
  %i.iz = and i32 %.2.i, 32
  %.not141.1.1.i = icmp eq i32 %i.iz, 0
  br i1 %.not141.1.1.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %gep.1.1.i = getelementptr i8, ptr %invariant.gep.1.i, i64 1 ; 2 uses
  %i.ja = icmp ult ptr %gep.1.1.i, %i.bk
  %i.jb = icmp uge ptr %gep.1.1.i, %i.bp
  %.not196.1.1.i = or i1 %i.ja, %i.jb
  br i1 %.not196.1.1.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jc = getelementptr inbounds i8, ptr %.0136232.i, i64 %i.bz
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !45
  %i.je = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.bz
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !45
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.jf = getelementptr i8, ptr %i.iy, i64 1
  store i8 %.0.i.i, ptr %i.jf, align 1, !tbaa !45
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jg = and i32 %.2.i, 64
  %.not141.2.1.i = icmp eq i32 %i.jg, 0
  br i1 %.not141.2.1.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %gep.2.1.i = getelementptr i8, ptr %invariant.gep.1.i, i64 2 ; 2 uses
  %i.jh = icmp ult ptr %gep.2.1.i, %i.bk
  %i.ji = icmp uge ptr %gep.2.1.i, %i.bp
  %.not196.2.1.i = or i1 %i.jh, %i.ji
  br i1 %.not196.2.1.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jj = getelementptr inbounds i8, ptr %.0136232.i, i64 %i.ca
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !45
  %i.jl = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.ca
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !45
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %i.jm = getelementptr i8, ptr %i.iy, i64 2
  store i8 %.0.i.i, ptr %i.jm, align 1, !tbaa !45
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.jn = and i32 %.2.i, 128
  %.not141.3.1.i = icmp eq i32 %i.jn, 0
  br i1 %.not141.3.1.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %gep.3.1.i = getelementptr i8, ptr %invariant.gep.1.i, i64 3 ; 2 uses
  %i.jo = icmp ult ptr %gep.3.1.i, %i.bk
  %i.jp = icmp uge ptr %gep.3.1.i, %i.bp
  %.not196.3.1.i = or i1 %i.jo, %i.jp
  br i1 %.not196.3.1.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jq = getelementptr inbounds i8, ptr %.0136232.i, i64 %i.cb
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !45
  %i.js = getelementptr inbounds i8, ptr %.0134234.i, i64 %i.cb
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !45
  br label %.preheader203.2.i

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.jt = getelementptr i8, ptr %i.iy, i64 3
  store i8 %.0.i.i, ptr %i.jt, align 1, !tbaa !45
  br label %.preheader203.2.i

.preheader203.2.i:                                ; preds = %bb.bn, %bb.bm
  %invariant.gep.2.i = getelementptr i8, ptr %.0136232.i, i64 %i.cc ; 6 uses
  %i.ju = and i32 %.2.i, 256
  %.not141.2255.i = icmp eq i32 %i.ju, 0
  br i1 %.not141.2255.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %.preheader203.2.i
  %i.jv = icmp ult ptr %invariant.gep.2.i, %i.bk
  %i.jw = icmp uge ptr %invariant.gep.2.i, %i.bp
  %.not196.2256.i = or i1 %i.jv, %i.jw
  br i1 %.not196.2256.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jx = load i8, ptr %invariant.gep.2.i, align 1, !tbaa !45
  br label %bb.bq
end_hunk_0
