Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.13?download=true
inline.NumInlined: 1304
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token:bb.a

bb.l:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !1430
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %bb.i ], [ null, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1431
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Csf8NQSppxkmK_14ide_completion.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i ], [ null, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Csf8NQSppxkmK_14ide_completion.exit.i.i ], [ null, %bb.e ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i ] ; 2 uses
  %.not7.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not7.i, label %bb.c, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsf8NQSppxkmK_14ide_completion.exit

bb.m:                                             ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  %.val5 = load i64, ptr %i.b, align 8, !range !23, !noundef !16
  %.val6 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.af = icmp eq i64 %.val5, 2
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit, label %bb.n

bb.n:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !16
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i: ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.p

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.noexc, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i
  %.sroa.0.0.i5 = phi ptr [ %.sroa.0.0.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i ], [ null, %.noexc ]
  %.val3 = load i64, ptr %i.b, align 8, !range !23, !noundef !16
  %.val4 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.ak = icmp eq i64 %.val3, 2
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit12, label %bb.o

bb.o:                                             ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsf8NQSppxkmK_14ide_completion.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !16
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i11, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i11: ; preds = %bb.o
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #31
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit12: ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsf8NQSppxkmK_14ide_completion.exit, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i5

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.n, %.body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_repr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1445 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [360 x i8], align 8               ; 4 uses
  %i.j = alloca [360 x i8], align 8               ; 8 uses
  %.idx = shl nuw nsw i64 %3, 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not.i = icmp eq i64 %3, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 630
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 400
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %.sroa.0.0.idx47 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %.backedge ] ; 2 uses
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr @254, i64 %.sroa.0.0.idx47 ; 8 uses
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx47, 64 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.0.ptr, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noundef !16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 56
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !16, !align !24, !noundef !16
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !16
  br i1 %.not.i, label %.loopexit32, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.ab, null         ; 2 uses
  %.sink13.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.t, ptr %i.ab
  %spec.select = select i1 %.not.i.i.i.i, i64 %i.v, i64 %i.ad
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.ai = phi ptr [ %2, %.lr.ph.i ], [ %i.aj, %.backedge.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.val.i = load i64, ptr %i.ai, align 8, !range !50, !noalias !1446, !noundef !16
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %.val5.i = load ptr, ptr %i.ak, align 8, !noalias !1446 ; 5 uses
  switch i64 %.val.i, label %.backedge.i [
    i64 7, label %bb.d
    i64 25, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1447
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ], !noalias !1447
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !1447, !noundef !16 ; 2 uses
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.e, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i, !prof !17

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #30, !noalias !1447
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i: ; preds = %bb.d
  %i.ao = add nuw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 4, !noalias !1447
  %i.ap = call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val5.i), !noalias !1447
  store ptr %i.ap, ptr %i.a, align 8, !noalias !1447
  br label %bb.f

bb.f:                                             ; preds = %.noexc8.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i
  %i.aq = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc.i unwind label %bb.h, !noalias !1447 ; 2 uses

.noexc.i:                                         ; preds = %bb.f
  %.not.i.i22 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i22, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc.i
  %i.ar = invoke fastcc { i64, ptr } @_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast(ptr noundef nonnull %i.aq) #34
          to label %.noexc8.i unwind label %bb.h, !noalias !1447 ; 2 uses

.noexc8.i:                                        ; preds = %bb.g
  %i.as = extractvalue { i64, ptr } %i.ar, 0      ; 2 uses
  %.not7.i.i = icmp eq i64 %i.as, -1
  br i1 %.not7.i.i, label %bb.f, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val5.i21 = load ptr, ptr %i.a, align 8, !noalias !1447, !noundef !16 ; 3 uses
  %i.au = icmp eq ptr %.val5.i21, null
  br i1 %i.au, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.val5.i21, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !noalias !1447, !noundef !16
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !noalias !1447
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i21) #31
          to label %common.resume unwind label %bb.n, !noalias !1447

