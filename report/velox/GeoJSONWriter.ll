inline.NumInlined: 2522
inline.NumDeleted: 1218
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE4dumpERKSE_bbjj:bb.a
bb.m:                                             ; preds = %bb.l
  %i.el = shl nuw nsw i64 %i.ei, 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, i64 noundef %i.el, i8 noundef signext 32)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.em = load ptr, ptr %i.dt, align 8, !tbaa !10 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !213 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !213
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -16
  %.not154177 = icmp eq ptr %i.en, %i.eq
  br i1 %.not154177, label %._crit_edge181, label %.lr.ph180

._crit_edge181:                                   ; preds = %.lr.ph180, %bb.n
  %i.er = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.es = load ptr, ptr %i.eg, align 8, !tbaa !54
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !25
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef %i.es, i64 noundef %i.ej)
  %i.ew = load ptr, ptr %i.dt, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !213
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -16
  tail call void @_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE4dumpERKSE_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i1 noundef zeroext true, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %i.ef)
  %i.fa = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !25
  %i.fc = load ptr, ptr %i.fb, align 8
  tail call void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i8 noundef signext 10)
  %i.fd = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.fe = load ptr, ptr %i.eg, align 8, !tbaa !54
  %i.ff = zext i32 %5 to i64
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !25
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef %i.fe, i64 noundef %i.ff)
  %i.fj = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !25
  %i.fl = load ptr, ptr %i.fk, align 8
  tail call void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i8 noundef signext 93)
  br label %common.ret274

.lr.ph180:                                        ; preds = %bb.n, %.lr.ph180
  %.sroa.0139.0178 = phi ptr [ %i.fv, %.lr.ph180 ], [ %i.en, %bb.n ] ; 2 uses
  %i.fm = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.fn = load ptr, ptr %i.eg, align 8, !tbaa !54
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef %i.fn, i64 noundef %i.ej)
  tail call void @_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE4dumpERKSE_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0139.0178, i1 noundef zeroext true, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %i.ef)
  %i.fr = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !25
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.30, i64 noundef 2)
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0139.0178, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.dt, align 8, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !213
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -16
  %.not154 = icmp eq ptr %i.fv, %i.fz
  br i1 %.not154, label %._crit_edge181, label %.lr.ph180, !llvm.loop !235

bb.o:                                             ; preds = %bb.k
  %i.ga = load ptr, ptr %i.ea, align 8
  tail call void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i8 noundef signext 91)
  %i.gb = load ptr, ptr %i.dt, align 8, !tbaa !10 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !213 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !213
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -16 ; 2 uses
  %.not153171 = icmp eq ptr %i.gc, %i.gf
  br i1 %.not153171, label %._crit_edge175, label %.lr.ph174

._crit_edge175:                                   ; preds = %.lr.ph174, %bb.o
  %.lcssa = phi ptr [ %i.gf, %bb.o ], [ %i.gq, %.lr.ph174 ]
  tail call void @_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE4dumpERKSE_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i1 noundef zeroext false, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
  %i.gg = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !25
  %i.gi = load ptr, ptr %i.gh, align 8
  tail call void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, i8 noundef signext 93)
  br label %common.ret274

.lr.ph174:                                        ; preds = %bb.o, %.lr.ph174
  %.sroa.0134.0172 = phi ptr [ %i.gm, %.lr.ph174 ], [ %i.gc, %bb.o ] ; 2 uses
  tail call void @_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE4dumpERKSE_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0134.0172, i1 noundef zeroext false, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
  %i.gj = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !25
  %i.gl = load ptr, ptr %i.gk, align 8
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, i8 noundef signext 44)
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0134.0172, i64 16 ; 2 uses
  %i.gn = load ptr, ptr %i.dt, align 8, !tbaa !10
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !213
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -16 ; 2 uses
  %.not153 = icmp eq ptr %i.gm, %i.gq
  br i1 %.not153, label %._crit_edge175, label %.lr.ph174, !llvm.loop !236

bb.p:                                             ; preds = %bb.a
  %i.gr = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !25
  %i.gt = load ptr, ptr %i.gs, align 8
  tail call void %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i8 noundef signext 34)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !10
  tail call void @_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_escapedERKSA_b(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gv, i1 noundef zeroext %3)
  %i.gw = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !25
  %i.gy = load ptr, ptr %i.gx, align 8
  tail call void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i8 noundef signext 34)
  br label %common.ret274

