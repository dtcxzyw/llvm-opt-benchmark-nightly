inline.NumInlined: 882
inline.NumDeleted: 449
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE4dumpERKSF_bbjj:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.110, i64 noundef 2) #19
  br label %common.ret361

bb.k:                                             ; preds = %bb.i
  br i1 %2, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.111, i64 noundef 2) #19
  %i.du = add i32 %5, %4                          ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !20 ; 2 uses
  %i.dy = zext i32 %i.du to i64                   ; 3 uses
  %i.dz = icmp ult i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.m, label %bb.n, !prof !60

bb.m:                                             ; preds = %bb.l
  %i.ea = shl nuw nsw i64 %i.dx, 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 noundef %i.ea, i8 noundef signext 32) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.eb = load ptr, ptr %i.di, align 8, !tbaa !23 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !107 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !107
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -16
  %.not169204 = icmp eq ptr %i.ec, %i.ef
  br i1 %.not169204, label %._crit_edge208, label %.lr.ph207

._crit_edge208:                                   ; preds = %.lr.ph207, %bb.n
  %i.eg = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.eh = load ptr, ptr %i.dv, align 8, !tbaa !61
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef %i.eh, i64 noundef %i.dy) #19
  %i.el = load ptr, ptr %i.di, align 8, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !107
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE4dumpERKSF_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i1 noundef zeroext true, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %i.du)
  %i.ep = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !8
  %i.er = load ptr, ptr %i.eq, align 8
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, i8 noundef signext 10) #19
  %i.es = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.et = load ptr, ptr %i.dv, align 8, !tbaa !61
  %i.eu = zext i32 %5 to i64
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef %i.et, i64 noundef %i.eu) #19
  %i.ey = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !8
  %i.fa = load ptr, ptr %i.ez, align 8
  tail call void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i8 noundef signext 93) #19
  br label %common.ret361

.lr.ph207:                                        ; preds = %bb.n, %.lr.ph207
  %.sroa.0154.0205 = phi ptr [ %i.fk, %.lr.ph207 ], [ %i.ec, %bb.n ] ; 2 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.fc = load ptr, ptr %i.dv, align 8, !tbaa !61
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef %i.fc, i64 noundef %i.dy) #19
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE4dumpERKSF_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0154.0205, i1 noundef zeroext true, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %i.du)
  %i.fg = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  tail call void %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull @.str.108, i64 noundef 2) #19
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0154.0205, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.di, align 8, !tbaa !23
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !107
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -16
  %.not169 = icmp eq ptr %i.fk, %i.fo
  br i1 %.not169, label %._crit_edge208, label %.lr.ph207, !llvm.loop !151

bb.o:                                             ; preds = %bb.k
  %i.fp = load ptr, ptr %i.dp, align 8
  tail call void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.do, i8 noundef signext 91) #19
  %i.fq = load ptr, ptr %i.di, align 8, !tbaa !23 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !107 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !107
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -16 ; 2 uses
  %.not168198 = icmp eq ptr %i.fr, %i.fu
  br i1 %.not168198, label %._crit_edge202, label %.lr.ph201

._crit_edge202:                                   ; preds = %.lr.ph201, %bb.o
  %.lcssa = phi ptr [ %i.fu, %bb.o ], [ %i.gf, %.lr.ph201 ]
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE4dumpERKSF_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i1 noundef zeroext false, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
  %i.fv = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !8
  %i.fx = load ptr, ptr %i.fw, align 8
  tail call void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, i8 noundef signext 93) #19
  br label %common.ret361

.lr.ph201:                                        ; preds = %bb.o, %.lr.ph201
  %.sroa.0149.0199 = phi ptr [ %i.gb, %.lr.ph201 ], [ %i.fr, %bb.o ] ; 2 uses
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE4dumpERKSF_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0149.0199, i1 noundef zeroext false, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
  %i.fy = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !8
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, i8 noundef signext 44) #19
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0149.0199, i64 16 ; 2 uses
  %i.gc = load ptr, ptr %i.di, align 8, !tbaa !23
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !107
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -16 ; 2 uses
  %.not168 = icmp eq ptr %i.gb, %i.gf
  br i1 %.not168, label %._crit_edge202, label %.lr.ph201, !llvm.loop !152

