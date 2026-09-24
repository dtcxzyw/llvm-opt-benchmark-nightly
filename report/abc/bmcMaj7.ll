Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj7?download=true
inline.NumInlined: 184
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Exa7_ManExactSynthesis:bb.a
  %i.de = icmp eq i8 %i.dd, 48
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !25
  %i.dh = icmp eq i8 %i.dg, 120
  %spec.select.idx.i = select i1 %i.dh, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 %spec.select.idx.i ; 2 uses
  %.pre.i = load i8, ptr %spec.select.i, align 1, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.di = phi i8 [ %i.dd, %bb.m ], [ %.pre.i, %bb.n ] ; 3 uses
  %.038.i = phi ptr [ %i.dc, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  %i.dj = add i8 %i.di, -58
  %or.cond.i50.i = icmp ult i8 %i.dj, -10
  %i.dk = and i8 %i.di, -33
  %i.dl = add i8 %i.dk, -71
  %i.dm = icmp ult i8 %i.dl, -6
  %narrow.i.not51.i = and i1 %or.cond.i50.i, %i.dm
  br i1 %narrow.i.not51.i, label %.sink.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.o ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.038.i, i64 %indvars.iv.next.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !25  ; 2 uses
  %i.dp = add i8 %i.do, -58
  %or.cond.i.i = icmp ult i8 %i.dp, -10
  %i.dq = and i8 %i.do, -33
  %i.dr = add i8 %i.dq, -71
  %i.ds = icmp ult i8 %i.dr, -6
  %narrow.i.not.i = and i1 %or.cond.i.i, %i.ds
  br i1 %narrow.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !69

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  switch i32 %indvars.i, label %.lr.ph.preheader.i.i [
    i32 1, label %bb.p
    i32 0, label %.sink.split.i
  ]

bb.p:                                             ; preds = %._crit_edge.i
  %switch.tableidx = add i8 %i.di, -48            ; 3 uses
  %i.dt = icmp ult i8 %switch.tableidx, 23
  br i1 %i.dt, label %switch.hole_check, label %.lr.ph57.preheader.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %i.du = add i32 %indvars.i, -1                  ; 2 uses
  %i.dv = lshr i32 %i.du, 1
  %i.dw = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.dv, i1 false) ; 2 uses
  %i.dx = sub nuw nsw i32 35, %i.dw
  %i.dy = icmp ult i32 %i.du, 16
  %i.dz = sub nsw i32 29, %i.dw
  %i.ea = shl nuw nsw i32 1, %i.dz
  %spec.select48.i = select i1 %i.dy, i32 1, i32 %i.ea
  %i.eb = zext nneg i32 %spec.select48.i to i64
  %i.ec = shl nuw nsw i64 %i.eb, 3
  br label %.lr.ph57.preheader.i

.lr.ph57.preheader.i:                             ; preds = %switch.hole_check, %bb.p, %.lr.ph.preheader.i.i
  %.fr.i = phi i32 [ %i.dx, %.lr.ph.preheader.i.i ], [ 2, %bb.p ], [ 2, %switch.hole_check ] ; 4 uses
  %i.ed = phi i64 [ %i.ec, %.lr.ph.preheader.i.i ], [ 8, %bb.p ], [ 8, %switch.hole_check ]
  call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ed, i1 false), !tbaa !167
  %sext = shl i64 %indvars.iv.next.i, 32
  %i.ee = ashr exact i64 %sext, 32
  %wide.trip.count.i = and i64 %indvars.iv.next.i, 4294967295
  %i.ef = getelementptr i8, ptr %.038.i, i64 %i.ee
  br label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %Abc_TtReadHexDigit.exit.i, %.lr.ph57.preheader.i
  %indvars.iv66.i = phi i64 [ 0, %.lr.ph57.preheader.i ], [ %indvars.iv.next67.i, %Abc_TtReadHexDigit.exit.i ] ; 4 uses
  %i.eg = xor i64 %indvars.iv66.i, -1
  %i.eh = getelementptr i8, ptr %i.ef, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !25  ; 4 uses
  %i.ej = sext i8 %i.ei to i64                    ; 3 uses
  %i.ek = add i8 %i.ei, -48
  %or.cond.i43.i = icmp ult i8 %i.ek, 10
  br i1 %or.cond.i43.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph57.i
  %i.el = add nsw i64 %i.ej, -48
  br label %Abc_TtReadHexDigit.exit.i

bb.r:                                             ; preds = %.lr.ph57.i
  %i.em = add i8 %i.ei, -65
  %or.cond5.i.i = icmp ult i8 %i.em, 6
  br i1 %or.cond5.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.en = add nsw i64 %i.ej, -55
  br label %Abc_TtReadHexDigit.exit.i

bb.t:                                             ; preds = %bb.r
  %i.eo = add i8 %i.ei, -97
  %or.cond8.i.i = icmp ult i8 %i.eo, 6
  %i.ep = add nsw i64 %i.ej, -87
  %spec.select.i.i = select i1 %or.cond8.i.i, i64 %i.ep, i64 -1
  br label %Abc_TtReadHexDigit.exit.i

Abc_TtReadHexDigit.exit.i:                        ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i = phi i64 [ %i.el, %bb.q ], [ %i.en, %bb.s ], [ %spec.select.i.i, %bb.t ]
  %i.eq = shl i64 %indvars.iv66.i, 2
  %i.er = and i64 %i.eq, 60
  %i.es = shl i64 %.0.i.i, %i.er
  %i.et = lshr i64 %indvars.iv66.i, 4
  %i.eu = and i64 %i.et, 268435455
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.eu ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !167
  %i.ex = or i64 %i.ew, %i.es
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !167
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond.not.i135 = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count.i
  br i1 %exitcond.not.i135, label %._crit_edge58.i, label %.lr.ph57.i, !llvm.loop !70

._crit_edge58.i:                                  ; preds = %Abc_TtReadHexDigit.exit.i
  %i.ey = icmp samesign ult i32 %.fr.i, 6
  br i1 %i.ey, label %bb.u, label %Abc_TtReadHex.exit

bb.u:                                             ; preds = %._crit_edge58.i
  %i.ez = load i64, ptr %i.ag, align 8, !tbaa !167 ; 4 uses
  %i.fa = icmp samesign ult i32 %.fr.i, 3
  %i.fb = and i64 %i.ez, 15
  %i.fc = mul nuw nsw i64 %i.fb, 17
  %spec.select86.i = select i1 %i.fa, i64 %i.fc, i64 %i.ez
  %i.fd = icmp samesign ult i32 %.fr.i, 4
  %i.fe = and i64 %spec.select86.i, 255
  %i.ff = mul nuw nsw i64 %i.fe, 257
  %i.fg = select i1 %i.fd, i64 %i.ff, i64 %i.ez
  %.not72.i = icmp eq i32 %.fr.i, 5
  %i.fh = and i64 %i.fg, 65535
  %i.fi = mul nuw nsw i64 %i.fh, 65537
  %spec.select87.i = select i1 %.not72.i, i64 %i.ez, i64 %i.fi
  %i.fj = and i64 %spec.select87.i, 4294967295
  %i.fk = mul nuw i64 %i.fj, 4294967297
  br label %.sink.split.i

switch.hole_check:                                ; preds = %bb.p
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph57.preheader.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.fl = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Exa7_ManExactSynthesis, i64 %i.fl
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %switch.lookup, %bb.o, %._crit_edge.i, %bb.u
  %.sink.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.o ], [ %i.fk, %bb.u ], [ 0, %._crit_edge.i ]
  store i64 %.sink.i, ptr %i.ag, align 8, !tbaa !167
  br label %Abc_TtReadHex.exit

Abc_TtReadHex.exit:                               ; preds = %.sink.split.i, %._crit_edge58.i, %bb.l
  %i.fm = call noalias dereferenceable_or_null(131440) ptr @calloc(i64 noundef 1, i64 noundef 131440) #22 ; 42 uses
  store ptr %0, ptr %i.fm, align 8, !tbaa !44
  %i.fn = load i32, ptr %0, align 8, !tbaa !40    ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 51 uses
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !35
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !45 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 12 ; 14 uses
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !46
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !47 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 44 uses
  store i32 %i.ft, ptr %i.fu, align 8, !tbaa !48
  %notmask.i = shl nsw i32 -1, %i.ft
  %i.fv = xor i32 %notmask.i, -1                  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 20 ; 25 uses
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !168
  %i.fx = add nsw i32 %i.fq, %i.fn                ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 57 uses
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !169
  %i.fz = icmp slt i32 %i.fn, 7
  %i.ga = add nsw i32 %i.fn, -6
  %i.gb = shl nuw i32 1, %i.ga
  %i.gc = select i1 %i.fz, i32 1, i32 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fm, i64 28 ; 8 uses
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !170
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 40 ; 4 uses
  store ptr %i.ag, ptr %i.ge, align 8, !tbaa !171
  %i.gf = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 16 uses
  %i.gg = add i32 %i.fx, -1
  %or.cond.i.i.i = icmp ult i32 %i.gg, 7
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 8, i32 %i.fx ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.gf, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WecStart.exit.i, label %bb.v

bb.v:                                             ; preds = %Abc_TtReadHex.exit
  %i.gh = sext i32 %spec.store.select.i.i.i to i64
  %i.gi = call noalias ptr @calloc(i64 noundef %i.gh, i64 noundef 16) #22
  br label %Vec_WecStart.exit.i