bb.q:                                             ; preds = %bb.a
  %i.gz = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !25
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  br i1 %2, label %bb.r, label %bb.aj

bb.r:                                             ; preds = %bb.q
  tail call void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.28, i64 noundef 2)
  %i.hd = add i32 %5, %4
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !16 ; 2 uses
  %i.hh = zext i32 %i.hd to i64                   ; 3 uses
  %i.hi = icmp ult i64 %i.hg, %i.hh
  br i1 %i.hi, label %bb.s, label %bb.t, !prof !53

bb.s:                                             ; preds = %bb.r
  %i.hj = shl nuw nsw i64 %i.hg, 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.he, i64 noundef %i.hj, i8 noundef signext 32)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.hk = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.hl = load ptr, ptr %i.he, align 8, !tbaa !54
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !25
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  tail call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef %i.hl, i64 noundef %i.hh)
  %i.hp = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !25
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull @.str.34, i64 noundef 10)
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !10 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !237 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !237 ; 2 uses
  %i.hy = icmp eq ptr %i.hv, %i.hx
  br i1 %i.hy, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.hz = getelementptr inbounds i8, ptr %i.hx, i64 -1 ; 2 uses
  %.not152166 = icmp eq ptr %i.hv, %i.hz
  br i1 %.not152166, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.y

._crit_edge169:                                   ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91, %.preheader
  %.lcssa156 = phi ptr [ %i.hz, %.preheader ], [ %i.kw, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91 ]
  %i.ib = load i8, ptr %.lcssa156, align 1, !tbaa !10 ; 9 uses
  %i.ic = icmp eq i8 %i.ib, 0
  br i1 %i.ic, label %bb.u, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i

bb.u:                                             ; preds = %._crit_edge169
  %i.id = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !25
  %i.if = load ptr, ptr %i.ie, align 8
  tail call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.id, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i: ; preds = %._crit_edge169
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ih = zext i8 %i.ib to i64
  %i.ii = icmp ult i8 %i.ib, 10
  %i.ij = icmp ult i8 %i.ib, 100
  %i.ik = select i1 %i.ij, i64 2, i64 3
  %i.il = select i1 %i.ii, i64 1, i64 %i.ik       ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.il ; 5 uses
  %i.in = icmp ugt i8 %i.ib, 99
  br i1 %i.in, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 -2 ; 2 uses
  %i.ip = urem i8 %i.ib, 100
  %.zext.i = zext nneg i8 %i.ip to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !10
  %i.it = getelementptr inbounds i8, ptr %i.im, i64 -1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !10
  %i.iu = load i8, ptr %i.iq, align 1, !tbaa !10
  store i8 %i.iu, ptr %i.io, align 1, !tbaa !10
  %6 = icmp ugt i8 %i.ib, -57
  %7 = select i1 %6, i8 2, i8 1
  br label %bb.w

._crit_edge.i:                                    ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i
  %i.iv = icmp samesign ugt i8 %i.ib, 9
  br i1 %i.iv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.ih ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !10
  %i.iz = getelementptr inbounds i8, ptr %i.im, i64 -1
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !10
  %i.ja = load i8, ptr %i.iw, align 1, !tbaa !10
  %i.jb = getelementptr inbounds i8, ptr %i.im, i64 -2
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !10
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.0.lcssa29.i = phi ptr [ %i.io, %._crit_edge.thread.i ], [ %i.im, %._crit_edge.i ]
  %.021.lcssa28.i = phi i8 [ %7, %._crit_edge.thread.i ], [ %i.ib, %._crit_edge.i ]
  %i.jc = or disjoint i8 %.021.lcssa28.i, 48
  %i.jd = getelementptr inbounds i8, ptr %.0.lcssa29.i, i64 -1
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.je = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !25
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull %i.ig, i64 noundef %i.il), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit

bb.y:                                             ; preds = %.lr.ph168, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91
  %.sroa.0129.0167 = phi ptr [ %i.hv, %.lr.ph168 ], [ %i.ks, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91 ] ; 2 uses
  %i.ji = load i8, ptr %.sroa.0129.0167, align 1, !tbaa !10 ; 9 uses
  %i.jj = icmp eq i8 %i.ji, 0
  br i1 %i.jj, label %bb.z, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i85

