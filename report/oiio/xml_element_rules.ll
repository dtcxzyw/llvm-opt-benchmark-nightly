begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14XmlElementRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %.sroa.0.i.i.i.i127 = alloca { i64, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %.sroa.0.i.i.i.i100 = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 10 uses
  %.sroa.0.i.i.i.i73 = alloca { i64, i64 }, align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::function", align 8     ; 8 uses
end_hunk_0
begin_hunk_1
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %5, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !25
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.y, align 8, !tbaa !25
  store <2 x ptr> %i.aa, ptr %i.w, align 8, !tbaa !25
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.z, align 8, !tbaa !25
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %.thread, label %bb.c
end_hunk_1
begin_hunk_2
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %4, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i73)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i73, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i73, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i73)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 120 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !25
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !25 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.bi, align 8, !tbaa !25
  store <2 x ptr> %i.bk, ptr %i.bg, align 8, !tbaa !25
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_1E9_M_invokeERKSt9_Any_dataS5_", ptr %i.bj, align 8, !tbaa !25
  %.not.i.i.i78 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i78, label %.thread243, label %bb.h
end_hunk_2
begin_hunk_3
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %3, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i100)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i100, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i100, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i100)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 120 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cr = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !25
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !25 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_2E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.cp, align 8, !tbaa !25
  store <2 x ptr> %i.cr, ptr %i.cn, align 8, !tbaa !25
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_2E9_M_invokeERKSt9_Any_dataS5_", ptr %i.cq, align 8, !tbaa !25
  %.not.i.i.i105 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i105, label %.thread245, label %bb.m
end_hunk_3
begin_hunk_4
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %2, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i127)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i127, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.dq, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i127, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i127)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 120 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 128
  %i.dv = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !25
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !25 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_3E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.dt, align 8, !tbaa !25
  store <2 x ptr> %i.dv, ptr %i.dr, align 8, !tbaa !25
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_3E9_M_invokeERKSt9_Any_dataS5_", ptr %i.du, align 8, !tbaa !25
  %.not.i.i.i132 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i132, label %_ZNSt14_Function_baseD2Ev.exit137, label %bb.r
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io21XmlElementContentRuleC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %.sroa.0.i.i.i.i48 = alloca { i64, i64 }, align 8 ; 4 uses
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %.sroa.0.i.i.i.i34 = alloca { i64, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::function", align 8     ; 8 uses
end_hunk_5
begin_hunk_6
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store i64 %i.l, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.u = load <2 x ptr>, ptr %i.s, align 8, !tbaa !25
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.s, align 8, !tbaa !25
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !25
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.t, align 8, !tbaa !25
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %.thread, label %bb.b
end_hunk_6
begin_hunk_7
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  store i64 %i.l, ptr %2, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i34)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i34, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i34)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 120 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.aq = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !25
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_1E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.ao, align 8, !tbaa !25
  store <2 x ptr> %i.aq, ptr %i.am, align 8, !tbaa !25
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_1E9_M_invokeERKSt9_Any_dataS5_", ptr %i.ap, align 8, !tbaa !25
  %.not.i.i.i39 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i39, label %_ZNSt14_Function_baseD2Ev.exit44, label %bb.g
end_hunk_7
begin_hunk_8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store i64 %i.l, ptr %1, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i48)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i48, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i48, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i48)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 120 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !25
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !25 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_2E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.bd, align 8, !tbaa !25
  store <2 x ptr> %i.bf, ptr %i.bb, align 8, !tbaa !25
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_2E9_M_invokeERKSt9_Any_dataS5_", ptr %i.be, align 8, !tbaa !25
  %.not.i.i.i53 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i53, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.i
end_hunk_8