Vec_WecStart.exit.i:                              ; preds = %bb.v, %Abc_TtReadHex.exit
  %i.gj = phi ptr [ %i.gi, %bb.v ], [ null, %Abc_TtReadHex.exit ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 9 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 13 uses
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !15
  store i32 %i.fx, ptr %i.gk, align 4, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 131400 ; 3 uses
  store ptr %i.gf, ptr %i.gm, align 8, !tbaa !172
  %i.gn = mul nsw i32 %i.fq, %i.fv
  %i.go = add nsw i32 %i.gn, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 16 uses
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !173
  %i.gq = icmp sgt i32 %i.fq, 0
  br i1 %i.gq, label %.lr.ph165.i.i, label %._crit_edge166.i.i

.lr.ph165.i.i:                                    ; preds = %Vec_WecStart.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fm, i64 72 ; 3 uses
  %i.gs = sext i32 %i.fn to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.w

bb.w:                                             ; preds = %.loopexit153.i.i, %.lr.ph165.i.i
  %i.gv = phi i32 [ %i.ft, %.lr.ph165.i.i ], [ %i.qs, %.loopexit153.i.i ] ; 5 uses
  %i.gw = phi i32 [ %i.ft, %.lr.ph165.i.i ], [ %i.qt, %.loopexit153.i.i ]
  %indvars.iv186.i.i = phi i64 [ %i.gs, %.lr.ph165.i.i ], [ %indvars.iv.next187.i.i, %.loopexit153.i.i ] ; 11 uses
  %i.gx = load i32, ptr %i.gt, align 8, !tbaa !49
  %.not116.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not116.i.i, label %.preheader152.i.i, label %bb.x

.preheader152.i.i:                                ; preds = %bb.w
  %i.gy = icmp sgt i32 %i.gv, 0
  br i1 %i.gy, label %.lr.ph161.i.i, label %.loopexit153.i.i

.lr.ph161.i.i:                                    ; preds = %.preheader152.i.i
  %i.gz = getelementptr inbounds [2048 x i8], ptr %i.gr, i64 %indvars.iv186.i.i ; 2 uses
  %i.ha = trunc nsw i64 %indvars.iv186.i.i to i32 ; 3 uses
  br label %bb.bf

bb.x:                                             ; preds = %bb.w
  %i.hb = load i32, ptr %i.fo, align 8, !tbaa !35 ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp sgt i64 %indvars.iv186.i.i, %i.hc
  br i1 %i.hd, label %bb.y, label %bb.ao

bb.y:                                             ; preds = %bb.x
  %i.he = add nsw i64 %indvars.iv186.i.i, -1      ; 3 uses
  %i.hf = load i32, ptr %i.gp, align 8, !tbaa !173 ; 3 uses
  %i.hg = shl nsw i32 %i.hf, 1
  %i.hh = trunc nsw i64 %i.he to i32              ; 2 uses
  %i.hi = load i32, ptr %i.gk, align 4, !tbaa !16 ; 2 uses
  %.not.i61.i = icmp sgt i32 %i.hi, %i.hh
  br i1 %.not.i61.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hj = add nsw i32 %i.hh, 1                    ; 2 uses
  %i.hk = shl nsw i32 %i.hi, 1
  %i.hl = call noundef i32 @llvm.smax.i32(i32 %i.hk, i32 %i.hj) ; 4 uses
  %i.hm = load i32, ptr %i.gf, align 8, !tbaa !14 ; 2 uses
  %.not.i.i62.i = icmp slt i32 %i.hm, %i.hl
  br i1 %.not.i.i62.i, label %bb.aa, label %Vec_WecGrow.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.hn = load ptr, ptr %i.gl, align 8, !tbaa !15 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.hn, null
  %i.ho = sext i32 %i.hl to i64
  %i.hp = shl nsw i64 %i.ho, 4                    ; 2 uses
  br i1 %.not13.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hq = call ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef %i.hp) #24
  %.pre.i.i65.i = load i32, ptr %i.gf, align 8, !tbaa !14
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.hr = call noalias ptr @malloc(i64 noundef %i.hp) #21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hs = phi i32 [ %.pre.i.i65.i, %bb.ab ], [ %i.hm, %bb.ac ] ; 2 uses
  %i.ht = phi ptr [ %i.hq, %bb.ab ], [ %i.hr, %bb.ac ] ; 2 uses
  store ptr %i.ht, ptr %i.gl, align 8, !tbaa !15
  %i.hu = sext i32 %i.hs to i64
  %i.hv = getelementptr inbounds [16 x i8], ptr %i.ht, i64 %i.hu
  %i.hw = sub nsw i32 %i.hl, %i.hs
  %i.hx = sext i32 %i.hw to i64
  %i.hy = shl nsw i64 %i.hx, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.hv, i8 0, i64 %i.hy, i1 false)
  store i32 %i.hl, ptr %i.gf, align 8, !tbaa !14
  br label %Vec_WecGrow.exit.i.i

Vec_WecGrow.exit.i.i:                             ; preds = %bb.ad, %bb.z
  store i32 %i.hj, ptr %i.gk, align 4, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_WecGrow.exit.i.i, %bb.y
  %.val.i63.i = load ptr, ptr %i.gl, align 8, !tbaa !15
  %i.hz = getelementptr inbounds [16 x i8], ptr %.val.i63.i, i64 %i.he ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4 ; 3 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !19 ; 7 uses
  %i.ic = load i32, ptr %i.hz, align 8, !tbaa !23
  %i.id = icmp eq i32 %i.ib, %i.ic
  br i1 %i.id, label %bb.af, label %Vec_WecPush.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.ie = icmp slt i32 %i.ib, 16
  br i1 %i.ie, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not9.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ih = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ig, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ii = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.ai, %bb.ah
  %i.ij = phi ptr [ %i.ih, %bb.ah ], [ %i.ii, %bb.ai ]
  store ptr %i.ij, ptr %i.if, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.aj:                                            ; preds = %bb.af
  %i.ik = icmp samesign ult i32 %i.ib, 1073741823
  %i.il = shl nuw nsw i32 %i.ib, 1
  %spec.select.i.i.i = select i1 %i.ik, i32 %i.il, i32 2147483647 ; 3 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.ib, %spec.select.i.i.i
  br i1 %.not.i9.i.i.i, label %bb.ak, label %Vec_WecPush.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i.i.i = icmp eq ptr %i.in, null
  %i.io = zext nneg i32 %spec.select.i.i.i to i64
  %i.ip = shl nuw nsw i64 %i.io, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iq = call ptr @realloc(ptr noundef nonnull %i.in, i64 noundef %i.ip) #24
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ir = call noalias ptr @malloc(i64 noundef %i.ip) #21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.is = phi ptr [ %i.iq, %bb.al ], [ %i.ir, %bb.am ]
  store ptr %i.is, ptr %i.im, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.an, %Vec_IntGrow.exit.i.i.i
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.an ], [ 16, %Vec_IntGrow.exit.i.i.i ]
  store i32 %spec.select.sink.i.i.i, ptr %i.hz, align 8, !tbaa !23
  %.pre.i64.i = load i32, ptr %i.ia, align 4, !tbaa !19
  br label %Vec_WecPush.exit.i

