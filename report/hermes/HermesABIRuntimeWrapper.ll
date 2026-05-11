inline.NumInlined: 1089
inline.NumDeleted: 535
begin_hunk_0_@_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameID:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402, !nonnull !257, !align !405 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36, !noalias !406
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !409, !noalias !406
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33, !noalias !406
  %i.i = invoke ptr %i.f(ptr noundef %i.h, ptr %2)
          to label %.noexc.i unwind label %bb.q, !inline_history !410
end_hunk_0
