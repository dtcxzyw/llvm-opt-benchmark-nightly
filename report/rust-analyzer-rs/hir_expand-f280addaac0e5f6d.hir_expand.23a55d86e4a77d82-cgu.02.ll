Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.02?download=true
inline.NumInlined: 1351
inline.NumDeleted: 842
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECs33K2ylI4knu_10hir_expand:bb.a
  %i.y = load i32, ptr %i.x, align 4, !noundef !5
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.m

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4NameNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit: ; preds = %.noexc7, %.noexc, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4NameNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs33K2ylI4knu_10hir_expand.exit
  %i.ab = phi ptr [ %i.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4NameNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs33K2ylI4knu_10hir_expand.exit ], [ null, %.noexc ], [ null, %.noexc7 ]
  %.val3 = load ptr, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.ac = icmp eq ptr %.val3, null
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit9, label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !5
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #27
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit9: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.ab

bb.m:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.i, %.body, %bb.j
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs3_Cs4dcH4YgJDq_2ttNtB1S_14TokenTreesView16iter_flat_tokens0ENtB6_8Iterator4folduNCINvNvB2O_8for_each4callNtB1S_9TokenTreeNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3W_3VecB3x_E14extend_trustedBQ_E0E0ECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !37, !noalias !38 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !37, !noalias !38 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !37, !noalias !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !42, !noalias !49, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !52, !noalias !53 ; 2 uses
  %i.e = icmp ult i64 %.promoted.i.i.i, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs3_Cs4dcH4YgJDq_2ttNtB1S_14TokenTreesView16iter_flat_tokens0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callNtB1S_9TokenTreeNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4j_3VecB3U_E14extend_trustedBQ_E0E0ECs33K2ylI4knu_10hir_expand.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.val4.i.i.i = phi i64 [ %i.i, %bb.b ], [ %.sroa.5.0.copyload.i.i, %bb.a ] ; 3 uses
  %i.f = phi i64 [ %i.g, %bb.b ], [ %.promoted.i.i.i, %bb.a ] ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !52, !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54
  invoke fastcc void @_RNCNvMs3_Cs4dcH4YgJDq_2ttNtB7_14TokenTreesView16iter_flat_tokens0Cs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.f) #29
          to label %bb.b unwind label %bb.c, !noalias !57

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.0.copyload.i.i, i64 %.val4.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !58
  %i.i = add i64 %.val4.i.i.i, 1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54
  %exitcond.not.i.i.i = icmp eq i64 %i.g, %i.d
  br i1 %exitcond.not.i.i.i, label %_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs3_Cs4dcH4YgJDq_2ttNtB1S_14TokenTreesView16iter_flat_tokens0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callNtB1S_9TokenTreeNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4j_3VecB3U_E14extend_trustedBQ_E0E0ECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val4.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !65
  resume { ptr, i32 } %i.j

_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs3_Cs4dcH4YgJDq_2ttNtB1S_14TokenTreesView16iter_flat_tokens0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callNtB1S_9TokenTreeNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4j_3VecB3U_E14extend_trustedBQ_E0E0ECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.b, %bb.a
  %.val6.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i, %bb.a ], [ %i.i, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val6.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !65
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB14_9generated5nodes11RecordFieldENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB2t_12VariantShape4from0ENCB2o_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtB2x_11ExpandErrorEEB3U_8try_folduNCINvNvB3U_12try_for_each4callNtCs4dcH4YgJDq_2tt5IdentINtNtNtBc_3ops12control_flow11ControlFlowB6Y_ENcNtB7m_5Break0E0B7m_E0IB7n_B7m_EEB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.4.i.i = alloca [20 x i8], align 8        ; 5 uses
  %.sroa.8.i.i = alloca [3 x i8], align 1         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.d = tail call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes11RecordFieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !72 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.d, null
  br i1 %.not20.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes11RecordFieldENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB2p_12VariantShape4from0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6option6OptionNtB1G_4NameEINtNtBc_6result6ResultNtCs4dcH4YgJDq_2tt5IdentNtB2t_11ExpandErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB6o_B5E_EENCB2k_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7d_EIB5j_NtNtBc_7convert10InfallibleB62_EEB3G_8try_folduNCINvNvB3G_12try_for_each4callB5E_B72_NcNtB72_5Break0E0B72_E0E0B6n_EB2t_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph.i.i
  %i.h = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.x, %bb.k ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.i = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECs33K2ylI4knu_10hir_expand(ptr nonnull %i.h)
          to label %bb.e unwind label %bb.c, !noalias !74

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noalias !74, !noundef !5
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !noalias !74
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %common.resume.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.h) #27
          to label %common.resume.i.i.i unwind label %bb.g, !noalias !74

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !74, !noundef !5
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !noalias !74
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %_RNCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB6_12VariantShape4from0Ba_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.h) #27, !noalias !74
  br label %_RNCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB6_12VariantShape4from0Ba_.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !74
  unreachable