Vec_WecPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.aj, %bb.ae
  %i.it = phi i32 [ %i.ib, %bb.ae ], [ %i.ib, %bb.aj ], [ %.pre.i64.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.iw = add nsw i32 %i.it, 1
  store i32 %i.iw, ptr %i.ia, align 4, !tbaa !19
  %i.ix = sext i32 %i.it to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.ix
  store i32 %i.hg, ptr %i.iy, align 4, !tbaa !22
  %i.iz = add nsw i32 %i.hf, 1
  store i32 %i.iz, ptr %i.gp, align 8, !tbaa !173
  %i.ja = getelementptr inbounds [2048 x i8], ptr %i.gr, i64 %indvars.iv186.i.i
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.he
  store i32 %i.hf, ptr %i.jb, align 4, !tbaa !22
  %.pre.i.i = load i32, ptr %i.fo, align 8, !tbaa !35 ; 2 uses
  %.pre199.i.i = sext i32 %.pre.i.i to i64
  %i.jc = icmp sgt i64 %indvars.iv186.i.i, %.pre199.i.i
  %.pre.i140 = load i32, ptr %i.fu, align 8, !tbaa !48 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %Vec_WecPush.exit.i, %bb.x
  %i.jd = phi i32 [ %.pre.i140, %Vec_WecPush.exit.i ], [ %i.gv, %bb.x ] ; 2 uses
  %i.je = phi i32 [ %.pre.i140, %Vec_WecPush.exit.i ], [ %i.gw, %bb.x ] ; 4 uses
  %.pre-phi.i.i = phi i1 [ %i.jc, %Vec_WecPush.exit.i ], [ false, %bb.x ] ; 2 uses
  %i.jf = phi i32 [ %.pre.i.i, %Vec_WecPush.exit.i ], [ %i.hb, %bb.x ]
  %i.jg = zext i1 %.pre-phi.i.i to i32
  %i.jh = icmp sgt i32 %i.je, %i.jg
  br i1 %i.jh, label %.preheader.lr.ph.i.i, label %.loopexit153.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.ao
  %i.ji = getelementptr inbounds [2048 x i8], ptr %i.gr, i64 %indvars.iv186.i.i
  %i.jj = zext i1 %.pre-phi.i.i to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i
  %i.jk = phi i32 [ %i.jd, %.preheader.lr.ph.i.i ], [ %i.mb, %._crit_edge.i.i ]
  %i.jl = phi i32 [ %i.je, %.preheader.lr.ph.i.i ], [ %i.mc, %._crit_edge.i.i ]
  %i.jm = phi i32 [ %i.je, %.preheader.lr.ph.i.i ], [ %i.md, %._crit_edge.i.i ]
  %i.jn = phi i32 [ %i.jf, %.preheader.lr.ph.i.i ], [ %i.me, %._crit_edge.i.i ] ; 3 uses
  %indvars.iv177.i.i = phi i64 [ %i.jj, %.preheader.lr.ph.i.i ], [ %indvars.iv.next178.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.jo = trunc nuw nsw i64 %indvars.iv177.i.i to i32 ; 2 uses
  %i.jp = sub i32 %i.jn, %i.jo
  %i.jq = sext i32 %i.jn to i64
end_hunk_0
begin_hunk_1_@Exa7_ManExactSynthesis:bb.a
  %i.pr = icmp slt i32 %i.po, 16
  br i1 %i.pr, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i.i147.i.i = icmp eq ptr %i.pt, null
  br i1 %.not9.i.i.i147.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.pt, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i148.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.pv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i.i148.i.i

Vec_IntGrow.exit.i.i148.i.i:                      ; preds = %bb.ci, %bb.ch
  %i.pw = phi ptr [ %i.pu, %bb.ch ], [ %i.pv, %bb.ci ]
  store ptr %i.pw, ptr %i.ps, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i.i144.i.i

bb.cj:                                            ; preds = %bb.cf
  %i.px = icmp samesign ult i32 %i.po, 1073741823
  %i.py = shl nuw nsw i32 %i.po, 1
  %spec.select.i.i141.i.i = select i1 %i.px, i32 %i.py, i32 2147483647 ; 3 uses
  %.not.i9.i.i142.i.i = icmp samesign ult i32 %i.po, %spec.select.i.i141.i.i
  br i1 %.not.i9.i.i142.i.i, label %bb.ck, label %Vec_WecPush.exit151.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !20 ; 2 uses
  %.not9.i10.i.i143.i.i = icmp eq ptr %i.qa, null
  %i.qb = zext nneg i32 %spec.select.i.i141.i.i to i64
  %i.qc = shl nuw nsw i64 %i.qb, 2                ; 2 uses
  br i1 %.not9.i10.i.i143.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qd = call ptr @realloc(ptr noundef nonnull %i.qa, i64 noundef %i.qc) #24
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.qe = call noalias ptr @malloc(i64 noundef %i.qc) #21
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.qf = phi ptr [ %i.qd, %bb.cl ], [ %i.qe, %bb.cm ]
  store ptr %i.qf, ptr %i.pz, align 8, !tbaa !20
  br label %Vec_IntGrow.exit11.sink.split.i.i144.i.i

Vec_IntGrow.exit11.sink.split.i.i144.i.i:         ; preds = %bb.cn, %Vec_IntGrow.exit.i.i148.i.i
  %spec.select.sink.i.i145.i.i = phi i32 [ %spec.select.i.i141.i.i, %bb.cn ], [ 16, %Vec_IntGrow.exit.i.i148.i.i ]
  store i32 %spec.select.sink.i.i145.i.i, ptr %i.pm, align 8, !tbaa !23
  %.pre.i146.i.i = load i32, ptr %i.pn, align 4, !tbaa !19
  br label %Vec_WecPush.exit151.i.i

Vec_WecPush.exit151.i.i:                          ; preds = %Vec_IntGrow.exit11.sink.split.i.i144.i.i, %bb.cj, %bb.ce
  %i.qg = phi i32 [ %i.po, %bb.ce ], [ %i.po, %bb.cj ], [ %.pre.i146.i.i, %Vec_IntGrow.exit11.sink.split.i.i144.i.i ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !20
  %i.qj = add nsw i32 %i.qg, 1
  store i32 %i.qj, ptr %i.pn, align 4, !tbaa !19
  %i.qk = sext i32 %i.qg to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qi, i64 %i.qk
  store i32 %i.os, ptr %i.ql, align 4, !tbaa !22
  %i.qm = add nsw i32 %i.or, 1
  store i32 %i.qm, ptr %i.gp, align 8, !tbaa !173
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.oq, i64 %indvars.iv180.i.i
  store i32 %i.or, ptr %i.qn, align 4, !tbaa !22
  %indvars.iv.next181.i.i = add nsw i64 %indvars.iv180.i.i, 1 ; 2 uses
  %i.qo = icmp slt i64 %indvars.iv.next181.i.i, %i.oo
  br i1 %i.qo, label %bb.by, label %.loopexit.i.i, !llvm.loop !73

.loopexit.i.i:                                    ; preds = %Vec_WecPush.exit151.i.i, %.thread.i.i, %Vec_WecPush.exit136.i.i
  %indvars.iv.next184.i.i = add nuw nsw i64 %indvars.iv183.i.i, 1 ; 2 uses
  %i.qp = load i32, ptr %i.fu, align 8, !tbaa !48 ; 4 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next184.i.i, %i.qq
  br i1 %i.qr, label %bb.bf, label %.loopexit153.i.i, !llvm.loop !74

.loopexit153.i.i:                                 ; preds = %._crit_edge.i.i, %.loopexit.i.i, %bb.ao, %.preheader152.i.i
  %i.qs = phi i32 [ %i.qp, %.loopexit.i.i ], [ %i.gv, %.preheader152.i.i ], [ %i.jd, %bb.ao ], [ %i.mb, %._crit_edge.i.i ] ; 2 uses
  %i.qt = phi i32 [ %i.qp, %.loopexit.i.i ], [ %i.gv, %.preheader152.i.i ], [ %i.je, %bb.ao ], [ %i.mc, %._crit_edge.i.i ]
  %indvars.iv.next187.i.i = add nsw i64 %indvars.iv186.i.i, 1 ; 2 uses
  %i.qu = load i32, ptr %i.fy, align 8, !tbaa !169 ; 2 uses
  %i.qv = sext i32 %i.qu to i64
  %i.qw = icmp slt i64 %indvars.iv.next187.i.i, %i.qv
  br i1 %i.qw, label %bb.w, label %._crit_edge166.i.i, !llvm.loop !75

._crit_edge166.i.i:                               ; preds = %.loopexit153.i.i, %Vec_WecStart.exit.i
  %i.qx = phi i32 [ %i.fx, %Vec_WecStart.exit.i ], [ %i.qu, %.loopexit153.i.i ] ; 6 uses
  %i.qy = phi i32 [ %i.ft, %Vec_WecStart.exit.i ], [ %i.qs, %.loopexit153.i.i ] ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !43
  %.not.i.i = icmp eq i32 %i.ra, 0
  br i1 %.not.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %._crit_edge166.i.i
  %i.rb = load i32, ptr %i.gp, align 8, !tbaa !173
  %i.rc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.rb) ; 0 uses
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge166.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !49
  %.not110.i.i = icmp eq i32 %i.re, 0
  br i1 %.not110.i.i, label %Exa7_ManMarkup.exit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !51
  %.not111.i.i = icmp eq i32 %i.rg, 0
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !52 ; 2 uses
  %.not112.i.i = icmp eq ptr %i.ri, null          ; 2 uses
  br i1 %.not111.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not112.i.i, label %Exa7_ManMarkup.exit.i, label %..thread229.i_crit_edge.i

..thread229.i_crit_edge.i:                        ; preds = %bb.cr
  %.pre72.i = load i32, ptr %i.fr, align 4, !tbaa !46
  br label %.thread229.i.i

bb.cs:                                            ; preds = %bb.cq
  %.pre73.i = load i32, ptr %i.fr, align 4, !tbaa !46 ; 2 uses
  br i1 %.not112.i.i, label %bb.ct, label %.thread229.i.i

.thread229.i.i:                                   ; preds = %bb.cs, %..thread229.i_crit_edge.i
  %i.rj = phi i32 [ %.pre72.i, %..thread229.i_crit_edge.i ], [ %.pre73.i, %bb.cs ]
  %i.rk = call ptr @Exa7_ChooseInputVars2(i32 poison, i32 noundef %i.rj, i32 noundef %i.qy, ptr noundef nonnull %i.ri)
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %.pre71.i = load i32, ptr %i.fo, align 8, !tbaa !35
  %i.rl = call ptr @Exa7_ChooseInputVars(i32 noundef %.pre71.i, i32 noundef %.pre73.i, i32 noundef %i.qy)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.thread229.i.i
  %i.rm = phi ptr [ %i.rl, %bb.ct ], [ %i.rk, %.thread229.i.i ] ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.fm, i64 131408
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !174
  %i.ro = load i32, ptr %i.qz, align 8, !tbaa !43
  %.not114.i.i = icmp eq i32 %i.ro, 0
  br i1 %.not114.i.i, label %bb.cv, label %Exa7_ManMarkup.exit.i

bb.cv:                                            ; preds = %bb.cu
  %i.rp = load ptr, ptr %i.rh, align 8, !tbaa !52 ; 2 uses
  %.not115.i.i = icmp eq ptr %i.rp, null          ; 2 uses
  %i.rq = select i1 %.not115.i.i, ptr @.str.21, ptr @.str.20
  %spec.select.i.i139 = select i1 %.not115.i.i, ptr @.str.22, ptr %i.rp
  %i.rr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %i.rq, ptr noundef nonnull %spec.select.i.i139) ; 0 uses
  %i.rs = getelementptr i8, ptr %i.rm, i64 4
  %.val.i.i = load i32, ptr %i.rs, align 4, !tbaa !16 ; 2 uses
  %i.rt = icmp sgt i32 %.val.i.i, 0
  br i1 %i.rt, label %.lr.ph174.preheader.i.i, label %Exa7_ManMarkup.exit.i

.lr.ph174.preheader.i.i:                          ; preds = %bb.cv
  %i.ru = zext nneg i32 %.val.i.i to i64
  %i.rv = getelementptr i8, ptr %i.rm, i64 8
  br label %.lr.ph174.i.i

.lr.ph174.i.i:                                    ; preds = %.critedge3.i.i, %.lr.ph174.preheader.i.i
  %indvars.iv192.i.i = phi i64 [ %i.ru, %.lr.ph174.preheader.i.i ], [ %indvars.iv.next193.i.i, %.critedge3.i.i ] ; 3 uses
  %indvars.iv.next193.i.i = add nsw i64 %indvars.iv192.i.i, -1 ; 2 uses
  %.val119.i.i = load ptr, ptr %i.rv, align 8, !tbaa !15
  %i.rw = getelementptr inbounds nuw [16 x i8], ptr %.val119.i.i, i64 %indvars.iv.next193.i.i ; 2 uses
  %i.rx = trunc i64 %indvars.iv192.i.i to i32
  %i.ry = add i32 %i.rx, 64
  %i.rz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.ry) ; 0 uses
  %i.sa = getelementptr i8, ptr %i.rw, i64 4      ; 2 uses
  %.val120167.i.i = load i32, ptr %i.sa, align 4, !tbaa !19
  %i.sb = icmp sgt i32 %.val120167.i.i, 0
  br i1 %i.sb, label %.lr.ph170.i.i, label %.critedge3.i.i

.lr.ph170.i.i:                                    ; preds = %.lr.ph174.i.i
  %i.sc = getelementptr i8, ptr %i.rw, i64 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.lr.ph170.i.i
  %indvars.iv189.i.i = phi i64 [ 0, %.lr.ph170.i.i ], [ %indvars.iv.next190.i.i, %bb.cw ] ; 2 uses
  %.val121.i.i = load ptr, ptr %i.sc, align 8, !tbaa !20
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.val121.i.i, i64 %indvars.iv189.i.i
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !22 ; 2 uses
  %i.sf = icmp slt i32 %i.se, 0
  %i.sg = add nsw i32 %i.se, 97
  %i.sh = select i1 %i.sf, i32 42, i32 %i.sg
  %i.si = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.sh) ; 0 uses
  %indvars.iv.next190.i.i = add nuw nsw i64 %indvars.iv189.i.i, 1 ; 2 uses
  %.val120.i.i = load i32, ptr %i.sa, align 4, !tbaa !19
  %i.sj = sext i32 %.val120.i.i to i64
  %i.sk = icmp slt i64 %indvars.iv.next190.i.i, %i.sj
  br i1 %i.sk, label %bb.cw, label %.critedge3.i.i, !llvm.loop !76

.critedge3.i.i:                                   ; preds = %bb.cw, %.lr.ph174.i.i
  %putchar.i.i = call i32 @putchar(i32 10)        ; 0 uses
  %i.sl = icmp samesign ugt i64 %indvars.iv192.i.i, 1
  br i1 %i.sl, label %.lr.ph174.i.i, label %Exa7_ManMarkup.exit.i, !llvm.loop !77