bb.p:                                             ; preds = %bb.a
  %i.gg = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !8
  %i.gi = load ptr, ptr %i.gh, align 8
  tail call void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, i8 noundef signext 34) #19
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !23
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_escapedERKSB_b(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, i1 noundef zeroext %3)
  %i.gl = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !8
  %i.gn = load ptr, ptr %i.gm, align 8
  tail call void %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, i8 noundef signext 34) #19
  br label %common.ret361

bb.q:                                             ; preds = %bb.a
  %i.go = load ptr, ptr %0, align 8, !tbaa !39    ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  br i1 %2, label %bb.r, label %bb.aq

bb.r:                                             ; preds = %bb.q
  tail call void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.106, i64 noundef 2) #19
  %i.gs = add i32 %5, %4
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !20 ; 2 uses
  %i.gw = zext i32 %i.gs to i64                   ; 3 uses
  %i.gx = icmp ult i64 %i.gv, %i.gw
  br i1 %i.gx, label %bb.s, label %bb.t, !prof !60

bb.s:                                             ; preds = %bb.r
  %i.gy = shl nuw nsw i64 %i.gv, 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i64 noundef %i.gy, i8 noundef signext 32) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gz = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ha = load ptr, ptr %i.gt, align 8, !tbaa !61
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  tail call void %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef %i.ha, i64 noundef %i.gw) #19
  %i.he = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  tail call void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.112, i64 noundef 10) #19
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !23 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !153 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !153 ; 2 uses
  %i.hn = icmp eq ptr %i.hk, %i.hm
  br i1 %i.hn, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 -1 ; 2 uses
  %.not167193 = icmp eq ptr %i.hk, %i.ho
  br i1 %.not167193, label %._crit_edge196, label %.lr.ph195

.lr.ph195:                                        ; preds = %.preheader
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.y

._crit_edge196:                                   ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit91, %.preheader
  %.lcssa177 = phi ptr [ %i.ho, %.preheader ], [ %i.kn, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit91 ]
  %i.hq = load i8, ptr %.lcssa177, align 1, !tbaa !23 ; 9 uses
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.u, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i

bb.u:                                             ; preds = %._crit_edge196
  %i.hs = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !8
  %i.hu = load ptr, ptr %i.ht, align 8
  tail call void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, i8 noundef signext 48) #19, !inline_history !154
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i: ; preds = %._crit_edge196
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hw = zext i8 %i.hq to i64
  %i.hx = icmp ult i8 %i.hq, 10
  %i.hy = icmp ult i8 %i.hq, 100
  %i.hz = select i1 %i.hy, i64 2, i64 3
  %i.ia = select i1 %i.hx, i64 1, i64 %i.hz       ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ia ; 5 uses
  %i.ic = icmp ugt i8 %i.hq, 99
  br i1 %i.ic, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 -2 ; 2 uses
  %i.ie = urem i8 %i.hq, 100
  %.zext.i = zext nneg i8 %i.ie to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %.zext.i ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !23
  %i.ii = getelementptr inbounds i8, ptr %i.ib, i64 -1
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !23
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !23
  store i8 %i.ij, ptr %i.id, align 1, !tbaa !23
  %i.ik = udiv i8 %i.hq, 100
  br label %bb.w

._crit_edge.i:                                    ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i
  %i.il = icmp samesign ugt i8 %i.hq, 9
  br i1 %i.il, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  %i.im = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %i.hw ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !23
  %i.ip = getelementptr inbounds i8, ptr %i.ib, i64 -1
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !23
  %i.iq = load i8, ptr %i.im, align 1, !tbaa !23
  %i.ir = getelementptr inbounds i8, ptr %i.ib, i64 -2
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !23
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.0.lcssa39.i = phi ptr [ %i.id, %._crit_edge.thread.i ], [ %i.ib, %._crit_edge.i ]
  %.1.lcssa38.i = phi i8 [ %i.ik, %._crit_edge.thread.i ], [ %i.hq, %._crit_edge.i ]
  %i.is = or disjoint i8 %.1.lcssa38.i, 48
  %i.it = getelementptr inbounds i8, ptr %.0.lcssa39.i, i64 -1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.iu = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  tail call void %i.ix(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef nonnull %i.hv, i64 noundef %i.ia) #19, !inline_history !154
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit

bb.y:                                             ; preds = %.lr.ph195, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit91
  %.sroa.0144.0194 = phi ptr [ %i.hk, %.lr.ph195 ], [ %i.kj, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit91 ] ; 2 uses
  %i.iy = load i8, ptr %.sroa.0144.0194, align 1, !tbaa !23 ; 9 uses
  %i.iz = icmp eq i8 %i.iy, 0
  br i1 %i.iz, label %bb.z, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i85

bb.z:                                             ; preds = %bb.y
  %i.ja = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !8
  %i.jc = load ptr, ptr %i.jb, align 8
  tail call void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, i8 noundef signext 48) #19, !inline_history !154
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit91

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i85: ; preds = %bb.y
  %i.jd = zext i8 %i.iy to i64
  %i.je = icmp ult i8 %i.iy, 10
  %i.jf = icmp ult i8 %i.iy, 100
  %i.jg = select i1 %i.jf, i64 2, i64 3
  %i.jh = select i1 %i.je, i64 1, i64 %i.jg       ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.jh ; 5 uses
  %i.jj = icmp ugt i8 %i.iy, 99
  br i1 %i.jj, label %._crit_edge.thread.i89, label %._crit_edge.i86

._crit_edge.thread.i89:                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i85
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 -2 ; 2 uses
  %i.jl = urem i8 %i.iy, 100
  %.zext.i90 = zext nneg i8 %i.jl to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %.zext.i90 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !23
  %i.jp = getelementptr inbounds i8, ptr %i.ji, i64 -1
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !23
  %i.jq = load i8, ptr %i.jm, align 1, !tbaa !23
  store i8 %i.jq, ptr %i.jk, align 1, !tbaa !23
  %i.jr = udiv i8 %i.iy, 100
  br label %bb.ab

._crit_edge.i86:                                  ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i85
  %i.js = icmp samesign ugt i8 %i.iy, 9
  br i1 %i.js, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i86
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %i.jd ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !23
  %i.jw = getelementptr inbounds i8, ptr %i.ji, i64 -1
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !23
  %i.jx = load i8, ptr %i.jt, align 1, !tbaa !23
  %i.jy = getelementptr inbounds i8, ptr %i.ji, i64 -2
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !23
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i86, %._crit_edge.thread.i89
  %.0.lcssa39.i87 = phi ptr [ %i.jk, %._crit_edge.thread.i89 ], [ %i.ji, %._crit_edge.i86 ]
  %.1.lcssa38.i88 = phi i8 [ %i.jr, %._crit_edge.thread.i89 ], [ %i.iy, %._crit_edge.i86 ]
  %i.jz = or disjoint i8 %.1.lcssa38.i88, 48
  %i.ka = getelementptr inbounds i8, ptr %.0.lcssa39.i87, i64 -1
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.kb = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  tail call void %i.ke(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef nonnull %i.hp, i64 noundef %i.jh) #19, !inline_history !154
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit91

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit91: ; preds = %bb.z, %bb.ac
  %i.kf = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  tail call void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.113, i64 noundef 2) #19
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0144.0194, i64 1 ; 2 uses
  %i.kk = load ptr, ptr %i.hi, align 8, !tbaa !23
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !153
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -1 ; 2 uses
  %.not167 = icmp eq ptr %i.kj, %i.kn
  br i1 %.not167, label %._crit_edge196, label %bb.y, !llvm.loop !155

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit: ; preds = %bb.x, %bb.u, %bb.t
  %i.ko = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  tail call void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull @.str.114, i64 noundef 3) #19
  %i.ks = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.kt = load ptr, ptr %i.gt, align 8, !tbaa !61
  %i.ku = load ptr, ptr %i.ks, align 8, !tbaa !8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  tail call void %i.kw(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef %i.kt, i64 noundef %i.gw) #19
  %i.kx = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  tail call void %i.la(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull @.str.115, i64 noundef 11) #19
  %i.lb = load ptr, ptr %i.hi, align 8, !tbaa !23 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !156, !range !94, !noundef !95
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.lg = load i64, ptr %i.lf, align 8            ; 7 uses
  %i.lh = icmp eq i64 %i.lg, 0
  br i1 %i.lh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.li = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !8
  %i.lk = load ptr, ptr %i.lj, align 8
  tail call void %i.lk(ptr noundef nonnull align 8 dereferenceable(8) %i.li, i8 noundef signext 48) #19, !inline_history !162
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit

bb.af:                                            ; preds = %bb.ad
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lm = icmp ult i64 %i.lg, 10
  br i1 %i.lm, label %._crit_edge.thread.i93, label %.lr.ph.i28.i

._crit_edge.thread.i93:                           ; preds = %bb.af
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %bb.an

.lr.ph.i28.i:                                     ; preds = %bb.af, %bb.al
  %.017.i29.i = phi i32 [ %i.lv, %bb.al ], [ 1, %bb.af ] ; 4 uses
  %.01116.i30.i = phi i64 [ %i.lu, %bb.al ], [ %i.lg, %bb.af ] ; 5 uses
  %i.lo = icmp ult i64 %.01116.i30.i, 100
  br i1 %i.lo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i28.i
  %i.lp = add i32 %.017.i29.i, 1
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i

bb.ah:                                            ; preds = %.lr.ph.i28.i
  %i.lq = icmp ult i64 %.01116.i30.i, 1000
  br i1 %i.lq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.lr = add i32 %.017.i29.i, 2
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i

bb.aj:                                            ; preds = %bb.ah
  %i.ls = icmp ult i64 %.01116.i30.i, 10000
  br i1 %i.ls, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lt = add i32 %.017.i29.i, 3
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i

bb.al:                                            ; preds = %bb.aj
  %i.lu = udiv i64 %.01116.i30.i, 10000
  %i.lv = add i32 %.017.i29.i, 4                  ; 2 uses
  %i.lw = icmp ult i64 %.01116.i30.i, 100000
  br i1 %i.lw, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i, label %.lr.ph.i28.i, !llvm.loop !163

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i: ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ag
  %.012.i31.i = phi i32 [ %i.lt, %bb.ak ], [ %i.lp, %bb.ag ], [ %i.lr, %bb.ai ], [ %i.lv, %bb.al ]
  %i.lx = zext i32 %.012.i31.i to i64             ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lx ; 2 uses
  %i.lz = icmp ugt i64 %i.lg, 99
  br i1 %i.lz, label %.lr.ph.i, label %._crit_edge.i92

.lr.ph.i:                                         ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i, %.lr.ph.i
  %.037.i = phi ptr [ %i.mh, %.lr.ph.i ], [ %i.ly, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i ] ; 2 uses
  %.136.i = phi i64 [ %i.mb, %.lr.ph.i ], [ %i.lg, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i ] ; 3 uses
  %i.ma = urem i64 %.136.i, 100
  %i.mb = udiv i64 %.136.i, 100                   ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %i.ma ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !23
  %i.mf = getelementptr inbounds i8, ptr %.037.i, i64 -1
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !23
  %i.mg = load i8, ptr %i.mc, align 1, !tbaa !23
  %i.mh = getelementptr inbounds i8, ptr %.037.i, i64 -2 ; 3 uses
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !23
  %i.mi = icmp ugt i64 %.136.i, 9999
  br i1 %i.mi, label %.lr.ph.i, label %._crit_edge.i92, !llvm.loop !164

