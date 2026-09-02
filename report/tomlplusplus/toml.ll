Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb:bb.a
_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit: ; preds = %bb.l
  %i.aq = zext nneg i32 %i.ai to i64
  %i.ar = add nsw i64 %i.aq, -45
  %.not.i162 = icmp ugt i8 %i.ah, 108
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, -3307330977390599
  %i.au = icmp ne i64 %i.at, 0
  %i.av = select i1 %.not.i162, i1 true, i1 %i.au
  br i1 %i.av, label %bb.m, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread: ; preds = %bb.l, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit
  %i.aw = or i32 %.2278, 16
  br label %bb.m

bb.m:                                             ; preds = %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread, %bb.i, %bb.h, %bb.g
  %.3279 = phi i32 [ %.2278, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit ], [ %i.aw, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread ], [ %i.aj, %bb.g ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 3 uses
  %.not123 = icmp eq i32 %.3279, 31
  br i1 %.not123, label %.thread289, label %bb.f

.lr.ph.preheader:                                 ; preds = %.lr.ph38.i, %._crit_edge.i
  %i.ax = or disjoint i32 %spec.select301, 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.0114335 = phi ptr [ %i.ck, %bb.w ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0224.0334 = phi i32 [ %i.bs, %bb.w ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.9.0333 = phi i32 [ %i.bm, %bb.w ], [ 0, %.lr.ph.preheader ]
  %.4280332 = phi i32 [ %.6.ph, %bb.w ], [ %i.ax, %.lr.ph.preheader ] ; 7 uses
  %i.ay = load i8, ptr %.0114335, align 1, !tbaa !69 ; 3 uses
  %i.az = icmp ne i32 %.sroa.0224.0334, 12
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext i8 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !69  ; 2 uses
  %i.bd = icmp eq i32 %.sroa.0224.0334, 0
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.be = zext i8 %i.bc to i32                    ; 2 uses
  %i.bf = lshr i32 255, %i.be
  %i.bg = zext i8 %i.ay to i32
  %i.bh = and i32 %i.bf, %i.bg
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bi = and i8 %i.ay, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = shl i32 %.sroa.9.0333, 6
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %.pre.i163 = zext i8 %i.bc to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit

_ZN4toml2v34impl12utf8_decoderclEh.exit:          ; preds = %bb.n, %bb.o
  %.pre-phi.i = phi i32 [ %.pre.i163, %bb.o ], [ %i.be, %bb.n ]
  %i.bm = phi i32 [ %i.bl, %bb.o ], [ %i.bh, %bb.n ] ; 8 uses
  %i.bn = or disjoint i32 %.sroa.0224.0334, 256
  %i.bo = add nuw nsw i32 %i.bn, %.pre-phi.i
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !69  ; 3 uses
  %i.bs = zext i8 %i.br to i32
  switch i8 %i.br, label %bb.w [
    i8 12, label %.loopexit322.thread
    i8 0, label %bb.p
  ], !prof !708

bb.p:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit
  switch i32 %i.bm, label %bb.t [
    i32 10, label %bb.q
    i32 9, label %bb.r
    i32 39, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bt = or i32 %.4280332, 1
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.bu = or i32 %.4280332, 2
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.bv = or i32 %.4280332, 8
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.bw = icmp ult i32 %i.bm, 32
  %i.bx = icmp eq i32 %i.bm, 127
  %i.by = or i1 %i.bw, %i.bx
  br i1 %i.by, label %.critedge, label %bb.u, !prof !155

bb.u:                                             ; preds = %bb.t
  switch i32 %i.bm, label %bb.v [
    i32 8233, label %.critedge
    i32 8232, label %.critedge
    i32 133, label %.critedge
  ], !prof !709

.critedge:                                        ; preds = %bb.u, %bb.u, %bb.u, %bb.t
  %i.bz = or i32 %.4280332, 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %.5 = phi i32 [ %i.bz, %.critedge ], [ %.4280332, %bb.u ] ; 2 uses
  %i.ca = add i32 %i.bm, -123
  %or.cond.i.i = icmp ult i32 %i.ca, -78
  br i1 %or.cond.i.i, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit

_ZN4toml2v34impl21is_bare_key_characterEDi.exit:  ; preds = %bb.v
  %i.cb = zext nneg i32 %i.bm to i64
  %i.cc = add nsw i64 %i.cb, -45
  %.not.i.i = icmp samesign ugt i32 %i.bm, 108
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = and i64 %i.cd, -3307330977390599
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = select i1 %.not.i.i, i1 true, i1 %i.cf
  br i1 %i.cg, label %bb.w, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread: ; preds = %bb.v, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  %i.ch = or i32 %.5, 16
  br label %bb.w

.loopexit322.thread:                              ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit
  %i.ci = and i32 %.4280332, -22
  %i.cj = or disjoint i32 %i.ci, 20
  br label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread

bb.w:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, %bb.s, %bb.r, %bb.q
  %.6.ph = phi i32 [ %.4280332, %_ZN4toml2v34impl12utf8_decoderclEh.exit ], [ %i.bv, %bb.s ], [ %i.bu, %bb.r ], [ %i.bt, %bb.q ], [ %i.ch, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread ], [ %.5, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0114335, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.q
  br i1 %.not, label %.loopexit322, label %.lr.ph

.loopexit322:                                     ; preds = %bb.w
  switch i8 %i.br, label %bb.x [
    i8 12, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread
    i8 0, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread
  ]

bb.x:                                             ; preds = %.loopexit322
  %i.cl = and i32 %.6.ph, -22
  %i.cm = or disjoint i32 %i.cl, 20
  br label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread

_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread: ; preds = %bb.f, %.loopexit322.thread, %.loopexit322, %.loopexit322, %bb.x
  %.9 = phi i32 [ %.6.ph, %.loopexit322 ], [ %.6.ph, %.loopexit322 ], [ %i.cm, %bb.x ], [ %i.cj, %.loopexit322.thread ], [ %.3279, %bb.f ] ; 3 uses
  %.4 = phi i8 [ %i.o, %.loopexit322 ], [ %i.o, %.loopexit322 ], [ 0, %bb.x ], [ 0, %.loopexit322.thread ], [ %i.o, %bb.f ] ; 2 uses
  %i.cn = and i32 %.9, 11
  %.not.i152 = icmp eq i32 %i.cn, 0
  br i1 %.not.i152, label %bb.y, label %.thread289

.thread289:                                       ; preds = %bb.m, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread
  %.4294 = phi i8 [ %.4, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread ], [ %i.o, %bb.m ]
  %.9293 = phi i32 [ %.9, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread ], [ 31, %bb.m ]
  %i.co = or i32 %.9293, 16
  br label %bb.y

bb.y:                                             ; preds = %.thread289, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread
  %.4295 = phi i8 [ %.4, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread ], [ %.4294, %.thread289 ] ; 3 uses
  %.10 = phi i32 [ %.9, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread ], [ %i.co, %.thread289 ] ; 9 uses
  %i.cp = and i32 %.10, 16
  %.not.i151 = icmp eq i32 %i.cp, 0
  br i1 %.not.i151, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cq = and i32 %.10, 32
  %.not.i150 = icmp eq i32 %i.cq, 0
  %i.cr = trunc i8 %.4295 to i1
  %or.cond = select i1 %.not.i150, i1 true, i1 %i.cr
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !130
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.cv, align 4, !tbaa !129
  br label %bb.cp

bb.ab:                                            ; preds = %bb.z, %bb.y
  br i1 %5, label %bb.ac, label %.thread296

bb.ac:                                            ; preds = %bb.ab
  %i.cw = and i64 %i.m, 16
  %.not.i154 = icmp ne i64 %i.cw, 0
  %i.cx = and i64 %i.m, 8
  %.not.i153.not = icmp ne i64 %i.cx, 0
  %or.cond316.not = select i1 %3, i1 %.not.i153.not, i1 false
  %.not.i149 = trunc i32 %.10 to i1
  %spec.select = and i1 %or.cond316.not, %.not.i149
  br label %.thread296

.thread296:                                       ; preds = %bb.ac, %bb.ab
  %i.cy = phi i1 [ false, %bb.ab ], [ %.not.i154, %bb.ac ] ; 3 uses
  %i.cz = phi i1 [ false, %bb.ab ], [ %spec.select, %bb.ac ] ; 8 uses
  %i.da = and i64 %i.m, 4
  %.not.i157 = icmp ne i64 %i.da, 0
  %i.db = and i32 %.10, 4
  %.not.i148 = icmp eq i32 %i.db, 0
  %or.cond304 = and i1 %.not.i157, %.not.i148
  br i1 %or.cond304, label %6, label %.critedge143

6:                                                ; preds = %.thread296
  %7 = and i32 %.10, 8
  %.not.i147 = icmp eq i32 %7, 0
  %or.cond5 = or i1 %.not.i147, %i.cz
  br i1 %or.cond5, label %bb.ad, label %.critedge143

bb.ad:                                            ; preds = %6
  %i.dc = and i32 %.10, 2
  %.not.i146.a = icmp eq i32 %i.dc, 0
  %or.cond7.a = or i1 %.not.i146.a, %i.cy
  br i1 %or.cond7.a, label %bb.ae, label %.critedge143

bb.ae:                                            ; preds = %bb.ad
  %i.dd = and i32 %.10, 1
  %.not.i145.a = icmp eq i32 %i.dd, 0
  %or.cond9 = or i1 %.not.i145.a, %i.cz
  br i1 %or.cond9, label %bb.af, label %.critedge143

bb.af:                                            ; preds = %bb.ae
  %i.de = and i32 %.10, 32
  %.not.i144 = icmp eq i32 %i.de, 0
  %i.df = trunc i8 %.4295 to i1
  %i.dg = select i1 %.not.i144, i1 true, i1 %i.df
  br i1 %i.dg, label %bb.ag, label %.critedge143

bb.ag:                                            ; preds = %bb.af
  %.sroa.6.0 = select i1 %i.cz, ptr @.str.24, ptr @.str.16 ; 2 uses
  %.sroa.073.0 = select i1 %i.cz, i64 3, i64 1    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !130
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.073.0) ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  store i8 0, ptr %i.dk, align 4, !tbaa !129
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !130
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %2, i64 noundef %1) ; 0 uses
  store i8 0, ptr %i.dk, align 4, !tbaa !129
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !130
  %i.do = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.073.0) ; 0 uses
  store i8 0, ptr %i.dk, align 4, !tbaa !129
  br label %bb.cp

.critedge143:                                     ; preds = %bb.ae, %bb.ad, %6, %.thread296, %bb.af
  %.sroa.366.0 = select i1 %i.cz, ptr @.str.25, ptr @.str.26 ; 2 uses
  %.sroa.065.0 = select i1 %i.cz, i64 3, i64 1    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 21 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !130
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull %.sroa.366.0, i64 noundef %.sroa.065.0) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i8 0, ptr %i.ds, align 4, !tbaa !129
  %i.dt = and i32 %.10, 32
  %.not.i = icmp eq i32 %i.dt, 0
  %.sroa.044.0 = select i1 %i.cz, i64 1, i64 2    ; 2 uses
  %.sroa.345.0 = select i1 %i.cz, ptr @.str.32, ptr @.str.33 ; 2 uses
  %.sroa.046.0 = select i1 %i.cy, i64 1, i64 2    ; 2 uses
  %.sroa.347.0 = select i1 %i.cy, ptr @.str.30, ptr @.str.31 ; 2 uses
  br i1 %.not.i, label %.lr.ph355, label %.lr.ph352

.lr.ph352:                                        ; preds = %.critedge143
  %i.du = trunc i8 %.4295 to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br label %bb.aq

.lr.ph355:                                        ; preds = %.critedge143, %bb.ap
  %.0119354 = phi ptr [ %i.fe, %bb.ap ], [ %2, %.critedge143 ] ; 2 uses
  %i.en = load i8, ptr %.0119354, align 1, !tbaa !69 ; 4 uses
  switch i8 %i.en, label %bb.am [
    i8 34, label %bb.ah
    i8 92, label %bb.ai
    i8 127, label %bb.aj
    i8 9, label %bb.ak
    i8 10, label %bb.al
  ]

bb.ah:                                            ; preds = %.lr.ph355
  %i.eo = load ptr, ptr %i.dp, align 8, !tbaa !130
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull @.str.27, i64 noundef 2) ; 0 uses
  br label %bb.ap

bb.ai:                                            ; preds = %.lr.ph355
  %i.eq = load ptr, ptr %i.dp, align 8, !tbaa !130
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  br label %bb.ap

bb.aj:                                            ; preds = %.lr.ph355
  %i.es = load ptr, ptr %i.dp, align 8, !tbaa !130
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull @.str.29, i64 noundef 6) ; 0 uses
  br label %bb.ap

bb.ak:                                            ; preds = %.lr.ph355
  %i.eu = load ptr, ptr %i.dp, align 8, !tbaa !130
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull %.sroa.347.0, i64 noundef %.sroa.046.0) ; 0 uses
  br label %bb.ap

bb.al:                                            ; preds = %.lr.ph355
  %i.ew = load ptr, ptr %i.dp, align 8, !tbaa !130
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull %.sroa.345.0, i64 noundef %.sroa.044.0) ; 0 uses
  br label %bb.ap

bb.am:                                            ; preds = %.lr.ph355
  %i.ey = icmp ult i8 %i.en, 32
  %i.ez = load ptr, ptr %i.dp, align 8, !tbaa !130 ; 2 uses
  br i1 %i.ey, label %bb.an, label %bb.ao, !prof !155

bb.an:                                            ; preds = %bb.am
  %i.fa = zext nneg i8 %i.en to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.fa ; 2 uses
  %.sroa.042.0.copyload = load i64, ptr %i.fb, align 16, !tbaa !123
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.243.0.copyload = load ptr, ptr %.sroa.243.0..sroa_idx, align 8, !tbaa !124
  %i.fc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef %.sroa.243.0.copyload, i64 noundef %.sroa.042.0.copyload) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i8 noundef signext %i.en) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %.0119354, i64 1 ; 2 uses
  %.not131 = icmp eq ptr %i.fe, %i.q
  br i1 %.not131, label %.loopexit, label %.lr.ph355

bb.aq:                                            ; preds = %.lr.ph352, %.loopexit319
  %.0115351 = phi ptr [ %2, %.lr.ph352 ], [ %i.fz, %.loopexit319 ] ; 3 uses
  %.0117349 = phi ptr [ %2, %.lr.ph352 ], [ %.2, %.loopexit319 ] ; 6 uses
  %.sroa.0.0249348 = phi i32 [ 0, %.lr.ph352 ], [ %.sroa.0.1, %.loopexit319 ] ; 3 uses
  %.sroa.8.0347 = phi i32 [ 0, %.lr.ph352 ], [ %i.ft, %.loopexit319 ]
  %i.ff = load i8, ptr %.0115351, align 1, !tbaa !69 ; 3 uses
  %i.fg = icmp ne i32 %.sroa.0.0249348, 12
  call void @llvm.assume(i1 %i.fg)
  %i.fh = zext i8 %i.ff to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !69  ; 2 uses
  %i.fk = icmp eq i32 %.sroa.0.0249348, 0
  br i1 %i.fk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fl = zext i8 %i.fj to i32                    ; 2 uses
  %i.fm = lshr i32 255, %i.fl
  %i.fn = zext i8 %i.ff to i32
  %i.fo = and i32 %i.fm, %i.fn
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit167

bb.as:                                            ; preds = %bb.aq
  %i.fp = and i8 %i.ff, 63
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = shl i32 %.sroa.8.0347, 6
  %i.fs = or disjoint i32 %i.fr, %i.fq
  %.pre.i165 = zext i8 %i.fj to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit167

_ZN4toml2v34impl12utf8_decoderclEh.exit167:       ; preds = %bb.ar, %bb.as
  %.pre-phi.i166 = phi i32 [ %.pre.i165, %bb.as ], [ %i.fl, %bb.ar ]
  %i.ft = phi i32 [ %i.fs, %bb.as ], [ %i.fo, %bb.ar ] ; 15 uses
  %i.fu = or disjoint i32 %.sroa.0.0249348, 256
  %i.fv = add nuw nsw i32 %i.fu, %.pre-phi.i166
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !69  ; 2 uses
  %i.fz = getelementptr i8, ptr %.0115351, i64 1  ; 13 uses
  switch i8 %i.fy, label %.loopexit319 [
    i8 12, label %.preheader318
    i8 0, label %bb.ax
  ]

.preheader318:                                    ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit167
  %.not130342 = icmp eq ptr %.0117349, %i.fz
  br i1 %.not130342, label %.loopexit319, label %.lr.ph344

.lr.ph344:                                        ; preds = %.preheader318, %_ZN4toml2v34impl15print_to_streamERSohNS0_11value_flagsEm.exit
  %.1118343 = phi ptr [ %i.ha, %_ZN4toml2v34impl15print_to_streamERSohNS0_11value_flagsEm.exit ], [ %.0117349, %.preheader318 ] ; 3 uses
  %i.ga = load ptr, ptr %i.dp, align 8, !tbaa !130
  %i.gb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.34, i64 noundef 4) ; 0 uses
  %i.gc = load ptr, ptr %i.dp, align 8, !tbaa !130 ; 4 uses
  %i.gd = load i8, ptr %.1118343, align 1, !tbaa !69 ; 4 uses
  %.not.i.i168 = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i168, label %.preheader317.preheader, label %bb.at

.preheader317.preheader:                          ; preds = %.lr.ph344
  %i.ge = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i8 noundef signext 48) ; 0 uses
  %i.gf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i8 noundef signext 48) ; 0 uses
  br label %_ZN4toml2v34impl15print_to_streamERSohNS0_11value_flagsEm.exit

bb.at:                                            ; preds = %.lr.ph344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  %i.gg = zext i8 %i.gd to i32                    ; 3 uses
  %i.gh = call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.gg, i1 true)
  %i.gi = sub nuw nsw i32 35, %i.gh
  %i.gj = lshr i32 %i.gi, 2                       ; 2 uses
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = icmp ugt i8 %i.gd, 15
  br i1 %i.gl, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %.lr.ph.i.i.preheader

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %bb.at
  %i.gm = and i32 %i.gg, 15
  %i.gn = lshr i32 %i.gg, 4
  %i.go = zext nneg i32 %i.gm to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !69
  store i8 %i.gq, ptr %i.dx, align 1, !tbaa !69
  %.pn.i.i = zext nneg i32 %i.gn to i64
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !69
  store i8 %storemerge.i.i, ptr %i.c, align 1, !tbaa !69
  br label %.lr.ph35.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.at
  %.pn.i.i386 = zext nneg i8 %i.gd to i64
  %storemerge.in.i.i387 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i386
  %storemerge.i.i388 = load i8, ptr %storemerge.in.i.i387, align 1, !tbaa !69
  store i8 %storemerge.i.i388, ptr %i.c, align 1, !tbaa !69
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02333.i.i = phi i64 [ %i.gs, %.lr.ph.i.i ], [ %i.gk, %.lr.ph.i.i.preheader ]
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i8 noundef signext 48) ; 0 uses
  %i.gs = add i64 %.02333.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gs, 2
  br i1 %exitcond.not.i.i, label %.lr.ph35.i.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph35.i.i:                                     ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %.lr.ph.i.i
  %i.gt = load i8, ptr %i.c, align 1, !tbaa !69   ; 2 uses
  %i.gu = icmp sgt i8 %i.gt, 96
  br i1 %i.gu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph35.i.i