Exa7_ManMarkup.exit.i:                            ; preds = %.critedge3.i.i, %bb.cv, %bb.cu, %bb.cr, %bb.cp
  %5 = load i32, ptr %i.gp, align 8, !tbaa !173
  %i.sm = load i32, ptr %i.gd, align 4, !tbaa !170 ; 2 uses
  %i.sn = add nsw i32 %i.qx, 1
  %i.so = mul nsw i32 %i.sm, %i.sn                ; 4 uses
  %i.sp = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.sq = add i32 %i.so, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.sq, 15
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 16, i32 %i.so ; 3 uses
  store i32 %spec.store.select.i.i.i.i, ptr %i.sp, align 8, !tbaa !176
  %.not.i.i.i50.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i.i50.i, label %Vec_WrdStart.exit.i.i, label %bb.cx

bb.cx:                                            ; preds = %Exa7_ManMarkup.exit.i
  %i.sr = sext i32 %spec.store.select.i.i.i.i to i64
  %i.ss = shl nsw i64 %i.sr, 3
  %i.st = call noalias ptr @malloc(i64 noundef %i.ss) #21
  br label %Vec_WrdStart.exit.i.i

Vec_WrdStart.exit.i.i:                            ; preds = %bb.cx, %Exa7_ManMarkup.exit.i
  %i.su = phi ptr [ %i.st, %bb.cx ], [ null, %Exa7_ManMarkup.exit.i ] ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store ptr %i.su, ptr %i.sw, align 8, !tbaa !177
  store i32 %i.so, ptr %i.sv, align 4, !tbaa !178
  %i.sx = sext i32 %i.so to i64
  %i.sy = shl nsw i64 %i.sx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.su, i8 0, i64 %i.sy, i1 false)
  %i.sz = getelementptr i8, ptr %i.fm, i64 48     ; 7 uses
  %i.ta = load i32, ptr %i.fo, align 8, !tbaa !35 ; 6 uses
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %.lr.ph.i52.i, label %Exa7_ManTruthTables.exit.i

.lr.ph.i52.i:                                     ; preds = %Vec_WrdStart.exit.i.i
  %i.tc = icmp samesign ult i32 %i.ta, 7
  %i.td = add nsw i32 %i.ta, -6
  %i.te = shl nuw i32 1, %i.td
  %i.tf = select i1 %i.tc, i32 1, i32 %i.te
  %.fr13.i.i = freeze i32 %i.tf                   ; 4 uses
  %i.tg = icmp sgt i32 %.fr13.i.i, 0
  %wide.trip.count.i.i.i = zext i32 %.fr13.i.i to i64 ; 6 uses
  br i1 %i.tg, label %.lr.ph.split.us.preheader.i.i, label %Exa7_ManTruthTables.exit.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i52.i
  %i.th = sext i32 %i.sm to i64
  %wide.trip.count.i.i = zext nneg i32 %i.ta to i64
  %min.iters.check885 = icmp ult i32 %.fr13.i.i, 4
  %n.vec887 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n897 = icmp eq i64 %n.vec887, %wide.trip.count.i.i.i
  %min.iters.check873 = icmp ult i32 %.fr13.i.i, 4
  %n.vec875 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n882 = icmp eq i64 %n.vec875, %wide.trip.count.i.i.i
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %Abc_TtIthVar.exit.us.i.i, %.lr.ph.split.us.preheader.i.i
  %indvars.iv.i53.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next.i54.i, %Abc_TtIthVar.exit.us.i.i ] ; 5 uses
  %i.ti = mul nsw i64 %indvars.iv.i53.i, %i.th
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.su, i64 %i.ti ; 4 uses
  %i.tk = icmp samesign ult i64 %indvars.iv.i53.i, 6
  br i1 %i.tk, label %.preheader.i.us.i.i, label %.preheader18.i.us.i.i

.preheader18.i.us.i.i:                            ; preds = %.lr.ph.split.us.i.i
  %i.tl = trunc i64 %indvars.iv.i53.i to i32
  %i.tm = add i32 %i.tl, -6
  %i.tn = shl nuw i32 1, %i.tm                    ; 2 uses
  br i1 %min.iters.check885, label %scalar.ph884.preheader, label %vector.ph886

vector.ph886:                                     ; preds = %.preheader18.i.us.i.i
  %broadcast.splatinsert888 = insertelement <2 x i32> poison, i32 %i.tn, i64 0
  %broadcast.splat889 = shufflevector <2 x i32> %broadcast.splatinsert888, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body890

vector.body890:                                   ; preds = %vector.body890, %vector.ph886
  %index891 = phi i64 [ 0, %vector.ph886 ], [ %index.next894, %vector.body890 ] ; 2 uses
  %vec.ind892 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph886 ], [ %vec.ind.next895, %vector.body890 ] ; 3 uses
  %step.add893 = add <2 x i32> %vec.ind892, splat (i32 2)
  %i.to = and <2 x i32> %broadcast.splat889, %vec.ind892
  %i.tp = and <2 x i32> %broadcast.splat889, %step.add893
  %i.tq = icmp ne <2 x i32> %i.to, zeroinitializer
  %i.tr = icmp ne <2 x i32> %i.tp, zeroinitializer
  %i.ts = sext <2 x i1> %i.tq to <2 x i64>
  %i.tt = sext <2 x i1> %i.tr to <2 x i64>
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %index891 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  store <2 x i64> %i.ts, ptr %i.tu, align 8, !tbaa !167
  store <2 x i64> %i.tt, ptr %i.tv, align 8, !tbaa !167
  %index.next894 = add nuw i64 %index891, 4       ; 2 uses
  %vec.ind.next895 = add <2 x i32> %vec.ind892, splat (i32 4)
  %i.tw = icmp eq i64 %index.next894, %n.vec887
  br i1 %i.tw, label %middle.block896, label %vector.body890, !llvm.loop !78

middle.block896:                                  ; preds = %vector.body890
  br i1 %cmp.n897, label %Abc_TtIthVar.exit.us.i.i, label %scalar.ph884.preheader

scalar.ph884.preheader:                           ; preds = %.preheader18.i.us.i.i, %middle.block896
  %indvars.iv.i.us.i.i.ph = phi i64 [ 0, %.preheader18.i.us.i.i ], [ %n.vec887, %middle.block896 ]
  br label %scalar.ph884

scalar.ph884:                                     ; preds = %scalar.ph884.preheader, %scalar.ph884
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i, %scalar.ph884 ], [ %indvars.iv.i.us.i.i.ph, %scalar.ph884.preheader ] ; 3 uses
  %i.tx = trunc nuw nsw i64 %indvars.iv.i.us.i.i to i32
  %i.ty = and i32 %i.tn, %i.tx
  %.not.i.us.i.i = icmp ne i32 %i.ty, 0
  %spec.select.i.us.i.i = sext i1 %.not.i.us.i.i to i64
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %indvars.iv.i.us.i.i
  store i64 %spec.select.i.us.i.i, ptr %i.tz, align 8, !tbaa !167
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.i, label %Abc_TtIthVar.exit.us.i.i, label %scalar.ph884, !llvm.loop !79

.preheader.i.us.i.i:                              ; preds = %.lr.ph.split.us.i.i
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv.i53.i
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !167 ; 2 uses
  br i1 %min.iters.check873, label %scalar.ph872.preheader, label %vector.ph874

vector.ph874:                                     ; preds = %.preheader.i.us.i.i
  %broadcast.splatinsert876 = insertelement <2 x i64> poison, i64 %i.ub, i64 0
  %broadcast.splat877 = shufflevector <2 x i64> %broadcast.splatinsert876, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body878

vector.body878:                                   ; preds = %vector.body878, %vector.ph874
  %index879 = phi i64 [ 0, %vector.ph874 ], [ %index.next880, %vector.body878 ] ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %index879 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  store <2 x i64> %broadcast.splat877, ptr %i.uc, align 8, !tbaa !167
  store <2 x i64> %broadcast.splat877, ptr %i.ud, align 8, !tbaa !167
  %index.next880 = add nuw i64 %index879, 4       ; 2 uses
  %i.ue = icmp eq i64 %index.next880, %n.vec875
  br i1 %i.ue, label %middle.block881, label %vector.body878, !llvm.loop !80

middle.block881:                                  ; preds = %vector.body878
  br i1 %cmp.n882, label %Abc_TtIthVar.exit.us.i.i, label %scalar.ph872.preheader

scalar.ph872.preheader:                           ; preds = %.preheader.i.us.i.i, %middle.block881
  %indvars.iv25.i.us.i.i.ph = phi i64 [ 0, %.preheader.i.us.i.i ], [ %n.vec875, %middle.block881 ]
  br label %scalar.ph872

scalar.ph872:                                     ; preds = %scalar.ph872.preheader, %scalar.ph872
  %indvars.iv25.i.us.i.i = phi i64 [ %indvars.iv.next26.i.us.i.i, %scalar.ph872 ], [ %indvars.iv25.i.us.i.i.ph, %scalar.ph872.preheader ] ; 2 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %indvars.iv25.i.us.i.i
  store i64 %i.ub, ptr %i.uf, align 8, !tbaa !167
  %indvars.iv.next26.i.us.i.i = add nuw nsw i64 %indvars.iv25.i.us.i.i, 1 ; 2 uses
  %exitcond29.not.i.us.i.i = icmp eq i64 %indvars.iv.next26.i.us.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond29.not.i.us.i.i, label %Abc_TtIthVar.exit.us.i.i, label %scalar.ph872, !llvm.loop !81

Abc_TtIthVar.exit.us.i.i:                         ; preds = %scalar.ph884, %scalar.ph872, %middle.block896, %middle.block881
  %indvars.iv.next.i54.i = add nuw nsw i64 %indvars.iv.i53.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i54.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Exa7_ManTruthTables.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !82

Exa7_ManTruthTables.exit.i:                       ; preds = %Abc_TtIthVar.exit.us.i.i, %.lr.ph.i52.i, %Vec_WrdStart.exit.i.i
  store ptr %i.sp, ptr %i.sz, align 8, !tbaa !179
  %i.ug = load i32, ptr %i.fs, align 8, !tbaa !47
  switch i32 %i.ug, label %bb.dc [
    i32 2, label %bb.cy
    i32 3, label %bb.da
  ]

bb.cy:                                            ; preds = %Exa7_ManTruthTables.exit.i
  %i.uh = load i32, ptr %0, align 8, !tbaa !40
  %i.ui = load i32, ptr %i.fp, align 4, !tbaa !45
  %i.uj = shl i32 %i.ui, %i.uh
  %i.uk = mul i32 %i.qx, %i.qx
  %i.ul = mul i32 %i.uk, %i.uj                    ; 2 uses
  %i.um = ashr i32 %i.ul, 5
  %i.un = and i32 %i.ul, 31
  %i.uo = icmp ne i32 %i.un, 0
  %i.up = zext i1 %i.uo to i32
  %i.uq = add nsw i32 %i.um, %i.up                ; 3 uses
  %i.ur = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.us = shl nsw i32 %i.uq, 5                    ; 2 uses
  store i32 %i.us, ptr %i.ur, align 8, !tbaa !181
  %.not.i.i55.i = icmp eq i32 %i.uq, 0
  br i1 %.not.i.i55.i, label %Vec_BitStart.exit.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ut = sext i32 %i.uq to i64
  %i.uu = shl nsw i64 %i.ut, 2                    ; 2 uses
  %i.uv = call noalias ptr @malloc(i64 noundef %i.uu) #21
  br label %Vec_BitStart.exit.i