._crit_edge.i92:                                  ; preds = %.lr.ph.i, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i
  %.1.lcssa.i = phi i64 [ %i.lg, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i ], [ %i.mb, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.ly, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i ], [ %i.mh, %.lr.ph.i ] ; 3 uses
  %i.mj = icmp samesign ugt i64 %.1.lcssa.i, 9
  br i1 %i.mj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i92
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %.1.lcssa.i ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !23
  %i.mn = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -1
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !23
  %i.mo = load i8, ptr %i.mk, align 1, !tbaa !23
  %i.mp = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -2
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !23
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i92, %._crit_edge.thread.i93
  %.0.lcssa48.i = phi ptr [ %i.ln, %._crit_edge.thread.i93 ], [ %.0.lcssa.i, %._crit_edge.i92 ]
  %.1.lcssa47.i = phi i64 [ %i.lg, %._crit_edge.thread.i93 ], [ %.1.lcssa.i, %._crit_edge.i92 ]
  %i.mq = phi i64 [ 1, %._crit_edge.thread.i93 ], [ %i.lx, %._crit_edge.i92 ]
  %i.mr = trunc nuw nsw i64 %.1.lcssa47.i to i8
  %i.ms = or disjoint i8 %i.mr, 48
  %i.mt = getelementptr inbounds i8, ptr %.0.lcssa48.i, i64 -1
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.mu = phi i64 [ %i.mq, %bb.an ], [ %i.lx, %bb.am ]
  %i.mv = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  tail call void %i.my(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull %i.ll, i64 noundef %i.mu) #19, !inline_history !162
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit

bb.ap:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit
  %i.mz = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  tail call void %i.nc(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, ptr noundef nonnull @.str.116, i64 noundef 4) #19
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit: ; preds = %bb.ao, %bb.ae, %bb.ap
  %i.nd = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !8
  %i.nf = load ptr, ptr %i.ne, align 8
  tail call void %i.nf(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, i8 noundef signext 10) #19
  %i.ng = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.nh = load ptr, ptr %i.gt, align 8, !tbaa !61
  %i.ni = zext i32 %5 to i64
  %i.nj = load ptr, ptr %i.ng, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  tail call void %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %i.ng, ptr noundef %i.nh, i64 noundef %i.ni) #19
  %i.nm = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !8
  %i.no = load ptr, ptr %i.nn, align 8
  tail call void %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, i8 noundef signext 125) #19
  br label %common.ret361

bb.aq:                                            ; preds = %bb.q
  tail call void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.117, i64 noundef 10) #19
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !23 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !153 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !153 ; 2 uses
  %i.nu = icmp eq ptr %i.nr, %i.nt
  br i1 %i.nu, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit100, label %.preheader170

.preheader170:                                    ; preds = %bb.aq
  %i.nv = getelementptr inbounds i8, ptr %i.nt, i64 -1 ; 2 uses
  %.not191 = icmp eq ptr %i.nr, %i.nv
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader170
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.av

._crit_edge:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit107, %.preheader170
  %.lcssa184 = phi ptr [ %i.nv, %.preheader170 ], [ %i.qt, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit107 ]
  %i.nx = load i8, ptr %.lcssa184, align 1, !tbaa !23 ; 9 uses
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %bb.ar, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i94

bb.ar:                                            ; preds = %._crit_edge
  %i.nz = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !8
  %i.ob = load ptr, ptr %i.oa, align 8
  tail call void %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, i8 noundef signext 48) #19, !inline_history !154
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit100

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i94: ; preds = %._crit_edge
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.od = zext i8 %i.nx to i64
  %i.oe = icmp ult i8 %i.nx, 10
  %i.of = icmp ult i8 %i.nx, 100
  %i.og = select i1 %i.of, i64 2, i64 3
  %i.oh = select i1 %i.oe, i64 1, i64 %i.og       ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oh ; 5 uses
  %i.oj = icmp ugt i8 %i.nx, 99
  br i1 %i.oj, label %._crit_edge.thread.i98, label %._crit_edge.i95

