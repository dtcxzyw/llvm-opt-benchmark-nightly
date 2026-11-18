Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.11?download=true
inline.NumInlined: 4635
inline.NumDeleted: 1658
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken8tree_top:bb.a
  store i32 %i.ae, ptr %i.ac, align 4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1q_B1o_6parentEECsiU5vK8fN4ZC_11ide_assists.exit11.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1q_B1o_6parentEECsiU5vK8fN4ZC_11ide_assists.exit11.i unwind label %bb.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1q_B1o_6parentEECsiU5vK8fN4ZC_11ide_assists.exit11.i: ; preds = %bb.r, %bb.q, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.o, %bb.n, %bb.m
  %eh.lpad-body814.i = phi { ptr, i32 } [ %i.ab, %bb.r ], [ %i.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEECsiU5vK8fN4ZC_11ide_assists.exit.i ], [ %i.ab, %bb.q ], [ %i.k, %bb.o ], [ %i.k, %bb.m ], [ %i.k, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body814.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B18_B16_6parentENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB29_4last4someB16_EECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvYINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4last4someNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEINtNtNtBf_3ops8function5FnMutTINtNtBf_6option6OptionB1c_EB1c_EE8call_mutCsiU5vK8fN4ZC_11ide_assists.exit.i
  ret ptr %.sroa.0.021.i

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5_12FunctionBody10from_range(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1237 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [8 x i8], align 4                 ; 5 uses
  store i32 %2, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  store i32 %3, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !19 ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %i.k, align 4
  %i.o = invoke { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %1)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit unwind label %.thread132 ; 2 uses

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc58 unwind label %.thread132

.noexc58:                                         ; preds = %bb.c
  unreachable

.thread132:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i89, %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit: ; preds = %bb.b
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.p, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4v_12FunctionBody10from_range0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB4p_s_0E0E0B4z_.exit.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit
  %i.v = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc60 unwind label %bb.o   ; 2 uses

.noexc60:                                         ; preds = %bb.d
  %i.w = extractvalue { i64, ptr } %i.v, 0        ; 4 uses
  %.not.i59 = icmp eq i64 %i.w, 2
  br i1 %.not.i59, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EEEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.e

bb.e:                                             ; preds = %.noexc60
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1238
  store i64 %i.w, ptr %i.f, align 8, !noalias !1238
  store ptr %i.x, ptr %i.t, align 8, !noalias !1238
  %i.y = invoke fastcc noundef zeroext i1 @_RNCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_12FunctionBody10from_range0Bb_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.f unwind label %bb.m, !noalias !1239

bb.f:                                             ; preds = %bb.e
  br i1 %i.y, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1238
  store i64 %i.w, ptr %i.e, align 8, !noalias !1238
  store ptr %i.x, ptr %i.u, align 8, !noalias !1238
  %i.z = load i32, ptr %i.i, align 4, !noalias !1240, !noundef !19
  %i.aa = load i32, ptr %i.j, align 4, !noalias !1240, !noundef !19
  %i.ab = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.i unwind label %bb.h, !noalias !1239 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !1239, !noundef !19
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !noalias !1239
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, label %.thread135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i: ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.x) #32
          to label %.thread135 unwind label %bb.k, !noalias !1239

bb.i:                                             ; preds = %bb.g
  %i.ah = extractvalue { i32, i32 } %i.ab, 0
  %i.ai = extractvalue { i32, i32 } %i.ab, 1
  %..i.i.i.i.i.i.i = call noundef i32 @llvm.umax.i32(i32 %i.ah, i32 %i.z)
  %..i2.i.i.i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %i.ai, i32 %i.aa)
  %.sink.i.i.i.i.i.i = icmp ult i32 %..i.i.i.i.i.i.i, %..i2.i.i.i.i.i.i
  br i1 %.sink.i.i.i.i.i.i, label %.noexc61, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !1239, !noundef !19
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !noalias !1239
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i.i.i, label %.noexc61

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i.i.i: ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.x) #32
          to label %.noexc61 unwind label %bb.o

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1239
  unreachable

bb.l:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !1239, !noundef !19
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !noalias !1239
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4v_12FunctionBody10from_range0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB4p_s_0E0E0B4z_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i: ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.x) #32
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4v_12FunctionBody10from_range0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB4p_s_0E0E0B4z_.exit.i unwind label %bb.o

.noexc61:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i.i.i, %bb.j, %bb.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.w, %bb.i ], [ 2, %bb.j ], [ 2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1238
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4v_12FunctionBody10from_range0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB4p_s_0E0E0B4z_.exit.i

bb.m:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !noalias !1239, !noundef !19
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !noalias !1239
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i8.i.i, label %.thread135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i8.i.i: ; preds = %bb.m
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.x) #32
          to label %.thread135 unwind label %bb.n, !noalias !1239

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i8.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1239
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4v_12FunctionBody10from_range0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB4p_s_0E0E0B4z_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i, %.noexc61, %bb.l
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.noexc61 ], [ 2, %bb.l ], [ 2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1238
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i, 2
  br i1 %.not.i.i, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105: ; preds = %bb.br, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i95, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.bp, %bb.bj, %bb.bs, %bb.bz, %.thread176, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i103, %bb.p
  %.sroa.08.0 = phi i8 [ %.sroa.08.1174, %bb.bz ], [ %.sroa.08.3, %bb.p ], [ %.sroa.08.1174, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i103 ], [ %.sroa.08.1174, %.thread176 ], [ %.sroa.08.3, %bb.bs ], [ %.sroa.08.3, %bb.bj ], [ %.sroa.08.3, %bb.bp ], [ %.sroa.08.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %.sroa.08.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i95 ], [ %.sroa.08.3, %bb.br ]
  %.pn20.pn = phi { ptr, i32 } [ %.pn20175, %bb.bz ], [ %lpad.thr_comm.split-lp189, %bb.p ], [ %.pn20175, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i103 ], [ %.pn20175, %.thread176 ], [ %i.gf, %bb.bs ], [ %i.ey, %bb.bj ], [ %i.fq, %bb.bp ], [ %i.fq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %i.ey, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i95 ], [ %i.ey, %bb.br ] ; 2 uses
  %i.ay = trunc nuw i8 %.sroa.08.0 to i1
  br i1 %i.ay, label %.thread135, label %.thread

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i.i.i, %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4v_12FunctionBody10from_range0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB4p_s_0E0E0B4z_.exit.i, %.noexc60
  %.sroa.0111.0156 = phi i64 [ 2, %.noexc60 ], [ %.sroa.0.0.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4v_12FunctionBody10from_range0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB4p_s_0E0E0B4z_.exit.i ] ; 4 uses
  %.sroa.7.0154 = phi ptr [ undef, %.noexc60 ], [ %i.x, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4v_12FunctionBody10from_range0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB4p_s_0E0E0B4z_.exit.i ] ; 10 uses
  %i.ba = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %1)
          to label %bb.q unwind label %.thread190 ; 2 uses

