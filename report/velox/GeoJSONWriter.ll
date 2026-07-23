inline.NumInlined: 2522
inline.NumDeleted: 1218
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE4dumpERKSE_bbjj:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.32, i64 noundef 2)
  br label %common.ret274

bb.k:                                             ; preds = %bb.i
  br i1 %2, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.33, i64 noundef 2)
  %i.ef = add i32 %5, %4                          ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !16 ; 2 uses
  %i.ej = zext i32 %i.ef to i64                   ; 3 uses
  %i.ek = icmp ult i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.m, label %bb.n, !prof !53

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
  %.lcssa156 = phi ptr [ %i.hz, %.preheader ], [ %i.ky, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91 ]
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
  %i.iv = udiv i8 %i.ib, 100
  br label %bb.w

._crit_edge.i:                                    ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i
  %i.iw = icmp samesign ugt i8 %i.ib, 9
  br i1 %i.iw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.ih ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !10
  %i.ja = getelementptr inbounds i8, ptr %i.im, i64 -1
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !10
  %i.jb = load i8, ptr %i.ix, align 1, !tbaa !10
  %i.jc = getelementptr inbounds i8, ptr %i.im, i64 -2
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !10
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.0.lcssa29.i = phi ptr [ %i.io, %._crit_edge.thread.i ], [ %i.im, %._crit_edge.i ]
  %.021.lcssa28.i = phi i8 [ %i.iv, %._crit_edge.thread.i ], [ %i.ib, %._crit_edge.i ]
  %i.jd = or disjoint i8 %.021.lcssa28.i, 48
  %i.je = getelementptr inbounds i8, ptr %.0.lcssa29.i, i64 -1
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.jf = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !25
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  tail call void %i.ji(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull %i.ig, i64 noundef %i.il), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit

bb.y:                                             ; preds = %.lr.ph168, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91
  %.sroa.0129.0167 = phi ptr [ %i.hv, %.lr.ph168 ], [ %i.ku, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91 ] ; 2 uses
  %i.jj = load i8, ptr %.sroa.0129.0167, align 1, !tbaa !10 ; 9 uses
  %i.jk = icmp eq i8 %i.jj, 0
  br i1 %i.jk, label %bb.z, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i85

bb.z:                                             ; preds = %bb.y
  %i.jl = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !25
  %i.jn = load ptr, ptr %i.jm, align 8
  tail call void %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i85: ; preds = %bb.y
  %i.jo = zext i8 %i.jj to i64
  %i.jp = icmp ult i8 %i.jj, 10
  %i.jq = icmp ult i8 %i.jj, 100
  %i.jr = select i1 %i.jq, i64 2, i64 3
  %i.js = select i1 %i.jp, i64 1, i64 %i.jr       ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.js ; 5 uses
  %i.ju = icmp ugt i8 %i.jj, 99
  br i1 %i.ju, label %._crit_edge.thread.i89, label %._crit_edge.i86

._crit_edge.thread.i89:                           ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i85
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -2 ; 2 uses
  %i.jw = urem i8 %i.jj, 100
  %.zext.i90 = zext nneg i8 %i.jw to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i90 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !10
  %i.ka = getelementptr inbounds i8, ptr %i.jt, i64 -1
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !10
  %i.kb = load i8, ptr %i.jx, align 1, !tbaa !10
  store i8 %i.kb, ptr %i.jv, align 1, !tbaa !10
  %i.kc = udiv i8 %i.jj, 100
  br label %bb.ab

