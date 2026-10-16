Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BigIntSupport?download=true
inline.NumInlined: 1517
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_:bb.a

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i.i4.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i
  %i.gd = load i16, ptr %.sroa.0.5, align 2, !tbaa !83 ; 4 uses
  %i.ge = and i16 %i.gd, -8
  %i.gf = icmp eq i16 %i.ge, 48
  br i1 %i.gf, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49ELDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEENS_8OptValueIDsEEv.exit.i.i.i.i.backedge, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE5anyOfILDs48ELDs49EJLDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEEbDs.exit.i.i5.i.i.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE5anyOfILDs48ELDs49EJLDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEEbDs.exit.i.i5.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i.i4.i.i.i.i
  %i.gg = icmp eq i16 %i.gd, 56
  %i.gh = and i16 %i.gd, 255
  %i.gi = icmp eq i16 %i.gh, 57
  %i.gj = or i1 %i.gg, %i.gi
  br i1 %i.gj, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49ELDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEENS_8OptValueIDsEEv.exit.i.i.i.i.backedge, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE13decimalDigitsEv.exit.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49ELDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEENS_8OptValueIDsEEv.exit.i.i.i.i.backedge: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE5anyOfILDs48ELDs49EJLDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEEbDs.exit.i.i5.i.i.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i.i4.i.i.i.i
  br label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE22lookaheadAndEatIfAnyOfIJLDs48ELDs49ELDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEENS_8OptValueIDsEEv.exit.i.i.i.i, !llvm.loop !81

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE13decimalDigitsEv.exit.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE5anyOfILDs48ELDs49EJLDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEEbDs.exit.i.i5.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE5anyOfILDs48ELDs49EJLDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEEbDs.exit.i.i.i.i.i.i
  %.val.i14.i = phi ptr [ %.sroa.0.4, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE5anyOfILDs48ELDs49EJLDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEEbDs.exit.i.i.i.i.i.i ], [ %.sroa.0.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i ], [ %.sroa.0.5, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE5anyOfILDs48ELDs49EJLDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEEbDs.exit.i.i5.i.i.i.i ] ; 2 uses
  %i.gk = load i64, ptr %i.b, align 8, !tbaa !36
  %.not35.i = icmp eq i64 %i.gk, 0
  br i1 %.not35.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE13decimalDigitsEv.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE13decimalDigitsEv.exit.i
  %i.gl = icmp ult ptr %.val.i14.i, %.sroa.30.2
  br i1 %i.gl, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i16.i, label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i16.i: ; preds = %bb.q
  %i.gm = load i16, ptr %.val.i14.i, align 2, !tbaa !83
  %.not.i17.i = icmp eq i16 %i.gm, 0
  br i1 %.not.i17.i, label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i16.i
  %.not.i.i19.i = icmp eq ptr %5, null
  br i1 %.not.i.i19.i, label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !36
  %i.gp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.go, ptr noundef nonnull @.str.3, i64 noundef 32) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit.thread

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE13decimalDigitsEv.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE13decimalDigitsEv.exit.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE5anyOfILDs48ELDs49EJLDs50ELDs51ELDs52ELDs53ELDs54ELDs55ELDs56ELDs57EEEEbDs.exit.i.i.i, %.critedge.i.i
  %.not.i21.i = icmp eq ptr %5, null
  br i1 %.not.i21.i, label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE13decimalDigitsEv.exit.thread.i
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !36
  %i.gs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.gr, ptr noundef nonnull @.str.4, i64 noundef 22) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit.thread

_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i16.i, %bb.q, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.i8.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE24nonDecimalIntegerLiteralEv.exit.thread.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE4peekEl.exit.thread.i
  %i.gt = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit.thread