bb.k:                                             ; preds = %.noexc8.i
  %i.az = extractvalue { i64, ptr } %i.ar, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %.noexc.i, %bb.k
  %.7.i = phi ptr [ %i.az, %bb.k ], [ undef, %.noexc.i ] ; 11 uses
  %i.ba = phi i64 [ %i.as, %bb.k ], [ -1, %.noexc.i ]
  %.val4.i = load ptr, ptr %i.a, align 8, !noalias !1447, !noundef !16 ; 3 uses
  %i.bb = icmp eq ptr %.val4.i, null
  br i1 %i.bb, label %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val4.i, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !1447, !noundef !16
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !noalias !1447
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i) #31, !noalias !1447
  br label %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit

bb.n:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !1447
  unreachable

common.resume:                                    ; preds = %bb.bf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit.i.i.i, %bb.q, %bb.ae, %bb.af, %bb.aj, %bb.ak, %bb.h, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.aj ], [ %i.at, %bb.h ], [ %i.at, %bb.j ], [ %i.at, %bb.i ], [ %.pn.i.i.i, %bb.q ], [ %i.cm, %bb.ae ], [ %i.cm, %bb.af ], [ %.pn.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit.i.i.i ], [ %.pn.i.i.i.i, %bb.ak ], [ %lpad.thr_comm, %bb.bf ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1447
  switch i64 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprECsf8NQSppxkmK_14ide_completion.exit39.i.i.i [
    i64 -1, label %.backedge.i
    i64 25, label %bb.p
  ]

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1447
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.bh = call fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4PathECsf8NQSppxkmK_14ide_completion(ptr nonnull %.val5.i) #34, !noalias !1447 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.p:                                             ; preds = %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.7.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1447
  %i.bi = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4PathECsf8NQSppxkmK_14ide_completion(ptr nonnull %.7.i)
          to label %bb.s unwind label %bb.r, !noalias !1447 ; 6 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.r ], [ %i.bt, %bb.x ], [ %i.bt, %bb.w ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.7.i, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noalias !1447, !noundef !16
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4, !noalias !1447
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.q, label %common.resume

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.7.i) #31
          to label %common.resume unwind label %bb.ab, !noalias !1447

bb.r:                                             ; preds = %bb.z, %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.s:                                             ; preds = %bb.p
  %.not13.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not13.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.bi, ptr %i.g, align 8, !noalias !1447
  %i.bo = invoke noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path18as_single_name_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.y unwind label %bb.w, !noalias !1447 ; 2 uses

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1447
  %i.bp = getelementptr inbounds nuw i8, ptr %.7.i, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !1447, !noundef !16
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !noalias !1447
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.v, label %.backedge.i

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.7.i) #31, !noalias !1447
  br label %.backedge.i

bb.w:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !1447, !noundef !16
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 4, !noalias !1447
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bi) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit.i.i.i unwind label %bb.ab, !noalias !1447

bb.y:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !noalias !1447, !noundef !16
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.by, align 4, !noalias !1447
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit37.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bi) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit37.i.i.i unwind label %bb.r, !noalias !1447

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit37.i.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1447
  %i.cc = getelementptr inbounds nuw i8, ptr %.7.i, i64 48 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !1447, !noundef !16
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4, !noalias !1447
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.aa, label %_RNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_repr0B9_.exit.i.i

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit37.i.i.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.7.i) #31, !noalias !1447
  br label %_RNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_repr0B9_.exit.i.i

bb.ab:                                            ; preds = %bb.af, %bb.x, %bb.q
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !1447
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprECsf8NQSppxkmK_14ide_completion.exit39.i.i.i: ; preds = %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.7.i) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.7.i, i64 48 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !noalias !1447, !noundef !16
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !noalias !1447
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i43.i.i.i, label %.backedge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i43.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprECsf8NQSppxkmK_14ide_completion.exit39.i.i.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.7.i) #31, !noalias !1447
  br label %.backedge.i

bb.ac:                                            ; preds = %bb.o
  store ptr %i.bh, ptr %i.h, align 8, !noalias !1447
  %i.cl = invoke noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path18as_single_name_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.ag unwind label %bb.ae, !noalias !1447

