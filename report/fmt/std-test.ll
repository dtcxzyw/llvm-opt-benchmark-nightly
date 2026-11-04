Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/std-test?download=true
inline.NumInlined: 6377
inline.NumDeleted: 2198
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN38ranges_std_test_format_quote_path_Test8TestBodyEv:bb.a
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !56
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 32) #34
  br label %.noexc48

.noexc48:                                         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !425
  store ptr %10, ptr %2, align 16, !tbaa !56
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customISt8optionalINSt10filesystem7__cxx114pathEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.dw, align 8, !tbaa !56
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.10, i64 4, i64 15, ptr nonnull %2)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !425
  %i.dx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !57, !noalias !426
  %i.dz = icmp eq i64 %i.dy, 25
  br i1 %i.dz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i90, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i89

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i90: ; preds = %bb.am
  %i.ea = load ptr, ptr %16, align 8, !tbaa !55, !noalias !426 ; 2 uses
  %i.eb = load i128, ptr %i.ea, align 1
  %i.ec = xor i128 %i.eb, 135827412113633794313723640145117474927
  %i.ed = getelementptr i8, ptr %i.ea, i64 9
  %i.ee = load i128, ptr %i.ed, align 1
  %i.ef = xor i128 %i.ee, 54677248223221610919752056109302640674
  %i.eg = or i128 %i.ec, %i.ef
  %i.eh = icmp ne i128 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i92, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i89

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i92: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i90
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit95 unwind label %bb.ap

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i89: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i90, %bb.am
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 1 dereferenceable(26) @.str.43)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit95 unwind label %bb.ap

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit95: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i92, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i89
  %i.ek = load ptr, ptr %16, align 8, !tbaa !55   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit95
  %i.en = load i64, ptr %i.el, align 8, !tbaa !56
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  %i.ep = load i8, ptr %15, align 8, !tbaa !80, !range !81, !noundef !82
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.az, label %bb.aq

bb.an:                                            ; preds = %_ZN7testing7MessageD2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %_ZN7testing7MessageD2Ev.exit83 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.bg

bb.ao:                                            ; preds = %.noexc48
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.ap:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i89, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i92
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %16, align 8, !tbaa !55   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.ap
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !56
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.ao
  %.pn37 = phi { ptr, i32 } [ %i.er, %bb.ao ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.es, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.bf

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !83 ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i102, label %_ZNK7testing15AssertionResult15failure_messageEv.exit103, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !55
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit103

_ZNK7testing15AssertionResult15failure_messageEv.exit103: ; preds = %bb.as, %bb.ar
  %i.fb = phi ptr [ %i.fa, %bb.as ], [ @.str.352, %bb.ar ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 71, ptr noundef %i.fb)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit103
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  %i.fc = load ptr, ptr %17, align 8, !tbaa !85   ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.au
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !59
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %bb.az

bb.av:                                            ; preds = %bb.aq
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit109

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit103
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn39 = phi { ptr, i32 } [ %i.fi, %bb.ax ], [ %i.fh, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  %i.fj = load ptr, ptr %17, align 8, !tbaa !85   ; 3 uses
  %.not.i.i107 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i107, label %_ZN7testing7MessageD2Ev.exit109, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108: ; preds = %bb.ay
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !59
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(128) %i.fj) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit109

_ZN7testing7MessageD2Ev.exit109:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, %bb.ay, %bb.av
  %.pn39.pn = phi { ptr, i32 } [ %i.fg, %bb.av ], [ %.pn39, %bb.ay ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #33
  br label %bb.bf

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZN7testing7MessageD2Ev.exit106
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !83 ; 4 uses
  %.not.i.i110 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i110, label %_ZN7testing15AssertionResultD2Ev.exit114, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !55 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111: ; preds = %bb.ba
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !56
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit114

_ZN7testing15AssertionResultD2Ev.exit114:         ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.fu = load i8, ptr %i.bw, align 8, !tbaa !97, !range !81, !noundef !82
  %i.fv = trunc nuw i8 %i.fu to i1
  store i8 0, ptr %i.bw, align 8, !tbaa !97
  br i1 %i.fv, label %bb.bb, label %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit

bb.bb:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit114
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull %i.fx) #33
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %i.fy = load ptr, ptr %10, align 8, !tbaa !55   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !56
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #34
  br label %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.gd = load ptr, ptr %4, align 8, !tbaa !93    ; 3 uses
  %i.ge = load ptr, ptr %i.o, align 8, !tbaa !95  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.ge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit, %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gm, %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i.i ], [ %i.gd, %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i.i.i115 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i.i.i115, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i116, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull %i.gg) #33
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i116

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i116: ; preds = %bb.bd, %.lr.ph.i.i.i
  %i.gh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !55 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i117: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i116
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !56
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #34
  br label %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i117
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.gm, %i.ge
  br i1 %.not.i.i.i118, label %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit
  %i.gn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.gd, %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt10filesystem7__cxx114pathESaIS2_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit.i
  %i.go = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #34
  br label %_ZNSt6vectorINSt10filesystem7__cxx114pathESaIS2_EED2Ev.exit