._crit_edge.i86:                                  ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i85
  %i.kd = icmp samesign ugt i8 %i.jj, 9
  br i1 %i.kd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i86
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.jo ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !10
  %i.kh = getelementptr inbounds i8, ptr %i.jt, i64 -1
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !10
  %i.ki = load i8, ptr %i.ke, align 1, !tbaa !10
  %i.kj = getelementptr inbounds i8, ptr %i.jt, i64 -2
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !10
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i86, %._crit_edge.thread.i89
  %.0.lcssa29.i87 = phi ptr [ %i.jv, %._crit_edge.thread.i89 ], [ %i.jt, %._crit_edge.i86 ]
  %.021.lcssa28.i88 = phi i8 [ %i.kc, %._crit_edge.thread.i89 ], [ %i.jj, %._crit_edge.i86 ]
  %i.kk = or disjoint i8 %.021.lcssa28.i88, 48
  %i.kl = getelementptr inbounds i8, ptr %.0.lcssa29.i87, i64 -1
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.km = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !25
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  tail call void %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull %i.ia, i64 noundef %i.js), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit91: ; preds = %bb.z, %bb.ac
  %i.kq = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !25
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  tail call void %i.kt(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull @.str.35, i64 noundef 2)
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0129.0167, i64 1 ; 2 uses
  %i.kv = load ptr, ptr %i.ht, align 8, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !237
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -1 ; 2 uses
  %.not152 = icmp eq ptr %i.ku, %i.ky
  br i1 %.not152, label %._crit_edge169, label %bb.y, !llvm.loop !239

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit: ; preds = %bb.x, %bb.u, %bb.t
  %i.kz = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !25
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  tail call void %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull @.str.36, i64 noundef 3)
  %i.ld = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.le = load ptr, ptr %i.he, align 8, !tbaa !54
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !25
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8
  tail call void %i.lh(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef %i.le, i64 noundef %i.hh)
  %i.li = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !25
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8
  tail call void %i.ll(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef nonnull @.str.37, i64 noundef 11)
  %i.lm = load ptr, ptr %i.ht, align 8, !tbaa !10 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 25
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !240, !range !99, !noundef !100
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lr = load i8, ptr %i.lq, align 8, !tbaa !246 ; 9 uses
  %i.ls = icmp eq i8 %i.lr, 0
  br i1 %i.ls, label %bb.ae, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i92

bb.ae:                                            ; preds = %bb.ad
  %i.lt = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !25
  %i.lv = load ptr, ptr %i.lu, align 8
  tail call void %i.lv(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit98

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i92: ; preds = %bb.ad
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lx = zext i8 %i.lr to i64
  %i.ly = icmp ult i8 %i.lr, 10
  %i.lz = icmp ult i8 %i.lr, 100
  %i.ma = select i1 %i.lz, i64 2, i64 3
  %i.mb = select i1 %i.ly, i64 1, i64 %i.ma       ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mb ; 5 uses
  %i.md = icmp ugt i8 %i.lr, 99
  br i1 %i.md, label %._crit_edge.thread.i96, label %._crit_edge.i93

._crit_edge.thread.i96:                           ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i92
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 -2 ; 2 uses
  %i.mf = urem i8 %i.lr, 100
  %.zext.i97 = zext nneg i8 %i.mf to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i97 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !10
  %i.mj = getelementptr inbounds i8, ptr %i.mc, i64 -1
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !10
  %i.mk = load i8, ptr %i.mg, align 1, !tbaa !10
  store i8 %i.mk, ptr %i.me, align 1, !tbaa !10
  %i.ml = udiv i8 %i.lr, 100
  br label %bb.ag

._crit_edge.i93:                                  ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i92
  %i.mm = icmp samesign ugt i8 %i.lr, 9
  br i1 %i.mm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i93
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.lx ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !10
  %i.mq = getelementptr inbounds i8, ptr %i.mc, i64 -1
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !10
  %i.mr = load i8, ptr %i.mn, align 1, !tbaa !10
  %i.ms = getelementptr inbounds i8, ptr %i.mc, i64 -2
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !10
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i93, %._crit_edge.thread.i96
  %.0.lcssa29.i94 = phi ptr [ %i.me, %._crit_edge.thread.i96 ], [ %i.mc, %._crit_edge.i93 ]
  %.021.lcssa28.i95 = phi i8 [ %i.ml, %._crit_edge.thread.i96 ], [ %i.lr, %._crit_edge.i93 ]
  %i.mt = or disjoint i8 %.021.lcssa28.i95, 48
  %i.mu = getelementptr inbounds i8, ptr %.0.lcssa29.i94, i64 -1
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.mv = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !25
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  tail call void %i.my(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull %i.lw, i64 noundef %i.mb), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit98

bb.ai:                                            ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit
  %i.mz = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !25
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  tail call void %i.nc(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, ptr noundef nonnull @.str.38, i64 noundef 4)
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit98

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit98: ; preds = %bb.ah, %bb.ae, %bb.ai
  %i.nd = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !25
  %i.nf = load ptr, ptr %i.ne, align 8
  tail call void %i.nf(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, i8 noundef signext 10)
  %i.ng = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.nh = load ptr, ptr %i.he, align 8, !tbaa !54
  %i.ni = zext i32 %5 to i64
  %i.nj = load ptr, ptr %i.ng, align 8, !tbaa !25
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  tail call void %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %i.ng, ptr noundef %i.nh, i64 noundef %i.ni)
  %i.nm = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !25
  %i.no = load ptr, ptr %i.nn, align 8
  tail call void %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, i8 noundef signext 125)
  br label %common.ret274

