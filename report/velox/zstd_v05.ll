Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v05?download=true
inline.NumInlined: 338
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ZSTDv05_decompressBlock_internal:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 10252
  %i.dg = tail call i64 @HUFv05_decompress1X4_usingDTable(ptr noundef nonnull %i.dd, i64 noundef %i.ct, ptr noundef nonnull %i.de, i64 noundef %i.da, ptr noundef nonnull %i.df)
  %i.dh = icmp ult i64 %i.dg, -119
  br i1 %i.dh, label %bb.p, label %ZSTDv05_decompressSequences.exit

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.dd, ptr %i.di, align 8, !tbaa !121
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %i.ct, ptr %i.dj, align 8, !tbaa !122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ct
  store i64 0, ptr %i.dk, align 1
  br label %bb.ac

bb.q:                                             ; preds = %bb.c
  %i.dl = lshr i32 %i.l, 4
  %i.dm = and i32 %i.dl, 3
  switch i32 %i.dm, label %bb.r [
    i32 3, label %bb.t
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.dn = and i32 %i.l, 31
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.do = shl nuw nsw i32 %i.l, 8
  %i.dp = and i32 %i.do, 3840
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !27
  %i.ds = zext i8 %i.dr to i32
  %i.dt = or disjoint i32 %i.dp, %i.ds
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.du = shl nuw nsw i32 %i.l, 16
  %i.dv = and i32 %i.du, 983040
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !27
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = or disjoint i32 %i.dz, %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !27
  %i.ed = zext i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.ea, %i.ed
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0124.in.i = phi i32 [ %i.dn, %bb.r ], [ %i.ee, %bb.t ], [ %i.dt, %bb.s ]
  %.0123.i = phi i64 [ 1, %bb.r ], [ 3, %bb.t ], [ 2, %bb.s ] ; 3 uses
  %.0124.i = zext nneg i32 %.0124.in.i to i64     ; 7 uses
  %i.ef = add nuw nsw i64 %.0123.i, %.0124.i      ; 4 uses
  %i.eg = add nuw nsw i64 %i.ef, 8
  %i.eh = icmp samesign ugt i64 %i.eg, %4
  br i1 %i.eh, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ei = icmp samesign ugt i64 %i.ef, %4
  br i1 %i.ei, label %ZSTDv05_decompressSequences.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 %.0123.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 1 %i.ek, i64 %.0124.i, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !121
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0124.i, ptr %i.em, align 8, !tbaa !122
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.0124.i
  store i64 0, ptr %i.en, align 1
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 %.0123.i ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !121
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0124.i, ptr %i.eq, align 8, !tbaa !122
  br label %bb.ac

bb.y:                                             ; preds = %bb.c
  %i.er = lshr i32 %i.l, 4
  %i.es = and i32 %i.er, 3
  switch i32 %i.es, label %bb.z [
    i32 3, label %bb.ab
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.et = and i32 %i.l, 31
  br label %.thread171.i

bb.aa:                                            ; preds = %bb.y
  %i.eu = shl nuw nsw i32 %i.l, 8
  %i.ev = and i32 %i.eu, 3840
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !27
  %i.ey = zext i8 %i.ex to i32
  %i.ez = or disjoint i32 %i.ev, %i.ey
  br label %.thread171.i

bb.ab:                                            ; preds = %bb.y
  %i.fa = shl nuw nsw i32 %i.l, 16
  %i.fb = and i32 %i.fa, 983040
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !27
  %i.fe = zext i8 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 8
  %i.fg = or disjoint i32 %i.ff, %i.fb
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !27
  %i.fj = zext i8 %i.fi to i32
  %i.fk = or disjoint i32 %i.fg, %i.fj            ; 2 uses
  %i.fl = icmp eq i64 %4, 3
  %i.fm = icmp samesign ugt i32 %i.fk, 131072
  %or.cond177.i = select i1 %i.fl, i1 true, i1 %i.fm
  br i1 %or.cond177.i, label %ZSTDv05_decompressSequences.exit, label %.thread171.i

.thread171.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z
  %.0175.i = phi i32 [ 3, %bb.ab ], [ 2, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %.0122.in174.i = phi i32 [ %i.fk, %bb.ab ], [ %i.ez, %bb.aa ], [ %i.et, %bb.z ]
  %.0122.i = zext nneg i32 %.0122.in174.i to i64  ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 3 uses
  %i.fo = zext nneg i32 %.0175.i to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !27
  %i.fr = add nuw nsw i64 %.0122.i, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fn, i8 %i.fq, i64 %i.fr, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.fn, ptr %i.fs, align 8, !tbaa !121
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0122.i, ptr %i.ft, align 8, !tbaa !122
  %i.fu = add nuw nsw i32 %.0175.i, 1
  %i.fv = zext nneg i32 %i.fu to i64
  br label %bb.ac

default.unreachable:                              ; preds = %FSEv05_buildDTable_raw.exit123.i.i, %FSEv05_buildDTable_raw.exit.i.i, %bb.ao, %bb.c
  unreachable

bb.ac:                                            ; preds = %.thread171.i, %bb.x, %bb.w, %bb.p, %bb.k
  %i.fw = phi i64 [ %.0124.i, %bb.w ], [ %.0122.i, %.thread171.i ], [ %i.ct, %bb.p ], [ %.0124.i, %bb.x ], [ %.0128151157168.i, %bb.k ]
  %i.fx = phi ptr [ %i.ej, %bb.w ], [ %i.fn, %.thread171.i ], [ %i.dd, %bb.p ], [ %i.eo, %bb.x ], [ %i.cf, %bb.k ] ; 4 uses
  %.4.i = phi i64 [ %i.ef, %bb.w ], [ %i.fv, %.thread171.i ], [ %i.db, %bb.p ], [ %i.ef, %bb.x ], [ %i.cc, %bb.k ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 %.4.i ; 5 uses
  %i.fz = sub nsw i64 %4, %.4.i                   ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fw ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 26648
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !52 ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 26656
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !53
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 26664
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 26736
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !48 ; 3 uses
  %i.gm = getelementptr i8, ptr %3, i64 %4        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.gn = icmp eq i64 %4, %.4.i
  br i1 %i.gn, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 1 ; 2 uses
  %i.gp = load i8, ptr %i.fy, align 1, !tbaa !27  ; 3 uses
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = icmp eq i8 %i.gp, 0
  br i1 %i.gr, label %.thread.i18, label %bb.ae

.thread.i18:                                      ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.gs = icmp slt i8 %i.gp, 0
  br i1 %i.gs, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not.not.i.i = icmp eq i64 %i.fz, 1
  br i1 %.not.not.i.i, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gt = shl nuw nsw i32 %i.gq, 8
  %i.gu = add nsw i32 %i.gt, -32768
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gw = load i8, ptr %i.go, align 1, !tbaa !27
  %i.gx = zext i8 %i.gw to i32
  %i.gy = or disjoint i32 %i.gu, %i.gx
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.1.i = phi i32 [ %i.gy, %bb.ag ], [ %i.gq, %bb.ae ] ; 2 uses
  %.090.i.i = phi ptr [ %i.gv, %bb.ag ], [ %i.go, %bb.ae ] ; 7 uses
  %.not.i.i = icmp ult ptr %.090.i.i, %i.gm
  br i1 %.not.i.i, label %bb.ai, label %ZSTDv05_decodeSeqHeaders.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.gz = load i8, ptr %.090.i.i, align 1, !tbaa !27
  %i.ha = zext i8 %i.gz to i32                    ; 5 uses
  %i.hb = lshr i32 %i.ha, 6
  %i.hc = lshr i32 %i.ha, 4
  %i.hd = and i32 %i.hc, 3
  %i.he = lshr i32 %i.ha, 2
  %i.hf = and i32 %i.he, 3
  %i.hg = and i32 %i.ha, 2
  %.not111.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not111.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 3 ; 2 uses
  %i.hi = icmp ugt ptr %i.hh, %i.gm
  br i1 %i.hi, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %5 = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !27
  %7 = zext i8 %6 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 1
  %8 = load i8, ptr %i.hj, align 1, !tbaa !27
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 8
  %11 = or disjoint i64 %10, %7
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.hk = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 2 ; 2 uses
  %i.hl = icmp ugt ptr %i.hk, %i.gm
  br i1 %i.hl, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hm = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !27
  %i.ho = shl nuw nsw i32 %i.ha, 8
  %i.hp = and i32 %i.ho, 256
  %i.hq = zext i8 %i.hn to i32
  %i.hr = or disjoint i32 %i.hp, %i.hq
  %i.hs = zext nneg i32 %i.hr to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.191.i.i = phi ptr [ %i.hh, %bb.ak ], [ %i.hk, %bb.am ] ; 2 uses
  %.089.i.i = phi i64 [ %11, %bb.ak ], [ %i.hs, %bb.am ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.191.i.i, i64 %.089.i.i ; 16 uses
  %i.hu = getelementptr inbounds i8, ptr %i.gm, i64 -3
  %i.hv = icmp ugt ptr %i.ht, %i.hu
  br i1 %i.hv, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  switch i32 %i.hb, label %default.unreachable [
    i32 1, label %bb.ap
    i32 0, label %bb.aq
    i32 2, label %bb.as
    i32 3, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.b, align 4, !tbaa !23
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !27
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 8, !tbaa !25
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.hz, align 2, !tbaa !26
  store i16 0, ptr %i.hy, align 4, !tbaa !22
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.hx, ptr %i.ia, align 2, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.ib, align 1, !tbaa !21
  br label %FSEv05_buildDTable_raw.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  store i32 6, ptr %i.b, align 4, !tbaa !23
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i16 6, ptr %0, align 8, !tbaa !25
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.id, align 2, !tbaa !26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv.i.i = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next.i.i.3, %bb.ar ] ; 6 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.i ; 3 uses
  store i16 0, ptr %i.ie, align 2, !tbaa !22
  %i.if = trunc i64 %indvars.iv.i.i to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  store i8 %i.if, ptr %i.ig, align 2, !tbaa !19
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  store i8 6, ptr %i.ih, align 1, !tbaa !21
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i ; 3 uses
  store i16 0, ptr %i.ii, align 2, !tbaa !22
  %i.ij = trunc i64 %indvars.iv.next.i.i to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  store i8 %i.ij, ptr %i.ik, align 2, !tbaa !19
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 3
  store i8 6, ptr %i.il, align 1, !tbaa !21
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i.1 ; 3 uses
  store i16 0, ptr %i.im, align 2, !tbaa !22
  %i.in = trunc i64 %indvars.iv.next.i.i.1 to i8
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  store i8 %i.in, ptr %i.io, align 2, !tbaa !19
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  store i8 6, ptr %i.ip, align 1, !tbaa !21
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i.2 ; 3 uses
  store i16 0, ptr %i.iq, align 2, !tbaa !22
  %i.ir = trunc i64 %indvars.iv.next.i.i.2 to i8
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  store i8 %i.ir, ptr %i.is, align 2, !tbaa !19
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  store i8 6, ptr %i.it, align 1, !tbaa !21
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 64
  br i1 %exitcond.not.i.i.3, label %FSEv05_buildDTable_raw.exit.i.i, label %bb.ar, !llvm.loop !5

bb.as:                                            ; preds = %bb.ao
  %.not112.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not112.i.i, label %.thread142.i.i, label %FSEv05_buildDTable_raw.exit.i.i

bb.at:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 63, ptr %i.f, align 4, !tbaa !23
  %i.iu = ptrtoint ptr %i.gm to i64
  %i.iv = ptrtoint ptr %i.ht to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ht, i64 noundef %i.iw) ; 2 uses
  %i.iy = icmp ult i64 %i.ix, -119
  br i1 %i.iy, label %bb.au, label %.thread.i.i

bb.au:                                            ; preds = %bb.at
  %i.iz = load i32, ptr %i.b, align 4, !tbaa !23  ; 2 uses
  %i.ja = icmp ugt i32 %i.iz, 10
  br i1 %i.ja, label %.thread.i.i, label %bb.av

.thread.i.i:                                      ; preds = %bb.au, %bb.at
  %.094.ph.i.i = phi i64 [ -20, %bb.au ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %.thread142.i.i

bb.av:                                            ; preds = %bb.au
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.ix
  %i.jc = load i32, ptr %i.f, align 4, !tbaa !23
  %i.jd = call i64 @FSEv05_buildDTable(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef %i.jc, i32 noundef %i.iz) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %FSEv05_buildDTable_raw.exit.i.i

FSEv05_buildDTable_raw.exit.i.i:                  ; preds = %bb.ar, %bb.av, %bb.as, %bb.ap
  %.393.i.i = phi ptr [ %i.jb, %bb.av ], [ %i.hw, %bb.ap ], [ %i.ht, %bb.as ], [ %i.ht, %bb.ar ] ; 8 uses
  switch i32 %i.hd, label %default.unreachable [
    i32 1, label %bb.aw
    i32 0, label %FSEv05_buildDTable_raw.exit123.loopexit.i.i
    i32 2, label %bb.ay
    i32 3, label %bb.az
  ]

bb.aw:                                            ; preds = %FSEv05_buildDTable_raw.exit.i.i
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.je = getelementptr inbounds i8, ptr %i.gm, i64 -2
  %i.jf = icmp ugt ptr %.393.i.i, %i.je
  br i1 %i.jf, label %.thread142.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jg = getelementptr inbounds nuw i8, ptr %.393.i.i, i64 1
  %i.jh = load i8, ptr %.393.i.i, align 1, !tbaa !27
  %i.ji = and i8 %i.jh, 31
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store i16 0, ptr %i.gd, align 4, !tbaa !25
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 4102
  store i16 0, ptr %i.jk, align 2, !tbaa !26
  store i16 0, ptr %i.jj, align 8, !tbaa !22
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 4106
  store i8 %i.ji, ptr %i.jl, align 2, !tbaa !19
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4107
  store i8 0, ptr %i.jm, align 1, !tbaa !21
  br label %FSEv05_buildDTable_raw.exit123.i.i

FSEv05_buildDTable_raw.exit123.loopexit.i.i:      ; preds = %FSEv05_buildDTable_raw.exit.i.i
  store i32 5, ptr %i.c, align 4, !tbaa !23
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store i16 5, ptr %i.gd, align 4, !tbaa !25
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 4102
  store i16 1, ptr %i.jo, align 2, !tbaa !26
  store i16 0, ptr %i.jn, align 8, !tbaa !22
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 4106
  store i8 0, ptr %i.jp, align 2, !tbaa !19
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 4107
  store i8 5, ptr %i.jq, align 1, !tbaa !21
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 4108
  store i16 0, ptr %i.jr, align 4, !tbaa !22
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 4110
  store i8 1, ptr %i.js, align 2, !tbaa !19
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 4111
  store i8 5, ptr %i.jt, align 1, !tbaa !21
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i16 0, ptr %i.ju, align 8, !tbaa !22
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4114
  store i8 2, ptr %i.jv, align 2, !tbaa !19
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 4115
  store i8 5, ptr %i.jw, align 1, !tbaa !21
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 4116
  store i16 0, ptr %i.jx, align 4, !tbaa !22
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4118
  store i8 3, ptr %i.jy, align 2, !tbaa !19
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 4119
  store i8 5, ptr %i.jz, align 1, !tbaa !21
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 4120
  store i16 0, ptr %i.ka, align 8, !tbaa !22
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 4122
  store i8 4, ptr %i.kb, align 2, !tbaa !19
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 4123
  store i8 5, ptr %i.kc, align 1, !tbaa !21
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 4124
  store i16 0, ptr %i.kd, align 4, !tbaa !22
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 4126
  store i8 5, ptr %i.ke, align 2, !tbaa !19
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 4127
  store i8 5, ptr %i.kf, align 1, !tbaa !21
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 4128
  store i16 0, ptr %i.kg, align 8, !tbaa !22
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 4130
  store i8 6, ptr %i.kh, align 2, !tbaa !19
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 4131
  store i8 5, ptr %i.ki, align 1, !tbaa !21
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4132
  store i16 0, ptr %i.kj, align 4, !tbaa !22
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4134
  store i8 7, ptr %i.kk, align 2, !tbaa !19
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 4135
  store i8 5, ptr %i.kl, align 1, !tbaa !21
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 4136
  store i16 0, ptr %i.km, align 8, !tbaa !22
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 4138
  store i8 8, ptr %i.kn, align 2, !tbaa !19
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 4139
  store i8 5, ptr %i.ko, align 1, !tbaa !21
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 4140
  store i16 0, ptr %i.kp, align 4, !tbaa !22
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 4142
  store i8 9, ptr %i.kq, align 2, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4143
  store i8 5, ptr %i.kr, align 1, !tbaa !21
end_hunk_0
begin_hunk_1_@ZSTDv05_decompressBlock_internal:bb.a
  %min.iters.check = icmp ult i64 %i.aco, 8
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %.077.i.i, i64 %i.aaa)
  %i.acp = add i64 %i.ux, %umax
  %umax107 = tail call i64 @llvm.umax.i64(i64 %i.uw, i64 %i.acp)
  %i.acq = sub i64 %.4.i.i108, %umax107
  %diff.check = icmp ugt i64 %i.acq, -32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check111 = icmp ult i64 %i.aco, 32
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.acr = and i64 %i.aco, 24
  %n.vec = and i64 %i.aco, -32                    ; 5 uses
  %i.acs = getelementptr i8, ptr %.4.i.i, i64 %n.vec
  %i.act = getelementptr i8, ptr %.395.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.4.i.i, i64 %index ; 2 uses
  %next.gep112 = getelementptr i8, ptr %.395.i.i, i64 %index ; 2 uses
  %i.acu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load113 = load <16 x i8>, ptr %i.acu, align 1, !tbaa !27
  %i.acv = getelementptr i8, ptr %next.gep112, i64 16
  store <16 x i8> %wide.load, ptr %next.gep112, align 1, !tbaa !27
  store <16 x i8> %wide.load113, ptr %i.acv, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.acw = icmp eq i64 %index.next, %n.vec
  br i1 %i.acw, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aco, %n.vec
  br i1 %cmp.n, label %ZSTDv05_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.acr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.aco, -8                  ; 4 uses
  %i.acx = getelementptr i8, ptr %.4.i.i, i64 %n.vec115
  %i.acy = getelementptr i8, ptr %.395.i.i, i64 %n.vec115
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 3 uses
  %next.gep117 = getelementptr i8, ptr %.4.i.i, i64 %index116
  %next.gep118 = getelementptr i8, ptr %.395.i.i, i64 %index116
  %wide.load119 = load <8 x i8>, ptr %next.gep117, align 1, !tbaa !27
  store <8 x i8> %wide.load119, ptr %next.gep118, align 1, !tbaa !27
  %index.next120 = add nuw i64 %index116, 8       ; 2 uses
  %i.acz = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.acz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n121 = icmp eq i64 %i.aco, %n.vec115
  br i1 %cmp.n121, label %ZSTDv05_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5127.i.i.ph = phi ptr [ %.4.i.i, %iter.check ], [ %.4.i.i, %vector.memcheck ], [ %i.acs, %vec.epilog.iter.check ], [ %i.acx, %vec.epilog.middle.block ]
  %.496126.i.i.ph = phi ptr [ %.395.i.i, %iter.check ], [ %.395.i.i, %vector.memcheck ], [ %i.act, %vec.epilog.iter.check ], [ %i.acy, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.5127.i.i = phi ptr [ %i.ada, %.lr.ph128.i.i ], [ %.5127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.496126.i.i = phi ptr [ %i.adc, %.lr.ph128.i.i ], [ %.496126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.5127.i.i, i64 1
  %i.adb = load i8, ptr %.5127.i.i, align 1, !tbaa !27
  %i.adc = getelementptr inbounds nuw i8, ptr %.496126.i.i, i64 1 ; 2 uses
  store i8 %i.adb, ptr %.496126.i.i, align 1, !tbaa !27
  %i.add = icmp ult ptr %i.adc, %i.zj
  br i1 %i.add, label %.lr.ph128.i.i, label %ZSTDv05_execSequence.exit.i, !llvm.loop !120

bb.dn:                                            ; preds = %bb.dk
  %i.ade = getelementptr i8, ptr %.294.i.i, i64 %i.abd
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %bb.dn
  %.09.i115.i.i = phi ptr [ %i.aca, %bb.dn ], [ %i.adg, %bb.do ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.abz, %bb.dn ], [ %i.adf, %bb.do ] ; 2 uses
  %.09.val.i117.i.i = load i64, ptr %.09.i115.i.i, align 1
  store i64 %.09.val.i117.i.i, ptr %.0.i116.i.i, align 1
  %i.adf = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8
  %i.adh = icmp ult ptr %i.adf, %i.ade
  br i1 %i.adh, label %bb.do, label %ZSTDv05_execSequence.exit.i, !llvm.loop !114

ZSTDv05_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %bb.do, %.lr.ph128.i.i, %middle.block139, %vec.epilog.middle.block155, %middle.block, %vec.epilog.middle.block, %bb.dm, %bb.dg
  %i.adi = icmp ugt i32 %i.yd, 64
  br i1 %i.adi, label %BITv05_reloadDStream.exit.thread.i, label %bb.ch

.critedge.i:                                      ; preds = %BITv05_reloadDStream.exit.i, %BITv05_reloadDStream.exit.thread.i, %bb.bk, %.thread.i18
  %.2134.i = phi ptr [ %i.fx, %bb.bk ], [ %i.zk, %BITv05_reloadDStream.exit.thread.i ], [ %i.fx, %.thread.i18 ], [ %.0132207.i, %BITv05_reloadDStream.exit.i ] ; 4 uses
  %.3.i = phi ptr [ %1, %bb.bk ], [ %i.zj, %BITv05_reloadDStream.exit.thread.i ], [ %1, %.thread.i18 ], [ %.059218.i, %BITv05_reloadDStream.exit.i ] ; 3 uses
  %i.adj = ptrtoint ptr %i.gb to i64
  %i.adk = ptrtoint ptr %.2134.i to i64
  %i.adl = sub i64 %i.adj, %i.adk                 ; 2 uses
  %i.adm = icmp ugt ptr %.2134.i, %i.gb
  br i1 %i.adm, label %ZSTDv05_decompressSequences.exit, label %bb.dp

bb.dp:                                            ; preds = %.critedge.i
  %i.adn = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.adl ; 2 uses
  %i.ado = icmp ugt ptr %i.adn, %i.ga
  br i1 %i.ado, label %ZSTDv05_decompressSequences.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.not75.i = icmp eq ptr %i.gb, %.2134.i
  br i1 %.not75.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.3.i, ptr align 1 %.2134.i, i64 %i.adl, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.5.ph.i = phi ptr [ %.3.i, %bb.dq ], [ %i.adn, %bb.dr ]
  %i.adp = ptrtoint ptr %.5.ph.i to i64
  %i.adq = ptrtoint ptr %1 to i64
  %i.adr = sub i64 %i.adp, %i.adq
  br label %ZSTDv05_decompressSequences.exit

ZSTDv05_decompressSequences.exit:                 ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %ZSTDv05_decodeSequence.exit.i, %.thread.i, %bb.ab, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.o, %bb.j, %bb.b, %bb.v, %bb.ds, %bb.dp, %.critedge.i, %BITv05_reloadDStream.exit.thread.i, %FSEv05_initDState.exit92.i, %FSEv05_initDState.exit84.i, %BITv05_initDStream.exit.i, %bb.bv, %bb.bn, %bb.bl, %ZSTDv05_decodeSeqHeaders.exit.i, %ZSTDv05_decodeSeqHeaders.exit.thread.i, %bb.a
  %.0 = phi i64 [ -20, %bb.d ], [ -72, %bb.a ], [ -20, %BITv05_reloadDStream.exit.thread.i ], [ %i.adr, %bb.ds ], [ -20, %.critedge.i ], [ %i.pc, %ZSTDv05_decodeSeqHeaders.exit.i ], [ %.7101.i.ph.i, %ZSTDv05_decodeSeqHeaders.exit.thread.i ], [ -70, %bb.dp ], [ -20, %BITv05_initDStream.exit.i ], [ -20, %bb.bl ], [ -20, %bb.bv ], [ -20, %bb.bn ], [ -20, %FSEv05_initDState.exit84.i ], [ -20, %FSEv05_initDState.exit92.i ], [ -20, %bb.o ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.n ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.de ], [ -20, %bb.dd ], [ -70, %bb.dc ], [ -20, %bb.db ], [ -70, %ZSTDv05_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompress_usingPreparedDCtx(ptr noundef initializes((0, 26763)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26763) %0, ptr noundef nonnull readonly align 8 dereferenceable(26763) %1, i64 26763, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.b, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.h, ptr %i.i, align 8, !tbaa !53
  store ptr %2, ptr %i.d, align 8, !tbaa !52
  store ptr %2, ptr %i.a, align 8, !tbaa !50
  br label %ZSTDv05_checkContinuity.exit

ZSTDv05_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 8
  br i1 %i.c, label %.thread90, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %3, align 1, !tbaa !23
  %.not.i = icmp eq i32 %.val, -47205083
  br i1 %.not.i, label %bb.c, label %.thread90

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26680
  store i64 5, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !27
  %i.h = and i8 %i.g, 15
  %narrow.i.i = add nuw nsw i8 %i.h, 11
  %i.i = zext nneg i8 %narrow.i.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26696
  store i32 %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = load i8, ptr %i.f, align 1, !tbaa !27
  %.not7.i.i = icmp ult i8 %i.k, 16
  br i1 %.not7.i.i, label %.lr.ph, label %.thread90

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.m = add i64 %4, -5
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = ptrtoint ptr %i.b to i64                 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.160125 = phi i64 [ %i.m, %.lr.ph ], [ %i.an, %bb.l ] ; 2 uses
  %.061124 = phi ptr [ %1, %.lr.ph ], [ %i.al, %bb.l ] ; 7 uses
  %.164123 = phi ptr [ %i.l, %.lr.ph ], [ %i.am, %bb.l ] ; 5 uses
  %i.p = load i8, ptr %.164123, align 1, !tbaa !27
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 6                         ; 2 uses
  switch i32 %i.r, label %bb.e [
    i32 3, label %.thread104
    i32 2, label %bb.f
  ]

.thread104:                                       ; preds = %bb.d
  %.not76 = icmp eq i64 %.160125, 3
  br i1 %.not76, label %ZSTDv05_copyRawBlock.exit.thread, label %.thread90

bb.e:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i32 %i.q, 16
  %i.t = and i32 %i.s, 458752
  %5 = getelementptr inbounds nuw i8, ptr %.164123, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !27
  %7 = zext i8 %6 to i32
  %8 = or disjoint i32 %i.t, %7
  %i.u = getelementptr inbounds nuw i8, ptr %.164123, i64 1
  %9 = load i8, ptr %i.u, align 1, !tbaa !27
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %i.v = or disjoint i32 %11, %8
  %i.w = zext nneg i32 %i.v to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.i81.ph = phi i64 [ %i.w, %bb.e ], [ 1, %bb.d ] ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.164123, i64 3 ; 2 uses
  %i.y = add i64 %.160125, -3                     ; 2 uses
  %i.z = icmp ugt i64 %.0.i81.ph, %i.y
  br i1 %i.z, label %.thread90, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.r, label %.thread90 [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %.061124 to i64
  %i.ab = sub i64 %i.o, %i.aa
  %i.ac = tail call fastcc i64 @ZSTDv05_decompressBlock_internal(ptr noundef %0, ptr noundef %.061124, i64 noundef %i.ab, ptr noundef nonnull %i.x, i64 noundef %.0.i81.ph)
  br label %ZSTDv05_copyRawBlock.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = ptrtoint ptr %.061124 to i64
  %i.ae = sub i64 %i.o, %i.ad
  %i.af = icmp eq ptr %.061124, null
  %i.ag = icmp ugt i64 %.0.i81.ph, %i.ae
  %or.cond.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i, label %ZSTDv05_copyRawBlock.exit.thread139, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.061124, ptr nonnull readonly align 1 %i.x, i64 %.0.i81.ph, i1 false)
  br label %ZSTDv05_copyRawBlock.exit

ZSTDv05_copyRawBlock.exit:                        ; preds = %bb.j, %bb.h
  %.0 = phi i64 [ %i.ac, %bb.h ], [ %.0.i81.ph, %bb.j ] ; 3 uses
  %i.ah = icmp eq i64 %.0.i81.ph, 0
  br i1 %i.ah, label %ZSTDv05_copyRawBlock.exit.thread, label %bb.k

ZSTDv05_copyRawBlock.exit.thread139:              ; preds = %bb.i
  %i.ai = icmp eq i64 %.0.i81.ph, 0
  br i1 %i.ai, label %ZSTDv05_copyRawBlock.exit.thread, label %.thread90

bb.k:                                             ; preds = %ZSTDv05_copyRawBlock.exit
  %i.aj = icmp ult i64 %.0, -119
  br i1 %i.aj, label %bb.l, label %.thread90

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.164123, i64 3
  %i.al = getelementptr inbounds nuw i8, ptr %.061124, i64 %.0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.0.i81.ph ; 2 uses
  %i.an = sub i64 %i.y, %.0.i81.ph
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.n, %i.ao
  %i.aq = icmp ult i64 %i.ap, 3
  br i1 %i.aq, label %.thread90, label %bb.d

ZSTDv05_copyRawBlock.exit.thread:                 ; preds = %ZSTDv05_copyRawBlock.exit, %.thread104, %ZSTDv05_copyRawBlock.exit.thread139
  %i.ar = ptrtoint ptr %.061124 to i64
  %i.as = ptrtoint ptr %1 to i64
  %i.at = sub i64 %i.ar, %i.as
  br label %.thread90

.thread90:                                        ; preds = %bb.f, %bb.g, %bb.k, %bb.l, %ZSTDv05_copyRawBlock.exit.thread139, %.thread104, %bb.b, %bb.a, %bb.c, %ZSTDv05_copyRawBlock.exit.thread
  %.3 = phi i64 [ -72, %bb.a ], [ %i.at, %ZSTDv05_copyRawBlock.exit.thread ], [ -14, %bb.c ], [ -10, %bb.b ], [ -70, %ZSTDv05_copyRawBlock.exit.thread139 ], [ -72, %.thread104 ], [ %.0, %bb.k ], [ -1, %bb.g ], [ -72, %bb.f ], [ -72, %bb.l ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompress_usingDict(ptr noundef initializes((10252, 10256), (26640, 26680), (26732, 26740)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @ZSTDv05_decompressBegin_usingDict(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.c
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.c, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %.neg.i = sub i64 %i.h, %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.i, ptr %i.j, align 8, !tbaa !53
  store ptr %1, ptr %i.e, align 8, !tbaa !52
  store ptr %1, ptr %i.b, align 8, !tbaa !50
  br label %ZSTDv05_checkContinuity.exit

ZSTDv05_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -30, 1) i64 @ZSTDv05_decompressBegin_usingDict(ptr nofree noundef captures(none) initializes((10252, 10256), (26640, 26680), (26732, 26740)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [32 x i16], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [128 x i16], align 16             ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [64 x i16], align 16              ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26672
  store i64 5, ptr %i.k, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 26732
  store i32 0, ptr %i.l, align 4, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10252 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 26736 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !48
  %i.p = icmp ne ptr %1, null
  %i.q = icmp ne i64 %2, 0
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.b, label %ZSTDv05_decompress_insertDictionary.exit.thread

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %1, align 1, !tbaa !23
  %.not.i = icmp eq i32 %.val.i, -332356555
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26648
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %1, ptr %i.s, align 8, !tbaa !53
  store ptr %1, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.t, ptr %i.m, align 8, !tbaa !50
  br label %ZSTDv05_decompress_insertDictionary.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.v = add i64 %2, -4                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 31, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 127, ptr %i.f, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 63, ptr %i.i, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.w = tail call i64 @HUFv05_readDTableX4(ptr noundef nonnull %i.n, ptr noundef nonnull %i.u, i64 noundef range(i64 -3, -4) %i.v) ; 4 uses
  %i.x = icmp ult i64 %i.w, -119
  br i1 %i.x, label %bb.e, label %ZSTDv05_loadEntropy.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 2 uses
  %i.z = sub i64 %i.v, %i.w                       ; 2 uses
  %i.aa = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.y, i64 noundef %i.z) ; 4 uses
  %i.ab = icmp ult i64 %i.aa, -119
  br i1 %i.ab, label %bb.f, label %ZSTDv05_loadEntropy.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !23  ; 5 uses
  %i.ad = icmp ugt i32 %i.ac, 9
  br i1 %i.ad, label %ZSTDv05_loadEntropy.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4100
  %i.af = load i32, ptr %i.c, align 4, !tbaa !23  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 8 uses
  %i.ah = shl nuw nsw i32 1, %i.ac                ; 5 uses
  %i.ai = add nsw i32 %i.ah, -1                   ; 5 uses
  %i.aj = lshr i32 %i.ah, 1
  %i.ak = lshr i32 %i.ah, 3
  %i.al = add nuw nsw i32 %i.ak, 3
  %i.am = add nuw nsw i32 %i.al, %i.aj            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.an = icmp ugt i32 %i.af, 255
  br i1 %i.an, label %FSEv05_buildDTable.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i8 0, i64 %i.ap, i1 false)
  %sext.i.i.i = shl nuw nsw i32 32768, %i.ac
  %i.aq = lshr exact i32 %sext.i.i.i, 16          ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.ar = icmp eq i32 %i.af, 0
  br i1 %i.ar, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.ap, 510
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.1, %bb.o ] ; 5 uses
end_hunk_1
begin_hunk_2_@ZSTDv05_decompressBegin_usingDict:bb.a
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %i.cq, align 2, !tbaa !22
  %indvars.iv.next98.i.i.i = add nuw nsw i64 %indvars.iv97.i.i.i, 1 ; 2 uses
  %exitcond101.not.i.i.i = icmp eq i64 %indvars.iv.next98.i.i.i, %wide.trip.count100.i.i.i
  br i1 %exitcond101.not.i.i.i, label %bb.y, label %.preheader.i.i.i, !llvm.loop !4

FSEv05_buildDTable.exit.thread.i.i:               ; preds = %bb.x, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %ZSTDv05_loadEntropy.exit.thread.i

bb.y:                                             ; preds = %.preheader.i.i.i
  store i16 %i.cp, ptr %i.ae, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4102
  store i16 %.2.i.i.i.lcssa, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  %i.di = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.dj = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.dh, i64 noundef %i.di) ; 4 uses
  %i.dk = icmp ult i64 %i.dj, -119
  br i1 %i.dk, label %bb.z, label %ZSTDv05_loadEntropy.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.dl = load i32, ptr %i.g, align 4, !tbaa !23  ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, 10
  br i1 %i.dm, label %ZSTDv05_loadEntropy.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 6152
  %i.do = load i32, ptr %i.f, align 4, !tbaa !23
  %i.dp = call i64 @FSEv05_buildDTable(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.e, i32 noundef %i.do, i32 noundef %i.dl)
  %i.dq = icmp ult i64 %i.dp, -119
  br i1 %i.dq, label %bb.ab, label %ZSTDv05_loadEntropy.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dj
  %i.ds = sub i64 %i.di, %i.dj
  %i.dt = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dr, i64 noundef %i.ds) ; 2 uses
  %i.du = load i32, ptr %i.j, align 4, !tbaa !23  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 11
  %i.dw = icmp ult i64 %i.dt, -119
  %or.cond.i.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond.i.i, label %bb.ac, label %ZSTDv05_loadEntropy.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.dx = load i32, ptr %i.i, align 4, !tbaa !23
  %i.dy = call i64 @FSEv05_buildDTable(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %i.dx, i32 noundef %i.du)
  %i.dz = icmp ult i64 %i.dy, -119
  br i1 %i.dz, label %ZSTDv05_loadEntropy.exit.i, label %ZSTDv05_loadEntropy.exit.thread.i

ZSTDv05_loadEntropy.exit.thread.i:                ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %FSEv05_buildDTable.exit.thread.i.i, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %ZSTDv05_decompress_insertDictionary.exit.thread

ZSTDv05_loadEntropy.exit.i:                       ; preds = %bb.ac
  store i32 1, ptr %i.o, align 8, !tbaa !48
  %i.ea = add i64 %i.aa, %i.w
  %i.eb = add i64 %i.ea, %i.dj
  %i.ec = add i64 %i.eb, %i.dt                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ed = icmp ult i64 %i.ec, -119
  br i1 %i.ed, label %bb.ad, label %ZSTDv05_decompress_insertDictionary.exit.thread

bb.ad:                                            ; preds = %ZSTDv05_loadEntropy.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ec ; 2 uses
  %i.ef = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !52
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %.neg.i19.i = sub i64 %i.ek, %i.ej
  %i.el = getelementptr inbounds i8, ptr %i.ee, i64 %.neg.i19.i
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.el, ptr %i.em, align 8, !tbaa !53
  store ptr %i.ee, ptr %i.eh, align 8, !tbaa !52
  %i.en = getelementptr i8, ptr %1, i64 %2
  store ptr %i.en, ptr %i.m, align 8, !tbaa !50
  br label %ZSTDv05_decompress_insertDictionary.exit.thread

ZSTDv05_decompress_insertDictionary.exit.thread:  ; preds = %ZSTDv05_loadEntropy.exit.i, %ZSTDv05_loadEntropy.exit.thread.i, %bb.ad, %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.ad ], [ 0, %bb.a ], [ 0, %bb.c ], [ -30, %ZSTDv05_loadEntropy.exit.thread.i ], [ -30, %ZSTDv05_loadEntropy.exit.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompressDCtx(ptr noundef initializes((10252, 10256), (26640, 26680), (26732, 26740)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26672
  store i64 5, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26732
  store i32 0, ptr %i.b, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26736
  store i32 0, ptr %i.e, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %ZSTDv05_decompress_usingDict.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26648
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %1, ptr %i.g, align 8, !tbaa !53
  store ptr %1, ptr %i.f, align 8, !tbaa !52
  store ptr %1, ptr %i.c, align 8, !tbaa !50
  br label %ZSTDv05_decompress_usingDict.exit

ZSTDv05_decompress_usingDict.exit:                ; preds = %bb.a, %bb.b
  %i.h = tail call fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(157848) ptr @malloc(i64 noundef 157848) #26 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ZSTDv05_createDCtx.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 26672
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 26732
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 26640 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 10252
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 26736
  store i64 5, ptr %i.c, align 8, !tbaa !46
  store i32 0, ptr %i.d, align 4, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.f, align 4, !tbaa !23
  store i32 0, ptr %i.g, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %ZSTDv05_decompressDCtx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 26648
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 26656
  store ptr %0, ptr %i.i, align 8, !tbaa !53
  store ptr %0, ptr %i.h, align 8, !tbaa !52
  store ptr %0, ptr %i.e, align 8, !tbaa !50
  br label %ZSTDv05_decompressDCtx.exit

ZSTDv05_decompressDCtx.exit:                      ; preds = %bb.b, %bb.c
  %i.j = tail call fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  tail call void @free(ptr noundef nonnull %i.a) #27
  br label %ZSTDv05_createDCtx.exit.thread

ZSTDv05_createDCtx.exit.thread:                   ; preds = %bb.a, %ZSTDv05_decompressDCtx.exit
  %.0 = phi i64 [ %i.j, %ZSTDv05_decompressDCtx.exit ], [ -64, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTDv05_findFrameSizeInfoLegacy(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %1, 5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -72, ptr %2, align 8, !tbaa !29
  br label %.thread50

bb.c:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 1, !tbaa !23
  %.not = icmp eq i32 %.val, -47205083
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -10, ptr %2, align 8, !tbaa !29
  br label %.thread50

bb.e:                                             ; preds = %bb.c
  %i.b = add i64 %1, -5                           ; 2 uses
  %i.c = icmp ult i64 %i.b, 3
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread88
  %.03373 = phi i64 [ %i.v, %.thread88 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03472 = phi i64 [ %i.u, %.thread88 ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.03671 = phi ptr [ %i.t, %.thread88 ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = load i8, ptr %.03671, align 1, !tbaa !27
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = lshr i32 %i.f, 6
  switch i32 %i.g, label %bb.f [
    i32 3, label %.loopexit
    i32 2, label %.thread
  ]

._crit_edge:                                      ; preds = %.thread88, %bb.e
  store i64 -72, ptr %2, align 8, !tbaa !29
  br label %.thread50

bb.f:                                             ; preds = %.lr.ph
  %i.h = shl nuw nsw i32 %i.f, 16
  %i.i = and i32 %i.h, 458752
  %4 = getelementptr inbounds nuw i8, ptr %.03671, i64 2
  %5 = load i8, ptr %4, align 1, !tbaa !27
  %6 = zext i8 %5 to i32
  %7 = or disjoint i32 %i.i, %6
  %i.j = getelementptr inbounds nuw i8, ptr %.03671, i64 1
  %8 = load i8, ptr %i.j, align 1, !tbaa !27
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %i.k = or disjoint i32 %10, %7                  ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = add i64 %.03472, -3                      ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  br i1 %i.n, label %bb.g, label %bb.h

.thread:                                          ; preds = %.lr.ph
  %i.o = add i64 %.03472, -3                      ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %.thread88

bb.g:                                             ; preds = %.thread, %bb.f
  store i64 -72, ptr %2, align 8, !tbaa !29
  br label %.thread50

bb.h:                                             ; preds = %bb.f
  %i.q = icmp eq i32 %i.k, 0
  br i1 %i.q, label %.loopexit, label %.thread88

.thread88:                                        ; preds = %.thread, %bb.h
  %.0.i.ph8790 = phi i64 [ %i.l, %bb.h ], [ 1, %.thread ] ; 2 uses
  %i.r = phi i64 [ %i.m, %bb.h ], [ %i.o, %.thread ]
  %i.s = getelementptr inbounds nuw i8, ptr %.03671, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.0.i.ph8790
  %i.u = sub nuw i64 %i.r, %.0.i.ph8790           ; 2 uses
  %i.v = add i64 %.03373, 1
  %i.w = icmp ult i64 %i.u, 3
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.h, %.lr.ph
  %.137.ph = getelementptr inbounds nuw i8, ptr %.03671, i64 3
  %i.x = ptrtoint ptr %.137.ph to i64
  %i.y = ptrtoint ptr %0 to i64
  %i.z = sub i64 %i.x, %i.y
  store i64 %i.z, ptr %2, align 8, !tbaa !29
  %i.aa = shl i64 %.03373, 17
  br label %.thread50

.thread50:                                        ; preds = %bb.g, %._crit_edge, %.loopexit, %bb.d, %bb.b
  %.sink = phi i64 [ -2, %bb.g ], [ -2, %._crit_edge ], [ %i.aa, %.loopexit ], [ -2, %bb.d ], [ -2, %bb.b ]
  store i64 %.sink, ptr %3, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTDv05_nextSrcSizeToDecompress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26672
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26672 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %.not = icmp eq i64 %4, %i.b
  br i1 %.not, label %bb.b, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.d
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.d, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %.neg.i = sub i64 %i.i, %i.h
  %i.j = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.j, ptr %i.k, align 8, !tbaa !53
  store ptr %1, ptr %i.f, align 8, !tbaa !52
  store ptr %1, ptr %i.c, align 8, !tbaa !50
  br label %ZSTDv05_checkContinuity.exit

ZSTDv05_checkContinuity.exit:                     ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 26732 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47
  switch i32 %i.m, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67 [
    i32 0, label %bb.d
    i32 1, label %bb.g
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %ZSTDv05_checkContinuity.exit
  %.not53 = icmp eq i64 %4, 5
  br i1 %.not53, label %bb.e, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

bb.e:                                             ; preds = %bb.d
  %.val = load i32, ptr %3, align 1, !tbaa !23
  %.not.i56 = icmp eq i32 %.val, -47205083
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 26680 ; 2 uses
  br i1 %.not.i56, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 -10, ptr %i.n, align 8, !tbaa !54
  br label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

.thread:                                          ; preds = %bb.e
  store i64 5, ptr %i.n, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 157840
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.o, ptr noundef nonnull align 1 dereferenceable(5) %3, i64 5, i1 false)
  store i64 0, ptr %i.a, align 8, !tbaa !46
  br label %bb.h

bb.g:                                             ; preds = %ZSTDv05_checkContinuity.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 26680
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !54
  %i.p = icmp ult i64 %.pre, 5
  br i1 %i.p, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 157840
  %.val.i.i = load i32, ptr %i.q, align 8, !tbaa !23
  %.not.i.i = icmp eq i32 %.val.i.i, -47205083
  br i1 %.not.i.i, label %ZSTDv05_decodeFrameHeader_Part2.exit, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

ZSTDv05_decodeFrameHeader_Part2.exit:             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 157844
  %i.t = load i8, ptr %i.s, align 4, !tbaa !27    ; 2 uses
  %i.u = and i8 %i.t, 15
  %narrow.i.i = add nuw nsw i8 %i.u, 11
  %i.v = zext nneg i8 %narrow.i.i to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 26696
  store i32 %i.v, ptr %i.w, align 8, !tbaa !49
  %.not7.i.i = icmp ult i8 %i.t, 16
  br i1 %.not7.i.i, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

ZSTDv05_decodeFrameHeader_Part2.exit.thread:      ; preds = %bb.g, %ZSTDv05_decodeFrameHeader_Part2.exit
  store i64 3, ptr %i.a, align 8, !tbaa !46
  store i32 2, ptr %i.l, align 4, !tbaa !47
  br label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

bb.i:                                             ; preds = %ZSTDv05_checkContinuity.exit
  %i.x = load i8, ptr %3, align 1, !tbaa !27
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = lshr i32 %i.y, 6                         ; 2 uses
  switch i32 %i.z, label %bb.j [
    i32 3, label %ZSTDv05_getcBlockSize.exit
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = shl nuw nsw i32 %i.y, 16
  %i.ab = and i32 %i.aa, 458752
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !27
  %7 = zext i8 %6 to i32
  %8 = or disjoint i32 %i.ab, %7
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 1
  %9 = load i8, ptr %i.ac, align 1, !tbaa !27
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %i.ad = or disjoint i32 %11, %8
  %i.ae = zext nneg i32 %i.ad to i64
  br label %bb.k

ZSTDv05_getcBlockSize.exit:                       ; preds = %bb.i
  store i64 0, ptr %i.a, align 8, !tbaa !46
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0.i59.ph = phi i64 [ %i.ae, %bb.j ], [ 1, %bb.i ]
  store i64 %.0.i59.ph, ptr %i.a, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 26728
  store i32 %i.z, ptr %i.af, align 8, !tbaa !126
  br label %bb.l

bb.l:                                             ; preds = %ZSTDv05_getcBlockSize.exit, %bb.k
  %storemerge = phi i32 [ 3, %bb.k ], [ 0, %ZSTDv05_getcBlockSize.exit ]
  store i32 %storemerge, ptr %i.l, align 4, !tbaa !47
  br label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

bb.m:                                             ; preds = %ZSTDv05_checkContinuity.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 26728
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !126
  switch i32 %i.ah, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67 [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 3, label %ZSTDv05_copyRawBlock.exit.thread
  ]

ZSTDv05_copyRawBlock.exit.thread:                 ; preds = %bb.m
  store i32 2, ptr %i.l, align 4, !tbaa !47
  store i64 3, ptr %i.a, align 8, !tbaa !46
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call fastcc i64 @ZSTDv05_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTDv05_copyRawBlock.exit

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq ptr %1, null
  %i.ak = icmp ugt i64 %4, %2
  %or.cond.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i, label %ZSTDv05_copyRawBlock.exit.thread75, label %bb.p

ZSTDv05_copyRawBlock.exit.thread75:               ; preds = %bb.o
  store i32 2, ptr %i.l, align 4, !tbaa !47
  store i64 3, ptr %i.a, align 8, !tbaa !46
  br label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %ZSTDv05_copyRawBlock.exit

ZSTDv05_copyRawBlock.exit:                        ; preds = %bb.p, %bb.n
  %.0 = phi i64 [ %i.ai, %bb.n ], [ %4, %bb.p ]   ; 3 uses
  store i32 2, ptr %i.l, align 4, !tbaa !47
  store i64 3, ptr %i.a, align 8, !tbaa !46
  %i.al = icmp ult i64 %.0, -119
  br i1 %i.al, label %bb.q, label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

bb.q:                                             ; preds = %ZSTDv05_copyRawBlock.exit.thread, %ZSTDv05_copyRawBlock.exit
  %.074 = phi i64 [ 0, %ZSTDv05_copyRawBlock.exit.thread ], [ %.0, %ZSTDv05_copyRawBlock.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.074
  store ptr %i.am, ptr %i.c, align 8, !tbaa !50
  br label %ZSTDv05_decodeFrameHeader_Part2.exit.thread67

ZSTDv05_decodeFrameHeader_Part2.exit.thread67:    ; preds = %bb.h, %ZSTDv05_copyRawBlock.exit.thread75, %ZSTDv05_checkContinuity.exit, %bb.q, %bb.m, %ZSTDv05_copyRawBlock.exit, %ZSTDv05_decodeFrameHeader_Part2.exit.thread, %ZSTDv05_decodeFrameHeader_Part2.exit, %bb.d, %bb.a, %bb.l, %bb.f
  %.3 = phi i64 [ -14, %ZSTDv05_decodeFrameHeader_Part2.exit ], [ %.0, %ZSTDv05_copyRawBlock.exit ], [ -72, %bb.a ], [ -10, %bb.f ], [ -72, %bb.d ], [ -1, %ZSTDv05_checkContinuity.exit ], [ 0, %bb.l ], [ 0, %ZSTDv05_decodeFrameHeader_Part2.exit.thread ], [ %.074, %bb.q ], [ -1, %bb.m ], [ -70, %ZSTDv05_copyRawBlock.exit.thread75 ], [ -10, %bb.h ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ZBUFFv05_createDCtx() local_unnamed_addr #15 {
bb.a:
  %calloc = tail call dereferenceable_or_null(128) ptr @calloc(i64 1, i64 128) ; 4 uses
  %i.a = icmp eq ptr %calloc, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(157848) ptr @malloc(i64 noundef 157848) #26 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ZSTDv05_createDCtx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 26672
  store i64 5, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 26732
  store i32 0, ptr %i.e, align 4, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 26640
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 26736
  store i32 0, ptr %i.h, align 8, !tbaa !48
  br label %ZSTDv05_createDCtx.exit

ZSTDv05_createDCtx.exit:                          ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %calloc, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %calloc, i64 112
  store i32 0, ptr %i.i, align 8, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ZSTDv05_createDCtx.exit
  ret ptr %calloc
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i64 @ZBUFFv05_freeDCtx(ptr noundef captures(address_is_null) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.d) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.f) #27
  tail call void @free(ptr noundef nonnull %0) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -30, 1) i64 @ZBUFFv05_decompressInitDictionary(ptr nofree noundef captures(none) initializes((64, 72), (88, 116)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.c, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !57
  %i.e = tail call i64 @ZSTDv05_decompressBegin_usingDict(ptr noundef %i.d, ptr noundef %1, i64 noundef %2)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -30, 1) i64 @ZBUFFv05_decompressInit(ptr nofree noundef captures(none) initializes((64, 72), (88, 116)) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.c, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !57     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 26672
  store i64 5, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 26732
  store i32 0, ptr %i.f, align 4, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 26640
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 10252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.h, align 4, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 26736
  store i32 0, ptr %i.i, align 8, !tbaa !48
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @ZBUFFv05_decompressContinue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a ; 3 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br label %.thread260.outer

.thread260.outer:                                 ; preds = %.thread260.outer.backedge, %bb.a
  %.0178314.ph = phi ptr [ %1, %bb.a ], [ %i.dk, %.thread260.outer.backedge ] ; 6 uses
  %.0180313.ph = phi ptr [ %3, %bb.a ], [ %.7, %.thread260.outer.backedge ]
  br label %.thread260.outer351

.thread260.outer351:                              ; preds = %.thread260.outer351.backedge, %.thread260.outer
  %.0180313.ph352 = phi ptr [ %.0180313.ph, %.thread260.outer ], [ %.0180313.ph352.be, %.thread260.outer351.backedge ] ; 5 uses
  br label %.thread260

.thread260:                                       ; preds = %.thread260.outer351, %bb.d
  %i.u = load i32, ptr %i.e, align 8, !tbaa !58
end_hunk_2
begin_hunk_3_@ZBUFFv05_decompressContinue:bb.a
  br label %.thread260.outer351, !llvm.loop !127

bb.s:                                             ; preds = %bb.r
  %i.by = load i64, ptr %i.q, align 8, !tbaa !129
  %i.bz = add i64 %i.by, %i.bv
  store i64 %i.bz, ptr %i.r, align 8, !tbaa !128
  store i32 6, ptr %i.e, align 8, !tbaa !58
  br label %.thread260.outer351.backedge

bb.t:                                             ; preds = %bb.p
  %i.ca = icmp eq ptr %.2182, %i.b
  br i1 %i.ca, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 5, ptr %i.e, align 8, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge316, %bb.u
  %i.cb = phi i64 [ %i.bm, %bb.u ], [ %.pre318, %._crit_edge316 ] ; 2 uses
  %.5185 = phi ptr [ %.2182, %bb.u ], [ %.0180313.ph352, %._crit_edge316 ] ; 3 uses
  %i.cc = load i64, ptr %i.o, align 8, !tbaa !61  ; 4 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = load i64, ptr %i.k, align 8, !tbaa !132
  %i.cf = sub i64 %i.ce, %i.cc
  %i.cg = icmp ugt i64 %i.cd, %i.cf
  br i1 %i.cg, label %.thread238, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = ptrtoint ptr %.5185 to i64
  %i.ci = sub i64 %i.p, %i.ch                     ; 2 uses
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.ci) ; 4 uses
  %.not.i225 = icmp eq i64 %i.cj, 0
  br i1 %.not.i225, label %ZBUFFv05_limitCopy.exit226, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr readonly align 1 %.5185, i64 %i.cj, i1 false)
  %.pre319 = load i64, ptr %i.o, align 8, !tbaa !61
  br label %ZBUFFv05_limitCopy.exit226

ZBUFFv05_limitCopy.exit226:                       ; preds = %bb.w, %bb.x
  %i.cm = phi i64 [ %i.cc, %bb.w ], [ %.pre319, %bb.x ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.5185, i64 %i.cj ; 3 uses
  %i.co = add i64 %i.cm, %i.cj
  store i64 %i.co, ptr %i.o, align 8, !tbaa !61
  %i.cp = icmp ult i64 %i.ci, %i.cd
  br i1 %i.cp, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %ZBUFFv05_limitCopy.exit226
  %i.cq = load ptr, ptr %0, align 8, !tbaa !57
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.cs = load i64, ptr %i.q, align 8, !tbaa !129 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i64, ptr %i.m, align 8, !tbaa !133
  %i.cv = sub i64 %i.cu, %i.cs
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.cx = tail call i64 @ZSTDv05_decompressContinue(ptr noundef %i.cq, ptr noundef %i.ct, i64 noundef %i.cv, ptr noundef %i.cw, i64 noundef %i.cb) ; 4 uses
  %i.cy = icmp ult i64 %i.cx, -119
  br i1 %i.cy, label %bb.z, label %.thread238

bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %i.o, align 8, !tbaa !61
  %.not214 = icmp eq i64 %i.cx, 0
  br i1 %.not214, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 4, ptr %i.e, align 8, !tbaa !58
  br label %.thread260.outer351.backedge

bb.ab:                                            ; preds = %bb.z
  %i.cz = load i64, ptr %i.q, align 8, !tbaa !129 ; 2 uses
  %i.da = add i64 %i.cz, %i.cx                    ; 2 uses
  store i64 %i.da, ptr %i.r, align 8, !tbaa !128
  store i32 6, ptr %i.e, align 8, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge320, %bb.ab
  %i.db = phi i64 [ %i.cz, %bb.ab ], [ %.pre322, %._crit_edge320 ] ; 3 uses
  %i.dc = phi i64 [ %i.da, %bb.ab ], [ %.pre321, %._crit_edge320 ]
  %.7 = phi ptr [ %i.cn, %bb.ab ], [ %.0180313.ph352, %._crit_edge320 ] ; 2 uses
  %i.dd = sub i64 %i.dc, %i.db                    ; 2 uses
  %i.de = ptrtoint ptr %.0178314.ph to i64
  %i.df = sub i64 %i.s, %i.de                     ; 2 uses
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dd) ; 4 uses
  %.not.i227 = icmp eq i64 %i.dg, 0
  br i1 %.not.i227, label %ZBUFFv05_limitCopy.exit228, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0178314.ph, ptr readonly align 1 %i.di, i64 %i.dg, i1 false)
  %.pre323 = load i64, ptr %i.q, align 8, !tbaa !129
  br label %ZBUFFv05_limitCopy.exit228

ZBUFFv05_limitCopy.exit228:                       ; preds = %bb.ac, %bb.ad
  %i.dj = phi i64 [ %i.db, %bb.ac ], [ %.pre323, %bb.ad ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0178314.ph, i64 %i.dg ; 2 uses
  %i.dl = add i64 %i.dj, %i.dg                    ; 2 uses
  store i64 %i.dl, ptr %i.q, align 8, !tbaa !129
  %.not282 = icmp ugt i64 %i.dd, %i.df
  br i1 %.not282, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %ZBUFFv05_limitCopy.exit228
  store i32 4, ptr %i.e, align 8, !tbaa !58
  %i.dm = add i64 %i.dl, 131072
  %i.dn = load i64, ptr %i.m, align 8, !tbaa !133
  %i.do = icmp ugt i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.af, label %.thread260.outer.backedge

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %.thread260.outer.backedge

.thread260.outer.backedge:                        ; preds = %bb.af, %bb.ae
  br label %.thread260.outer, !llvm.loop !127

.loopexit:                                        ; preds = %bb.t, %ZBUFFv05_limitCopy.exit226, %ZBUFFv05_limitCopy.exit228, %bb.o
  %.8.ph = phi ptr [ %.2182, %bb.o ], [ %i.b, %bb.t ], [ %i.cn, %ZBUFFv05_limitCopy.exit226 ], [ %.7, %ZBUFFv05_limitCopy.exit228 ]
  %.1179.ph = phi ptr [ %.0178314.ph, %bb.o ], [ %.0178314.ph, %ZBUFFv05_limitCopy.exit226 ], [ %.0178314.ph, %bb.t ], [ %i.dk, %ZBUFFv05_limitCopy.exit228 ]
  %i.dp = ptrtoint ptr %.8.ph to i64
  %i.dq = ptrtoint ptr %3 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %4, align 8, !tbaa !29
  %i.ds = ptrtoint ptr %.1179.ph to i64
  %i.dt = ptrtoint ptr %1 to i64
  %i.du = sub i64 %i.ds, %i.dt
  store i64 %i.du, ptr %2, align 8, !tbaa !29
  %i.dv = load ptr, ptr %0, align 8, !tbaa !57
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 26672
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !46 ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 3
  %i.dz = add i64 %i.dx, 3
  %spec.select = select i1 %i.dy, i64 %i.dz, i64 %i.dx
  %i.ea = load i64, ptr %i.o, align 8, !tbaa !61
  %i.eb = sub i64 %spec.select, %i.ea
  br label %.thread238

.thread238.loopexit:                              ; preds = %.thread260
  br label %.thread238

.thread238:                                       ; preds = %bb.c, %ZSTDv05_getFrameParams.exit, %bb.g, %bb.i, %bb.k, %bb.q, %bb.v, %bb.y, %ZSTDv05_getFrameParams.exit224, %.thread260, %.thread238.loopexit, %.thread247, %.thread, %.loopexit
  %.13 = phi i64 [ -1, %.thread260 ], [ %i.eb, %.loopexit ], [ %i.at, %.thread247 ], [ %i.ag, %.thread ], [ -10, %bb.c ], [ -14, %ZSTDv05_getFrameParams.exit ], [ %i.cx, %bb.y ], [ -10, %bb.g ], [ -64, %bb.i ], [ -20, %bb.v ], [ -14, %ZSTDv05_getFrameParams.exit224 ], [ %i.bv, %bb.q ], [ -64, %bb.k ], [ -62, %.thread238.loopexit ]
  ret i64 %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZBUFFv05_isError(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @ZBUFFv05_getErrorName(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %0, -119
  %i.b = trunc nsw i64 %0 to i32
  %i.c = sub i32 0, %i.b
  %.0.i.i = select i1 %i.a, i32 0, i32 %i.c
  %i.d = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #27
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZBUFFv05_recommendedDInSize() local_unnamed_addr #7 {
bb.a:
  ret i64 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZBUFFv05_recommendedDOutSize() local_unnamed_addr #7 {
bb.a:
  ret i64 131072
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = distinct !{!4, !20}
!5 = distinct !{!5, !20}
!6 = distinct !{!6, !20}
!7 = distinct !{!7, !20}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"short", !12, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"", !16, i64 0, !12, i64 2, !12, i64 3}
!19 = !{!18, !12, i64 2}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!18, !12, i64 3}
!22 = !{!18, !16, i64 0}
!23 = !{!13, !13, i64 0}
!24 = !{!"", !16, i64 0, !16, i64 2}
!25 = !{!24, !16, i64 0}
!26 = !{!24, !16, i64 2}
!27 = !{!12, !12, i64 0}
!28 = !{!"long", !12, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = !{!"any pointer", !12, i64 0}
!34 = !{!"p1 omnipotent char", !33, i64 0}
!35 = !{!"", !28, i64 0, !13, i64 8, !34, i64 16, !34, i64 24}
!36 = !{!35, !34, i64 24}
!37 = !{!35, !34, i64 16}
!38 = !{!35, !28, i64 0}
!39 = !{!35, !13, i64 8}
!40 = !{!"", !12, i64 0, !12, i64 1}
!41 = !{!40, !12, i64 0}
!42 = !{!40, !12, i64 1}
!43 = !{!34, !34, i64 0}
!44 = !{!"", !28, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!45 = !{!"ZSTDv05_DCtx_s", !12, i64 0, !12, i64 4100, !12, i64 6152, !12, i64 10252, !33, i64 26640, !33, i64 26648, !33, i64 26656, !33, i64 26664, !28, i64 26672, !28, i64 26680, !44, i64 26688, !13, i64 26728, !13, i64 26732, !13, i64 26736, !34, i64 26744, !28, i64 26752, !12, i64 26760, !12, i64 157840}
!46 = !{!45, !28, i64 26672}
!47 = !{!45, !13, i64 26732}
!48 = !{!45, !13, i64 26736}
!49 = !{!44, !13, i64 8}
!50 = !{!45, !33, i64 26640}
!51 = !{!45, !33, i64 26664}
!52 = !{!45, !33, i64 26648}
!53 = !{!45, !33, i64 26656}
!54 = !{!45, !28, i64 26680}
!55 = !{!"p1 _ZTS14ZSTDv05_DCtx_s", !33, i64 0}
!56 = !{!"ZBUFFv05_DCtx_s", !55, i64 0, !44, i64 8, !34, i64 48, !28, i64 56, !28, i64 64, !34, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !28, i64 104, !13, i64 112, !12, i64 116}
!57 = !{!56, !55, i64 0}
!58 = !{!56, !13, i64 112}
!59 = !{!56, !34, i64 48}
!60 = !{!56, !34, i64 72}
!61 = !{!56, !28, i64 64}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20, !30, !31}
!68 = distinct !{!68, !20, !30, !31}
!69 = distinct !{!69, !20, !31, !30}
!70 = distinct !{!70, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !20, !30, !31}
!74 = distinct !{!74, !20, !30}
!75 = distinct !{!75, !20}
!76 = !{!71}
!77 = !{!72}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20, !30, !31}
!82 = distinct !{!82, !20, !30, !31}
!83 = distinct !{!83, !20, !31, !30}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20, !30, !31}
!86 = distinct !{!86, !20, !30, !31}
!87 = distinct !{!87, !20, !31, !30}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !105}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20, !30, !31}
!94 = distinct !{!94, !105}
!95 = distinct !{!95, !20, !30}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20, !30, !31}
!98 = distinct !{!98, !20, !31, !30}
!99 = distinct !{!99, !20, !30, !31}
!100 = distinct !{!100, !20, !30}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20, !30, !31}
!103 = distinct !{!103, !20, !31, !30}
!104 = distinct !{!104, !20}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !20}
!108 = distinct !{!108, !20}
!109 = distinct !{!109, !20}
!110 = !{!"", !13, i64 0, !13, i64 4}
!111 = !{!110, !13, i64 0}
!112 = !{!110, !13, i64 4}
!113 = !{!33, !33, i64 0}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, !20, !30, !31}
!116 = distinct !{!116, !20, !30, !31}
!117 = distinct !{!117, !20, !30}
!118 = distinct !{!118, !20, !30, !31}
!119 = distinct !{!119, !20, !30, !31}
!120 = distinct !{!120, !20, !30}
!121 = !{!45, !34, i64 26744}
!122 = !{!45, !28, i64 26752}
!123 = !{!"branch_weights", i32 8, i32 24}
!124 = !{!"long long", !12, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!45, !13, i64 26728}
!127 = distinct !{!127, !20}
!128 = !{!56, !28, i64 96}
!129 = !{!56, !28, i64 88}
!130 = !{!56, !13, i64 16}
!131 = !{!56, !28, i64 104}
!132 = !{!56, !28, i64 56}
!133 = !{!56, !28, i64 80}
end_hunk_3