common.resume.i.i.i:                              ; preds = %bb.j, %bb.d, %bb.c
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB6_12VariantShape4from0Ba_.exit.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !noalias !80, !nonnull !5, !align !83, !noundef !5
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !80, !nonnull !5, !align !84, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(20) %.val.i.i.i.i, i64 20, i1 false), !noalias !88
  call void @_RNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro13name_to_token(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val1.i.i.i.i, ptr noundef %i.i), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !90 ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !90 ; 3 uses
  %i.t = icmp eq i8 %.sroa.5.0.copyload.i.i.i.i, 2
  br i1 %i.t, label %bb.h, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.i.i

bb.h:                                             ; preds = %_RNCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB6_12VariantShape4from0Ba_.exit.i.i.i
  %i.u = load ptr, ptr %3, align 8, !alias.scope !91, !noalias !94, !noundef !5
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.thread.i.i unwind label %bb.j, !noalias !98

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8, !noalias !94
  br label %common.resume.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.thread.i.i: ; preds = %bb.i, %bb.h
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77
  br label %.loopexit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.i.i: ; preds = %_RNCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB6_12VariantShape4from0Ba_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.g, i64 20, i1 false), !noalias !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(3) %i.f, i64 3, i1 false), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77
  %.not.i.i.i = icmp eq i8 %.sroa.5.0.copyload.i.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.k, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.thread.i.i
  %.sroa.04.0.i.i = phi ptr [ undef, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.thread.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.i.i ]
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.47.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.i.i, i64 20, i1 false), !noalias !101
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.i.i, i64 3, i1 false), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  store ptr %.sroa.04.0.i.i, ptr %0, align 8, !alias.scope !102, !noalias !101
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes11RecordFieldENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB2p_12VariantShape4from0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6option6OptionNtB1G_4NameEINtNtBc_6result6ResultNtCs4dcH4YgJDq_2tt5IdentNtB2t_11ExpandErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB6o_B5E_EENCB2k_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7d_EIB5j_NtNtBc_7convert10InfallibleB62_EEB3G_8try_folduNCINvNvB3G_12try_for_each4callB5E_B72_NcNtB72_5Break0E0B72_E0E0B6n_EB2t_.exit