bb.aj:                                            ; preds = %bb.q
  tail call void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.39, i64 noundef 10)
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !10 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !237 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !237 ; 2 uses
  %i.nu = icmp eq ptr %i.nr, %i.nt
  br i1 %i.nu, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105, label %.preheader155

.preheader155:                                    ; preds = %bb.aj
  %i.nv = getelementptr inbounds i8, ptr %i.nt, i64 -1 ; 2 uses
  %.not164 = icmp eq ptr %i.nr, %i.nv
  br i1 %.not164, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader155
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.ao

._crit_edge:                                      ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112, %.preheader155
  %.lcssa157 = phi ptr [ %i.nv, %.preheader155 ], [ %i.qt, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112 ]
  %i.nx = load i8, ptr %.lcssa157, align 1, !tbaa !10 ; 9 uses
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %bb.ak, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i99

bb.ak:                                            ; preds = %._crit_edge
  %i.nz = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !25
  %i.ob = load ptr, ptr %i.oa, align 8
  tail call void %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i99: ; preds = %._crit_edge
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.od = zext i8 %i.nx to i64
  %i.oe = icmp ult i8 %i.nx, 10
  %i.of = icmp ult i8 %i.nx, 100
  %i.og = select i1 %i.of, i64 2, i64 3
  %i.oh = select i1 %i.oe, i64 1, i64 %i.og       ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oh ; 5 uses
  %i.oj = icmp ugt i8 %i.nx, 99
  br i1 %i.oj, label %._crit_edge.thread.i103, label %._crit_edge.i100

._crit_edge.thread.i103:                          ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i99
  %i.ok = getelementptr inbounds i8, ptr %i.oi, i64 -2 ; 2 uses
  %i.ol = urem i8 %i.nx, 100
  %.zext.i104 = zext nneg i8 %i.ol to i64
  %i.om = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i104 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 1
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !10
  %i.op = getelementptr inbounds i8, ptr %i.oi, i64 -1
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !10
  %i.oq = load i8, ptr %i.om, align 1, !tbaa !10
  store i8 %i.oq, ptr %i.ok, align 1, !tbaa !10
  %i.or = udiv i8 %i.nx, 100
  br label %bb.am

._crit_edge.i100:                                 ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i99
  %i.os = icmp samesign ugt i8 %i.nx, 9
  br i1 %i.os, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i100
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.od ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !10
  %i.ow = getelementptr inbounds i8, ptr %i.oi, i64 -1
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !10
  %i.ox = load i8, ptr %i.ot, align 1, !tbaa !10
  %i.oy = getelementptr inbounds i8, ptr %i.oi, i64 -2
  store i8 %i.ox, ptr %i.oy, align 1, !tbaa !10
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i100, %._crit_edge.thread.i103
  %.0.lcssa29.i101 = phi ptr [ %i.ok, %._crit_edge.thread.i103 ], [ %i.oi, %._crit_edge.i100 ]
  %.021.lcssa28.i102 = phi i8 [ %i.or, %._crit_edge.thread.i103 ], [ %i.nx, %._crit_edge.i100 ]
  %i.oz = or disjoint i8 %.021.lcssa28.i102, 48
  %i.pa = getelementptr inbounds i8, ptr %.0.lcssa29.i101, i64 -1
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.pb = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !25
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  tail call void %i.pe(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef nonnull %i.oc, i64 noundef %i.oh), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105

bb.ao:                                            ; preds = %.lr.ph, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112
  %.sroa.0124.0165 = phi ptr [ %i.nr, %.lr.ph ], [ %i.qp, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112 ] ; 2 uses
  %i.pf = load i8, ptr %.sroa.0124.0165, align 1, !tbaa !10 ; 9 uses
  %i.pg = icmp eq i8 %i.pf, 0
  br i1 %i.pg, label %bb.ap, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i106