bb.ad:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1447
  br label %.backedge.i

bb.ae:                                            ; preds = %bb.ac
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !noalias !1447, !noundef !16
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 4, !noalias !1447
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.af, label %common.resume

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bh) #31
          to label %common.resume unwind label %bb.ab, !noalias !1447

bb.ag:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !1447, !noundef !16
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 4, !noalias !1447
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit47.i.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bh) #31, !noalias !1447
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit47.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit47.i.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1447
  br label %_RNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_repr0B9_.exit.i.i

_RNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_repr0B9_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit47.i.i.i, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit37.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit47.i.i.i ], [ %i.bo, %bb.aa ], [ %i.bo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsf8NQSppxkmK_14ide_completion.exit37.i.i.i ] ; 6 uses
  %.not.i.i = icmp eq ptr %.sroa.0.1.i.i.i, null
  br i1 %.not.i.i, label %.backedge.i, label %bb.ai

bb.ai:                                            ; preds = %_RNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_repr0B9_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1448
  store ptr %.sroa.0.1.i.i.i, ptr %i.f, align 8, !noalias !1449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1449
  invoke void @_RNvMs0_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes7NameRef4text(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %.cont unwind label %bb.al, !noalias !1449

bb.aj:                                            ; preds = %bb.am, %bb.al
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.cz, %bb.al ], [ %i.db, %bb.am ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 48 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !noalias !1449, !noundef !16
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !noalias !1449
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ak, label %common.resume

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.1.i.i.i) #31
          to label %common.resume unwind label %bb.ay, !noalias !1449

bb.al:                                            ; preds = %bb.aw, %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.cont:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1449
  store ptr %.sink13.i.i.i.i, ptr %i.d, align 8, !noalias !1449, !captures !47
  store i64 %spec.select, ptr %i.l, align 8, !noalias !1449
  %i.da = invoke noundef zeroext i1 @_RNvXs4_NtCsjJXvCMGntp8_6syntax10token_textReINtNtCshzWfHUSfYae_4core3cmp9PartialEqNtB5_9TokenTextE2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.an unwind label %bb.am, !noalias !1449

bb.am:                                            ; preds = %bb.as, %.cont
  %i.db = landingpad { ptr, i32 }
          cleanup
  %.val9.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !1449, !noundef !16
  %.val10.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1449
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsf8NQSppxkmK_14ide_completion(ptr %.val9.i.i.i.i, ptr %.val10.i.i.i.i) #32
          to label %bb.aj unwind label %bb.ay, !noalias !1449

bb.an:                                            ; preds = %.cont
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1449
  br i1 %i.da, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1449
  %i.dc = load ptr, ptr %i.e, align 8, !noalias !1449, !noundef !16 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %.val7.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !1449
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.de = load ptr, ptr %i.m, align 8, !noalias !1449, !nonnull !16, !noundef !16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !noalias !1449, !noundef !16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.di = load i64, ptr %i.m, align 8, !noalias !1449, !noundef !16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink15.i.i.i.i = phi ptr [ %i.dh, %bb.aq ], [ %i.dc, %bb.ar ]
  %.sink14.i.i.i.i = phi i64 [ %i.dg, %bb.aq ], [ %i.di, %bb.ar ]
  store ptr %.sink15.i.i.i.i, ptr %i.c, align 8, !noalias !1449
  store i64 %.sink14.i.i.i.i, ptr %i.n, align 8, !noalias !1449
  %i.dj = invoke noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ah)
          to label %bb.at unwind label %bb.am, !noalias !1449

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1449
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ap
  %.val7.i.i.i.i = phi ptr [ %.val7.pre.i.i.i.i, %bb.ap ], [ %i.dc, %bb.at ]
  %.sroa.0.0.i.i.i.i = phi i1 [ true, %bb.ap ], [ %i.dj, %bb.at ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val7.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i

bb.av:                                            ; preds = %bb.au
  %.val8.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1449, !nonnull !16, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1449
  %i.dk = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !1449, !noundef !16
  store ptr %.val8.i.i.i.i, ptr %i.b, align 8, !noalias !1449
  store i64 %i.dl, ptr %i.o, align 8, !noalias !1449
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.dm = atomicrmw add ptr %.val8.i.i.i.i, i64 -1 release, align 8, !noalias !1452
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.do = load ptr, ptr %i.b, align 8, !alias.scope !1453, !noalias !1449, !nonnull !16, !noundef !16
  %i.dp = load atomic i64, ptr %i.do acquire, align 8, !noalias !1452 ; 0 uses
  invoke void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green5token14GreenTokenHeadShEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i unwind label %bb.al, !noalias !1449

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1449
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1449
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 48 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !noalias !1449, !noundef !16
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 4, !noalias !1449
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.ax, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_reprs_0E0B2g_.exit.i.i

bb.ax:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.1.i.i.i) #31, !noalias !1449
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_reprs_0E0B2g_.exit.i.i

