inline.NumInlined: 536
inline.NumDeleted: 234
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
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.4" }
%"struct.std::_Head_base.4" = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"Element\00", align 1
@_ZTVN22photos_editing_formats8image_io14XmlElementRuleE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io14XmlElementRuleE, ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev, ptr @_ZN22photos_editing_formats8image_io14XmlElementRuleD0Ev, ptr @_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE, ptr @_ZNK22photos_editing_formats8image_io7XmlRule21IsPermissibleToFinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@_ZN22photos_editing_formats8image_io12_GLOBAL__N_111kWhitespaceE = internal unnamed_addr constant [11 x i8] c"Whitespace\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"~/>\00", align 1
@_ZN22photos_editing_formats8image_io12_GLOBAL__N_127kElementSentinalDescriptionE = internal unnamed_addr constant [71 x i8] c"The start of an attribute name or the end of the element ('>' or '/>')\00", align 16
@_ZN22photos_editing_formats8image_io12_GLOBAL__N_116kEmptyElementEndE = internal unnamed_addr constant [16 x i8] c"EmptyElementEnd\00", align 16
@_ZN22photos_editing_formats8image_io12_GLOBAL__N_111kElementEndE = internal unnamed_addr constant [11 x i8] c"ElementEnd\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ElementContent\00", align 1
@_ZTVN22photos_editing_formats8image_io21XmlElementContentRuleE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io21XmlElementContentRuleE, ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev, ptr @_ZN22photos_editing_formats8image_io21XmlElementContentRuleD0Ev, ptr @_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE, ptr @_ZNK22photos_editing_formats8image_io7XmlRule21IsPermissibleToFinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@_ZTIN22photos_editing_formats8image_io14XmlElementRuleE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io14XmlElementRuleE, ptr @_ZTIN22photos_editing_formats8image_io7XmlRuleE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN22photos_editing_formats8image_io14XmlElementRuleE = linkonce_odr constant [52 x i8] c"N22photos_editing_formats8image_io14XmlElementRuleE\00", align 1
@_ZTIN22photos_editing_formats8image_io7XmlRuleE = external constant ptr
@_ZTIN22photos_editing_formats8image_io21XmlElementContentRuleE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io21XmlElementContentRuleE, ptr @_ZTIN22photos_editing_formats8image_io7XmlRuleE }, align 8
@_ZTSN22photos_editing_formats8image_io21XmlElementContentRuleE = linkonce_odr constant [59 x i8] c"N22photos_editing_formats8image_io21XmlElementContentRuleE\00", align 1
@_ZTVN22photos_editing_formats8image_io7XmlRuleE = external unnamed_addr constant { [6 x ptr] }, align 8
@"_ZTIZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_0" = internal constant [85 x i8] c"ZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_0\00", align 1
@"_ZTIZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_1" }, align 8
@"_ZTSZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_1" = internal constant [85 x i8] c"ZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_1\00", align 1
@"_ZTIZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_2" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_2" }, align 8
@"_ZTSZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_2" = internal constant [85 x i8] c"ZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_2\00", align 1
@"_ZTIZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_3" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_3" }, align 8
@"_ZTSZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_3" = internal constant [85 x i8] c"ZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointEE3$_3\00", align 1
@"_ZTIZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_0" }, align 8
@"_ZTSZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_0" = internal constant [68 x i8] c"ZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_0\00", align 1
@"_ZTIZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_1" }, align 8
@"_ZTSZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_1" = internal constant [68 x i8] c"ZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_1\00", align 1
@"_ZTIZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_2" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_2" }, align 8
@"_ZTSZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_2" = internal constant [68 x i8] c"ZN22photos_editing_formats8image_io21XmlElementContentRuleC1EvE3$_2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN22photos_editing_formats8image_io14XmlElementRuleC1Ev = unnamed_addr alias void (ptr), ptr @_ZN22photos_editing_formats8image_io14XmlElementRuleC2Ev
@_ZN22photos_editing_formats8image_io14XmlElementRuleC1ENS0_7XmlRule10StartPointE = unnamed_addr alias void (ptr, i32), ptr @_ZN22photos_editing_formats8image_io14XmlElementRuleC2ENS0_7XmlRule10StartPointE
@_ZN22photos_editing_formats8image_io21XmlElementContentRuleC1Ev = unnamed_addr alias void (ptr), ptr @_ZN22photos_editing_formats8image_io21XmlElementContentRuleC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14XmlElementRuleC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN22photos_editing_formats8image_io14XmlElementRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
  ret void
}

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
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::function", align 8    ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::function", align 8    ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 23
  store i8 0, ptr %i.d, align 1, !tbaa !14
  invoke void @_ZN22photos_editing_formats8image_io7XmlRuleC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.a unwind label %bb.u

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !14
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN22photos_editing_formats8image_io14XmlElementRuleE, i64 16), ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !7
  store i8 60, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.k, align 1, !tbaa !14
  %i.l = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.v       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.b
  %i.o = load i64, ptr %i.i, align 8, !tbaa !14
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.q = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule15AddNameTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i unwind label %bb.w ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.r = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.u, align 8
  store i64 %i.r, ptr %8, align 8, !tbaa !18
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.t, align 8, !tbaa !20
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.s, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
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