_ZNSt6vectorINSt10filesystem7__cxx114pathESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit109 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.an
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.bf ], [ %.pn33.pn.pn, %bb.an ]
  call void @_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #33
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.y
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn, %bb.bg ], [ %i.cs, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.x
  %.pn39.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn, %bb.bh ], [ %.pn27.pn.pn, %bb.x ]
  call void @_ZNSt6vectorINSt10filesystem7__cxx114pathESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #33
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit
  %.pn39.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn.pn, %bb.bi ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10filesystem7__cxx114pathC2IA16_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #33 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.b, ptr %i.a, align 8, !tbaa !53
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !55
  %i.f = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.f, ptr %i.c, align 8, !tbaa !56
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !56
  store i8 %i.h, ptr %i.g, align 1, !tbaa !56
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !57
  %i.k = load ptr, ptr %0, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !70   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #33
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !56
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !97, !range !81, !noundef !82
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !97
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt10filesystem7__cxx114pathELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.e) #33
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt17_Optional_payloadINSt10filesystem7__cxx114pathELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !56
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #34
  br label %_ZNSt17_Optional_payloadINSt10filesystem7__cxx114pathELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt10filesystem7__cxx114pathELb0ELb0ELb0EED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt10filesystem7__cxx114pathESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.e) #33
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.f = load ptr, ptr %.05.i.i, align 8, !tbaa !55 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !56
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #34
  br label %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i

_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt10filesystem7__cxx114pathEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt10filesystem7__cxx114pathESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #34
  br label %_ZNSt12_Vector_baseINSt10filesystem7__cxx114pathESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseINSt10filesystem7__cxx114pathESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt10filesystem7__cxx114pathES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN23std_test_thread_id_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::thread::id", align 8   ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = tail call i64 @pthread_self() #36
  store i64 %i.a, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !429
  store ptr %4, ptr %1, align 16, !tbaa !56, !noalias !429
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt6thread2idEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.b, align 8, !tbaa !56, !noalias !429
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.5, i64 2, i64 15, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !429
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp ne i64 %i.d, 0                      ; 2 uses
  %i.f = zext i1 %i.e to i8
  store i8 %i.f, ptr %2, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !430
  %i.h = load ptr, ptr %3, align 8, !tbaa !55     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  %i.k = icmp ult i64 %i.d, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.i, align 8, !tbaa !56
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %i.e, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 77, ptr noundef %i.n)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  %i.o = load ptr, ptr %7, align 8, !tbaa !55     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !56
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.t = load ptr, ptr %5, align 8, !tbaa !85     ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #33, !inline_history !0
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit15

bb.h:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.i:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  br label %bb.k
end_hunk_0
begin_hunk_1_@_ZN22std_test_optional_Test8TestBodyEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA29_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.ft = load i8, ptr %25, align 8, !tbaa !80, !range !81, !noundef !82
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.be, label %bb.av

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit186, %.body
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %_ZN7testing7MessageD2Ev.exit186 ], [ %.pn64.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.ei

bb.au:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i192, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i195
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %26, align 8, !tbaa !55   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %bb.au
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !56
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  br label %bb.bi

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  %i.gb = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !83 ; 2 uses
  %.not.i.i204 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i204, label %_ZNK7testing15AssertionResult15failure_messageEv.exit205, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !55
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit205

_ZNK7testing15AssertionResult15failure_messageEv.exit205: ; preds = %bb.ax, %bb.aw
  %i.ge = phi ptr [ %i.gd, %bb.ax ], [ @.str.352, %bb.aw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 132, ptr noundef %i.ge)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit205
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  %i.gf = load ptr, ptr %28, align 8, !tbaa !85   ; 3 uses
  %.not.i.i206 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i206, label %_ZN7testing7MessageD2Ev.exit208, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.az
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !59
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(128) %i.gf) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit208

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  br label %bb.be

