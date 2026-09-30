Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat-auto-parser-helpers?download=true
inline.NumInlined: 647
inline.NumDeleted: 202
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.diff_split = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<segment, std::allocator<segment>>::_Vector_impl" }
%"struct.std::_Vector_base<segment, std::allocator<segment>>::_Vector_impl" = type { %"struct.std::_Vector_base<segment, std::allocator<segment>>::_Vector_impl_data" }
%"struct.std::_Vector_base<segment, std::allocator<segment>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.segment = type { i32, %"class.std::__cxx11::basic_string" }
%"struct.autoparser::generation_params" = type <{ %class.common_json, %class.common_json, i32, [4 x i8], %class.common_json, i8, [3 x i8], i32, i8, [7 x i8], %"class.std::__cxx11::basic_string", i8, [3 x i8], i32, %struct.common_chat_msg, i8, [7 x i8], %"class.std::chrono::time_point", %class.common_json, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.common_chat_msg = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector.9", %"class.std::vector.14", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<common_chat_msg_content_part, std::allocator<common_chat_msg_content_part>>::_Vector_impl" }
%"struct.std::_Vector_base<common_chat_msg_content_part, std::allocator<common_chat_msg_content_part>>::_Vector_impl" = type { %"struct.std::_Vector_base<common_chat_msg_content_part, std::allocator<common_chat_msg_content_part>>::_Vector_impl_data" }
%"struct.std::_Vector_base<common_chat_msg_content_part, std::allocator<common_chat_msg_content_part>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<common_chat_tool_call, std::allocator<common_chat_tool_call>>::_Vector_impl" }
%"struct.std::_Vector_base<common_chat_tool_call, std::allocator<common_chat_tool_call>>::_Vector_impl" = type { %"struct.std::_Vector_base<common_chat_tool_call, std::allocator<common_chat_tool_call>>::_Vector_impl_data" }
%"struct.std::_Vector_base<common_chat_tool_call, std::allocator<common_chat_tool_call>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }
%class.common_json = type { [32 x i8] }
%struct.common_json_value = type { i32, %union.anon.37, %"class.std::__cxx11::basic_string", %"class.std::shared_ptr" }
%union.anon.37 = type { i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::optional.26" = type { %"struct.std::_Optional_base.27" }
%"struct.std::_Optional_base.27" = type { %"struct.std::_Optional_payload.29" }
%"struct.std::_Optional_payload.29" = type { %"struct.std::_Optional_payload.base.33", [7 x i8] }
%"struct.std::_Optional_payload.base.33" = type { %"struct.std::_Optional_payload_base.base.32" }
%"struct.std::_Optional_payload_base.base.32" = type <{ %"union.std::_Optional_payload_base<compare_variants_result>::_Storage", i8 }>
%"union.std::_Optional_payload_base<compare_variants_result>::_Storage" = type { %struct.compare_variants_result }
%struct.compare_variants_result = type { %struct.diff_split, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%struct.template_params = type { %class.common_json, %class.common_json, i8, i8, [6 x i8], %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type { %"union.std::_Optional_payload_base<common_json>::_Storage", i8 }
%"union.std::_Optional_payload_base<common_json>::_Storage" = type { %class.common_json }

$_ZNSt6vectorI7segmentSaIS0_EED2Ev = comdat any

$_ZN10diff_splitD2Ev = comdat any

$_ZN10autoparser17generation_paramsC2Ev = comdat any

$_ZN11common_jsonixEPKc = comdat any

$_ZN11common_jsonaSIRKbTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeES_EE5valueEiE4typeELi0EEERS_OS5_ = comdat any

$__clang_call_terminate = comdat any

$_ZN10autoparser17generation_paramsD2Ev = comdat any

$_ZN10diff_splitaSEOS_ = comdat any

$_ZN23compare_variants_resultD2Ev = comdat any

$_ZN15template_paramsD2Ev = comdat any

$_ZN15common_chat_msgD2Ev = comdat any

$_ZNSt6vectorI21common_chat_tool_callSaIS0_EED2Ev = comdat any

$_ZNSt6vectorI7segmentSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI7segmentSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZN17common_json_valueD2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN10autoparserL8ERR_TMPLB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"#**ERROR**#\00", align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [16 x i8] c"enable_thinking\00", align 1
@_ZTISt9exception = external constant ptr
@.str.3 = private unnamed_addr constant [33 x i8] c"Template application failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_chat_auto_parser_helpers.cpp, ptr null }]

; Function Attrs: mustprogress uwtable
define void @_Z15trim_whitespaceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 9 uses
  %.not27 = icmp eq i64 %i.c, 0
  br i1 %.not27, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.02022 = phi i64 [ 0, %.lr.ph ], [ %i.i, %bb.c ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.02022
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i32
  %i.h = tail call i32 @isspace(i32 noundef %i.g) #23
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %.02022, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.c
  br i1 %exitcond.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !66

.critedge:                                        ; preds = %bb.b, %bb.a
  %.020.lcssa = phi i64 [ 0, %bb.a ], [ %.02022, %bb.b ] ; 9 uses
  %i.j = icmp eq i64 %.020.lcssa, %i.c
  br i1 %i.j, label %._crit_edge.i.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.k = add i64 %i.c, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %.020.lcssa, i64 %i.k)
  %i.l = add i64 %umin, 1                         ; 2 uses
  %.033 = add i64 %i.c, -1                        ; 2 uses
  %i.m = icmp ugt i64 %.033, %.020.lcssa
  br i1 %i.m, label %.lr.ph36.preheader, label %.critedge2

.lr.ph36.preheader:                               ; preds = %.preheader.preheader
  %2 = load ptr, ptr %1, align 8, !tbaa !16
  br label %.lr.ph36

._crit_edge.i.i:                                  ; preds = %bb.c, %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !15
  store i8 0, ptr %i.n, align 8, !tbaa !17
  br label %bb.g

.preheader:                                       ; preds = %.lr.ph36
  %.0 = add i64 %.035, -1                         ; 2 uses
  %i.p = icmp ugt i64 %.0, %.020.lcssa
  br i1 %i.p, label %.lr.ph36, label %.critedge2, !llvm.loop !67

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %.preheader
  %.035 = phi i64 [ %.0, %.preheader ], [ %.033, %.lr.ph36.preheader ] ; 3 uses
  %.0.in34 = phi i64 [ %.035, %.preheader ], [ %i.c, %.lr.ph36.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.035
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = zext i8 %i.r to i32
  %i.t = tail call i32 @isspace(i32 noundef %i.s) #23
  %.not21 = icmp eq i32 %i.t, 0
  br i1 %.not21, label %..critedge2_crit_edge, label %.preheader, !llvm.loop !67

..critedge2_crit_edge:                            ; preds = %.lr.ph36
  br label %.critedge2, !llvm.loop !67

.critedge2:                                       ; preds = %.preheader, %..critedge2_crit_edge, %.preheader.preheader
  %.0.in.lcssa = phi i64 [ %i.l, %.preheader.preheader ], [ %.0.in34, %..critedge2_crit_edge ], [ %i.l, %.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.u = icmp ugt i64 %.020.lcssa, %i.c
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %.critedge2
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %.020.lcssa, i64 noundef %i.c) #24, !noalias !70
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.critedge2
  %i.v = sub i64 %.0.in.lcssa, %.020.lcssa
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !19, !alias.scope !70
  %3 = load ptr, ptr %1, align 8, !tbaa !16, !noalias !70
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %.020.lcssa ; 2 uses
  %i.y = sub nuw i64 %i.c, %.020.lcssa
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.v, i64 %i.y) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !70
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !20, !noalias !70
  %i.z = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.z, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !16, !alias.scope !70
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !70
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !17, !alias.scope !70
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ac = phi ptr [ %i.aa, %.noexc10.i.i ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !17
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.x, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !70 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !15, !alias.scope !70
  %i.ag = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !70
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_Z23trim_leading_whitespaceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 7 uses
  %.not11 = icmp eq i64 %i.c, 0
  br i1 %.not11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.i, %bb.c ]  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.06
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i32
  %i.h = tail call i32 @isspace(i32 noundef %i.g) #23
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.c
  br i1 %exitcond.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.b, !llvm.loop !71

.critedge:                                        ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.j = icmp ugt i64 %.06, %i.c
  br i1 %i.j, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %.critedge
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %.06, i64 noundef %i.c) #24, !noalias !74
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c, %bb.a, %.critedge
  %.0.lcssa14 = phi i64 [ %.06, %.critedge ], [ %i.c, %bb.a ], [ %i.c, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !19, !alias.scope !74
  %i.l = load ptr, ptr %1, align 8, !tbaa !16, !noalias !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0.lcssa14 ; 2 uses
  %i.n = sub nuw i64 %i.c, %.0.lcssa14            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !74
  store i64 %i.n, ptr %i.a, align 8, !tbaa !20, !noalias !74
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !16, !alias.scope !74
  %i.q = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !74
  store i64 %i.q, ptr %i.k, align 8, !tbaa !17, !alias.scope !74
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.r = phi ptr [ %i.p, %.noexc10.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.m, align 1, !tbaa !17
  store i8 %i.s, ptr %i.r, align 1, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.t = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !74 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !15, !alias.scope !74
  %i.v = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !74
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !74
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z24trim_trailing_whitespaceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %._crit_edge.i.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  %.032 = add i64 %i.c, -1                        ; 2 uses
  %cond33 = icmp eq i64 %.032, 0
  br i1 %cond33, label %._crit_edge, label %.lr.ph

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !15
  store i8 0, ptr %i.f, align 8, !tbaa !17
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %.0 = add i64 %.035, -1                         ; 2 uses
  %cond = icmp eq i64 %.0, 0
  br i1 %cond, label %._crit_edge, label %.lr.ph, !llvm.loop !75

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.035 = phi i64 [ %.0, %bb.b ], [ %.032, %.preheader ] ; 3 uses
  %.0.in34 = phi i64 [ %.035, %bb.b ], [ %i.c, %.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.035
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @isspace(i32 noundef %i.j) #23
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %.critedge, label %bb.b, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.l = load i8, ptr %i.e, align 1, !tbaa !17
  %i.m = zext i8 %i.l to i32
  %i.n = tail call i32 @isspace(i32 noundef %i.m) #23
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i16

._crit_edge.i.i.i.thread:                         ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !19, !alias.scope !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !79
  store i64 1, ptr %i.a, align 8, !tbaa !20, !noalias !79
  br label %bb.c

._crit_edge.i.i16:                                ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !15
  store i8 0, ptr %i.p, align 8, !tbaa !17
  br label %bb.e

.critedge:                                        ; preds = %.lr.ph
  %i.r = tail call i64 @llvm.umin.i64(i64 %.0.in34, i64 %i.c) ; 4 uses
end_hunk_0