.thread190:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i83, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i15.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EEEECsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.08.2.ph = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EEEECsiU5vK8fN4ZC_11ide_assists.exit ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i15.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i83 ]
  %lpad.thr_comm188 = landingpad { ptr, i32 }
          cleanup
  br label %.thread176

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i87
  %lpad.thr_comm.split-lp189 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EEEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.bb = extractvalue { i64, ptr } %i.ba, 0
  %i.bc = extractvalue { i64, ptr } %i.ba, 1      ; 14 uses
  %.val46 = load i32, ptr %i.i, align 4
  %.val47 = load i32, ptr %i.j, align 4
  %.not.i64 = icmp eq i64 %i.bb, -1
  br i1 %.not.i64, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  %i.be = load i8, ptr %i.bd, align 4, !range !21, !noundef !19
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.t, label %bb.s, !prof !31

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !noundef !19
  br label %.noexc.i

bb.t:                                             ; preds = %bb.r
  %i.bi = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.bc)
          to label %.noexc.i unwind label %bb.z

.noexc.i:                                         ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i.i65 = phi i32 [ %i.bh, %bb.s ], [ %i.bi, %bb.t ] ; 3 uses
  %i.bj = load i64, ptr %i.bc, align 8, !range !20, !noundef !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bl = trunc nuw i64 %i.bj to i1
  %i.bm = load ptr, ptr %i.bk, align 8, !nonnull !19, !noundef !19 ; 2 uses
  br i1 %i.bl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.noexc.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !19 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 4294967295
  %i.bq = shl nuw i64 %i.bo, 32
  %.sroa.09.0.insert.insert.i.i.i.i = select i1 %i.bp, i64 513, i64 %i.bq ; 2 uses
  %i.br = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i to i1
  br i1 %i.br, label %bb.v, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i, !prof !31

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.d, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #36
          to label %.noexc12.i unwind label %bb.z

.noexc12.i:                                       ; preds = %bb.v
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i: ; preds = %bb.u
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i to i32
  br label %bb.x

bb.w:                                             ; preds = %.noexc.i
  %i.bs = load i32, ptr %i.bm, align 8, !noundef !19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i
  %.sroa.02.0.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i ], [ %i.bs, %bb.w ]
  %i.bt = add i32 %.sroa.02.0.i.i.i, %.sroa.0.0.i.i.i65 ; 2 uses
  %.not.i.i.i = icmp ugt i32 %.sroa.0.0.i.i.i65, %i.bt
  br i1 %.not.i.i.i, label %bb.y, label %bb.aa, !prof !31

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #36
          to label %.noexc13.i unwind label %bb.z

.noexc13.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.t
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !19
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %.thread176

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %bb.z
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bc) #32
          to label %.thread176 unwind label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %..i.i.i.i = call noundef i32 @llvm.umax.i32(i32 %.sroa.0.0.i.i.i65, i32 %.val46)
  %..i2.i.i.i = call noundef i32 @llvm.umin.i32(i32 %i.bt, i32 %.val47)
  %.not3.i = icmp ult i32 %..i2.i.i.i, %..i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 8, !noundef !19 ; 2 uses
  br i1 %.not3.i, label %bb.ab, label %bb.bc

bb.ab:                                            ; preds = %bb.aa
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 8
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i15.i, label %bb.ad

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i15.i: ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bc) #32
          to label %bb.ad unwind label %.thread190

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ad:                                            ; preds = %bb.q, %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i15.i
  %i.ce = load i64, ptr %i.h, align 8, !range !27, !noundef !19
  %i.cf = load ptr, ptr %i.r, align 8
  %i.cg = load ptr, ptr %i.s, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %.val48 = load i32, ptr %i.cg, align 4, !alias.scope !1241
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.val49 = load i32, ptr %i.ch, align 4, !alias.scope !1241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ce, ptr %i.c, align 8, !noalias !1242
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.cf, ptr %i.ci, align 8, !noalias !1242
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aw, %bb.ad
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.ad ], [ %.sroa.0.0.i.i.i71, %bb.aw ] ; 9 uses
  %.sroa.7.0.i.i = phi ptr [ undef, %bb.ad ], [ %.sroa.3.0.i.i.i, %bb.aw ] ; 17 uses
  %i.cl = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.af unwind label %bb.ax, !noalias !1242 ; 2 uses

.body.thread8.i.i:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i72
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i69

