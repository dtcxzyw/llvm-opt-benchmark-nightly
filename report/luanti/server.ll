Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/server?download=true
inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6ServerD2Ev:.noexc.i
  br i1 %i.zr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZN15MutexedVariableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.zs = load i64, ptr %i.zq, align 8, !tbaa !120
  %i.zt = add i64 %i.zs, 1
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zt) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZN15MutexedVariableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !140 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.zx = icmp eq ptr %i.zv, %i.zw
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.zy = load i64, ptr %i.zw, align 8, !tbaa !120
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.zz) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !437 ; 3 uses
  %.not.i176 = icmp eq ptr %i.aab, null
  br i1 %.not.i176, label %_ZNSt10unique_ptrI16ServerModManagerSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI16ServerModManagerEclEPS0_.exit.i

_ZNKSt14default_deleteI16ServerModManagerEclEPS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  call void @_ZN16ModConfigurationD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.aab) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.aab, i64 noundef 168) #37
  br label %_ZNSt10unique_ptrI16ServerModManagerSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI16ServerModManagerSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNKSt14default_deleteI16ServerModManagerEclEPS0_.exit.i
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !598 ; 3 uses
  %.not.i177 = icmp eq ptr %i.aad, null
  br i1 %.not.i177, label %_ZNSt10unique_ptrI15ServerScriptingSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI15ServerScriptingEclEPS0_.exit.i

_ZNKSt14default_deleteI15ServerScriptingEclEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrI16ServerModManagerSt14default_deleteIS0_EED2Ev.exit
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !96
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void %i.aag(ptr noundef nonnull align 8 dereferenceable(601) %i.aad) #34, !inline_history !23
  br label %_ZNSt10unique_ptrI15ServerScriptingSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI15ServerScriptingSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI16ServerModManagerSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteI15ServerScriptingEclEPS0_.exit.i
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !623 ; 3 uses
  %.not.i178 = icmp eq ptr %i.aai, null
  br i1 %.not.i178, label %_ZNSt10unique_ptrI11PackedValueSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI11PackedValueEclEPS0_.exit.i

_ZNKSt14default_deleteI11PackedValueEclEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrI15ServerScriptingSt14default_deleteIS0_EED2Ev.exit
  call void @_ZN11PackedValueD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.aai) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.aai, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrI11PackedValueSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI11PackedValueSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI15ServerScriptingSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteI11PackedValueEclEPS0_.exit.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !624 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !625 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aak, %i.aam
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrI11PackedValueSt14default_deleteIS0_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aay, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.aak, %_ZNSt10unique_ptrI11PackedValueSt14default_deleteIS0_EED2Ev.exit ] ; 5 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !140 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.aaq = icmp eq ptr %i.aao, %i.aap
  br i1 %i.aaq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aar = load i64, ptr %i.aap, align 8, !tbaa !120
  %i.aas = add i64 %i.aar, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aas) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aat = load ptr, ptr %.05.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aav = icmp eq ptr %i.aat, %i.aau
  br i1 %i.aav, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aaw = load i64, ptr %i.aau, align 8, !tbaa !120
  %i.aax = add i64 %i.aaw, 1
  call void @_ZdlPvm(ptr noundef %i.aat, i64 noundef %i.aax) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.aay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i179 = icmp eq ptr %i.aay, %i.aam
  br i1 %.not.i.i.i179, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !31

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.aaj, align 8, !tbaa !624
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrI11PackedValueSt14default_deleteIS0_EED2Ev.exit
  %i.aaz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.aak, %_ZNSt10unique_ptrI11PackedValueSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !626
  %i.abc = ptrtoint ptr %i.abb to i64
  %i.abd = ptrtoint ptr %i.aaz to i64
  %i.abe = sub i64 %i.abc, %i.abd
  call void @_ZdlPvm(ptr noundef nonnull %i.aaz, i64 noundef %i.abe) #37
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.fn
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !624 ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !625 ; 2 uses
  %.not4.i.i.i180 = icmp eq ptr %i.abg, %i.abi
  br i1 %.not4.i.i.i180, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i190, label %.lr.ph.i.i.i181