bb.ba:                                            ; preds = %bb.av
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit211

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit205
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #33
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn71 = phi { ptr, i32 } [ %i.gl, %bb.bc ], [ %i.gk, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  %i.gm = load ptr, ptr %28, align 8, !tbaa !85   ; 3 uses
  %.not.i.i209 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i209, label %_ZN7testing7MessageD2Ev.exit211, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %bb.bd
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !59
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(128) %i.gm) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit211

_ZN7testing7MessageD2Ev.exit211:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, %bb.bd, %bb.ba
  %.pn71.pn = phi { ptr, i32 } [ %i.gj, %bb.ba ], [ %.pn71, %bb.bd ], [ %.pn71, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #33
  br label %bb.bi

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZN7testing7MessageD2Ev.exit208
  %i.gq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !83 ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i212, label %.noexc122, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !55 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213: ; preds = %bb.bf
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !56
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 32) #34
  br label %.noexc122

.noexc122:                                        ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #33
  %i.gx = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gx, ptr noundef nonnull align 1 dereferenceable(12) @.str.130, i64 12, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %33, i64 28
  store i8 0, ptr %i.gz, align 4, !tbaa !56
  %i.ha = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.ha, ptr %32, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ha, ptr noundef nonnull align 8 dereferenceable(13) %i.gx, i64 13, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 12, ptr %i.hb, align 8, !tbaa !57
  store ptr %i.gx, ptr %33, align 8, !tbaa !55
  store i64 0, ptr %i.gy, align 8, !tbaa !57
  store i8 0, ptr %i.gx, align 8, !tbaa !56
  %i.hc = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 5 uses
  store i8 1, ptr %i.hc, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !652
  store ptr %32, ptr %5, align 16, !tbaa !56
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.hd, align 8, !tbaa !56
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 30, ptr %i.he, align 16, !tbaa !56, !noalias !652
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr nonnull @.str.129, i64 6, i64 31, ptr nonnull %5)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %.noexc122
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !652
  %i.hf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !57, !noalias !653
  %i.hh = icmp eq i64 %i.hg, 40
  br i1 %i.hh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i219, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i218

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i219: ; preds = %bb.bg
  %i.hi = load ptr, ptr %31, align 8, !tbaa !55, !noalias !653
  %bcmp.i.i.i220 = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.hi, ptr noundef nonnull align 1 dereferenceable(41) @.str.131, i64 40), !noalias !653
  %i.hj = icmp eq i32 %bcmp.i.i.i220, 0
  br i1 %i.hj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i221, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i218

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i221: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i219
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.bk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i218: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i219, %bb.bg
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 1 dereferenceable(41) @.str.131)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.bk

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i221, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i218
  %i.hk = load ptr, ptr %31, align 8, !tbaa !55   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !56
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  %i.hp = load i8, ptr %i.hc, align 8, !tbaa !107, !range !81, !noundef !82
  %i.hq = trunc nuw i8 %i.hp to i1
  store i8 0, ptr %i.hc, align 8, !tbaa !107
  br i1 %i.hq, label %bb.bh, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.hr = load ptr, ptr %32, align 8, !tbaa !55   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.ha
  br i1 %i.hs, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bh
  %i.ht = load i64, ptr %i.ha, align 8, !tbaa !56
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.hv = load ptr, ptr %33, align 8, !tbaa !55   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.gx
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.hx = load i64, ptr %i.gx, align 8, !tbaa !56
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  %i.hz = load i8, ptr %30, align 8, !tbaa !80, !range !81, !noundef !82
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.bv, label %bb.bm

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %_ZN7testing7MessageD2Ev.exit211 ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  br label %bb.ei