Vec_BitStart.exit.i:                              ; preds = %bb.cz, %bb.cy
  %.pre-phi8.i.i = phi i64 [ %i.uu, %bb.cz ], [ 0, %bb.cy ]
  %i.uw = phi ptr [ %i.uv, %bb.cz ], [ null, %bb.cy ] ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store ptr %i.uw, ptr %i.uy, align 8, !tbaa !182
  store i32 %i.us, ptr %i.ux, align 4, !tbaa !183
  call void @llvm.memset.p0.i64(ptr align 4 %i.uw, i8 0, i64 %.pre-phi8.i.i, i1 false)
  br label %.sink.split.i136

bb.da:                                            ; preds = %Exa7_ManTruthTables.exit.i
  %i.uz = load i32, ptr %0, align 8, !tbaa !40
  %i.va = load i32, ptr %i.fp, align 4, !tbaa !45
  %i.vb = shl i32 %i.va, %i.uz
  %i.vc = mul i32 %i.qx, %i.qx
  %i.vd = mul i32 %i.vc, %i.qx
  %i.ve = mul i32 %i.vd, %i.vb                    ; 2 uses
  %i.vf = ashr i32 %i.ve, 5
  %i.vg = and i32 %i.ve, 31
  %i.vh = icmp ne i32 %i.vg, 0
  %i.vi = zext i1 %i.vh to i32
  %i.vj = add nsw i32 %i.vf, %i.vi                ; 3 uses
  %i.vk = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.vl = shl nsw i32 %i.vj, 5                    ; 2 uses
  store i32 %i.vl, ptr %i.vk, align 8, !tbaa !181
  %.not.i.i56.i = icmp eq i32 %i.vj, 0
  br i1 %.not.i.i56.i, label %Vec_BitStart.exit58.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vm = sext i32 %i.vj to i64
  %i.vn = shl nsw i64 %i.vm, 2                    ; 2 uses
  %i.vo = call noalias ptr @malloc(i64 noundef %i.vn) #21
  br label %Vec_BitStart.exit58.i

Vec_BitStart.exit58.i:                            ; preds = %bb.db, %bb.da
  %.pre-phi8.i57.i = phi i64 [ %i.vn, %bb.db ], [ 0, %bb.da ]
  %i.vp = phi ptr [ %i.vo, %bb.db ], [ null, %bb.da ] ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  store ptr %i.vp, ptr %i.vr, align 8, !tbaa !182
  store i32 %i.vl, ptr %i.vq, align 4, !tbaa !183
  call void @llvm.memset.p0.i64(ptr align 4 %i.vp, i8 0, i64 %.pre-phi8.i57.i, i1 false)
  br label %.sink.split.i136

.sink.split.i136:                                 ; preds = %Vec_BitStart.exit58.i, %Vec_BitStart.exit.i
  %.sink126.i = phi i64 [ 64, %Vec_BitStart.exit58.i ], [ 56, %Vec_BitStart.exit.i ]
  %.sink.i137 = phi ptr [ %i.vk, %Vec_BitStart.exit58.i ], [ %i.ur, %Vec_BitStart.exit.i ]
  %i.vs = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sink126.i
  store ptr %.sink.i137, ptr %i.vs, align 8, !tbaa !184
  br label %bb.dc

bb.dc:                                            ; preds = %.sink.split.i136, %Exa7_ManTruthTables.exit.i
  %i.vt = call ptr @cadical_solver_new() #23      ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.fm, i64 131416 ; 34 uses
  store ptr %i.vt, ptr %i.vu, align 8, !tbaa !36
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !53
  %.not.i59.i = icmp eq i32 %i.vw, 0
  br i1 %.not.i59.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vx = load i32, ptr %i.fr, align 4, !tbaa !46 ; 2 uses
  %.pre74.i = add nsw i32 %i.qy, 1
  %.pre75.i = mul nsw i32 %i.vx, %.pre74.i
  br label %Exa7_ManVarReserve.exit.i

bb.de:                                            ; preds = %bb.dc
  %i.vy = add nsw i32 %i.qy, 1
  %i.vz = load i32, ptr %i.fr, align 4, !tbaa !46
  %i.wa = mul nsw i32 %i.vz, %i.vy                ; 2 uses
  br label %Exa7_ManVarReserve.exit.i

Exa7_ManVarReserve.exit.i:                        ; preds = %bb.de, %bb.dd
  %.pre-phi76.i = phi i32 [ %.pre75.i, %bb.dd ], [ %i.wa, %bb.de ]
  %i.wb = phi i32 [ %i.vx, %bb.dd ], [ %i.wa, %bb.de ]
  %i.wc = shl nuw i32 1, %i.ta
  %i.wd = sext i32 %5 to i64
  %i.we = sext i32 %i.wb to i64
  %i.wf = sext i32 %i.wc to i64
  %i.wg = mul nsw i64 %i.we, %i.wf
  %i.wh = add nsw i64 %i.wg, %i.wd
  %spec.store.select.i.i = call i64 @llvm.smin.i64(i64 %i.wh, i64 2147483647)
  %i.wi = trunc i64 %spec.store.select.i.i to i32 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.fm, i64 131424
  store i32 %i.wi, ptr %i.wj, align 8, !tbaa !185
  %i.wk = shl i32 %.pre-phi76.i, %i.ta
  %i.wl = add nsw i32 %i.wk, %i.wi
  call void @cadical_solver_setnvars(ptr noundef %i.vt, i32 noundef %i.wl) #23
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !186 ; 3 uses
  %.not.i138 = icmp eq i32 %i.wn, 0
  br i1 %.not.i138, label %Exa7_ManAlloc.exit, label %bb.df

bb.df:                                            ; preds = %Exa7_ManVarReserve.exit.i
  %i.wo = icmp eq ptr %i.vt, null
  %i.wp = icmp slt i32 %i.wn, 1
  %or.cond.i60.i = or i1 %i.wo, %i.wp
  br i1 %or.cond.i60.i, label %Exa7_ManAlloc.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wq = load ptr, ptr %i.vt, align 8, !tbaa !188
  call void @ccadical_limit(ptr noundef %i.wq, ptr noundef nonnull @.str.26, i32 noundef range(i32 1, 0) %i.wn) #23
  br label %Exa7_ManAlloc.exit

Exa7_ManAlloc.exit:                               ; preds = %Exa7_ManVarReserve.exit.i, %bb.df, %bb.dg
  %i.wr = load i64, ptr %i.ag, align 8, !tbaa !167
  %.not112 = trunc i64 %i.wr to i1                ; 6 uses
  br i1 %.not112, label %bb.dh, label %Abc_TtNot.exit

bb.dh:                                            ; preds = %Exa7_ManAlloc.exit
  %i.ws = load i32, ptr %i.gd, align 4, !tbaa !170 ; 3 uses
  %i.wt = icmp sgt i32 %i.ws, 0
  br i1 %i.wt, label %.lr.ph.preheader.i, label %Abc_TtNot.exit

.lr.ph.preheader.i:                               ; preds = %bb.dh
  %wide.trip.count.i143 = zext nneg i32 %i.ws to i64 ; 3 uses
  %min.iters.check900 = icmp ult i32 %i.ws, 4
  br i1 %min.iters.check900, label %.lr.ph.i144.preheader, label %vector.ph901

vector.ph901:                                     ; preds = %.lr.ph.preheader.i
  %n.vec902 = and i64 %wide.trip.count.i143, 2147483644 ; 3 uses
  br label %vector.body903

vector.body903:                                   ; preds = %vector.body903, %vector.ph901
  %index904 = phi i64 [ 0, %vector.ph901 ], [ %index.next906, %vector.body903 ] ; 2 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index904 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.wu, align 8, !tbaa !167
  %wide.load905 = load <2 x i64>, ptr %i.wv, align 8, !tbaa !167
  %i.ww = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.wx = xor <2 x i64> %wide.load905, splat (i64 -1)
  store <2 x i64> %i.ww, ptr %i.wu, align 8, !tbaa !167
  store <2 x i64> %i.wx, ptr %i.wv, align 8, !tbaa !167
  %index.next906 = add nuw i64 %index904, 4       ; 2 uses
  %i.wy = icmp eq i64 %index.next906, %n.vec902
  br i1 %i.wy, label %middle.block907, label %vector.body903, !llvm.loop !83

middle.block907:                                  ; preds = %vector.body903
  %cmp.n908 = icmp eq i64 %n.vec902, %wide.trip.count.i143
  br i1 %cmp.n908, label %Abc_TtNot.exit, label %.lr.ph.i144.preheader

.lr.ph.i144.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block907
  %indvars.iv.i145.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec902, %middle.block907 ]
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144.preheader, %.lr.ph.i144
  %indvars.iv.i145 = phi i64 [ %indvars.iv.next.i146, %.lr.ph.i144 ], [ %indvars.iv.i145.ph, %.lr.ph.i144.preheader ] ; 2 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i145 ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !167
  %i.xb = xor i64 %i.xa, -1
  store i64 %i.xb, ptr %i.wz, align 8, !tbaa !167
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %exitcond.not.i147 = icmp eq i64 %indvars.iv.next.i146, %wide.trip.count.i143
  br i1 %exitcond.not.i147, label %Abc_TtNot.exit, label %.lr.ph.i144, !llvm.loop !84

Abc_TtNot.exit:                                   ; preds = %.lr.ph.i144, %middle.block907, %bb.dh, %Exa7_ManAlloc.exit
  %.0 = phi i32 [ 1, %Exa7_ManAlloc.exit ], [ 0, %bb.dh ], [ 0, %middle.block907 ], [ 0, %.lr.ph.i144 ]
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  %i.xe = load i32, ptr %i.fo, align 8, !tbaa !35 ; 2 uses
  %i.xf = load i32, ptr %i.fy, align 8, !tbaa !169 ; 3 uses
  %i.xg = icmp slt i32 %i.xe, %i.xf
  br i1 %i.xg, label %.lr.ph258.i, label %.preheader199.i

.lr.ph258.i:                                      ; preds = %Abc_TtNot.exit
  %i.xh = getelementptr inbounds nuw i8, ptr %i.fm, i64 72 ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 4 uses
  %.not178.i = icmp eq i32 %i.xd, 0
  %i.xn = sext i32 %i.xe to i64
  br label %bb.di