bb.k:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldINtNtBa_6option6OptionNtB11_4NameEuINtNtNtBa_3ops12control_flow11ControlFlowIB2z_NtCs4dcH4YgJDq_2tt5IdentEENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB3P_12VariantShape4from0NCIB2_B1Z_INtNtBa_6result6ResultB3i_NtB3T_11ExpandErrorEuB2y_NCB3K_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB6H_INtB15_11AstChildrenBZ_EB3I_EB64_EIB5g_NtNtBa_7convert10InfallibleB5F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB85_12try_for_each4callB3i_B3d_NcNtB3d_5Break0E0B3d_E0E0E0B3T_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.x = call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes11RecordFieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes11RecordFieldENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB2p_12VariantShape4from0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6option6OptionNtB1G_4NameEINtNtBc_6result6ResultNtCs4dcH4YgJDq_2tt5IdentNtB2t_11ExpandErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB6o_B5E_EENCB2k_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7d_EIB5j_NtNtBc_7convert10InfallibleB62_EEB3G_8try_folduNCINvNvB3G_12try_for_each4callB5E_B72_NcNtB72_5Break0E0B72_E0E0B6n_EB2t_.exit, label %bb.b

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes11RecordFieldENCNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB2p_12VariantShape4from0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6option6OptionNtB1G_4NameEINtNtBc_6result6ResultNtCs4dcH4YgJDq_2tt5IdentNtB2t_11ExpandErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB6o_B5E_EENCB2k_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7d_EIB5j_NtNtBc_7convert10InfallibleB62_EEB3G_8try_folduNCINvNvB3G_12try_for_each4callB5E_B72_NcNtB72_5Break0E0B72_E0E0B6n_EB2t_.exit: ; preds = %bb.k, %bb.a, %.loopexit.i.i
  %.sink.i = phi i8 [ %.sroa.5.0.copyload.i.i.i.i, %.loopexit.i.i ], [ -1, %bb.a ], [ -1, %bb.k ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sink.i, ptr %i.y, align 4, !alias.scope !106, !noalias !101
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEINtB2j_11AstChildrenNtB2f_12GenericParamENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0ENCB40_s7_0ENCINvNtNtB2j_14syntax_factory12constructors14iterator_inputNtB2f_10GenericArgBX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6Q_8for_each4callTB6s_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB2l_11syntax_node12RustLanguageEENCINvNvNtB6U_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB6s_EIBa0_B7Y_EEB7T_E0E0EB46_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !alias.scope !120, !noalias !121 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !120, !noalias !121 ; 8 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !120, !noalias !121
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !120, !noalias !121
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !120, !noalias !121 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.11.0.copyload.i.i = load ptr, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !120, !noalias !121 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !122
  %i.i = trunc nuw i64 %.sroa.7.0.copyload.i.i to i1
  br i1 %i.i, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !123
  store ptr %.sroa.8.0.copyload.i.i, ptr %i.f, align 8, !noalias !129
  store ptr %i.g, ptr %i.e, align 8, !noalias !129
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %i.j = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes12GenericParamENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.g unwind label %bb.d, !noalias !132 ; 2 uses

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !129, !noundef !5 ; 3 uses
  %i.l = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.l, label %.body.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noalias !132, !noundef !5
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !noalias !132
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %.body.thread.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i.i.i) #27
          to label %.body.thread.i.i.i.i unwind label %bb.l, !noalias !132

bb.g:                                             ; preds = %bb.c
  %i.q = extractvalue { i64, ptr } %i.j, 0        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = extractvalue { i64, ptr } %i.j, 1
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map15filter_map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNtB1L_10GenericArguNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands7_0NCINvNtBV_3map8map_foldB2K_TB2K_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1R_11syntax_node12RustLanguageEEuNCINvNtNtB1P_14syntax_factory12constructors14iterator_inputB2K_INtBT_9FilterMapINtNtBV_7flatten7FlatMapINtNtBb_6option8IntoIterNtB1L_16GenericParamListEINtB1P_11AstChildrenB1J_ENCB35_s6_0EB33_EE0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callB4P_NCINvNvNtB9v_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2K_EIBb3_B4U_EEB4P_E0E0E0E0INtB7_5FnMutTuB1J_EE8call_mutB3b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.q, ptr noundef %i.r)
          to label %bb.c unwind label %bb.d, !noalias !132

