Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/depfile_parser?download=true
inline.NumInlined: 86
inline.NumDeleted: 45
begin_hunk_0_@_ZN13DepfileParser5ParseEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_:bb.a
  br label %.loopexit282

.loopexit282:                                     ; preds = %bb.ax, %.loopexit282.loopexit.split.loop.exit, %bb.u
  %.10 = phi ptr [ %i.am, %bb.u ], [ %i.ca, %.loopexit282.loopexit.split.loop.exit ], [ %i.dq, %bb.ax ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19  ; 4 uses
  %i.cd = icmp ult i8 %i.cc, 13
  br i1 %i.cd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit282
  switch i8 %i.cc, label %bb.ae [
    i8 10, label %bb.an
    i8 9, label %bb.an
    i8 0, label %bb.an
  ]

bb.ad:                                            ; preds = %.loopexit282
  switch i8 %i.cc, label %bb.ae [
    i8 32, label %bb.an
    i8 13, label %bb.an
  ]

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = ptrtoint ptr %.1179 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = icmp sgt i32 %i.ch, 2
  %i.cj = icmp ult ptr %.0189, %.1179
  %or.cond238 = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond238, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = add i64 %i.cg, 4294967294
  %i.cl = and i64 %i.ck, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %.0189, i8 92, i64 %i.cl, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cm = shl i64 %i.cg, 32
  %sext224 = add i64 %i.cm, -8589934592
  %i.cn = ashr exact i64 %sext224, 32
  %i.co = getelementptr inbounds i8, ptr %.0189, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 58, ptr %i.co, align 1, !tbaa !19
  br label %.backedge

.backedge:                                        ; preds = %bb.ag, %bb.ab, %._crit_edge424, %bb.v, %.loopexit284._crit_edge
  %.0189.be = phi ptr [ %i.ai, %.loopexit284._crit_edge ], [ %i.cp, %bb.ag ], [ %i.bm, %._crit_edge424 ], [ %i.bz, %bb.ab ], [ %i.at, %bb.v ]
  %.1179.be = phi ptr [ %.5, %.loopexit284._crit_edge ], [ %i.cb, %bb.ag ], [ %i.bc, %._crit_edge424 ], [ %i.bn, %bb.ab ], [ %i.as, %bb.v ]
  br label %bb.b, !llvm.loop !20

.preheader:                                       ; preds = %bb.u, %bb.ax
  %.11 = phi ptr [ %i.dq, %bb.ax ], [ %i.am, %bb.u ] ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !19  ; 7 uses
  %i.cs = icmp ult i8 %i.cr, 33
  br i1 %i.cs, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 5 uses
  %i.cu = icmp samesign ult i8 %i.cr, 11
  br i1 %i.cu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  switch i8 %i.cr, label %.loopexit [
    i8 10, label %.loopexit284
    i8 0, label %.loopexit284
  ]

bb.aj:                                            ; preds = %bb.ah
  switch i8 %i.cr, label %.loopexit [
    i8 13, label %.loopexit284
    i8 32, label %bb.ap
  ]

bb.ak:                                            ; preds = %.preheader
  %i.cv = icmp ult i8 %i.cr, 58
  br i1 %i.cv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  %i.cx = icmp eq i8 %i.cr, 35
  br i1 %i.cx, label %bb.z, label %.loopexit

bb.am:                                            ; preds = %bb.ak
  switch i8 %i.cr, label %.loopexit.loopexit.split.loop.exit [
    i8 58, label %.loopexit282.loopexit.split.loop.exit
    i8 92, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ad, %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %.10, i64 2 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %.1179 to i64
  %i.db = xor i64 %i.da, -1
  %i.dc = add i64 %i.cz, %i.db
  %i.dd = icmp ult ptr %.0189, %.1179
  %sext225 = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %sext225, 32             ; 2 uses
  br i1 %i.dd, label %bb.ao, label %._crit_edge423

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0189, ptr nonnull align 1 %.1179, i64 %i.de, i1 false)
  %.pre = load i8, ptr %i.cb, align 1, !tbaa !19
  br label %._crit_edge423

._crit_edge423:                                   ; preds = %bb.an, %bb.ao
  %i.df = phi i8 [ %.pre, %bb.ao ], [ %i.cc, %bb.an ]
  %i.dg = getelementptr inbounds i8, ptr %.0189, i64 %i.de
  %i.dh = icmp eq i8 %i.df, 10
  br label %.loopexit287

bb.ap:                                            ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %.11, i64 2 ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %.1179 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ult ptr %.0189, %.1179
  %i.dn = shl i64 %i.dl, 32
  %sext = add i64 %i.dn, -4294967296
  %i.do = ashr exact i64 %sext, 32                ; 2 uses
  br i1 %i.dm, label %bb.aq, label %._crit_edge422

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr align 1 %.0189, i8 92, i64 %i.do, i1 false)
  br label %._crit_edge422