bb.ap:                                            ; preds = %bb.ao
  %i.ph = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !25
  %i.pj = load ptr, ptr %i.pi, align 8
  tail call void %i.pj(ptr noundef nonnull align 8 dereferenceable(8) %i.ph, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i106: ; preds = %bb.ao
  %i.pk = zext i8 %i.pf to i64
  %i.pl = icmp ult i8 %i.pf, 10
  %i.pm = icmp ult i8 %i.pf, 100
  %i.pn = select i1 %i.pm, i64 2, i64 3
  %i.po = select i1 %i.pl, i64 1, i64 %i.pn       ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.po ; 5 uses
  %i.pq = icmp ugt i8 %i.pf, 99
  br i1 %i.pq, label %._crit_edge.thread.i110, label %._crit_edge.i107

._crit_edge.thread.i110:                          ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i106
  %i.pr = getelementptr inbounds i8, ptr %i.pp, i64 -2 ; 2 uses
  %i.ps = urem i8 %i.pf, 100
  %.zext.i111 = zext nneg i8 %i.ps to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i111 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !10
  %i.pw = getelementptr inbounds i8, ptr %i.pp, i64 -1
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !10
  %i.px = load i8, ptr %i.pt, align 1, !tbaa !10
  store i8 %i.px, ptr %i.pr, align 1, !tbaa !10
  %i.py = udiv i8 %i.pf, 100
  br label %bb.ar

._crit_edge.i107:                                 ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i106
  %i.pz = icmp samesign ugt i8 %i.pf, 9
  br i1 %i.pz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i107
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.pk ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 1
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !10
  %i.qd = getelementptr inbounds i8, ptr %i.pp, i64 -1
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !10
  %i.qe = load i8, ptr %i.qa, align 1, !tbaa !10
  %i.qf = getelementptr inbounds i8, ptr %i.pp, i64 -2
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !10
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i107, %._crit_edge.thread.i110
  %.0.lcssa29.i108 = phi ptr [ %i.pr, %._crit_edge.thread.i110 ], [ %i.pp, %._crit_edge.i107 ]
  %.021.lcssa28.i109 = phi i8 [ %i.py, %._crit_edge.thread.i110 ], [ %i.pf, %._crit_edge.i107 ]
  %i.qg = or disjoint i8 %.021.lcssa28.i109, 48
  %i.qh = getelementptr inbounds i8, ptr %.0.lcssa29.i108, i64 -1
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.qi = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !25
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8
  tail call void %i.ql(ptr noundef nonnull align 8 dereferenceable(8) %i.qi, ptr noundef nonnull %i.nw, i64 noundef %i.po), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit112: ; preds = %bb.ap, %bb.as
  %i.qm = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !25
  %i.qo = load ptr, ptr %i.qn, align 8
  tail call void %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %i.qm, i8 noundef signext 44)
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0124.0165, i64 1 ; 2 uses
  %i.qq = load ptr, ptr %i.np, align 8, !tbaa !10
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !237
  %i.qt = getelementptr inbounds i8, ptr %i.qs, i64 -1 ; 2 uses
  %.not = icmp eq ptr %i.qp, %i.qt
  br i1 %.not, label %._crit_edge, label %bb.ao, !llvm.loop !247

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105: ; preds = %bb.an, %bb.ak, %bb.aj
  %i.qu = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !25
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  tail call void %i.qx(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, ptr noundef nonnull @.str.40, i64 noundef 12)
  %i.qy = load ptr, ptr %i.np, align 8, !tbaa !10 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 25
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !240, !range !99, !noundef !100
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.rd = load i8, ptr %i.rc, align 8, !tbaa !246 ; 9 uses
  %i.re = icmp eq i8 %i.rd, 0
  br i1 %i.re, label %bb.au, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i113

bb.au:                                            ; preds = %bb.at
  %i.rf = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !25
  %i.rh = load ptr, ptr %i.rg, align 8
  tail call void %i.rh(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, i8 noundef signext 48), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit119

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i113: ; preds = %bb.at
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.rj = zext i8 %i.rd to i64
  %i.rk = icmp ult i8 %i.rd, 10
  %i.rl = icmp ult i8 %i.rd, 100
  %i.rm = select i1 %i.rl, i64 2, i64 3
  %i.rn = select i1 %i.rk, i64 1, i64 %i.rm       ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rn ; 5 uses
  %i.rp = icmp ugt i8 %i.rd, 99
  br i1 %i.rp, label %._crit_edge.thread.i117, label %._crit_edge.i114

._crit_edge.thread.i117:                          ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i113
  %i.rq = getelementptr inbounds i8, ptr %i.ro, i64 -2 ; 2 uses
  %i.rr = urem i8 %i.rd, 100
  %.zext.i118 = zext nneg i8 %i.rr to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.zext.i118 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 1
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !10
  %i.rv = getelementptr inbounds i8, ptr %i.ro, i64 -1
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !10
  %i.rw = load i8, ptr %i.rs, align 1, !tbaa !10
  store i8 %i.rw, ptr %i.rq, align 1, !tbaa !10
  %i.rx = udiv i8 %i.rd, 100
  br label %bb.aw

