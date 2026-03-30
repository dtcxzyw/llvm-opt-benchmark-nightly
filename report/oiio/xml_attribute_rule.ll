begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io16XmlAttributeRuleC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::function", align 16    ; 9 uses
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
end_hunk_0
begin_hunk_1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i64 %i.j, ptr %2, align 16, !tbaa !18
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 16, i1 false), !tbaa.struct !20
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i, ptr %i.k, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !21
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_16XmlAttributeRuleC1EvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.n, align 8, !tbaa !21
  store <2 x ptr> %i.p, ptr %i.l, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_16XmlAttributeRuleC1EvE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.o, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c
end_hunk_1
begin_hunk_2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  store i64 %i.j, ptr %1, align 16, !tbaa !18
  %.sroa.0.0.copyload.i.i.pre.i.i23 = load <2 x i64>, ptr %1, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 16, i1 false), !tbaa.struct !20
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i23, ptr %i.af, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !21
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_16XmlAttributeRuleC1EvE3$_1E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.ai, align 8, !tbaa !21
  store <2 x ptr> %i.ak, ptr %i.ag, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_16XmlAttributeRuleC1EvE3$_1E9_M_invokeERKSt9_Any_dataS5_", ptr %i.aj, align 8, !tbaa !21
  %.not.i.i.i25 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25, label %_ZNSt14_Function_baseD2Ev.exit30, label %bb.g
end_hunk_2
