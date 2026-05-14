inline.NumInlined: 295
inline.NumDeleted: 149
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

@.str = private unnamed_addr constant [6 x i8] c"CDATA\00", align 1
@_ZTVN22photos_editing_formats8image_io12XmlCdataRuleE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io12XmlCdataRuleE, ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev, ptr @_ZN22photos_editing_formats8image_io12XmlCdataRuleD0Ev, ptr @_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE, ptr @_ZNK22photos_editing_formats8image_io7XmlRule21IsPermissibleToFinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"[CDATA[\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"]]>\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@_ZTVN22photos_editing_formats8image_io14XmlCommentRuleE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io14XmlCommentRuleE, ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev, ptr @_ZN22photos_editing_formats8image_io14XmlCommentRuleD0Ev, ptr @_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE, ptr @_ZNK22photos_editing_formats8image_io7XmlRule21IsPermissibleToFinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"CdataOrComment\00", align 1
@_ZTVN22photos_editing_formats8image_io21XmlCdataOrCommentRuleE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io21XmlCdataOrCommentRuleE, ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev, ptr @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleD0Ev, ptr @_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE, ptr @_ZNK22photos_editing_formats8image_io7XmlRule21IsPermissibleToFinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@_ZTIN22photos_editing_formats8image_io12XmlCdataRuleE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io12XmlCdataRuleE, ptr @_ZTIN22photos_editing_formats8image_io7XmlRuleE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN22photos_editing_formats8image_io12XmlCdataRuleE = linkonce_odr constant [50 x i8] c"N22photos_editing_formats8image_io12XmlCdataRuleE\00", align 1
@_ZTIN22photos_editing_formats8image_io7XmlRuleE = external constant ptr
@_ZTIN22photos_editing_formats8image_io14XmlCommentRuleE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io14XmlCommentRuleE, ptr @_ZTIN22photos_editing_formats8image_io7XmlRuleE }, align 8
@_ZTSN22photos_editing_formats8image_io14XmlCommentRuleE = linkonce_odr constant [52 x i8] c"N22photos_editing_formats8image_io14XmlCommentRuleE\00", align 1
@_ZTIN22photos_editing_formats8image_io21XmlCdataOrCommentRuleE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io21XmlCdataOrCommentRuleE, ptr @_ZTIN22photos_editing_formats8image_io7XmlRuleE }, align 8
@_ZTSN22photos_editing_formats8image_io21XmlCdataOrCommentRuleE = linkonce_odr constant [59 x i8] c"N22photos_editing_formats8image_io21XmlCdataOrCommentRuleE\00", align 1
@_ZTVN22photos_editing_formats8image_io7XmlRuleE = external unnamed_addr constant { [6 x ptr] }, align 8
@"_ZTIZN22photos_editing_formats8image_io12XmlCdataRuleC1ENS0_7XmlRule10StartPointEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io12XmlCdataRuleC1ENS0_7XmlRule10StartPointEE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN22photos_editing_formats8image_io12XmlCdataRuleC1ENS0_7XmlRule10StartPointEE3$_0" = internal constant [83 x i8] c"ZN22photos_editing_formats8image_io12XmlCdataRuleC1ENS0_7XmlRule10StartPointEE3$_0\00", align 1
@"_ZTIZN22photos_editing_formats8image_io14XmlCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io14XmlCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0" }, align 8
@"_ZTSZN22photos_editing_formats8image_io14XmlCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0" = internal constant [85 x i8] c"ZN22photos_editing_formats8image_io14XmlCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0\00", align 1
@"_ZTIZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0" }, align 8
@"_ZTSZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0" = internal constant [92 x i8] c"ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0\00", align 1

