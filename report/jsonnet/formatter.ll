Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/formatter?download=true
inline.NumInlined: 3193
inline.NumDeleted: 1112
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb:bb.a

bb.eg:                                            ; preds = %.critedge359
  %i.zp = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.zq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zp, ptr noundef nonnull @.str.63, i64 noundef 5) ; 0 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 128
  %i.zs = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.zs, ptr noundef nonnull align 8 dereferenceable(24) %i.zr, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 184 ; 2 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !238
  %.not321 = icmp eq ptr %i.zu, null
  %i.zv = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100 ; 2 uses
  br i1 %.not321, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.zw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zv, ptr noundef nonnull @.str.64, i64 noundef 1) ; 0 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zo, i64 160
  %i.zy = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.zy, ptr noundef nonnull align 8 dereferenceable(24) %i.zx, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.zz = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.aaa = load ptr, ptr %i.zt, align 8, !tbaa !238 ; 2 uses
  %.val365 = load ptr, ptr %i.aaa, align 8, !tbaa !143
  %i.aab = getelementptr i8, ptr %i.aaa, i64 8
  %.val366 = load i64, ptr %i.aab, align 8, !tbaa !144
  call fastcc void @_ZN7jsonnet8internalL10unparse_idB5cxx11EPKNS0_10IdentifierE(ptr dead_on_unwind noalias writable align 8 %13, ptr %.val365, i64 %.val366)
  %i.aac = load ptr, ptr %13, align 8, !tbaa !47
  %i.aad = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aae = load i64, ptr %i.aad, align 8, !tbaa !48
  %i.aaf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zz, ptr noundef %i.aac, i64 noundef %i.aae)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit446 unwind label %bb.ei ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit446: ; preds = %bb.eh
  %i.aag = load ptr, ptr %13, align 8, !tbaa !47  ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aai = icmp eq ptr %i.aag, %i.aah
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit446
  %i.aaj = load i64, ptr %i.aah, align 8, !tbaa !49
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aag, i64 noundef %i.aak) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %common.ret855

bb.ei:                                            ; preds = %bb.eh
  %i.aal = landingpad { ptr, i32 }
          cleanup
  %i.aam = load ptr, ptr %13, align 8, !tbaa !47  ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aao = icmp eq ptr %i.aam, %i.aan
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %bb.ei
  %i.aap = load i64, ptr %i.aan, align 8, !tbaa !49
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aaq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %common.resume

bb.ej:                                            ; preds = %bb.eg
  %i.aar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zv, ptr noundef nonnull @.str.47, i64 noundef 1) ; 0 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zo, i64 152
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !239
  tail call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.aat, i1 noundef zeroext false)
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zo, i64 160
  %i.aav = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  tail call void @_ZN7jsonnet8internal11fodder_fillERSoRKSt6vectorINS0_13FodderElementESaIS3_EEbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.aav, ptr noundef nonnull align 8 dereferenceable(24) %i.aau, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.aaw = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  %i.aax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw, ptr noundef nonnull @.str.48, i64 noundef 1) ; 0 uses
  br label %common.ret855

bb.ek:                                            ; preds = %.critedge359
  %i.aay = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal5UnaryE, i64 0) #27 ; 3 uses
  %.not318 = icmp eq ptr %i.aay, null
  br i1 %.not318, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aaz = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aay, i64 128
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !242
  call fastcc void @_ZN7jsonnet8internalL10uop_stringB5cxx11ENS0_7UnaryOpE(ptr dead_on_unwind noalias writable align 8 %14, i32 noundef %i.abb)
  %i.abc = load ptr, ptr %14, align 8, !tbaa !47
  %i.abd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !48
  %i.abf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaz, ptr noundef %i.abc, i64 noundef %i.abe)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453 unwind label %bb.em ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453: ; preds = %bb.el
  %i.abg = load ptr, ptr %14, align 8, !tbaa !47  ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.abi = icmp eq ptr %i.abg, %i.abh
  br i1 %i.abi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453
  %i.abj = load i64, ptr %i.abh, align 8, !tbaa !49
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aay, i64 136
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !243
  call void @_ZN7jsonnet8internal8Unparser7unparseEPKNS0_3ASTEb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.abm, i1 noundef zeroext false)
  br label %common.ret855

bb.em:                                            ; preds = %bb.el
  %i.abn = landingpad { ptr, i32 }
          cleanup
  %i.abo = load ptr, ptr %14, align 8, !tbaa !47  ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.abq = icmp eq ptr %i.abo, %i.abp
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %bb.em
  %i.abr = load i64, ptr %i.abp, align 8, !tbaa !49
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %common.resume