bb.af:                                            ; preds = %bb.ae
  %i.cm = extractvalue { i64, ptr } %i.cl, 0      ; 6 uses
  %.not.i.i70 = icmp eq i64 %i.cm, 2
  br i1 %.not.i.i70, label %bb.au, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = extractvalue { i64, ptr } %i.cl, 1      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1242
  store i64 %i.cm, ptr %i.b, align 8, !noalias !1242
  store ptr %i.cn, ptr %i.cj, align 8, !noalias !1242
  %i.co = invoke fastcc noundef zeroext i1 @_RNCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_12FunctionBody10from_range0Bb_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.ah unwind label %bb.ar, !noalias !1242

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.co, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !noalias !1242, !noundef !19
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !noalias !1242
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i72, label %bb.aw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i72: ; preds = %bb.ai
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cn) #32
          to label %bb.aw unwind label %.body.thread8.i.i, !noalias !1242

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1242
  store i64 %i.cm, ptr %i.a, align 8, !noalias !1242
  store ptr %i.cn, ptr %i.ck, align 8, !noalias !1242
  %i.ct = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.ak unwind label %bb.ao, !noalias !1242 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.cu = extractvalue { i32, i32 } %i.ct, 0
  %i.cv = extractvalue { i32, i32 } %i.ct, 1
  %..i.i.i.i.i.i.i73 = call noundef i32 @llvm.umax.i32(i32 %i.cu, i32 %.val48)
  %..i2.i.i.i.i.i.i74 = call noundef i32 @llvm.umin.i32(i32 %i.cv, i32 %.val49)
  %.sink.i.i.i.i.i.i75 = icmp ult i32 %..i.i.i.i.i.i.i73, %..i2.i.i.i.i.i.i74
  br i1 %.sink.i.i.i.i.i.i75, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !1242, !noundef !19
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4, !noalias !1242
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5_12FunctionBody10from_range:bb.a
bb.aw:                                            ; preds = %.noexc15.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i72, %bb.ai
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %.noexc15.i.i ], [ %.sroa.7.0.i.i, %bb.ai ], [ %.sroa.7.0.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i72 ]
  %.sroa.0.0.i.i.i71 = phi i64 [ %.sroa.0.0.i.i.i.i, %.noexc15.i.i ], [ %.sroa.01.0.i.i, %bb.ai ], [ %.sroa.01.0.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1242
  br label %bb.ae

bb.ax:                                            ; preds = %bb.ae
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eg = icmp eq i64 %.sroa.01.0.i.i, 2
  br i1 %i.eg, label %.body.thread.i.i69, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i) ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 48 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !noalias !1242, !noundef !19
  %i.ej = add i32 %i.ei, -1                       ; 2 uses
  store i32 %i.ej, ptr %i.eh, align 4, !noalias !1242
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i16.i.i, label %.body.thread.i.i69

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i16.i.i: ; preds = %bb.ay
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0.i.i) #32
          to label %.body.thread.i.i69 unwind label %bb.az, !noalias !1242

bb.az:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i18.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i16.i.i
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1242
  unreachable

.body.thread.i.i69:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i16.i.i, %bb.ay, %bb.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i, %bb.at, %.body.thread.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i, %bb.aq, %.noexc15.i.i.i.i, %.body.thread8.i.i
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread8.i.i ], [ %i.df, %.noexc15.i.i.i.i ], [ %i.dq, %bb.at ], [ %i.dq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i ], [ %i.dq, %.body.thread.i.i.i ], [ %i.df, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i ], [ %i.df, %bb.aq ], [ %lpad.thr_comm.split-lp.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i16.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.ax ], [ %lpad.thr_comm.split-lp.i.i, %bb.ay ] ; 3 uses
  %.val10.i.i = load i64, ptr %i.c, align 8, !range !27, !noalias !1242, !noundef !19
  %.val11.i.i = load ptr, ptr %i.ci, align 8, !noalias !1242 ; 3 uses
  %i.em = icmp eq i64 %.val10.i.i, 2
  br i1 %i.em, label %.thread176, label %bb.ba

bb.ba:                                            ; preds = %.body.thread.i.i69
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i) ]
  %i.en = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 48 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !noalias !1242, !noundef !19
  %i.ep = add i32 %i.eo, -1                       ; 2 uses
  store i32 %i.ep, ptr %i.en, align 4, !noalias !1242
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i18.i.i, label %.thread176

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i18.i.i: ; preds = %bb.ba
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val11.i.i) #32
          to label %.thread176 unwind label %bb.az, !noalias !1242

bb.bb:                                            ; preds = %bb.bd
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load i32, ptr %i.bz, align 8, !noundef !19
  %i.et = add i32 %i.es, -1                       ; 2 uses
  store i32 %i.et, ptr %i.bz, align 8
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %.thread176

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %bb.bb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bc) #32
          to label %.thread176 unwind label %bb.be

bb.bc:                                            ; preds = %bb.aa
  switch i32 %i.ca, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit85 [
    i32 -1, label %bb.bd
    i32 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i83
  ], !prof !46

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc82 unwind label %bb.bb

.noexc82:                                         ; preds = %bb.bd
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i83: ; preds = %bb.bc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bc) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit85 unwind label %.thread190

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit85: ; preds = %bb.bc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i83, %bb.bf
  %.sroa.08.3 = phi i8 [ 0, %bb.bf ], [ 1, %bb.bc ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i83 ] ; 9 uses
  %.sroa.3.0 = phi ptr [ %.sroa.7.0.i.i, %bb.bf ], [ %i.bc, %bb.bc ], [ %i.bc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i83 ] ; 7 uses
  %.sroa.0.0 = phi i64 [ %.sroa.01.0.i.i, %bb.bf ], [ 0, %bb.bc ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i83 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not16 = icmp eq i64 %.sroa.0111.0156, 2
  br i1 %.not16, label %.noexc, label %bb.bg

bb.be:                                            ; preds = %bb.cb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i106, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i103, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i95, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.bs
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bf:                                            ; preds = %bb.av, %bb.au, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit85

bb.bg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit85
  %.not17 = icmp eq i64 %.sroa.0.0, 2
  br i1 %.not17, label %bb.bo, label %bb.bq

.noexc:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit85
  %i.ew = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, label %bb.bh, !prof !28

bb.bh:                                            ; preds = %.noexc
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %bb.bi, label %.noexc26

.noexc26:                                         ; preds = %bb.bi, %bb.bh
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 50)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 50)
          to label %.noexc26 unwind label %bb.bj

bb.bj:                                            ; preds = %.noexc26, %bb.bi
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not19 = icmp eq i64 %.sroa.0.0, 2
  br i1 %.not19, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105, label %bb.br

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit:     ; preds = %.noexc, %.noexc26
  store i64 -1, ptr %0, align 8
  %i.ez = icmp eq i64 %.sroa.0.0, 2
  br i1 %i.ez, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.bk

