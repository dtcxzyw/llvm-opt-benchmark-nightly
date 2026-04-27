inline.NumInlined: 22183
inline.NumDeleted: 7890
begin_hunk_0_@_ZNK6google8protobuf20FileDescriptorTables38FindEnumValueByNumberCreatingIfUnknownEPKNS0_14EnumDescriptorEi:bb.a
  br label %bb.as

bb.as:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %bb.ar, %bb.an
  %.pn35.pn = phi { ptr, i32 } [ %i.ev, %bb.ao ], [ %.pn30, %bb.an ], [ %i.fd, %bb.ar ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.at
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf17DescriptorBuilder9BuildFileERKNS0_19FileDescriptorProtoE:bb.a
  call void @_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf14DescriptorPool6Tables13AddCheckpointEv.exit

_ZN6google8protobuf14DescriptorPool6Tables13AddCheckpointEv.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.ge = call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #48, !noalias !1168 ; 41 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ge, i8 0, i64 224, i1 false), !noalias !1168
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_:bb.a
  br label %_ZSt19__relocate_object_aIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZSt19__relocate_object_aIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i, %bb.k
  %i.dh = phi i64 [ %i.dd, %bb.k ], [ %.pre2.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 40
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !23, !alias.scope !2631, !noalias !2634
end_hunk_2