._crit_edge.thread.i98:                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i94
  %i.ok = getelementptr inbounds i8, ptr %i.oi, i64 -2 ; 2 uses
  %i.ol = urem i8 %i.nx, 100
  %.zext.i99 = zext nneg i8 %i.ol to i64
  %i.om = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %.zext.i99 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 1
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !23
  %i.op = getelementptr inbounds i8, ptr %i.oi, i64 -1
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !23
  %i.oq = load i8, ptr %i.om, align 1, !tbaa !23
  store i8 %i.oq, ptr %i.ok, align 1, !tbaa !23
  %i.or = udiv i8 %i.nx, 100
  br label %bb.at

._crit_edge.i95:                                  ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i94
  %i.os = icmp samesign ugt i8 %i.nx, 9
  br i1 %i.os, label %bb.as, label %bb.at

bb.as:                                            ; preds = %._crit_edge.i95
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %i.od ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !23
  %i.ow = getelementptr inbounds i8, ptr %i.oi, i64 -1
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !23
  %i.ox = load i8, ptr %i.ot, align 1, !tbaa !23
  %i.oy = getelementptr inbounds i8, ptr %i.oi, i64 -2
  store i8 %i.ox, ptr %i.oy, align 1, !tbaa !23
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i95, %._crit_edge.thread.i98
  %.0.lcssa39.i96 = phi ptr [ %i.ok, %._crit_edge.thread.i98 ], [ %i.oi, %._crit_edge.i95 ]
  %.1.lcssa38.i97 = phi i8 [ %i.or, %._crit_edge.thread.i98 ], [ %i.nx, %._crit_edge.i95 ]
  %i.oz = or disjoint i8 %.1.lcssa38.i97, 48
  %i.pa = getelementptr inbounds i8, ptr %.0.lcssa39.i96, i64 -1
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !23
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.pb = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  tail call void %i.pe(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef nonnull %i.oc, i64 noundef %i.oh) #19, !inline_history !154
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit100

bb.av:                                            ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit107
  %.sroa.0139.0192 = phi ptr [ %i.nr, %.lr.ph ], [ %i.qp, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit107 ] ; 2 uses
  %i.pf = load i8, ptr %.sroa.0139.0192, align 1, !tbaa !23 ; 9 uses
  %i.pg = icmp eq i8 %i.pf, 0
  br i1 %i.pg, label %bb.aw, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i101

bb.aw:                                            ; preds = %bb.av
  %i.ph = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !8
  %i.pj = load ptr, ptr %i.pi, align 8
  tail call void %i.pj(ptr noundef nonnull align 8 dereferenceable(8) %i.ph, i8 noundef signext 48) #19, !inline_history !154
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit107

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i101: ; preds = %bb.av
  %i.pk = zext i8 %i.pf to i64
  %i.pl = icmp ult i8 %i.pf, 10
  %i.pm = icmp ult i8 %i.pf, 100
  %i.pn = select i1 %i.pm, i64 2, i64 3
  %i.po = select i1 %i.pl, i64 1, i64 %i.pn       ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.po ; 5 uses
  %i.pq = icmp ugt i8 %i.pf, 99
  br i1 %i.pq, label %._crit_edge.thread.i105, label %._crit_edge.i102

._crit_edge.thread.i105:                          ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i101
  %i.pr = getelementptr inbounds i8, ptr %i.pp, i64 -2 ; 2 uses
  %i.ps = urem i8 %i.pf, 100
  %.zext.i106 = zext nneg i8 %i.ps to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %.zext.i106 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !23
  %i.pw = getelementptr inbounds i8, ptr %i.pp, i64 -1
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !23
  %i.px = load i8, ptr %i.pt, align 1, !tbaa !23
  store i8 %i.px, ptr %i.pr, align 1, !tbaa !23
  %i.py = udiv i8 %i.pf, 100
  br label %bb.ay