.preheader199.i:                                  ; preds = %bb.ec, %Abc_TtNot.exit
  %i.xo = phi i32 [ %i.xf, %Abc_TtNot.exit ], [ %i.acx, %bb.ec ]
  %i.xp = icmp sgt i32 %i.xo, 1
  br i1 %i.xp, label %.lr.ph261.i, label %._crit_edge262.i

bb.di:                                            ; preds = %bb.ec, %.lr.ph258.i
  %i.xq = phi i32 [ %i.xf, %.lr.ph258.i ], [ %i.acx, %bb.ec ]
  %indvars.iv316.i = phi i64 [ %i.xn, %.lr.ph258.i ], [ %indvars.iv.next317.i, %bb.ec ] ; 5 uses
  %i.xr = load i32, ptr %i.fw, align 4, !tbaa !168
  %i.xs = load i32, ptr %i.fo, align 8, !tbaa !35
  %i.xt = trunc nsw i64 %indvars.iv316.i to i32   ; 2 uses
  %i.xu = sub nsw i32 %i.xt, %i.xs
  %i.xv = load i32, ptr %i.fu, align 8, !tbaa !48 ; 2 uses
  %i.xw = icmp sgt i32 %i.xv, 0
  br i1 %i.xw, label %.preheader211.lr.ph.i, label %._crit_edge242.i

.preheader211.lr.ph.i:                            ; preds = %bb.di
  %i.xx = getelementptr inbounds [2048 x i8], ptr %i.xh, i64 %indvars.iv316.i ; 2 uses
  br label %.preheader211.i

.preheader211.i:                                  ; preds = %._crit_edge240.i, %.preheader211.lr.ph.i
  %i.xy = phi i32 [ %i.xq, %.preheader211.lr.ph.i ], [ %i.aao, %._crit_edge240.i ] ; 4 uses
  %indvars.iv299.i = phi i64 [ 0, %.preheader211.lr.ph.i ], [ %indvars.iv.next300.i, %._crit_edge240.i ] ; 4 uses
  %i.xz = icmp sgt i32 %i.xy, 0
  br i1 %i.xz, label %.lr.ph.i152, label %._crit_edge.i150

.lr.ph.i152:                                      ; preds = %.preheader211.i
  %i.ya = getelementptr inbounds nuw [256 x i8], ptr %i.xx, i64 %indvars.iv299.i ; 3 uses
  %wide.trip.count.i153 = zext nneg i32 %i.xy to i64 ; 2 uses
  %xtraiter1123 = and i64 %wide.trip.count.i153, 1
  %i.yb = icmp eq i32 %i.xy, 1
  br i1 %i.yb, label %.epil.preheader, label %.lr.ph.i152.new

.lr.ph.i152.new:                                  ; preds = %.lr.ph.i152
  %unroll_iter1127 = and i64 %wide.trip.count.i153, 2147483646
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dn, %.lr.ph.i152.new
  %indvars.iv.i154 = phi i64 [ 0, %.lr.ph.i152.new ], [ %indvars.iv.next.i155.1, %bb.dn ] ; 3 uses
  %.0145228.i = phi i32 [ 0, %.lr.ph.i152.new ], [ %.1146.i.1, %bb.dn ] ; 3 uses
  %niter1128 = phi i64 [ 0, %.lr.ph.i152.new ], [ %niter1128.next.1, %bb.dn ]
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv.i154
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !22 ; 2 uses
  %.not184.i = icmp eq i32 %i.yd, 0
  br i1 %.not184.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ye = shl nsw i32 %i.yd, 1
  %i.yf = add nsw i32 %.0145228.i, 1
  %i.yg = sext i32 %.0145228.i to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.yg
  store i32 %i.ye, ptr %i.yh, align 4, !tbaa !22
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.1146.i = phi i32 [ %i.yf, %bb.dk ], [ %.0145228.i, %bb.dj ] ; 3 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv.i154
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !22 ; 2 uses
  %.not184.i.1 = icmp eq i32 %i.yk, 0
  br i1 %.not184.i.1, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.yl = shl nsw i32 %i.yk, 1
  %i.ym = add nsw i32 %.1146.i, 1
  %i.yn = sext i32 %.1146.i to i64
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.yn
  store i32 %i.yl, ptr %i.yo, align 4, !tbaa !22
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.1146.i.1 = phi i32 [ %i.ym, %bb.dm ], [ %.1146.i, %bb.dl ] ; 3 uses
  %indvars.iv.next.i155.1 = add nuw nsw i64 %indvars.iv.i154, 2 ; 2 uses
  %niter1128.next.1 = add i64 %niter1128, 2       ; 2 uses
  %niter1128.ncmp.1 = icmp eq i64 %niter1128.next.1, %unroll_iter1127
  br i1 %niter1128.ncmp.1, label %._crit_edge.i150.loopexit.unr-lcssa, label %bb.dj, !llvm.loop !85

