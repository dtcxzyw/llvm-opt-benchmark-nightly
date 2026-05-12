inline.NumInlined: 152
inline.NumDeleted: 100
begin_hunk_0_@_ZNK8facebook5velox20TimeWithTimezoneType9serializeEv:._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 6, ptr %3, align 8, !tbaa !7
  %i.i = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #14
          to label %.noexc18 unwind label %bb.c   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i13
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %5, align 8, !tbaa !24
  store i64 19, ptr %4, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.i, ptr noundef nonnull align 1 dereferenceable(19) @.str.18, i64 19, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 19, ptr %i.j, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox8TypeBaseILNS0_8TypeKindE4EE8kindNameEv:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox20TimeWithTimezoneType8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #14 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24
  store i64 19, ptr %i.a, align 8, !tbaa !23
end_hunk_1