bb.bj:                                            ; preds = %.noexc122
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.bk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i218, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i221
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %31, align 8, !tbaa !55   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.bk
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !56
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %bb.bj
  %.pn75 = phi { ptr, i32 } [ %i.ib, %bb.bj ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %i.ic, %bb.bk ]
  %i.ii = load i8, ptr %i.hc, align 8, !tbaa !107, !range !81, !noundef !82
  %i.ij = trunc nuw i8 %i.ii to i1
  store i8 0, ptr %i.hc, align 8, !tbaa !107
  br i1 %i.ij, label %bb.bl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit235

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.ik = load ptr, ptr %32, align 8, !tbaa !55   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ha
  br i1 %i.il, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i233: ; preds = %bb.bl
  %i.im = load i64, ptr %i.ha, align 8, !tbaa !56
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit235

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit235: ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i233
  %i.io = load ptr, ptr %33, align 8, !tbaa !55   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.gx
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit235
  %i.iq = load i64, ptr %i.gx, align 8, !tbaa !56
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br label %bb.ca

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #33
  %i.is = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !83 ; 2 uses
  %.not.i.i239 = icmp eq ptr %i.it, null
  br i1 %.not.i.i239, label %_ZNK7testing15AssertionResult15failure_messageEv.exit240, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !55
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit240

_ZNK7testing15AssertionResult15failure_messageEv.exit240: ; preds = %bb.bo, %bb.bn
  %i.iv = phi ptr [ %i.iu, %bb.bo ], [ @.str.352, %bb.bn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 135, ptr noundef %i.iv)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit240
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  %i.iw = load ptr, ptr %34, align 8, !tbaa !85   ; 3 uses
  %.not.i.i241 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i241, label %_ZN7testing7MessageD2Ev.exit243, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.bq
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !59
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(128) %i.iw) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit243

_ZN7testing7MessageD2Ev.exit243:                  ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  br label %bb.bv

bb.br:                                            ; preds = %bb.bm
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit246

bb.bs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit240
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bp
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn78 = phi { ptr, i32 } [ %i.jc, %bb.bt ], [ %i.jb, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  %i.jd = load ptr, ptr %34, align 8, !tbaa !85   ; 3 uses
  %.not.i.i244 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i244, label %_ZN7testing7MessageD2Ev.exit246, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245: ; preds = %bb.bu
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !59
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(128) %i.jd) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit246

_ZN7testing7MessageD2Ev.exit246:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245, %bb.bu, %bb.br
  %.pn78.pn = phi { ptr, i32 } [ %i.ja, %bb.br ], [ %.pn78, %bb.bu ], [ %.pn78, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #33
  br label %bb.ca

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZN7testing7MessageD2Ev.exit243
  %i.jh = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !83 ; 4 uses
  %.not.i.i247 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i247, label %_ZN7testing15AssertionResultD2Ev.exit251, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !55 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i248: ; preds = %bb.bw
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !56
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i248
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit251

_ZN7testing15AssertionResultD2Ev.exit251:         ; preds = %bb.bv, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #33
  %i.jo = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #35
          to label %.noexc124 unwind label %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i ; 4 uses

_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i:           ; preds = %_ZN7testing15AssertionResultD2Ev.exit251
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body253

.noexc124:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit251
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 5 ; 2 uses
  store <4 x i8> <i8 104, i8 101, i8 108, i8 108>, ptr %i.jo, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  store i8 111, ptr %.sroa.8.0..sroa_idx, align 1
  store ptr %i.jo, ptr %38, align 8, !tbaa !655
  %i.jr = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !656
  %i.js = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  store ptr %i.jq, ptr %i.js, align 8, !tbaa !657
  %i.jt = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 5 uses
  store i8 1, ptr %i.jt, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !658
  store ptr %38, ptr %4, align 16, !tbaa !56
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customISt8optionalISt6vectorIcSaIcEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ju, align 8, !tbaa !56
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr nonnull @.str.134, i64 5, i64 15, ptr nonnull %4)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %.noexc124
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !658
  %i.jv = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !57, !noalias !659
  %i.jx = icmp eq i64 %i.jw, 35
  br i1 %i.jx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i256, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i255

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i256: ; preds = %bb.bx
  %i.jy = load ptr, ptr %37, align 8, !tbaa !55, !noalias !659
  %bcmp.i.i.i257 = call i32 @bcmp(ptr noundef nonnull dereferenceable(35) %i.jy, ptr noundef nonnull align 1 dereferenceable(36) @.str.135, i64 35), !noalias !659
  %i.jz = icmp eq i32 %bcmp.i.i.i257, 0
  br i1 %i.jz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i258, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i255

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i258: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i256
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA36_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.cc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i255: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i256, %bb.bx
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA36_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 1 dereferenceable(36) @.str.135)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA36_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.cc

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA36_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i258, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i255
  %i.ka = load ptr, ptr %37, align 8, !tbaa !55   ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA36_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !56
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA36_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  %i.kf = load i8, ptr %i.jt, align 8, !tbaa !109, !range !81, !noundef !82
  %i.kg = trunc nuw i8 %i.kf to i1
  store i8 0, ptr %i.jt, align 8, !tbaa !109
  br i1 %i.kg, label %bb.by, label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.kh = load ptr, ptr %38, align 8, !tbaa !655  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ki = load ptr, ptr %i.js, align 8, !tbaa !657
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.kl) #34
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.bz, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  %i.km = load i8, ptr %36, align 8, !tbaa !80, !range !81, !noundef !82
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.co, label %bb.cf

