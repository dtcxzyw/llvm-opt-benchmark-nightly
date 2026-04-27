inline.NumInlined: 5129
inline.NumDeleted: 2006
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_111RemapNestedERNS_6VectorES2_S2_mRKNS_6vectorINS0_15RemapColumnInfoELb1ESaIS4_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume

_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i94: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit138.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit120
  %.1.i = phi i1 [ false, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit138.thread ], [ %.042.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit120 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.km = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_111RemapNestedERNS_6VectorES2_S2_mRKNS_6vectorINS0_15RemapColumnInfoELb1ESaIS4_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i196: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit242.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit222
  %.1.i28 = phi i1 [ false, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit242.thread ], [ %.046.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit222 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
end_hunk_1