@_ZN22photos_editing_formats8image_io12XmlCdataRuleC1Ev = unnamed_addr alias void (ptr), ptr @_ZN22photos_editing_formats8image_io12XmlCdataRuleC2Ev
@_ZN22photos_editing_formats8image_io12XmlCdataRuleC1ENS0_7XmlRule10StartPointE = unnamed_addr alias void (ptr, i32), ptr @_ZN22photos_editing_formats8image_io12XmlCdataRuleC2ENS0_7XmlRule10StartPointE
@_ZN22photos_editing_formats8image_io14XmlCommentRuleC1Ev = unnamed_addr alias void (ptr), ptr @_ZN22photos_editing_formats8image_io14XmlCommentRuleC2Ev
@_ZN22photos_editing_formats8image_io14XmlCommentRuleC1ENS0_7XmlRule10StartPointE = unnamed_addr alias void (ptr, i32), ptr @_ZN22photos_editing_formats8image_io14XmlCommentRuleC2ENS0_7XmlRule10StartPointE
@_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1Ev = unnamed_addr alias void (ptr), ptr @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC2Ev
@_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1ENS0_7XmlRule10StartPointE = unnamed_addr alias void (ptr, i32), ptr @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC2ENS0_7XmlRule10StartPointE

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io12XmlCdataRuleC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN22photos_editing_formats8image_io12XmlCdataRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io12XmlCdataRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !14
  invoke void @_ZN22photos_editing_formats8image_io7XmlRuleC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN22photos_editing_formats8image_io12XmlCdataRuleE, i64 16), ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !7
  store i16 8508, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.j, align 2, !tbaa !14
  %i.k = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.b
  %i.n = load i64, ptr %i.h, align 8, !tbaa !14
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.p, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.t = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.p
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.c
  %i.v = load i64, ptr %i.p, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.x, ptr %6, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.x, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 19
  store i8 0, ptr %i.z, align 1, !tbaa !14
  %i.aa = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule25AddThroughLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i unwind label %bb.j ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store i64 %i.ab, ptr %2, align 16, !tbaa !18
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 16, i1 false), !tbaa.struct !20
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ac, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !21
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_12XmlCdataRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.af, align 8, !tbaa !21
  store <2 x ptr> %i.ah, ptr %i.ad, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_12XmlCdataRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.ag, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #13
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.am = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.x
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !14
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.aq = icmp eq i32 %1, 1
  br i1 %i.aq, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule16SetTerminalIndexEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1)
          to label %bb.l unwind label %bb.k

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.au = load i64, ptr %i.a, align 8, !tbaa !14
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.n

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.h
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.az = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.m

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.p
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.be = load i64, ptr %i.p, align 8, !tbaa !14
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.x
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.j
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !14
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  ret void

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn18 = phi { ptr, i32 } [ %i.bl, %bb.k ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  call void @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.m ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN22photos_editing_formats8image_io7XmlRuleC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule25AddThroughLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io7XmlRule16SetTerminalIndexEm(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io12XmlCdataRule16HandleCdataValueERKNS0_16XmlActionContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.photos_editing_formats::image_io::XmlTokenContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextC1ERKNS0_16XmlActionContextE(ptr noundef nonnull align 8 dereferenceable(140) %3, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
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
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #12
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
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #12
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i.i.i, label %_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !36

_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
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
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #12
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
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 48) #12
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !36

_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14XmlCommentRuleC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN22photos_editing_formats8image_io14XmlCommentRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14XmlCommentRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !14
  invoke void @_ZN22photos_editing_formats8image_io7XmlRuleC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN22photos_editing_formats8image_io14XmlCommentRuleE, i64 16), ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !7
  store i16 8508, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.j, align 2, !tbaa !14
  %i.k = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.b
  %i.n = load i64, ptr %i.h, align 8, !tbaa !14
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !7
  store i16 11565, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.r, align 2, !tbaa !14
  %i.s = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.t = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.p
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.c
  %i.v = load i64, ptr %i.p, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.x, ptr %6, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.x, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 19
  store i8 0, ptr %i.z, align 1, !tbaa !14
  %i.aa = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule25AddThroughLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i unwind label %bb.j ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store i64 %i.ab, ptr %2, align 16, !tbaa !38
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 16, i1 false), !tbaa.struct !20
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ac, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !21
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.af, align 8, !tbaa !21
  store <2 x ptr> %i.ah, ptr %i.ad, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.ag, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #13
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.am = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.x
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !14
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.aq = icmp eq i32 %1, 1
  br i1 %i.aq, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule16SetTerminalIndexEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1)
          to label %bb.l unwind label %bb.k

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.au = load i64, ptr %i.a, align 8, !tbaa !14
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.n

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.h
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.az = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.m

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.p
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.be = load i64, ptr %i.p, align 8, !tbaa !14
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.x
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.j
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !14
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  ret void

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn18 = phi { ptr, i32 } [ %i.bl, %bb.k ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  call void @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.m ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14XmlCommentRule18HandleCommentValueERKNS0_16XmlActionContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.photos_editing_formats::image_io::XmlTokenContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextC1ERKNS0_16XmlActionContextE(ptr noundef nonnull align 8 dereferenceable(140) %3, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
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
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #12
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
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #12
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i.i.i, label %_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !36

_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io15XmlTokenContextD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC2ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.7, i64 14, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.c, align 2, !tbaa !14
  invoke void @_ZN22photos_editing_formats8image_io7XmlRuleC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN22photos_editing_formats8image_io21XmlCdataOrCommentRuleE, i64 16), ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !7
  store i16 8508, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.j, align 2, !tbaa !14
  %i.k = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule18AddLiteralTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.b
  %i.n = load i64, ptr %i.h, align 8, !tbaa !14
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !7
  store i16 11611, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.r, align 2, !tbaa !14
  %i.s = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule19AddSentinelTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i unwind label %bb.h ; 3 uses

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.t = ptrtoint ptr %0 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store i64 %i.t, ptr %2, align 16, !tbaa !40
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !20
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.u, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 120 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !21
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlCdataOrCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.x, align 8, !tbaa !21
  store <2 x ptr> %i.z, ptr %i.v, align 16, !tbaa !21
  store ptr @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlCdataOrCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_", ptr %i.y, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #13
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.ae = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ai = icmp eq i32 %1, 1
  br i1 %i.ai, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule16SetTerminalIndexEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.f
  %i.am = load i64, ptr %i.a, align 8, !tbaa !14
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.l

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.g
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !14
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.p
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.h
  %i.aw = load i64, ptr %i.p, align 8, !tbaa !14
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  ret void

bb.k:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn15 = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.k ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn15.pn
}

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN22photos_editing_formats8image_io7XmlRule19AddSentinelTerminalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRule18HandlePostBangCharERKNS0_16XmlActionContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = tail call noundef signext i8 @_ZNK22photos_editing_formats8image_io11DataScanner11GetSentinelEv(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
  switch i8 %i.c, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit16 [
    i8 91, label %bb.b
    i8 45, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #14 ; 3 uses
  invoke void @_ZN22photos_editing_formats8image_io12XmlCdataRuleC1ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %3, align 8, !tbaa !50
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule11SetNextRuleESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit16, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit16.sink.split

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #12
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit22

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !50     ; 3 uses
  %.not.i17 = icmp eq ptr %i.i, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i18

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i18: ; preds = %bb.f
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.i) #11, !inline_history !52
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit22

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #14 ; 3 uses
  invoke void @_ZN22photos_editing_formats8image_io14XmlCommentRuleC1ENS0_7XmlRule10StartPointE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i32 noundef 1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = ptrtoint ptr %i.m to i64
  store i64 %i.n, ptr %4, align 8, !tbaa !50
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule11SetNextRuleESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %.not.i23 = icmp eq ptr %i.o, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit16, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit16.sink.split

bb.j:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 80) #12
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit22

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !50     ; 3 uses
  %.not.i29 = icmp eq ptr %i.r, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i30

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i30: ; preds = %bb.k
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.r) #11, !inline_history !52
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit22

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit16.sink.split: ; preds = %bb.i, %bb.d
  %.sink44 = phi ptr [ %i.f, %bb.d ], [ %i.o, %bb.i ] ; 2 uses
  %i.v = load ptr, ptr %.sink44, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.sink44) #11
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit16

end_hunk_0
