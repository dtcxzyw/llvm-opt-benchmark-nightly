inline.NumInlined: 6276
inline.NumDeleted: 3208
begin_hunk_0_@_ZNK6duckdb17LogicalCopyToFile9SerializeERNS_10SerializerE:bb.a
  %i.ed = load ptr, ptr %i.ec, align 8
  tail call void %i.ed(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 208, ptr noundef nonnull @.str.15), !inline_history !308
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !64
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !165
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = sdiv exact i64 %i.ej, 24
  %i.el = load ptr, ptr %1, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dereferenceable(680) %1, i64 noundef %i.ek), !inline_history !309
  %i.eo = load ptr, ptr %i.ea, align 8, !tbaa !164 ; 2 uses
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !164 ; 2 uses
  %.not9.i.i27 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not9.i.i27, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEEEEvtPKcRKT_.exit, %.lr.ph.i.i28
  %.sroa.06.010.i.i29 = phi ptr [ %i.ew, %.lr.ph.i.i28 ], [ %i.eo, %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEEEEvtPKcRKT_.exit ] ; 2 uses
  %i.eq = load ptr, ptr %1, align 8, !tbaa !16
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load ptr, ptr %i.er, align 8
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !310
  tail call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i29, ptr noundef nonnull align 8 dereferenceable(680) %1)
  %i.et = load ptr, ptr %1, align 8, !tbaa !16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void %i.ev(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !310
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i29, i64 24 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ew, %i.ep
  br i1 %.not.i.i30, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i28

_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit: ; preds = %.lr.ph.i.i28, %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEEEEvtPKcRKT_.exit
  %i.ex = load ptr, ptr %1, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8
  tail call void %i.ez(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !309
  %i.fa = load ptr, ptr %1, align 8, !tbaa !16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  tail call void %i.fc(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !308
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.fe = load ptr, ptr %1, align 8, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  tail call void %i.fg(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 209, ptr noundef nonnull @.str.16), !inline_history !311
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !312 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  %i.fj = load ptr, ptr %1, align 8, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  br i1 %i.fi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit
  tail call void %i.fl(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext false), !inline_history !314
  br label %_ZN6duckdb10Serializer13WritePropertyINS_10unique_ptrINS_8CopyInfoESt14default_deleteIS3_ELb1EEEEEvtPKcRKT_.exit

bb.e:                                             ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit
  tail call void %i.fl(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext true), !inline_history !314
  %i.fm = load ptr, ptr %1, align 8, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fo(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !315
  %i.fp = load ptr, ptr %i.fh, align 8, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef nonnull align 8 dereferenceable(344) %i.fh, ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !315
  %i.fs = load ptr, ptr %1, align 8, !tbaa !16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !315
  br label %_ZN6duckdb10Serializer13WritePropertyINS_10unique_ptrINS_8CopyInfoESt14default_deleteIS3_ELb1EEEEEvtPKcRKT_.exit

_ZN6duckdb10Serializer13WritePropertyINS_10unique_ptrINS_8CopyInfoESt14default_deleteIS3_ELb1EEEEEvtPKcRKT_.exit: ; preds = %bb.d, %bb.e
  %i.fv = load ptr, ptr %1, align 8, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 88
  %i.fx = load ptr, ptr %i.fw, align 8
  tail call void %i.fx(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !314
  %i.fy = load ptr, ptr %1, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void %i.ga(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !311
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gc = load ptr, ptr %1, align 8, !tbaa !16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 210, ptr noundef nonnull @.str.17), !inline_history !230
  %i.gf = load ptr, ptr %1, align 8, !tbaa !16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 224
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.gb), !inline_history !230
  %i.gi = load ptr, ptr %1, align 8, !tbaa !16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !230
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !316
  %i.gn = icmp ne ptr %i.gm, null                 ; 2 uses
  %i.go = load ptr, ptr %1, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  tail call void %i.gq(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 211, ptr noundef nonnull @.str.18), !inline_history !231
  %i.gr = load ptr, ptr %1, align 8, !tbaa !16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 112
  %i.gt = load ptr, ptr %i.gs, align 8
  tail call void %i.gt(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.gn), !inline_history !231
  %i.gu = load ptr, ptr %1, align 8, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  tail call void %i.gw(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !231
  br i1 %i.gn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_10unique_ptrINS_8CopyInfoESt14default_deleteIS3_ELb1EEEEEvtPKcRKT_.exit
  %i.gx = load ptr, ptr %1, align 8, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  tail call void %i.gz(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 212, ptr noundef nonnull @.str.19), !inline_history !371
  %i.ha = load ptr, ptr %1, align 8, !tbaa !16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8
  tail call void %i.hc(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !371
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.he = load ptr, ptr %i.gl, align 8, !tbaa !316
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.hg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hf)
  tail call void %i.he(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull align 8 dereferenceable(888) %i.hd), !inline_history !372
  %i.hh = load ptr, ptr %1, align 8, !tbaa !16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8
  tail call void %i.hj(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !371
  %i.hk = load ptr, ptr %1, align 8, !tbaa !16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  tail call void %i.hm(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !371
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb10Serializer13WritePropertyINS_10unique_ptrINS_8CopyInfoESt14default_deleteIS3_ELb1EEEEEvtPKcRKT_.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ho = load ptr, ptr %1, align 8, !tbaa !16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 213, ptr noundef nonnull @.str.20), !inline_history !230
  %i.hr = load ptr, ptr %1, align 8, !tbaa !16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 224
  %i.ht = load ptr, ptr %i.hs, align 8
  tail call void %i.ht(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.hn), !inline_history !230
  %i.hu = load ptr, ptr %1, align 8, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  tail call void %i.hw(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !230
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.hy = load ptr, ptr %1, align 8, !tbaa !16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  tail call void %i.ia(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 214, ptr noundef nonnull @.str.21), !inline_history !231
  %i.ib = load i8, ptr %i.hx, align 8, !tbaa !232, !range !233, !noundef !234
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = load ptr, ptr %1, align 8, !tbaa !16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 112
  %i.if = load ptr, ptr %i.ie, align 8
  tail call void %i.if(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.ic), !inline_history !231
  %i.ig = load ptr, ptr %1, align 8, !tbaa !16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  tail call void %i.ii(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !231
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.ik = load ptr, ptr %1, align 8, !tbaa !16
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  tail call void %i.im(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 215, ptr noundef nonnull @.str.22), !inline_history !373
  %i.in = load i8, ptr %i.ij, align 1, !tbaa !374 ; 2 uses
  %i.io = load i8, ptr %i.ao, align 8, !tbaa !240, !range !233, !noundef !234
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.iq = tail call noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_22CopyFunctionReturnTypeEEEPKcT_(i8 noundef zeroext %i.in)
  %i.ir = load ptr, ptr %1, align 8, !tbaa !16
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 232
  %i.it = load ptr, ptr %i.is, align 8
  tail call void %i.it(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef %i.iq), !inline_history !375
  br label %_ZN6duckdb10Serializer13WritePropertyINS_22CopyFunctionReturnTypeEEEvtPKcRKT_.exit

bb.i:                                             ; preds = %bb.g
  %i.iu = load ptr, ptr %1, align 8, !tbaa !16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 120
  %i.iw = load ptr, ptr %i.iv, align 8
  tail call void %i.iw(ptr noundef nonnull align 8 dereferenceable(680) %1, i8 noundef zeroext %i.in), !inline_history !375
  br label %_ZN6duckdb10Serializer13WritePropertyINS_22CopyFunctionReturnTypeEEEvtPKcRKT_.exit

_ZN6duckdb10Serializer13WritePropertyINS_22CopyFunctionReturnTypeEEEvtPKcRKT_.exit: ; preds = %bb.h, %bb.i
  %i.ix = load ptr, ptr %1, align 8, !tbaa !16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  tail call void %i.iz(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !373
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1123 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 5 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.jd = trunc nuw i8 %i.jc to i1
  %.not = xor i1 %i.jd, true
  %i.je = load i8, ptr %i.ja, align 1, !range !233
  %3 = trunc nuw i8 %i.je to i1
  %or.cond.not = select i1 %.not, i1 %3, i1 false ; 2 uses
  %i.jf = load ptr, ptr %1, align 8, !tbaa !16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8            ; 2 uses
  br i1 %or.cond.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_22CopyFunctionReturnTypeEEEvtPKcRKT_.exit
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 216, ptr noundef nonnull @.str.23, i1 noundef zeroext false), !inline_history !377
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit

bb.k:                                             ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_22CopyFunctionReturnTypeEEEvtPKcRKT_.exit
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 216, ptr noundef nonnull @.str.23, i1 noundef zeroext true), !inline_history !377
  %i.ji = load i8, ptr %i.ja, align 1, !tbaa !232, !range !233, !noundef !234
  %i.jj = trunc nuw i8 %i.ji to i1
  %i.jk = load ptr, ptr %1, align 8, !tbaa !16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 112
  %i.jm = load ptr, ptr %i.jl, align 8
  tail call void %i.jm(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.jj), !inline_history !377
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit: ; preds = %bb.j, %bb.k
  %.sink.i = xor i1 %or.cond.not, true
  %i.jn = load ptr, ptr %1, align 8, !tbaa !16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8
  tail call void %i.jp(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %.sink.i), !inline_history !377
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.jr = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.js = trunc nuw i8 %i.jr to i1
  %.not43 = xor i1 %i.js, true
  %i.jt = load i8, ptr %i.jq, align 4, !range !233
  %4 = trunc nuw i8 %i.jt to i1
  %or.cond45.not = select i1 %.not43, i1 %4, i1 false ; 2 uses
  %i.ju = load ptr, ptr %1, align 8, !tbaa !16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8            ; 2 uses
  br i1 %or.cond45.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit
  tail call void %i.jw(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 217, ptr noundef nonnull @.str.24, i1 noundef zeroext false), !inline_history !377
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit32

bb.m:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit
  tail call void %i.jw(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 217, ptr noundef nonnull @.str.24, i1 noundef zeroext true), !inline_history !377
  %i.jx = load i8, ptr %i.jq, align 4, !tbaa !232, !range !233, !noundef !234
  %i.jy = trunc nuw i8 %i.jx to i1
  %i.jz = load ptr, ptr %1, align 8, !tbaa !16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 112
  %i.kb = load ptr, ptr %i.ka, align 8
  tail call void %i.kb(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.jy), !inline_history !377
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit32

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit32: ; preds = %bb.l, %bb.m
  %.sink.i31 = xor i1 %or.cond45.not, true
  %i.kc = load ptr, ptr %1, align 8, !tbaa !16
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  %i.ke = load ptr, ptr %i.kd, align 8
  tail call void %i.ke(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %.sink.i31), !inline_history !377
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1126 ; 2 uses
  %i.kg = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.kh = trunc nuw i8 %i.kg to i1
  %i.ki = load i8, ptr %i.kf, align 2
  %i.kj = icmp ne i8 %i.ki, 0
  %or.cond48.not = select i1 %i.kh, i1 true, i1 %i.kj ; 2 uses
  %i.kk = load ptr, ptr %1, align 8, !tbaa !16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = load ptr, ptr %i.kl, align 8            ; 2 uses
  br i1 %or.cond48.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit32
  tail call void %i.km(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 218, ptr noundef nonnull @.str.25, i1 noundef zeroext false), !inline_history !378
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_17PreserveOrderTypeEEEvtPKcRKT_S7_.exit

bb.o:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit32
  tail call void %i.km(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 218, ptr noundef nonnull @.str.25, i1 noundef zeroext true), !inline_history !378
  %i.kn = load i8, ptr %i.kf, align 2, !tbaa !379 ; 2 uses
  %i.ko = load i8, ptr %i.ao, align 8, !tbaa !240, !range !233, !noundef !234
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.kq = tail call noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_17PreserveOrderTypeEEEPKcT_(i8 noundef zeroext %i.kn)
  %i.kr = load ptr, ptr %1, align 8, !tbaa !16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 232
  %i.kt = load ptr, ptr %i.ks, align 8
  tail call void %i.kt(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef %i.kq), !inline_history !380
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_17PreserveOrderTypeEEEvtPKcRKT_S7_.exit

bb.q:                                             ; preds = %bb.o
  %i.ku = load ptr, ptr %1, align 8, !tbaa !16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 120
  %i.kw = load ptr, ptr %i.kv, align 8
  tail call void %i.kw(ptr noundef nonnull align 8 dereferenceable(680) %1, i8 noundef zeroext %i.kn), !inline_history !380
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_17PreserveOrderTypeEEEvtPKcRKT_S7_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_17PreserveOrderTypeEEEvtPKcRKT_S7_.exit: ; preds = %bb.n, %bb.p, %bb.q
  %i.kx = load ptr, ptr %1, align 8, !tbaa !16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load ptr, ptr %i.ky, align 8
  tail call void %i.kz(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond48.not), !inline_history !378
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1125 ; 2 uses
  %i.lb = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.lc = trunc nuw i8 %i.lb to i1
  %.not49 = xor i1 %i.lc, true
  %i.ld = load i8, ptr %i.la, align 1, !range !233
  %5 = trunc nuw i8 %i.ld to i1
  %or.cond51.not = select i1 %.not49, i1 %5, i1 false ; 2 uses
  %i.le = load ptr, ptr %1, align 8, !tbaa !16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  br i1 %or.cond51.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_17PreserveOrderTypeEEEvtPKcRKT_S7_.exit
  tail call void %i.lg(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 219, ptr noundef nonnull @.str.26, i1 noundef zeroext false), !inline_history !377
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit35

bb.s:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_17PreserveOrderTypeEEEvtPKcRKT_S7_.exit
  tail call void %i.lg(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 219, ptr noundef nonnull @.str.26, i1 noundef zeroext true), !inline_history !377
  %i.lh = load i8, ptr %i.la, align 1, !tbaa !232, !range !233, !noundef !234
  %i.li = trunc nuw i8 %i.lh to i1
  %i.lj = load ptr, ptr %1, align 8, !tbaa !16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 112
  %i.ll = load ptr, ptr %i.lk, align 8
  tail call void %i.ll(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.li), !inline_history !377
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit35

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit35: ; preds = %bb.r, %bb.s
  %.sink.i34 = xor i1 %or.cond51.not, true
  %i.lm = load ptr, ptr %1, align 8, !tbaa !16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8
  tail call void %i.lo(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %.sink.i34), !inline_history !377
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.lq = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = load i64, ptr %i.lp, align 8
  %i.lt = icmp ne i64 %i.ls, -1
  %or.cond54.not = select i1 %i.lr, i1 true, i1 %i.lt
  %i.lu = load ptr, ptr %1, align 8, !tbaa !16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8            ; 2 uses
  br i1 %or.cond54.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit35
  tail call void %i.lw(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 220, ptr noundef nonnull @.str.27, i1 noundef zeroext false), !inline_history !381
  %i.lx = load ptr, ptr %1, align 8, !tbaa !16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8
  tail call void %i.lz(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext false), !inline_history !381
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_12optional_idxEEEvtPKcRKT_S7_.exit

bb.u:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit35
  tail call void %i.lw(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 220, ptr noundef nonnull @.str.27, i1 noundef zeroext true), !inline_history !381
  %.sroa.0.0.copyload.i = load i64, ptr %i.lp, align 8, !tbaa !79 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8
  %.not.i.i36 = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i.i36, label %_ZN6duckdb10Serializer10WriteValueENS_12optional_idxE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ma = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN6duckdb10Serializer10WriteValueENS_12optional_idxE.exit.i

_ZN6duckdb10Serializer10WriteValueENS_12optional_idxE.exit.i: ; preds = %bb.v, %bb.u
  %i.mb = phi i64 [ %i.ma, %bb.v ], [ -1, %bb.u ]
  %i.mc = load ptr, ptr %1, align 8, !tbaa !16
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 168
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(680) %1, i64 noundef %i.mb), !inline_history !382
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.mf = load ptr, ptr %1, align 8, !tbaa !16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext true), !inline_history !381
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_12optional_idxEEEvtPKcRKT_S7_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_12optional_idxEEEvtPKcRKT_S7_.exit: ; preds = %bb.t, %_ZN6duckdb10Serializer10WriteValueENS_12optional_idxE.exit.i
  ret void
}

declare void @_ZNK6duckdb15LogicalOperator9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(680)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17LogicalCopyToFile11DeserializeERNS_12DeserializerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.322") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr.238", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::optional_ptr.1295", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::unique_ptr.331", align 8 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.duckdb::FilenamePattern", align 8 ; 10 uses
  %11 = alloca %"class.duckdb::vector.61", align 8 ; 10 uses
  %12 = alloca %"class.duckdb::vector.210", align 8 ; 11 uses
  %13 = alloca %"class.duckdb::vector.6", align 8 ; 11 uses
  %14 = alloca %"class.duckdb::unique_ptr.247", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator.32", align 1 ; 5 uses
  %20 = alloca %"class.duckdb::CopyFunction", align 8 ; 15 uses
  %21 = alloca %"class.duckdb::unique_ptr.238", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator.32", align 1 ; 5 uses
  %27 = alloca %"struct.duckdb::CopyFunctionBindInput", align 8 ; 11 uses
  %28 = alloca %"class.duckdb::vector.210", align 8 ; 9 uses
  %29 = alloca %"class.duckdb::vector.6", align 8 ; 9 uses
  %30 = alloca %"class.duckdb::unique_ptr.238", align 8 ; 7 uses
  %31 = alloca %"class.duckdb::unique_ptr.418", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.b = load ptr, ptr %1, align 8, !tbaa !16, !noalias !383
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noalias !383
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 200, ptr noundef nonnull @.str.7), !noalias !383, !inline_history !386
  %i.e = load ptr, ptr %1, align 8, !tbaa !16, !noalias !387
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !noalias !387
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !390
  %i.h = load ptr, ptr %1, align 8, !tbaa !16, !noalias !383
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %9, align 8, !tbaa !70, !alias.scope !383 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.l) #29
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %common.resume.op = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357 ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 201, ptr noundef nonnull @.str.8)
          to label %.noexc unwind label %bb.v, !inline_history !391

.noexc:                                           ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc118 unwind label %bb.v, !inline_history !391

.noexc118:                                        ; preds = %.noexc
  %i.v = load ptr, ptr %1, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyIbEET_tPKc.exit unwind label %bb.v, !inline_history !391

_ZN6duckdb12Deserializer12ReadPropertyIbEET_tPKc.exit: ; preds = %.noexc118
  %i.y = zext i1 %i.u to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %1, align 8, !tbaa !16, !noalias !392
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !392
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 202, ptr noundef nonnull @.str.9)
          to label %.noexc120 unwind label %bb.w, !inline_history !395