bb.en:                                            ; preds = %bb.ek
  %i.abt = tail call ptr @__dynamic_cast(ptr nonnull %.tr491, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal3VarE, i64 0) #27 ; 2 uses
  %.not319 = icmp eq ptr %i.abt, null
  br i1 %.not319, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.abu = load ptr, ptr %0, align 8, !tbaa !99, !nonnull !82, !align !100
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abt, i64 128
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !245 ; 2 uses
  %.val = load ptr, ptr %i.abw, align 8, !tbaa !143
  %i.abx = getelementptr i8, ptr %i.abw, i64 8
  %.val360 = load i64, ptr %i.abx, align 8, !tbaa !144
  call fastcc void @_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr dead_on_unwind noalias writable align 8 %15, ptr %.val, i64 %.val360)
  %i.aby = load ptr, ptr %15, align 8, !tbaa !47
  %i.abz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !48
  %i.acb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abu, ptr noundef %i.aby, i64 noundef %i.aca)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit460 unwind label %bb.ep ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit460: ; preds = %bb.eo
  %i.acc = load ptr, ptr %15, align 8, !tbaa !47  ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ace = icmp eq ptr %i.acc, %i.acd
  br i1 %i.ace, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit460
  %i.acf = load i64, ptr %i.acd, align 8, !tbaa !49
  %i.acg = add i64 %i.acf, 1
  call void @_ZdlPvm(ptr noundef %i.acc, i64 noundef %i.acg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit460, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %common.ret855

bb.ep:                                            ; preds = %bb.eo
  %i.ach = landingpad { ptr, i32 }
          cleanup
  %i.aci = load ptr, ptr %15, align 8, !tbaa !47  ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ack = icmp eq ptr %i.aci, %i.acj
  br i1 %i.ack, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464: ; preds = %bb.ep
  %i.acl = load i64, ptr %i.acj, align 8, !tbaa !49
  %i.acm = add i64 %i.acl, 1
  call void @_ZdlPvm(ptr noundef %i.aci, i64 noundef %i.acm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %common.resume

bb.eq:                                            ; preds = %bb.en
  %i.acn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.39)
  %i.aco = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.acn, ptr noundef nonnull %.tr491)
  %i.acp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.aco), !inline_history !5 ; 0 uses
  tail call void @abort() #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal9AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %.sroa.024.029 = load ptr, ptr %i.a, align 8, !tbaa !76 ; 2 uses
  %.not30 = icmp eq ptr %.sroa.024.029, %i.a
  br i1 %.not30, label %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.b = load ptr, ptr %.09.i.i, align 8, !tbaa !76 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #28
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !343

_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.a, %._crit_edge
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.a, ptr %i.c, align 8, !tbaa !75
  store ptr %i.a, ptr %i.a, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not2732 = icmp eq ptr %i.f, %i.g
  br i1 %.not2732, label %._crit_edge35, label %.lr.ph34

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.024.031 = phi ptr [ %.sroa.024.0, %bb.c ], [ %.sroa.024.029, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.024.031, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.024.0 = load ptr, ptr %.sroa.024.031, align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq ptr %.sroa.024.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge35:                                    ; preds = %bb.f, %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.o)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge35
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit: ; preds = %._crit_edge35
  store ptr null, ptr %i.n, align 8, !tbaa !28
  store ptr %i.g, ptr %i.e, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %i.r, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.s, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.not2836 = icmp eq ptr %i.v, %i.w
  br i1 %.not2836, label %._crit_edge39, label %.lr.ph38

.lr.ph34:                                         ; preds = %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE5clearEv.exit, %bb.f
  %.sroa.020.033 = phi ptr [ %i.ag, %bb.f ], [ %i.f, %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE5clearEv.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.020.033, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !247  ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph34
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !143 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN7jsonnet8internal10IdentifierD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ae = shl i64 %i.ad, 2
  %i.af = add i64 %i.ae, 4
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.af) #28
  br label %_ZN7jsonnet8internal10IdentifierD2Ev.exit

_ZN7jsonnet8internal10IdentifierD2Ev.exit:        ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 32) #28
  br label %bb.f

bb.f:                                             ; preds = %_ZN7jsonnet8internal10IdentifierD2Ev.exit, %.lr.ph34
  %i.ag = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.020.033) #30 ; 2 uses
  %.not27 = icmp eq ptr %i.ag, %i.g
  br i1 %.not27, label %._crit_edge35, label %.lr.ph34

._crit_edge39:                                    ; preds = %bb.k, %_ZNSt3mapINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN7jsonnet8internal19BuiltinFunctionBodyEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef %i.ai)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit unwind label %bb.g

bb.g:                                             ; preds = %._crit_edge39
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit: ; preds = %._crit_edge39
  store ptr null, ptr %i.ah, align 8, !tbaa !28
  store ptr %i.w, ptr %i.u, align 8, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.w, ptr %i.al, align 8, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.am, align 8, !tbaa !72
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %.not8.i.i12 = icmp eq ptr %i.an, %i.a
  br i1 %.not8.i.i12, label %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit, %.lr.ph.i.i13
  %.09.i.i14 = phi ptr [ %i.ao, %.lr.ph.i.i13 ], [ %i.an, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit ] ; 2 uses
  %i.ao = load ptr, ptr %.09.i.i14, align 8, !tbaa !76 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i14, i64 noundef 24) #28
  %.not.i.i15 = icmp eq ptr %i.ao, %i.a
  br i1 %.not.i.i15, label %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit.loopexit, label %.lr.ph.i.i13, !llvm.loop !343

_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit.loopexit: ; preds = %.lr.ph.i.i13
  %.pre40 = load ptr, ptr %i.ah, align 8, !tbaa !28
  br label %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit

_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit.loopexit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit
  %i.ap = phi ptr [ %.pre40, %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit.loopexit ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN7jsonnet8internal19BuiltinFunctionBodyEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef %i.ap)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !28
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.as)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit
  ret void

.lr.ph38:                                         ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit, %bb.k
  %.sroa.016.037 = phi ptr [ %i.bb, %bb.k ], [ %i.v, %_ZNSt3mapINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.016.037, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !345 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph38
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(184) %i.aw) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph38
  %i.bb = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.016.037) #30 ; 2 uses
  %.not28 = icmp eq ptr %i.bb, %i.w
  br i1 %.not28, label %._crit_edge39, label %.lr.ph38
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEEixEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4, !tbaa !248   ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !248
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !249 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !346

_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !248
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 4, !tbaa !348
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.m, align 4, !tbaa !349
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 4, !tbaa !248
  %i.t = load i32, ptr %i.r, align 4, !tbaa !248
  %i.u = icmp slt i32 %i.s, %i.t
  br label %.thread.i
end_hunk_0
