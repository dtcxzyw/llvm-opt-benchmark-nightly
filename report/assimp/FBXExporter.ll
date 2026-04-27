inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.avg, i8 0, i64 %i.ave, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.hj, %.noexc1692
  store ptr %i.avd, ptr %92, align 8
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avd, i64 %i.ava ; 2 uses
  store ptr %i.avh, ptr %i.aed, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bop, ptr %i.erb, ptr noundef nonnull align 8 dereferenceable(112) %160)
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.abb

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.zw, %.noexc2801
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #32
  %i.erf = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35
          to label %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2815 unwind label %.body2838.thread ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  br label %.body2838

.body2838:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2830, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2844, %bb.abc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2882
  %.pn930.ph = phi { ptr, i32 } [ %i.exo, %bb.abc ], [ %eh.lpad-body4869, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2830 ], [ %eh.lpad-body4860, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2882 ], [ %eh.lpad-body4878, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2844 ] ; 2 uses
  %.pr = load ptr, ptr %162, align 8              ; 3 uses
  %.not.i.i.i2883 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i2883, label %_ZNSt6vectorIdSaIdEED2Ev.exit2884, label %bb.abd
end_hunk_2