end_hunk_0
begin_hunk_1_@_ZN4toml2v34impl9formatter5printERKNS0_5valueIlEE:bb.a
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bm = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bo = udiv i64 %.02328.i.i.i, 10000
  %i.bp = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.bq = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.bq, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n
  %.022.i.i.i = phi i32 [ %i.bn, %bb.s ], [ %i.bj, %bb.o ], [ %i.bl, %bb.q ], [ 1, %bb.n ], [ %i.bp, %bb.t ] ; 2 uses
  %i.br = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bs = ptrtoint ptr %.026.i to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = zext i32 %.022.i.i.i to i64             ; 2 uses
  %i.bv = icmp slt i64 %i.bt, %i.bu
  br i1 %i.bv, label %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.u, !prof !155

bb.u:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.bw = icmp ugt i64 %.0.i, 99
  br i1 %i.bw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.bx = add i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.ca, %.lr.ph.i9.i.i ], [ %.0.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.ck, %.lr.ph.i9.i.i ], [ %i.bx, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.by = urem i64 %.020.i.i.i, 100
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bz ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !69
  %i.ce = zext i32 %.01819.i.i.i to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.ce
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !69
  %i.cg = load i8, ptr %i.cb, align 2, !tbaa !69
  %i.ch = add i32 %.01819.i.i.i, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.ci
  store i8 %i.cg, ptr %i.cj, align 1, !tbaa !69
  %i.ck = add i32 %.01819.i.i.i, -2
  %i.cl = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.cl, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !13

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.u
  %.0.lcssa.i.i.i = phi i64 [ %.0.i, %bb.u ], [ %i.ca, %.lr.ph.i9.i.i ] ; 3 uses
  %i.cm = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.co = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !69
  %i.cr = getelementptr inbounds nuw i8, ptr %.026.i, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !69
  %i.cs = load i8, ptr %i.co, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.ct = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.cu = or disjoint i8 %i.ct, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i: ; preds = %bb.w, %bb.v
  %storemerge.i.i.i = phi i8 [ %i.cu, %bb.w ], [ %i.cs, %bb.v ]
  store i8 %storemerge.i.i.i, ptr %.026.i, align 1, !tbaa !69
  %i.cv = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.bu
  %.pre = ptrtoint ptr %i.cv to i64
  br label %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit

_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit: ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i
  %.pre-phi = phi i64 [ %i.br, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %.pre, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i ]
  %i.cw = ptrtoint ptr %i.a to i64
  %i.cx = sub i64 %.pre-phi, %i.cw
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.a, i64 noundef %i.cx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN4toml2v34impl15print_to_streamERSolNS0_11value_flagsEm.exit28

_ZN4toml2v34impl15print_to_streamERSolNS0_11value_flagsEm.exit28: ; preds = %.preheader35.preheader, %.preheader33.preheader, %.preheader.preheader, %bb.i, %bb.f, %bb.k, %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueIdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.0.copyload.i = load i64, ptr %i.a, align 8    ; 4 uses
  %i.b = and i64 %.0.copyload.i, 9218868437227405312
  %.not.i7 = icmp eq i64 %i.b, 9218868437227405312
  br i1 %.not.i7, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.0.copyload.i, 4503599627370495
  %.not4.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not5.i = icmp sgt i64 %.0.copyload.i, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122  ; 2 uses
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.k = bitcast i64 %.0.copyload.i to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !125
  %i.p = and i64 %i.o, 2048
  %.not.i6 = icmp ne i64 %i.p, 0
  tail call void @_ZN4toml2v34impl15print_to_streamERSodNS0_11value_flagsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.k, i16 noundef zeroext 0, i1 noundef zeroext %.not.i6)
  br label %bb.k

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0.ph = phi ptr [ %i.j, %bb.f ], [ %i.g, %bb.e ], [ %i.f, %bb.d ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !125
  %i.s = and i64 %i.r, 2
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !130  ; 4 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 34) ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.0.ph, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.ph, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 34) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.0.0.copyload = load i64, ptr %.0.ph, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ph, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !124
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.z, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueIbEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !258, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.v = select i1 %i.c, i64 64, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.v ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.j, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %2 = and i64 %i.b, 1
  %.not.i3 = icmp eq i64 %2, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.b, 4
  %.not.i.not = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not.i.not, i8 34, i8 39      ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext %i.g) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %i.e)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext %i.g) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.j, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %2 = and i64 %i.b, 1
  %.not.i3 = icmp eq i64 %2, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.b, 4
  %.not.i.not = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not.i.not, i8 34, i8 39      ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext %i.g) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %i.e)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext %i.g) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.j, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_6stdopt9date_timeEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(58) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %2 = and i64 %i.b, 1
  %.not.i3 = icmp eq i64 %2, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.b, 4
  %.not.i.not = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not.i.not, i8 34, i8 39      ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext %i.g) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.e)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 84) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.l = load i8, ptr %i.k, align 2, !tbaa !103, !range !104, !noundef !105
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN4toml2v34impl25print_to_stream_bookendedINS0_6stdopt9date_timeEcEEvRSoRKT_RKT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_11time_offsetE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.n)
  br label %_ZN4toml2v34impl25print_to_stream_bookendedINS0_6stdopt9date_timeEcEEvRSoRKT_RKT0_.exit

_ZN4toml2v34impl25print_to_stream_bookendedINS0_6stdopt9date_timeEcEEvRSoRKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext %i.g) ; 0 uses
  br label %_ZN4toml2v34impl15print_to_streamERSoRKNS0_6stdopt9date_timeE.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.e)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 84) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.s = load i8, ptr %i.r, align 2, !tbaa !103, !range !104, !noundef !105
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %_ZN4toml2v34impl15print_to_streamERSoRKNS0_6stdopt9date_timeE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_11time_offsetE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.u)
  br label %_ZN4toml2v34impl15print_to_streamERSoRKNS0_6stdopt9date_timeE.exit

_ZN4toml2v34impl15print_to_streamERSoRKNS0_6stdopt9date_timeE.exit: ; preds = %bb.e, %bb.d, %_ZN4toml2v34impl25print_to_stream_bookendedINS0_6stdopt9date_timeEcEEvRSoRKT_RKT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.v, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i8 %2, 2
  tail call void @llvm.assume(i1 %i.a)
  switch i8 %2, label %bb.m [
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
    i8 8, label %bb.i
    i8 9, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(69) %0, i64 %i.e, ptr %i.c, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter5printERKNS0_5valueIlEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(50) %1)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter5printERKNS0_5valueIdEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(50) %1)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !258, !range !104, !noundef !105
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.v.i = select i1 %i.h, i64 64, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.v.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.o, align 4, !tbaa !129
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !125  ; 2 uses
  %3 = and i64 %i.q, 1
  %.not.i3.i = icmp eq i64 %3, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !130  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i64 %i.q, 4
  %.not.i.not.i = icmp eq i64 %i.u, 0
  %i.v = select i1 %.not.i.not.i, i8 34, i8 39    ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext %i.v) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull readonly align 2 dereferenceable(4) %i.t)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext %i.v) ; 0 uses
  br label %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull readonly align 2 dereferenceable(4) %i.t)
  br label %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE.exit

_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE.exit: ; preds = %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.y, align 4, !tbaa !129
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !125 ; 2 uses
  %4 = and i64 %i.aa, 1
  %.not.i3.i9 = icmp eq i64 %4, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !130 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = and i64 %i.aa, 4
  %.not.i.not.i10 = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not.i.not.i10, i8 34, i8 39 ; 2 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef signext %i.af) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.ad)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef signext %i.af) ; 0 uses
  br label %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.ad)
  br label %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE.exit

_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE.exit: ; preds = %bb.j, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.ai, align 4, !tbaa !129
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_6stdopt9date_timeEEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(58) %1)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  unreachable

bb.n:                                             ; preds = %bb.l, %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE.exit, %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE.exit, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN4toml2v34impl9formatter24dump_failed_parse_resultEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69) %0) local_unnamed_addr #27 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter29print_pending_table_separatorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !330, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.d, align 4, !tbaa !129
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.d, align 4, !tbaa !129
  store i8 0, ptr %i.a, align 8, !tbaa !330
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter5printERKNS0_3keyE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(69) %0, i64 %i.c, ptr %i.a, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(89) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.40, i64 noundef 2) ; 0 uses
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.41, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.f, align 4, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !197, !noalias !713 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.not27 = icmp eq ptr %i.j, %i.k
  br i1 %.not27, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174  ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.pre31 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !66
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %.pre31, ptr %.pre, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.p = load i64, ptr %i.l, align 8, !tbaa !125
  %i.q = and i64 %i.p, 4096
  %.not.i.i.not.peel = icmp eq i64 %i.q, 0
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  br i1 %.not.i.i.not.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.44, i64 noundef 3) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 0, ptr %i.f, align 4, !tbaa !129
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i8 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #52 ; 3 uses
  %i.y = icmp ne i8 %i.x, 0
  tail call void @llvm.assume(i1 %i.y)
  switch i8 %i.x, label %bb.j [
    i8 1, label %bb.i
    i8 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5arrayE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.n)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.n)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i8 noundef zeroext %i.x)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.j) #52 ; 2 uses
  %.not.peel = icmp eq ptr %i.z, %i.k
  br i1 %.not.peel, label %._crit_edge, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.peel.next

._crit_edge:                                      ; preds = %bb.r, %bb.k, %bb.c
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.45, i64 noundef 2) ; 0 uses
  br label %bb.s

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.peel.next: ; preds = %bb.k, %bb.r
  %.sroa.024.028 = phi ptr [ %i.au, %bb.r ], [ %i.z, %bb.k ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !174 ; 5 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.42, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.f, align 4, !tbaa !129
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !67
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %i.aj, ptr %i.ah, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !125
  %i.al = and i64 %i.ak, 4096
  %.not.i.i.not = icmp eq i64 %i.al, 0
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !130 ; 2 uses
  br i1 %.not.i.i.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.peel.next
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.peel.next
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.44, i64 noundef 3) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i8 0, ptr %i.f, align 4, !tbaa !129
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i8 %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #52 ; 3 uses
  %i.at = icmp ne i8 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  switch i8 %i.as, label %bb.q [
    i8 1, label %bb.o
    i8 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.ae)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5arrayE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
  br label %bb.r