._crit_edge422:                                   ; preds = %bb.ap, %bb.aq
  %i.dp = getelementptr inbounds i8, ptr %.0189, i64 %i.do
  br label %.loopexit287

bb.ar:                                            ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %.11, i64 2 ; 12 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19  ; 7 uses
  %i.ds = icmp ult i8 %i.dr, 33
  br i1 %i.ds, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.dt = icmp samesign ult i8 %i.dr, 11
  br i1 %i.dt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  switch i8 %i.dr, label %.loopexit [
    i8 10, label %.loopexit284
    i8 0, label %.loopexit284
  ]

bb.au:                                            ; preds = %bb.as
  switch i8 %i.dr, label %.loopexit [
    i8 13, label %.loopexit284
    i8 32, label %bb.x
  ]

bb.av:                                            ; preds = %bb.ar
  %i.du = icmp ult i8 %i.dr, 58
  br i1 %i.du, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dv = icmp eq i8 %i.dr, 35
  br i1 %i.dv, label %bb.z, label %.loopexit

bb.ax:                                            ; preds = %bb.av
  switch i8 %i.dr, label %.loopexit [
    i8 58, label %.loopexit282
    i8 92, label %.preheader
  ]

.loopexit287.loopexit.split.loop.exit:            ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %.1179, i64 1
  br label %.loopexit287

.loopexit287:                                     ; preds = %bb.q, %.loopexit287.loopexit.split.loop.exit, %._crit_edge422, %bb.j, %bb.k, %.loopexit288, %._crit_edge423, %bb.l, %.loopexit286.a, %bb.w
  %.2193.ph = phi i1 [ false, %bb.w ], [ false, %.loopexit286.a ], [ false, %bb.l ], [ false, %bb.j ], [ false, %._crit_edge422 ], [ %i.dh, %._crit_edge423 ], [ false, %.loopexit288 ], [ true, %bb.k ], [ false, %.loopexit287.loopexit.split.loop.exit ], [ false, %bb.q ] ; 2 uses
  %.1190.ph = phi ptr [ %.0189, %bb.w ], [ %.0189, %.loopexit286.a ], [ %.0189, %bb.l ], [ %.0189, %bb.j ], [ %i.dp, %._crit_edge422 ], [ %i.dg, %._crit_edge423 ], [ %.0189, %.loopexit288 ], [ %.0189, %bb.k ], [ %.0189, %.loopexit287.loopexit.split.loop.exit ], [ %.0189, %bb.q ]
  %.12.ph = phi ptr [ %i.am, %bb.w ], [ %i.t, %.loopexit286.a ], [ %i.v, %bb.l ], [ %i.s, %bb.j ], [ %i.di, %._crit_edge422 ], [ %i.cy, %._crit_edge423 ], [ %i.ay, %.loopexit288 ], [ %i.u, %bb.k ], [ %i.dw, %.loopexit287.loopexit.split.loop.exit ], [ %i.am, %bb.q ] ; 2 uses
  %i.dx = ptrtoint ptr %.1190.ph to i64
  %i.dy = ptrtoint ptr %.0178362 to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 2 uses
  %i.ea = trunc i64 %i.dz to i32                  ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %bb.ay, label %.thread275

bb.ay:                                            ; preds = %.loopexit287
  %i.ec = add i64 %i.dz, 4294967295
  %i.ed = and i64 %i.ec, 4294967295
  %i.ee = getelementptr inbounds nuw i8, ptr %.0178362, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
  %i.eg = icmp eq i8 %i.ef, 58
  br i1 %i.eg, label %bb.az, label %.thread266

bb.az:                                            ; preds = %bb.ay
  %i.eh = add nsw i32 %i.ea, -1                   ; 2 uses
  %.not281 = icmp eq i32 %i.eh, 0
  br i1 %.not281, label %.thread275, label %.thread266