bb.z:                                             ; preds = %bb.y
  %i.jk = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !25
  %i.jm = load ptr, ptr %i.jl, align 8
  tail call void %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i85: ; preds = %bb.y
  %i.jn = zext i8 %i.ji to i64
  %i.jo = icmp ult i8 %i.ji, 10
  %i.jp = icmp ult i8 %i.ji, 100
  %i.jq = select i1 %i.jp, i64 2, i64 3
  %i.jr = select i1 %i.jo, i64 1, i64 %i.jq       ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jr ; 5 uses
  %i.jt = icmp ugt i8 %i.ji, 99
  br i1 %i.jt, label %._crit_edge.thread.i89, label %._crit_edge.i86

._crit_edge.thread.i89:                           ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i85
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 -2 ; 2 uses
  %i.jv = urem i8 %i.ji, 100
  %.zext.i90 = zext nneg i8 %i.jv to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i90 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !10
  %i.jz = getelementptr inbounds i8, ptr %i.js, i64 -1
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !10
  %i.ka = load i8, ptr %i.jw, align 1, !tbaa !10
  store i8 %i.ka, ptr %i.ju, align 1, !tbaa !10
  %8 = icmp ugt i8 %i.ji, -57
  %9 = select i1 %8, i8 2, i8 1
  br label %bb.ab

._crit_edge.i86:                                  ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i85
  %i.kb = icmp samesign ugt i8 %i.ji, 9
  br i1 %i.kb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i86
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.jn ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !10
  %i.kf = getelementptr inbounds i8, ptr %i.js, i64 -1
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !10
  %i.kg = load i8, ptr %i.kc, align 1, !tbaa !10
  %i.kh = getelementptr inbounds i8, ptr %i.js, i64 -2
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !10
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i86, %._crit_edge.thread.i89
  %.0.lcssa29.i87 = phi ptr [ %i.ju, %._crit_edge.thread.i89 ], [ %i.js, %._crit_edge.i86 ]
  %.021.lcssa28.i88 = phi i8 [ %9, %._crit_edge.thread.i89 ], [ %i.ji, %._crit_edge.i86 ]
  %i.ki = or disjoint i8 %.021.lcssa28.i88, 48
  %i.kj = getelementptr inbounds i8, ptr %.0.lcssa29.i87, i64 -1
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.kk = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  tail call void %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef nonnull %i.ia, i64 noundef %i.jr), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91: ; preds = %bb.z, %bb.ac
  %i.ko = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !25
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  tail call void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull @.str.35, i64 noundef 2)
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0129.0167, i64 1 ; 2 uses
  %i.kt = load ptr, ptr %i.ht, align 8, !tbaa !10
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !237
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -1 ; 2 uses
  %.not152 = icmp eq ptr %i.ks, %i.kw
  br i1 %.not152, label %._crit_edge169, label %bb.y, !llvm.loop !239

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit: ; preds = %bb.x, %bb.u, %bb.t
  %i.kx = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !25
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  tail call void %i.la(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull @.str.36, i64 noundef 3)
  %i.lb = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.lc = load ptr, ptr %i.he, align 8, !tbaa !54
  %i.ld = load ptr, ptr %i.lb, align 8, !tbaa !25
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  tail call void %i.lf(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, ptr noundef %i.lc, i64 noundef %i.hh)
  %i.lg = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !25
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  tail call void %i.lj(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, ptr noundef nonnull @.str.37, i64 noundef 11)
  %i.lk = load ptr, ptr %i.ht, align 8, !tbaa !10 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 25
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !240, !range !99, !noundef !100
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !246 ; 9 uses
  %i.lq = icmp eq i8 %i.lp, 0
  br i1 %i.lq, label %bb.ae, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i92

bb.ae:                                            ; preds = %bb.ad
  %i.lr = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !25
  %i.lt = load ptr, ptr %i.ls, align 8
  tail call void %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit98

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i92: ; preds = %bb.ad
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lv = zext i8 %i.lp to i64
  %i.lw = icmp ult i8 %i.lp, 10
  %i.lx = icmp ult i8 %i.lp, 100
  %i.ly = select i1 %i.lx, i64 2, i64 3
  %i.lz = select i1 %i.lw, i64 1, i64 %i.ly       ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lz ; 5 uses
  %i.mb = icmp ugt i8 %i.lp, 99
  br i1 %i.mb, label %._crit_edge.thread.i96, label %._crit_edge.i93

