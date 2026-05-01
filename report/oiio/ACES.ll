inline.NumInlined: 1453
inline.NumDeleted: 624
begin_hunk_0_@_ZN16OpenColorIO_v2_54ACES11RegisterAllERNS_28BuiltinTransformRegistryImplE:bb.a
  %28 = alloca %"class.std::function.39", align 8 ; 6 uses
  %29 = alloca [31 x %struct.ACES2OutputTransform], align 8 ; 535 uses
  %30 = alloca %class.anon.102, align 8           ; 8 uses
  %31 = alloca %"class.std::function.39", align 8 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_54ACES11RegisterAllERNS_28BuiltinTransformRegistryImplE:bb.a

bb.cm:                                            ; preds = %_ZZN16OpenColorIO_v2_54ACES11RegisterAllERNS_28BuiltinTransformRegistryImplEEN20ACES2OutputTransformD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.avi = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.avk = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_54ACES11RegisterAllERNS_28BuiltinTransformRegistryImplE:bb.a
  %i.awb = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.awa, i64 noundef 208) #23
  %.pr.i = load ptr, ptr %i.avi, align 8, !tbaa !27 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %.body, label %bb.cp

end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_54ACES11RegisterAllERNS_28BuiltinTransformRegistryImplE:bb.a

bb.cr:                                            ; preds = %.noexc340
  store ptr %i.awa, ptr %31, align 8, !tbaa !33
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_4ACES11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_28E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_4ACES11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_28E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.avi, align 8, !tbaa !33
  invoke void @_ZN16OpenColorIO_v2_528BuiltinTransformRegistryImpl10addBuiltinEPKcS2_St8functionIFvRNS_10OpRcPtrVecEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.avx, ptr noundef %i.avz, ptr noundef nonnull %31)
          to label %bb.cs unwind label %.loopexit

bb.cs:                                            ; preds = %bb.cr
  %i.awf = load ptr, ptr %i.avi, align 8, !tbaa !27 ; 2 uses
  %.not.i343 = icmp eq ptr %i.awf, null
  br i1 %.not.i343, label %_ZNSt14_Function_baseD2Ev.exit344, label %bb.ct

end_hunk_3
