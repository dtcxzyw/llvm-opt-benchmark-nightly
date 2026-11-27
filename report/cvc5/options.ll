Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/options?download=true
inline.NumInlined: 6913
inline.NumDeleted: 247
begin_hunk_0_@_ZN4cvc54main10printUsageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSob:bb.a
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !44
  %.not.i1.i.i32 = icmp eq i8 %i.dk, 0
  br i1 %.not.i1.i.i32, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 67
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.di)
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call noundef signext i8 %i.dp(ptr noundef nonnull align 8 dereferenceable(570) %i.di, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34: ; preds = %bb.u, %bb.v
  %.0.i.i.i33 = phi i8 [ %i.dm, %bb.u ], [ %i.dq, %bb.v ]
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i8 noundef signext %.0.i.i.i33)
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr) ; 0 uses
  br i1 %2, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34
  %i.dt = load ptr, ptr @_ZN4cvc54mainL25regularOptionsDescriptionB5cxx11E, align 8, !tbaa !18
  %i.du = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4cvc54mainL25regularOptionsDescriptionB5cxx11E, i64 8), align 8, !tbaa !20
  %i.dv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dt, i64 noundef %i.du) ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !22
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 240
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i35 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i35, label %bb.x, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36: ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !44
  %.not.i1.i.i37 = icmp eq i8 %i.ed, 0
  br i1 %.not.i1.i.i37, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 67
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eb)
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef signext i8 %i.ei(ptr noundef nonnull align 8 dereferenceable(570) %i.eb, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39: ; preds = %bb.y, %bb.z
  %.0.i.i.i38 = phi i8 [ %i.ef, %bb.y ], [ %i.ej, %bb.z ]
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i8 noundef signext %.0.i.i.i38)
  br label %bb.ae

