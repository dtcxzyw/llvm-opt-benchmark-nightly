begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io12XmlCdataRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
begin_hunk_1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store i64 %i.ab, ptr %2, align 16, !tbaa !18
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 16, i1 false), !tbaa.struct !20
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i, ptr %i.ac, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !21
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_12XmlCdataRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.af, align 8, !tbaa !21
  store <2 x ptr> %i.ah, ptr %i.ad, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_12XmlCdataRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.ag, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d
end_hunk_1
begin_hunk_2
; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14XmlCommentRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_2
begin_hunk_3
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store i64 %i.ab, ptr %2, align 16, !tbaa !38
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 16, i1 false), !tbaa.struct !20
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i, ptr %i.ac, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !21
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.af, align 8, !tbaa !21
  store <2 x ptr> %i.ah, ptr %i.ad, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.ag, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d
end_hunk_3
begin_hunk_4
; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_4
begin_hunk_5
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store i64 %i.t, ptr %2, align 16, !tbaa !40
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !20
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i, ptr %i.u, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 120 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !21
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlCdataOrCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.x, align 8, !tbaa !21
  store <2 x ptr> %i.z, ptr %i.v, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlCdataOrCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.y, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c
end_hunk_5