.thread:                                          ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.c:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.af = phi ptr [ @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", %.thread ], [ %.pre, %bb.e ]
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.aj = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule29AddOptionalWhitespaceTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %._crit_edge.i.i56 unwind label %bb.w

._crit_edge.i.i56:                                ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ak, ptr %9, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ak, ptr noundef nonnull align 1 dereferenceable(10) @_ZN22photos_editing_formats8image_io12_GLOBAL__N_111kWhitespaceE, i64 10, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.al, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 26
  store i8 0, ptr %i.am, align 2, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN22photos_editing_formats8image_io11XmlTerminal8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.x

_ZN22photos_editing_formats8image_io11XmlTerminal8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i56
  %i.ao = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ak
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZN22photos_editing_formats8image_io11XmlTerminal8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZN22photos_editing_formats8image_io11XmlTerminal8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.as, ptr %10, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.as, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3, ptr %i.at, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 19
  store i8 0, ptr %i.au, align 1, !tbaa !14
  %i.av = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule19AddSentinelTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i69 unwind label %bb.y ; 4 uses

.noexc.i69:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.aw, ptr %11, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 70, ptr %i.a, align 8, !tbaa !26
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc70 unwind label %bb.z   ; 3 uses

.noexc70:                                         ; preds = %.noexc.i69
  store ptr %i.ax, ptr %11, align 8, !tbaa !15
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.ax, ptr noundef nonnull align 16 dereferenceable(70) @_ZN22photos_editing_formats8image_io12_GLOBAL__N_127kElementSentinalDescriptionE, i64 70, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i77 unwind label %bb.aa

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i77: ; preds = %.noexc70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.be, align 8
  store i64 %i.r, ptr %12, align 8, !tbaa !18
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_1E9_M_invokeERKSt9_Any_dataS5_", ptr %i.bd, align 8, !tbaa !20
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.bc, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
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

.thread243:                                       ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i77
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.j unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %.pre192 = load ptr, ptr %i.bc, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.not.i82 = icmp eq ptr %.pre192, null
  br i1 %.not.i82, label %_ZNSt14_Function_baseD2Ev.exit83, label %bb.k

bb.k:                                             ; preds = %.thread243, %bb.j
  %i.bp = phi ptr [ @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", %.thread243 ], [ %.pre192, %bb.j ]
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit83 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit83:                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.bt = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aw
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt14_Function_baseD2Ev.exit83
  %i.bv = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt14_Function_baseD2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.bx = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.as
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.bz = load i64, ptr %i.as, align 8, !tbaa !14
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.cb, ptr %13, align 8, !tbaa !7
  store i16 15919, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 18
  store i8 0, ptr %i.cd, align 2, !tbaa !14
  %i.ce = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %._crit_edge.i.i94 unwind label %bb.ac ; 4 uses

._crit_edge.i.i94:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.cf, ptr %14, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.cf, ptr noundef nonnull align 16 dereferenceable(15) @_ZN22photos_editing_formats8image_io12_GLOBAL__N_116kEmptyElementEndE, i64 15, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 15, ptr %i.cg, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 31
  store i8 0, ptr %i.ch, align 1, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 136
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i104 unwind label %bb.ad

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i104: ; preds = %._crit_edge.i.i94
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.cl, align 8
  store i64 %i.r, ptr %15, align 8, !tbaa !18
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_2E9_M_invokeERKSt9_Any_dataS5_", ptr %i.ck, align 8, !tbaa !20
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_2E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.cj, align 8, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
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

.thread245:                                       ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.p

bb.m:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i104
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #14
  unreachable

bb.o:                                             ; preds = %bb.m
  %.pre194 = load ptr, ptr %i.cj, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.not.i109 = icmp eq ptr %.pre194, null
  br i1 %.not.i109, label %_ZNSt14_Function_baseD2Ev.exit110, label %bb.p

bb.p:                                             ; preds = %.thread245, %bb.o
  %i.cw = phi ptr [ @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlElementRuleC1ENS1_7XmlRule10StartPointEE3$_2E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", %.thread245 ], [ %.pre194, %bb.o ]
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit110 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit110:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %i.da = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cf
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt14_Function_baseD2Ev.exit110
  %i.dc = load i64, ptr %i.cf, align 8, !tbaa !14
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt14_Function_baseD2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.de = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cb
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.dg = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.di, ptr %16, align 8, !tbaa !7
  store i8 62, ptr %i.di, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.dj, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.dk, align 1, !tbaa !14
  %i.dl = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %._crit_edge.i.i121 unwind label %bb.af ; 4 uses

._crit_edge.i.i121:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.dm, ptr %17, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dm, ptr noundef nonnull align 1 dereferenceable(10) @_ZN22photos_editing_formats8image_io12_GLOBAL__N_111kElementEndE, i64 10, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 10, ptr %i.dn, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 26
  store i8 0, ptr %i.do, align 2, !tbaa !14
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 136
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i131 unwind label %bb.ag

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i131: ; preds = %._crit_edge.i.i121
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
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

bb.r:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i131
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit137 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit137:                ; preds = %bb.r, %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.ea = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dm
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt14_Function_baseD2Ev.exit137
  %i.ec = load i64, ptr %i.dm, align 8, !tbaa !14
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt14_Function_baseD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  %i.ee = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.di
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.eg = load i64, ptr %i.di, align 8, !tbaa !14
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.ei = icmp eq i32 %1, 1
  br i1 %i.ei, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule16SetTerminalIndexEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1)
          to label %bb.ai unwind label %bb.w

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.b
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.u
  %i.em = load i64, ptr %i.b, align 8, !tbaa !14
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ak

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.i
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.v
  %i.er = load i64, ptr %i.i, align 8, !tbaa !14
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.aj

bb.w:                                             ; preds = %bb.t, %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.x:                                             ; preds = %._crit_edge.i.i56
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ak
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.x
  %i.ex = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.aj

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %.noexc.i69
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

bb.aa:                                            ; preds = %.noexc70
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.aw
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.aa
  %i.fe = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %bb.z
  %.pn28.pn = phi { ptr, i32 } [ %i.fa, %bb.z ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %i.fb, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %bb.y
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.ez, %bb.y ]
  %i.fg = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.as
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.ab
  %i.fi = load i64, ptr %i.as, align 8, !tbaa !14
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.aj

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i94
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.cf
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.ad
  %i.fo = load i64, ptr %i.cf, align 8, !tbaa !14
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %bb.ac
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.fk, %bb.ac ]
  %i.fq = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.cb
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.ae
  %i.fs = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i121
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.dm
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.ag
  %i.fy = load i64, ptr %i.dm, align 8, !tbaa !14
end_hunk_0
begin_hunk_1_@_ZN22photos_editing_formats8image_io14XmlElementRule21HandleEmptyElemTagEndERKNS0_16XmlActionContextE:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !59, !noalias !61
  %i.l = load i64, ptr %2, align 8, !tbaa !64, !noalias !61
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65, !noalias !61, !nonnull !66, !align !67
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68, !noalias !61, !nonnull !66, !align !67
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextC1EmRKNS0_9DataRangeERKNS0_11DataSegmentERKNS0_11DataLineMapERKNS0_15DataMatchResultES4_RKNS0_10XmlPortionE(ptr noundef nonnull align 8 dereferenceable(140) %3, i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(28) %i.o, ptr noundef nonnull align 8 dereferenceable(25) %i.q, ptr noundef nonnull align 8 dereferenceable(54) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(140) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.z = load i64, ptr %i.x, align 8, !tbaa !14
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #13
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not8.i.i.i.i, label %_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ac, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i ] ; 4 uses
  %i.ad = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #13
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !41

_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14XmlElementRule13HandleSTagEndERKNS0_16XmlActionContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !7
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.i, ptr %i.a, align 8, !tbaa !26
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !15
  %i.l = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.l, ptr %i.f, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN22photos_editing_formats8image_io15DataMatchResultC2ERKS1_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !14
  store i8 %i.n, ptr %i.m, align 1, !tbaa !14
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultC2ERKS1_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultC2ERKS1_.exit

_ZN22photos_editing_formats8image_io15DataMatchResultC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !11
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.s, ptr noundef nonnull align 8 dereferenceable(14) %i.t, i64 14, i1 false)
  %i.u = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15
          to label %bb.d unwind label %bb.g       ; 3 uses