.lr.ph.i.i.i181:                                  ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i186
  %.05.i.i.i182 = phi ptr [ %i.abu, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i186 ], [ %i.abg, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 5 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.05.i.i.i182, i64 32
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !140 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.05.i.i.i182, i64 48 ; 2 uses
  %i.abm = icmp eq ptr %i.abk, %i.abl
  br i1 %i.abm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i183: ; preds = %.lr.ph.i.i.i181
  %i.abn = load i64, ptr %i.abl, align 8, !tbaa !120
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i184: ; preds = %.lr.ph.i.i.i181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i183
  %i.abp = load ptr, ptr %.05.i.i.i182, align 8, !tbaa !140 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.05.i.i.i182, i64 16 ; 2 uses
  %i.abr = icmp eq ptr %i.abp, %i.abq
  br i1 %i.abr, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i184
  %i.abs = load i64, ptr %i.abq, align 8, !tbaa !120
  %i.abt = add i64 %i.abs, 1
  call void @_ZdlPvm(ptr noundef %i.abp, i64 noundef %i.abt) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i186

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i185
  %i.abu = getelementptr inbounds nuw i8, ptr %.05.i.i.i182, i64 64 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.abu, %i.abi
  br i1 %.not.i.i.i187, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i188, label %.lr.ph.i.i.i181, !llvm.loop !31

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i188: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i186
  %.pr.i189 = load ptr, ptr %i.abf, align 8, !tbaa !624
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i190

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i190: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i188, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.abv = phi ptr [ %.pr.i189, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i188 ], [ %i.abg, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i191 = icmp eq ptr %i.abv, null
  br i1 %.not.i.i1.i191, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit194, label %bb.fo

bb.fo:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i190
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !626
  %i.aby = ptrtoint ptr %i.abx to i64
  %i.abz = ptrtoint ptr %i.abv to i64
  %i.aca = sub i64 %i.aby, %i.abz
  call void @_ZdlPvm(ptr noundef nonnull %i.abv, i64 noundef %i.aca) #37
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit194

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit194: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i190, %bb.fo
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %.invoke, %.noexc242, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i237, %.noexc240, %bb.bf, %.noexc231, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i226, %.noexc229, %bb.ap, %.noexc220, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i215, %.noexc218, %bb.ah, %.noexc209, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i204, %.noexc207, %bb.w, %.noexc199, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc197, %bb.i, %bb.bu, %bb.bt, %.noexc95, %_ZTW11errorstream.exit, %bb.bc, %.noexc81, %_ZTW10infostream.exit79, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread, %bb.aq, %bb.am, %.noexc65, %_ZTW10infostream.exit63, %bb.ae, %.noexc55, %_ZTW10infostream.exit53, %bb.t, %.noexc45, %_ZTW10infostream.exit, %bb.p, %bb.f, %.noexc37, %_ZTW12actionstream.exit, %.noexc.i, %_ZNSt10unique_ptrI13EmergeManagerSt14default_deleteIS0_EE5resetEPS0_.exit, %bb.bk, %_ZN11StreamProxylsEPFRSoS0_E.exit87, %bb.ax, %bb.aw, %bb.at, %bb.as, %.noexc75, %_ZN11StreamProxylsEPFRSoS0_E.exit61, %bb.z, %bb.y, %bb.m, %bb.k, %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.a, %.noexc
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          catch ptr null
  %i.acb = extractvalue { ptr, i32 } %lpad.loopexit.split-lp389, 0
  call void @__clang_call_terminate(ptr %i.acb) #36
  unreachable

bb.fp:                                            ; preds = %bb.av, %bb.x
  %.012 = phi ptr [ %i.ha, %bb.av ], [ %i.dp, %bb.x ]
  call void @__clang_call_terminate(ptr %.012) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !556
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.328) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #39 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.d, ptr %i.a, align 8, !tbaa !145
  %i.e = icmp ugt i64 %i.d, 3
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !551
  %i.g = load i64, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !120
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi i64 [ %i.g, %.noexc ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 4 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.j = load i32, ptr %1, align 4, !tbaa !558
  store i32 %i.j, ptr %i.i, align 4, !tbaa !558
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.k = call ptr @wmemcpy(ptr noundef %i.i, ptr noundef nonnull %1, i64 noundef %i.d) #34 ; 0 uses
  %.pre6.i = load i64, ptr %i.a, align 8, !tbaa !145
  %.pre7.i = load ptr, ptr %0, align 8, !tbaa !551
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.l = phi ptr [ %i.i, %._crit_edge.i ], [ %i.i, %bb.d ], [ %.pre7.i, %bb.e ]
  %i.m = phi i64 [ %i.h, %._crit_edge.i ], [ %i.h, %bb.d ], [ %.pre6.i, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !552
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 0, ptr %i.o, align 4, !tbaa !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11ChatMessageC2E15ChatMessageTypeRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES8_l(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !555
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !556
  %i.e = load ptr, ptr %2, align 8, !tbaa !551    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !552  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %i.g, ptr %i.b, align 8, !tbaa !145
  %i.h = icmp ugt i64 %i.g, 3
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !551
  %i.j = load i64, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  store i64 %i.j, ptr %i.d, align 8, !tbaa !120
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi i64 [ %i.j, %.noexc.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 4 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i32, ptr %i.e, align 4, !tbaa !558
  store i32 %i.m, ptr %i.l, align 4, !tbaa !558
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = call ptr @wmemcpy(ptr noundef %i.l, ptr noundef %i.e, i64 noundef %i.g) #34 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.b, align 8, !tbaa !145
  %.pre7.i.i = load ptr, ptr %i.c, align 8, !tbaa !551
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = phi ptr [ %i.l, %._crit_edge.i.i ], [ %i.l, %bb.b ], [ %.pre7.i.i, %bb.c ]
  %i.p = phi i64 [ %i.k, %._crit_edge.i.i ], [ %i.k, %bb.b ], [ %.pre6.i.i, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !552
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  store i32 0, ptr %i.r, align 4, !tbaa !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !556
  %i.u = load ptr, ptr %3, align 8, !tbaa !551    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !552  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.w, ptr %i.a, align 8, !tbaa !145
  %i.x = icmp ugt i64 %i.w, 3
  br i1 %i.x, label %.noexc.i9, label %._crit_edge.i.i6

.noexc.i9:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i9
  store ptr %i.y, ptr %i.s, align 8, !tbaa !551
  %i.z = load i64, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  store i64 %i.z, ptr %i.t, align 8, !tbaa !120
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit
  %i.aa = phi i64 [ %i.z, %.noexc ], [ %i.w, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit ] ; 2 uses
  %i.ab = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit ] ; 4 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i6
  %i.ac = load i32, ptr %i.u, align 4, !tbaa !558
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !558
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.ad = call ptr @wmemcpy(ptr noundef %i.ab, ptr noundef %i.u, i64 noundef %i.w) #34 ; 0 uses
  %.pre6.i.i7 = load i64, ptr %i.a, align 8, !tbaa !145
  %.pre7.i.i8 = load ptr, ptr %i.s, align 8, !tbaa !551
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i6
  %i.ae = phi ptr [ %i.ab, %._crit_edge.i.i6 ], [ %i.ab, %bb.d ], [ %.pre7.i.i8, %bb.e ]
  %i.af = phi i64 [ %i.aa, %._crit_edge.i.i6 ], [ %i.aa, %bb.d ], [ %.pre6.i.i7, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !552
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  store i32 0, ptr %i.ah, align 4, !tbaa !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %i.ai, align 8, !tbaa !559
  ret void

bb.g:                                             ; preds = %.noexc.i9
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !551 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.d
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.am = load i64, ptr %i.d, align 8, !tbaa !120
  %i.an = shl i64 %i.am, 2
  %i.ao = add i64 %i.an, 4
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15MutexedVariableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3getEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !144
  %i.e = load ptr, ptr %1, align 8, !tbaa !140    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !146  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.g, ptr %i.a, align 8, !tbaa !145
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %0, align 8, !tbaa !140
  %i.j = load i64, ptr %i.a, align 8, !tbaa !145
  store i64 %i.j, ptr %i.d, align 8, !tbaa !120
  br label %._crit_edge.i.i

end_hunk_0
