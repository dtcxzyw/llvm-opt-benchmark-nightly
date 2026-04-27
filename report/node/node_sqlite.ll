inline.NumInlined: 5069
inline.NumDeleted: 1851
begin_hunk_0_@_ZN4node6sqlite12DatabaseSync18AuthorizerCallbackEPviPKcS4_S4_S4_:_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i
_ZN2v810MaybeLocalINS_5ValueEE14ToLocalCheckedEv.exit: ; preds = %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit58, %bb.s
  store ptr %.sroa.04.0.i57, ptr %i.cm, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %9 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %9, ptr %7, align 8
  store ptr %9, ptr %10, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.ct, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.cv = add i64 %i.g, 648
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load ptr, ptr %10, align 8
  %i.cy = load ptr, ptr %7, align 8               ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
end_hunk_0