._crit_edge.thread.i96:                           ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i92
  %i.mc = getelementptr inbounds i8, ptr %i.ma, i64 -2 ; 2 uses
  %i.md = urem i8 %i.lp, 100
  %.zext.i97 = zext nneg i8 %i.md to i64
  %i.me = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i97 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !10
  %i.mh = getelementptr inbounds i8, ptr %i.ma, i64 -1
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !10
  %i.mi = load i8, ptr %i.me, align 1, !tbaa !10
  store i8 %i.mi, ptr %i.mc, align 1, !tbaa !10
  %10 = icmp ugt i8 %i.lp, -57
  %11 = select i1 %10, i8 2, i8 1
  br label %bb.ag

._crit_edge.i93:                                  ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i92
  %i.mj = icmp samesign ugt i8 %i.lp, 9
  br i1 %i.mj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i93
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.lv ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !10
  %i.mn = getelementptr inbounds i8, ptr %i.ma, i64 -1
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !10
  %i.mo = load i8, ptr %i.mk, align 1, !tbaa !10
  %i.mp = getelementptr inbounds i8, ptr %i.ma, i64 -2
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !10
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i93, %._crit_edge.thread.i96
  %.0.lcssa29.i94 = phi ptr [ %i.mc, %._crit_edge.thread.i96 ], [ %i.ma, %._crit_edge.i93 ]
  %.021.lcssa28.i95 = phi i8 [ %11, %._crit_edge.thread.i96 ], [ %i.lp, %._crit_edge.i93 ]
  %i.mq = or disjoint i8 %.021.lcssa28.i95, 48
  %i.mr = getelementptr inbounds i8, ptr %.0.lcssa29.i94, i64 -1
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ms = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !25
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  tail call void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull %i.lu, i64 noundef %i.lz), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit98

bb.ai:                                            ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit
  %i.mw = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !25
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  tail call void %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef nonnull @.str.38, i64 noundef 4)
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit98

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit98: ; preds = %bb.ah, %bb.ae, %bb.ai
  %i.na = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !25
  %i.nc = load ptr, ptr %i.nb, align 8
  tail call void %i.nc(ptr noundef nonnull align 8 dereferenceable(8) %i.na, i8 noundef signext 10)
  %i.nd = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ne = load ptr, ptr %i.he, align 8, !tbaa !54
  %i.nf = zext i32 %5 to i64
  %i.ng = load ptr, ptr %i.nd, align 8, !tbaa !25
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  tail call void %i.ni(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr noundef %i.ne, i64 noundef %i.nf)
  %i.nj = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !25
  %i.nl = load ptr, ptr %i.nk, align 8
  tail call void %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, i8 noundef signext 125)
  br label %common.ret274

bb.aj:                                            ; preds = %bb.q
  tail call void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.39, i64 noundef 10)
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !10 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !237 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !237 ; 2 uses
  %i.nr = icmp eq ptr %i.no, %i.nq
  br i1 %i.nr, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105, label %.preheader155

.preheader155:                                    ; preds = %bb.aj
  %i.ns = getelementptr inbounds i8, ptr %i.nq, i64 -1 ; 2 uses
  %.not164 = icmp eq ptr %i.no, %i.ns
  br i1 %.not164, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader155
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.ao

._crit_edge:                                      ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112, %.preheader155
  %.lcssa157 = phi ptr [ %i.ns, %.preheader155 ], [ %i.qo, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112 ]
  %i.nu = load i8, ptr %.lcssa157, align 1, !tbaa !10 ; 9 uses
  %i.nv = icmp eq i8 %i.nu, 0
  br i1 %i.nv, label %bb.ak, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i99

