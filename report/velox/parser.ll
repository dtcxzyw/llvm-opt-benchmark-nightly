inline.NumInlined: 4462
inline.NumDeleted: 1688
begin_hunk_0_@_ZN5arrow4json15RawArrayBuilderILNS0_4Kind4typeE5EE6FinishESt8functionIFNS_6StatusENS0_10BuilderPtrEPSt10shared_ptrINS_5ArrayEEEESB_:bb.a
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc67 unwind label %.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZN5arrow4json15RawArrayBuilderILNS0_4Kind4typeE5EE6FinishESt8functionIFNS_6StatusENS0_10BuilderPtrEPSt10shared_ptrINS_5ArrayEEEESB_:bb.a
_ZN5arrow6StatusD2Ev.exit70:                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.bd = load ptr, ptr %10, align 8, !tbaa !48, !noalias !1612 ; 2 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !48, !alias.scope !1612
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit72, label %.critedge54
end_hunk_1
begin_hunk_2_@_ZN5arrow4json15RawArrayBuilderILNS0_4Kind4typeE5EE6FinishESt8functionIFNS_6StatusENS0_10BuilderPtrEPSt10shared_ptrINS_5ArrayEEEESB_:bb.a
.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.h
end_hunk_2
begin_hunk_3_@_ZN5arrow4json15RawArrayBuilderILNS0_4Kind4typeE5EE6FinishESt8functionIFNS_6StatusENS0_10BuilderPtrEPSt10shared_ptrINS_5ArrayEEEESB_:bb.a
  br i1 %or.cond.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #26
          to label %.noexc74 unwind label %.loopexit.split-lp175

end_hunk_3
begin_hunk_4_@_ZN5arrow4json15RawArrayBuilderILNS0_4Kind4typeE5EE6FinishESt8functionIFNS_6StatusENS0_10BuilderPtrEPSt10shared_ptrINS_5ArrayEEEESB_:bb.a
.loopexit174:                                     ; preds = %.noexc.i.i.i
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

.loopexit.split-lp175:                            ; preds = %bb.u
end_hunk_4
begin_hunk_5_@_ZN5arrow4json15RawArrayBuilderILNS0_4Kind4typeE5EE6FinishESt8functionIFNS_6StatusENS0_10BuilderPtrEPSt10shared_ptrINS_5ArrayEEEESB_:bb.a
bb.bl:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #24
  br label %bb.bn

end_hunk_5
begin_hunk_6_@_ZN5arrow4json15RawArrayBuilderILNS0_4Kind4typeE5EE6FinishESt8functionIFNS_6StatusENS0_10BuilderPtrEPSt10shared_ptrINS_5ArrayEEEESB_:bb.a
  br label %bb.et

.critedge54:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit70
  %i.hp = load ptr, ptr %i.av, align 8, !tbaa !19 ; 8 uses
  %.not.i.i98 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i98, label %bb.bv, label %bb.bp
end_hunk_6
begin_hunk_7_@_ZN5arrow4json15RawArrayBuilderILNS0_4Kind4typeE5EE6FinishESt8functionIFNS_6StatusENS0_10BuilderPtrEPSt10shared_ptrINS_5ArrayEEEESB_:bb.a
  br label %bb.ee

.critedge56:                                      ; preds = %bb.bk, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZN5arrow7struct_ERKSt6vectorISt10shared_ptrINS_5FieldEESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.150") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %7)
end_hunk_7
