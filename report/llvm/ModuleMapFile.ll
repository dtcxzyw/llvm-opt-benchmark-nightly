Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleMapFile?download=true
inline.NumInlined: 3125
inline.NumDeleted: 2054
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5clang9modulemap12RequiresDeclENS5_10HeaderDeclENS5_15UmbrellaDirDeclENS5_10ModuleDeclENS5_11ExcludeDeclENS5_10ExportDeclENS5_12ExportAsDeclENS5_16ExternModuleDeclENS5_7UseDeclENS5_8LinkDeclENS5_16ConfigMacrosDeclENS5_12ConflictDeclEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_SH_EEEJEEESt16integer_sequenceImJLm11EEEE14__visit_invokeESM_SP_:bb.a
bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5clang14SourceLocationEELb0EE13destroy_rangeEPSA_SC_.exit.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.m) #15
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN5clang9modulemap12RequiresDeclENS4_10HeaderDeclENS4_15UmbrellaDirDeclENS4_10ModuleDeclENS4_11ExcludeDeclENS4_10ExportDeclENS4_12ExportAsDeclENS4_16ExternModuleDeclENS4_7UseDeclENS4_8LinkDeclENS4_16ConfigMacrosDeclENS4_12ConflictDeclEEE8_M_resetEvEUlOT_E_JRSG_EENSt9enable_ifIX16is_invocable_r_vISI_T0_DpT1_EESI_E4typeEOSN_DpOSO_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN5clang9modulemap12RequiresDeclENS4_10HeaderDeclENS4_15UmbrellaDirDeclENS4_10ModuleDeclENS4_11ExcludeDeclENS4_10ExportDeclENS4_12ExportAsDeclENS4_16ExternModuleDeclENS4_7UseDeclENS4_8LinkDeclENS4_16ConfigMacrosDeclENS4_12ConflictDeclEEE8_M_resetEvEUlOT_E_JRSG_EENSt9enable_ifIX16is_invocable_r_vISI_T0_DpT1_EESI_E4typeEOSN_DpOSO_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5clang14SourceLocationEELb0EE13destroy_rangeEPSA_SC_.exit.i.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !356  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !143
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !143
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #16
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !354

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN12_GLOBAL__N_119ModuleMapFileParser12consumeTokenEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 76), (80, 84), (88, 96)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.clang::Token", align 8      ; 13 uses
  %2 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %3 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %4 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %.val8 = load i32, ptr %i.c, align 4, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  store i32 3, ptr %i.b, align 8, !tbaa !140
  store i32 0, ptr %i.c, align 4, !tbaa !141
  store i32 0, ptr %i.d, align 8, !tbaa !142
  store ptr null, ptr %i.e, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.l = load ptr, ptr %0, align 8, !tbaa !357, !nonnull !124, !align !125
  %i.m = call noundef zeroext i1 @_ZN5clang5Lexer3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(204) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %1) #15 ; 0 uses
  %i.n = load i32, ptr %1, align 8, !tbaa !361    ; 2 uses
  store i32 %i.n, ptr %i.c, align 4, !tbaa !362
  %i.o = load i16, ptr %i.f, align 8, !tbaa !363
  switch i16 %i.o, label %.thread404 [
    i16 6, label %bb.c
    i16 67, label %bb.n
    i16 1, label %bb.o
    i16 24, label %bb.p
    i16 20, label %bb.q
    i16 26, label %bb.r
    i16 25, label %bb.s
    i16 21, label %bb.t
    i16 31, label %bb.u
    i16 41, label %bb.v
    i16 14, label %bb.w
    i16 7, label %bb.z
    i16 4, label %bb.ac
    i16 68, label %bb.ab
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !364  ; 28 uses
  %i.q = load i32, ptr %i.i, align 4, !tbaa !365  ; 7 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !143
  store i32 %i.q, ptr %i.d, align 8, !tbaa !366
  switch i32 %i.q, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit72 [
    i32 13, label %bb.d
    i32 8, label %bb.e
    i32 7, label %bb.f
    i32 6, label %bb.h
    i32 9, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 1
  %i.s = xor i64 %i.r, 7881131575309397859
  %i.t = getelementptr i8, ptr %i.p, i64 5
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 8317992807938482023
  %i.w = or i64 %i.s, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit72, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153

bb.e:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.p, align 1
  %i.aa = icmp ne i64 %i.z, 8386662845389893475
  %i.ab = zext i1 %i.aa to i32
  %.not.i.i25 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i25, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit72, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.p, align 1
  %i.ad = xor i32 %i.ac, 1818458213
  %i.ae = getelementptr i8, ptr %i.p, i64 3
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = xor i32 %i.af, 1701082476
  %i.ah = or i32 %i.ad, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not.i.i34 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i34, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit108.thread522.thread549

bb.g:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.p, align 1
  %i.al = icmp ne i64 %i.ak, 8388345085396285541
  %i.am = zext i1 %i.al to i32
  %.not.i.i43 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i43, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117.thread558.thread

bb.h:                                             ; preds = %bb.c
  %i.an = load i32, ptr %i.p, align 1
  %i.ao = xor i32 %i.an, 1869641829
  %i.ap = getelementptr i8, ptr %i.p, i64 4
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i32
  %i.as = xor i32 %i.ar, 29810
  %i.at = or i32 %i.ao, %i.as
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %.not.i.i52 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i52, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit63.thread421.thread454

bb.i:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.p, align 1
  %i.ax = xor i64 %i.aw, 7016454779311257701
  %i.ay = getelementptr i8, ptr %i.p, i64 8
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = xor i64 %i.ba, 115
  %i.bc = or i64 %i.ax, %i.bb
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %.not.i.i61 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i61, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit72

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit63.thread421.thread454: ; preds = %bb.h
  %i.bf = load i32, ptr %i.p, align 1
  %i.bg = xor i32 %i.bf, 1702131813
  %i.bh = getelementptr i8, ptr %i.p, i64 4
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = zext i16 %i.bi to i32
  %i.bk = xor i32 %i.bj, 28274
  %i.bl = or i32 %i.bg, %i.bk
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %.not.i.i70 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i70, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit81

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit72: ; preds = %bb.c, %bb.d, %bb.e, %bb.i
  %.not = phi i1 [ true, %bb.i ], [ true, %bb.c ], [ false, %bb.e ], [ false, %bb.d ] ; 3 uses
  %.sroa.36.6 = phi i64 [ 0, %bb.i ], [ 0, %bb.c ], [ 4294967298, %bb.e ], [ 4294967297, %bb.d ] ; 4 uses
  %.not.i.i.i.i77 = icmp eq i32 %i.q, 9
  %or.cond677 = and i1 %.not.i.i.i.i77, %.not
  br i1 %or.cond677, label %bb.j, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit90

bb.j:                                             ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit72
  %i.bo = load i64, ptr %i.p, align 1
  %i.bp = xor i64 %i.bo, 8245940720249172582
  %i.bq = getelementptr i8, ptr %i.p, i64 8
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = xor i64 %i.bs, 107
  %i.bu = or i64 %i.bp, %i.bt
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %.not.i.i79 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i79, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread764

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit81: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit63.thread421.thread454
  %i.bx = load i32, ptr %i.p, align 1
  %i.by = xor i32 %i.bx, 1684104552
  %i.bz = getelementptr i8, ptr %i.p, i64 4
  %i.ca = load i16, ptr %i.bz, align 1
  %i.cb = zext i16 %i.ca to i32
  %i.cc = xor i32 %i.cb, 29285
  %i.cd = or i32 %i.by, %i.cc
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %.not.i.i88 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i88, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit99

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit90: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit72
  %.not.i.i.i.i95 = icmp eq i32 %i.q, 4
  %or.cond681 = and i1 %.not.i.i.i.i95, %.not
  br i1 %or.cond681, label %bb.k, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117

bb.k:                                             ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit90
  %i.cg = load i32, ptr %i.p, align 1
  %i.ch = icmp ne i32 %i.cg, 1802398060
  %i.ci = zext i1 %i.ch to i32
  %.not.i.i97 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i97, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread764

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit99: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit81
  %i.cj = load i32, ptr %i.p, align 1
  %i.ck = xor i32 %i.cj, 1969516397
  %i.cl = getelementptr i8, ptr %i.p, i64 4
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i32
  %i.co = xor i32 %i.cn, 25964
  %i.cp = or i32 %i.ck, %i.co
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %.not.i.i106 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i106, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread764

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit108.thread522.thread549: ; preds = %bb.f
  %i.cs = load i32, ptr %i.p, align 1
  %i.ct = xor i32 %i.cs, 1986622064
  %i.cu = getelementptr i8, ptr %i.p, i64 3
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = xor i32 %i.cv, 1702125942
  %i.cx = or i32 %i.ct, %i.cw
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %.not.i.i115 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i115, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit126

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit90
  %.not.i.i.i.i122 = icmp eq i32 %i.q, 8
  %or.cond687 = and i1 %.not.i.i.i.i122, %.not
  br i1 %or.cond687, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117.thread558.thread, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit135

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117.thread558.thread: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117, %bb.g
  %.sroa.36.10438562580 = phi i64 [ %.sroa.36.6, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117 ], [ 0, %bb.g ]
  %i.da = load i64, ptr %i.p, align 1
  %i.db = icmp ne i64 %i.da, 8315178084276987250
  %i.dc = zext i1 %i.db to i32
  %.not.i.i124 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i124, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit135

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit126: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit108.thread522.thread549
  %i.dd = load i32, ptr %i.p, align 1
  %i.de = xor i32 %i.dd, 1954047348
  %i.df = getelementptr i8, ptr %i.p, i64 3
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = xor i32 %i.dg, 1818326388
  %i.di = or i32 %i.de, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %.not.i.i133 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i133, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread764: ; preds = %bb.j, %bb.k, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit99
  %.sroa.36.13.ph = phi i64 [ %.sroa.36.6, %bb.k ], [ 0, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit99 ], [ %.sroa.36.6, %bb.j ]
  br label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit135: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117.thread558.thread
  %.sroa.36.13 = phi i64 [ %.sroa.36.6, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117 ], [ %.sroa.36.10438562580, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117.thread558.thread ] ; 5 uses
  %i.dl = and i64 %.sroa.36.13, 4294967296
  %.not718 = icmp eq i64 %i.dl, 0
  %.not.i.i.i.i140 = icmp eq i32 %i.q, 8
  %or.cond691 = and i1 %.not.i.i.i.i140, %.not718
  br i1 %or.cond691, label %bb.l, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144

bb.l:                                             ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit135
  %i.dm = load i64, ptr %i.p, align 1
  %i.dn = icmp ne i64 %i.dm, 7020105102130310517
  %i.do = zext i1 %i.dn to i32
  %.not.i.i142 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i142, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit126, %bb.l
  %.sroa.36.14.ph = phi i64 [ %.sroa.36.13, %bb.l ], [ 0, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit126 ]
  br label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit135
  %i.dp = and i64 %.sroa.36.13, 4294967296
  %.not719 = icmp eq i64 %i.dp, 0
  %.not.i.i.i.i149 = icmp eq i32 %i.q, 3
  %or.cond693 = and i1 %.not.i.i.i.i149, %.not719
  br i1 %or.cond693, label %bb.m, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153

bb.m:                                             ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144
  %i.dq = load i16, ptr %i.p, align 1
  %i.dr = xor i16 %i.dq, 29557
  %i.ds = getelementptr i8, ptr %i.p, i64 2
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i16
  %i.dv = xor i16 %i.du, 101
  %i.dw = or i16 %i.dr, %i.dv
  %i.dx = icmp ne i16 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %.not.i.i151 = icmp eq i32 %i.dy, 0
  %spec.select = select i1 %.not.i.i151, i64 4294967314, i64 %.sroa.36.13
  br label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153

_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit153: ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread764, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread, %bb.m, %bb.g, %bb.f, %bb.h, %bb.i, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit63.thread421.thread454, %bb.j, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit81, %bb.k, %bb.d, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit99, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit108.thread522.thread549, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117.thread558.thread, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit126, %bb.l, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144
  %.sroa.36.15 = phi i64 [ %.sroa.36.13, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144 ], [ 4294967304, %bb.g ], [ %spec.select, %bb.m ], [ 4294967303, %bb.f ], [ 4294967313, %bb.l ], [ 4294967315, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit117.thread558.thread ], [ 4294967319, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit126 ], [ 4294967310, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit99 ], [ 4294967312, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit108.thread522.thread549 ], [ 0, %bb.d ], [ 4294967300, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit81 ], [ 4294967309, %bb.k ], [ 4294967307, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit63.thread421.thread454 ], [ 4294967308, %bb.j ], [ 4294967305, %bb.h ], [ 4294967306, %bb.i ], [ %.sroa.36.14.ph, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread ], [ %.sroa.36.13.ph, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_17MMToken9TokenKindES3_E4CaseENS_13StringLiteralES3_.exit144.thread764 ] ; 2 uses
  %.sroa.36.16.extract.trunc = trunc i64 %.sroa.36.15 to i32
  %i.dz = and i64 %.sroa.36.15, 4294967296
  %.not720 = icmp eq i64 %i.dz, 0
  %spec.select.i = select i1 %.not720, i32 5, i32 %.sroa.36.16.extract.trunc
  store i32 %spec.select.i, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.n:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.o:                                             ; preds = %bb.b
  store i32 3, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.p:                                             ; preds = %bb.b
  store i32 24, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.q:                                             ; preds = %bb.b
  store i32 26, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.r:                                             ; preds = %bb.b
  store i32 15, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.s:                                             ; preds = %bb.b
  store i32 25, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.t:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.u:                                             ; preds = %bb.b
  store i32 20, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.v:                                             ; preds = %bb.b
  store i32 6, ptr %i.b, align 8, !tbaa !156
  br label %bb.ad

bb.w:                                             ; preds = %bb.b
  %i.ea = load i16, ptr %i.g, align 2, !tbaa !367
  %i.eb = and i16 %i.ea, 32
  %.not710 = icmp eq i16 %i.eb, 0
  br i1 %.not710, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !179, !nonnull !124, !align !125
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %2, ptr noundef nonnull align 8 dereferenceable(15256) %i.ec, i32 %i.n, i32 noundef 29) #15
  br label %.sink.split

bb.y:                                             ; preds = %bb.w
  store i32 21, ptr %i.b, align 8, !tbaa !156
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.ee, ptr %i.e, align 8, !tbaa !143
  %i.ef = load i32, ptr %i.i, align 4, !tbaa !365
end_hunk_0