bb.d:                                             ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultC2ERKS1_.exit
  invoke void @_ZN22photos_editing_formats8image_io21XmlElementContentRuleC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.u)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %i.u to i64
  store i64 %i.v, ptr %3, align 8, !tbaa !51
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule11SetNextRuleESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %3, align 8, !tbaa !51     ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit8, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i: ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.w) #12, !inline_history !53
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit8

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit8: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i, %bb.f
  ret void

bb.g:                                             ; preds = %_ZN22photos_editing_formats8image_io15DataMatchResultC2ERKS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit14

bb.h:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 80) #13
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit14

bb.i:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !51    ; 3 uses
  %.not.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit14, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i10

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i10: ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ad) #12, !inline_history !53
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit14

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit14: ; preds = %bb.i, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i10, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ab, %bb.h ], [ %i.ac, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i10 ], [ %i.ac, %bb.i ]
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.f
  br i1 %i.ai, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit14
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !14
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #13
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %.pn
}

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
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.5, i64 14, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 30
  store i8 0, ptr %i.c, align 2, !tbaa !14
  invoke void @_ZN22photos_editing_formats8image_io7XmlRuleC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.l

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN22photos_editing_formats8image_io21XmlElementContentRuleE, i64 16), ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !7
  store i8 60, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !14
  %i.k = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule25AddThroughLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i unwind label %bb.m ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.l = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.o, align 8
  store i64 %i.l, ptr %6, align 8, !tbaa !69
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.n, align 8, !tbaa !20
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.m, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store i64 %i.l, ptr %3, align 8, !tbaa !69
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