._crit_edge.i102:                                 ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit31.i101
  %i.pz = icmp samesign ugt i8 %i.pf, 9
  br i1 %i.pz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i102
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %i.pk ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 1
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !23
  %i.qd = getelementptr inbounds i8, ptr %i.pp, i64 -1
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !23
  %i.qe = load i8, ptr %i.qa, align 1, !tbaa !23
  %i.qf = getelementptr inbounds i8, ptr %i.pp, i64 -2
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !23
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i102, %._crit_edge.thread.i105
  %.0.lcssa39.i103 = phi ptr [ %i.pr, %._crit_edge.thread.i105 ], [ %i.pp, %._crit_edge.i102 ]
  %.1.lcssa38.i104 = phi i8 [ %i.py, %._crit_edge.thread.i105 ], [ %i.pf, %._crit_edge.i102 ]
  %i.qg = or disjoint i8 %.1.lcssa38.i104, 48
  %i.qh = getelementptr inbounds i8, ptr %.0.lcssa39.i103, i64 -1
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !23
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.qi = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8
  tail call void %i.ql(ptr noundef nonnull align 8 dereferenceable(8) %i.qi, ptr noundef nonnull %i.nw, i64 noundef %i.po) #19, !inline_history !154
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit107

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit107: ; preds = %bb.aw, %bb.az
  %i.qm = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !8
  %i.qo = load ptr, ptr %i.qn, align 8
  tail call void %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %i.qm, i8 noundef signext 44) #19
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0139.0192, i64 1 ; 2 uses
  %i.qq = load ptr, ptr %i.np, align 8, !tbaa !23
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !153
  %i.qt = getelementptr inbounds i8, ptr %i.qs, i64 -1 ; 2 uses
  %.not = icmp eq ptr %i.qp, %i.qt
  br i1 %.not, label %._crit_edge, label %bb.av, !llvm.loop !165

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit100: ; preds = %bb.au, %bb.ar, %bb.aq
  %i.qu = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  tail call void %i.qx(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, ptr noundef nonnull @.str.118, i64 noundef 12) #19
  %i.qy = load ptr, ptr %i.np, align 8, !tbaa !23 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.ra = load i8, ptr %i.qz, align 8, !tbaa !156, !range !94, !noundef !95
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.ba, label %bb.bm

bb.ba:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit100
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.rd = load i64, ptr %i.rc, align 8            ; 7 uses
  %i.re = icmp eq i64 %i.rd, 0
  br i1 %i.re, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.rf = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !8
  %i.rh = load ptr, ptr %i.rg, align 8
  tail call void %i.rh(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, i8 noundef signext 48) #19, !inline_history !162
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit122

bb.bc:                                            ; preds = %bb.ba
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.rj = icmp ult i64 %i.rd, 10
  br i1 %i.rj, label %._crit_edge.thread.i121, label %.lr.ph.i28.i108

._crit_edge.thread.i121:                          ; preds = %bb.bc
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %bb.bk

.lr.ph.i28.i108:                                  ; preds = %bb.bc, %bb.bi
  %.017.i29.i109 = phi i32 [ %i.rs, %bb.bi ], [ 1, %bb.bc ] ; 4 uses
  %.01116.i30.i110 = phi i64 [ %i.rr, %bb.bi ], [ %i.rd, %bb.bc ] ; 5 uses
  %i.rl = icmp ult i64 %.01116.i30.i110, 100
  br i1 %i.rl, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i28.i108
  %i.rm = add i32 %.017.i29.i109, 1
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111

bb.be:                                            ; preds = %.lr.ph.i28.i108
  %i.rn = icmp ult i64 %.01116.i30.i110, 1000
  br i1 %i.rn, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ro = add i32 %.017.i29.i109, 2
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111

bb.bg:                                            ; preds = %bb.be
  %i.rp = icmp ult i64 %.01116.i30.i110, 10000
  br i1 %i.rp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.rq = add i32 %.017.i29.i109, 3
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111

bb.bi:                                            ; preds = %bb.bg
  %i.rr = udiv i64 %.01116.i30.i110, 10000
  %i.rs = add i32 %.017.i29.i109, 4               ; 2 uses
  %i.rt = icmp ult i64 %.01116.i30.i110, 100000
  br i1 %i.rt, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111, label %.lr.ph.i28.i108, !llvm.loop !163

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111: ; preds = %bb.bi, %bb.bh, %bb.bf, %bb.bd
  %.012.i31.i112 = phi i32 [ %i.rq, %bb.bh ], [ %i.rm, %bb.bd ], [ %i.ro, %bb.bf ], [ %i.rs, %bb.bi ]
  %i.ru = zext i32 %.012.i31.i112 to i64          ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.ru ; 2 uses
  %i.rw = icmp ugt i64 %i.rd, 99
  br i1 %i.rw, label %.lr.ph.i118, label %._crit_edge.i113