bb.bk:                                            ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 48 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !noundef !19
  %i.fc = add i32 %i.fb, -1                       ; 2 uses
  store i32 %i.fc, ptr %i.fa, align 4
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i87, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i87: ; preds = %bb.bk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.3.0) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.bk, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fe = trunc nuw i8 %.sroa.08.3 to i1
  br i1 %i.fe, label %bb.bm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit: ; preds = %bb.bn, %bb.bm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i89, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ff = load i32, ptr %i.k, align 4, !noundef !19
  %i.fg = add i32 %i.ff, -1                       ; 2 uses
  store i32 %i.fg, ptr %i.k, align 4
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit

bb.bl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit

bb.bm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit
  %.val54 = load i64, ptr %i.h, align 8, !range !27, !noundef !19
  %.val55 = load ptr, ptr %i.r, align 8           ; 3 uses
  %i.fi = icmp eq i64 %.val54, 2
  br i1 %i.fi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val55) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.val55, i64 48 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !noundef !19
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i89, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i89: ; preds = %bb.bn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val55) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit unwind label %.thread132

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.bl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit102
  ret void

bb.bo:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0154) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.7.0154, i64 48 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !noundef !19 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, -1
  br i1 %i.fp, label %.invoke, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit, !prof !31

.invoke:                                          ; preds = %bb.bo
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.cont unwind label %bb.bp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bp:                                            ; preds = %.invoke
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0154) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.7.0154, i64 48 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !noundef !19
  %i.ft = add i32 %i.fs, -1                       ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 4
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %bb.bp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0154) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105 unwind label %bb.be

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.bo
  %i.fv = add nuw i32 %i.fo, 1
  store i32 %i.fv, ptr %i.fn, align 4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bg, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0111.0156.sink = phi i64 [ %.sroa.0111.0156, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.0.0, %bb.bg ]
  %.sroa.7.0154.sink = phi ptr [ %.sroa.7.0154, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.3.0, %bb.bg ]
  store i64 %.sroa.0111.0156, ptr %i.g, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.7.0154, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0111.0156.sink, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.7.0154.sink, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i8 0, ptr %i.fz, align 8
  %i.ga = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.bt unwind label %bb.bs     ; 2 uses

bb.br:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 48 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !noundef !19
  %i.gd = add i32 %i.gc, -1                       ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 4
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i95, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i95: ; preds = %bb.br
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.3.0) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105 unwind label %bb.be

bb.bs:                                            ; preds = %bb.bv, %bb.bt, %bb.bq
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105 unwind label %bb.be

bb.bt:                                            ; preds = %bb.bq
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.gh = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gg)
          to label %bb.bu unwind label %bb.bs     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.gi = extractvalue { i32, i32 } %i.ga, 1
  %i.gj = extractvalue { i32, i32 } %i.ga, 0
  %i.gk = extractvalue { i32, i32 } %i.gh, 0
  %i.gl = extractvalue { i32, i32 } %i.gh, 1
  %..i.i = call noundef i32 @llvm.umin.i32(i32 %i.gk, i32 %i.gj) ; 2 uses
  %..i2.i = call noundef i32 @llvm.umax.i32(i32 %i.gl, i32 %i.gi) ; 2 uses
  %.not.i98 = icmp ugt i32 %..i.i, %..i2.i
  br i1 %.not.i98, label %bb.bv, label %bb.bw, !prof !31

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #36
          to label %.noexc99 unwind label %bb.bs

.noexc99:                                         ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %..i.i, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %..i2.i, ptr %.sroa.67.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gm = trunc nuw i8 %.sroa.08.3 to i1
  br i1 %i.gm, label %bb.bx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit102

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit102: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i100, %bb.by, %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit

bb.bx:                                            ; preds = %bb.bw
  %.val52 = load i64, ptr %i.h, align 8, !range !27, !noundef !19
  %.val53 = load ptr, ptr %i.r, align 8           ; 3 uses
  %i.gn = icmp eq i64 %.val52, 2
  br i1 %i.gn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit102, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53) ]
  %i.go = getelementptr inbounds nuw i8, ptr %.val53, i64 48 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !noundef !19
  %i.gq = add i32 %i.gp, -1                       ; 2 uses
  store i32 %i.gq, ptr %i.go, align 4
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i100, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit102

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i100: ; preds = %bb.by
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val53) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB38_12FunctionBody10from_range0ENCB32_s_0EEB3c_.exit102

.thread176:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.bb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i18.i.i, %bb.ba, %.body.thread.i.i69, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.z, %.thread190
  %.pn20175 = phi { ptr, i32 } [ %eh.lpad-body7.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i18.i.i ], [ %lpad.thr_comm188, %.thread190 ], [ %i.bu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i ], [ %i.bu, %bb.z ], [ %eh.lpad-body7.i.i, %.body.thread.i.i69 ], [ %eh.lpad-body7.i.i, %bb.ba ], [ %i.er, %bb.bb ], [ %i.er, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ] ; 3 uses
  %.sroa.08.1174 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i18.i.i ], [ %.sroa.08.2.ph, %.thread190 ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i ], [ 1, %bb.z ], [ 0, %.body.thread.i.i69 ], [ 0, %bb.ba ], [ 1, %bb.bb ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ] ; 3 uses
  %i.gs = icmp eq i64 %.sroa.0111.0156, 2
  br i1 %i.gs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105, label %bb.bz

bb.bz:                                            ; preds = %.thread176
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0154) ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.7.0154, i64 48 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !noundef !19
  %i.gv = add i32 %i.gu, -1                       ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 4
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i103, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i103: ; preds = %bb.bz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0154) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105 unwind label %bb.be

.thread135:                                       ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i8.i.i, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105
  %.pn20.pn139 = phi { ptr, i32 } [ %.pn20.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105 ], [ %i.az, %bb.o ], [ %i.as, %bb.m ], [ %i.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i ], [ %i.ac, %bb.h ], [ %i.as, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i8.i.i ] ; 3 uses
  %.val50 = load i64, ptr %i.h, align 8, !range !27, !noundef !19
  %.val51 = load ptr, ptr %i.r, align 8           ; 3 uses
  %i.gx = icmp eq i64 %.val50, 2
  br i1 %i.gx, label %.thread, label %bb.ca

