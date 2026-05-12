inline.NumInlined: 322
inline.NumDeleted: 259
begin_hunk_0_@_ZN6hermes22generateLazyFunctionIREPNS_3hbc19LazyCompilationDataEPNS_6ModuleE
define hidden { ptr, ptr } @_ZN6hermes22generateLazyFunctionIREPNS_3hbc19LazyCompilationDataEPNS_6ModuleE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.hermes::SimpleDiagHandlerRAII", align 8 ; 5 uses
  %3 = alloca %"class.hermes::sem::SemContext", align 8 ; 15 uses
  %4 = alloca %"class.hermes::parser::JSParser", align 8 ; 6 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes22generateLazyFunctionIREPNS_3hbc19LazyCompilationDataEPNS_6ModuleE:bb.a
  store ptr %i.g, ptr %i.m, align 8, !tbaa !124
  store ptr %i.e, ptr %i.f, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  store i64 8, ptr %i.p, align 8, !tbaa !125
  %i.q = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #12 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !130
  %10 = load i64, ptr %i.p, align 8, !tbaa !125
  %11 = add i64 %10, -1
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %12 ; 3 uses
  %i.r = call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #12 ; 6 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %13, ptr %i.t, align 8, !tbaa !132
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 320 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes22generateLazyFunctionIREPNS_3hbc19LazyCompilationDataEPNS_6ModuleE:bb.a
  store ptr %i.v, ptr %i.w, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %13, ptr %i.y, align 8, !tbaa !132
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.r, ptr %i.z, align 8, !tbaa !133
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
end_hunk_2