bb.ak:                                            ; preds = %._crit_edge
  %i.nw = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !25
  %i.ny = load ptr, ptr %i.nx, align 8
  tail call void %i.ny(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i99: ; preds = %._crit_edge
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.oa = zext i8 %i.nu to i64
  %i.ob = icmp ult i8 %i.nu, 10
  %i.oc = icmp ult i8 %i.nu, 100
  %i.od = select i1 %i.oc, i64 2, i64 3
  %i.oe = select i1 %i.ob, i64 1, i64 %i.od       ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.oe ; 5 uses
  %i.og = icmp ugt i8 %i.nu, 99
  br i1 %i.og, label %._crit_edge.thread.i103, label %._crit_edge.i100

._crit_edge.thread.i103:                          ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i99
  %i.oh = getelementptr inbounds i8, ptr %i.of, i64 -2 ; 2 uses
  %i.oi = urem i8 %i.nu, 100
  %.zext.i104 = zext nneg i8 %i.oi to i64
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i104 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !10
  %i.om = getelementptr inbounds i8, ptr %i.of, i64 -1
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !10
  %i.on = load i8, ptr %i.oj, align 1, !tbaa !10
  store i8 %i.on, ptr %i.oh, align 1, !tbaa !10
  %12 = icmp ugt i8 %i.nu, -57
  %13 = select i1 %12, i8 2, i8 1
  br label %bb.am

._crit_edge.i100:                                 ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i99
  %i.oo = icmp samesign ugt i8 %i.nu, 9
  br i1 %i.oo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i100
  %i.op = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.oa ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 1
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !10
  %i.os = getelementptr inbounds i8, ptr %i.of, i64 -1
  store i8 %i.or, ptr %i.os, align 1, !tbaa !10
  %i.ot = load i8, ptr %i.op, align 1, !tbaa !10
  %i.ou = getelementptr inbounds i8, ptr %i.of, i64 -2
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !10
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i100, %._crit_edge.thread.i103
  %.0.lcssa29.i101 = phi ptr [ %i.oh, %._crit_edge.thread.i103 ], [ %i.of, %._crit_edge.i100 ]
  %.021.lcssa28.i102 = phi i8 [ %13, %._crit_edge.thread.i103 ], [ %i.nu, %._crit_edge.i100 ]
  %i.ov = or disjoint i8 %.021.lcssa28.i102, 48
  %i.ow = getelementptr inbounds i8, ptr %.0.lcssa29.i101, i64 -1
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ox = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !25
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8
  tail call void %i.pa(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, ptr noundef nonnull %i.nz, i64 noundef %i.oe), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105

bb.ao:                                            ; preds = %.lr.ph, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112
  %.sroa.0124.0165 = phi ptr [ %i.no, %.lr.ph ], [ %i.qk, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112 ] ; 2 uses
  %i.pb = load i8, ptr %.sroa.0124.0165, align 1, !tbaa !10 ; 9 uses
  %i.pc = icmp eq i8 %i.pb, 0
  br i1 %i.pc, label %bb.ap, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i106

bb.ap:                                            ; preds = %bb.ao
  %i.pd = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !25
  %i.pf = load ptr, ptr %i.pe, align 8
  tail call void %i.pf(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i106: ; preds = %bb.ao
  %i.pg = zext i8 %i.pb to i64
  %i.ph = icmp ult i8 %i.pb, 10
  %i.pi = icmp ult i8 %i.pb, 100
  %i.pj = select i1 %i.pi, i64 2, i64 3
  %i.pk = select i1 %i.ph, i64 1, i64 %i.pj       ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.pk ; 5 uses
  %i.pm = icmp ugt i8 %i.pb, 99
  br i1 %i.pm, label %._crit_edge.thread.i110, label %._crit_edge.i107

._crit_edge.thread.i110:                          ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i106
  %i.pn = getelementptr inbounds i8, ptr %i.pl, i64 -2 ; 2 uses
  %i.po = urem i8 %i.pb, 100
  %.zext.i111 = zext nneg i8 %i.po to i64
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i111 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !10
  %i.ps = getelementptr inbounds i8, ptr %i.pl, i64 -1
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !10
  %i.pt = load i8, ptr %i.pp, align 1, !tbaa !10
  store i8 %i.pt, ptr %i.pn, align 1, !tbaa !10
  %14 = icmp ugt i8 %i.pb, -57
  %15 = select i1 %14, i8 2, i8 1
  br label %bb.ar

._crit_edge.i107:                                 ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i106
  %i.pu = icmp samesign ugt i8 %i.pb, 9
  br i1 %i.pu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i107
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.pg ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 1
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !10
  %i.py = getelementptr inbounds i8, ptr %i.pl, i64 -1
  store i8 %i.px, ptr %i.py, align 1, !tbaa !10
  %i.pz = load i8, ptr %i.pv, align 1, !tbaa !10
  %i.qa = getelementptr inbounds i8, ptr %i.pl, i64 -2
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !10
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i107, %._crit_edge.thread.i110
  %.0.lcssa29.i108 = phi ptr [ %i.pn, %._crit_edge.thread.i110 ], [ %i.pl, %._crit_edge.i107 ]
  %.021.lcssa28.i109 = phi i8 [ %15, %._crit_edge.thread.i110 ], [ %i.pb, %._crit_edge.i107 ]
  %i.qb = or disjoint i8 %.021.lcssa28.i109, 48
  %i.qc = getelementptr inbounds i8, ptr %.0.lcssa29.i108, i64 -1
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.qd = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !25
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8
  tail call void %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull %i.nt, i64 noundef %i.pk), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112: ; preds = %bb.ap, %bb.as
  %i.qh = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !25
  %i.qj = load ptr, ptr %i.qi, align 8
  tail call void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.qh, i8 noundef signext 44)
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0124.0165, i64 1 ; 2 uses
  %i.ql = load ptr, ptr %i.nm, align 8, !tbaa !10
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !237
  %i.qo = getelementptr inbounds i8, ptr %i.qn, i64 -1 ; 2 uses
  %.not = icmp eq ptr %i.qk, %i.qo
  br i1 %.not, label %._crit_edge, label %bb.ao, !llvm.loop !247

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105: ; preds = %bb.an, %bb.ak, %bb.aj
  %i.qp = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !25
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8
  tail call void %i.qs(ptr noundef nonnull align 8 dereferenceable(8) %i.qp, ptr noundef nonnull @.str.40, i64 noundef 12)
  %i.qt = load ptr, ptr %i.nm, align 8, !tbaa !10 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 25
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !240, !range !99, !noundef !100
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qy = load i8, ptr %i.qx, align 8, !tbaa !246 ; 9 uses
  %i.qz = icmp eq i8 %i.qy, 0
  br i1 %i.qz, label %bb.au, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i113