bb.ca:                                            ; preds = %.thread135
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.val51, i64 48 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !noundef !19
  %i.ha = add i32 %i.gz, -1                       ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i106, label %.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i106: ; preds = %bb.ca
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val51) #32
          to label %.thread unwind label %bb.be

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit110: ; preds = %.thread, %bb.cb
  resume { ptr, i32 } %.pn23130

.thread:                                          ; preds = %bb.ca, %.thread135, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i106, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105, %.thread132
  %.pn23130 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread132 ], [ %.pn20.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECsiU5vK8fN4ZC_11ide_assists.exit105 ], [ %.pn20.pn139, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i106 ], [ %.pn20.pn139, %.thread135 ], [ %.pn20.pn139, %bb.ca ]
  %i.hc = load i32, ptr %i.k, align 4, !noundef !19
  %i.hd = add i32 %i.hc, -1                       ; 2 uses
  store i32 %i.hd, ptr %i.k, align 4
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.cb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit110

bb.cb:                                            ; preds = %.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit110 unwind label %bb.be
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMs5_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5_12FunctionBody10text_range(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1243 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = load i64, ptr %0, align 8, !range !27, !noundef !19
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !noundef !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !noundef !19
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !noundef !19 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.j = load i8, ptr %i.i, align 4, !range !21, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !31

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.m = load i32, ptr %i.l, align 8, !noundef !19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = phi i32 [ %i.n, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %i.o = load i64, ptr %i.h, align 8, !range !20, !noundef !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = trunc nuw i64 %i.o to i1
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable:bb.a
  br i1 %i.nf, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %.noexc36.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !noundef !19 ; 2 uses
  %i.nj = icmp ugt i64 %i.ni, 4294967295
  %i.nk = shl nuw i64 %i.ni, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.nj, i64 513, i64 %i.nk ; 2 uses
  %i.nl = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.nl, label %bb.ej, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !31

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2247
  br label %.invoke84.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.ei
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  br label %bb.el

bb.ek:                                            ; preds = %.noexc36.i
  %i.nm = load i32, ptr %i.ng, align 8, !noundef !19
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.nm, %bb.ek ]
  %i.nn = add i32 %.sroa.02.0.i.i, %.sroa.0.0.i.i ; 2 uses
  %.not.i.i432 = icmp ugt i32 %.sroa.0.0.i.i, %i.nn
  br i1 %.not.i.i432, label %.invoke.i, label %bb.eo, !prof !31

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit55.i: ; preds = %bb.ex, %bb.ew, %bb.ee
  %i.no = getelementptr inbounds nuw i8, ptr %i.mi, i64 48 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !noundef !19
  %i.nq = add i32 %i.np, -1                       ; 2 uses
  store i32 %i.nq, ptr %i.no, align 4
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit684

bb.em:                                            ; preds = %.invoke.i, %.invoke84.i, %bb.eq, %bb.eh
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mn, i64 48 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !noundef !19
  %i.nv = add i32 %i.nu, -1                       ; 2 uses
  store i32 %i.nv, ptr %i.nt, align 4
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.en, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit42.i

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.mn) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit42.i unwind label %bb.ey

bb.eo:                                            ; preds = %bb.el
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mn, i64 60
  %i.ny = load i8, ptr %i.nx, align 4, !range !21, !noundef !19
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.eq, label %bb.ep, !prof !31

bb.ep:                                            ; preds = %bb.eo
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mn, i64 56
  %i.ob = load i32, ptr %i.oa, align 8, !noundef !19
  br label %.noexc50.i

bb.eq:                                            ; preds = %bb.eo
  %i.oc = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.mn)
          to label %.noexc50.i unwind label %bb.em

.noexc50.i:                                       ; preds = %bb.eq, %bb.ep
  %.sroa.0.0.i43.i = phi i32 [ %i.ob, %bb.ep ], [ %i.oc, %bb.eq ] ; 3 uses
  %i.od = load i64, ptr %i.mn, align 8, !range !20, !noundef !19
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.of = trunc nuw i64 %i.od to i1
  %i.og = load ptr, ptr %i.oe, align 8, !nonnull !19, !noundef !19 ; 2 uses
  br i1 %i.of, label %bb.er, label %bb.et

bb.er:                                            ; preds = %.noexc50.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !noundef !19 ; 2 uses
  %i.oj = icmp ugt i64 %i.oi, 4294967295
  %i.ok = shl nuw i64 %i.oi, 32
  %.sroa.09.0.insert.insert.i.i46.i = select i1 %i.oj, i64 513, i64 %i.ok ; 2 uses
  %i.ol = trunc i64 %.sroa.09.0.insert.insert.i.i46.i to i1
  br i1 %i.ol, label %bb.es, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i47.i, !prof !31

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2247
  br label %.invoke84.i

.invoke84.i:                                      ; preds = %bb.es, %bb.ej
  %.sink.i = phi ptr [ %i.l, %bb.ej ], [ %i.k, %bb.es ] ; 2 uses
  store i8 2, ptr %.sink.i, align 1, !noalias !2247
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %.sink.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #36
          to label %.cont85.i unwind label %bb.em

.cont85.i:                                        ; preds = %.invoke84.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i47.i: ; preds = %bb.er
  %.sroa.6.0.extract.shift.i.i.i48.i = lshr i64 %.sroa.09.0.insert.insert.i.i46.i, 32
  %.sroa.6.0.extract.trunc.i.i.i49.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i48.i to i32
  br label %bb.eu

bb.et:                                            ; preds = %.noexc50.i
  %i.om = load i32, ptr %i.og, align 8, !noundef !19
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i47.i
  %.sroa.02.0.i44.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i49.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i47.i ], [ %i.om, %bb.et ]
  %i.on = add i32 %.sroa.02.0.i44.i, %.sroa.0.0.i43.i ; 2 uses
  %.not.i45.i = icmp ugt i32 %.sroa.0.0.i43.i, %i.on
  br i1 %.not.i45.i, label %.invoke.i, label %bb.ev, !prof !31

.invoke.i:                                        ; preds = %bb.eu, %bb.el
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #36
          to label %.cont.i unwind label %bb.em

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ev:                                            ; preds = %bb.eu
  %.not20.i = icmp ugt i32 %i.nn, %.sroa.0.0.i43.i
  %.not21.i = icmp ule i32 %i.on, %.sroa.0.0.i.i
  %i.oo = and i1 %.not20.i, %.not21.i
  br i1 %i.oo, label %bb.ew, label %bb.gc

