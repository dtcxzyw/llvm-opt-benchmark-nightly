inline.NumInlined: 804
inline.NumDeleted: 199
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE:bb.a
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28: ; preds = %bb.m, %bb.l
  %.sink13.i.i29 = phi ptr [ %i.ck, %bb.m ], [ %i.ci, %bb.l ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 8
  store i32 5, ptr %i.co, align 8, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 16
  store ptr null, ptr %i.cp, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i29, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 24
  store ptr @.str.60, ptr %4, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @.str.60, i64 21), ptr %.sroa.4.0..sroa_idx18.i, align 8, !tbaa !69
  %i.cq = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %i.cr = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.cs = ptrtoint ptr %i.cq to i64
end_hunk_0