bb.ca:                                            ; preds = %_ZN7testing7MessageD2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %_ZN7testing7MessageD2Ev.exit246 ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %bb.ei

bb.cb:                                            ; preds = %.noexc124
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

bb.cc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i255, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i258
  %i.kp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kq = load ptr, ptr %37, align 8, !tbaa !55   ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.cc
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !56
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266, %bb.cb
  %.pn82 = phi { ptr, i32 } [ %i.ko, %bb.cb ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %i.kp, %bb.cc ] ; 3 uses
  %i.kv = load i8, ptr %i.jt, align 8, !tbaa !109, !range !81, !noundef !82
  %i.kw = trunc nuw i8 %i.kv to i1
  store i8 0, ptr %i.jt, align 8, !tbaa !109
  br i1 %i.kw, label %bb.cd, label %.body253

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.kx = load ptr, ptr %38, align 8, !tbaa !655  ; 3 uses
  %.not.i.i.i.i.i.i.i269 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i.i.i.i269, label %.body253, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ky = load ptr, ptr %i.js, align 8, !tbaa !657
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lb) #34
  br label %.body253

.body253:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %bb.cd, %bb.ce, %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i
  %.pn82.pn = phi { ptr, i32 } [ %i.jp, %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %.pn82, %bb.ce ], [ %.pn82, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %bb.cs

bb.cf:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #33
  %i.lc = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !83 ; 2 uses
  %.not.i.i274 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i274, label %_ZNK7testing15AssertionResult15failure_messageEv.exit275, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !55
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit275

_ZNK7testing15AssertionResult15failure_messageEv.exit275: ; preds = %bb.ch, %bb.cg
  %i.lf = phi ptr [ %i.le, %bb.ch ], [ @.str.352, %bb.cg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 138, ptr noundef %i.lf)
          to label %bb.ci unwind label %bb.cl

bb.ci:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit275
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.cj unwind label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  %i.lg = load ptr, ptr %39, align 8, !tbaa !85   ; 3 uses
  %.not.i.i276 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i276, label %_ZN7testing7MessageD2Ev.exit278, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277: ; preds = %bb.cj
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !59
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(128) %i.lg) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit278

_ZN7testing7MessageD2Ev.exit278:                  ; preds = %bb.cj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  br label %bb.co

bb.ck:                                            ; preds = %bb.cf
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit281

bb.cl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit275
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pn85 = phi { ptr, i32 } [ %i.lm, %bb.cm ], [ %i.ll, %bb.cl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  %i.ln = load ptr, ptr %39, align 8, !tbaa !85   ; 3 uses
  %.not.i.i279 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i279, label %_ZN7testing7MessageD2Ev.exit281, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280: ; preds = %bb.cn
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !59
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(128) %i.ln) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit281

_ZN7testing7MessageD2Ev.exit281:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280, %bb.cn, %bb.ck
  %.pn85.pn = phi { ptr, i32 } [ %i.lk, %bb.ck ], [ %.pn85, %bb.cn ], [ %.pn85, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #33
  br label %bb.cs

bb.co:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit278
  %i.lr = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !83 ; 4 uses
  %.not.i.i282 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i282, label %.noexc126, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !55 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283: ; preds = %bb.cp
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !56
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 32) #34
  br label %.noexc126

