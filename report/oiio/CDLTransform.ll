inline.NumInlined: 442
inline.NumDeleted: 194
begin_hunk_0_@_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ah = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %.03882) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42, !noalias !45, !nonnull !48, !noundef !48
  %i.aj = tail call nonnull ptr @__dynamic_cast(ptr nonnull %i.ai, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_512CDLTransformE, i64 0) #25, !noalias !45 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !18, !alias.scope !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23, !noalias !45 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512CDLTransform14CreateFromFileEPKcS2_:bb.a
          to label %bb.j unwind label %bb.aj

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %5, align 8, !tbaa !59, !nonnull !48, !noundef !48
  invoke void @_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 254, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.k unwind label %bb.ak

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_512CDLTransform19CreateGroupFromFileEPKc:bb.a
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %4, align 8, !tbaa !59, !nonnull !48, !noundef !48
  invoke void @_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 254, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.k unwind label %bb.aa

end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_516CDLTransformImpl22getFirstSOPDescriptionEv:._crit_edge.i.i
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK16OpenColorIO_v2_518FormatMetadataImpl19getChildrenElementsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.a) #25
  %i.l = sext i32 %i.e to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %i.l ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_516CDLTransformImpl22setFirstSOPDescriptionEPKc:._crit_edge.i.i
  %i.p = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImpl19getChildrenElementsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.b) #25
  %i.q = sext i32 %i.f to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.r, i64 %i.q ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
end_hunk_4
begin_hunk_5_@llvm.assume
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21
end_hunk_5