bb.i:                                             ; preds = %bb.g
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !129, !noundef !5 ; 3 uses
  %i.s = icmp eq ptr %.val6.i.i.i.i.i.i, null
  br i1 %i.s, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB27_9generated5nodes12GenericParamEuNCINvNtBc_10filter_map15filter_map_foldB2L_NtB2N_10GenericArguNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands7_0NCINvNtBc_3map8map_foldB48_TB48_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB29_11syntax_node12RustLanguageEEuNCINvNtNtB27_14syntax_factory12constructors14iterator_inputB48_INtB3w_9FilterMapINtBa_7FlatMapINtNtBg_6option8IntoIterNtB2N_16GenericParamListEB24_NCB4t_s6_0EB4r_EE0NCINvNvB1j_8for_each4callB6d_NCINvNvNtB1n_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB48_EIBbt_B6i_EEB6d_E0E0E0E0E0B4z_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !noalias !132, !noundef !5
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !noalias !132
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB27_9generated5nodes12GenericParamEuNCINvNtBc_10filter_map15filter_map_foldB2L_NtB2N_10GenericArguNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands7_0NCINvNtBc_3map8map_foldB48_TB48_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB29_11syntax_node12RustLanguageEEuNCINvNtNtB27_14syntax_factory12constructors14iterator_inputB48_INtB3w_9FilterMapINtBa_7FlatMapINtNtBg_6option8IntoIterNtB2N_16GenericParamListEB24_NCB4t_s6_0EB4r_EE0NCINvNvB1j_8for_each4callB6d_NCINvNvNtB1n_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB48_EIBbt_B6i_EEB6d_E0E0E0E0E0B4z_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i.i.i.i.i.i) #27
          to label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB27_9generated5nodes12GenericParamEuNCINvNtBc_10filter_map15filter_map_foldB2L_NtB2N_10GenericArguNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands7_0NCINvNtBc_3map8map_foldB48_TB48_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB29_11syntax_node12RustLanguageEEuNCINvNtNtB27_14syntax_factory12constructors14iterator_inputB48_INtB3w_9FilterMapINtBa_7FlatMapINtNtBg_6option8IntoIterNtB2N_16GenericParamListEB24_NCB4t_s6_0EB4r_EE0NCINvNvB1j_8for_each4callB6d_NCINvNvNtB1n_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB48_EIBbt_B6i_EEB6d_E0E0E0E0E0B4z_.exit.i.i.i.i unwind label %.body.i.i.i.i, !noalias !132

bb.l:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !132
  unreachable

_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB27_9generated5nodes12GenericParamEuNCINvNtBc_10filter_map15filter_map_foldB2L_NtB2N_10GenericArguNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands7_0NCINvNtBc_3map8map_foldB48_TB48_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB29_11syntax_node12RustLanguageEEuNCINvNtNtB27_14syntax_factory12constructors14iterator_inputB48_INtB3w_9FilterMapINtBa_7FlatMapINtNtBg_6option8IntoIterNtB2N_16GenericParamListEB24_NCB4t_s6_0EB4r_EE0NCINvNvB1j_8for_each4callB6d_NCINvNvNtB1n_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB48_EIBbt_B6i_EEB6d_E0E0E0E0E0B4z_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !123
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB27_9generated5nodes12GenericParamEuNCINvNtBc_10filter_map15filter_map_foldB2L_NtB2N_10GenericArguNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands7_0NCINvNtBc_3map8map_foldB48_TB48_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB29_11syntax_node12RustLanguageEEuNCINvNtNtB27_14syntax_factory12constructors14iterator_inputB48_INtB3w_9FilterMapINtBa_7FlatMapINtNtBg_6option8IntoIterNtB2N_16GenericParamListEB24_NCB4t_s6_0EB4r_EE0NCINvNvB1j_8for_each4callB6d_NCINvNvNtB1n_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB48_EIBbt_B6i_EEB6d_E0E0E0E0E0B4z_.exit.i.i.i.i, %bb.a
  %i.y = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  %.not16.i.i.i.i.i.i = icmp ne ptr %.sroa.5.0.copyload.i.i, null
  %or.cond.not.i.i = select i1 %i.y, i1 %.not16.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %.lr.ph.split.us.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4C_13FlattenCompatppE9iter_fold7flattenINtB1r_11AstChildrenNtB1n_12GenericParamEuNCINvNvXsi_B4C_B4P_B3N_4fold7flattenB5w_uNCINvNtB8_10filter_map15filter_map_foldB5Q_NtB1n_10GenericArguNCB2t_s7_0NCINvB6_8map_foldB7y_TB7y_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1t_11syntax_node12RustLanguageEEuNCINvNtNtB1r_14syntax_factory12constructors14iterator_inputB7y_INtB6W_9FilterMapINtB4C_7FlatMapBX_B5w_B2r_EB7R_EE0NCINvNvB3N_8for_each4callB8m_NCINvNvNtB3R_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB7y_EIBcN_B8r_EEB8m_E0E0E0E0E0E0EB2z_.exit.i.i.i.i

