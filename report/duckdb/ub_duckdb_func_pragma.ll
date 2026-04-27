inline.NumInlined: 1202
inline.NumDeleted: 418
begin_hunk_0_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  br label %bb.bp

.lr.ph:                                           ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.sroa.0193.0288 = phi ptr [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.cs, %bb.q ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.0193.0288, align 8, !tbaa !342 ; 5 uses
  %.not.i = icmp eq ptr %i.du, null
  br i1 %.not.i, label %.noexc.i182, label %_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv.exit, !prof !347
end_hunk_0
begin_hunk_1_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.fa = load ptr, ptr %i.ao, align 8, !tbaa !355 ; 2 uses
  %i.fb = load ptr, ptr %2, align 8, !tbaa !358   ; 3 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
end_hunk_1
begin_hunk_2_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(64) %i.fb)
          to label %bb.aw unwind label %bb.bk

end_hunk_2
begin_hunk_3_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14PragmaFunctionESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %i.q, %bb.c ], [ %2, %bb.a ]  ; 13 uses
  %.sroa.08.015 = phi ptr [ %i.p, %bb.c ], [ %0, %bb.a ] ; 7 uses
  invoke void @_ZN6duckdb28SimpleNamedParameterFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(344) %.016, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.08.015)
          to label %.noexc unwind label %bb.d

end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

end_hunk_4
begin_hunk_5_@_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm:bb.a
_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

end_hunk_5
begin_hunk_6_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_6