.thread266:                                       ; preds = %bb.ay, %bb.az
  %.1184274 = phi i1 [ true, %bb.az ], [ %.0183361, %bb.ay ]
  %.0185272 = phi i32 [ %i.eh, %bb.az ], [ %i.ea, %bb.ay ]
  %.1204271 = phi i1 [ false, %bb.az ], [ %.0203358, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.ei = zext nneg i32 %.0185272 to i64
  store ptr %.0178362, ptr %3, align 8, !tbaa !22
  store i64 %i.ei, ptr %i.e, align 8, !tbaa !24
  %i.ej = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.ek = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.el = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP11StringPieceSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr %i.ej, ptr %i.ek, ptr nonnull align 8 dereferenceable(16) %3) ; 5 uses
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.ba, label %bb.bn

bb.ba:                                            ; preds = %.thread266
  br i1 %.0203358, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.0197359, label %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.el, %i.eo
  br i1 %.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !29
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %i.eq, ptr %i.g, align 8, !tbaa !32
  br label %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread

bb.be:                                            ; preds = %bb.bc
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !33  ; 5 uses
  %i.es = ptrtoint ptr %i.el to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775792
  br i1 %i.ev, label %bb.bf, label %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.be
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #11
  unreachable

_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.be
  %i.ew = ashr exact i64 %i.eu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i, %i.ew ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ex, i64 576460752303423487)
  %i.fa = select i1 %i.ey, i64 576460752303423487, i64 %i.ez ; 2 uses
  %i.fb = shl nuw nsw i64 %i.fa, 4
  %i.fc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #12 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !29
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.er, %i.el
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i ], [ %i.fc, %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i ], [ %i.er, %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !29, !alias.scope !34
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fe, %i.el
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !38

_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fc, %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ff, %.lr.ph.i.i.i.i.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.er) #13
  br label %_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.fc, ptr %i.f, align 8, !tbaa !33
  store ptr %i.fg, ptr %i.g, align 8, !tbaa !32
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.fa
  store ptr %i.fh, ptr %i.h, align 8, !tbaa !27
  br label %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread

bb.bh:                                            ; preds = %bb.ba
  %i.fi = load ptr, ptr %0, align 8, !tbaa !25
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.fk = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP11StringPieceSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr %i.fi, ptr %i.fj, ptr nonnull align 8 dereferenceable(16) %3) ; 5 uses
  %i.fl = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.bi, label %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !27
  %.not.i242 = icmp eq ptr %i.fk, %i.fn
  br i1 %.not.i242, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !29
  %i.fo = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.fp, ptr %i.i, align 8, !tbaa !32
  br label %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread

bb.bk:                                            ; preds = %bb.bi
  %i.fq = load ptr, ptr %0, align 8, !tbaa !33    ; 5 uses
  %i.fr = ptrtoint ptr %i.fk to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775792
  br i1 %i.fu, label %bb.bl, label %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i243

bb.bl:                                            ; preds = %bb.bk
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #11
  unreachable

_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i243: ; preds = %bb.bk
  %i.fv = ashr exact i64 %i.ft, 4                 ; 3 uses
  %.sroa.speculated.i.i.i244 = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i244, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 576460752303423487)
  %i.fz = select i1 %i.fx, i64 576460752303423487, i64 %i.fy ; 2 uses
  %i.ga = shl nuw nsw i64 %i.fz, 4
  %i.gb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #12 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !29
  %.not10.i.i.i.i.i.i246 = icmp eq ptr %i.fq, %i.fk
  br i1 %.not10.i.i.i.i.i.i246, label %_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i251, label %.lr.ph.i.i.i.i.i.i247

.lr.ph.i.i.i.i.i.i247:                            ; preds = %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i243, %.lr.ph.i.i.i.i.i.i247
  %.012.i.i.i.i.i.i248 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i247 ], [ %i.gb, %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i243 ] ; 2 uses
  %.0911.i.i.i.i.i.i249 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i247 ], [ %i.fq, %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i243 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i248, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i249, i64 16, i1 false), !tbaa.struct !29, !alias.scope !39
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i249, i64 16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i248, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i250 = icmp eq ptr %i.gd, %i.fk
  br i1 %.not.i.i.i.i.i.i250, label %_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i251, label %.lr.ph.i.i.i.i.i.i247, !llvm.loop !38

