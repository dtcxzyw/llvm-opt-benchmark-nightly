inline.NumInlined: 409
inline.NumDeleted: 127
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.photos_editing_formats::image_io::DataScanner" = type <{ %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.photos_editing_formats::image_io::DataRange", i64, i64, i32, [4 x i8] }>
%"class.photos_editing_formats::image_io::DataRange" = type { i64, i64 }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.photos_editing_formats::image_io::Message" = type { i32, i32, %"class.std::__cxx11::basic_string" }
%"class.photos_editing_formats::image_io::DataMatchResult" = type <{ %"class.photos_editing_formats::image_io::Message", i64, i32, i8, i8, [2 x i8] }>

@_ZN22photos_editing_formats8image_io12_GLOBAL__N_112kBase64CharsE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"Literal already scanned\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Expected literal\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Expected first character of a name\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Inconsistent state\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Expected start of a quoted string\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Sentinel already scanned\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Unexpected character encountered\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Expected whitespace\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Undefined scanner type\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Literal:'\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"QuotedString\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"OneOf:'\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ThruLiteral:'\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Whitespace\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"OptionalWhitespace\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner18GetWhitespaceCharsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  store i32 218761504, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner14GetBase64CharsB5cxx11Eb(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 64, ptr %i.a, align 8, !tbaa !15
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.d = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) @_ZN22photos_editing_formats8image_io12_GLOBAL__N_112kBase64CharsE, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %1, label %bb.a, label %bb.e