bb.ew:                                            ; preds = %bb.ev
  %i.op = getelementptr inbounds nuw i8, ptr %i.mn, i64 48 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 8, !noundef !19
  %i.or = add i32 %i.oq, -1                       ; 2 uses
  store i32 %i.or, ptr %i.op, align 8
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %bb.ex, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit55.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.mn) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit55.i unwind label %bb.ed

bb.ey:                                            ; preds = %bb.fc, %bb.fa, %bb.en, %bb.ec
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ez:                                            ; preds = %bb.dx
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.mh, i64 48 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !noundef !19
  %i.ox = add i32 %i.ow, -1                       ; 2 uses
  store i32 %i.ox, ptr %i.ov, align 4
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.fa, label %.body438

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.mh) #32
          to label %.body438 unwind label %bb.ey

bb.fb:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mg, i64 48 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 4, !noundef !19
  %i.pb = add i32 %i.pa, -1                       ; 2 uses
  store i32 %i.pb, ptr %i.oz, align 4
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.fc, label %.body438

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.mg) #32
          to label %.body438 unwind label %bb.ey

bb.fd:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  store i8 0, ptr %i.pd, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr %i.ax, ptr %i.pe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2248
  store ptr %i.pe, ptr %i.j, align 8, !noalias !2248
  %i.pf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.pf, align 8, !noalias !2249
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.pg = load <2 x i32>, ptr %i.bf, align 8
  store <2 x i32> %i.pg, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2249
  %i.ph = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.pd, ptr %i.ph, align 8, !noalias !2248
  %i.pi = invoke { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B1t_NtB1t_10SyntaxNode11descendants0ENvYINtNtB1v_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB2h_E4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB8_10take_whileINtB5w_9TakeWhileppEB4D_8try_fold5checkB2R_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB3k_3ast9generated5nodes4ExprENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variables1_0NCINvNvB4D_8find_map5checkB2R_B7a_NCNvB7Q_17valid_target_expr0E0E0IB6w_B6v_EEB7U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j)
          to label %bb.ff unwind label %bb.fe     ; 2 uses

bb.fe:                                            ; preds = %bb.fd
  %i.pj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B29_NtB29_10SyntaxNode11descendants0ENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2X_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variables1_0EEB5r_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ap) #34
          to label %.body438 unwind label %bb.x

bb.ff:                                            ; preds = %bb.fd
  %i.pk = extractvalue { i64, ptr } %i.pi, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2248
  %.not.i440 = icmp eq i64 %i.pk, -2
  %i.pl = extractvalue { i64, ptr } %i.pi, 1      ; 11 uses
  %spec.select.i = select i1 %.not.i440, ptr undef, ptr %i.pl
  %.not162 = icmp ugt i64 %i.pk, -3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  br i1 %.not162, label %.thread807, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  %.val.i.i.i.i445 = load ptr, ptr %i.pm, align 8, !alias.scope !2254, !nonnull !19, !noundef !19 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i445, i64 48 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !noalias !2254, !noundef !19
  %i.pp = add i32 %i.po, -1                       ; 2 uses
  store i32 %i.pp, ptr %i.pn, align 4, !noalias !2254
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %bb.fh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i445) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i unwind label %bb.fi, !noalias !2254

bb.fi:                                            ; preds = %bb.fh
  %i.pr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val3.i.i.i.i = load i64, ptr %i.ap, align 8, !range !27, !alias.scope !2254, !noundef !19
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val4.i.i.i.i = load ptr, ptr %i.ps, align 8, !alias.scope !2254 ; 3 uses
  %i.pt = icmp eq i64 %.val3.i.i.i.i, 2
  br i1 %i.pt, label %.body447, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i) ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 48 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !noalias !2254, !noundef !19
  %i.pw = add i32 %i.pv, -1                       ; 2 uses
  store i32 %i.pw, ptr %i.pu, align 4, !noalias !2254
  %i.px = icmp eq i32 %i.pw, 0
  br i1 %i.px, label %bb.fk, label %.body447

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i.i) #32
          to label %.body447 unwind label %bb.fn, !noalias !2254

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i: ; preds = %bb.fh, %bb.fg
  %.val1.i.i.i.i = load i64, ptr %i.ap, align 8, !range !27, !alias.scope !2254, !noundef !19
  %i.py = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.py, align 8, !alias.scope !2254 ; 3 uses
  %i.pz = icmp eq i64 %.val1.i.i.i.i, 2
  br i1 %i.pz, label %bb.fw, label %bb.fl

bb.fl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i) ]
  %i.qa = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 48 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !noalias !2254, !noundef !19
  %i.qc = add i32 %i.qb, -1                       ; 2 uses
  store i32 %i.qc, ptr %i.qa, align 4, !noalias !2254
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %bb.fm, label %bb.fw

bb.fm:                                            ; preds = %bb.fl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val2.i.i.i.i) #32
          to label %bb.fw unwind label %bb.fv

bb.fn:                                            ; preds = %bb.fk
  %i.qe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2254
  unreachable

.thread807:                                       ; preds = %bb.ff
  call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  %.val.i.i.i.i449 = load ptr, ptr %i.pm, align 8, !alias.scope !2259, !nonnull !19, !noundef !19 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i449, i64 48 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !noalias !2259, !noundef !19
  %i.qh = add i32 %i.qg, -1                       ; 2 uses
  store i32 %i.qh, ptr %i.qf, align 4, !noalias !2259
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.fo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i450

bb.fo:                                            ; preds = %.thread807
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i449) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i450 unwind label %bb.fp, !noalias !2259