_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i251: ; preds = %.lr.ph.i.i.i.i.i.i247, %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i243
  %.0.lcssa.i.i.i.i.i.i252 = phi ptr [ %i.gb, %_ZNKSt6vectorI11StringPieceSaIS0_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i247 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i252, i64 16
  %.not.i23.i.i253 = icmp eq ptr %i.fq, null
  br i1 %.not.i23.i.i253, label %_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i254, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i251
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #13
  br label %_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i254

_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i254: ; preds = %bb.bm, %_ZNSt6vectorI11StringPieceSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i251
  store ptr %i.gb, ptr %0, align 8, !tbaa !33
  store ptr %i.gf, ptr %i.i, align 8, !tbaa !32
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.gg, ptr %i.j, align 8, !tbaa !27
  br label %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread

bb.bn:                                            ; preds = %.thread266
  %spec.select239 = select i1 %.0203358, i1 true, i1 %.0197359
  br label %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread

_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread: ; preds = %bb.bh, %bb.bn, %_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.bd, %bb.bj, %_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i254
  %.2199.ph = phi i1 [ %.0197359, %_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i254 ], [ %.0197359, %bb.bj ], [ false, %bb.bd ], [ %.0197359, %bb.bh ], [ false, %_ZNSt6vectorI11StringPieceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %spec.select239, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.thread275

_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.bb
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !18
  %i.gj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.gi, ptr noundef nonnull @.str, i64 noundef 31) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.critedge

.thread275:                                       ; preds = %.loopexit287, %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread, %bb.az
  %.1184273 = phi i1 [ %.1184274, %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread ], [ true, %bb.az ], [ %.0183361, %.loopexit287 ] ; 2 uses
  %.1204270 = phi i1 [ %.1204271, %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread ], [ false, %bb.az ], [ %.0203358, %.loopexit287 ]
  %.3200 = phi i1 [ %.2199.ph, %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread ], [ %.0197359, %bb.az ], [ %.0197359, %.loopexit287 ]
  %.1195 = phi i1 [ false, %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit.thread ], [ %.0194360, %bb.az ], [ %.0194360, %.loopexit287 ] ; 2 uses
  %spec.select240 = select i1 %.2193.ph, i1 true, i1 %.1204270
  %not..2193.ph = xor i1 %.2193.ph, true
  %spec.select241 = select i1 %not..2193.ph, i1 %.3200, i1 false
  %i.gk = icmp ult ptr %.12.ph, %i.d
  br i1 %i.gk, label %.preheader285, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.thread275
  %i.gl = select i1 %.1184273, i1 true, i1 %.1195
  br i1 %i.gl, label %.critedge, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !18
  %i.go = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.gn, ptr noundef nonnull @.str.1, i64 noundef 23) #10 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit, %._crit_edge, %bb.bo
  %.4 = phi i1 [ true, %._crit_edge ], [ false, %bb.bo ], [ false, %_ZNSt6vectorI11StringPieceSaIS0_EE9push_backERKS0_.exit ], [ true, %bb.a ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP11StringPieceSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 6                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 8 uses
  %i.h = and i64 %i.c, -64
  %scevgep = getelementptr i8, ptr %0, i64 %i.h   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21.thread
  %.057 = phi i64 [ %i.d, %.lr.ph ], [ %i.ak, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21.thread ] ; 2 uses
  %.sroa.037.056 = phi ptr [ %0, %.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21.thread ] ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = icmp eq i64 %i.j, %i.g
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %.sroa.037.056, align 8, !tbaa !22
  %i.m = load ptr, ptr %2, align 8, !tbaa !22
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.l, ptr %i.m, i64 %i.g)
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24
  %i.q = icmp eq i64 %i.p, %i.g
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.t = load ptr, ptr %2, align 8, !tbaa !22
  %bcmp.i.i16 = tail call i32 @bcmp(ptr %i.s, ptr %i.t, i64 %i.g)
  %i.u = icmp eq i32 %bcmp.i.i16, 0
  br i1 %i.u, label %.loopexit.loopexit.split.loop.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17.thread: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %i.x = icmp eq i64 %i.w, %i.g
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17.thread
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = load ptr, ptr %2, align 8, !tbaa !22
  %bcmp.i.i18 = tail call i32 @bcmp(ptr %i.z, ptr %i.aa, i64 %i.g)
  %i.ab = icmp eq i32 %bcmp.i.i18, 0
  br i1 %i.ab, label %.loopexit.loopexit.split.loop.exit72, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19.thread: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = icmp eq i64 %i.ad, %i.g
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19.thread
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = load ptr, ptr %2, align 8, !tbaa !22
  %bcmp.i.i20 = tail call i32 @bcmp(ptr %i.ag, ptr %i.ah, i64 %i.g)
  %i.ai = icmp eq i32 %bcmp.i.i20, 0
  br i1 %i.ai, label %.loopexit.loopexit.split.loop.exit74, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21.thread: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 64
  %i.ak = add nsw i64 %.057, -1
  %i.al = icmp sgt i64 %.057, 1
  br i1 %i.al, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21.thread
  %.pre65 = ptrtoint ptr %scevgep to i64
  %.pre66 = sub i64 %i.a, %.pre65
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi67 = phi i64 [ %.pre66, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.037.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.am = ashr exact i64 %.pre-phi67, 4
  switch i64 %i.am, label %.loopexit [
    i64 3, label %bb.c
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge62
  ]

._crit_edge._crit_edge62:                         ; preds = %._crit_edge
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre64 = load i64, ptr %.phi.trans.insert63, align 8, !tbaa !24
  br label %bb.e

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24 ; 2 uses
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23: ; preds = %bb.c
  %i.as = load ptr, ptr %.sroa.037.0.lcssa, align 8, !tbaa !22
  %i.at = load ptr, ptr %2, align 8, !tbaa !22
  %bcmp.i.i22 = tail call i32 @bcmp(ptr %i.as, ptr %i.at, i64 %i.ao)
  %i.au = icmp eq i32 %bcmp.i.i22, 0
  br i1 %i.au, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23.thread
  %i.aw = phi i64 [ %i.aq, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23.thread ], [ %.pre, %._crit_edge._crit_edge ] ; 3 uses
  %.sroa.037.1 = phi ptr [ %i.av, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23.thread ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !24
  %i.az = icmp eq i64 %i.ay, %i.aw
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25: ; preds = %bb.d
  %i.ba = load ptr, ptr %.sroa.037.1, align 8, !tbaa !22
  %i.bb = load ptr, ptr %2, align 8, !tbaa !22
  %bcmp.i.i24 = tail call i32 @bcmp(ptr %i.ba, ptr %i.bb, i64 %i.aw)
  %i.bc = icmp eq i32 %bcmp.i.i24, 0
  br i1 %i.bc, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25.thread: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 16
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge._crit_edge62, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25.thread
  %i.be = phi i64 [ %i.aw, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25.thread ], [ %.pre64, %._crit_edge._crit_edge62 ] ; 2 uses
  %.sroa.037.2 = phi ptr [ %i.bd, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25.thread ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge62 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !24
  %i.bh = icmp eq i64 %i.bg, %i.be
  br i1 %i.bh, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27: ; preds = %bb.e
  %i.bi = load ptr, ptr %.sroa.037.2, align 8, !tbaa !22
  %i.bj = load ptr, ptr %2, align 8, !tbaa !22
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bi, ptr %i.bj, i64 %i.be)
  %i.bk = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.bk, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27.thread: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit72:             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit74:             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit21
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 48
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit72, %.loopexit.loopexit.split.loop.exit74, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27.thread ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit27 ], [ %i.bn, %.loopexit.loopexit.split.loop.exit74 ], [ %i.bl, %.loopexit.loopexit.split.loop.exit ], [ %i.bm, %.loopexit.loopexit.split.loop.exit72 ], [ %.sroa.037.056, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIK11StringPieceEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !15, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !17, i64 8, !10, i64 16}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"long", !10, i64 0}
!18 = !{!13, !17, i64 8}
!19 = !{!10, !10, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !15, i64 0}
!23 = !{!"_ZTS11StringPiece", !15, i64 0, !17, i64 8}
!24 = !{!23, !17, i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS11StringPiece", !16, i64 0}
!27 = !{!28, !26, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseI11StringPieceSaIS0_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!29 = !{i64 0, i64 8, !30, i64 8, i64 8, !31}
!30 = !{!15, !15, i64 0}
!31 = !{!17, !17, i64 0}
!32 = !{!28, !26, i64 8}
!33 = !{!28, !26, i64 0}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"_ZSt19__relocate_object_aI11StringPieceS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !"_ZSt19__relocate_object_aI11StringPieceS0_SaIS0_EEvPT_PT0_RT1_"}
!37 = distinct !{!37, !36, !"_ZSt19__relocate_object_aI11StringPieceS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!38 = distinct !{!38, !21}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"_ZSt19__relocate_object_aI11StringPieceS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!41 = distinct !{!41, !"_ZSt19__relocate_object_aI11StringPieceS0_SaIS0_EEvPT_PT0_RT1_"}
!42 = distinct !{!42, !41, !"_ZSt19__relocate_object_aI11StringPieceS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
end_hunk_0