.noexc126:                                        ; preds = %bb.co, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #33
  %i.ly = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ly, ptr noundef nonnull align 1 dereferenceable(6) @.str.138, i64 6, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %44, i64 22
  store i8 0, ptr %i.ma, align 2, !tbaa !56
  %i.mb = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  store ptr %i.mb, ptr %43, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.mb, ptr noundef nonnull align 8 dereferenceable(7) %i.ly, i64 7, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 6, ptr %i.mc, align 8, !tbaa !57
  store ptr %i.ly, ptr %44, align 8, !tbaa !55
  store i64 0, ptr %i.lz, align 8, !tbaa !57
  store i8 0, ptr %i.ly, align 8, !tbaa !56
  %i.md = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 5 uses
  store i8 1, ptr %i.md, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !660
  store ptr %43, ptr %3, align 16, !tbaa !56
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.me, align 8, !tbaa !56
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr nonnull @.str.5, i64 2, i64 15, ptr nonnull %3)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %.noexc126
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !660
  %i.mf = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !57, !noalias !661
  %i.mh = icmp eq i64 %i.mg, 18
  br i1 %i.mh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i294, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i293

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i294: ; preds = %bb.cq
  %i.mi = load ptr, ptr %42, align 8, !tbaa !55, !noalias !661 ; 2 uses
  %i.mj = load i128, ptr %i.mi, align 1
  %i.mk = xor i128 %i.mj, 137483774941343524914431017427597029487
  %i.ml = getelementptr i8, ptr %i.mi, i64 16
  %i.mm = load i16, ptr %i.ml, align 1
  %i.mn = zext i16 %i.mm to i128
  %i.mo = xor i128 %i.mn, 10530
  %i.mp = or i128 %i.mk, %i.mo
  %i.mq = icmp ne i128 %i.mp, 0
  %i.mr = zext i1 %i.mq to i32
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i296, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i293

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i296: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i294
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.cu

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i293: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i294, %bb.cq
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 1 dereferenceable(19) @.str.139)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.cu

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i296, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i293
  %i.mt = load ptr, ptr %42, align 8, !tbaa !55   ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.mw = load i64, ptr %i.mu, align 8, !tbaa !56
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  %i.my = load i8, ptr %i.md, align 8, !tbaa !107, !range !81, !noundef !82
  %i.mz = trunc nuw i8 %i.my to i1
  store i8 0, ptr %i.md, align 8, !tbaa !107
  br i1 %i.mz, label %bb.cr, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit304

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  %i.na = load ptr, ptr %43, align 8, !tbaa !55   ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.mb
  br i1 %i.nb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i302: ; preds = %bb.cr
  %i.nc = load i64, ptr %i.mb, align 8, !tbaa !56
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit304

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit304: ; preds = %bb.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i302
  %i.ne = load ptr, ptr %44, align 8, !tbaa !55   ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.ly
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit304
  %i.ng = load i64, ptr %i.ly, align 8, !tbaa !56
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  %i.ni = load i8, ptr %41, align 8, !tbaa !80, !range !81, !noundef !82
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.df, label %bb.cw

bb.cs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit281, %.body253
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn85.pn, %_ZN7testing7MessageD2Ev.exit281 ], [ %.pn82.pn, %.body253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  br label %bb.ei

bb.ct:                                            ; preds = %.noexc126
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

bb.cu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i293, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i296
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = load ptr, ptr %42, align 8, !tbaa !55   ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.cu
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !56
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.nq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308, %bb.ct
  %.pn89 = phi { ptr, i32 } [ %i.nk, %bb.ct ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308 ], [ %i.nl, %bb.cu ]
  %i.nr = load i8, ptr %i.md, align 8, !tbaa !107, !range !81, !noundef !82
  %i.ns = trunc nuw i8 %i.nr to i1
  store i8 0, ptr %i.md, align 8, !tbaa !107
  br i1 %i.ns, label %bb.cv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit313

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  %i.nt = load ptr, ptr %43, align 8, !tbaa !55   ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.mb
  br i1 %i.nu, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i311: ; preds = %bb.cv
  %i.nv = load i64, ptr %i.mb, align 8, !tbaa !56
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit313

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit313: ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i311
  %i.nx = load ptr, ptr %44, align 8, !tbaa !55   ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.ly
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit313
  %i.nz = load i64, ptr %i.ly, align 8, !tbaa !56
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  br label %bb.dh

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #33
  %i.ob = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !83 ; 2 uses
  %.not.i.i317 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i317, label %_ZNK7testing15AssertionResult15failure_messageEv.exit318, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !55
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit318

_ZNK7testing15AssertionResult15failure_messageEv.exit318: ; preds = %bb.cy, %bb.cx
  %i.oe = phi ptr [ %i.od, %bb.cy ], [ @.str.352, %bb.cx ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %46, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 140, ptr noundef %i.oe)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit318
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.da unwind label %bb.dd

bb.da:                                            ; preds = %bb.cz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  %i.of = load ptr, ptr %45, align 8, !tbaa !85   ; 3 uses
  %.not.i.i319 = icmp eq ptr %i.of, null
  br i1 %.not.i.i319, label %_ZN7testing7MessageD2Ev.exit321, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i320

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i320: ; preds = %bb.da
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !59
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(128) %i.of) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit321