._crit_edge.i114:                                 ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i113
  %i.ry = icmp samesign ugt i8 %i.rd, 9
  br i1 %i.ry, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i114
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.rj ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 1
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !10
  %i.sc = getelementptr inbounds i8, ptr %i.ro, i64 -1
  store i8 %i.sb, ptr %i.sc, align 1, !tbaa !10
  %i.sd = load i8, ptr %i.rz, align 1, !tbaa !10
  %i.se = getelementptr inbounds i8, ptr %i.ro, i64 -2
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !10
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i114, %._crit_edge.thread.i117
  %.0.lcssa29.i115 = phi ptr [ %i.rq, %._crit_edge.thread.i117 ], [ %i.ro, %._crit_edge.i114 ]
  %.021.lcssa28.i116 = phi i8 [ %i.rx, %._crit_edge.thread.i117 ], [ %i.rd, %._crit_edge.i114 ]
  %i.sf = or disjoint i8 %.021.lcssa28.i116, 48
  %i.sg = getelementptr inbounds i8, ptr %.0.lcssa29.i115, i64 -1
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !10
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.sh = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !25
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8
  tail call void %i.sk(ptr noundef nonnull align 8 dereferenceable(8) %i.sh, ptr noundef nonnull %i.ri, i64 noundef %i.rn), !inline_history !238
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit119

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit119: ; preds = %bb.au, %bb.ax
  %i.sl = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !25
  %i.sn = load ptr, ptr %i.sm, align 8
  tail call void %i.sn(ptr noundef nonnull align 8 dereferenceable(8) %i.sl, i8 noundef signext 125)
  br label %common.ret274

bb.ay:                                            ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIhTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_.exit105
  %i.so = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !25
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8
  tail call void %i.sr(ptr noundef nonnull align 8 dereferenceable(8) %i.so, ptr noundef nonnull @.str.41, i64 noundef 5)
  br label %common.ret274

bb.az:                                            ; preds = %bb.a
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.st = load i8, ptr %i.ss, align 8, !tbaa !10, !range !99, !noundef !100
  %i.su = trunc nuw i8 %i.st to i1
  %i.sv = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !25
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8            ; 2 uses
  br i1 %i.su, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void %i.sy(ptr noundef nonnull align 8 dereferenceable(8) %i.sv, ptr noundef nonnull @.str.42, i64 noundef 4)
  br label %common.ret274

bb.bb:                                            ; preds = %bb.az
  tail call void %i.sy(ptr noundef nonnull align 8 dereferenceable(8) %i.sv, ptr noundef nonnull @.str.43, i64 noundef 5)
  br label %common.ret274

bb.bc:                                            ; preds = %bb.a
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !10
  tail call void @_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerIlTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_(ptr noundef nonnull align 8 dereferenceable(644) %0, i64 noundef %i.ta)
  br label %common.ret274

bb.bd:                                            ; preds = %bb.a
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !10 ; 7 uses
  %i.td = icmp eq i64 %i.tc, 0
  br i1 %i.td, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.te = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !25
  %i.tg = load ptr, ptr %i.tf, align 8
  tail call void %i.tg(ptr noundef nonnull align 8 dereferenceable(8) %i.te, i8 noundef signext 48), !inline_history !248
  br label %common.ret274

bb.bf:                                            ; preds = %bb.bd
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ti = icmp ult i64 %i.tc, 10
  br i1 %i.ti, label %._crit_edge.thread.i122, label %.lr.ph.i.i

._crit_edge.thread.i122:                          ; preds = %bb.bf
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %bb.bn

.lr.ph.i.i:                                       ; preds = %bb.bf, %bb.bl
  %.017.i.i = phi i32 [ %i.tr, %bb.bl ], [ 1, %bb.bf ] ; 4 uses
  %.01116.i.i = phi i64 [ %i.tq, %bb.bl ], [ %i.tc, %bb.bf ] ; 5 uses
  %i.tk = icmp ult i64 %.01116.i.i, 100
  br i1 %i.tk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i.i
  %i.tl = add i32 %.017.i.i, 1
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120

