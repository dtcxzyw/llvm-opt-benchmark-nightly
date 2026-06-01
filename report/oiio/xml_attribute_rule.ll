inline.NumInlined: 163
inline.NumDeleted: 107
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.photos_editing_formats::image_io::DataMatchResult" = type <{ %"class.photos_editing_formats::image_io::Message", i64, i32, i8, i8, [2 x i8] }>
%"class.photos_editing_formats::image_io::Message" = type { i32, i32, %"class.std::__cxx11::basic_string" }
%"class.photos_editing_formats::image_io::XmlTokenContext" = type <{ %"class.photos_editing_formats::image_io::DataContext", %"class.photos_editing_formats::image_io::DataMatchResult", %"class.photos_editing_formats::image_io::DataRange", i32, [4 x i8] }>
%"class.photos_editing_formats::image_io::DataContext" = type { i64, %"class.photos_editing_formats::image_io::DataRange", ptr, ptr, %"class.std::__cxx11::list" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.photos_editing_formats::image_io::DataRange" = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Attribute\00", align 1
@_ZTVN22photos_editing_formats8image_io16XmlAttributeRuleE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io16XmlAttributeRuleE, ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev, ptr @_ZN22photos_editing_formats8image_io16XmlAttributeRuleD0Ev, ptr @_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE, ptr @_ZNK22photos_editing_formats8image_io7XmlRule21IsPermissibleToFinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@_ZTIN22photos_editing_formats8image_io16XmlAttributeRuleE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io16XmlAttributeRuleE, ptr @_ZTIN22photos_editing_formats8image_io7XmlRuleE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN22photos_editing_formats8image_io16XmlAttributeRuleE = linkonce_odr constant [54 x i8] c"N22photos_editing_formats8image_io16XmlAttributeRuleE\00", align 1
@_ZTIN22photos_editing_formats8image_io7XmlRuleE = external constant ptr
@_ZTVN22photos_editing_formats8image_io7XmlRuleE = external unnamed_addr constant { [6 x ptr] }, align 8
@"_ZTIZN22photos_editing_formats8image_io16XmlAttributeRuleC1EvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io16XmlAttributeRuleC1EvE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN22photos_editing_formats8image_io16XmlAttributeRuleC1EvE3$_0" = internal constant [63 x i8] c"ZN22photos_editing_formats8image_io16XmlAttributeRuleC1EvE3$_0\00", align 1
@"_ZTIZN22photos_editing_formats8image_io16XmlAttributeRuleC1EvE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io16XmlAttributeRuleC1EvE3$_1" }, align 8
@"_ZTSZN22photos_editing_formats8image_io16XmlAttributeRuleC1EvE3$_1" = internal constant [63 x i8] c"ZN22photos_editing_formats8image_io16XmlAttributeRuleC1EvE3$_1\00", align 1

@_ZN22photos_editing_formats8image_io16XmlAttributeRuleC1Ev = unnamed_addr alias void (ptr), ptr @_ZN22photos_editing_formats8image_io16XmlAttributeRuleC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io16XmlAttributeRuleC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::function", align 16    ; 9 uses
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.c, align 1, !tbaa !14
  invoke void @_ZN22photos_editing_formats8image_io7XmlRuleC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN22photos_editing_formats8image_io16XmlAttributeRuleE, i64 16), ptr %0, align 8, !tbaa !16
  %i.h = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule29AddOptionalWhitespaceTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.b unwind label %bb.j       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule15AddNameTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i unwind label %bb.j ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i: ; preds = %bb.b
  %i.j = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i64 %i.j, ptr %2, align 16, !tbaa !18
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 16, i1 false), !tbaa.struct !20
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.k, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !21
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_16XmlAttributeRuleC1EvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.n, align 8, !tbaa !21
  store <2 x ptr> %i.p, ptr %i.l, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_16XmlAttributeRuleC1EvE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.o, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #12
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.u = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule29AddOptionalWhitespaceTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %._crit_edge.i.i13 unwind label %bb.j ; 0 uses

._crit_edge.i.i13:                                ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !7
  store i8 61, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.w, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.x, align 1, !tbaa !14
  %i.y = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.k       ; 0 uses

bb.e:                                             ; preds = %._crit_edge.i.i13
  %i.z = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.v
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.e
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !14
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ad = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule29AddOptionalWhitespaceTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ae = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule23AddQuotedStringTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i24 unwind label %bb.j ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i24: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  store i64 %i.j, ptr %1, align 16, !tbaa !18
  %.sroa.0.i.i.i.i20.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 16, i1 false), !tbaa.struct !20
  store <2 x i64> %.sroa.0.i.i.i.i20.sroa.0.0.copyload, ptr %i.af, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !21
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_16XmlAttributeRuleC1EvE3$_1E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.ai, align 8, !tbaa !21
  store <2 x ptr> %i.ak, ptr %i.ag, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_16XmlAttributeRuleC1EvE3$_1E9_M_invokeERKSt9_Any_dataS5_", ptr %i.aj, align 8, !tbaa !21
  %.not.i.i.i25 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25, label %_ZNSt14_Function_baseD2Ev.exit30, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i24
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit30 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #12
  unreachable

_ZNSt14_Function_baseD2Ev.exit30:                 ; preds = %bb.g, %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.i
  %i.as = load i64, ptr %i.a, align 8, !tbaa !14
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt14_Function_baseD2Ev.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i13
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.v
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.k
  %i.ay = load i64, ptr %i.v, align 8, !tbaa !14
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.j
  %.pn9 = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.au, %bb.j ]
  call void @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.l ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN22photos_editing_formats8image_io7XmlRuleC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule29AddOptionalWhitespaceTerminalEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule15AddNameTerminalEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule23AddQuotedStringTerminalEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io16XmlAttributeRule10HandleNameERKNS0_16XmlActionContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.photos_editing_formats::image_io::XmlTokenContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextC1ERKNS0_16XmlActionContextE(ptr noundef nonnull align 8 dereferenceable(140) %3, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(140) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #11
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not8.i.i.i.i, label %_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.m, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i ] ; 4 uses
  %i.n = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !14
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #11
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i.i.i, label %_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !36

_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.u
}

declare void @_ZN22photos_editing_formats8image_io15XmlTokenContextC1ERKNS0_16XmlActionContextE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !14
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #11
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not8.i.i.i, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.h, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit ] ; 4 uses
  %i.i = load ptr, ptr %.09.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !14
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 48) #11
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !36

_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io16XmlAttributeRule11HandleValueERKNS0_16XmlActionContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
