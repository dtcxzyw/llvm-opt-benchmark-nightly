inline.NumInlined: 737
inline.NumDeleted: 301
begin_hunk_0_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust14SingularString9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !196, !nonnull !69, !align !184
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !174
  %i.bo = icmp eq i8 %i.bn, 9                     ; 3 uses
  %i.bp = select i1 %i.bo, ptr @.str.30, ptr @.str.31
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bq, ptr %5, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust14SingularString9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.bt, ptr %1, align 8, !tbaa !9
  %i.bu = select i1 %i.bo, i64 6, i64 5           ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bt, ptr noundef nonnull align 1 dereferenceable(5) %i.bp, i64 %i.bu, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !13
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust14SingularString9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  store i8 0, ptr %.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !9, !alias.scope !202
  %7 = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %7, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.bu, ptr %i.bx, align 8, !tbaa !13, !alias.scope !202
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 64
end_hunk_2