.thread:                                          ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.e

bb.b:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.z = phi ptr [ @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlElementContentRuleC1EvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", %.thread ], [ %.pre, %bb.d ]
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.ad = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.af = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ah, ptr %7, align 8, !tbaa !7
  store i32 790708094, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.ai, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.aj, align 4, !tbaa !14
  %i.ak = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule19AddSentinelTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i38 unwind label %bb.n ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  store i64 %i.l, ptr %2, align 8, !tbaa !69
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

bb.g:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i38
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit44 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit44:                 ; preds = %bb.g, %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.av = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ah
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt14_Function_baseD2Ev.exit44
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !14
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt14_Function_baseD2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.az = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule15AddNameTerminalEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i52 unwind label %bb.o ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store i64 %i.l, ptr %1, align 8, !tbaa !69
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

bb.i:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i52
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.i, %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bk, ptr %8, align 8, !tbaa !7
  store i8 62, ptr %i.bk, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.bl, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.bm, align 1, !tbaa !14
  %i.bn = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.p       ; 0 uses

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.bo = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bk
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.k
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.a
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.l
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !14
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.r

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.h
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.m
  %i.ca = load i64, ptr %i.h, align 8, !tbaa !14
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.q

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ah
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.n
  %i.cf = load i64, ptr %i.ah, align 8, !tbaa !14
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.q

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bk
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.p
  %i.cl = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn17.pn = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.ch, %bb.o ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ]
  call void @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.q ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  resume { ptr, i32 } %.pn17.pn.pn
}

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule25AddThroughLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io21XmlElementContentRule13HandleContentERKNS0_16XmlActionContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.photos_editing_formats::image_io::DataRange", align 8 ; 7 uses
  %4 = alloca %"class.photos_editing_formats::image_io::XmlTokenContext", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp eq i32 %i.k, 3
  %i.m = sext i1 %i.l to i64
  %spec.select = add i64 %i.h, %i.m               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i64 %i.f, ptr %3, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %spec.select, ptr %i.n, align 8, !tbaa !72
  %.not.not = icmp ugt i64 %spec.select, %i.f
  br i1 %.not.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 7, ptr %i.b, align 4, !tbaa !59, !noalias !73
  %i.p = load i64, ptr %2, align 8, !tbaa !64, !noalias !73
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65, !noalias !73, !nonnull !66, !align !67
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68, !noalias !73, !nonnull !66, !align !67
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextC1EmRKNS0_9DataRangeERKNS0_11DataSegmentERKNS0_11DataLineMapERKNS0_15DataMatchResultES4_RKNS0_10XmlPortionE(ptr noundef nonnull align 8 dereferenceable(140) %4, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(28) %i.s, ptr noundef nonnull align 8 dereferenceable(25) %i.u, ptr noundef nonnull align 8 dereferenceable(54) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr dead_on_unwind writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(140) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !43
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner15ResetTokenRangeEv(ptr noundef nonnull align 8 dereferenceable(100) %i.aa)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !14
  %i.ai = add i64 %i.ah, 1
end_hunk_1