.body.thread40.i.i.i.i:                           ; preds = %bb.ak, %bb.u, %bb.o
  %.sroa.03.0.ph.i.i.i.i = phi i1 [ true, %bb.o ], [ true, %bb.u ], [ false, %bb.ak ]
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0EEEB33_.exit.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.k
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 48 ; 6 uses
  %i.aa = load i32, ptr %i.z, align 4, !noalias !133, !noundef !5 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.split.us.i.i.i.i.i.i, label %bb.n, !prof !4

bb.n:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  %i.ac = add nuw i32 %i.aa, 1
  store i32 %i.ac, ptr %i.z, align 4, !noalias !133
  %i.ad = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.sroa.5.0.copyload.i.i)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.us.i.i.i.i.i.i unwind label %.loopexit.split.us.i.i.i.i.i.i, !noalias !133

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.us.i.i.i.i.i.i: ; preds = %bb.n
  %i.ae = load i32, ptr %i.z, align 4, !noalias !133, !noundef !5
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.z, align 4, !noalias !133
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.o, label %_RNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0B7_.exit.i.us.i.i.i.i.i.i

bb.o:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.us.i.i.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.copyload.i.i) #27
          to label %_RNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0B7_.exit.i.us.i.i.i.i.i.i unwind label %.body.thread40.i.i.i.i, !noalias !132

_RNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0B7_.exit.i.us.i.i.i.i.i.i: ; preds = %bb.o, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.us.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !138
  store ptr %i.ad, ptr %i.d, align 8, !noalias !141
  store ptr %i.g, ptr %i.c, align 8, !noalias !141
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %_RNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0B7_.exit.i.us.i.i.i.i.i.i
  %i.ah = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes12GenericParamENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.q unwind label %bb.x, !noalias !132 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 2 uses
  %.not.i.i.i.i.us.i.i.i.i.i.i = icmp eq i64 %i.ai, -1
  br i1 %.not.i.i.i.i.us.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map15filter_map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNtB1L_10GenericArguNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands7_0NCINvNtBV_3map8map_foldB2K_TB2K_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1R_11syntax_node12RustLanguageEEuNCINvNtNtB1P_14syntax_factory12constructors14iterator_inputB2K_INtBT_9FilterMapINtNtBV_7flatten7FlatMapINtNtBb_6option8IntoIterNtB1L_16GenericParamListEINtB1P_11AstChildrenB1J_ENCB35_s6_0EB33_EE0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callB4P_NCINvNvNtB9v_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2K_EIBb3_B4U_EEB4P_E0E0E0E0INtB7_5FnMutTuB1J_EE8call_mutB3b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.ai, ptr noundef %i.aj)
          to label %bb.p unwind label %bb.x, !noalias !132