.noexc120:                                        ; preds = %_ZN6duckdb12Deserializer12ReadPropertyIbEET_tPKc.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !16, !noalias !396
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !396
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc121 unwind label %bb.w, !inline_history !395

.noexc121:                                        ; preds = %.noexc120
  invoke void @_ZN6duckdb15FilenamePattern11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::FilenamePattern") align 8 %10, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc122 unwind label %bb.w

.noexc122:                                        ; preds = %.noexc121
  %i.af = load ptr, ptr %1, align 8, !tbaa !16, !noalias !396
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_15FilenamePatternEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %bb.c

common.resume.i:                                  ; preds = %bb.d, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %i.am, %bb.d ]
  call void @_ZN6duckdb15FilenamePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #28
  br label %.body

bb.c:                                             ; preds = %.noexc122
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_15FilenamePatternEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %.noexc122
  %i.aj = load ptr, ptr %1, align 8, !tbaa !16, !noalias !392
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_15FilenamePatternEEET_tPKc.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_15FilenamePatternEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer12ReadPropertyINS_15FilenamePatternEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_15FilenamePatternEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.an = load ptr, ptr %1, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 203, ptr noundef nonnull @.str.28)
          to label %.noexc123 unwind label %bb.x, !inline_history !399

.noexc123:                                        ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_15FilenamePatternEEET_tPKc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !400, !range !233, !noundef !234
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.noexc123
end_hunk_0