_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit.thread: ; preds = %bb.o, %bb.n, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEEE13decimalDigitsEv.exit.thread.i, %bb.s, %bb.t, %bb.r, %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit
  %i.gu = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.a
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit.thread
  %i.gw = load i64, ptr %i.a, align 8, !tbaa !10
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNO6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEE4goalEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6bigint21getNumericValueDigitsEN4llvh9StringRefERhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 initializes((32, 33)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call fastcc void @_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_18NumericValueParserEN4llvh9StringRefEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSC_(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_18NumericValueParserEN4llvh9StringRefEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSC_(ptr dead_on_unwind noalias writable align 8 initializes((32, 33)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 16 uses
  store i64 0, ptr %i.b, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %2) #16
  store i32 0, ptr %4, align 4, !tbaa !38
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i: ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !10      ; 2 uses
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE3eatEv.exit.i, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE3eatEv.exit.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not36 = icmp eq i64 %2, 1
  br i1 %.not36, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.thread.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE3eatEv.exit.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.h, 110
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i

bb.b:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i.i
  store i8 10, ptr %3, align 1, !tbaa !10
  %i.i = load i64, ptr %i.b, align 8, !tbaa !36
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.k = icmp samesign ugt i64 %2, 2
  br i1 %i.k, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i8.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i8.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i8.i
  %.not.i.i9.i = icmp eq ptr %5, null
  br i1 %.not.i.i9.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
  %i.p = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.o, ptr noundef nonnull @.str.5, i64 noundef 27) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i.i
  %i.q = and i8 %i.h, -33
  %spec.select.i.i.i.i.i.i = icmp eq i8 %i.q, 66
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.thread.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  store i8 2, ptr %3, align 1, !tbaa !10
  %i.s = icmp samesign ugt i64 %2, 2
  br i1 %i.s, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i
  %i.t = load i8, ptr %i.r, align 1, !tbaa !10    ; 2 uses
  %i.u = and i8 %i.t, -2
  %spec.select.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 48
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
  %.sroa.0.9 = phi ptr [ %i.v, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.an, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i.i ] ; 6 uses
  %.sroa.0.014.in.i.i.i.i.i = phi i8 [ %i.t, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.al, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i.i ]
  %i.w = load i64, ptr %i.b, align 8, !tbaa !36   ; 4 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.aa = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ac = phi i64 [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.w, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.ae = phi ptr [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 %.sroa.0.014.in.i.i.i.i.i, ptr %i.af, align 1, !tbaa !10
  store i64 %i.x, ptr %i.b, align 8, !tbaa !36
  %i.ag = load ptr, ptr %6, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x
  store i8 0, ptr %i.ah, align 1, !tbaa !10
  %i.ai = icmp ult ptr %.sroa.0.9, %i.d
  br i1 %i.ai, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i
  %i.aj = load i8, ptr %.sroa.0.9, align 1, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 95
  %spec.select.idx = zext i1 %.not.i.i.i.i.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.0.9, i64 %spec.select.idx
  br label %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i.i

_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i
  %.sroa.0.10 = phi ptr [ %.sroa.0.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i.i ], [ %spec.select, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ak = icmp ult ptr %.sroa.0.10, %i.d
  br i1 %i.ak, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i.i
  %i.al = load i8, ptr %.sroa.0.10, align 1, !tbaa !10 ; 2 uses
  %i.am = and i8 %i.al, -2
  %spec.select.i.i.i6.i.i.i.i.i = icmp eq i8 %i.am, 48
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 1
  br i1 %spec.select.i.i.i6.i.i.i.i.i, label %bb.e, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i
  %.val.i.i164.i.i = phi ptr [ %i.r, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i.i ], [ %i.r, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc66ELc98EEEENS_8OptValueIcEEv.exit.i.i.i ], [ %.sroa.0.9, %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i.i ], [ %.sroa.0.9, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i.i ] ; 2 uses
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !36
  %.not.i10.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i10.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.thread.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.thread.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE3eatEv.exit.i
  %.val.i.i1.i.i = phi ptr [ %i.g, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i ], [ %.val.i.i164.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i ], [ %i.g, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE3eatEv.exit.i ] ; 6 uses
  %i.ap = icmp ult ptr %.val.i.i1.i.i, %i.d
  br i1 %i.ap, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i4.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.thread.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i4.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.thread.i.i
  %i.aq = load i8, ptr %.val.i.i1.i.i, align 1, !tbaa !10
  %i.ar = and i8 %i.aq, -33
  %spec.select.i.i.i.i5.i.i = icmp eq i8 %i.ar, 79
  br i1 %spec.select.i.i.i.i5.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.thread.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i4.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i, i64 1 ; 4 uses
  store i8 8, ptr %3, align 1, !tbaa !10
  %i.at = icmp ult ptr %i.as, %i.d
  br i1 %i.at, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i8.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i8.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i
  %i.au = load i8, ptr %i.as, align 1, !tbaa !10  ; 2 uses
  %i.av = and i8 %i.au, -8
  %i.aw = icmp eq i8 %i.av, 48
  br i1 %i.aw, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i8.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i1.i.i, i64 2
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i20.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
  %.sroa.0.6 = phi ptr [ %i.ax, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.bq, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i20.i.i ] ; 6 uses
  %.sroa.0.013.in.i.i.i.i.i = phi i8 [ %i.au, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.bn, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i20.i.i ]
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !36  ; 4 uses
  %i.az = add i64 %i.ay, 1                        ; 3 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i25.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i25.i.i: ; preds = %bb.g
  %i.bc = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9.i.i: ; preds = %bb.g
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i25.i.i
  %i.be = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i25.i.i ]
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ay, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i24.i.i = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i
  %i.bg = phi ptr [ %.pre.i.i.i.i24.i.i, %bb.h ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i10.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i8 %.sroa.0.013.in.i.i.i.i.i, ptr %i.bh, align 1, !tbaa !10
  store i64 %i.az, ptr %i.b, align 8, !tbaa !36
  %i.bi = load ptr, ptr %6, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1, !tbaa !10
  %i.bk = icmp ult ptr %.sroa.0.6, %i.d
  br i1 %i.bk, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i21.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i14.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i21.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i
  %i.bl = load i8, ptr %.sroa.0.6, align 1, !tbaa !10
  %.not.i.i.i.i.i22.i.i = icmp eq i8 %i.bl, 95
  %spec.select27.idx = zext i1 %.not.i.i.i.i.i22.i.i to i64
  %spec.select27 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 %spec.select27.idx
  br label %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i14.i.i

_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i14.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i21.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i
  %.sroa.0.7 = phi ptr [ %.sroa.0.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i11.i.i ], [ %spec.select27, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i21.i.i ] ; 3 uses
  %i.bm = icmp ult ptr %.sroa.0.7, %i.d
  br i1 %i.bm, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i20.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i20.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i14.i.i
  %i.bn = load i8, ptr %.sroa.0.7, align 1, !tbaa !10 ; 2 uses
  %i.bo = and i8 %i.bn, -8
  %i.bp = icmp eq i8 %i.bo, 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 1
  br i1 %i.bp, label %bb.g, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i20.i.i, %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i14.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i8.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i
  %.val.i.i2669.i.i = phi ptr [ %i.as, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i8.i.i ], [ %i.as, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc79ELc111EEEENS_8OptValueIcEEv.exit.i.i.i ], [ %.sroa.0.6, %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i14.i.i ], [ %.sroa.0.6, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i20.i.i ] ; 2 uses
  %i.br = load i64, ptr %i.b, align 8, !tbaa !36
  %.not56.i.i = icmp eq i64 %i.br, 0
  br i1 %.not56.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.thread.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.thread.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i4.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.thread.i.i
  %.val.i.i26.i.i = phi ptr [ %.val.i.i1.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i4.i.i ], [ %.val.i.i1.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.thread.i.i ], [ %.val.i.i2669.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i ] ; 4 uses
  %i.bs = icmp ult ptr %.val.i.i26.i.i, %i.d
  br i1 %i.bs, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i29.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i29.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.thread.i.i
  %i.bt = load i8, ptr %.val.i.i26.i.i, align 1, !tbaa !10
  %i.bu = and i8 %i.bt, -33
  %spec.select.i.i.i.i30.i.i = icmp eq i8 %i.bu, 88
  br i1 %spec.select.i.i.i.i30.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i29.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i26.i.i, i64 1 ; 4 uses
  store i8 16, ptr %3, align 1, !tbaa !10
  %i.bw = icmp ult ptr %i.bv, %i.d
  br i1 %i.bw, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.bx, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.i [
    i8 48, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 49, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 50, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 51, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 52, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 53, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 54, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 55, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 56, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 69, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 68, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 67, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 66, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 65, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 57, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 102, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 101, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 100, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 99, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 98, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 97, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
    i8 70, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
  ]

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i26.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i
  %.sroa.0.3 = phi ptr [ %i.by, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.cp, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i ] ; 6 uses
  %.sroa.0.013.in.i.i.i34.i.i = phi i8 [ %i.bx, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit.i.i.i.i.i ], [ %i.co, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i ]
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !36  ; 4 uses
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  %i.cb = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.a
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i53.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i53.i.i: ; preds = %bb.i
  %i.cd = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36.i.i: ; preds = %bb.i
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i53.i.i
  %i.cf = phi i64 [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i53.i.i ]
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i38.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bz, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i52.i.i = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i38.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i38.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37.i.i
  %i.ch = phi ptr [ %.pre.i.i.i.i52.i.i, %bb.j ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  store i8 %.sroa.0.013.in.i.i.i34.i.i, ptr %i.ci, align 1, !tbaa !10
  store i64 %i.ca, ptr %i.b, align 8, !tbaa !36
  %i.cj = load ptr, ptr %6, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ca
  store i8 0, ptr %i.ck, align 1, !tbaa !10
  %i.cl = icmp ult ptr %.sroa.0.3, %i.d
  br i1 %i.cl, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i49.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i41.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i49.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i38.i.i
  %i.cm = load i8, ptr %.sroa.0.3, align 1, !tbaa !10
  %.not.i.i.i.i.i50.i.i = icmp eq i8 %i.cm, 95
  %spec.select29.idx = zext i1 %.not.i.i.i.i.i50.i.i to i64
  %spec.select29 = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 %spec.select29.idx
  br label %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i41.i.i

_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i41.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i49.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i38.i.i
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i38.i.i ], [ %spec.select29, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i49.i.i ] ; 3 uses
  %i.cn = icmp ult ptr %.sroa.0.4, %i.d
  br i1 %i.cn, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i41.i.i
  %i.co = load i8, ptr %.sroa.0.4, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.co, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.i [
    i8 48, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 49, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 50, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 51, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 52, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 53, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 54, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 55, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 56, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 69, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 68, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 67, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 66, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 65, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 57, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 102, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 101, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 100, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 99, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 98, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 97, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
    i8 70, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i
  ]

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57ELc65ELc66ELc67ELc68ELc69ELc70ELc97ELc98ELc99ELc100ELc101ELc102EEEENS_8OptValueIcEEv.exit7.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 1
  br label %bb.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i, %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i41.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i
  %.val.i.i1182.i = phi ptr [ %i.bv, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i33.i.i ], [ %i.bv, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc88ELc120EEEENS_8OptValueIcEEv.exit.i.i.i ], [ %.sroa.0.3, %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i41.i.i ], [ %.sroa.0.3, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i47.i.i ]
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !36
  %.not61.i = icmp eq i64 %i.cq, 0
  br i1 %.not61.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i
  %.val.i.i11.i = phi ptr [ %.val.i.i164.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE20binaryIntegerLiteralEv.exit.i.i ], [ %.val.i.i2669.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.i.i ], [ %.val.i.i1182.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.i ] ; 3 uses
  %i.cr = icmp ult ptr %.val.i.i11.i, %i.d
  br i1 %i.cr, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i14.i, label %bb.n

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i14.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.thread.i
  %i.cs = load i8, ptr %.val.i.i11.i, align 1, !tbaa !10
  %.not.i.i15.i = icmp eq i8 %i.cs, 110
  br i1 %.not.i.i15.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i14.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i11.i, i64 1 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.d
  br i1 %i.cu, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i20.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i20.i: ; preds = %bb.k
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !10
  %.not.i21.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i21.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i20.i
  %.not.i.i23.i = icmp eq ptr %5, null
  br i1 %.not.i.i23.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !36
  %i.cy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.cx, ptr noundef nonnull @.str.2, i64 noundef 36) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread

bb.n:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i14.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.thread.i
  %.not.i25.i = icmp eq ptr %5, null
  br i1 %.not.i25.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !36
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.da, ptr noundef nonnull @.str.6, i64 noundef 26) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i
  %i.dc = add i8 %i.e, -49
  %i.dd = icmp ult i8 %i.dc, 9
  br i1 %i.dd, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i
  store i8 10, ptr %3, align 1, !tbaa !10
  %i.de = load i8, ptr %1, align 1, !tbaa !10     ; 2 uses
  %i.df = add i8 %i.de, -48
  %i.dg = icmp ult i8 %i.df, 10
  br i1 %i.dg, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE21nonZeroDecimalLiteralEv.exit.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i
  %.pn = phi ptr [ %.sroa.0.1, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i ], [ %1, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i ]
  %.sroa.0.013.in.i.i.i.i = phi i8 [ %i.dw, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i ], [ %i.de, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 6 uses
  %i.dh = load i64, ptr %i.b, align 8, !tbaa !36  ; 4 uses
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %i.dj = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.a
  br i1 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i
  %i.dl = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.dl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dn = phi i64 [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %i.do = icmp ugt i64 %i.di, %i.dn
  br i1 %i.do, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.dh, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.dp = phi ptr [ %.pre.i.i.i.i.i, %bb.p ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  store i8 %.sroa.0.013.in.i.i.i.i, ptr %i.dq, align 1, !tbaa !10
  store i64 %i.di, ptr %i.b, align 8, !tbaa !36
  %i.dr = load ptr, ptr %6, align 8, !tbaa !39
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.di
  store i8 0, ptr %i.ds, align 1, !tbaa !10
  %i.dt = icmp ult ptr %.sroa.0.0, %i.d
  br i1 %i.dt, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i
  %i.du = load i8, ptr %.sroa.0.0, align 1, !tbaa !10
  %.not.i.i.i.i.i.i = icmp eq i8 %i.du, 95
  %spec.select31.idx = zext i1 %.not.i.i.i.i.i.i to i64
  %spec.select31 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %spec.select31.idx
  br label %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i

_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i.i ], [ %spec.select31, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc95EEEENS_8OptValueIcEEv.exit.i.i.i.i.i.i ] ; 3 uses
  %i.dv = icmp ult ptr %.sroa.0.1, %i.d
  br i1 %i.dv, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE21nonZeroDecimalLiteralEv.exit.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i
  %i.dw = load i8, ptr %.sroa.0.1, align 1, !tbaa !10 ; 2 uses
  %i.dx = add i8 %i.dw, -48
  %i.dy = icmp ult i8 %i.dx, 10
  br i1 %i.dy, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE22lookaheadAndEatIfAnyOfIJLc48ELc49ELc50ELc51ELc52ELc53ELc54ELc55ELc56ELc57EEEENS_8OptValueIcEEv.exit.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE21nonZeroDecimalLiteralEv.exit.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE21nonZeroDecimalLiteralEv.exit.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i
  %.val.i.i31.i = phi ptr [ %1, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i.i.i.i ], [ %.sroa.0.0, %_ZN6hermes6bigint12_GLOBAL__N_118NumericValueParser23numericLiteralSeparatorEv.exit.i.i.i.i ], [ %.sroa.0.0, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i5.i.i.i.i ] ; 3 uses
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE21nonZeroDecimalLiteralEv.exit.i
  %i.ea = icmp ult ptr %.val.i.i31.i, %i.d
  br i1 %i.ea, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i34.i, label %bb.u

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i34.i: ; preds = %bb.q
  %i.eb = load i8, ptr %.val.i.i31.i, align 1, !tbaa !10
  %.not.i.i35.i = icmp eq i8 %i.eb, 110
  br i1 %.not.i.i35.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i34.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i31.i, i64 1 ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.d
  br i1 %i.ed, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i40.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i40.i: ; preds = %bb.r
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !10
  %.not.i41.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i41.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i40.i
  %.not.i.i43.i = icmp eq ptr %5, null
  br i1 %.not.i.i43.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !36
  %i.eh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.eg, ptr noundef nonnull @.str.3, i64 noundef 32) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread

bb.u:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE11nextIsAnyOfIJLc110EEEENS_8OptValueIcEEv.exit.i.i34.i, %bb.q
  %.not.i45.i = icmp eq ptr %5, null
  br i1 %.not.i45.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !36
  %i.ek = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.ej, ptr noundef nonnull @.str.7, i64 noundef 22) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE21nonZeroDecimalLiteralEv.exit.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE24nonDecimalIntegerLiteralEv.exit.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i.i.i29.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE19octalIntegerLiteralEv.exit.thread.i.i, %bb.a
  %.not.i47.i = icmp eq ptr %5, null
  br i1 %.not.i47.i, label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !36
  %i.en = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.em, ptr noundef nonnull @.str.4, i64 noundef 22) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread

_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i40.i, %bb.r, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i20.i, %bb.k, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE4peekEl.exit.i8.i, %bb.b
  %i.eo = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #16 ; 0 uses
  br label %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread

_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread: ; preds = %bb.l, %bb.s, %bb.d, %bb.c, %bb.m, %bb.n, %bb.o, %bb.t, %bb.u, %bb.v, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_18NumericValueParserEE8checkEndEPKc.exit.i, %bb.w, %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit
  %i.ep = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.a
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread
  %i.er = load i64, ptr %i.a, align 8, !tbaa !10
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNO6hermes6bigint12_GLOBAL__N_118NumericValueParser4goalEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6bigint12ParsedBigInt36parsedBigIntFromStringIntegerLiteralEN4llvh8ArrayRefIcEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.7") align 8 captures(none) initializes((24, 25)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::optional", align 8     ; 10 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !88
  call fastcc void @_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr readonly %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef %3), !noalias !88
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !34, !range !42, !noalias !88, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !88
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !31, !noalias !88
  %i.i = load ptr, ptr %4, align 8, !tbaa !39, !noalias !88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36, !noalias !88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !88
  store i64 %i.k, ptr %i.a, align 8, !tbaa !13, !noalias !88
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16, !noalias !88 ; 2 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !39, !noalias !88
  %i.n = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !88
  store i64 %i.n, ptr %i.h, align 8, !tbaa !10, !noalias !88
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !10, !noalias !88
  store i8 %i.p, ptr %i.o, align 1, !tbaa !10, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false), !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !36, !noalias !88
  %i.s = load ptr, ptr %6, align 8, !tbaa !39, !noalias !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !10, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !88
  %i.u = load i8, ptr %i.b, align 1, !tbaa !10, !noalias !88 ; 5 uses
  %.val.i = load i64, ptr %i.r, align 8, !noalias !88
  switch i8 %i.u, label %bb.f [
    i8 10, label %_ZN6hermes6bigint12_GLOBAL__N_122numBitsForBigintDigitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjT_h.exit.i
    i8 0, label %_ZN4llvh12findFirstSetIhEET_S1_NS_12ZeroBehaviorE.exit.i.i
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.v = and i8 %i.u, 1
  %.not21.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not21.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_122numBitsForBigintDigitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjT_h.exit.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.w = and i8 %i.u, 14
  %i.x = icmp eq i8 %i.w, 0
  %i.y = select i1 %i.x, i8 4, i8 0               ; 2 uses
  %.119.i.i.i.i.i = lshr i8 %i.u, %i.y            ; 2 uses
  %i.z = and i8 %.119.i.i.i.i.i, 3
  %i.aa = icmp eq i8 %i.z, 0
  %i.ab = select i1 %i.aa, i8 2, i8 0             ; 2 uses
  %i.ac = xor i8 %.119.i.i.i.i.i, -1
  %i.ad = lshr i8 %i.ac, %i.ab
  %narrow.2.i.i.i.i.i = and i8 %i.ad, 1
  %i.ae = or disjoint i8 %i.y, %narrow.2.i.i.i.i.i
  %.1.228.i.i.i.i.i = or disjoint i8 %i.ae, %i.ab
  %i.af = zext nneg i8 %.1.228.i.i.i.i.i to i64
  br label %_ZN6hermes6bigint12_GLOBAL__N_122numBitsForBigintDigitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjT_h.exit.i

_ZN4llvh12findFirstSetIhEET_S1_NS_12ZeroBehaviorE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  br label %_ZN6hermes6bigint12_GLOBAL__N_122numBitsForBigintDigitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjT_h.exit.i

_ZN6hermes6bigint12_GLOBAL__N_122numBitsForBigintDigitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjT_h.exit.i: ; preds = %_ZN4llvh12findFirstSetIhEET_S1_NS_12ZeroBehaviorE.exit.i.i, %.preheader.preheader.i.i.i.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ag = phi i64 [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.af, %.preheader.preheader.i.i.i.i.i ], [ 0, %bb.f ], [ 255, %_ZN4llvh12findFirstSetIhEET_S1_NS_12ZeroBehaviorE.exit.i.i ]
  %i.ah = mul i64 %i.ag, %.val.i
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, -64
  %i.ak = add i32 %i.aj, 64
  %i.al = load ptr, ptr %4, align 8, !tbaa !39, !noalias !88
  %i.am = load i64, ptr %i.j, align 8, !tbaa !36, !noalias !88
  call void @_ZN4llvh5APIntC1EjNS_9StringRefEh(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %i.ak, ptr %i.al, i64 %i.am, i8 noundef zeroext %i.u) #16, !noalias !88
  %i.an = load ptr, ptr %6, align 8, !tbaa !39, !noalias !88 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.h
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_122numBitsForBigintDigitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjT_h.exit.i
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !10, !noalias !88
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #17, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_122numBitsForBigintDigitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjT_h.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !15, !noalias !88 ; 3 uses
  %i.at = icmp ult i32 %i.as, 65                  ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !noalias !88 ; 2 uses
  %spec.select.i.i = select i1 %i.at, ptr %5, ptr %i.au
  %i.av = zext i32 %i.as to i64
  %i.aw = add nuw nsw i64 %i.av, 63
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741816               ; 4 uses
  %i.az = load i32, ptr %i.c, align 4, !tbaa !38, !noalias !88
  %i.ba = icmp eq i32 %i.az, -1
  %i.bb = ptrtoint ptr %i.au to i64
end_hunk_0