bb.fp:                                            ; preds = %bb.fo
  %i.qj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val3.i.i.i.i453 = load i64, ptr %i.ap, align 8, !range !27, !alias.scope !2259, !noundef !19
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val4.i.i.i.i454 = load ptr, ptr %i.qk, align 8, !alias.scope !2259 ; 3 uses
  %i.ql = icmp eq i64 %.val3.i.i.i.i453, 2
  br i1 %i.ql, label %.body438, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i454) ]
  %i.qm = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i454, i64 48 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !noalias !2259, !noundef !19
  %i.qo = add i32 %i.qn, -1                       ; 2 uses
  store i32 %i.qo, ptr %i.qm, align 4, !noalias !2259
  %i.qp = icmp eq i32 %i.qo, 0
  br i1 %i.qp, label %bb.fr, label %.body438

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i.i454) #32
          to label %.body438 unwind label %bb.fu, !noalias !2259

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i450: ; preds = %bb.fo, %.thread807
  %.val1.i.i.i.i451 = load i64, ptr %i.ap, align 8, !range !27, !alias.scope !2259, !noundef !19
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val2.i.i.i.i452 = load ptr, ptr %i.qq, align 8, !alias.scope !2259 ; 3 uses
  %i.qr = icmp eq i64 %.val1.i.i.i.i451, 2
  br i1 %i.qr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B29_NtB29_10SyntaxNode11descendants0ENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2X_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variables1_0EEB5r_.exit459, label %bb.fs

bb.fs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i450
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i452) ]
  %i.qs = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i452, i64 48 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !noalias !2259, !noundef !19
  %i.qu = add i32 %i.qt, -1                       ; 2 uses
  store i32 %i.qu, ptr %i.qs, align 4, !noalias !2259
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %bb.ft, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B29_NtB29_10SyntaxNode11descendants0ENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2X_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variables1_0EEB5r_.exit459

bb.ft:                                            ; preds = %bb.fs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val2.i.i.i.i452) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B29_NtB29_10SyntaxNode11descendants0ENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2X_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variables1_0EEB5r_.exit459 unwind label %bb.dm

bb.fu:                                            ; preds = %bb.fr
  %i.qw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2259
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B29_NtB29_10SyntaxNode11descendants0ENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2X_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variables1_0EEB5r_.exit459: ; preds = %bb.fs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i450, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit684

.body447:                                         ; preds = %bb.ga, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.fv, %bb.fk, %bb.fj, %bb.fi
  %.pn165 = phi { ptr, i32 } [ %i.pr, %bb.fi ], [ %i.rb, %bb.fv ], [ %i.pr, %bb.fk ], [ %i.pr, %bb.fj ], [ %i.rh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %i.rh, %bb.ga ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pl) ]
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pl, i64 48 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !noundef !19
  %i.qz = add i32 %i.qy, -1                       ; 2 uses
  store i32 %i.qz, ptr %i.qx, align 4
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i460, label %.body438

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i460: ; preds = %.body447
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.pl) #32
          to label %.body438 unwind label %bb.x

bb.fv:                                            ; preds = %bb.fx, %bb.fm
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body447

bb.fw:                                            ; preds = %bb.fm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pl) ]
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pl, i64 48 ; 5 uses
  %i.rd = load i32, ptr %i.rc, align 4, !noundef !19 ; 3 uses
  %i.re = icmp eq i32 %i.rd, -1
  br i1 %i.re, label %bb.fx, label %bb.fy, !prof !31

bb.fx:                                            ; preds = %bb.fw
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc463 unwind label %bb.fv

.noexc463:                                        ; preds = %bb.fx
  unreachable

bb.fy:                                            ; preds = %bb.fw
  %i.rf = add nuw i32 %i.rd, 1                    ; 2 uses
  store i32 %i.rf, ptr %i.rc, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pl) ]
  %i.rg = icmp eq i32 %i.rf, -1
  br i1 %i.rg, label %bb.fz, label %bb.gb, !prof !31

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc465 unwind label %bb.ga

.noexc465:                                        ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %bb.fz
  %i.rh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pl) ]
  %i.ri = load i32, ptr %i.rc, align 4, !noundef !19
  %i.rj = add i32 %i.ri, -1                       ; 2 uses
  store i32 %i.rj, ptr %i.rc, align 4
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %.body447

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %bb.ga
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.pl) #32
          to label %.body447 unwind label %bb.x

bb.gb:                                            ; preds = %bb.fy
  %i.rl = add nuw i32 %i.rd, 2
  store i32 %i.rl, ptr %i.rc, align 4
  store i64 0, ptr %i.ao, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.pl, ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 0, ptr %i.rn, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.pl, ptr %i.ro, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i8 0, ptr %i.rp, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit561

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit561: ; preds = %bb.jc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit557, %bb.gb
  %.sroa.0125.0 = phi i8 [ 0, %bb.gb ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit557 ], [ 1, %bb.jc ]
  %.sroa.3.0 = phi ptr [ %spec.select.i, %bb.gb ], [ %i.wk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit557 ], [ %i.wk, %bb.jc ]
  %.sroa.059.0 = phi i64 [ %i.pk, %bb.gb ], [ %i.wj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit557 ], [ %i.wj, %bb.jc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 %.sroa.059.0, ptr %i.av, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 6 uses
  store ptr %.sroa.3.0, ptr %i.rq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 %.sroa.0125.0, ptr %i.au, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.rr = load i64, ptr %i.aw, align 8, !range !20, !noundef !19
  %i.rs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.rt = trunc nuw i64 %i.rr to i1
  %i.ru = load ptr, ptr %i.rs, align 8, !nonnull !19, !noundef !19 ; 3 uses
  br i1 %i.rt, label %bb.jd, label %bb.jf

bb.gc:                                            ; preds = %bb.ev
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.mi, i64 48 ; 8 uses
  %i.rx = load i32, ptr %i.rw, align 8, !noundef !19 ; 2 uses
  %i.ry = icmp eq i32 %i.rx, -1
  br i1 %i.ry, label %bb.gd, label %bb.gg, !prof !31

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc469 unwind label %bb.gf

.noexc469:                                        ; preds = %bb.gd
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit475: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit488, %bb.gj, %bb.gf
  %.pn204 = phi { ptr, i32 } [ %i.sd, %bb.gf ], [ %.pn202, %bb.gj ], [ %.pn202, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit488 ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.mn, i64 48 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 8, !noundef !19
  %i.sb = add i32 %i.sa, -1                       ; 2 uses
  store i32 %i.sb, ptr %i.rz, align 8
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.ge, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit471

bb.ge:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit475
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.mn) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit471 unwind label %bb.x

bb.gf:                                            ; preds = %bb.pb, %bb.iy, %bb.gd, %bb.gg
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit475

bb.gg:                                            ; preds = %bb.gc
  %i.se = add nuw i32 %i.rx, 1
  store i32 %i.se, ptr %i.rw, align 8
  %i.sf = invoke noundef nonnull ptr @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl32descend_into_macros_single_exact(ptr noundef nonnull align 8 %i.rv, ptr noundef nonnull %i.mi)
          to label %bb.gh unwind label %bb.gf     ; 13 uses

bb.gh:                                            ; preds = %bb.gg
  %i.sg = getelementptr inbounds nuw i8, ptr %i.mn, i64 48 ; 6 uses
  %i.sh = load i32, ptr %i.sg, align 8, !noundef !19 ; 2 uses
  %i.si = icmp eq i32 %i.sh, -1
  br i1 %i.si, label %bb.gi, label %bb.gl, !prof !31

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc472 unwind label %bb.gk

.noexc472:                                        ; preds = %bb.gi
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit488: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit503, %bb.gt, %bb.gk
  %.pn202 = phi { ptr, i32 } [ %i.sn, %bb.gk ], [ %.pn200, %bb.gt ], [ %.pn200, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit503 ] ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 48 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !noundef !19
  %i.sl = add i32 %i.sk, -1                       ; 2 uses
  store i32 %i.sl, ptr %i.sj, align 4
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %bb.gj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit475

bb.gj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit488
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sf) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit475 unwind label %bb.x