bb.q:                                             ; preds = %bb.n
end_hunk_1
begin_hunk_2_@_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.w = load i8, ptr %i.v, align 1, !tbaa !69
  %i.x = add nsw i32 %.031.i, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !69
  %i.aa = add nsw i32 %.031.i, -2
  %i.ab = icmp ugt i64 %.02830.i, 65535
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.028.lcssa.i = phi i64 [ %2, %bb.e ], [ %i.u, %.lr.ph.i ] ; 4 uses
  %i.ac = icmp samesign ugt i64 %.028.lcssa.i, 15
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = and i64 %.028.lcssa.i, 15
  %i.ae = lshr i64 %.028.lcssa.i, 4
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.028.pn.i = phi i64 [ %i.ae, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ai = icmp ult i64 %2, 10
  br i1 %i.ai, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.029.i.i = phi i32 [ %i.aq, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ap, %bb.n ], [ %2, %bb.h ] ; 5 uses
  %i.aj = icmp ult i64 %.02328.i.i, 100
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ap = udiv i64 %.02328.i.i, 10000
  %i.aq = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ar = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ar, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ak, %bb.i ], [ %i.am, %bb.k ], [ 1, %bb.h ], [ %i.aq, %bb.n ] ; 2 uses
  %i.as = ptrtoint ptr %1 to i64
  %i.at = ptrtoint ptr %0 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = zext i32 %.022.i.i to i64               ; 3 uses
  %i.aw = icmp slt i64 %i.au, %i.av
  br i1 %i.aw, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.o, !prof !155

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ax = icmp ugt i64 %2, 99
  br i1 %i.ax, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.ay = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bb, %.lr.ph.i9.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bl, %.lr.ph.i9.i ], [ %i.ay, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = urem i64 %.020.i.i, 100
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !69
  %i.bf = zext i32 %.01819.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !69
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !69
  %i.bi = add i32 %.01819.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !69
  %i.bl = add i32 %.01819.i.i, -2
  %i.bm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.o
  %.0.lcssa.i.i = phi i64 [ %2, %bb.o ], [ %i.bb, %.lr.ph.i9.i ] ; 3 uses
  %i.bn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !69
  %i.bt = load i8, ptr %i.bp, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bu = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bv = or disjoint i8 %i.bu, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %.lhs.trunc.i = sub nuw nsw i8 66, %i.bx
  %i.by = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.bz = ptrtoint ptr %1 to i64
  %i.ca = ptrtoint ptr %0 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = zext nneg i8 %i.by to i64               ; 2 uses
  %i.cd = icmp slt i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.s, !prof !155

bb.s:                                             ; preds = %bb.r
  %i.ce = icmp ugt i64 %2, 63
  br i1 %i.ce, label %.lr.ph.preheader.i37, label %._crit_edge.i29

.lr.ph.preheader.i37:                             ; preds = %bb.s
  %.zext.i = zext nneg i8 %i.by to i32
  %i.cf = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.preheader.i37
  %.031.i39 = phi i32 [ %i.cs, %.lr.ph.i38 ], [ %i.cf, %.lr.ph.preheader.i37 ] ; 3 uses
  %.02830.i40 = phi i64 [ %i.cl, %.lr.ph.i38 ], [ %2, %.lr.ph.preheader.i37 ] ; 3 uses
  %i.cg = trunc i64 %.02830.i40 to i8             ; 2 uses
  %i.ch = and i8 %i.cg, 7
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = zext i32 %.031.i39 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !69
  %i.cl = lshr i64 %.02830.i40, 6                 ; 2 uses
  %i.cm = lshr i8 %i.cg, 3
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = add nsw i32 %.031.i39, -1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !69
  %i.cs = add nsw i32 %.031.i39, -2
  %i.ct = icmp ugt i64 %.02830.i40, 4095
  br i1 %i.ct, label %.lr.ph.i38, label %._crit_edge.i29, !llvm.loop !42

._crit_edge.i29:                                  ; preds = %.lr.ph.i38, %bb.s
  %.028.lcssa.i30 = phi i64 [ %2, %bb.s ], [ %i.cl, %.lr.ph.i38 ] ; 4 uses
  %i.cu = icmp samesign ugt i64 %.028.lcssa.i30, 7
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i29
  %i.cv = lshr i64 %.028.lcssa.i30, 3
  %i.cw = trunc nuw nsw i64 %.028.lcssa.i30 to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i29
  %storemerge.in.in.i = phi i64 [ %i.cv, %bb.t ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.v:                                             ; preds = %bb.c
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 5 uses
  %i.db = sub nuw nsw i64 64, %i.da               ; 4 uses
  %i.dc = ptrtoint ptr %1 to i64
  %i.dd = ptrtoint ptr %0 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp slt i64 %i.de, %i.db
  br i1 %i.df, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.v
  %.not16.i = icmp eq i64 %i.da, 63
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i64 %i.da, 63                     ; 3 uses
  %4 = trunc nuw nsw i64 %.015.i to i32
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dg = trunc i64 %2 to i8
  %i.dh = and i8 %i.dg, 1
  %i.di = or disjoint i8 %i.dh, 48
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.015.i
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !69
  %i.dk = lshr i64 %2, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.da
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i64 [ %2, %.lr.ph.preheader.i41 ], [ %i.dk, %.lr.ph.i42.prol ]
  %i.dl = icmp eq i64 %i.da, 62
  br i1 %i.dl, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.dw, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dm = trunc i64 %.01317.i to i8
  %i.dn = and i8 %i.dm, 1
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !69
  %i.dq = lshr i64 %.01317.i, 1
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = and i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !69
  %i.dw = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dx = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !43

bb.w:                                             ; preds = %bb.c
  %i.dy = mul nsw i32 %3, %3                      ; 2 uses
  %i.dz = mul i32 %i.dy, %3                       ; 2 uses
  %i.ea = mul i32 %i.dz, %3
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = zext i32 %3 to i64                      ; 3 uses
  %i.ed = icmp ult i64 %2, %i.ec
  br i1 %i.ed, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.w
  %i.ee = zext nneg i32 %i.dy to i64
  %i.ef = zext i32 %i.dz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i.i48
  %.029.i.i49 = phi i32 [ 1, %.lr.ph.i.i48 ], [ %i.en, %bb.ad ] ; 4 uses
  %.02328.i.i50 = phi i64 [ %2, %.lr.ph.i.i48 ], [ %i.em, %bb.ad ] ; 4 uses
  %i.eg = icmp ult i64 %.02328.i.i50, %i.ee
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = add i32 %.029.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.z:                                             ; preds = %bb.x
  %i.ei = icmp ult i64 %.02328.i.i50, %i.ef
  br i1 %i.ei, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = add i32 %.029.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ab:                                            ; preds = %bb.z
  %i.ek = icmp ult i64 %.02328.i.i50, %i.eb
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.el = add i32 %.029.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ad:                                            ; preds = %bb.ab
  %i.em = udiv i64 %.02328.i.i50, %i.eb           ; 2 uses
  %i.en = add i32 %.029.i.i49, 4                  ; 2 uses
  %i.eo = icmp ult i64 %i.em, %i.ec
  br i1 %i.eo, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, label %bb.x, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51:  ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %.022.i.i52 = phi i32 [ %i.el, %bb.ac ], [ %i.eh, %bb.y ], [ %i.ej, %bb.aa ], [ %i.en, %bb.ad ] ; 2 uses
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = ptrtoint ptr %0 to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.et = icmp slt i64 %i.er, %i.es
  br i1 %i.et, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i53, !prof !155

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.w
  %i.eu = ptrtoint ptr %1 to i64
  %i.ev = ptrtoint ptr %0 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp slt i64 %i.ew, 1
  br i1 %i.ex, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !155

.preheader.i53:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51
  %i.ey = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader.i53
  %.0.in27.i = phi i32 [ %.022.i.i52, %.preheader.i53 ], [ %.0.i, %bb.ae ]
  %.02026.i = phi i64 [ %2, %.preheader.i53 ], [ %i.ez, %bb.ae ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.ez = udiv i64 %.02026.i, %i.ey               ; 3 uses
  %i.fa = urem i64 %.02026.i, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !69
  %i.fd = zext i32 %.0.i to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %i.fd
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !69
  %.not.i55 = icmp ult i64 %i.ez, %i.ec
  br i1 %.not.i55, label %._crit_edge.i56, label %bb.ae, !llvm.loop !44

._crit_edge.i56:                                  ; preds = %bb.ae, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.ff = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.es, %bb.ae ]
  %.020.lcssa.i = phi i64 [ %2, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.ez, %bb.ae ]
  %i.fg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fh, %._crit_edge.i56 ], [ %i.bt, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bv, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.ff, %._crit_edge.i56 ], [ %i.av, %bb.p ], [ %i.cc, %bb.u ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.av, %bb.q ], [ %i.db, %.preheader.i ], [ %i.db, %.lr.ph.i42 ], [ %i.db, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !69
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fi, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #39

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4toml2v34impl7impl_ex6parser12parse_stringEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105
  %i.c = load i32, ptr %i.b, align 4, !tbaa !241  ; 4 uses
  %i.d = icmp eq i32 %i.c, 39                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !212
  store i64 6, ptr %i.e, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store ptr @.str.82, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3432
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3440
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !155

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.j, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.ac

bb.g:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.i, align 8, !tbaa !334  ; 2 uses
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not16 = icmp eq ptr %i.n, null
end_hunk_2
begin_hunk_3_@_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %.028.lcssa.i = phi i64 [ %.0, %bb.h ], [ %i.y, %.lr.ph.i ] ; 4 uses
  %i.ag = icmp samesign ugt i64 %.028.lcssa.i, 15
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ah = and i64 %.028.lcssa.i, 15
  %i.ai = lshr i64 %.028.lcssa.i, 4
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.028.pn.i = phi i64 [ %i.ai, %bb.i ], [ %.028.lcssa.i, %._crit_edge.i ]
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.an = icmp ult i64 %.0, 10
  br i1 %i.an, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.029.i.i = phi i32 [ %i.av, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.au, %bb.q ], [ %.0, %bb.k ] ; 5 uses
  %i.ao = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.aq = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.as = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.au = udiv i64 %.02328.i.i, 10000
  %i.av = add i32 %.029.i.i, 4                    ; 2 uses
  %i.aw = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.aw, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.at, %bb.p ], [ %i.ap, %bb.l ], [ %i.ar, %bb.n ], [ 1, %bb.k ], [ %i.av, %bb.q ] ; 2 uses
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = ptrtoint ptr %.026 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = zext i32 %.022.i.i to i64               ; 2 uses
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.r, !prof !155

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bc = icmp ugt i64 %.0, 99
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bd = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bg, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bq, %.lr.ph.i9.i ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.be = urem i64 %.020.i.i, 100
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !69
  %i.bk = zext i32 %.01819.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !69
  %i.bm = load i8, ptr %i.bh, align 2, !tbaa !69
  %i.bn = add i32 %.01819.i.i, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !69
  %i.bq = add i32 %.01819.i.i, -2
  %i.br = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.br, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.r
  %.0.lcssa.i.i = phi i64 [ %.0, %bb.r ], [ %i.bg, %.lr.ph.i9.i ] ; 3 uses
  %i.bs = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !69
  %i.by = load i8, ptr %i.bu, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.bz = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ca = or disjoint i8 %i.bz, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.ca, %bb.t ], [ %i.by, %bb.s ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ba
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.u:                                             ; preds = %bb.f
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false)
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %.lhs.trunc.i = sub nuw nsw i8 66, %i.cd
  %i.ce = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.cf = ptrtoint ptr %1 to i64
  %i.cg = ptrtoint ptr %.026 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = zext nneg i8 %i.ce to i64               ; 2 uses
  %i.cj = icmp slt i64 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.v, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp ugt i64 %.0, 63
  br i1 %i.ck, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %.zext.i = zext nneg i8 %i.ce to i32
  %i.cl = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.cy, %.lr.ph.i43 ], [ %i.cl, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i64 [ %i.cr, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.cm = trunc i64 %.02830.i45 to i8             ; 2 uses
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = zext i32 %.031.i44 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !69
  %i.cr = lshr i64 %.02830.i45, 6                 ; 2 uses
  %i.cs = lshr i8 %i.cm, 3
  %i.ct = and i8 %i.cs, 7
  %i.cu = or disjoint i8 %i.ct, 48
  %i.cv = add nsw i32 %.031.i44, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cw
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !69
  %i.cy = add nsw i32 %.031.i44, -2
  %i.cz = icmp ugt i64 %.02830.i45, 4095
  br i1 %i.cz, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !42

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.v
  %.028.lcssa.i35 = phi i64 [ %.0, %bb.v ], [ %i.cr, %.lr.ph.i43 ] ; 4 uses
  %i.da = icmp samesign ugt i64 %.028.lcssa.i35, 7
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i34
  %i.db = lshr i64 %.028.lcssa.i35, 3
  %i.dc = trunc nuw nsw i64 %.028.lcssa.i35 to i8
  %i.dd = and i8 %i.dc, 7
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.de, ptr %i.df, align 1, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i34
  %storemerge.in.in.i = phi i64 [ %i.db, %bb.w ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.dg = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ci
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false) ; 6 uses
  %i.di = sub nuw nsw i64 64, %i.dh               ; 2 uses
  %i.dj = ptrtoint ptr %1 to i64
  %i.dk = ptrtoint ptr %.026 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp slt i64 %i.dl, %i.di
  br i1 %i.dm, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.y
  %.not16.i = icmp eq i64 %i.dh, 63
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nuw nsw i64 63, %i.dh             ; 2 uses
  %4 = trunc nuw nsw i64 %i.dh to i32
  %5 = and i32 %4, 1
  %lcmp.mod.not.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i47.prol, label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.dn = trunc i64 %.0 to i8
  %i.do = and i8 %i.dn, 1
  %i.dp = or disjoint i8 %i.do, 48
  %i.dq = getelementptr inbounds nuw i8, ptr %.026, i64 %.015.i
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !69
  %i.dr = lshr i64 %.0, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.dh
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i64 [ %.0, %.lr.ph.preheader.i46 ], [ %i.dr, %.lr.ph.i47.prol ]
  %i.ds = icmp eq i64 %i.dh, 62
  br i1 %i.ds, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.ed, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.dt = trunc i64 %.01317.i to i8
  %i.du = and i8 %i.dt, 1
  %i.dv = or disjoint i8 %i.du, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !69
  %i.dx = lshr i64 %.01317.i, 1
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = and i8 %i.dy, 1
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.ec = getelementptr i8, ptr %i.eb, i64 -1
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !69
  %i.ed = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ee = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !43

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.ef = getelementptr inbounds nuw i8, ptr %.026, i64 %i.di
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.z:                                             ; preds = %bb.f
  %i.eg = mul nsw i32 %3, %3                      ; 2 uses
  %i.eh = mul i32 %i.eg, %3                       ; 2 uses
  %i.ei = mul i32 %i.eh, %3
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = zext i32 %3 to i64                      ; 3 uses
  %i.el = icmp ult i64 %.0, %i.ek
  br i1 %i.el, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.z
  %i.em = zext nneg i32 %i.eg to i64
  %i.en = zext i32 %i.eh to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.lr.ph.i.i53
  %.029.i.i54 = phi i32 [ 1, %.lr.ph.i.i53 ], [ %i.ev, %bb.ag ] ; 4 uses
  %.02328.i.i55 = phi i64 [ %.0, %.lr.ph.i.i53 ], [ %i.eu, %bb.ag ] ; 4 uses
  %i.eo = icmp ult i64 %.02328.i.i55, %i.em
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ep = add i32 %.029.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ac:                                            ; preds = %bb.aa
  %i.eq = icmp ult i64 %.02328.i.i55, %i.en
  br i1 %i.eq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.er = add i32 %.029.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ae:                                            ; preds = %bb.ac
  %i.es = icmp ult i64 %.02328.i.i55, %i.ej
  br i1 %i.es, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.et = add i32 %.029.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ag:                                            ; preds = %bb.ae
  %i.eu = udiv i64 %.02328.i.i55, %i.ej           ; 2 uses
  %i.ev = add i32 %.029.i.i54, 4                  ; 2 uses
  %i.ew = icmp ult i64 %i.eu, %i.ek
  br i1 %i.ew, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56, label %bb.aa, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56:  ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ab
  %.022.i.i57 = phi i32 [ %i.et, %bb.af ], [ %i.ep, %bb.ab ], [ %i.er, %bb.ad ], [ %i.ev, %bb.ag ] ; 2 uses
  %i.ex = ptrtoint ptr %1 to i64
  %i.ey = ptrtoint ptr %.026 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.fb = icmp slt i64 %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i58, !prof !155

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.z
  %i.fc = ptrtoint ptr %1 to i64
  %i.fd = ptrtoint ptr %.026 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.preheader.i58:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56
  %i.fg = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.preheader.i58
  %.0.in27.i = phi i32 [ %.022.i.i57, %.preheader.i58 ], [ %.0.i, %bb.ah ]
  %.02026.i = phi i64 [ %.0, %.preheader.i58 ], [ %i.fh, %bb.ah ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.fh = udiv i64 %.02026.i, %i.fg               ; 3 uses
  %i.fi = urem i64 %.02026.i, %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !69
  %i.fl = zext i32 %.0.i to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fl
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !69
  %.not.i60 = icmp ult i64 %i.fh, %i.ek
  br i1 %.not.i60, label %._crit_edge.i61, label %bb.ah, !llvm.loop !44

._crit_edge.i61:                                  ; preds = %bb.ah, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.fn = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fa, %bb.ah ]
  %.020.lcssa.i = phi i64 [ %.0, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fh, %bb.ah ]
  %i.fo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !69
  store i8 %i.fp, ptr %.026, align 1, !tbaa !69
  %i.fq = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fn
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56, %._crit_edge.i48, %bb.y, %bb.x, %bb.u, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.j, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.u ], [ %i.c, %bb.c ], [ %1, %bb.y ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.am, %bb.j ], [ %i.cb, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i ], [ %i.dg, %bb.x ], [ %i.ef, %._crit_edge.i48 ], [ %i.fq, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.u ], [ 0, %bb.c ], [ 75, %bb.y ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 0, %bb.j ], [ 0, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i ], [ 0, %bb.x ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v34nodeD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !40
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !40
  br label %_ZN4toml2v313source_regionD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4toml2v313source_regionD2Ev.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit

_ZN4toml2v313source_regionD2Ev.exit:              ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4toml2v35valueINS0_6stdopt9date_timeEED0Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_3
begin_hunk_4_@_ZSt12__to_chars_iIaENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.r = lshr i32 %.0, 4
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.r, %bb.h ], [ %.0, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.j:                                             ; preds = %bb.f
  %i.x = icmp samesign ult i32 %.0, 10
  br i1 %i.x, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.p
  %.030.i.i = phi i32 [ %i.af, %bb.p ], [ 1, %bb.j ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ae, %bb.p ], [ %.0, %bb.j ] ; 5 uses
  %i.y = icmp ult i32 %.02329.i.i, 100
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.z = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.aa = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ac = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ae = udiv i32 %.02329.i.i, 10000
  %i.af = add i32 %.030.i.i, 4                    ; 2 uses
  %i.ag = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.ag, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j
  %.022.i.i = phi i32 [ %i.ad, %bb.o ], [ %i.z, %bb.k ], [ %i.ab, %bb.m ], [ 1, %bb.j ], [ %i.af, %bb.p ] ; 2 uses
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = ptrtoint ptr %.026 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = zext i32 %.022.i.i to i64               ; 2 uses
  %i.al = icmp slt i64 %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.q, !prof !155

bb.q:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.am = icmp ugt i32 %.0, 99
  br i1 %i.am, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %i.an = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.aq, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bb, %.lr.ph.i9.i ], [ %i.an, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ao = urem i32 %.020.i.i, 100
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = zext i32 %.01819.i.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.026, i64 %i.av
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !69
  %i.ax = load i8, ptr %i.as, align 2, !tbaa !69
  %i.ay = add i32 %.01819.i.i, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.026, i64 %i.az
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !69
  %i.bb = add i32 %.01819.i.i, -2
  %i.bc = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bc, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.q
  %.0.lcssa.i.i = phi i32 [ %.0, %bb.q ], [ %i.aq, %.lr.ph.i9.i ] ; 3 uses
  %i.bd = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.be = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !69
  %i.bk = load i8, ptr %i.bg, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bl = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bm = or disjoint i8 %i.bl, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i: ; preds = %bb.s, %bb.r
  %storemerge.i.i = phi i8 [ %i.bm, %bb.s ], [ %i.bk, %bb.r ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ak
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.t:                                             ; preds = %bb.f
  %i.bo = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.bp = trunc nuw nsw i32 %i.bo to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.bp
  %i.bq = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = ptrtoint ptr %.026 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = zext nneg i8 %i.bq to i64               ; 2 uses
  %i.bv = icmp slt i64 %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.u, !prof !155

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp samesign ugt i32 %.0, 63
  br i1 %i.bw, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.u
  %.zext.i = zext nneg i8 %i.bq to i32
  %i.bx = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.ck, %.lr.ph.i43 ], [ %i.bx, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i32 [ %i.cd, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.by = trunc i32 %.02830.i45 to i8             ; 2 uses
  %i.bz = and i8 %i.by, 7
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = zext i32 %.031.i44 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !69
  %i.cd = lshr i32 %.02830.i45, 6                 ; 2 uses
  %i.ce = lshr i8 %i.by, 3
  %i.cf = and i8 %i.ce, 7
  %i.cg = or disjoint i8 %i.cf, 48
  %i.ch = add nsw i32 %.031.i44, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ci
  store i8 %i.cg, ptr %i.cj, align 1, !tbaa !69
  %i.ck = add nsw i32 %.031.i44, -2
  %i.cl = icmp ugt i32 %.02830.i45, 4095
  br i1 %i.cl, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !46

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.u
  %.028.lcssa.i35 = phi i32 [ %.0, %bb.u ], [ %i.cd, %.lr.ph.i43 ] ; 4 uses
  %i.cm = icmp samesign ugt i32 %.028.lcssa.i35, 7
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i34
  %i.cn = lshr i32 %.028.lcssa.i35, 3
  %i.co = trunc nuw nsw i32 %.028.lcssa.i35 to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !69
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i34
  %storemerge.in.in.i = phi i32 [ %i.cn, %bb.v ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.cs = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bu
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.x:                                             ; preds = %bb.f
  %i.ct = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false) ; 4 uses
  %i.cu = sub nuw nsw i32 32, %i.ct
  %i.cv = ptrtoint ptr %1 to i64
  %i.cw = ptrtoint ptr %.026 to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cz = icmp slt i64 %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.x
  %.not16.i = icmp eq i32 %i.ct, 31
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nsw i32 31, %i.ct                 ; 2 uses
  %i.da = zext i32 %.015.i to i64                 ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.db = trunc i32 %.0 to i8
  %i.dc = and i8 %i.db, 1
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = getelementptr inbounds nuw i8, ptr %.026, i64 %i.da
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !69
  %i.df = lshr i32 %.0, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.da, -1
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %i.da, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i32 [ %.0, %.lr.ph.preheader.i46 ], [ %i.df, %.lr.ph.i47.prol ]
  %i.dg = icmp eq i32 %i.ct, 30
  br i1 %i.dg, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i32 [ %i.dr, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.dh = trunc i32 %.01317.i to i8
  %i.di = and i8 %i.dh, 1
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !69
  %i.dl = lshr i32 %.01317.i, 1
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = and i8 %i.dm, 1
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.dq = getelementptr i8, ptr %i.dp, i64 -1
  store i8 %i.do, ptr %i.dq, align 1, !tbaa !69
  %i.dr = lshr i32 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ds = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !47

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.dt = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cy
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.du = mul nsw i32 %3, %3                      ; 2 uses
  %i.dv = mul i32 %i.du, %3                       ; 2 uses
  %i.dw = mul i32 %i.dv, %3                       ; 2 uses
  %i.dx = icmp ult i32 %.0, %3
  br i1 %i.dx, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.y, %bb.ae
  %.030.i.i54 = phi i32 [ %i.ef, %bb.ae ], [ 1, %bb.y ] ; 4 uses
  %.02329.i.i55 = phi i32 [ %i.ee, %bb.ae ], [ %.0, %bb.y ] ; 4 uses
  %i.dy = icmp ult i32 %.02329.i.i55, %i.du
  br i1 %i.dy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i53
  %i.dz = add i32 %.030.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.aa:                                            ; preds = %.lr.ph.i.i53
  %i.ea = icmp ult i32 %.02329.i.i55, %i.dv
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eb = add i32 %.030.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ac:                                            ; preds = %bb.aa
  %i.ec = icmp ult i32 %.02329.i.i55, %i.dw
  br i1 %i.ec, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = add i32 %.030.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ae:                                            ; preds = %bb.ac
  %i.ee = udiv i32 %.02329.i.i55, %i.dw           ; 2 uses
  %i.ef = add i32 %.030.i.i54, 4                  ; 2 uses
  %i.eg = icmp ult i32 %i.ee, %3
  br i1 %i.eg, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, label %.lr.ph.i.i53, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56:  ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.z
  %.022.i.i57 = phi i32 [ %i.ed, %bb.ad ], [ %i.dz, %bb.z ], [ %i.eb, %bb.ab ], [ %i.ef, %bb.ae ] ; 2 uses
  %i.eh = ptrtoint ptr %1 to i64
  %i.ei = ptrtoint ptr %.026 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.el = icmp slt i64 %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i59, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.y
  %i.em = ptrtoint ptr %1 to i64
  %i.en = ptrtoint ptr %.026 to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp slt i64 %i.eo, 1
  br i1 %i.ep, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.lr.ph.i59:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %.lr.ph.i59
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i59 ], [ %.022.i.i57, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ]
  %.02027.i = phi i32 [ %i.eq, %.lr.ph.i59 ], [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.eq = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.er = urem i32 %.02027.i, %3
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !69
  %i.ev = zext i32 %.0.i to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ev
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !69
  %.not.i60 = icmp ult i32 %i.eq, %3
  br i1 %.not.i60, label %._crit_edge.i61, label %.lr.ph.i59, !llvm.loop !48

._crit_edge.i61:                                  ; preds = %.lr.ph.i59, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.ex = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.ek, %.lr.ph.i59 ]
  %.020.lcssa.i = phi i32 [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.eq, %.lr.ph.i59 ]
  %i.ey = zext i32 %.020.lcssa.i to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !69
  store i8 %i.fa, ptr %.026, align 1, !tbaa !69
  %i.fb = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ex
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %._crit_edge.i48, %bb.x, %bb.w, %bb.t, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.i, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.t ], [ %i.d, %bb.c ], [ %1, %bb.x ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.w, %bb.i ], [ %i.bn, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ %i.cs, %bb.w ], [ %i.dt, %._crit_edge.i48 ], [ %i.fb, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.t ], [ 0, %bb.c ], [ 75, %bb.x ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 0, %bb.i ], [ 0, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ 0, %bb.w ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #39

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIsENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = sext i16 %2 to i32                       ; 2 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %2, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %0, align 1, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp slt i16 %2, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !69
  %i.g = sub nsw i32 0, %i.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.026 = phi ptr [ %i.f, %bb.e ], [ %0, %bb.d ]  ; 29 uses
  %.0 = phi i32 [ %i.g, %bb.e ], [ %i.a, %bb.d ]  ; 21 uses
  switch i32 %3, label %bb.z [
    i32 16, label %bb.g
    i32 10, label %bb.k
    i32 8, label %bb.u
    i32 2, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.i = sub nuw nsw i32 35, %i.h
  %i.j = lshr i32 %i.i, 2                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.026 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = zext nneg i32 %i.j to i64                ; 2 uses
  %i.o = icmp slt i64 %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.p = icmp samesign ugt i32 %.0, 255
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.q = add nsw i32 %i.j, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.0, %.lr.ph.preheader.i ] ; 4 uses
  %i.r = and i32 %.02830.i, 15
  %i.s = lshr i32 %.02830.i, 4
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !69
  %i.w = zext i32 %.031.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.026, i64 %i.w
  store i8 %i.v, ptr %i.x, align 1, !tbaa !69
end_hunk_4
begin_hunk_5_@_ZSt12__to_chars_iIsENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.ak = lshr i32 %.028.lcssa.i, 4
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.ak, %bb.i ], [ %.028.lcssa.i, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.aq = icmp samesign ult i32 %.0, 10
  br i1 %i.aq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.030.i.i = phi i32 [ %i.ay, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ax, %bb.q ], [ %.0, %bb.k ] ; 5 uses
  %i.ar = icmp ult i32 %.02329.i.i, 100
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.as = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.av = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ax = udiv i32 %.02329.i.i, 10000
  %i.ay = add i32 %.030.i.i, 4                    ; 2 uses
  %i.az = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.az, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.aw, %bb.p ], [ %i.as, %bb.l ], [ %i.au, %bb.n ], [ 1, %bb.k ], [ %i.ay, %bb.q ] ; 2 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = ptrtoint ptr %.026 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = zext i32 %.022.i.i to i64               ; 2 uses
  %i.be = icmp slt i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.r, !prof !155

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bf = icmp ugt i32 %.0, 99
  br i1 %i.bf, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bg = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.bj, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bu, %.lr.ph.i9.i ], [ %i.bg, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bh = urem i32 %.020.i.i, 100
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !69
  %i.bo = zext i32 %.01819.i.i to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !69
  %i.bq = load i8, ptr %i.bl, align 2, !tbaa !69
  %i.br = add i32 %.01819.i.i, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !69
  %i.bu = add i32 %.01819.i.i, -2
  %i.bv = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.r
  %.0.lcssa.i.i = phi i32 [ %.0, %bb.r ], [ %i.bj, %.lr.ph.i9.i ] ; 3 uses
  %i.bw = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bx = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !69
  %i.cd = load i8, ptr %i.bz, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.ce = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.cf = or disjoint i8 %i.ce, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.cf, %bb.t ], [ %i.cd, %bb.s ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bd
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.u:                                             ; preds = %bb.f
  %i.ch = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.ci
  %i.cj = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.ck = ptrtoint ptr %1 to i64
  %i.cl = ptrtoint ptr %.026 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = zext nneg i8 %i.cj to i64               ; 2 uses
  %i.co = icmp slt i64 %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.v, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.cp = icmp samesign ugt i32 %.0, 63
  br i1 %i.cp, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %.zext.i = zext nneg i8 %i.cj to i32
  %i.cq = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.dd, %.lr.ph.i43 ], [ %i.cq, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i32 [ %i.cw, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.cr = trunc i32 %.02830.i45 to i8             ; 2 uses
  %i.cs = and i8 %i.cr, 7
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = zext i32 %.031.i44 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cu
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !69
  %i.cw = lshr i32 %.02830.i45, 6                 ; 2 uses
  %i.cx = lshr i8 %i.cr, 3
  %i.cy = and i8 %i.cx, 7
  %i.cz = or disjoint i8 %i.cy, 48
  %i.da = add nsw i32 %.031.i44, -1
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.026, i64 %i.db
  store i8 %i.cz, ptr %i.dc, align 1, !tbaa !69
  %i.dd = add nsw i32 %.031.i44, -2
  %i.de = icmp ugt i32 %.02830.i45, 4095
  br i1 %i.de, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !46

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.v
  %.028.lcssa.i35 = phi i32 [ %.0, %bb.v ], [ %i.cw, %.lr.ph.i43 ] ; 4 uses
  %i.df = icmp samesign ugt i32 %.028.lcssa.i35, 7
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i34
  %i.dg = lshr i32 %.028.lcssa.i35, 3
  %i.dh = trunc nuw nsw i32 %.028.lcssa.i35 to i8
  %i.di = and i8 %i.dh, 7
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i34
  %storemerge.in.in.i = phi i32 [ %i.dg, %bb.w ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.dl = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cn
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dm = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false) ; 4 uses
  %i.dn = sub nuw nsw i32 32, %i.dm
  %i.do = ptrtoint ptr %1 to i64
  %i.dp = ptrtoint ptr %.026 to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.ds = icmp slt i64 %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.y
  %.not16.i = icmp eq i32 %i.dm, 31
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nsw i32 31, %i.dm                 ; 2 uses
  %i.dt = zext i32 %.015.i to i64                 ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.du = trunc i32 %.0 to i8
  %i.dv = and i8 %i.du, 1
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = getelementptr inbounds nuw i8, ptr %.026, i64 %i.dt
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !69
  %i.dy = lshr i32 %.0, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.dt, -1
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %i.dt, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i32 [ %.0, %.lr.ph.preheader.i46 ], [ %i.dy, %.lr.ph.i47.prol ]
  %i.dz = icmp eq i32 %i.dm, 30
  br i1 %i.dz, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i32 [ %i.ek, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.ea = trunc i32 %.01317.i to i8
  %i.eb = and i8 %i.ea, 1
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !69
  %i.ee = lshr i32 %.01317.i, 1
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = and i8 %i.ef, 1
  %i.eh = or disjoint i8 %i.eg, 48
  %i.ei = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  store i8 %i.eh, ptr %i.ej, align 1, !tbaa !69
  %i.ek = lshr i32 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.el = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.el, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !47

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.em = getelementptr inbounds nuw i8, ptr %.026, i64 %i.dr
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.z:                                             ; preds = %bb.f
  %i.en = mul nsw i32 %3, %3                      ; 2 uses
  %i.eo = mul i32 %i.en, %3                       ; 2 uses
  %i.ep = mul i32 %i.eo, %3                       ; 2 uses
  %i.eq = icmp ult i32 %.0, %3
  br i1 %i.eq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.z, %bb.af
  %.030.i.i54 = phi i32 [ %i.ey, %bb.af ], [ 1, %bb.z ] ; 4 uses
  %.02329.i.i55 = phi i32 [ %i.ex, %bb.af ], [ %.0, %bb.z ] ; 4 uses
  %i.er = icmp ult i32 %.02329.i.i55, %i.en
  br i1 %i.er, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i53
  %i.es = add i32 %.030.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ab:                                            ; preds = %.lr.ph.i.i53
  %i.et = icmp ult i32 %.02329.i.i55, %i.eo
  br i1 %i.et, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = add i32 %.030.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ad:                                            ; preds = %bb.ab
  %i.ev = icmp ult i32 %.02329.i.i55, %i.ep
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ew = add i32 %.030.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.af:                                            ; preds = %bb.ad
  %i.ex = udiv i32 %.02329.i.i55, %i.ep           ; 2 uses
  %i.ey = add i32 %.030.i.i54, 4                  ; 2 uses
  %i.ez = icmp ult i32 %i.ex, %3
  br i1 %i.ez, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, label %.lr.ph.i.i53, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56:  ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa
  %.022.i.i57 = phi i32 [ %i.ew, %bb.ae ], [ %i.es, %bb.aa ], [ %i.eu, %bb.ac ], [ %i.ey, %bb.af ] ; 2 uses
  %i.fa = ptrtoint ptr %1 to i64
  %i.fb = ptrtoint ptr %.026 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.fe = icmp slt i64 %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i59, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.z
  %i.ff = ptrtoint ptr %1 to i64
  %i.fg = ptrtoint ptr %.026 to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = icmp slt i64 %i.fh, 1
  br i1 %i.fi, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.lr.ph.i59:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %.lr.ph.i59
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i59 ], [ %.022.i.i57, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ]
  %.02027.i = phi i32 [ %i.fj, %.lr.ph.i59 ], [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.fj = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.fk = urem i32 %.02027.i, %3
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !69
  %i.fo = zext i32 %.0.i to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fo
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !69
  %.not.i60 = icmp ult i32 %i.fj, %3
  br i1 %.not.i60, label %._crit_edge.i61, label %.lr.ph.i59, !llvm.loop !48

._crit_edge.i61:                                  ; preds = %.lr.ph.i59, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.fq = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fd, %.lr.ph.i59 ]
  %.020.lcssa.i = phi i32 [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fj, %.lr.ph.i59 ]
  %i.fr = zext i32 %.020.lcssa.i to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !69
  store i8 %i.ft, ptr %.026, align 1, !tbaa !69
  %i.fu = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fq
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %._crit_edge.i48, %bb.y, %bb.x, %bb.u, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.j, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.u ], [ %i.d, %bb.c ], [ %1, %bb.y ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.ap, %bb.j ], [ %i.cg, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ %i.dl, %bb.x ], [ %i.em, %._crit_edge.i48 ], [ %i.fu, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.u ], [ 0, %bb.c ], [ 75, %bb.y ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 0, %bb.j ], [ 0, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ 0, %bb.x ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %0, align 1, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.d:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !69
  %i.f = sub i32 0, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.026 = phi ptr [ %i.e, %bb.e ], [ %0, %bb.d ]  ; 29 uses
  %.0 = phi i32 [ %i.f, %bb.e ], [ %2, %bb.d ]    ; 21 uses
  switch i32 %3, label %bb.z [
    i32 16, label %bb.g
    i32 10, label %bb.k
    i32 8, label %bb.u
    i32 2, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.h = sub nuw nsw i32 35, %i.g
  %i.i = lshr i32 %i.h, 2                         ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %.026 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = zext nneg i32 %i.i to i64                ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ugt i32 %.0, 255
  br i1 %i.o, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.p = add nsw i32 %i.i, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i32 [ %i.y, %.lr.ph.i ], [ %.0, %.lr.ph.preheader.i ] ; 4 uses
  %i.q = and i32 %.02830.i, 15
  %i.r = lshr i32 %.02830.i, 4
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !69
  %i.v = zext i32 %.031.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1, !tbaa !69
  %i.x = and i32 %i.r, 15
  %i.y = lshr i32 %.02830.i, 8                    ; 2 uses
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.z
end_hunk_5
begin_hunk_6_@_ZSt12__to_chars_iIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.aj = lshr i32 %.028.lcssa.i, 4
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.aj, %bb.i ], [ %.028.lcssa.i, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %.026, i64 %i.m
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.ap = icmp ult i32 %.0, 10
  br i1 %i.ap, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.030.i.i = phi i32 [ %i.ax, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.aw, %bb.q ], [ %.0, %bb.k ] ; 5 uses
  %i.aq = icmp ult i32 %.02329.i.i, 100
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.as = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.au = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.aw = udiv i32 %.02329.i.i, 10000
  %i.ax = add i32 %.030.i.i, 4                    ; 2 uses
  %i.ay = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.ay, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.av, %bb.p ], [ %i.ar, %bb.l ], [ %i.at, %bb.n ], [ 1, %bb.k ], [ %i.ax, %bb.q ] ; 2 uses
  %i.az = ptrtoint ptr %1 to i64
  %i.ba = ptrtoint ptr %.026 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = zext i32 %.022.i.i to i64               ; 2 uses
  %i.bd = icmp slt i64 %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.r, !prof !155

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.be = icmp ugt i32 %.0, 99
  br i1 %i.be, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bf = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.bi, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bt, %.lr.ph.i9.i ], [ %i.bf, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bg = urem i32 %.020.i.i, 100
  %i.bh = shl nuw nsw i32 %i.bg, 1
  %i.bi = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !69
  %i.bn = zext i32 %.01819.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bn
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !69
  %i.bp = load i8, ptr %i.bk, align 2, !tbaa !69
  %i.bq = add i32 %.01819.i.i, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.026, i64 %i.br
  store i8 %i.bp, ptr %i.bs, align 1, !tbaa !69
  %i.bt = add i32 %.01819.i.i, -2
  %i.bu = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bu, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.r
  %.0.lcssa.i.i = phi i32 [ %.0, %bb.r ], [ %i.bi, %.lr.ph.i9.i ] ; 3 uses
  %i.bv = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bw = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !69
  %i.cc = load i8, ptr %i.by, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.cd = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.ce, %bb.t ], [ %i.cc, %bb.s ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bc
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.u:                                             ; preds = %bb.f
  %i.cg = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.ch = trunc nuw nsw i32 %i.cg to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.ch
  %i.ci = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.cj = ptrtoint ptr %1 to i64
  %i.ck = ptrtoint ptr %.026 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = zext nneg i8 %i.ci to i64               ; 2 uses
  %i.cn = icmp slt i64 %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.v, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.co = icmp ugt i32 %.0, 63
  br i1 %i.co, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %.zext.i = zext nneg i8 %i.ci to i32
  %i.cp = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.dc, %.lr.ph.i43 ], [ %i.cp, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i32 [ %i.cv, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.cq = trunc i32 %.02830.i45 to i8             ; 2 uses
  %i.cr = and i8 %i.cq, 7
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = zext i32 %.031.i44 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !69
  %i.cv = lshr i32 %.02830.i45, 6                 ; 2 uses
  %i.cw = lshr i8 %i.cq, 3
  %i.cx = and i8 %i.cw, 7
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = add nsw i32 %.031.i44, -1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.026, i64 %i.da
  store i8 %i.cy, ptr %i.db, align 1, !tbaa !69
  %i.dc = add nsw i32 %.031.i44, -2
  %i.dd = icmp ugt i32 %.02830.i45, 4095
  br i1 %i.dd, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !46

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.v
  %.028.lcssa.i35 = phi i32 [ %.0, %bb.v ], [ %i.cv, %.lr.ph.i43 ] ; 4 uses
  %i.de = icmp samesign ugt i32 %.028.lcssa.i35, 7
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i34
  %i.df = lshr i32 %.028.lcssa.i35, 3
  %i.dg = trunc nuw nsw i32 %.028.lcssa.i35 to i8
  %i.dh = and i8 %i.dg, 7
  %i.di = or disjoint i8 %i.dh, 48
  %i.dj = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i34
  %storemerge.in.in.i = phi i32 [ %i.df, %bb.w ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.dk = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cm
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dl = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false) ; 4 uses
  %i.dm = sub nuw nsw i32 32, %i.dl
  %i.dn = ptrtoint ptr %1 to i64
  %i.do = ptrtoint ptr %.026 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.dr = icmp slt i64 %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.y
  %.not16.i = icmp eq i32 %i.dl, 31
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nsw i32 31, %i.dl                 ; 2 uses
  %i.ds = zext nneg i32 %.015.i to i64            ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.dt = trunc i32 %.0 to i8
  %i.du = and i8 %i.dt, 1
  %i.dv = or disjoint i8 %i.du, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ds
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !69
  %i.dx = lshr i32 %.0, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.ds, -1
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %i.ds, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i32 [ %.0, %.lr.ph.preheader.i46 ], [ %i.dx, %.lr.ph.i47.prol ]
  %i.dy = icmp eq i32 %i.dl, 30
  br i1 %i.dy, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i32 [ %i.ej, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.dz = trunc i32 %.01317.i to i8
  %i.ea = and i8 %i.dz, 1
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !69
  %i.ed = lshr i32 %.01317.i, 1
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = and i8 %i.ee, 1
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -1
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !69
  %i.ej = lshr i32 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ek = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !47

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %.026, i64 %i.dq
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.z:                                             ; preds = %bb.f
  %i.em = mul nsw i32 %3, %3                      ; 2 uses
  %i.en = mul i32 %i.em, %3                       ; 2 uses
  %i.eo = mul i32 %i.en, %3                       ; 2 uses
  %i.ep = icmp ult i32 %.0, %3
  br i1 %i.ep, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.z, %bb.af
  %.030.i.i54 = phi i32 [ %i.ex, %bb.af ], [ 1, %bb.z ] ; 4 uses
  %.02329.i.i55 = phi i32 [ %i.ew, %bb.af ], [ %.0, %bb.z ] ; 4 uses
  %i.eq = icmp ult i32 %.02329.i.i55, %i.em
  br i1 %i.eq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i53
  %i.er = add i32 %.030.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ab:                                            ; preds = %.lr.ph.i.i53
  %i.es = icmp ult i32 %.02329.i.i55, %i.en
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.et = add i32 %.030.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ad:                                            ; preds = %bb.ab
  %i.eu = icmp ult i32 %.02329.i.i55, %i.eo
  br i1 %i.eu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ev = add i32 %.030.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.af:                                            ; preds = %bb.ad
  %i.ew = udiv i32 %.02329.i.i55, %i.eo           ; 2 uses
  %i.ex = add i32 %.030.i.i54, 4                  ; 2 uses
  %i.ey = icmp ult i32 %i.ew, %3
  br i1 %i.ey, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, label %.lr.ph.i.i53, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56:  ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa
  %.022.i.i57 = phi i32 [ %i.ev, %bb.ae ], [ %i.er, %bb.aa ], [ %i.et, %bb.ac ], [ %i.ex, %bb.af ] ; 2 uses
  %i.ez = ptrtoint ptr %1 to i64
  %i.fa = ptrtoint ptr %.026 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.fd = icmp slt i64 %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i59, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.z
  %i.fe = ptrtoint ptr %1 to i64
  %i.ff = ptrtoint ptr %.026 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = icmp slt i64 %i.fg, 1
  br i1 %i.fh, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.lr.ph.i59:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %.lr.ph.i59
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i59 ], [ %.022.i.i57, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ]
  %.02027.i = phi i32 [ %i.fi, %.lr.ph.i59 ], [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.fi = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.fj = urem i32 %.02027.i, %3
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !69
  %i.fn = zext i32 %.0.i to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fn
  store i8 %i.fm, ptr %i.fo, align 1, !tbaa !69
  %.not.i60 = icmp ult i32 %i.fi, %3
  br i1 %.not.i60, label %._crit_edge.i61, label %.lr.ph.i59, !llvm.loop !48

._crit_edge.i61:                                  ; preds = %.lr.ph.i59, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.fp = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fc, %.lr.ph.i59 ]
  %.020.lcssa.i = phi i32 [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fi, %.lr.ph.i59 ]
  %i.fq = zext i32 %.020.lcssa.i to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !69
  store i8 %i.fs, ptr %.026, align 1, !tbaa !69
  %i.ft = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fp
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %._crit_edge.i48, %bb.y, %bb.x, %bb.u, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.j, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.u ], [ %i.c, %bb.c ], [ %1, %bb.y ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.ao, %bb.j ], [ %i.cf, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ %i.dk, %bb.x ], [ %i.el, %._crit_edge.i48 ], [ %i.ft, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.u ], [ 0, %bb.c ], [ 75, %bb.y ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 0, %bb.j ], [ 0, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ 0, %bb.x ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIxENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %0, align 1, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.d:                                             ; preds = %bb.b
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !69
  %i.f = sub i64 0, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.026 = phi ptr [ %i.e, %bb.e ], [ %0, %bb.d ]  ; 29 uses
  %.0 = phi i64 [ %i.f, %bb.e ], [ %2, %bb.d ]    ; 21 uses
  switch i32 %3, label %bb.z [
    i32 16, label %bb.g
    i32 10, label %bb.k
    i32 8, label %bb.u
    i32 2, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false)
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = sub nuw nsw i32 67, %i.h
  %i.j = lshr i32 %i.i, 2                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.026 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = zext nneg i32 %i.j to i64                ; 2 uses
  %i.o = icmp slt i64 %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ugt i64 %.0, 255
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.q = add nsw i32 %i.j, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i64 [ %i.y, %.lr.ph.i ], [ %.0, %.lr.ph.preheader.i ] ; 4 uses
  %i.r = and i64 %.02830.i, 15
  %i.s = lshr i64 %.02830.i, 4
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !69
  %i.v = zext i32 %.031.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1, !tbaa !69
  %i.x = and i64 %i.s, 15
  %i.y = lshr i64 %.02830.i, 8                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !69
end_hunk_6
begin_hunk_7_@_ZSt12__to_chars_iIxENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %.028.lcssa.i = phi i64 [ %.0, %bb.h ], [ %i.y, %.lr.ph.i ] ; 4 uses
  %i.ag = icmp samesign ugt i64 %.028.lcssa.i, 15
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ah = and i64 %.028.lcssa.i, 15
  %i.ai = lshr i64 %.028.lcssa.i, 4
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.028.pn.i = phi i64 [ %i.ai, %bb.i ], [ %.028.lcssa.i, %._crit_edge.i ]
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.an = icmp ult i64 %.0, 10
  br i1 %i.an, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.029.i.i = phi i32 [ %i.av, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.au, %bb.q ], [ %.0, %bb.k ] ; 5 uses
  %i.ao = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.aq = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.as = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.au = udiv i64 %.02328.i.i, 10000
  %i.av = add i32 %.029.i.i, 4                    ; 2 uses
  %i.aw = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.aw, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.at, %bb.p ], [ %i.ap, %bb.l ], [ %i.ar, %bb.n ], [ 1, %bb.k ], [ %i.av, %bb.q ] ; 2 uses
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = ptrtoint ptr %.026 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = zext i32 %.022.i.i to i64               ; 2 uses
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.r, !prof !155

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bc = icmp ugt i64 %.0, 99
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bd = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bg, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bq, %.lr.ph.i9.i ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.be = urem i64 %.020.i.i, 100
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !69
  %i.bk = zext i32 %.01819.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !69
  %i.bm = load i8, ptr %i.bh, align 2, !tbaa !69
  %i.bn = add i32 %.01819.i.i, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !69
  %i.bq = add i32 %.01819.i.i, -2
  %i.br = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.br, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.r
  %.0.lcssa.i.i = phi i64 [ %.0, %bb.r ], [ %i.bg, %.lr.ph.i9.i ] ; 3 uses
  %i.bs = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !69
  %i.by = load i8, ptr %i.bu, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.bz = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ca = or disjoint i8 %i.bz, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.ca, %bb.t ], [ %i.by, %bb.s ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ba
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.u:                                             ; preds = %bb.f
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false)
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %.lhs.trunc.i = sub nuw nsw i8 66, %i.cd
  %i.ce = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.cf = ptrtoint ptr %1 to i64
  %i.cg = ptrtoint ptr %.026 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = zext nneg i8 %i.ce to i64               ; 2 uses
  %i.cj = icmp slt i64 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.v, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp ugt i64 %.0, 63
  br i1 %i.ck, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %.zext.i = zext nneg i8 %i.ce to i32
  %i.cl = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.cy, %.lr.ph.i43 ], [ %i.cl, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i64 [ %i.cr, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.cm = trunc i64 %.02830.i45 to i8             ; 2 uses
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = zext i32 %.031.i44 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !69
  %i.cr = lshr i64 %.02830.i45, 6                 ; 2 uses
  %i.cs = lshr i8 %i.cm, 3
  %i.ct = and i8 %i.cs, 7
  %i.cu = or disjoint i8 %i.ct, 48
  %i.cv = add nsw i32 %.031.i44, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cw
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !69
  %i.cy = add nsw i32 %.031.i44, -2
  %i.cz = icmp ugt i64 %.02830.i45, 4095
  br i1 %i.cz, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !42

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.v
  %.028.lcssa.i35 = phi i64 [ %.0, %bb.v ], [ %i.cr, %.lr.ph.i43 ] ; 4 uses
  %i.da = icmp samesign ugt i64 %.028.lcssa.i35, 7
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i34
  %i.db = lshr i64 %.028.lcssa.i35, 3
  %i.dc = trunc nuw nsw i64 %.028.lcssa.i35 to i8
  %i.dd = and i8 %i.dc, 7
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.de, ptr %i.df, align 1, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i34
  %storemerge.in.in.i = phi i64 [ %i.db, %bb.w ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.dg = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ci
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false) ; 6 uses
  %i.di = sub nuw nsw i64 64, %i.dh               ; 2 uses
  %i.dj = ptrtoint ptr %1 to i64
  %i.dk = ptrtoint ptr %.026 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp slt i64 %i.dl, %i.di
  br i1 %i.dm, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.y
  %.not16.i = icmp eq i64 %i.dh, 63
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nuw nsw i64 63, %i.dh             ; 2 uses
  %4 = trunc nuw nsw i64 %i.dh to i32
  %5 = and i32 %4, 1
  %lcmp.mod.not.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i47.prol, label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.dn = trunc i64 %.0 to i8
  %i.do = and i8 %i.dn, 1
  %i.dp = or disjoint i8 %i.do, 48
  %i.dq = getelementptr inbounds nuw i8, ptr %.026, i64 %.015.i
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !69
  %i.dr = lshr i64 %.0, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.dh
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i64 [ %.0, %.lr.ph.preheader.i46 ], [ %i.dr, %.lr.ph.i47.prol ]
  %i.ds = icmp eq i64 %i.dh, 62
  br i1 %i.ds, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.ed, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.dt = trunc i64 %.01317.i to i8
  %i.du = and i8 %i.dt, 1
  %i.dv = or disjoint i8 %i.du, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !69
  %i.dx = lshr i64 %.01317.i, 1
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = and i8 %i.dy, 1
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.ec = getelementptr i8, ptr %i.eb, i64 -1
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !69
  %i.ed = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ee = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !43

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.ef = getelementptr inbounds nuw i8, ptr %.026, i64 %i.di
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.z:                                             ; preds = %bb.f
  %i.eg = mul nsw i32 %3, %3                      ; 2 uses
  %i.eh = mul i32 %i.eg, %3                       ; 2 uses
  %i.ei = mul i32 %i.eh, %3
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = zext i32 %3 to i64                      ; 3 uses
  %i.el = icmp ult i64 %.0, %i.ek
  br i1 %i.el, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.z
  %i.em = zext nneg i32 %i.eg to i64
  %i.en = zext i32 %i.eh to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.lr.ph.i.i53
  %.029.i.i54 = phi i32 [ 1, %.lr.ph.i.i53 ], [ %i.ev, %bb.ag ] ; 4 uses
  %.02328.i.i55 = phi i64 [ %.0, %.lr.ph.i.i53 ], [ %i.eu, %bb.ag ] ; 4 uses
  %i.eo = icmp ult i64 %.02328.i.i55, %i.em
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ep = add i32 %.029.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ac:                                            ; preds = %bb.aa
  %i.eq = icmp ult i64 %.02328.i.i55, %i.en
  br i1 %i.eq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.er = add i32 %.029.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ae:                                            ; preds = %bb.ac
  %i.es = icmp ult i64 %.02328.i.i55, %i.ej
  br i1 %i.es, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.et = add i32 %.029.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ag:                                            ; preds = %bb.ae
  %i.eu = udiv i64 %.02328.i.i55, %i.ej           ; 2 uses
  %i.ev = add i32 %.029.i.i54, 4                  ; 2 uses
  %i.ew = icmp ult i64 %i.eu, %i.ek
  br i1 %i.ew, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56, label %bb.aa, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56:  ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ab
  %.022.i.i57 = phi i32 [ %i.et, %bb.af ], [ %i.ep, %bb.ab ], [ %i.er, %bb.ad ], [ %i.ev, %bb.ag ] ; 2 uses
  %i.ex = ptrtoint ptr %1 to i64
  %i.ey = ptrtoint ptr %.026 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.fb = icmp slt i64 %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i58, !prof !155

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.z
  %i.fc = ptrtoint ptr %1 to i64
  %i.fd = ptrtoint ptr %.026 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.preheader.i58:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56
  %i.fg = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.preheader.i58
  %.0.in27.i = phi i32 [ %.022.i.i57, %.preheader.i58 ], [ %.0.i, %bb.ah ]
  %.02026.i = phi i64 [ %.0, %.preheader.i58 ], [ %i.fh, %bb.ah ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.fh = udiv i64 %.02026.i, %i.fg               ; 3 uses
  %i.fi = urem i64 %.02026.i, %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !69
  %i.fl = zext i32 %.0.i to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fl
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !69
  %.not.i60 = icmp ult i64 %i.fh, %i.ek
  br i1 %.not.i60, label %._crit_edge.i61, label %bb.ah, !llvm.loop !44

._crit_edge.i61:                                  ; preds = %bb.ah, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.fn = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fa, %bb.ah ]
  %.020.lcssa.i = phi i64 [ %.0, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fh, %bb.ah ]
  %i.fo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !69
  store i8 %i.fp, ptr %.026, align 1, !tbaa !69
  %i.fq = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fn
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56, %._crit_edge.i48, %bb.y, %bb.x, %bb.u, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.j, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.u ], [ %i.c, %bb.c ], [ %1, %bb.y ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.am, %bb.j ], [ %i.cb, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i ], [ %i.dg, %bb.x ], [ %i.ef, %._crit_edge.i48 ], [ %i.fq, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.u ], [ 0, %bb.c ], [ 75, %bb.y ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 0, %bb.j ], [ 0, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i ], [ 0, %bb.x ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = zext i8 %2 to i32                        ; 10 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %2, 0
  br i1 %i.c, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.p [
    i32 16, label %bb.d
    i32 10, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
    i32 8, label %bb.k
    i32 2, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.e = sub nuw nsw i32 35, %i.d
  %i.f = lshr i32 %i.e, 2
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i8 %2, 15
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %i.a, 15
  %i.n = lshr i32 %i.a, 4
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.in.i = phi i32 [ %i.n, %bb.f ], [ %i.a, %bb.e ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.c
  %i.s = icmp ult i8 %2, 10
  %i.t = icmp ult i8 %2, 100
  %spec.select = select i1 %i.t, i32 2, i32 3     ; 3 uses
  %i.u = ptrtoint ptr %1 to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = zext nneg i32 %spec.select to i64
  %i.y = select i1 %i.s, i64 1, i64 %i.x          ; 3 uses
  %i.z = icmp slt i64 %i.w, %i.y
  br i1 %i.z, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.aa = icmp ugt i8 %2, 99
  br i1 %i.aa, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.h
  %i.ab = urem i8 %2, 100
  %i.ac = shl nuw i8 %i.ab, 1
  %i.ad = udiv i8 %2, 100
  %i.ae = zext i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !69
  %i.ai = zext nneg i32 %spec.select to i64
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !69
  %i.al = load i8, ptr %i.af, align 2, !tbaa !69
  %i.am = zext nneg i32 %spec.select to i64
  %i.an = getelementptr i8, ptr %0, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -2
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !69
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.ap = icmp ugt i8 %2, 9
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aq = shl nuw nsw i32 %i.a, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !69
  %i.aw = load i8, ptr %i.as, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.j:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i79 = phi i8 [ %i.ad, %._crit_edge.i.i.thread ], [ %2, %._crit_edge.i.i ]
  %i.ax = or disjoint i8 %.0.lcssa.i.i79, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.k:                                             ; preds = %bb.c
  %i.ay = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %2, i1 true)
  %.lhs.trunc.i = sub nuw nsw i8 10, %i.ay
  %i.az = udiv i8 %.lhs.trunc.i, 3                ; 3 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = ptrtoint ptr %0 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = zext nneg i8 %i.az to i64               ; 2 uses
  %i.be = icmp slt i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.l, !prof !155

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ugt i8 %2, 63
  br i1 %i.bf, label %._crit_edge.i.thread, label %._crit_edge.i

._crit_edge.i.thread:                             ; preds = %bb.l
  %.zext.i = zext nneg i8 %i.az to i64
  %i.bg = and i8 %2, 7
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = zext nneg i8 %i.az to i64
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !69
  %i.bl = lshr i8 %2, 6
  %i.bm = lshr i8 %2, 3
  %i.bn = add nuw nsw i64 %.zext.i, 4294967294
  %i.bo = and i64 %i.bn, 4294967295
  br label %.sink.split

._crit_edge.i:                                    ; preds = %bb.l
  %i.bp = icmp ugt i8 %2, 7
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i
  %i.bq = lshr i8 %2, 3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %._crit_edge.i.thread
  %.sink88 = phi i64 [ %i.bo, %._crit_edge.i.thread ], [ 1, %bb.m ]
  %.sink.in.in = phi i8 [ %i.bm, %._crit_edge.i.thread ], [ %2, %bb.m ]
  %storemerge.in.in.i.ph = phi i8 [ %i.bl, %._crit_edge.i.thread ], [ %i.bq, %bb.m ]
  %.sink.in = and i8 %.sink.in.in, 7
  %.sink = or disjoint i8 %.sink.in, 48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sink88
  store i8 %.sink, ptr %i.br, align 1, !tbaa !69
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %._crit_edge.i
  %storemerge.in.in.i = phi i8 [ %2, %._crit_edge.i ], [ %storemerge.in.in.i.ph, %.sink.split ]
  %storemerge.i30 = or disjoint i8 %storemerge.in.in.i, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.o:                                             ; preds = %bb.c
  %i.bs = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 4 uses
  %i.bt = sub nuw nsw i32 32, %i.bs
  %i.bu = ptrtoint ptr %1 to i64
  %i.bv = ptrtoint ptr %0 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = zext nneg i32 %i.bt to i64              ; 4 uses
  %i.by = icmp slt i64 %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.o
  %.not16.i = icmp eq i32 %i.bs, 31
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i35

.lr.ph.preheader.i35:                             ; preds = %.preheader.i
  %.015.i = xor i32 %i.bs, 31                     ; 2 uses
  %i.bz = zext nneg i32 %.015.i to i64            ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol

.lr.ph.i36.prol:                                  ; preds = %.lr.ph.preheader.i35
  %i.ca = and i8 %2, 1
  %i.cb = or disjoint i8 %i.ca, 48
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !69
  %i.cd = lshr i8 %2, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.bz, -1
  br label %.lr.ph.i36.prol.loopexit

.lr.ph.i36.prol.loopexit:                         ; preds = %.lr.ph.i36.prol, %.lr.ph.preheader.i35
  %indvars.iv.i.unr = phi i64 [ %i.bz, %.lr.ph.preheader.i35 ], [ %indvars.iv.next.i.prol, %.lr.ph.i36.prol ]
  %.01317.i.unr = phi i8 [ %2, %.lr.ph.preheader.i35 ], [ %i.cd, %.lr.ph.i36.prol ]
  %i.ce = icmp eq i32 %i.bs, 30
  br i1 %i.ce, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i36 ], [ %indvars.iv.i.unr, %.lr.ph.i36.prol.loopexit ] ; 3 uses
  %.01317.i = phi i8 [ %i.cn, %.lr.ph.i36 ], [ %.01317.i.unr, %.lr.ph.i36.prol.loopexit ] ; 3 uses
  %i.cf = and i8 %.01317.i, 1
  %i.cg = or disjoint i8 %i.cf, 48
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !69
  %i.ci = lshr i8 %.01317.i, 1
  %i.cj = and i8 %i.ci, 1
  %i.ck = or disjoint i8 %i.cj, 48
  %i.cl = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !69
  %i.cn = lshr i8 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.co = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.co, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i36, !llvm.loop !47

bb.p:                                             ; preds = %bb.c
  %i.cp = mul nsw i32 %3, %3                      ; 2 uses
  %i.cq = mul i32 %i.cp, %3                       ; 2 uses
  %i.cr = mul i32 %i.cq, %3                       ; 2 uses
  %i.cs = icmp ugt i32 %3, %i.a
  br i1 %i.cs, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %bb.p, %bb.v
  %.030.i.i = phi i32 [ %i.da, %bb.v ], [ 1, %bb.p ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.cz, %bb.v ], [ %i.a, %bb.p ] ; 4 uses
  %i.ct = icmp samesign ult i32 %.02329.i.i, %i.cp
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i42
  %i.cu = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43

bb.r:                                             ; preds = %.lr.ph.i.i42
  %i.cv = icmp ult i32 %.02329.i.i, %i.cq
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43

bb.t:                                             ; preds = %bb.r
  %i.cx = icmp ult i32 %.02329.i.i, %i.cr
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cy = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43

bb.v:                                             ; preds = %bb.t
  %i.cz = udiv i32 %.02329.i.i, %i.cr             ; 2 uses
  %i.da = add i32 %.030.i.i, 4                    ; 2 uses
  %i.db = icmp ult i32 %i.cz, %3
  br i1 %i.db, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43, label %.lr.ph.i.i42, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43:  ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  %.022.i.i44 = phi i32 [ %i.cy, %bb.u ], [ %i.cu, %bb.q ], [ %i.cw, %bb.s ], [ %i.da, %bb.v ] ; 2 uses
  %i.dc = ptrtoint ptr %1 to i64
  %i.dd = ptrtoint ptr %0 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = zext i32 %.022.i.i44 to i64             ; 2 uses
  %i.dg = icmp slt i64 %i.de, %i.df
  br i1 %i.dg, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i46, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.p
  %i.dh = ptrtoint ptr %1 to i64
  %i.di = ptrtoint ptr %0 to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp slt i64 %i.dj, 1
  br i1 %i.dk, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i48, !prof !155

.lr.ph.i46:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43, %.lr.ph.i46
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i46 ], [ %.022.i.i44, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43 ]
  %.02027.i = phi i32 [ %i.dl, %.lr.ph.i46 ], [ %i.a, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.dl = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.dm = urem i32 %.02027.i, %3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !69
  %i.dq = zext i32 %.0.i to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq
  store i8 %i.dp, ptr %i.dr, align 1, !tbaa !69
  %.not.i47 = icmp ult i32 %i.dl, %3
  br i1 %.not.i47, label %._crit_edge.i48, label %.lr.ph.i46, !llvm.loop !48

._crit_edge.i48:                                  ; preds = %.lr.ph.i46, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.ds = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.df, %.lr.ph.i46 ]
  %.020.lcssa.i = phi i32 [ %i.a, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.dl, %.lr.ph.i46 ]
  %i.dt = zext nneg i32 %.020.lcssa.i to i64
  %i.du = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36, %.preheader.i, %bb.i, %bb.j, %bb.b, %bb.g, %bb.n, %._crit_edge.i48
  %.sink90 = phi i8 [ %i.dv, %._crit_edge.i48 ], [ %i.aw, %bb.i ], [ %storemerge.i30, %bb.n ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.ax, %bb.j ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i36 ], [ 49, %.lr.ph.i36.prol.loopexit ]
  %.sink89 = phi i64 [ %i.ds, %._crit_edge.i48 ], [ %i.y, %bb.i ], [ %i.bd, %bb.n ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.y, %bb.j ], [ %i.bx, %.preheader.i ], [ %i.bx, %.lr.ph.i36 ], [ %i.bx, %.lr.ph.i36.prol.loopexit ]
  store i8 %.sink90, ptr %0, align 1, !tbaa !69
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %.sink89
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43, %bb.o, %bb.k, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.d, %bb.a
  %.pn55 = phi ptr [ %1, %bb.k ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43 ], [ %1, %bb.o ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.dw, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn53 = phi i32 [ 75, %bb.k ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43 ], [ 75, %bb.o ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn55, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn53, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = zext i16 %2 to i32                       ; 16 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %2, 0
  br i1 %i.c, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.s [
    i32 16, label %bb.d
    i32 10, label %bb.h
    i32 8, label %bb.n
    i32 2, label %bb.r
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.e = sub nuw nsw i32 35, %i.d
  %i.f = lshr i32 %i.e, 2                         ; 3 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i16 %2, 255
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.m = and i32 %i.a, 15
  %i.n = lshr i32 %i.a, 4
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = zext nneg i32 %i.f to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  store i8 %i.q, ptr %i.t, align 1, !tbaa !69
  %i.u = and i32 %i.n, 15
  %i.v = lshr i32 %i.a, 8
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !69
  %i.z = add nsw i32 %i.f, -2
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !69
  br label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.e
  %.028.lcssa.i = phi i32 [ %i.a, %bb.e ], [ %i.v, %.lr.ph.preheader.i ] ; 4 uses
  %i.ac = icmp samesign ugt i32 %.028.lcssa.i, 15
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = and i32 %.028.lcssa.i, 15
  %i.ae = lshr i32 %.028.lcssa.i, 4
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.ae, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.aj = icmp ult i16 %2, 10
  br i1 %i.aj, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ak = icmp ult i16 %2, 100
  br i1 %i.ak, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp ult i16 %2, 1000
  br i1 %i.al, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp ult i16 %2, 10000
  %. = select i1 %i.am, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.j, %bb.i, %.lr.ph.i.i, %bb.h
  %.022.i.i = phi i32 [ %., %bb.j ], [ 3, %bb.i ], [ 2, %.lr.ph.i.i ], [ 1, %bb.h ] ; 2 uses
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = ptrtoint ptr %0 to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = zext nneg i32 %.022.i.i to i64          ; 3 uses
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.k, !prof !155

bb.k:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.as = icmp ugt i16 %2, 99
  br i1 %i.as, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.at = add nsw i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.aw, %.lr.ph.i9.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bh, %.lr.ph.i9.i ], [ %i.at, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.au = urem i32 %.020.i.i, 100
  %i.av = shl nuw nsw i32 %i.au, 1
  %i.aw = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !69
  %i.bb = zext i32 %.01819.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !69
  %i.bd = load i8, ptr %i.ay, align 2, !tbaa !69
  %i.be = add i32 %.01819.i.i, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.bd, ptr %i.bg, align 1, !tbaa !69
  %i.bh = add i32 %.01819.i.i, -2
  %i.bi = icmp samesign ugt i32 %.020.i.i, 9999
  br i1 %i.bi, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.k
  %.0.lcssa.i.i = phi i32 [ %i.a, %bb.k ], [ %i.aw, %.lr.ph.i9.i ] ; 3 uses
  %i.bj = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bk = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !69
  %i.bq = load i8, ptr %i.bm, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.br = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bs = or disjoint i8 %i.br, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.n:                                             ; preds = %bb.c
  %i.bt = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.bu
  %i.bv = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.bw = ptrtoint ptr %1 to i64
  %i.bx = ptrtoint ptr %0 to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = zext nneg i8 %i.bv to i64               ; 2 uses
  %i.ca = icmp slt i64 %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.o, !prof !155

bb.o:                                             ; preds = %bb.n
  %i.cb = icmp ugt i16 %2, 63
  br i1 %i.cb, label %.lr.ph.preheader.i37, label %._crit_edge.i29

.lr.ph.preheader.i37:                             ; preds = %bb.o
  %.zext.i = zext nneg i8 %i.bv to i32            ; 4 uses
  %i.cc = add nsw i32 %.zext.i, -1
  %i.cd = trunc i16 %2 to i8                      ; 2 uses
  %i.ce = and i8 %i.cd, 7
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = zext i32 %i.cc to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !69
  %i.ci = lshr i32 %i.a, 6                        ; 2 uses
  %i.cj = lshr i8 %i.cd, 3
  %i.ck = and i8 %i.cj, 7
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = add nsw i32 %.zext.i, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !69
  %i.cp = icmp ugt i16 %2, 4095
  br i1 %i.cp, label %.lr.ph.i38.1, label %._crit_edge.i29

.lr.ph.i38.1:                                     ; preds = %.lr.ph.preheader.i37
  %i.cq = add nsw i32 %.zext.i, -3
  %i.cr = trunc i32 %i.ci to i8                   ; 2 uses
  %i.cs = and i8 %i.cr, 7
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = zext i32 %i.cq to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !69
  %i.cw = lshr i32 %i.a, 12
  %i.cx = lshr i8 %i.cr, 3
  %i.cy = and i8 %i.cx, 7
  %i.cz = or disjoint i8 %i.cy, 48
  %i.da = add nsw i32 %.zext.i, -4
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.db
  store i8 %i.cz, ptr %i.dc, align 1, !tbaa !69
  br label %._crit_edge.i29

._crit_edge.i29:                                  ; preds = %.lr.ph.preheader.i37, %.lr.ph.i38.1, %bb.o
  %.028.lcssa.i30 = phi i32 [ %i.a, %bb.o ], [ %i.ci, %.lr.ph.preheader.i37 ], [ %i.cw, %.lr.ph.i38.1 ] ; 4 uses
  %i.dd = icmp samesign ugt i32 %.028.lcssa.i30, 7
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i29
  %i.de = lshr i32 %.028.lcssa.i30, 3
  %i.df = trunc nuw nsw i32 %.028.lcssa.i30 to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i29
  %storemerge.in.in.i = phi i32 [ %i.de, %bb.p ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.dj = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 4 uses
  %i.dk = sub nuw nsw i32 32, %i.dj
  %i.dl = ptrtoint ptr %1 to i64
  %i.dm = ptrtoint ptr %0 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = zext nneg i32 %i.dk to i64              ; 4 uses
  %i.dp = icmp slt i64 %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.r
  %.not16.i = icmp eq i32 %i.dj, 31
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i32 %i.dj, 31                     ; 2 uses
  %i.dq = zext nneg i32 %.015.i to i64            ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dr = trunc i16 %2 to i8
  %i.ds = and i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !69
  %i.dv = lshr i16 %2, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.dq, -1
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %i.dq, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i16 [ %2, %.lr.ph.preheader.i41 ], [ %i.dv, %.lr.ph.i42.prol ]
  %i.dw = icmp eq i32 %i.dj, 30
  br i1 %i.dw, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i16 [ %i.eh, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dx = trunc i16 %.01317.i to i8
  %i.dy = and i8 %i.dx, 1
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !69
  %i.eb = lshr i16 %.01317.i, 1
  %i.ec = trunc i16 %i.eb to i8
  %i.ed = and i8 %i.ec, 1
  %i.ee = or disjoint i8 %i.ed, 48
  %i.ef = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.eg = getelementptr i8, ptr %i.ef, i64 -1
  store i8 %i.ee, ptr %i.eg, align 1, !tbaa !69
  %i.eh = lshr i16 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ei = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !47

bb.s:                                             ; preds = %bb.c
  %i.ej = mul nsw i32 %3, %3                      ; 2 uses
  %i.ek = mul i32 %i.ej, %3                       ; 2 uses
  %i.el = mul i32 %i.ek, %3                       ; 2 uses
  %i.em = icmp ugt i32 %3, %i.a
  br i1 %i.em, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.s, %bb.y
  %.030.i.i49 = phi i32 [ %i.eu, %bb.y ], [ 1, %bb.s ] ; 4 uses
  %.02329.i.i50 = phi i32 [ %i.et, %bb.y ], [ %i.a, %bb.s ] ; 4 uses
  %i.en = icmp samesign ult i32 %.02329.i.i50, %i.ej
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i48
  %i.eo = add i32 %.030.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.u:                                             ; preds = %.lr.ph.i.i48
  %i.ep = icmp ult i32 %.02329.i.i50, %i.ek
  br i1 %i.ep, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eq = add i32 %.030.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.w:                                             ; preds = %bb.u
  %i.er = icmp ult i32 %.02329.i.i50, %i.el
  br i1 %i.er, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.es = add i32 %.030.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.y:                                             ; preds = %bb.w
  %i.et = udiv i32 %.02329.i.i50, %i.el           ; 2 uses
  %i.eu = add i32 %.030.i.i49, 4                  ; 2 uses
  %i.ev = icmp ult i32 %i.et, %3
  br i1 %i.ev, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, label %.lr.ph.i.i48, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51:  ; preds = %bb.y, %bb.x, %bb.v, %bb.t
  %.022.i.i52 = phi i32 [ %i.es, %bb.x ], [ %i.eo, %bb.t ], [ %i.eq, %bb.v ], [ %i.eu, %bb.y ] ; 2 uses
  %i.ew = ptrtoint ptr %1 to i64
  %i.ex = ptrtoint ptr %0 to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.fa = icmp slt i64 %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i54, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.s
  %i.fb = ptrtoint ptr %1 to i64
  %i.fc = ptrtoint ptr %0 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp slt i64 %i.fd, 1
  br i1 %i.fe, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !155

.lr.ph.i54:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, %.lr.ph.i54
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i54 ], [ %.022.i.i52, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ]
  %.02027.i = phi i32 [ %i.ff, %.lr.ph.i54 ], [ %i.a, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.ff = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.fg = urem i32 %.02027.i, %3
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !69
  %i.fk = zext i32 %.0.i to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 %i.fk
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !69
  %.not.i55 = icmp ult i32 %i.ff, %3
  br i1 %.not.i55, label %._crit_edge.i56, label %.lr.ph.i54, !llvm.loop !48

._crit_edge.i56:                                  ; preds = %.lr.ph.i54, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.fm = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.ez, %.lr.ph.i54 ]
  %.020.lcssa.i = phi i32 [ %i.a, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.ff, %.lr.ph.i54 ]
  %i.fn = zext nneg i32 %.020.lcssa.i to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.l, %bb.m, %bb.b, %bb.g, %bb.q, %._crit_edge.i56
  %.sink96 = phi i8 [ %i.fp, %._crit_edge.i56 ], [ %i.bq, %bb.l ], [ %storemerge.i32, %bb.q ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bs, %bb.m ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.fm, %._crit_edge.i56 ], [ %i.aq, %bb.l ], [ %i.bz, %bb.q ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.aq, %bb.m ], [ %i.do, %.preheader.i ], [ %i.do, %.lr.ph.i42 ], [ %i.do, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink96, ptr %0, align 1, !tbaa !69
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, %bb.r, %bb.n, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.n ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ], [ %1, %bb.r ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fq, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.n ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ], [ 75, %bb.r ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.w [
    i32 16, label %bb.d
    i32 10, label %bb.h
    i32 8, label %bb.r
    i32 2, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.d = sub nuw nsw i32 35, %i.c
  %i.e = lshr i32 %i.d, 2                         ; 2 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = zext nneg i32 %i.e to i64                ; 2 uses
  %i.j = icmp slt i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ugt i32 %2, 255
  br i1 %i.k, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.l = add nsw i32 %i.e, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.l, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i32 [ %i.u, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %i.m = and i32 %.02830.i, 15
  %i.n = lshr i32 %.02830.i, 4
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = zext i32 %.031.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  store i8 %i.q, ptr %i.s, align 1, !tbaa !69
  %i.t = and i32 %i.n, 15
  %i.u = lshr i32 %.02830.i, 8                    ; 2 uses
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !69
  %i.y = add nsw i32 %.031.i, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !69
  %i.ab = add nsw i32 %.031.i, -2
  %i.ac = icmp ugt i32 %.02830.i, 65535
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.028.lcssa.i = phi i32 [ %2, %bb.e ], [ %i.u, %.lr.ph.i ] ; 4 uses
  %i.ad = icmp samesign ugt i32 %.028.lcssa.i, 15
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ae = and i32 %.028.lcssa.i, 15
  %i.af = lshr i32 %.028.lcssa.i, 4
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.af, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ak = icmp ult i32 %2, 10
  br i1 %i.ak, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.030.i.i = phi i32 [ %i.as, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ar, %bb.n ], [ %2, %bb.h ] ; 5 uses
  %i.al = icmp ult i32 %.02329.i.i, 100
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.am = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.an = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ar = udiv i32 %.02329.i.i, 10000
  %i.as = add i32 %.030.i.i, 4                    ; 2 uses
  %i.at = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.at, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.aq, %bb.m ], [ %i.am, %bb.i ], [ %i.ao, %bb.k ], [ 1, %bb.h ], [ %i.as, %bb.n ] ; 2 uses
  %i.au = ptrtoint ptr %1 to i64
  %i.av = ptrtoint ptr %0 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = zext i32 %.022.i.i to i64               ; 3 uses
  %i.ay = icmp slt i64 %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.o, !prof !155

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.az = icmp ugt i32 %2, 99
  br i1 %i.az, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.ba = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.bd, %.lr.ph.i9.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bo, %.lr.ph.i9.i ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bb = urem i32 %.020.i.i, 100
  %i.bc = shl nuw nsw i32 %i.bb, 1
  %i.bd = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69
  %i.bi = zext i32 %.01819.i.i to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !69
  %i.bk = load i8, ptr %i.bf, align 2, !tbaa !69
  %i.bl = add i32 %.01819.i.i, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !69
  %i.bo = add i32 %.01819.i.i, -2
  %i.bp = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bp, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.o
  %.0.lcssa.i.i = phi i32 [ %2, %bb.o ], [ %i.bd, %.lr.ph.i9.i ] ; 3 uses
  %i.bq = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.br = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !69
  %i.bx = load i8, ptr %i.bt, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.by = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bz = or disjoint i8 %i.by, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.cb = trunc nuw nsw i32 %i.ca to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.cb
  %i.cc = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = ptrtoint ptr %0 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = zext nneg i8 %i.cc to i64               ; 2 uses
  %i.ch = icmp slt i64 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.s, !prof !155

bb.s:                                             ; preds = %bb.r
  %i.ci = icmp ugt i32 %2, 63
  br i1 %i.ci, label %.lr.ph.preheader.i37, label %._crit_edge.i29

.lr.ph.preheader.i37:                             ; preds = %bb.s
  %.zext.i = zext nneg i8 %i.cc to i32
  %i.cj = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.preheader.i37
  %.031.i39 = phi i32 [ %i.cw, %.lr.ph.i38 ], [ %i.cj, %.lr.ph.preheader.i37 ] ; 3 uses
  %.02830.i40 = phi i32 [ %i.cp, %.lr.ph.i38 ], [ %2, %.lr.ph.preheader.i37 ] ; 3 uses
  %i.ck = trunc i32 %.02830.i40 to i8             ; 2 uses
  %i.cl = and i8 %i.ck, 7
  %i.cm = or disjoint i8 %i.cl, 48
  %i.cn = zext i32 %.031.i39 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !69
  %i.cp = lshr i32 %.02830.i40, 6                 ; 2 uses
  %i.cq = lshr i8 %i.ck, 3
  %i.cr = and i8 %i.cq, 7
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = add nsw i32 %.031.i39, -1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu
  store i8 %i.cs, ptr %i.cv, align 1, !tbaa !69
  %i.cw = add nsw i32 %.031.i39, -2
  %i.cx = icmp ugt i32 %.02830.i40, 4095
  br i1 %i.cx, label %.lr.ph.i38, label %._crit_edge.i29, !llvm.loop !46

._crit_edge.i29:                                  ; preds = %.lr.ph.i38, %bb.s
  %.028.lcssa.i30 = phi i32 [ %2, %bb.s ], [ %i.cp, %.lr.ph.i38 ] ; 4 uses
  %i.cy = icmp samesign ugt i32 %.028.lcssa.i30, 7
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i29
  %i.cz = lshr i32 %.028.lcssa.i30, 3
  %i.da = trunc nuw nsw i32 %.028.lcssa.i30 to i8
  %i.db = and i8 %i.da, 7
  %i.dc = or disjoint i8 %i.db, 48
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i29
  %storemerge.in.in.i = phi i32 [ %i.cz, %bb.t ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.v:                                             ; preds = %bb.c
  %i.de = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 4 uses
  %i.df = sub nuw nsw i32 32, %i.de
  %i.dg = ptrtoint ptr %1 to i64
  %i.dh = ptrtoint ptr %0 to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = zext nneg i32 %i.df to i64              ; 4 uses
  %i.dk = icmp slt i64 %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.v
  %.not16.i = icmp eq i32 %i.de, 31
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i32 %i.de, 31                     ; 2 uses
  %i.dl = zext nneg i32 %.015.i to i64            ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dm = trunc i32 %2 to i8
  %i.dn = and i8 %i.dm, 1
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %i.dl
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !69
  %i.dq = lshr i32 %2, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.dl, -1
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %i.dl, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i32 [ %2, %.lr.ph.preheader.i41 ], [ %i.dq, %.lr.ph.i42.prol ]
  %i.dr = icmp eq i32 %i.de, 30
  br i1 %i.dr, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i32 [ %i.ec, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.ds = trunc i32 %.01317.i to i8
  %i.dt = and i8 %i.ds, 1
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !69
  %i.dw = lshr i32 %.01317.i, 1
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = and i8 %i.dx, 1
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.eb = getelementptr i8, ptr %i.ea, i64 -1
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !69
  %i.ec = lshr i32 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ed = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !47

bb.w:                                             ; preds = %bb.c
  %i.ee = mul nsw i32 %3, %3                      ; 2 uses
  %i.ef = mul i32 %i.ee, %3                       ; 2 uses
  %i.eg = mul i32 %i.ef, %3                       ; 2 uses
  %i.eh = icmp ult i32 %2, %3
  br i1 %i.eh, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.w, %bb.ac
  %.030.i.i49 = phi i32 [ %i.ep, %bb.ac ], [ 1, %bb.w ] ; 4 uses
  %.02329.i.i50 = phi i32 [ %i.eo, %bb.ac ], [ %2, %bb.w ] ; 4 uses
  %i.ei = icmp ult i32 %.02329.i.i50, %i.ee
  br i1 %i.ei, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i48
  %i.ej = add i32 %.030.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.y:                                             ; preds = %.lr.ph.i.i48
  %i.ek = icmp ult i32 %.02329.i.i50, %i.ef
  br i1 %i.ek, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.el = add i32 %.030.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.aa:                                            ; preds = %bb.y
  %i.em = icmp ult i32 %.02329.i.i50, %i.eg
  br i1 %i.em, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = add i32 %.030.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.ac:                                            ; preds = %bb.aa
  %i.eo = udiv i32 %.02329.i.i50, %i.eg           ; 2 uses
  %i.ep = add i32 %.030.i.i49, 4                  ; 2 uses
  %i.eq = icmp ult i32 %i.eo, %3
  br i1 %i.eq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, label %.lr.ph.i.i48, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51:  ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x
  %.022.i.i52 = phi i32 [ %i.en, %bb.ab ], [ %i.ej, %bb.x ], [ %i.el, %bb.z ], [ %i.ep, %bb.ac ] ; 2 uses
  %i.er = ptrtoint ptr %1 to i64
  %i.es = ptrtoint ptr %0 to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.ev = icmp slt i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i54, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.w
  %i.ew = ptrtoint ptr %1 to i64
  %i.ex = ptrtoint ptr %0 to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp slt i64 %i.ey, 1
  br i1 %i.ez, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !155

.lr.ph.i54:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, %.lr.ph.i54
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i54 ], [ %.022.i.i52, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ]
  %.02027.i = phi i32 [ %i.fa, %.lr.ph.i54 ], [ %2, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.fa = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.fb = urem i32 %.02027.i, %3
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !69
  %i.ff = zext i32 %.0.i to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ff
  store i8 %i.fe, ptr %i.fg, align 1, !tbaa !69
  %.not.i55 = icmp ult i32 %i.fa, %3
  br i1 %.not.i55, label %._crit_edge.i56, label %.lr.ph.i54, !llvm.loop !48

._crit_edge.i56:                                  ; preds = %.lr.ph.i54, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.fh = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.eu, %.lr.ph.i54 ]
  %.020.lcssa.i = phi i32 [ %2, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fa, %.lr.ph.i54 ]
  %i.fi = zext i32 %.020.lcssa.i to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fk, %._crit_edge.i56 ], [ %i.bx, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bz, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.fh, %._crit_edge.i56 ], [ %i.ax, %bb.p ], [ %i.cg, %bb.u ], [ 1, %bb.b ], [ %i.i, %bb.g ], [ %i.ax, %bb.q ], [ %i.dj, %.preheader.i ], [ %i.dj, %.lr.ph.i42 ], [ %i.dj, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !69
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fl, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIyENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.w [
    i32 16, label %bb.d
    i32 10, label %bb.h
    i32 8, label %bb.r
    i32 2, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = sub nuw nsw i32 67, %i.d
  %i.f = lshr i32 %i.e, 2                         ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %2, 255
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.m = add nsw i32 %i.f, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i64 [ %i.u, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %i.n = and i64 %.02830.i, 15
  %i.o = lshr i64 %.02830.i, 4
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = zext i32 %.031.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  store i8 %i.q, ptr %i.s, align 1, !tbaa !69
  %i.t = and i64 %i.o, 15
  %i.u = lshr i64 %.02830.i, 8                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !69
  %i.x = add nsw i32 %.031.i, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !69
  %i.aa = add nsw i32 %.031.i, -2
  %i.ab = icmp ugt i64 %.02830.i, 65535
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.028.lcssa.i = phi i64 [ %2, %bb.e ], [ %i.u, %.lr.ph.i ] ; 4 uses
  %i.ac = icmp samesign ugt i64 %.028.lcssa.i, 15
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = and i64 %.028.lcssa.i, 15
  %i.ae = lshr i64 %.028.lcssa.i, 4
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.028.pn.i = phi i64 [ %i.ae, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ai = icmp ult i64 %2, 10
  br i1 %i.ai, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.029.i.i = phi i32 [ %i.aq, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ap, %bb.n ], [ %2, %bb.h ] ; 5 uses
  %i.aj = icmp ult i64 %.02328.i.i, 100
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ap = udiv i64 %.02328.i.i, 10000
  %i.aq = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ar = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ar, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ak, %bb.i ], [ %i.am, %bb.k ], [ 1, %bb.h ], [ %i.aq, %bb.n ] ; 2 uses
  %i.as = ptrtoint ptr %1 to i64
  %i.at = ptrtoint ptr %0 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = zext i32 %.022.i.i to i64               ; 3 uses
  %i.aw = icmp slt i64 %i.au, %i.av
  br i1 %i.aw, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.o, !prof !155

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ax = icmp ugt i64 %2, 99
  br i1 %i.ax, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.ay = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bb, %.lr.ph.i9.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bl, %.lr.ph.i9.i ], [ %i.ay, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = urem i64 %.020.i.i, 100
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !69
  %i.bf = zext i32 %.01819.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !69
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !69
  %i.bi = add i32 %.01819.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !69
  %i.bl = add i32 %.01819.i.i, -2
  %i.bm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.o
  %.0.lcssa.i.i = phi i64 [ %2, %bb.o ], [ %i.bb, %.lr.ph.i9.i ] ; 3 uses
  %i.bn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !69
  %i.bt = load i8, ptr %i.bp, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bu = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bv = or disjoint i8 %i.bu, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %.lhs.trunc.i = sub nuw nsw i8 66, %i.bx
  %i.by = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.bz = ptrtoint ptr %1 to i64
  %i.ca = ptrtoint ptr %0 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = zext nneg i8 %i.by to i64               ; 2 uses
  %i.cd = icmp slt i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.s, !prof !155

bb.s:                                             ; preds = %bb.r
  %i.ce = icmp ugt i64 %2, 63
  br i1 %i.ce, label %.lr.ph.preheader.i37, label %._crit_edge.i29

.lr.ph.preheader.i37:                             ; preds = %bb.s
  %.zext.i = zext nneg i8 %i.by to i32
  %i.cf = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.preheader.i37
  %.031.i39 = phi i32 [ %i.cs, %.lr.ph.i38 ], [ %i.cf, %.lr.ph.preheader.i37 ] ; 3 uses
  %.02830.i40 = phi i64 [ %i.cl, %.lr.ph.i38 ], [ %2, %.lr.ph.preheader.i37 ] ; 3 uses
  %i.cg = trunc i64 %.02830.i40 to i8             ; 2 uses
  %i.ch = and i8 %i.cg, 7
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = zext i32 %.031.i39 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !69
  %i.cl = lshr i64 %.02830.i40, 6                 ; 2 uses
  %i.cm = lshr i8 %i.cg, 3
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = add nsw i32 %.031.i39, -1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !69
  %i.cs = add nsw i32 %.031.i39, -2
  %i.ct = icmp ugt i64 %.02830.i40, 4095
  br i1 %i.ct, label %.lr.ph.i38, label %._crit_edge.i29, !llvm.loop !42

._crit_edge.i29:                                  ; preds = %.lr.ph.i38, %bb.s
  %.028.lcssa.i30 = phi i64 [ %2, %bb.s ], [ %i.cl, %.lr.ph.i38 ] ; 4 uses
  %i.cu = icmp samesign ugt i64 %.028.lcssa.i30, 7
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i29
  %i.cv = lshr i64 %.028.lcssa.i30, 3
  %i.cw = trunc nuw nsw i64 %.028.lcssa.i30 to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i29
  %storemerge.in.in.i = phi i64 [ %i.cv, %bb.t ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.v:                                             ; preds = %bb.c
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 5 uses
  %i.db = sub nuw nsw i64 64, %i.da               ; 4 uses
  %i.dc = ptrtoint ptr %1 to i64
  %i.dd = ptrtoint ptr %0 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp slt i64 %i.de, %i.db
  br i1 %i.df, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.v
  %.not16.i = icmp eq i64 %i.da, 63
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i64 %i.da, 63                     ; 3 uses
  %4 = trunc nuw nsw i64 %.015.i to i32
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dg = trunc i64 %2 to i8
  %i.dh = and i8 %i.dg, 1
  %i.di = or disjoint i8 %i.dh, 48
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.015.i
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !69
  %i.dk = lshr i64 %2, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.da
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i64 [ %2, %.lr.ph.preheader.i41 ], [ %i.dk, %.lr.ph.i42.prol ]
  %i.dl = icmp eq i64 %i.da, 62
  br i1 %i.dl, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.dw, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dm = trunc i64 %.01317.i to i8
  %i.dn = and i8 %i.dm, 1
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !69
  %i.dq = lshr i64 %.01317.i, 1
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = and i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !69
  %i.dw = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dx = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !43

bb.w:                                             ; preds = %bb.c
  %i.dy = mul nsw i32 %3, %3                      ; 2 uses
  %i.dz = mul i32 %i.dy, %3                       ; 2 uses
  %i.ea = mul i32 %i.dz, %3
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = zext i32 %3 to i64                      ; 3 uses
  %i.ed = icmp ult i64 %2, %i.ec
  br i1 %i.ed, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.w
  %i.ee = zext nneg i32 %i.dy to i64
  %i.ef = zext i32 %i.dz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i.i48
  %.029.i.i49 = phi i32 [ 1, %.lr.ph.i.i48 ], [ %i.en, %bb.ad ] ; 4 uses
  %.02328.i.i50 = phi i64 [ %2, %.lr.ph.i.i48 ], [ %i.em, %bb.ad ] ; 4 uses
  %i.eg = icmp ult i64 %.02328.i.i50, %i.ee
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = add i32 %.029.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.z:                                             ; preds = %bb.x
  %i.ei = icmp ult i64 %.02328.i.i50, %i.ef
  br i1 %i.ei, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = add i32 %.029.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ab:                                            ; preds = %bb.z
  %i.ek = icmp ult i64 %.02328.i.i50, %i.eb
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.el = add i32 %.029.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ad:                                            ; preds = %bb.ab
  %i.em = udiv i64 %.02328.i.i50, %i.eb           ; 2 uses
  %i.en = add i32 %.029.i.i49, 4                  ; 2 uses
  %i.eo = icmp ult i64 %i.em, %i.ec
  br i1 %i.eo, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, label %bb.x, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51:  ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %.022.i.i52 = phi i32 [ %i.el, %bb.ac ], [ %i.eh, %bb.y ], [ %i.ej, %bb.aa ], [ %i.en, %bb.ad ] ; 2 uses
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = ptrtoint ptr %0 to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.et = icmp slt i64 %i.er, %i.es
  br i1 %i.et, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i53, !prof !155

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.w
  %i.eu = ptrtoint ptr %1 to i64
  %i.ev = ptrtoint ptr %0 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp slt i64 %i.ew, 1
  br i1 %i.ex, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !155

.preheader.i53:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51
  %i.ey = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader.i53
  %.0.in27.i = phi i32 [ %.022.i.i52, %.preheader.i53 ], [ %.0.i, %bb.ae ]
  %.02026.i = phi i64 [ %2, %.preheader.i53 ], [ %i.ez, %bb.ae ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.ez = udiv i64 %.02026.i, %i.ey               ; 3 uses
  %i.fa = urem i64 %.02026.i, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !69
  %i.fd = zext i32 %.0.i to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %i.fd
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !69
  %.not.i55 = icmp ult i64 %i.ez, %i.ec
  br i1 %.not.i55, label %._crit_edge.i56, label %bb.ae, !llvm.loop !44

._crit_edge.i56:                                  ; preds = %bb.ae, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.ff = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.es, %bb.ae ]
  %.020.lcssa.i = phi i64 [ %2, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.ez, %bb.ae ]
  %i.fg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fh, %._crit_edge.i56 ], [ %i.bt, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bv, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.ff, %._crit_edge.i56 ], [ %i.av, %bb.p ], [ %i.cc, %bb.u ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.av, %bb.q ], [ %i.db, %.preheader.i ], [ %i.db, %.lr.ph.i42 ], [ %i.db, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !69
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fi, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #43

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not104 = icmp eq ptr %2, %3
  br i1 %.not104, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = sdiv exact i64 %i.c, 40                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190  ; 14 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 5 uses
  %i.n = sdiv exact i64 %i.m, 40                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @_ZN4toml2v314path_componentC1EOS1_(ptr noundef nonnull align 8 dereferenceable(33) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.08.012.i.i.i.i.i) #50
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !49

_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !190
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.l                       ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJS2_S9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_:bb.a
  store i64 %i.k, ptr %i.c, align 8, !tbaa !69
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !67
  store ptr %i.e, ptr %2, align 8, !tbaa !66
  store i64 0, ptr %i.m, align 8, !tbaa !67
  store i8 0, ptr %i.e, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !156
  store ptr null, ptr %i.s, align 8, !tbaa !150
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !156
  store ptr null, ptr %i.r, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.v = load i64, ptr %3, align 8, !tbaa !174
  store i64 %i.v, ptr %i.u, align 8, !tbaa !174
  store ptr null, ptr %3, align 8, !tbaa !174
  %i.w = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 5 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.x, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.aa
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !67  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ab) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #50 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.aj = sub i64 %i.ab, %i.ad
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ak = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i
  %i.al = phi i1 [ %i.ak, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #50
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !157
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !157
  br label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #50
  resume { ptr, i32 } %i.ap

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #50
  br label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.g
  %.sroa.014.018 = phi ptr [ %i.a, %.thread ], [ %i.x, %bb.g ]
  ret ptr %.sroa.014.018
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE11source_pathB5cxx11Ev(ptr nofree noundef nonnull readnone align 32 captures(ret: address, provenance) dereferenceable(896) %0) unnamed_addr #44 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE9read_nextEv(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.d = load i64, ptr %i.c, align 32, !tbaa !918 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !348  ; 2 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !306  ; 4 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !324  ; 3 uses
  %.not2 = icmp ult i64 %i.j, %i.k
  br i1 %.not2, label %bb.c, label %.critedge, !prof !168

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.l = add i64 %i.j, 32                         ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.k) ; 2 uses
  %i.m = sub i64 %.sroa.speculated.i.i, %i.j      ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !323
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %i.p, i64 %i.m, i1 false)
  store i64 %.sroa.speculated.i.i, ptr %i.i, align 8, !tbaa !306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(800) %i.b, i8 0, i64 800, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  switch i32 %i.r, label %.lr.ph54.i [
    i32 12, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
    i32 0, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  ]

_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i: ; preds = %bb.c, %bb.c
  %i.s = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.u = and i64 %i.m, -16                        ; 2 uses
  %.not.i34.i = icmp eq i64 %i.u, 0
  br i1 %.not.i34.i, label %bb.d, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.w = bitcast <2 x i64> %i.aa to <16 x i8>
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %.not32.i.i = icmp eq i16 %i.y, 0
  br i1 %.not32.i.i, label %._crit_edge._crit_edge.i.i, label %.lr.ph54.i

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = ptrtoaddr ptr %i.ab to i64
  br label %bb.d

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.02634.i.i = phi <2 x i64> [ %i.aa, %.lr.ph.i.i ], [ zeroinitializer, %.lr.ph.preheader.i.i ]
  %.02733.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.z = load <2 x i64>, ptr %.02733.i.i, align 1, !tbaa !69
  %i.aa = or <2 x i64> %i.z, %.02634.i.i          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 16 ; 4 uses
  %i.ac = icmp ult ptr %i.ab, %i.v
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

bb.d:                                             ; preds = %._crit_edge._crit_edge.i.i, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  %.22943.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge._crit_edge.i.i ], [ %i.s, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i ]
  %.229.i.i = phi ptr [ %i.ab, %._crit_edge._crit_edge.i.i ], [ %i.a, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i ] ; 3 uses
  %i.ad = icmp ult ptr %.229.i.i, %i.t
  br i1 %i.ad, label %.lr.ph38.preheader.i.i, label %.lr.ph.preheader.i

.lr.ph38.preheader.i.i:                           ; preds = %bb.d
  %i.ae = add i64 %i.m, %i.s
  %i.af = sub i64 %i.ae, %.22943.pre-phi.i.i
  %scevgep.i.i = getelementptr i8, ptr %.229.i.i, i64 %i.af
  br label %.lr.ph38.i.i

bb.e:                                             ; preds = %.lr.ph38.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.33036.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ag, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph38.i.i, !llvm.loop !29

.lr.ph38.i.i:                                     ; preds = %bb.e, %.lr.ph38.preheader.i.i
  %.33036.i.i = phi ptr [ %i.ag, %bb.e ], [ %.229.i.i, %.lr.ph38.preheader.i.i ] ; 2 uses
  %i.ah = load i8, ptr %.33036.i.i, align 1, !tbaa !69
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.e, label %.lr.ph54.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.q, align 8, !tbaa !349
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.aj, align 8, !tbaa !312
  store i64 %i.m, ptr %i.e, align 8, !tbaa !348
  %umax.i = call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 3 uses
  %xtraiter = and i64 %umax.i, 1
  %i.ak = icmp ult i64 %i.m, 2
  br i1 %i.ak, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %umax.i, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.02352.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ay, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02352.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02352.i
  %i.an = load i8, ptr %i.am, align 2, !tbaa !69  ; 2 uses
  %i.ao = sext i8 %i.an to i32
  store i32 %i.ao, ptr %i.al, align 16, !tbaa !334
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i8 %i.an, ptr %i.ap, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !246
  %i.ar = or disjoint i64 %.02352.i, 1            ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69  ; 2 uses
  %i.av = sext i8 %i.au to i32
  store i32 %i.av, ptr %i.as, align 8, !tbaa !334
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 %i.au, ptr %i.aw, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1, ptr %i.ax, align 16, !tbaa !246
  %i.ay = add nuw i64 %.02352.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i40.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !916

.lr.ph54.i:                                       ; preds = %.lr.ph38.i.i, %._crit_edge.i.i, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.promoted58.i = load i32, ptr %i.az, align 4
  %umax69.i = call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  br label %bb.g

bb.f:                                             ; preds = %bb.o
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  %i.bc = icmp uge i64 %i.l, %i.k
  %i.bd = freeze i1 %i.bc
  %cond.i = icmp ne i8 %i.ca, 0
  %or.cond.not.i = and i1 %i.bd, %cond.i
  br i1 %or.cond.not.i, label %bb.p, label %..lr.ph.i40.i_crit_edge, !prof !339

..lr.ph.i40.i_crit_edge:                          ; preds = %bb.f
  %.pre = load i64, ptr %i.e, align 8, !tbaa !348
  br label %.lr.ph.i40.i

bb.g:                                             ; preds = %bb.o, %.lr.ph54.i
  %i.be = phi i32 [ %.promoted58.i, %.lr.ph54.i ], [ %i.bv, %bb.o ]
  %i.bf = phi i32 [ %i.r, %.lr.ph54.i ], [ %i.cb, %bb.o ] ; 3 uses
  %.02253.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.dd, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02253.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69  ; 4 uses
  %i.bi = icmp ne i32 %i.bf, 12
  call void @llvm.assume(i1 %i.bi)
  %i.bj = zext i8 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !69  ; 2 uses
  %i.bm = icmp eq i32 %i.bf, 0
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = zext i8 %i.bl to i32                    ; 2 uses
  %i.bo = lshr i32 255, %i.bn
  %i.bp = zext i8 %i.bh to i32
  %i.bq = and i32 %i.bo, %i.bp
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

bb.i:                                             ; preds = %bb.g
  %i.br = and i8 %i.bh, 63
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = shl i32 %i.be, 6
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %.pre.i35.i = zext i8 %i.bl to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

_ZN4toml2v34impl12utf8_decoderclEh.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i32 [ %.pre.i35.i, %bb.i ], [ %i.bn, %bb.h ]
  %i.bv = phi i32 [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 5 uses
  %i.bw = add i32 %i.bf, 256
  %i.bx = add i32 %i.bw, %.pre-phi.i.i
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !69  ; 4 uses
  %i.cb = zext i8 %i.ca to i32                    ; 4 uses
  %i.cc = icmp eq i8 %i.ca, 12
  br i1 %i.cc, label %bb.j, label %bb.k, !prof !155

bb.j:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.cd = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i36.i = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr [24 x i8], ptr %0, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = select i1 %.not.i36.i, ptr %i.ch, ptr %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef @.str.223, ptr noundef nonnull align 4 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #50
  call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.k:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  %i.ck = load i64, ptr %i.bb, align 8, !tbaa !312 ; 2 uses
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.bb, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ck
  store i8 %i.bh, ptr %i.cm, align 1, !tbaa !69
  %i.cn = icmp eq i8 %i.ca, 0
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.e, align 8, !tbaa !348
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.co ; 3 uses
  store i32 %i.bv, ptr %i.cq, align 8, !tbaa !334
  %i.cr = load i64, ptr %i.bb, align 8, !tbaa !312 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !246
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ct, ptr nonnull align 16 %i.ba, i64 %i.cr, i1 false)
  store i64 0, ptr %i.bb, align 8, !tbaa !312
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cu = load i64, ptr %i.bb, align 8, !tbaa !312
  %i.cv = icmp eq i64 %i.cu, 4
  br i1 %i.cv, label %bb.n, label %bb.o, !prof !155

bb.n:                                             ; preds = %bb.m
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.cw = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.cx = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i37.i = icmp eq i64 %i.cx, 0
  %i.cy = getelementptr [24 x i8], ptr %0, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.db = select i1 %.not.i37.i, ptr %i.da, ptr %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cw, ptr noundef @.str.224, ptr noundef nonnull align 4 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #50
  call void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.dd = add nuw i64 %.02253.i, 1                ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.dd, %umax69.i
  br i1 %exitcond70.not.i, label %bb.f, label %bb.g, !llvm.loop !917

bb.p:                                             ; preds = %bb.f
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.de = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.df = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i38.i = icmp eq i64 %i.df, 0
  %i.dg = getelementptr [24 x i8], ptr %0, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = select i1 %.not.i38.i, ptr %i.di, ptr %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #50
  call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

.lr.ph.i40.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i40.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.02352.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ay, %.lr.ph.i40.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i64 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02352.i.epil.init ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02352.i.epil.init
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !69  ; 2 uses
  %i.do = sext i8 %i.dn to i32
  store i32 %i.do, ptr %i.dl, align 8, !tbaa !334
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i8 %i.dn, ptr %i.dp, align 4, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 1, ptr %i.dq, align 8, !tbaa !246
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i40.i.loopexit.unr-lcssa, %..lr.ph.i40.i_crit_edge
  %i.dr = phi i64 [ %.pre, %..lr.ph.i40.i_crit_edge ], [ %i.m, %.lr.ph.i40.i.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.ds = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i40.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %i.ef, %bb.t ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.01.i.i ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dt, align 32           ; 3 uses
  store i64 %i.dx, ptr %i.dw, align 8
  %i.dy = load i32, ptr %i.dv, align 8, !tbaa !241
  %i.dz = icmp eq i32 %i.dy, 10
  br i1 %i.dz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ea = trunc i64 %i.dx to i32
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dt, align 32, !tbaa !351
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ec = lshr i64 %i.dx, 32
  %i.ed = trunc nuw i64 %i.ec to i32
  %i.ee = add i32 %i.ed, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %storemerge.i.i = phi i32 [ %i.ee, %bb.s ], [ 1, %bb.r ]
  store i32 %storemerge.i.i, ptr %i.du, align 4, !tbaa !352
  %i.ef = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %i.ef, %i.dr
  br i1 %exitcond.not.i41.i, label %bb.u, label %bb.q, !llvm.loop !51

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.a
  %i.eg = phi i64 [ 0, %bb.u ], [ %i.d, %bb.a ]   ; 3 uses
  %i.eh = phi i64 [ %i.dr, %bb.u ], [ %i.f, %bb.a ]
  %i.ei = icmp ult i64 %i.eg, %i.eh
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eg, 1
  store i64 %i.ej, ptr %i.c, align 32, !tbaa !918
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.eg
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.v
  %.0 = phi ptr [ %i.ek, %bb.v ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE8peek_eofEv(ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(896) %0) unnamed_addr #45 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !306
  %i.d = load i64, ptr %i.a, align 8, !tbaa !324
  %i.e = icmp uge i64 %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !35
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !35
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 896, i64 noundef 32) #51
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvEJRSt17basic_string_viewIcS7_EEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSE_.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %3, align 8, !tbaa !123 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !124 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !86
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  %i.h = icmp ne i64 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.h, %i.g
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.a

.noexc.i.i:                                       ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSE_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #54
          to label %.noexc unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.a:                                             ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !tbaa !123
  %i.i = icmp ugt i64 %.sroa.0.0.copyload.i.i.i, 15
  br i1 %i.i, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11 ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i.i.i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !66
  %i.k = load i64, ptr %i.a, align 8, !tbaa !123
  store i64 %i.k, ptr %i.f, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc9, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc9 ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.m = load i8, ptr %.sroa.2.0.copyload.i.i.i, align 1, !tbaa !69
  store i8 %i.m, ptr %i.l, align 1, !tbaa !69
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i, i1 false)
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_116utf8_byte_streamISiEC2ERSi:bb.a
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef %i.j, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @_ZNK12_GLOBAL__N_111utf8_readerISiE11source_pathB5cxx11Ev(ptr nofree noundef nonnull readnone align 32 captures(ret: address, provenance) dereferenceable(896) %0) unnamed_addr #44 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_111utf8_readerISiE9read_nextEv(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.d = load i64, ptr %i.c, align 32, !tbaa !922 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !354  ; 2 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !353  ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !322
  %i.p = and i32 %i.o, 3
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.c, label %.critedge, !prof !168

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull %i.a, i64 noundef 32)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !353  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !342  ; 11 uses
  %.not.i2.not = icmp eq i64 %i.t, 0
  br i1 %.not.i2.not, label %bb.j, label %bb.n, !prof !155

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = extractvalue { ptr, i32 } %i.u, 1
  %i.x = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #50
  %i.y = icmp eq i32 %i.w, %i.x
  %i.z = call ptr @__cxa_begin_catch(ptr %i.v) #50 ; 2 uses
  %i.aa = call ptr @__cxa_allocate_exception(i64 48) #50 ; 4 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #50, !inline_history !919
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #50
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
          to label %bb.ai unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef @.str.226, ptr noundef nonnull align 4 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #50
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
          to label %bb.ai unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.i:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.j:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.r, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !322
  %i.ar = and i32 %i.aq, 2
  %.not58.i = icmp eq i32 %i.ar, 0
  br i1 %.not58.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !349
  switch i32 %i.at, label %bb.l [
    i32 12, label %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread
    i32 0, label %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.au = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #50
  call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ax = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef @.str.222, ptr noundef nonnull align 4 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az) #50
  call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.n:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(800) %i.b, i8 0, i64 800, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !349 ; 2 uses
  switch i32 %i.bb, label %.critedge.i [
    i32 12, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i
    i32 0, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i
  ]

_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i: ; preds = %bb.n, %bb.n
  %i.bc = ptrtoaddr ptr %i.a to i64               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.be = and i64 %i.t, -16                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i, label %bb.o, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.bg = bitcast <2 x i64> %i.bk to <16 x i8>
  %i.bh = icmp slt <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %.not32.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not32.i.i, label %._crit_edge._crit_edge.i.i, label %.critedge.i

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = ptrtoaddr ptr %i.bl to i64
  br label %bb.o

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.02634.i.i = phi <2 x i64> [ %i.bk, %.lr.ph.i.i ], [ zeroinitializer, %.lr.ph.preheader.i.i ]
  %.02733.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bj = load <2 x i64>, ptr %.02733.i.i, align 1, !tbaa !69
  %i.bk = or <2 x i64> %i.bj, %.02634.i.i         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 16 ; 4 uses
  %i.bm = icmp ult ptr %i.bl, %i.bf
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i
  %.22943.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge._crit_edge.i.i ], [ %i.bc, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i ]
  %.229.i.i = phi ptr [ %i.bl, %._crit_edge._crit_edge.i.i ], [ %i.a, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i ] ; 3 uses
  %i.bn = icmp ult ptr %.229.i.i, %i.bd
  br i1 %i.bn, label %.lr.ph38.preheader.i.i, label %.loopexit.i

.lr.ph38.preheader.i.i:                           ; preds = %bb.o
  %i.bo = add i64 %i.t, %i.bc
  %i.bp = sub i64 %i.bo, %.22943.pre-phi.i.i
  %scevgep.i.i = getelementptr i8, ptr %.229.i.i, i64 %i.bp
  br label %.lr.ph38.i.i

bb.p:                                             ; preds = %.lr.ph38.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.33036.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.bq, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph38.i.i, !llvm.loop !29

.lr.ph38.i.i:                                     ; preds = %bb.p, %.lr.ph38.preheader.i.i
  %.33036.i.i = phi ptr [ %i.bq, %bb.p ], [ %.229.i.i, %.lr.ph38.preheader.i.i ] ; 2 uses
  %i.br = load i8, ptr %.33036.i.i, align 1, !tbaa !69
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %bb.p, label %.critedge.i

.loopexit.i:                                      ; preds = %bb.p, %bb.o
  store i32 0, ptr %i.ba, align 8, !tbaa !349
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.bt, align 8, !tbaa !321
  store i64 %i.t, ptr %i.e, align 8, !tbaa !354
  %xtraiter = and i64 %i.t, 1
  %i.bu = icmp eq i64 %i.t, 1
  br i1 %i.bu, label %.epil.preheader, label %.loopexit.i.new

.loopexit.i.new:                                  ; preds = %.loopexit.i
  %unroll_iter = and i64 %i.t, -2
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.loopexit.i.new
  %.02962.i = phi i64 [ 0, %.loopexit.i.new ], [ %i.ci, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.loopexit.i.new ], [ %niter.next.1, %bb.q ]
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02962.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02962.i
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !69  ; 2 uses
  %i.by = sext i8 %i.bx to i32
  store i32 %i.by, ptr %i.bv, align 16, !tbaa !334
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %i.bx, ptr %i.bz, align 4, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 1, ptr %i.ca, align 8, !tbaa !246
  %i.cb = or disjoint i64 %.02962.i, 1            ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !69  ; 2 uses
  %i.cf = sext i8 %i.ce to i32
  store i32 %i.cf, ptr %i.cc, align 8, !tbaa !334
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i8 %i.ce, ptr %i.cg, align 4, !tbaa !69
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 1, ptr %i.ch, align 16, !tbaa !246
  %i.ci = add nuw i64 %.02962.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i48.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !920

.critedge.i:                                      ; preds = %.lr.ph38.i.i, %._crit_edge.i.i, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.promoted67.i = load i32, ptr %i.cj, align 4
  br label %.backedge

bb.r:                                             ; preds = %bb.y
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  br label %.lr.ph.i48.i

.backedge:                                        ; preds = %.backedge.backedge, %.critedge.i
  %i.cm = phi i32 [ %.promoted67.i, %.critedge.i ], [ %i.dd, %.backedge.backedge ]
  %.02866.i = phi i64 [ 0, %.critedge.i ], [ %.02866.i.be, %.backedge.backedge ] ; 3 uses
  %i.cn = phi i32 [ %i.bb, %.critedge.i ], [ %i.dj, %.backedge.backedge ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02866.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !69  ; 4 uses
  %i.cq = icmp ne i32 %i.cn, 12
  call void @llvm.assume(i1 %i.cq)
  %i.cr = zext i8 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69  ; 2 uses
  %i.cu = icmp eq i32 %i.cn, 0
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.backedge
  %i.cv = zext i8 %i.ct to i32                    ; 2 uses
  %i.cw = lshr i32 255, %i.cv
  %i.cx = zext i8 %i.cp to i32
  %i.cy = and i32 %i.cw, %i.cx
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

bb.t:                                             ; preds = %.backedge
  %i.cz = and i8 %i.cp, 63
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = shl i32 %i.cm, 6
  %i.dc = or disjoint i32 %i.db, %i.da
  %.pre.i43.i = zext i8 %i.ct to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

_ZN4toml2v34impl12utf8_decoderclEh.exit.i:        ; preds = %bb.t, %bb.s
  %.pre-phi.i.i = phi i32 [ %.pre.i43.i, %bb.t ], [ %i.cv, %bb.s ]
  %i.dd = phi i32 [ %i.dc, %bb.t ], [ %i.cy, %bb.s ] ; 6 uses
  %i.de = add i32 %i.cn, 256
  %i.df = add i32 %i.de, %.pre-phi.i.i
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !69  ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 5 uses
  %i.dk = icmp eq i8 %i.di, 12
  br i1 %i.dk, label %bb.u, label %bb.v, !prof !155

bb.u:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.dl = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i44.i = icmp eq i64 %i.dm, 0
  %i.dn = getelementptr [24 x i8], ptr %0, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = select i1 %.not.i44.i, ptr %i.dp, ptr %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef @.str.223, ptr noundef nonnull align 4 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #50
  call void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.v:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  %i.ds = load i64, ptr %i.cl, align 8, !tbaa !321 ; 2 uses
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.cl, align 8, !tbaa !321
  %i.du = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ds
  store i8 %i.cp, ptr %i.du, align 1, !tbaa !69
  %i.dv = icmp eq i8 %i.di, 0
  br i1 %i.dv, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = load i64, ptr %i.cl, align 8, !tbaa !321
  %i.dx = icmp eq i64 %i.dw, 4
  br i1 %i.dx, label %bb.x, label %.thread, !prof !155

bb.x:                                             ; preds = %bb.w
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.dy = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.dz = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i45.i = icmp eq i64 %i.dz, 0
  %i.ea = getelementptr [24 x i8], ptr %0, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 56
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = select i1 %.not.i45.i, ptr %i.ec, ptr %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef @.str.224, ptr noundef nonnull align 4 dereferenceable(8) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #50
  call void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.e, align 8, !tbaa !354
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ef ; 3 uses
  store i32 %i.dd, ptr %i.eh, align 8, !tbaa !334
  %i.ei = load i64, ptr %i.cl, align 8, !tbaa !321 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !246
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 32 %i.ck, i64 %i.ei, i1 false)
  store i64 0, ptr %i.cl, align 8, !tbaa !321
  %i.el = add nuw i64 %.02866.i, 1                ; 2 uses
  %exitcond82.not.i = icmp eq i64 %i.el, %i.t
  br i1 %exitcond82.not.i, label %bb.r, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.y, %.thread
  %.02866.i.be = phi i64 [ %i.el, %bb.y ], [ %i.em, %.thread ]
  br label %.backedge, !llvm.loop !921

.thread:                                          ; preds = %bb.w
  %i.em = add nuw i64 %.02866.i, 1                ; 2 uses
  %exitcond82.not.i3 = icmp eq i64 %i.em, %i.t
  br i1 %exitcond82.not.i3, label %bb.z, label %.backedge.backedge

bb.z:                                             ; preds = %.thread
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  %i.en = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %i.r, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !322
  %i.et = and i32 %i.es, 2
  %.not59.i = icmp eq i32 %i.et, 0
  br i1 %.not59.i, label %.lr.ph.i48.i, label %bb.aa, !prof !168

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.eu = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i46.i = icmp eq i64 %i.ev, 0
  %i.ew = getelementptr [24 x i8], ptr %0, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 56
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = select i1 %.not.i46.i, ptr %i.ey, ptr %i.ex
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, ptr noundef @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #50
  call void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

.lr.ph.i48.i.loopexit.unr-lcssa:                  ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i48.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i48.i.loopexit.unr-lcssa, %.loopexit.i
  %.02962.i.epil.init = phi i64 [ 0, %.loopexit.i ], [ %i.ci, %.lr.ph.i48.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod61 = trunc i64 %i.t to i1
  call void @llvm.assume(i1 %lcmp.mod61)
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02962.i.epil.init ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02962.i.epil.init
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !69  ; 2 uses
  %i.fe = sext i8 %i.fd to i32
  store i32 %i.fe, ptr %i.fb, align 8, !tbaa !334
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i8 %i.fd, ptr %i.ff, align 4, !tbaa !69
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 1, ptr %i.fg, align 8, !tbaa !246
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.epil.preheader, %.lr.ph.i48.i.loopexit.unr-lcssa, %bb.r, %bb.z
  %i.fh = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.fi = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i48.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i48.i ], [ %i.fv, %bb.ae ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.01.i.i ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fj, align 16           ; 3 uses
  store i64 %i.fn, ptr %i.fm, align 8
  %i.fo = load i32, ptr %i.fl, align 8, !tbaa !241
  %i.fp = icmp eq i32 %i.fo, 10
  br i1 %i.fp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fq = trunc i64 %i.fn to i32
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fj, align 16, !tbaa !355
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fs = lshr i64 %i.fn, 32
  %i.ft = trunc nuw i64 %i.fs to i32
  %i.fu = add i32 %i.ft, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %storemerge.i.i = phi i32 [ %i.fu, %bb.ad ], [ 1, %bb.ac ]
  store i32 %storemerge.i.i, ptr %i.fk, align 4, !tbaa !356
  %i.fv = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %exitcond.not.i49.i = icmp eq i64 %i.fv, %i.fh
  br i1 %exitcond.not.i49.i, label %_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv.exit.i, label %bb.ab, !llvm.loop !52

_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv.exit.i: ; preds = %bb.ae
  %i.fw = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.fx = getelementptr i8, ptr %i.fw, i64 -24
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds i8, ptr %i.r, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !322
  %1 = and i32 %i.gb, 1
  %.not60.i = icmp eq i32 %1, 0
  br i1 %.not60.i, label %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit, label %bb.af, !prof !168

bb.af:                                            ; preds = %_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv.exit.i
  %i.gc = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.gc, ptr noundef @.str.225, ptr noundef nonnull align 4 dereferenceable(8) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #50
  call void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.ag:                                            ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ak, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  resume { ptr, i32 } %.pn.i

bb.ah:                                            ; preds = %bb.i, %bb.h
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #53
  unreachable

bb.ai:                                            ; preds = %bb.g, %bb.f
  unreachable

_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread: ; preds = %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %.critedge

_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit: ; preds = %_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit, %bb.a
  %i.gg = phi i64 [ 0, %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit ], [ %i.d, %bb.a ] ; 3 uses
  %i.gh = phi i64 [ %i.fh, %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit ], [ %i.f, %bb.a ]
  %i.gi = icmp ult i64 %i.gg, %i.gh
  call void @llvm.assume(i1 %i.gi)
  %i.gj = add nuw nsw i64 %i.gg, 1
  store i64 %i.gj, ptr %i.c, align 32, !tbaa !922
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.gg
  br label %.critedge

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread, %bb.b, %bb.aj
  %.0 = phi ptr [ %i.gk, %bb.aj ], [ null, %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_111utf8_readerISiE8peek_eofEv(ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(896) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !353 ; 3 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !74
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !322
  %i.h = and i32 %i.g, 2
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %_ZNK12_GLOBAL__N_116utf8_byte_streamISiE8peek_eofEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %.val)
  %i.j = icmp eq i32 %i.i, -1
  br label %_ZNK12_GLOBAL__N_116utf8_byte_streamISiE8peek_eofEv.exit

_ZNK12_GLOBAL__N_116utf8_byte_streamISiE8peek_eofEv.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ true, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111utf8_readerISiED0Ev(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !36
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !36
  br label %_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit

_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit:      ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 896, i64 noundef 32) #51
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #47

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nofree captures(none) %.0.val) unnamed_addr #46 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 840
  %i.b = load i64, ptr %i.a, align 8, !tbaa !354  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.01 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.e ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.d, align 16             ; 3 uses
  store i64 %i.h, ptr %i.g, align 8
  %i.i = load i32, ptr %i.f, align 8, !tbaa !241
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.h to i32
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.d, align 16, !tbaa !355
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.h, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.o, %bb.d ], [ 1, %bb.c ]
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !356
  %i.p = add nuw i64 %.01, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !52
}

declare noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #43

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #48

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #49

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #43
end_hunk_9
