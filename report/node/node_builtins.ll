inline.NumInlined: 4126
inline.NumDeleted: 1869
begin_hunk_0_@_ZN4node8builtins13BuiltinLoader29ImportBuiltinSourceTextModuleEPNS_5RealmEPKc:bb.a
  %i.r = ptrtoint ptr %i.p to i64
  store i64 %i.r, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %9 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 4 uses
  store ptr %9, ptr %4, align 8
  store ptr %9, ptr %8, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
end_hunk_0
begin_hunk_1_@_ZN4node8builtins13BuiltinLoader29ImportBuiltinSourceTextModuleEPNS_5RealmEPKc:bb.a
  %i.w = call ptr @_ZN2v86Module18GetModuleNamespaceEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %11 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 4 uses
  store ptr %11, ptr %6, align 8
  store ptr %11, ptr %10, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.aa = ptrtoint ptr %i.b to i64
  %i.ab = add i64 %i.aa, 664
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %4, align 8               ; 2 uses
  %i.ae = load ptr, ptr %6, align 8
  %i.af = load ptr, ptr %8, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
end_hunk_1