bb.gk:                                            ; preds = %bb.ix, %bb.iv, %bb.gi, %bb.gl
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit488

bb.gl:                                            ; preds = %bb.gh
  %i.so = add nuw i32 %i.sh, 1
  store i32 %i.so, ptr %i.sg, align 8
  %i.sp = invoke noundef nonnull ptr @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl32descend_into_macros_single_exact(ptr noundef nonnull align 8 %i.rv, ptr noundef nonnull %i.mn)
          to label %bb.gm unwind label %bb.gk     ; 12 uses

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sf, i64 60
  %i.sr = load i8, ptr %i.sq, align 4, !range !21, !noundef !19
  %i.ss = trunc nuw i8 %i.sr to i1
  br i1 %i.ss, label %bb.go, label %bb.gn, !prof !31

bb.gn:                                            ; preds = %bb.gm
  %i.st = getelementptr inbounds nuw i8, ptr %i.sf, i64 56
  %i.su = load i32, ptr %i.st, align 8, !noundef !19
  br label %.noexc483

bb.go:                                            ; preds = %bb.gm
  %i.sv = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.sf)
          to label %.noexc483 unwind label %bb.gu

.noexc483:                                        ; preds = %bb.go, %bb.gn
  %.sroa.0.0.i476 = phi i32 [ %i.su, %bb.gn ], [ %i.sv, %bb.go ] ; 3 uses
  %i.sw = load i64, ptr %i.sf, align 8, !range !20, !noundef !19
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sy = trunc nuw i64 %i.sw to i1
  %i.sz = load ptr, ptr %i.sx, align 8, !nonnull !19, !noundef !19 ; 2 uses
  br i1 %i.sy, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %.noexc483
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i64, ptr %i.ta, align 8, !noundef !19 ; 2 uses
  %i.tc = icmp ugt i64 %i.tb, 4294967295
  %i.td = shl nuw i64 %i.tb, 32
  %.sroa.09.0.insert.insert.i.i479 = select i1 %i.tc, i64 513, i64 %i.td ; 2 uses
  %i.te = trunc i64 %.sroa.09.0.insert.insert.i.i479 to i1
  br i1 %i.te, label %bb.gq, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i480, !prof !31

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br label %.invoke1291

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i480: ; preds = %bb.gp
  %.sroa.6.0.extract.shift.i.i.i481 = lshr i64 %.sroa.09.0.insert.insert.i.i479, 32
  %.sroa.6.0.extract.trunc.i.i.i482 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i481 to i32
  br label %bb.gs

bb.gr:                                            ; preds = %.noexc483
  %i.tf = load i32, ptr %i.sz, align 8, !noundef !19
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i480
  %.sroa.02.0.i477 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i482, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i480 ], [ %i.tf, %bb.gr ]
  %i.tg = add i32 %.sroa.02.0.i477, %.sroa.0.0.i476 ; 2 uses
  %.not.i478 = icmp ugt i32 %.sroa.0.0.i476, %i.tg
  br i1 %.not.i478, label %.invoke1290, label %bb.gv, !prof !31

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit503: ; preds = %bb.ii, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i533, %bb.ib, %bb.ia, %bb.ic, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit509, %bb.he, %bb.gu
  %.pn200 = phi { ptr, i32 } [ %i.tl, %bb.gu ], [ %.pn198, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit509 ], [ %i.wd, %bb.ib ], [ %.pn198, %bb.he ], [ %i.wd, %bb.ic ], [ %i.wd, %bb.ia ], [ %i.ww, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i533 ], [ %i.ww, %bb.ii ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sp, i64 48 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !noundef !19
  %i.tj = add i32 %i.ti, -1                       ; 2 uses
  store i32 %i.tj, ptr %i.th, align 4
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.gt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit488

bb.gt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit503
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sp) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit488 unwind label %bb.x

bb.gu:                                            ; preds = %.invoke1291, %.invoke1290, %bb.pa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i547, %bb.ih, %bb.hv, %bb.hs, %bb.gx, %bb.go, %bb.hc
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit503

bb.gv:                                            ; preds = %bb.gs
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sp, i64 60
  %i.tn = load i8, ptr %i.tm, align 4, !range !21, !noundef !19
  %i.to = trunc nuw i8 %i.tn to i1
  br i1 %i.to, label %bb.gx, label %bb.gw, !prof !31

bb.gw:                                            ; preds = %bb.gv
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sp, i64 56
  %i.tq = load i32, ptr %i.tp, align 8, !noundef !19
  br label %.noexc496

bb.gx:                                            ; preds = %bb.gv
end_hunk_2