bb.aa:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34
  %i.el = load ptr, ptr @_ZN4cvc54mainL28additionalOptionsDescriptionB5cxx11E, align 8, !tbaa !18
  %i.em = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4cvc54mainL28additionalOptionsDescriptionB5cxx11E, i64 8), align 8, !tbaa !20
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.el, i64 noundef %i.em) ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !22
  %i.ep = getelementptr i8, ptr %i.eo, i64 -24
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 240
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i40 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i40, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i41

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i41: ; preds = %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !44
  %.not.i1.i.i42 = icmp eq i8 %i.ev, 0
  br i1 %.not.i1.i.i42, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i41
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 67
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i41
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.et)
  %i.ey = load ptr, ptr %i.et, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef signext i8 %i.fa(ptr noundef nonnull align 8 dereferenceable(570) %i.et, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i43 = phi i8 [ %i.ex, %bb.ac ], [ %i.fb, %bb.ad ]
  %i.fc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.en, i8 noundef signext %.0.i.i.i43)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39
  %.sink = phi ptr [ %i.fc, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44 ], [ %i.ek, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39 ]
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  %i.fe = load ptr, ptr @_ZN4cvc54mainL15optionsFootnoteB5cxx11E, align 8, !tbaa !18
  %i.ff = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4cvc54mainL15optionsFootnoteB5cxx11E, i64 8), align 8, !tbaa !20
  %i.fg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fe, i64 noundef %i.ff) ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !22
  %i.fi = getelementptr i8, ptr %i.fh, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 240
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i45 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i45, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46: ; preds = %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !44
  %.not.i1.i.i47 = icmp eq i8 %i.fo, 0
  br i1 %.not.i1.i.i47, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 67
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fm)
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !22
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = tail call noundef signext i8 %i.ft(ptr noundef nonnull align 8 dereferenceable(570) %i.fm, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49: ; preds = %bb.ag, %bb.ah
  %.0.i.i.i48 = phi i8 [ %i.fq, %bb.ag ], [ %i.fu, %bb.ah ]
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, i8 noundef signext %.0.i.i.i48)
  %i.fw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc54main20printUsageCategoriesERNS_6SolverERSo(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::vector", align 8       ; 10 uses
  %7 = alloca %"struct.cvc5::OptionInfo", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN4cvc58internal7options8getNamesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.b = load ptr, ptr %6, align 8, !tbaa !70     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %.not257 = icmp eq ptr %i.b, %i.d
  br i1 %.not257, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.k

._crit_edge261:                                   ; preds = %_ZNSolsEPFRSoS_E.exit
  %.pre274 = load ptr, ptr %6, align 8, !tbaa !47 ; 3 uses
  %.pre275 = load ptr, ptr %i.c, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre274, %.pre275
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge261, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre274, %._crit_edge261 ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !19
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %.pre275
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge261
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre274, %._crit_edge261 ], [ %i.b, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

bb.g:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.h:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.i:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.j:                                             ; preds = %.invoke, %.noexc241, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i236, %.noexc239, %bb.as, %.noexc230, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225, %.noexc228, %bb.an, %.noexc219, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i214, %.noexc217, %bb.ai, %.noexc208, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i203, %.noexc206, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.k:                                             ; preds = %.lr.ph260, %_ZNSolsEPFRSoS_E.exit
  %.sroa.0248.0258 = phi ptr [ %i.b, %.lr.ph260 ], [ %i.ey, %_ZNSolsEPFRSoS_E.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNK4cvc56Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.cvc5::OptionInfo") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0248.0258)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !82
  switch i32 %i.ae, label %_ZNSolsEPFRSoS_E.exit [
    i32 1, label %bb.m
    i32 0, label %bb.p
    i32 2, label %bb.z
  ]

bb.m:                                             ; preds = %bb.l
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %bb.m
  %i.ag = load ptr, ptr %.sroa.0248.0258, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0248.0258, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i161 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i161, label %.invoke335, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !44
  %.not.i1.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i1.i.i, label %bb.n, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ap)
          to label %.noexc163 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc163:                                        ; preds = %bb.n
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(570) %i.ap, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168
  %.sink338 = phi ptr [ %i.bq, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168 ], [ %i.ea, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179 ], [ %i.er, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190 ], [ %i.ap, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %.ph = phi ptr [ %i.bk, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168 ], [ %i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179 ], [ %i.el, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190 ], [ %i.aj, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink338, i64 67
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split, %.noexc184, %.noexc173, %.noexc163, %.noexc195
  %i.ay = phi ptr [ %i.aj, %.noexc163 ], [ %i.bk, %.noexc173 ], [ %i.i, %.noexc184 ], [ %i.el, %.noexc195 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.az = phi i8 [ %i.av, %.noexc163 ], [ %i.bw, %.noexc173 ], [ %i.eg, %.noexc184 ], [ %i.ex, %.noexc195 ], [ %i.ax, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef signext %i.az)
          to label %.noexc165.invoke unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc165.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.p:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %bb.q
  %i.bh = load ptr, ptr %.sroa.0248.0258, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0248.0258, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !20
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.bh, i64 noundef %i.bj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i167 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i167, label %.invoke335, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !44
  %.not.i1.i.i169 = icmp eq i8 %i.bs, 0
  br i1 %.not.i1.i.i169, label %bb.r, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bq)
          to label %.noexc173 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc173:                                        ; preds = %bb.r
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef signext i8 %i.bv(ptr noundef nonnull align 8 dereferenceable(570) %i.bq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !0

bb.s:                                             ; preds = %bb.p
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %bb.s
  %i.by = load ptr, ptr %.sroa.0248.0258, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0248.0258, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.by, i64 noundef %i.ca)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !70  ; 4 uses
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !70  ; 3 uses
  %.not251254 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not251254, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.j, ptr %8, align 8, !tbaa !14
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !18 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !16
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc.i.peel, label %._crit_edge.i.i.peel

.noexc.i.peel:                                    ; preds = %.lr.ph.preheader
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.peel unwind label %.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.peel:                                      ; preds = %.noexc.i.peel
  store ptr %i.cj, ptr %8, align 8, !tbaa !18
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !19
  br label %._crit_edge.i.i.peel

._crit_edge.i.i.peel:                             ; preds = %.noexc.peel, %.lr.ph.preheader
  %i.cl = phi ptr [ %i.cj, %.noexc.peel ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  switch i64 %i.ch, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.peel
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.peel
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !19
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !19
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.peel

bb.u:                                             ; preds = %._crit_edge.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cf, i64 %i.ch, i1 false)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.peel: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.peel
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  store i64 %i.cn, ptr %i.k, align 8, !tbaa !20
  %i.co = load ptr, ptr %8, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre273 = load i64, ptr %i.k, align 8, !tbaa !20
  %.pre = load ptr, ptr %8, align 8, !tbaa !18
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %.pre, i64 noundef %.pre273)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64.peel unwind label %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.peel
  %i.cr = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.j
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64.peel
  %i.ct = load i64, ptr %i.j, align 8, !tbaa !19
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  %.not251.peel = icmp eq ptr %i.cv, %i.ce
  br i1 %.not251.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.sroa.0244.0255 = phi ptr [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.peel ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.j, ptr %8, align 8, !tbaa !14
  %i.cx = load ptr, ptr %.sroa.0244.0255, align 8, !tbaa !18 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0244.0255, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !16
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.lr.ph
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.db, ptr %8, align 8, !tbaa !18
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.dc, ptr %i.j, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.lr.ph
  %i.dd = phi ptr [ %i.db, %.noexc ], [ %i.j, %.lr.ph ] ; 2 uses
  switch i64 %i.cz, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.de = load i8, ptr %i.cx, align 1, !tbaa !19
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !19
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.cx, i64 %i.cz, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i, %bb.v, %bb.w
  %i.df = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  store i64 %i.df, ptr %i.k, align 8, !tbaa !20
  %i.dg = load ptr, ptr %8, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  store i8 0, ptr %i.dh, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %.noexc.i.peel
  %lpad.loopexit.split-lp359 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %bb.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.peel
  %lpad.loopexit.split-lp361 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.j
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !19
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.x
  %i.dn = load ptr, ptr %8, align 8, !tbaa !18
  %i.do = load i64, ptr %i.k, align 8, !tbaa !20
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.dn, i64 noundef %i.do)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64 unwind label %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.dq = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.j
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64
  %i.ds = load i64, ptr %i.j, align 8, !tbaa !19
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0244.0255, i64 32 ; 2 uses
  %.not251 = icmp eq ptr %i.du, %i.ce
  br i1 %.not251, label %._crit_edge, label %.lr.ph, !llvm.loop !53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn42 = phi { ptr, i32 } [ %lpad.loopexit.split-lp361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp359, %.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp361, %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %._crit_edge
  %i.dv = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds i8, ptr %i.i, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 240
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i178 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i178, label %.invoke335, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !44
  %.not.i1.i.i180 = icmp eq i8 %i.ec, 0
  br i1 %.not.i1.i.i180, label %bb.y, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i179
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ea)
          to label %.noexc184 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc184:                                        ; preds = %bb.y
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef signext i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(570) %i.ea, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke, %.noexc165.invoke, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58, %._crit_edge, %bb.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %bb.n, %.noexc163, %bb.r, %.noexc173, %bb.y, %.noexc184, %bb.aa, %.noexc195, %.invoke335
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.l
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %bb.z
  %i.ei = load ptr, ptr %.sroa.0248.0258, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0248.0258, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !20
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.ei, i64 noundef %i.ek)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !22
  %i.en = getelementptr i8, ptr %i.em, i64 -24
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds i8, ptr %i.el, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 240
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i189 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i189, label %.invoke335, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190

.invoke335:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.cont336 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.cont336:                                         ; preds = %.invoke335
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.et = load i8, ptr %i.es, align 8, !tbaa !44
  %.not.i1.i.i191 = icmp eq i8 %i.et, 0
  br i1 %.not.i1.i.i191, label %bb.aa, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.er)
          to label %.noexc195 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc195:                                        ; preds = %bb.aa
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !22
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef signext i8 %i.ew(ptr noundef nonnull align 8 dereferenceable(570) %i.er, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc165.invoke, %bb.l
  call void @_ZN4cvc510OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0248.0258, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ey, %i.d
  br i1 %.not, label %._crit_edge261, label %bb.k

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn45 = phi { ptr, i32 } [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc510OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %7) #21
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %bb.o
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %.loopexit.split-lp ], [ %i.bc, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ba

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
end_hunk_0