bb.bh:                                            ; preds = %.lr.ph.i.i
  %i.tm = icmp ult i64 %.01116.i.i, 1000
  br i1 %i.tm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.tn = add i32 %.017.i.i, 2
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120

bb.bj:                                            ; preds = %bb.bh
  %i.to = icmp ult i64 %.01116.i.i, 10000
  br i1 %i.to, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.tp = add i32 %.017.i.i, 3
  br label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120

bb.bl:                                            ; preds = %bb.bj
  %i.tq = udiv i64 %.01116.i.i, 10000
  %i.tr = add i32 %.017.i.i, 4                    ; 2 uses
  %i.ts = icmp ult i64 %.01116.i.i, 100000
  br i1 %i.ts, label %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120, label %.lr.ph.i.i, !llvm.loop !249

_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120: ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg
  %.012.i.i = phi i32 [ %i.tp, %bb.bk ], [ %i.tl, %bb.bg ], [ %i.tn, %bb.bi ], [ %i.tr, %bb.bl ]
  %i.tt = zext i32 %.012.i.i to i64               ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tt ; 2 uses
  %i.tv = icmp ugt i64 %i.tc, 99
  br i1 %i.tv, label %.lr.ph.i, label %._crit_edge.i121

.lr.ph.i:                                         ; preds = %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120, %.lr.ph.i
  %.027.i = phi ptr [ %i.ud, %.lr.ph.i ], [ %i.tu, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120 ] ; 2 uses
  %.02126.i = phi i64 [ %i.tx, %.lr.ph.i ], [ %i.tc, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120 ] ; 3 uses
  %i.tw = urem i64 %.02126.i, 100
  %i.tx = udiv i64 %.02126.i, 100                 ; 2 uses
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerImTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %i.tw ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !10
  %i.ub = getelementptr inbounds i8, ptr %.027.i, i64 -1
  store i8 %i.ua, ptr %i.ub, align 1, !tbaa !10
  %i.uc = load i8, ptr %i.ty, align 1, !tbaa !10
  %i.ud = getelementptr inbounds i8, ptr %.027.i, i64 -2 ; 3 uses
  store i8 %i.uc, ptr %i.ud, align 1, !tbaa !10
  %i.ue = icmp ugt i64 %.02126.i, 9999
  br i1 %i.ue, label %.lr.ph.i, label %._crit_edge.i121, !llvm.loop !250

._crit_edge.i121:                                 ; preds = %.lr.ph.i, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120
  %.021.lcssa.i = phi i64 [ %i.tc, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120 ], [ %i.tx, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.tu, %_ZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12count_digitsEm.exit.i120 ], [ %i.ud, %.lr.ph.i ] ; 3 uses
  %i.uf = icmp samesign ugt i64 %.021.lcssa.i, 9
  br i1 %i.uf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %._crit_edge.i121
  %i.ug = getelementptr inbounds nuw [2 x i8], ptr @_ZZN13geos_nlohmann6detail10serializerINS_10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12dump_integerImTnNSt9enable_ifIXoooosr3std7is_sameIT_mEE5valuesr3std7is_sameISI_lEE5valuesr3std7is_sameISI_hEE5valueEiE4typeELi0EEEvSI_E12digits_to_99, i64 %.021.lcssa.i ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !10
  %i.uj = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -1
  store i8 %i.ui, ptr %i.uj, align 1, !tbaa !10
  %i.uk = load i8, ptr %i.ug, align 1, !tbaa !10
  %i.ul = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -2
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !10
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i121, %._crit_edge.thread.i122
  %.0.lcssa38.i = phi ptr [ %i.tj, %._crit_edge.thread.i122 ], [ %.0.lcssa.i, %._crit_edge.i121 ]
  %.021.lcssa37.i = phi i64 [ %i.tc, %._crit_edge.thread.i122 ], [ %.021.lcssa.i, %._crit_edge.i121 ]
  %i.um = phi i64 [ 1, %._crit_edge.thread.i122 ], [ %i.tt, %._crit_edge.i121 ]
  %i.un = trunc nuw nsw i64 %.021.lcssa37.i to i8
  %i.uo = or disjoint i8 %i.un, 48
  %i.up = getelementptr inbounds i8, ptr %.0.lcssa38.i, i64 -1
  store i8 %i.uo, ptr %i.up, align 1, !tbaa !10
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.uq = phi i64 [ %i.um, %bb.bn ], [ %i.tt, %bb.bm ]
  %i.ur = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !25
end_hunk_0