bb.s:                                             ; preds = %bb.q
  %.val6.i.i.i.i.us.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !141, !noundef !5 ; 3 uses
  %i.ak = icmp eq ptr %.val6.i.i.i.i.us.i.i.i.i.i.i, null
  br i1 %i.ak, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListINtB10_11AstChildrenNtBW_12GenericParamEuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0NCINvNvMsg_NtB6_7flattenINtB4a_13FlattenCompatppE9iter_fold7flattenB1Z_uNCINvNvXsi_B4a_B4n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1Z_uNCINvNtB6_10filter_map15filter_map_foldB2j_NtBW_10GenericArguNCB2G_s7_0NCIB2_B6Z_TB6Z_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB12_11syntax_node12RustLanguageEEuNCINvNtNtB10_14syntax_factory12constructors14iterator_inputB6Z_INtB6n_9FilterMapINtB4a_7FlatMapINtNtBa_6option8IntoIterBU_EB1Z_B2E_EB7h_EE0NCINvNvB5s_8for_each4callB7B_NCINvNvNtB5w_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB6Z_EIBcr_B7G_EEB7B_E0E0E0E0E0E0E0B2M_.exit.us.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.us.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !132, !noundef !5
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !noalias !132
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.u, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListINtB10_11AstChildrenNtBW_12GenericParamEuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0NCINvNvMsg_NtB6_7flattenINtB4a_13FlattenCompatppE9iter_fold7flattenB1Z_uNCINvNvXsi_B4a_B4n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1Z_uNCINvNtB6_10filter_map15filter_map_foldB2j_NtBW_10GenericArguNCB2G_s7_0NCIB2_B6Z_TB6Z_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB12_11syntax_node12RustLanguageEEuNCINvNtNtB10_14syntax_factory12constructors14iterator_inputB6Z_INtB6n_9FilterMapINtB4a_7FlatMapINtNtBa_6option8IntoIterBU_EB1Z_B2E_EB7h_EE0NCINvNvB5s_8for_each4callB7B_NCINvNvNtB5w_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB6Z_EIBcr_B7G_EEB7B_E0E0E0E0E0E0E0B2M_.exit.us.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i.i.i.i.us.i.i.i.i.i.i) #27
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListINtB10_11AstChildrenNtBW_12GenericParamEuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0NCINvNvMsg_NtB6_7flattenINtB4a_13FlattenCompatppE9iter_fold7flattenB1Z_uNCINvNvXsi_B4a_B4n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1Z_uNCINvNtB6_10filter_map15filter_map_foldB2j_NtBW_10GenericArguNCB2G_s7_0NCIB2_B6Z_TB6Z_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB12_11syntax_node12RustLanguageEEuNCINvNtNtB10_14syntax_factory12constructors14iterator_inputB6Z_INtB6n_9FilterMapINtB4a_7FlatMapINtNtBa_6option8IntoIterBU_EB1Z_B2E_EB7h_EE0NCINvNvB5s_8for_each4callB7B_NCINvNvNtB5w_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB6Z_EIBcr_B7G_EEB7B_E0E0E0E0E0E0E0B2M_.exit.us.i.i.i.i.i.i unwind label %.body.thread40.i.i.i.i, !noalias !132

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListINtB10_11AstChildrenNtBW_12GenericParamEuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0NCINvNvMsg_NtB6_7flattenINtB4a_13FlattenCompatppE9iter_fold7flattenB1Z_uNCINvNvXsi_B4a_B4n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1Z_uNCINvNtB6_10filter_map15filter_map_foldB2j_NtBW_10GenericArguNCB2G_s7_0NCIB2_B6Z_TB6Z_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB12_11syntax_node12RustLanguageEEuNCINvNtNtB10_14syntax_factory12constructors14iterator_inputB6Z_INtB6n_9FilterMapINtB4a_7FlatMapINtNtBa_6option8IntoIterBU_EB1Z_B2E_EB7h_EE0NCINvNvB5s_8for_each4callB7B_NCINvNvNtB5w_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB6Z_EIBcr_B7G_EEB7B_E0E0E0E0E0E0E0B2M_.exit.us.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !138
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21coerce_pointee_expands6_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4C_13FlattenCompatppE9iter_fold7flattenINtB1r_11AstChildrenNtB1n_12GenericParamEuNCINvNvXsi_B4C_B4P_B3N_4fold7flattenB5w_uNCINvNtB8_10filter_map15filter_map_foldB5Q_NtB1n_10GenericArguNCB2t_s7_0NCINvB6_8map_foldB7y_TB7y_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1t_11syntax_node12RustLanguageEEuNCINvNtNtB1r_14syntax_factory12constructors14iterator_inputB7y_INtB6W_9FilterMapINtB4C_7FlatMapBX_B5w_B2r_EB7R_EE0NCINvNvB3N_8for_each4callB8m_NCINvNvNtB3R_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB7y_EIBcN_B8r_EEB8m_E0E0E0E0E0E0EB2z_.exit.i.i.i.i

.loopexit.split.us.i.i.i.i.i.i:                   ; preds = %bb.n
  %lpad.loopexit.us.i.i.i.i.i.i = landingpad { ptr, i32 }
end_hunk_0