bb.ay:                                            ; preds = %bb.am, %bb.ak
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !1449
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_reprs_0E0B2g_.exit.i.i: ; preds = %bb.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1448
  br i1 %.sroa.0.0.i.i.i.i, label %.backedge, label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_reprs_0E0B2g_.exit.i.i, %_RNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_repr0B9_.exit.i.i, %bb.ad, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i43.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprECsf8NQSppxkmK_14ide_completion.exit39.i.i.i, %bb.v, %bb.u, %bb.c
  %.not24.i = icmp eq ptr %i.aj, %i.k
  br i1 %.not24.i, label %.loopexit32, label %bb.c

bb.az:                                            ; preds = %.backedge
  ret void

.loopexit32:                                      ; preds = %.backedge.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dv = call { i32, i32 } @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext12source_range(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.dw = extractvalue { i32, i32 } %i.dv, 0
  %i.dx = extractvalue { i32, i32 } %i.dv, 1
  %i.dy = load i8, ptr %i.p, align 2, !range !40, !noundef !16
  call void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_14CompletionItem3newNtCs6oosyzwIepl_6ide_db10SymbolKindReEB8_(ptr noalias nofree noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(360) %i.j, i8 noundef 1, i32 noundef %i.dw, i32 noundef %i.dx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v, i8 noundef %i.dy)
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.loopexit32
  %i.dz = invoke noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder9lookup_byReEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
          to label %bb.bb unwind label %bb.bf     ; 0 uses

bb.bb:                                            ; preds = %bb.ba, %.loopexit32
  %i.ea = load ptr, ptr %i.q, align 8, !nonnull !16, !align !24, !noundef !16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 122
  %i.ec = load i8, ptr %i.eb, align 2, !range !22, !noundef !16
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = invoke { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE3zipNtCs6oosyzwIepl_6ide_db10SnippetCapECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly captures(address, read_provenance) %i.x, i64 %i.z, i1 noundef zeroext %i.ed)
          to label %bb.bc unwind label %bb.bf     ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 2 uses
  %.not19 = icmp eq ptr %i.ef, null
  br i1 %.not19, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1
  store i8 1, ptr %i.r, align 8
  %i.eh = invoke noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder11insert_textReEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ef, i64 noundef %i.eg)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.i, ptr noundef nonnull align 8 dereferenceable(360) %i.j, i64 360, i1 false)
  %i.ei = load ptr, ptr %i.s, align 8, !nonnull !16, !align !24, !noundef !16
  call void @_RNvMs_NtCsf8NQSppxkmK_14ide_completion11completionsNtNtB6_4item7Builder6add_to(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(360) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.backedge

.backedge:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefNCNvNtNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute4repr13complete_reprs_0E0B2g_.exit.i.i, %bb.be
  %i.ej = icmp eq i64 %.sroa.0.0.add, 1024
  br i1 %i.ej, label %bb.az, label %bb.b

bb.bf:                                            ; preds = %bb.bd, %bb.bb, %bb.ba
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion4item7BuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.j) #32
          to label %common.resume unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXCs83ee1IJTiSq_6eitherINtB2_6EitherNtCsileJQcQObtj_7hir_def10FunctionIdNtNtCs8K4cjrcxBsw_6hir_ty2db17InternedClosureIdENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #5 !guid !1454 {