bb.a:                                             ; preds = %.noexc.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b                   ; 2 uses
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.b, %bb.a
  %2 = load i64, ptr %i.b, align 8
  %3 = select i1 %i.j, i64 15, i64 %2
  %i.l = icmp ugt i64 %i.h, %3
  br i1 %i.l, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc5
  %i.m = phi ptr [ %.pre.i.i, %.noexc5 ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 61, ptr %i.n, align 1, !tbaa !14
  store i64 %i.h, ptr %i.e, align 8, !tbaa !11
  %i.o = load ptr, ptr %0, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store i8 0, ptr %i.p, align 1, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !14
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.noexc.i
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner16GetBase64PadCharB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i8 noundef signext 61)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner20CreateLiteralScannerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.e, ptr %i.a, align 8, !tbaa !15
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.h, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN22photos_editing_formats8image_io11DataScannerC2ENS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !14
  store i8 %i.j, ptr %i.i, align 1, !tbaa !14
  br label %_ZN22photos_editing_formats8image_io11DataScannerC2ENS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN22photos_editing_formats8image_io11DataScannerC2ENS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN22photos_editing_formats8image_io11DataScannerC2ENS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !11
  %i.m = load ptr, ptr %0, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !11
  store i8 0, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.r, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner17CreateNameScannerEv(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !11
  store i8 0, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.g, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner25CreateQuotedStringScannerEv(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !11
  store i8 0, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store i32 2, ptr %i.g, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner21CreateSentinelScannerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.e, ptr %i.a, align 8, !tbaa !15
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.h, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN22photos_editing_formats8image_io11DataScannerC2ENS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !14
  store i8 %i.j, ptr %i.i, align 1, !tbaa !14
  br label %_ZN22photos_editing_formats8image_io11DataScannerC2ENS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN22photos_editing_formats8image_io11DataScannerC2ENS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN22photos_editing_formats8image_io11DataScannerC2ENS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !11
  %i.m = load ptr, ptr %0, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !11
  store i8 0, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
begin_hunk_1_@_ZN22photos_editing_formats8image_io11DataScanner18ScanThroughLiteralEPKcmRKNS0_11DataContextE:bb.a
  store i64 %i.x, ptr %i.f, align 8, !tbaa !41
  %i.y = sub i64 %3, %i.x
  %i.z = add i64 %.pre74, %i.x
  store i64 %i.z, ptr %i.o, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  store i64 1, ptr %i.j, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %.thread.peel, %.lr.ph
  %i.ab = phi i64 [ %i.x, %.thread.peel ], [ 0, %.lr.ph ] ; 2 uses
  %i.ac = phi i64 [ 1, %.thread.peel ], [ %i.k, %.lr.ph ] ; 3 uses
  %.256.peel = phi i64 [ %i.y, %.thread.peel ], [ %3, %.lr.ph ] ; 3 uses
  %.2.peel = phi ptr [ %i.aa, %.thread.peel ], [ %2, %.lr.ph ] ; 2 uses
  %i.ad = sub i64 %i.m, %i.ac
  %.sroa.speculated.peel = tail call i64 @llvm.umin.i64(i64 %.256.peel, i64 %i.ad) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac
  %i.af = tail call i32 @strncmp(ptr noundef nonnull %i.ae, ptr noundef %.2.peel, i64 noundef %.sroa.speculated.peel) #18
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread60, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.j, align 8, !tbaa !15
  %.not38.peel = icmp eq i64 %.256.peel, 0
  br i1 %.not38.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.d
  %i.ah = add i64 %i.m, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  br label %bb.h

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 23, ptr %i.a, align 8, !tbaa !15
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ak, ptr %5, align 8, !tbaa !16
  %i.al = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ak, ptr noundef nonnull align 1 dereferenceable(23) @.str.1, i64 23, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !11
  %i.an = load ptr, ptr %5, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner16SetInternalErrorERKNS0_11DataContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.noexc
  %i.ap = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.aj
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ar = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.loopexit

bb.f:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.g:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aj
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.g
  %i.ax = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.f
  %.pn40 = phi { ptr, i32 } [ %i.at, %bb.f ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.au, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.d
  br i1 %i.ba, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.k, %.peel.next
  %.067 = phi ptr [ %.2.peel, %.peel.next ], [ %i.bs, %bb.k ] ; 3 uses
  %.05466 = phi i64 [ %.256.peel, %.peel.next ], [ %i.bp, %bb.k ] ; 3 uses
  %i.bb = phi i64 [ %i.ab, %.peel.next ], [ %i.bo, %bb.k ] ; 2 uses
  %i.bc = load i8, ptr %i.n, align 1, !tbaa !14
  %i.bd = sext i8 %i.bc to i32
  %i.be = tail call noundef ptr @memchr(ptr noundef %.067, i32 noundef %i.bd, i64 noundef %.05466) #18 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.loopexit73, label %bb.j

.loopexit73:                                      ; preds = %bb.h
  %.pre = load i64, ptr %i.o, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %.loopexit73, %bb.b
  %i.bg = phi i64 [ 0, %bb.b ], [ %i.bb, %.loopexit73 ]
  %i.bh = phi i64 [ %.pre74, %bb.b ], [ %.pre, %.loopexit73 ]
  %.05466.lcssa = phi i64 [ %3, %bb.b ], [ %.05466, %.loopexit73 ] ; 2 uses
  %i.bi = add i64 %i.bh, %.05466.lcssa
  store i64 %i.bi, ptr %i.o, align 8, !tbaa !15
  %i.bj = add i64 %i.bg, %.05466.lcssa
  store i64 %i.bj, ptr %i.f, align 8, !tbaa !41
  store i32 2, ptr %i.g, align 8, !tbaa !25
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bk = ptrtoint ptr %i.be to i64
  %i.bl = ptrtoint ptr %.067 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = add nsw i64 %i.bm, 1                    ; 4 uses
  %i.bo = add i64 %i.bb, %i.bn                    ; 3 uses
  store i64 %i.bo, ptr %i.f, align 8, !tbaa !41
  %i.bp = sub i64 %.05466, %i.bn                  ; 3 uses
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !24
  %i.br = add i64 %i.bq, %i.bn
  store i64 %i.br, ptr %i.o, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %.067, i64 %i.bn ; 2 uses
  store i64 1, ptr %i.j, align 8, !tbaa !15
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.ah) ; 2 uses
  %i.bt = tail call i32 @strncmp(ptr noundef nonnull %i.ai, ptr noundef %i.bs, i64 noundef %.sroa.speculated) #18
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.thread60, label %bb.k

.thread60:                                        ; preds = %bb.j, %bb.c
  %i.bv = phi i64 [ %i.ab, %bb.c ], [ %i.bo, %bb.j ]
  %.lcssa = phi i64 [ %i.ac, %bb.c ], [ 1, %bb.j ]
  %.sroa.speculated.lcssa = phi i64 [ %.sroa.speculated.peel, %bb.c ], [ %.sroa.speculated, %bb.j ] ; 3 uses
  %i.bw = load i64, ptr %i.o, align 8, !tbaa !24
  %i.bx = add i64 %i.bw, %.sroa.speculated.lcssa
  store i64 %i.bx, ptr %i.o, align 8, !tbaa !15
  %i.by = add i64 %.sroa.speculated.lcssa, %.lcssa ; 2 uses
  store i64 %i.by, ptr %i.j, align 8, !tbaa !15
  %i.bz = add i64 %i.bv, %.sroa.speculated.lcssa
  store i64 %i.bz, ptr %i.f, align 8, !tbaa !41
  %i.ca = icmp eq i64 %i.by, %i.m
  %i.cb = select i1 %i.ca, i32 3, i32 2
  store i32 %i.cb, ptr %i.g, align 8, !tbaa !25
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.j, align 8, !tbaa !15
  %.not38 = icmp eq i64 %i.bp, 0
  br i1 %.not38, label %.loopexit, label %bb.h, !llvm.loop !45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !14
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.cd) #16
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %.pn40

.loopexit:                                        ; preds = %bb.k, %bb.d, %.preheader, %.thread60, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner14ScanWhitespaceEPKcmRKNS0_11DataContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i32 0, ptr %0, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !11
  store i8 0, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.h, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 1, ptr %i.i, align 1, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = icmp eq i64 %3, 0
  br i1 %i.l, label %.loopexit.thread, label %.preheader.preheader.i.i

.loopexit.thread:                                 ; preds = %bb.a
  store i64 0, ptr %i.f, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24
  br label %bb.b

.preheader.preheader.i.i:                         ; preds = %bb.a
  %scevgep.i.i = getelementptr i8, ptr %2, i64 %3
  br label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %i.o = add i64 %.in.i.i, -1                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 1
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %.loopexit, label %.preheader.i.i, !llvm.loop !21

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.preheader.i.i
  %.in.i.i = phi i64 [ %i.o, %.loopexit.i.i ], [ %3, %.preheader.preheader.i.i ]
  %.01316.i.i = phi ptr [ %i.p, %.loopexit.i.i ], [ %2, %.preheader.preheader.i.i ] ; 3 uses
  %i.r = load i8, ptr %.01316.i.i, align 1, !tbaa !14
  switch i8 %i.r, label %.loopexit [
    i8 32, label %.loopexit.i.i
    i8 9, label %.loopexit.i.i
    i8 13, label %.loopexit.i.i
    i8 10, label %.loopexit.i.i
  ]

.loopexit:                                        ; preds = %.preheader.i.i, %.loopexit.i.i
  %.01316.lcssa.sink.i.i = phi ptr [ %.01316.i.i, %.preheader.i.i ], [ %scevgep.i.i, %.loopexit.i.i ] ; 2 uses
  %i.s = ptrtoint ptr %.01316.lcssa.sink.i.i to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %i.x = add i64 %i.w, %i.u                       ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !15
  %i.y = icmp eq ptr %.01316.lcssa.sink.i.i, %2
  br i1 %i.y, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.loopexit.thread, %.loopexit
  %6 = phi i64 [ %i.n, %.loopexit.thread ], [ %i.x, %.loopexit ]
  %7 = icmp ule i64 %6, %i.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, 5
  %or.cond = select i1 %7, i1 %i.ab, i1 false
  br i1 %or.cond, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 19, ptr %i.a, align 8, !tbaa !15
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ad, ptr %5, align 8, !tbaa !16
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ad, ptr noundef nonnull align 1 dereferenceable(19) @.str.8, i64 19, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !11
  %i.ag = load ptr, ptr %5, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner14SetSyntaxErrorERKNS0_11DataContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.ai = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ac
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.h

bb.d:                                             ; preds = %.noexc.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.e:                                             ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ac
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.aq = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.d
  %.pn = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.an, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.b
  store i32 3, ptr %i.g, align 8, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.au = icmp ult i64 %i.u, %3
  %i.av = select i1 %i.au, i32 3, i32 2
  store i32 %i.av, ptr %i.g, align 8, !tbaa !25
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.ax) #16
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataScanner4ScanERKNS0_11DataContextE(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 14 uses
  %5 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 14 uses
  %6 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 14 uses
  %7 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 14 uses
  %8 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 14 uses
  %9 = alloca %"class.photos_editing_formats::image_io::DataMatchResult", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !47
  store i32 0, ptr %0, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 26 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  store i64 0, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store i64 0, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.k, align 4, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 1, ptr %i.l, align 1, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24   ; 4 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %2, align 8, !tbaa !48     ; 5 uses
  %.not.i.i = icmp uge i64 %i.r, %i.n
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = and i1 %.not.i.i, %i.s
  br i1 %i.t, label %bb.c, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit: ; preds = %bb.c
  %.not.i1.i = icmp uge i64 %i.n, %i.w
  %i.aa = icmp ule i64 %i.p, %i.y
  %spec.select.i.i = and i1 %.not.i1.i, %i.aa
  br i1 %spec.select.i.i, label %bb.h, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread: ; preds = %bb.c, %bb.a, %bb.b, %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZNK22photos_editing_formats8image_io11DataContext35GetInvalidLocationAndRangeErrorTextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner16SetInternalErrorERKNS0_11DataContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.bs

bb.f:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.g:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.g
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.ah, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.bt

bb.h:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = icmp ult i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %i.an, align 8, !tbaa !15
  store i64 %i.r, ptr %i.ap, align 8, !tbaa !15
  %.pre = load i64, ptr %i.o, align 8, !tbaa !24
  %.pre114 = load i64, ptr %2, align 8, !tbaa !48
  %.pre115 = load i64, ptr %i.m, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = phi i64 [ %.pre115, %bb.i ], [ %i.n, %bb.h ] ; 3 uses
  %i.at = phi i64 [ %.pre114, %bb.i ], [ %i.r, %bb.h ] ; 4 uses
  %i.au = phi i64 [ %.pre, %bb.i ], [ %i.p, %bb.h ] ; 4 uses
  %i.av = sub i64 %i.au, %i.at                    ; 5 uses
  %i.aw = icmp ult i64 %i.as, %i.au
  br i1 %i.aw, label %bb.k, label %_ZNK22photos_editing_formats8image_io11DataContext12GetCharBytesEv.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp uge i64 %i.at, %i.as
  %i.ax = icmp ult i64 %i.at, %i.au
  %i.ay = and i1 %i.ax, %.not.i.i.i
  br i1 %i.ay, label %bb.l, label %_ZNK22photos_editing_formats8image_io11DataContext12GetCharBytesEv.exit

bb.l:                                             ; preds = %bb.k
  %i.az = load i64, ptr %i.v, align 8, !tbaa !23  ; 3 uses
  %i.ba = load i64, ptr %i.x, align 8, !tbaa !24  ; 2 uses
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.i, label %_ZNK22photos_editing_formats8image_io11DataContext12GetCharBytesEv.exit

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.i: ; preds = %bb.l
  %.not.i1.i.i = icmp uge i64 %i.as, %i.az
  %i.bc = icmp ule i64 %i.au, %i.ba
  %spec.select.i.i.i = and i1 %.not.i1.i.i, %i.bc
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZNK22photos_editing_formats8image_io11DataContext12GetCharBytesEv.exit

bb.m:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = sub i64 %i.at, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  br label %_ZNK22photos_editing_formats8image_io11DataContext12GetCharBytesEv.exit

_ZNK22photos_editing_formats8image_io11DataContext12GetCharBytesEv.exit: ; preds = %bb.m, %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.i, %bb.l, %bb.k, %bb.j
  %i.bh = phi ptr [ %i.bg, %bb.m ], [ null, %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.i ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.l ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !17
  switch i32 %i.bj, label %.noexc.i [
    i32 0, label %bb.n
    i32 1, label %bb.w
    i32 2, label %bb.af
    i32 3, label %bb.ao
    i32 4, label %bb.ax
    i32 5, label %bb.bg
    i32 6, label %bb.bg
  ]

bb.n:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext12GetCharBytesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner11ScanLiteralEPKcmRKNS0_11DataContextE(ptr dead_on_unwind nonnull writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %4, ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %i.bh, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.o unwind label %bb.v
end_hunk_1