._crit_edge.i150.loopexit.unr-lcssa:              ; preds = %bb.dn
  %lcmp.mod1124.not = icmp eq i64 %xtraiter1123, 0
  br i1 %lcmp.mod1124.not, label %._crit_edge.i150, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i150.loopexit.unr-lcssa, %.lr.ph.i152
  %indvars.iv.i154.epil.init = phi i64 [ 0, %.lr.ph.i152 ], [ %indvars.iv.next.i155.1, %._crit_edge.i150.loopexit.unr-lcssa ]
  %.0145228.i.epil.init = phi i32 [ 0, %.lr.ph.i152 ], [ %.1146.i.1, %._crit_edge.i150.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1126 = trunc i32 %i.xy to i1
  call void @llvm.assume(i1 %lcmp.mod1126)
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv.i154.epil.init
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !22 ; 2 uses
  %.not184.i.epil = icmp eq i32 %i.yq, 0
  br i1 %.not184.i.epil, label %._crit_edge.i150, label %bb.do

bb.do:                                            ; preds = %.epil.preheader
  %i.yr = shl nsw i32 %i.yq, 1
  %i.ys = add nsw i32 %.0145228.i.epil.init, 1
  %i.yt = sext i32 %.0145228.i.epil.init to i64
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.yt
  store i32 %i.yr, ptr %i.yu, align 4, !tbaa !22
  br label %._crit_edge.i150

end_hunk_1
begin_hunk_2_@Exa7_ManExactSynthesis:bb.a

bb.ks:                                            ; preds = %Vec_WrdFree.exit.i
  %i.cad = getelementptr inbounds nuw i8, ptr %i.cab, i64 8
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !182 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.cae, null
  br i1 %.not.i8.i, label %bb.kt, label %.thread.i.i360

.thread.i.i360:                                   ; preds = %bb.ks
  call void @free(ptr noundef nonnull %i.cae) #23
  %i.caf = load ptr, ptr %i.afl, align 8, !tbaa !184 ; 2 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caf, i64 8
  store ptr null, ptr %i.cag, align 8, !tbaa !182
  br label %bb.kt

bb.kt:                                            ; preds = %.thread.i.i360, %bb.ks
  %i.cah = phi ptr [ %i.caf, %.thread.i.i360 ], [ %i.cab, %bb.ks ]
  call void @free(ptr noundef nonnull %i.cah) #23
  store ptr null, ptr %i.afl, align 8, !tbaa !184
  br label %Vec_BitFreeP.exit.i

Vec_BitFreeP.exit.i:                              ; preds = %bb.kt, %Vec_WrdFree.exit.i
  %i.cai = load ptr, ptr %i.afo, align 8, !tbaa !184 ; 3 uses
  %i.caj = icmp eq ptr %i.cai, null
  br i1 %i.caj, label %Vec_BitFreeP.exit11.i, label %bb.ku

bb.ku:                                            ; preds = %Vec_BitFreeP.exit.i
  %i.cak = getelementptr inbounds nuw i8, ptr %i.cai, i64 8
  %i.cal = load ptr, ptr %i.cak, align 8, !tbaa !182 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.cal, null
  br i1 %.not.i9.i, label %bb.kv, label %.thread.i10.i

.thread.i10.i:                                    ; preds = %bb.ku
  call void @free(ptr noundef nonnull %i.cal) #23
  %i.cam = load ptr, ptr %i.afo, align 8, !tbaa !184 ; 2 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 8
  store ptr null, ptr %i.can, align 8, !tbaa !182
  br label %bb.kv

bb.kv:                                            ; preds = %.thread.i10.i, %bb.ku
  %i.cao = phi ptr [ %i.cam, %.thread.i10.i ], [ %i.cai, %bb.ku ]
  call void @free(ptr noundef nonnull %i.cao) #23
  store ptr null, ptr %i.afo, align 8, !tbaa !184
  br label %Vec_BitFreeP.exit11.i

Vec_BitFreeP.exit11.i:                            ; preds = %bb.kv, %Vec_BitFreeP.exit.i
  %i.cap = load ptr, ptr %i.gm, align 8, !tbaa !172 ; 4 uses
  %i.caq = load i32, ptr %i.cap, align 8, !tbaa !14 ; 2 uses
  %i.car = icmp sgt i32 %i.caq, 0
  %i.cas = getelementptr inbounds nuw i8, ptr %i.cap, i64 8 ; 2 uses
  %.pre.i.i.i361 = load ptr, ptr %i.cas, align 8, !tbaa !15 ; 3 uses
  br i1 %i.car, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_BitFreeP.exit11.i, %bb.kx
  %i.cat = phi i32 [ %i.cbb, %bb.kx ], [ %i.caq, %Vec_BitFreeP.exit11.i ]
  %i.cau = phi ptr [ %i.cbc, %bb.kx ], [ %.pre.i.i.i361, %Vec_BitFreeP.exit11.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.kx ], [ 0, %Vec_BitFreeP.exit11.i ] ; 3 uses
  %i.cav = getelementptr inbounds nuw [16 x i8], ptr %i.cau, i64 %indvars.iv.i.i.i
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 8
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !20 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.cax, null
  br i1 %.not15.i.i.i, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef nonnull %i.cax) #23
  %i.cay = load ptr, ptr %i.cas, align 8, !tbaa !15 ; 2 uses
  %i.caz = getelementptr inbounds nuw [16 x i8], ptr %i.cay, i64 %indvars.iv.i.i.i
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caz, i64 8
  store ptr null, ptr %i.cba, align 8, !tbaa !20
  %.pre18.i.i.i = load i32, ptr %i.cap, align 8, !tbaa !14
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %.lr.ph.i.i.i
  %i.cbb = phi i32 [ %.pre18.i.i.i, %bb.kw ], [ %i.cat, %.lr.ph.i.i.i ] ; 2 uses
  %i.cbc = phi ptr [ %i.cay, %bb.kw ], [ %i.cau, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cbd = sext i32 %i.cbb to i64
  %i.cbe = icmp slt i64 %indvars.iv.next.i.i.i, %i.cbd
  br i1 %i.cbe, label %.lr.ph.i.i.i, label %._crit_edge.thread.i.i.i, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %Vec_BitFreeP.exit11.i
  %.not.i.i.i362 = icmp eq ptr %.pre.i.i.i361, null
  br i1 %.not.i.i.i362, label %Vec_WecFree.exit.i, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %bb.kx, %._crit_edge.i.i.i
  %i.cbf = phi ptr [ %.pre.i.i.i361, %._crit_edge.i.i.i ], [ %i.cbc, %bb.kx ]
  call void @free(ptr noundef nonnull %i.cbf) #23
  br label %Vec_WecFree.exit.i

Vec_WecFree.exit.i:                               ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  call void @free(ptr noundef nonnull %i.cap) #23
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.fm, i64 131408
  %i.cbh = load ptr, ptr %i.cbg, align 8, !tbaa !206 ; 5 uses
  %i.cbi = icmp eq ptr %i.cbh, null
  br i1 %i.cbi, label %Exa7_ManFree.exit, label %bb.ky

bb.ky:                                            ; preds = %Vec_WecFree.exit.i
  %i.cbj = load i32, ptr %i.cbh, align 8, !tbaa !14 ; 2 uses
  %i.cbk = icmp sgt i32 %i.cbj, 0
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbh, i64 8 ; 2 uses
  %.pre.i.i.i.i363 = load ptr, ptr %i.cbl, align 8, !tbaa !15 ; 3 uses
  br i1 %i.cbk, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ky, %bb.la
  %i.cbm = phi i32 [ %i.cbu, %bb.la ], [ %i.cbj, %bb.ky ]
  %i.cbn = phi ptr [ %i.cbv, %bb.la ], [ %.pre.i.i.i.i363, %bb.ky ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.la ], [ 0, %bb.ky ] ; 3 uses
  %i.cbo = getelementptr inbounds nuw [16 x i8], ptr %i.cbn, i64 %indvars.iv.i.i.i.i
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbo, i64 8
  %i.cbq = load ptr, ptr %i.cbp, align 8, !tbaa !20 ; 2 uses
  %.not15.i.i.i.i = icmp eq ptr %i.cbq, null
  br i1 %.not15.i.i.i.i, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %.lr.ph.i.i.i.i
  call void @free(ptr noundef nonnull %i.cbq) #23
  %i.cbr = load ptr, ptr %i.cbl, align 8, !tbaa !15 ; 2 uses
  %i.cbs = getelementptr inbounds nuw [16 x i8], ptr %i.cbr, i64 %indvars.iv.i.i.i.i
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 8
  store ptr null, ptr %i.cbt, align 8, !tbaa !20
  %.pre18.i.i.i.i = load i32, ptr %i.cbh, align 8, !tbaa !14
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %.lr.ph.i.i.i.i
  %i.cbu = phi i32 [ %.pre18.i.i.i.i, %bb.kz ], [ %i.cbm, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cbv = phi ptr [ %i.cbr, %bb.kz ], [ %i.cbn, %.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.cbw = sext i32 %i.cbu to i64
  %i.cbx = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.cbw
  br i1 %i.cbx, label %.lr.ph.i.i.i.i, label %._crit_edge.thread.i.i.i.i, !llvm.loop !2

._crit_edge.i.i.i.i:                              ; preds = %bb.ky
  %.not.i.i.i.i364 = icmp eq ptr %.pre.i.i.i.i363, null
  br i1 %.not.i.i.i.i364, label %Vec_WecFree.exit.i.i, label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.la, %._crit_edge.i.i.i.i
  %i.cby = phi ptr [ %.pre.i.i.i.i363, %._crit_edge.i.i.i.i ], [ %i.cbv, %bb.la ]
  call void @free(ptr noundef nonnull %i.cby) #23
  br label %Vec_WecFree.exit.i.i

Vec_WecFree.exit.i.i:                             ; preds = %._crit_edge.thread.i.i.i.i, %._crit_edge.i.i.i.i
  call void @free(ptr noundef nonnull %i.cbh) #23
  br label %Exa7_ManFree.exit

Exa7_ManFree.exit:                                ; preds = %Vec_WecFree.exit.i, %Vec_WecFree.exit.i.i
  call void @free(ptr noundef nonnull %i.fm) #23
  call void @free(ptr noundef %i.ag) #23
  br label %bb.lb

bb.lb:                                            ; preds = %Exa7_ManFree.exit, %bb.b
  %.0101 = phi i32 [ %i.r, %bb.b ], [ %.098, %Exa7_ManFree.exit ]
  ret i32 %.0101
}

; Function Attrs: nounwind uwtable
define i32 @Exa7_ManExactSynthesisIter(ptr noundef initializes((80, 84)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.a, align 8, !tbaa !39
  %i.b = load i32, ptr %0, align 8, !tbaa !40
  %i.c = add nsw i32 %i.b, -2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47
  %i.f = add nsw i32 %i.e, -1
  %i.g = sdiv i32 %i.c, %i.f                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !45   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = icmp eq ptr %i.k, null                   ; 2 uses
  %.not.not290 = icmp slt i32 %i.g, %i.i
  br i1 %.not.not290, label %.lr.ph293, label %._crit_edge296

.lr.ph293:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %bb.c

bb.b:                                             ; preds = %bb.dj
  %exitcond328.not = icmp eq i32 %.093291, %i.i
  br i1 %exitcond328.not, label %._crit_edge296, label %bb.c, !llvm.loop !207

bb.c:                                             ; preds = %.lr.ph293, %bb.b
  %.093291.in = phi i32 [ %i.g, %.lr.ph293 ], [ %.093291, %bb.b ]
  %.093291 = add i32 %.093291.in, 1               ; 5 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !43
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.093291) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %.093291, ptr %i.h, align 4, !tbaa !45
  %i.q = load i32, ptr %i.n, align 4, !tbaa !56   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %or.cond = select i1 %i.r, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %bb.bq

bb.f:                                             ; preds = %bb.e
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 10 uses
  store i32 0, ptr %i.t, align 4, !tbaa !218
  store i32 100, ptr %i.s, align 8, !tbaa !219
  %i.u = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #21 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 16 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !220
  %i.w = load i32, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph245, label %bb.g

._crit_edge246:                                   ; preds = %Vec_StrPush.exit113
  %i.y = trunc nsw i64 %indvars.iv.next317 to i32 ; 2 uses
  store i32 %i.y, ptr %i.t, align 4, !tbaa !218
  store i32 %spec.select.sink.i110250, ptr %i.s, align 8
  store ptr %storemerge206254, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge246, %bb.f
  %i.z = phi ptr [ %storemerge206254, %._crit_edge246 ], [ %i.u, %bb.f ] ; 6 uses
  %i.aa = phi i32 [ %spec.select.sink.i110250, %._crit_edge246 ], [ 100, %bb.f ] ; 5 uses
  %i.ab = phi i32 [ %i.y, %._crit_edge246 ], [ 0, %bb.f ] ; 3 uses
  %.lcssa = phi i32 [ %i.bk, %._crit_edge246 ], [ %i.w, %bb.f ] ; 2 uses
  %i.ac = add i32 %.lcssa, -1
  %i.ad = load i32, ptr %0, align 8, !tbaa !40
  %.neg104 = sub i32 %.lcssa, %i.ad
  %i.ae = add i32 %i.ac, %.neg104                 ; 3 uses
  %i.af = tail call noundef i32 @llvm.smax.i32(i32 %i.ae, i32 0) ; 2 uses
  %i.ag = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ag, label %bb.h, label %Vec_StrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp slt i32 %i.aa, 16
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.z, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.z, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.aj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  br label %Vec_StrGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ak = icmp samesign ult i32 %i.aa, 1073741823
  %i.al = shl nuw nsw i32 %i.aa, 1
  %spec.select.i = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.aa, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_StrPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %i.z, null
  %i.am = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.am) #24
  br label %Vec_StrGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #21
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge200 = phi ptr [ %i.aj, %bb.k ], [ %i.ai, %bb.j ], [ %i.an, %bb.n ], [ %i.ao, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %storemerge200, ptr %i.v, align 8, !tbaa !220
  store i32 %spec.select.sink.i, ptr %i.s, align 8, !tbaa !219
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_StrGrow.exit11.sink.split.i
  %i.ap = phi ptr [ %i.z, %bb.g ], [ %i.z, %bb.l ], [ %storemerge200, %Vec_StrGrow.exit11.sink.split.i ]
  %i.aq = add nsw i32 %i.ab, 1
  store i32 %i.aq, ptr %i.t, align 4, !tbaa !218
  %i.ar = sext i32 %i.ab to i64
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  store i8 95, ptr %i.as, align 1, !tbaa !25
  %i.at = icmp sgt i32 %i.ae, 0
  %.pre338.pre.pre = load i32, ptr %i.t, align 4, !tbaa !218 ; 2 uses
  %.pre340.pre.pre = load i32, ptr %i.s, align 8, !tbaa !219 ; 2 uses
  br i1 %i.at, label %.lr.ph256, label %.preheader211

.lr.ph256:                                        ; preds = %Vec_StrPush.exit
  %.promoted262 = load ptr, ptr %i.v, align 8, !tbaa !220
  %i.au = sext i32 %.pre338.pre.pre to i64
  br label %bb.x

.lr.ph245:                                        ; preds = %bb.f, %Vec_StrPush.exit113
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %Vec_StrPush.exit113 ], [ 0, %bb.f ] ; 7 uses
  %storemerge206253 = phi ptr [ %storemerge206254, %Vec_StrPush.exit113 ], [ %i.u, %bb.f ] ; 6 uses
  %spec.select.sink.i110251 = phi i32 [ %spec.select.sink.i110250, %Vec_StrPush.exit113 ], [ 100, %bb.f ] ; 3 uses
  %.092243 = phi i32 [ %i.bj, %Vec_StrPush.exit113 ], [ 0, %bb.f ] ; 2 uses
  %i.av = trunc i32 %.092243 to i8
  %i.aw = add i8 %i.av, 97
  %i.ax = trunc nsw i64 %indvars.iv316 to i32
  %i.ay = icmp eq i32 %spec.select.sink.i110251, %i.ax
  br i1 %i.ay, label %bb.p, label %Vec_StrPush.exit113

bb.p:                                             ; preds = %.lr.ph245
  %i.az = icmp samesign ult i64 %indvars.iv316, 16
  br i1 %i.az, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i111 = icmp eq ptr %storemerge206253, null
  br i1 %.not9.i.i111, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge206253, i64 noundef 16) #24
  br label %Vec_StrPush.exit113

bb.s:                                             ; preds = %bb.q
  %i.bb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  br label %Vec_StrPush.exit113

bb.t:                                             ; preds = %bb.p
  %i.bc = icmp samesign ult i64 %indvars.iv316, 1073741823
  %indvars.iv316.tr = trunc nsw i64 %indvars.iv316 to i32
  %i.bd = shl nsw i32 %indvars.iv316.tr, 1
  %spec.select.i106 = select i1 %i.bc, i32 %i.bd, i32 2147483647 ; 4 uses
  %i.be = sext i32 %spec.select.i106 to i64
  %.not.i9.i107 = icmp samesign ult i64 %indvars.iv316, %i.be
  br i1 %.not.i9.i107, label %bb.u, label %Vec_StrPush.exit113

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i108 = icmp eq ptr %storemerge206253, null
  %i.bf = zext nneg i32 %spec.select.i106 to i64  ; 2 uses
  br i1 %.not9.i10.i108, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %storemerge206253, i64 noundef %i.bf) #24
  br label %Vec_StrPush.exit113