bb.au:                                            ; preds = %bb.at
  %i.ra = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !25
  %i.rc = load ptr, ptr %i.rb, align 8
  tail call void %i.rc(ptr noundef nonnull align 8 dereferenceable(8) %i.ra, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit119

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i113: ; preds = %bb.at
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.re = zext i8 %i.qy to i64
  %i.rf = icmp ult i8 %i.qy, 10
  %i.rg = icmp ult i8 %i.qy, 100
  %i.rh = select i1 %i.rg, i64 2, i64 3
  %i.ri = select i1 %i.rf, i64 1, i64 %i.rh       ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.ri ; 5 uses
  %i.rk = icmp ugt i8 %i.qy, 99
  br i1 %i.rk, label %._crit_edge.thread.i117, label %._crit_edge.i114

._crit_edge.thread.i117:                          ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i113
  %i.rl = getelementptr inbounds i8, ptr %i.rj, i64 -2 ; 2 uses
  %i.rm = urem i8 %i.qy, 100
  %.zext.i118 = zext nneg i8 %i.rm to i64
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i118 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 1
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !10
  %i.rq = getelementptr inbounds i8, ptr %i.rj, i64 -1
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !10
  %i.rr = load i8, ptr %i.rn, align 1, !tbaa !10
  store i8 %i.rr, ptr %i.rl, align 1, !tbaa !10
  %16 = icmp ugt i8 %i.qy, -57
  %17 = select i1 %16, i8 2, i8 1
  br label %bb.aw

._crit_edge.i114:                                 ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i113
  %i.rs = icmp samesign ugt i8 %i.qy, 9
  br i1 %i.rs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i114
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.re ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 1
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !10
  %i.rw = getelementptr inbounds i8, ptr %i.rj, i64 -1
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !10
  %i.rx = load i8, ptr %i.rt, align 1, !tbaa !10
  %i.ry = getelementptr inbounds i8, ptr %i.rj, i64 -2
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !10
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i114, %._crit_edge.thread.i117
  %.0.lcssa29.i115 = phi ptr [ %i.rl, %._crit_edge.thread.i117 ], [ %i.rj, %._crit_edge.i114 ]
  %.021.lcssa28.i116 = phi i8 [ %17, %._crit_edge.thread.i117 ], [ %i.qy, %._crit_edge.i114 ]
  %i.rz = or disjoint i8 %.021.lcssa28.i116, 48
  %i.sa = getelementptr inbounds i8, ptr %.0.lcssa29.i115, i64 -1
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !10
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.sb = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !25
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8
  tail call void %i.se(ptr noundef nonnull align 8 dereferenceable(8) %i.sb, ptr noundef nonnull %i.rd, i64 noundef %i.ri), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit119

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit119: ; preds = %bb.au, %bb.ax
  %i.sf = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !25
  %i.sh = load ptr, ptr %i.sg, align 8
  tail call void %i.sh(ptr noundef nonnull align 8 dereferenceable(8) %i.sf, i8 noundef signext 125)
  br label %common.ret274

bb.ay:                                            ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105
  %i.si = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !25
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  tail call void %i.sl(ptr noundef nonnull align 8 dereferenceable(8) %i.si, ptr noundef nonnull @.str.41, i64 noundef 5)
  br label %common.ret274

bb.az:                                            ; preds = %bb.a
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sn = load i8, ptr %i.sm, align 8, !tbaa !10, !range !99, !noundef !100
  %i.so = trunc nuw i8 %i.sn to i1
  %i.sp = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !25
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8            ; 2 uses
  br i1 %i.so, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void %i.ss(ptr noundef nonnull align 8 dereferenceable(8) %i.sp, ptr noundef nonnull @.str.42, i64 noundef 4)
  br label %common.ret274

bb.bb:                                            ; preds = %bb.az
  tail call void %i.ss(ptr noundef nonnull align 8 dereferenceable(8) %i.sp, ptr noundef nonnull @.str.43, i64 noundef 5)
  br label %common.ret274

bb.bc:                                            ; preds = %bb.a
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.su = load i64, ptr %i.st, align 8, !tbaa !10
  tail call void @_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIlTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_(ptr noundef nonnull align 8 dereferenceable(644) %0, i64 noundef %i.su)
  br label %common.ret274

bb.bd:                                            ; preds = %bb.a
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !10 ; 7 uses
  %i.sx = icmp eq i64 %i.sw, 0
  br i1 %i.sx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.sy = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !25
  %i.ta = load ptr, ptr %i.sz, align 8
  tail call void %i.ta(ptr noundef nonnull align 8 dereferenceable(8) %i.sy, i8 noundef signext 48), !inline_history !248
  br label %common.ret274

bb.bf:                                            ; preds = %bb.bd
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.tc = icmp ult i64 %i.sw, 10
  br i1 %i.tc, label %._crit_edge.thread.i122, label %.lr.ph.i.i

._crit_edge.thread.i122:                          ; preds = %bb.bf
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %bb.bn

.lr.ph.i.i:                                       ; preds = %bb.bf, %bb.bl
  %.017.i.i = phi i32 [ %i.tl, %bb.bl ], [ 1, %bb.bf ] ; 4 uses
  %.01116.i.i = phi i64 [ %i.tk, %bb.bl ], [ %i.sw, %bb.bf ] ; 5 uses
  %i.te = icmp ult i64 %.01116.i.i, 100
  br i1 %i.te, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i.i
  %i.tf = add i32 %.017.i.i, 1
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120

bb.bh:                                            ; preds = %.lr.ph.i.i
  %i.tg = icmp ult i64 %.01116.i.i, 1000
  br i1 %i.tg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.th = add i32 %.017.i.i, 2
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120

bb.bj:                                            ; preds = %bb.bh
  %i.ti = icmp ult i64 %.01116.i.i, 10000
  br i1 %i.ti, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.tj = add i32 %.017.i.i, 3
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120

bb.bl:                                            ; preds = %bb.bj
  %i.tk = udiv i64 %.01116.i.i, 10000
  %i.tl = add i32 %.017.i.i, 4                    ; 2 uses
  %i.tm = icmp ult i64 %.01116.i.i, 100000
  br i1 %i.tm, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120, label %.lr.ph.i.i, !llvm.loop !249

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120: ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg
  %.012.i.i = phi i32 [ %i.tj, %bb.bk ], [ %i.tf, %bb.bg ], [ %i.th, %bb.bi ], [ %i.tl, %bb.bl ]
  %i.tn = zext i32 %.012.i.i to i64               ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.tn ; 2 uses
  %i.tp = icmp ugt i64 %i.sw, 99
  br i1 %i.tp, label %.lr.ph.i, label %._crit_edge.i121

.lr.ph.i:                                         ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120, %.lr.ph.i
  %.027.i = phi ptr [ %i.tx, %.lr.ph.i ], [ %i.to, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120 ] ; 2 uses
  %.02126.i = phi i64 [ %i.tr, %.lr.ph.i ], [ %i.sw, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120 ] ; 3 uses
  %i.tq = urem i64 %.02126.i, 100
  %i.tr = udiv i64 %.02126.i, 100                 ; 2 uses
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerImTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.tq ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !10
  %i.tv = getelementptr inbounds i8, ptr %.027.i, i64 -1
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !10
  %i.tw = load i8, ptr %i.ts, align 1, !tbaa !10
  %i.tx = getelementptr inbounds i8, ptr %.027.i, i64 -2 ; 3 uses
  store i8 %i.tw, ptr %i.tx, align 1, !tbaa !10
  %i.ty = icmp ugt i64 %.02126.i, 9999
  br i1 %i.ty, label %.lr.ph.i, label %._crit_edge.i121, !llvm.loop !250

._crit_edge.i121:                                 ; preds = %.lr.ph.i, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120
  %.021.lcssa.i = phi i64 [ %i.sw, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120 ], [ %i.tr, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.to, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120 ], [ %i.tx, %.lr.ph.i ] ; 3 uses
  %i.tz = icmp samesign ugt i64 %.021.lcssa.i, 9
  br i1 %i.tz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %._crit_edge.i121
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerImTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.021.lcssa.i ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !10
  %i.ud = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -1
  store i8 %i.uc, ptr %i.ud, align 1, !tbaa !10
  %i.ue = load i8, ptr %i.ua, align 1, !tbaa !10
  %i.uf = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -2
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !10
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i121, %._crit_edge.thread.i122
  %.0.lcssa38.i = phi ptr [ %i.td, %._crit_edge.thread.i122 ], [ %.0.lcssa.i, %._crit_edge.i121 ]
  %.021.lcssa37.i = phi i64 [ %i.sw, %._crit_edge.thread.i122 ], [ %.021.lcssa.i, %._crit_edge.i121 ]
  %i.ug = phi i64 [ 1, %._crit_edge.thread.i122 ], [ %i.tn, %._crit_edge.i121 ]
  %i.uh = trunc nuw nsw i64 %.021.lcssa37.i to i8
  %i.ui = or disjoint i8 %i.uh, 48
  %i.uj = getelementptr inbounds i8, ptr %.0.lcssa38.i, i64 -1
  store i8 %i.ui, ptr %i.uj, align 1, !tbaa !10
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.uk = phi i64 [ %i.ug, %bb.bn ], [ %i.tn, %bb.bm ]
  %i.ul = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !25
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8
  tail call void %i.uo(ptr noundef nonnull align 8 dereferenceable(8) %i.ul, ptr noundef nonnull %i.tb, i64 noundef %i.uk), !inline_history !248
  br label %common.ret274

bb.bp:                                            ; preds = %bb.a
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uq = load double, ptr %i.up, align 8, !tbaa !10 ; 2 uses
  %i.ur = tail call double @llvm.fabs.f64(double %i.uq)
  %i.us = fcmp ueq double %i.ur, +inf
  br i1 %i.us, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ut = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !25
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8
  tail call void %i.uw(ptr noundef nonnull align 8 dereferenceable(8) %i.ut, ptr noundef nonnull @.str.38, i64 noundef 4), !inline_history !251
  br label %common.ret274

bb.br:                                            ; preds = %bb.bp
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.uz = tail call noundef nonnull ptr @_ZN13geos_nlohmann6detail8to_charsIdEEPcS2_PKcT_(ptr noundef %i.ux, ptr noundef %i.uy, double noundef %i.uq)
  %i.va = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.vb = ptrtoint ptr %i.uz to i64
  %i.vc = ptrtoint ptr %i.ux to i64
  %i.vd = sub i64 %i.vb, %i.vc
  %i.ve = load ptr, ptr %i.va, align 8, !tbaa !25
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8
  tail call void %i.vg(ptr noundef nonnull align 8 dereferenceable(8) %i.va, ptr noundef nonnull %i.ux, i64 noundef %i.vd), !inline_history !252
  br label %common.ret274

bb.bs:                                            ; preds = %bb.a
  %i.vh = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !25
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8
  tail call void %i.vk(ptr noundef nonnull align 8 dereferenceable(8) %i.vh, ptr noundef nonnull @.str.44, i64 noundef 11)
end_hunk_0