bb.a:
  %.val3.sink.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.sink = load i32, ptr %.val3.sink.in, align 4, !noundef !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.val3.sink, ptr %i.a, align 4
  %i.b = load <2 x i32>, ptr %1, align 4
  store <2 x i32> %i.b, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCs39E2wp1vf7X_6intern6symbol6SymbolINtB2_10EquivalentBq_E10equivalentCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 !guid !1455 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %.val1 = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.a = icmp eq ptr %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !guid !1456 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @269, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtNtCsf8NQSppxkmK_14ide_completion11completions4exprINtB2_12PathCallbackNCNvB2_18complete_expr_paths0_0ENtCs8Xq8PKFYOms_3hir21PathCandidateCallback13on_trait_itemB6_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #1 !guid !1460 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [8 x i8], align 4                 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !16, !align !24, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 400 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !align !24, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.h = call { i32, i32 } @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem15container_trait(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.c, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = extractvalue { i32, i32 } %i.h, 0        ; 3 uses
  %i.j = extractvalue { i32, i32 } %i.h, 1        ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.i, ptr %i.d, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.m = call noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs8Xq8PKFYOms_3hir5TraituNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d)
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.o = call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs8Xq8PKFYOms_3hir9AssocItemuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.o, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths0_0B7_.exit, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.f, align 8, !nonnull !16, !align !24, !noundef !16
  %i.q = call noundef i8 @_RNvMsD_Cs8Xq8PKFYOms_3hirNtB5_5Trait8complete(i32 noundef %i.i, i32 noundef %i.j, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
  %.not3 = icmp eq i8 %i.q, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not3, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths0_0B7_.exit, label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths0_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths0_0B7_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.d, %bb.e, %bb.c
  ret i1 false

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !16, !align !24, !noundef !16 ; 3 uses
  %.sroa.3.8.copyload = load i8, ptr %1, align 4  ; 3 uses
  %.sroa.67.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.67.8.copyload = load i32, ptr %.sroa.67.8..sroa_idx, align 4 ; 3 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.8.copyload = load i32, ptr %.sroa.8.8..sroa_idx, align 4 ; 3 uses
  %.val = load ptr, ptr %i.r, align 8             ; 6 uses
  %i.u = icmp samesign ugt i8 %.sroa.3.8.copyload, 1
  %i.v = zext nneg i8 %.sroa.3.8.copyload to i64
  %i.w = add nsw i64 %i.v, -1
  %i.x = select i1 %i.u, i64 %i.w, i64 0
  switch i64 %i.x, label %bb.g [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load ptr, ptr %i.y, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1461
  store i8 %.sroa.3.8.copyload, ptr %i.a, align 4, !noalias !1462
  %.sroa.6.8..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.8..sroa_idx6, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.8..sroa_idx, i64 3, i1 false)
  %.sroa.67.8..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.67.8.copyload, ptr %.sroa.67.8..sroa_idx8, align 4, !noalias !1462
  %.sroa.8.8..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.8.8.copyload, ptr %.sroa.8.8..sroa_idx11, align 4, !noalias !1462
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions12add_function(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %.val4, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, ptr noundef null), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1461
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths0_0B7_.exit

bb.i:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions9add_const(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 %.val, i32 noundef %.sroa.67.8.copyload, i32 noundef %.sroa.8.8.copyload), !noalias !1463
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths0_0B7_.exit

bb.j:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions14add_type_alias(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 %.val, i32 noundef %.sroa.67.8.copyload, i32 noundef %.sroa.8.8.copyload), !noalias !1463
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths0_0B7_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtNtCsf8NQSppxkmK_14ide_completion11completions4exprINtB2_12PathCallbackNCNvB2_18complete_expr_paths0_0ENtCs8Xq8PKFYOms_3hir21PathCandidateCallback16on_inherent_itemB6_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #1 !guid !1467 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