bb.w:                                             ; preds = %bb.u
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bf) #21
  br label %Vec_StrPush.exit113

Vec_StrPush.exit113:                              ; preds = %bb.s, %bb.r, %bb.w, %bb.v, %.lr.ph245, %bb.t
  %storemerge206254 = phi ptr [ %storemerge206253, %.lr.ph245 ], [ %storemerge206253, %bb.t ], [ %i.bb, %bb.s ], [ %i.ba, %bb.r ], [ %i.bg, %bb.v ], [ %i.bh, %bb.w ] ; 4 uses
  %spec.select.sink.i110250 = phi i32 [ %spec.select.sink.i110251, %.lr.ph245 ], [ %spec.select.sink.i110251, %bb.t ], [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i106, %bb.v ], [ %spec.select.i106, %bb.w ] ; 3 uses
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge206254, i64 %indvars.iv316
  store i8 %i.aw, ptr %i.bi, align 1, !tbaa !25
  %i.bj = add nuw nsw i32 %.092243, 1             ; 2 uses
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph245, label %._crit_edge246, !llvm.loop !208

..preheader211_crit_edge:                         ; preds = %Vec_StrPush.exit121
  %i.bm = trunc nsw i64 %indvars.iv.next320 to i32 ; 2 uses
  store i32 %i.bm, ptr %i.t, align 4, !tbaa !218
  store i32 %spec.select.sink.i118260, ptr %i.s, align 8
  store ptr %storemerge205264, ptr %i.v, align 8
  br label %.preheader211

.preheader211:                                    ; preds = %..preheader211_crit_edge, %Vec_StrPush.exit
  %.pre340.pre = phi i32 [ %spec.select.sink.i118260, %..preheader211_crit_edge ], [ %.pre340.pre.pre, %Vec_StrPush.exit ] ; 2 uses
  %.pre338.pre = phi i32 [ %i.bm, %..preheader211_crit_edge ], [ %.pre338.pre.pre, %Vec_StrPush.exit ] ; 2 uses
  %i.bn = xor i32 %i.af, -1
  %i.bo = load i32, ptr %i.d, align 8, !tbaa !47
  %i.bp = sub i32 %i.af, %i.bo
  %i.bq = icmp slt i32 %i.bp, -1
  br i1 %i.bq, label %.lr.ph266, label %.preheader210

.lr.ph266:                                        ; preds = %.preheader211
  %.promoted272 = load ptr, ptr %i.v, align 8, !tbaa !220
  %i.br = sext i32 %.pre338.pre to i64
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph256, %Vec_StrPush.exit121
  %indvars.iv319 = phi i64 [ %i.au, %.lr.ph256 ], [ %indvars.iv.next320, %Vec_StrPush.exit121 ] ; 7 uses
  %storemerge205263 = phi ptr [ %.promoted262, %.lr.ph256 ], [ %storemerge205264, %Vec_StrPush.exit121 ] ; 6 uses
  %spec.select.sink.i118261 = phi i32 [ %.pre340.pre.pre, %.lr.ph256 ], [ %spec.select.sink.i118260, %Vec_StrPush.exit121 ] ; 3 uses
  %.091255 = phi i32 [ 0, %.lr.ph256 ], [ %i.cg, %Vec_StrPush.exit121 ] ; 2 uses
  %i.bs = trunc i32 %.091255 to i8
  %i.bt = add i8 %i.bs, 97
  %i.bu = trunc nsw i64 %indvars.iv319 to i32
  %i.bv = icmp eq i32 %spec.select.sink.i118261, %i.bu
  br i1 %i.bv, label %bb.y, label %Vec_StrPush.exit121

bb.y:                                             ; preds = %bb.x
  %i.bw = icmp slt i64 %indvars.iv319, 16
  br i1 %i.bw, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.not9.i.i119 = icmp eq ptr %storemerge205263, null
  br i1 %.not9.i.i119, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge205263, i64 noundef 16) #24
  br label %Vec_StrPush.exit121

bb.ab:                                            ; preds = %bb.z
  %i.by = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  br label %Vec_StrPush.exit121

bb.ac:                                            ; preds = %bb.y
  %i.bz = icmp samesign ult i64 %indvars.iv319, 1073741823
  %indvars.iv319.tr = trunc nsw i64 %indvars.iv319 to i32
  %i.ca = shl nsw i32 %indvars.iv319.tr, 1
  %spec.select.i114 = select i1 %i.bz, i32 %i.ca, i32 2147483647 ; 4 uses
  %i.cb = sext i32 %spec.select.i114 to i64
  %.not.i9.i115 = icmp samesign ult i64 %indvars.iv319, %i.cb
  br i1 %.not.i9.i115, label %bb.ad, label %Vec_StrPush.exit121

bb.ad:                                            ; preds = %bb.ac
  %.not9.i10.i116 = icmp eq ptr %storemerge205263, null
  %i.cc = zext nneg i32 %spec.select.i114 to i64  ; 2 uses
  br i1 %.not9.i10.i116, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = tail call ptr @realloc(ptr noundef nonnull %storemerge205263, i64 noundef %i.cc) #24
  br label %Vec_StrPush.exit121

bb.af:                                            ; preds = %bb.ad
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cc) #21
  br label %Vec_StrPush.exit121

Vec_StrPush.exit121:                              ; preds = %bb.ab, %bb.aa, %bb.af, %bb.ae, %bb.x, %bb.ac
  %storemerge205264 = phi ptr [ %storemerge205263, %bb.x ], [ %storemerge205263, %bb.ac ], [ %i.by, %bb.ab ], [ %i.bx, %bb.aa ], [ %i.cd, %bb.ae ], [ %i.ce, %bb.af ] ; 3 uses
  %spec.select.sink.i118260 = phi i32 [ %spec.select.sink.i118261, %bb.x ], [ %spec.select.sink.i118261, %bb.ac ], [ 16, %bb.ab ], [ 16, %bb.aa ], [ %spec.select.i114, %bb.ae ], [ %spec.select.i114, %bb.af ] ; 3 uses
  %indvars.iv.next320 = add nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %storemerge205264, i64 %indvars.iv319
  store i8 %i.bt, ptr %i.cf, align 1, !tbaa !25
  %i.cg = add nuw nsw i32 %.091255, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %i.ae
  br i1 %exitcond.not, label %..preheader211_crit_edge, label %bb.x, !llvm.loop !209

..preheader210_crit_edge:                         ; preds = %Vec_StrPush.exit129
  %i.ch = trunc nsw i64 %indvars.iv.next323 to i32 ; 2 uses
  store i32 %i.ch, ptr %i.t, align 4, !tbaa !218
  store i32 %spec.select.sink.i126270, ptr %i.s, align 8
  store ptr %storemerge204274, ptr %i.v, align 8
  br label %.preheader210

.preheader210:                                    ; preds = %..preheader210_crit_edge, %.preheader211
  %.pre340.a = phi i32 [ %spec.select.sink.i126270, %..preheader210_crit_edge ], [ %.pre340.pre, %.preheader211 ] ; 2 uses
  %.pre338.a = phi i32 [ %i.ch, %..preheader210_crit_edge ], [ %.pre338.pre, %.preheader211 ] ; 2 uses
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !45
  %i.cj = icmp sgt i32 %i.ci, 2
  br i1 %i.cj, label %.lr.ph287, label %._crit_edge288

bb.ag:                                            ; preds = %.lr.ph266, %Vec_StrPush.exit129
  %indvars.iv322 = phi i64 [ %i.br, %.lr.ph266 ], [ %indvars.iv.next323, %Vec_StrPush.exit129 ] ; 7 uses
  %storemerge204273 = phi ptr [ %.promoted272, %.lr.ph266 ], [ %storemerge204274, %Vec_StrPush.exit129 ] ; 6 uses
  %spec.select.sink.i126271 = phi i32 [ %.pre340.pre, %.lr.ph266 ], [ %spec.select.sink.i126270, %Vec_StrPush.exit129 ] ; 3 uses
  %.090265 = phi i32 [ 0, %.lr.ph266 ], [ %i.cw, %Vec_StrPush.exit129 ]
  %i.ck = trunc nsw i64 %indvars.iv322 to i32
  %i.cl = icmp eq i32 %spec.select.sink.i126271, %i.ck
  br i1 %i.cl, label %bb.ah, label %Vec_StrPush.exit129

bb.ah:                                            ; preds = %bb.ag
  %i.cm = icmp slt i64 %indvars.iv322, 16
  br i1 %i.cm, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.not9.i.i127 = icmp eq ptr %storemerge204273, null
  br i1 %.not9.i.i127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge204273, i64 noundef 16) #24
  br label %Vec_StrPush.exit129

bb.ak:                                            ; preds = %bb.ai
  %i.co = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  br label %Vec_StrPush.exit129

bb.al:                                            ; preds = %bb.ah
  %i.cp = icmp samesign ult i64 %indvars.iv322, 1073741823
  %indvars.iv322.tr = trunc nsw i64 %indvars.iv322 to i32
  %i.cq = shl nsw i32 %indvars.iv322.tr, 1
  %spec.select.i122 = select i1 %i.cp, i32 %i.cq, i32 2147483647 ; 4 uses
  %i.cr = sext i32 %spec.select.i122 to i64
  %.not.i9.i123 = icmp samesign ult i64 %indvars.iv322, %i.cr
  br i1 %.not.i9.i123, label %bb.am, label %Vec_StrPush.exit129

end_hunk_2