.lr.ph.i118:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111, %.lr.ph.i118
  %.037.i119 = phi ptr [ %i.se, %.lr.ph.i118 ], [ %i.rv, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111 ] ; 2 uses
  %.136.i120 = phi i64 [ %i.ry, %.lr.ph.i118 ], [ %i.rd, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111 ] ; 3 uses
  %i.rx = urem i64 %.136.i120, 100
  %i.ry = udiv i64 %.136.i120, 100                ; 2 uses
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %i.rx ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 1
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !23
  %i.sc = getelementptr inbounds i8, ptr %.037.i119, i64 -1
  store i8 %i.sb, ptr %i.sc, align 1, !tbaa !23
  %i.sd = load i8, ptr %i.rz, align 1, !tbaa !23
  %i.se = getelementptr inbounds i8, ptr %.037.i119, i64 -2 ; 3 uses
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !23
  %i.sf = icmp ugt i64 %.136.i120, 9999
  br i1 %i.sf, label %.lr.ph.i118, label %._crit_edge.i113, !llvm.loop !164

._crit_edge.i113:                                 ; preds = %.lr.ph.i118, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111
  %.1.lcssa.i114 = phi i64 [ %i.rd, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111 ], [ %i.ry, %.lr.ph.i118 ] ; 3 uses
  %.0.lcssa.i115 = phi ptr [ %i.rv, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit32.i111 ], [ %i.se, %.lr.ph.i118 ] ; 3 uses
  %i.sg = icmp samesign ugt i64 %.1.lcssa.i114, 9
  br i1 %i.sg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %._crit_edge.i113
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_E12digits_to_99, i64 %.1.lcssa.i114 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !23
  %i.sk = getelementptr inbounds i8, ptr %.0.lcssa.i115, i64 -1
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !23
  %i.sl = load i8, ptr %i.sh, align 1, !tbaa !23
  %i.sm = getelementptr inbounds i8, ptr %.0.lcssa.i115, i64 -2
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !23
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i113, %._crit_edge.thread.i121
  %.0.lcssa48.i116 = phi ptr [ %i.rk, %._crit_edge.thread.i121 ], [ %.0.lcssa.i115, %._crit_edge.i113 ]
  %.1.lcssa47.i117 = phi i64 [ %i.rd, %._crit_edge.thread.i121 ], [ %.1.lcssa.i114, %._crit_edge.i113 ]
  %i.sn = phi i64 [ 1, %._crit_edge.thread.i121 ], [ %i.ru, %._crit_edge.i113 ]
  %i.so = trunc nuw nsw i64 %.1.lcssa47.i117 to i8
  %i.sp = or disjoint i8 %i.so, 48
  %i.sq = getelementptr inbounds i8, ptr %.0.lcssa48.i116, i64 -1
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.sr = phi i64 [ %i.sn, %bb.bk ], [ %i.ru, %bb.bj ]
  %i.ss = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  tail call void %i.sv(ptr noundef nonnull align 8 dereferenceable(8) %i.ss, ptr noundef nonnull %i.ri, i64 noundef %i.sr) #19, !inline_history !162
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit122

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit122: ; preds = %bb.bb, %bb.bl
  %i.sw = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !8
  %i.sy = load ptr, ptr %i.sx, align 8
  tail call void %i.sy(ptr noundef nonnull align 8 dereferenceable(8) %i.sw, i8 noundef signext 125) #19
  br label %common.ret361

bb.bm:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISJ_mEE5valuesr3std7is_sameISJ_lEE5valuesr3std7is_sameISJ_hEE5valueEiE4typeELi0EEEvSJ_.exit100
  %i.sz = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
end_hunk_0