_ZN7testing7MessageD2Ev.exit321:                  ; preds = %bb.da, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #33
  br label %bb.df

bb.db:                                            ; preds = %bb.cw
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit324

bb.dc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit318
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #33
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn92 = phi { ptr, i32 } [ %i.ol, %bb.dd ], [ %i.ok, %bb.dc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  %i.om = load ptr, ptr %45, align 8, !tbaa !85   ; 3 uses
  %.not.i.i322 = icmp eq ptr %i.om, null
  br i1 %.not.i.i322, label %_ZN7testing7MessageD2Ev.exit324, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323: ; preds = %bb.de
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !59
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(128) %i.om) #33, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit324

_ZN7testing7MessageD2Ev.exit324:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323, %bb.de, %bb.db
  %.pn92.pn = phi { ptr, i32 } [ %i.oj, %bb.db ], [ %.pn92, %bb.de ], [ %.pn92, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #33
  br label %bb.dh

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZN7testing7MessageD2Ev.exit321
  %i.oq = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !83 ; 4 uses
  %.not.i.i325 = icmp eq ptr %i.or, null
  br i1 %.not.i.i325, label %_ZN7testing15AssertionResultD2Ev.exit329, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !55 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 16 ; 2 uses
  %i.ou = icmp eq ptr %i.os, %i.ot
  br i1 %i.ou, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i326: ; preds = %bb.dg
  %i.ov = load i64, ptr %i.ot, align 8, !tbaa !56
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ow) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i327

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i327: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i326
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit329

_ZN7testing15AssertionResultD2Ev.exit329:         ; preds = %bb.df, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #33
  store i8 67, ptr %49, align 1, !tbaa !56
  %i.ox = getelementptr inbounds nuw i8, ptr %49, i64 1
  store i8 1, ptr %i.ox, align 1, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !662
  store ptr %49, ptr %2, align 16, !tbaa !56, !noalias !662
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customISt8optionalIcEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.oy, align 8, !tbaa !56, !noalias !662
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr nonnull @.str.5, i64 2, i64 15, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !662
  %i.oz = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !57, !noalias !663
  %i.pb = icmp eq i64 %i.pa, 13
  br i1 %i.pb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i331, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i330

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i331: ; preds = %_ZN7testing15AssertionResultD2Ev.exit329
  %i.pc = load ptr, ptr %48, align 8, !tbaa !55, !noalias !663 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 1
  %i.pe = xor i64 %i.pd, 7809644653626814575
  %i.pf = getelementptr i8, ptr %i.pc, i64 5
  %i.pg = load i64, ptr %i.pf, align 1
  %i.ph = xor i64 %i.pg, 2965412715107737966
  %i.pi = or i64 %i.pe, %i.ph
  %i.pj = icmp ne i64 %i.pi, 0
  %i.pk = zext i1 %i.pj to i32
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i333, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i330

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i333: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i331
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA14_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit336 unwind label %bb.di

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i330: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i331, %_ZN7testing15AssertionResultD2Ev.exit329
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA14_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 1 dereferenceable(14) @.str.142)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA14_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit336 unwind label %bb.di

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA14_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit336: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i333, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i330
  %i.pm = load ptr, ptr %48, align 8, !tbaa !55   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA14_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit336
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !56
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA14_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  %i.pr = load i8, ptr %47, align 8, !tbaa !80, !range !81, !noundef !82
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.ds, label %bb.dj

bb.dh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %_ZN7testing7MessageD2Ev.exit324 ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  br label %bb.ei

bb.di:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i330, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i333
  %i.pt = landingpad { ptr, i32 }
          cleanup
  %i.pu = load ptr, ptr %48, align 8, !tbaa !55   ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

end_hunk_1
