begin_hunk_0
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::span", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %.sroa.0.i.i.i139 = alloca { i64, i64 }, align 8 ; 4 uses
  %11 = alloca %"class.std::function", align 8    ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %12 = alloca %"class.std::function", align 8    ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
end_hunk_0
begin_hunk_1
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.am, align 8
  store i64 %i.ak, ptr %12, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 328 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 336
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !96
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.an, align 8, !tbaa !96
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !96
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_0E9_M_invokeERKSt9_Any_dataS4_OS9_", ptr %i.ao, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", label %bb.g
end_hunk_1
begin_hunk_2
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cd, align 8
  store i64 %i.cb, ptr %11, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i139)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i139, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i139, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i139)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 328 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 336
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !96
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !96 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ce, align 8, !tbaa !96
  store <2 x ptr> %i.cg, ptr %i.cc, align 8, !tbaa !96
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_1E9_M_invokeERKSt9_Any_dataS4_OS9_", ptr %i.cf, align 8, !tbaa !96
  %.not.i.i140 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i140, label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", label %bb.o
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg6actionEOSt8functionIFvRS2_NS0_4spanIKPKcLm18446744073709551615EEEEE(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !96
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !43
end_hunk_3
begin_hunk_4
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEC2EOSB_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEC2EOSB_.exit.i

_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEC2EOSB_.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !96
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !96
  store <2 x ptr> %i.c, ptr %i.f, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSEOSB_.exit, label %bb.c
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse18set_preoption_helpESt8functionIFvRKS1_RSoEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.24", align 8  ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i, label %bb.b
end_hunk_5
begin_hunk_6

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !96
  br label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

end_hunk_6
begin_hunk_7
  resume { ptr, i32 } %i.h

_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i: ; preds = %bb.c, %bb.a
  %3 = phi <2 x ptr> [ zeroinitializer, %bb.a ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !96
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  store <2 x ptr> %i.n, ptr %i.c, align 8, !tbaa !96
  store <2 x ptr> %3, ptr %i.m, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEaSERKS7_.exit, label %bb.g
end_hunk_7
begin_hunk_8
; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse19set_postoption_helpESt8functionIFvRKS1_RSoEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.24", align 8  ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i, label %bb.b
end_hunk_8
begin_hunk_9

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !96
  br label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

end_hunk_9
begin_hunk_10
  resume { ptr, i32 } %i.h

_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i: ; preds = %bb.c, %bb.a
  %3 = phi <2 x ptr> [ zeroinitializer, %bb.a ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !96
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  store <2 x ptr> %i.n, ptr %i.c, align 8, !tbaa !96
  store <2 x ptr> %3, ptr %i.m, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEaSERKS7_.exit, label %bb.g
end_hunk_10
