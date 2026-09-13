Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/trie?download=true
inline.NumInlined: 495
inline.NumDeleted: 240
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.arrow::Status" = type { ptr }
%"class.std::allocator.6" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.arrow::internal::Trie::Node" = type { i16, i16, %"class.arrow::internal::SmallString" }
%"class.arrow::internal::SmallString" = type { i8, [11 x i8] }
%"class.arrow::internal::Trie" = type <{ %"class.std::vector", %"class.std::vector.0", i16, [6 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<arrow::internal::Trie::Node, std::allocator<arrow::internal::Trie::Node>>::_Vector_impl" }
%"struct.std::_Vector_base<arrow::internal::Trie::Node, std::allocator<arrow::internal::Trie::Node>>::_Vector_impl" = type { %"struct.std::_Vector_base<arrow::internal::Trie::Node, std::allocator<arrow::internal::Trie::Node>>::_Vector_impl_data" }
%"struct.std::_Vector_base<arrow::internal::Trie::Node, std::allocator<arrow::internal::Trie::Node>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl" }
%"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl" = type { %"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr", ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.12" }
%"struct.std::_Head_base.12" = type { ptr }

$_ZN5arrow8internal4TrieD2Ev = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs = comdat any

$_ZN5arrow6Status8FromArgsIJRA46_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA20_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow8internal12JoinToStringIJRA38_KcRsRA13_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA24_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

@.str = private unnamed_addr constant [46 x i8] c"Number of entries larger than number of nodes\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Found index >= size\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Child lookup base doesn't point to 256 valid indices\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Child lookup index out of bounds\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"[\22\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"|-> '\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"' (\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c") -> \00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"TrieBuilder cannot contain more than \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c" child nodes\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"TrieBuilder cannot extend lookup table further\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Duplicate entry in trie\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

@_ZN5arrow8internal11TrieBuilderC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal11TrieBuilderC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal4Trie8ValidateEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i16, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = sext i16 %i.i to i64
  %i.k = icmp slt i64 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = icmp eq ptr %i.c, %i.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.l, label %.preheader..critedge21_crit_edge, label %.lr.ph

.preheader..critedge21_crit_edge:                 ; preds = %.preheader
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !24
  br label %.critedge21

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 1
  %i.t = add nsw i64 %i.s, -256
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA46_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(46) @.str)
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.030.033 = phi ptr [ %i.c, %.lr.ph ], [ %i.ab, %bb.h ] ; 3 uses
  %i.u = load i16, ptr %.sroa.030.033, align 2, !tbaa !27
  %.not = icmp slt i16 %i.u, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA20_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(20) @.str.1)
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.033, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !28   ; 2 uses
  %.not19 = icmp eq i16 %i.w, -1
  br i1 %.not19, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = sext i16 %i.w to i32
  %i.y = shl nsw i32 %i.x, 8
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %i.t, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(53) @.str.2)
  br label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.030.033, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.b
  br i1 %i.ac, label %.critedge21, label %bb.c

.critedge21:                                      ; preds = %bb.h, %.preheader..critedge21_crit_edge
  %i.ad = phi ptr [ %.pre36, %.preheader..critedge21_crit_edge ], [ %i.n, %bb.h ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %.preheader..critedge21_crit_edge ], [ %i.o, %bb.h ] ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %.critedge25, label %.critedge23

bb.i:                                             ; preds = %.critedge23
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 2 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ad
  br i1 %i.ah, label %.critedge25, label %.critedge23

.critedge23:                                      ; preds = %.critedge21, %bb.i
  %.sroa.026.034 = phi ptr [ %i.ag, %bb.i ], [ %i.ae, %.critedge21 ] ; 2 uses
  %i.ai = load i16, ptr %.sroa.026.034, align 2, !tbaa !29
  %i.aj = sext i16 %i.ai to i64
  %.not20 = icmp sgt i64 %i.g, %i.aj
  br i1 %.not20, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.critedge23
  tail call void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.3)
  br label %.critedge

.critedge25:                                      ; preds = %bb.i, %.critedge21
  store ptr null, ptr %0, align 8, !tbaa !32, !alias.scope !65
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.g, %bb.d, %.critedge25, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal4Trie4DumpEPKNS1_4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.e = load i8, ptr %i.c, align 1, !tbaa !33
  %i.f = zext i8 %i.e to i64
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.d, i64 noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.i = load i16, ptr %1, align 2, !tbaa !27
  %i.j = icmp sgt i16 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !28
  %i.o = icmp sgt i16 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.p = load ptr, ptr %2, align 8, !tbaa !38, !noalias !69
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !69
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.p, i64 noundef %i.r, ptr noundef nonnull @.str.8, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !69
  %i.s = load ptr, ptr %4, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !40
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.n

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.029 = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ], [ %i.bh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 4 uses
  %i.ae = load i16, ptr %i.m, align 2, !tbaa !28
  %i.af = sext i16 %i.ae to i32
  %i.ag = shl nsw i32 %i.af, 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %.029
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !29 ; 2 uses
  %i.am = icmp sgt i16 %i.al, -1
  br i1 %i.am, label %bb.h, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

end_hunk_0
begin_hunk_1_@_ZNK5arrow8internal4Trie4DumpEPKNS1_4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %_ZNSolsEl.exit
  invoke void @_ZNK5arrow8internal4Trie4DumpEPKNS1_4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZNSolsEl.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %bb.k, %bb.j, %bb.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %bb.g
  %i.bh = add nuw nsw i64 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, 256
  br i1 %exitcond.not, label %bb.e, label %bb.g, !llvm.loop !68

bb.m:                                             ; preds = %bb.l, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.l ], [ %i.ad, %bb.f ]
  %i.bi = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.m
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !40
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal4Trie4DumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !39
  store i8 0, ptr %i.b, align 8, !tbaa !40
  invoke void @_ZNK5arrow8internal4Trie4DumpEPKNS1_4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 50)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %0, i8 0, i64 50, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17
          to label %.noexc2 unwind label %bb.a    ; 5 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.a, align 2, !tbaa !29
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 -1, ptr %.sroa.6.0..sroa_idx4, align 2, !tbaa !29
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %.sroa.7.0..sroa_idx6, align 2, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !12
  store ptr %i.d, ptr %i.c, align 8, !tbaa !11
  store ptr %i.d, ptr %i.b, align 8, !tbaa !44
  ret void

bb.a:                                             ; preds = %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow8internal4TrieD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) #15
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal4TrieD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIsSaIsEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #16
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit

_ZNSt6vectorIsSaIsEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIsSaIsEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #16
  br label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIsSaIsEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef captures(none) %2, i8 noundef zeroext %3, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(16) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !28
  %i.e = icmp eq i16 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46, !noalias !93 ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !41, !noalias !93
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 1                   ; 2 uses
  %i.n = icmp ugt i64 %i.m, 8388607
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit14.thread

_ZN5arrow6StatusD2Ev.exit14.thread:               ; preds = %bb.b
  %i.o = lshr i64 %i.m, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !93
  store i16 -1, ptr %i.a, align 2, !tbaa !29, !noalias !93
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.h, i64 noundef 256, ptr noundef nonnull align 2 dereferenceable(2) %i.a), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !93
  %i.p = trunc nuw nsw i64 %i.o to i16
  store i16 %i.p, ptr %i.c, align 2, !tbaa !29, !noalias !93
  store ptr null, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  call void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(47) @.str.16)
  %.pr = load ptr, ptr %6, align 8, !tbaa !32     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.q = icmp eq ptr %.pr, null
  br i1 %i.q, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.thread, %_ZN5arrow6StatusD2Ev.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 5 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !12     ; 5 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 4                   ; 3 uses
  %i.y = icmp ugt i64 %i.x, 32766
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i16 32767, ptr %i.b, align 2, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !94
  call void @_ZN5arrow8internal12JoinToStringIJRA38_KcRsRA13_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(38) @.str.14, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 1 dereferenceable(13) @.str.15), !noalias !94
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %5, align 8, !tbaa !38, !noalias !94 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN5arrow6Status13CapacityErrorIJRA38_KcRsRA13_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !40, !noalias !94
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #16
  br label %_ZN5arrow6Status13CapacityErrorIJRA38_KcRsRA13_S2_EEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %5, align 8, !tbaa !38, !noalias !94 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.f
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !40, !noalias !94
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !94
  resume { ptr, i32 } %i.ae

_ZN5arrow6Status13CapacityErrorIJRA38_KcRsRA13_S2_EEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.ak = load i16, ptr %i.c, align 2, !tbaa !28
  %i.al = sext i16 %i.ak to i32
  %i.am = shl nsw i32 %i.al, 8
  %i.an = zext i8 %3 to i32
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.s, %i.aq
  br i1 %.not.i.i, label %7, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.s, ptr noundef nonnull align 2 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !95
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.r, align 8, !tbaa !11
  %.pre = load ptr, ptr %1, align 8, !tbaa !12
  br label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE9push_backEOS3_.exit

7:                                                ; preds = %bb.g
  %8 = icmp eq i64 %i.w, 9223372036854775792
  br i1 %8, label %9, label %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

9:                                                ; preds = %7
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #18
  unreachable

_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %7
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.at = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #17 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aw, ptr noundef nonnull align 2 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !95
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !95, !alias.scope !96
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !90

_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.av, ptr %1, align 8, !tbaa !12
  store ptr %i.az, ptr %i.r, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bd, ptr %i.ap, align 8, !tbaa !44
  br label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.h, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.be = phi ptr [ %.pre, %bb.h ], [ %i.av, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.bf = phi ptr [ %i.as, %bb.h ], [ %i.az, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 4
  %i.bk = trunc i64 %i.bj to i16
  %i.bl = add i16 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = sext i32 %i.ao to i64
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bn
  store i16 %i.bl, ptr %i.bp, align 2, !tbaa !29
  store ptr null, ptr %0, align 8, !tbaa !32, !alias.scope !97
  br label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6Status13CapacityErrorIJRA38_KcRsRA13_S2_EEES0_DpOT_.exit, %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE9push_backEOS3_.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder17ExtendLookupTableEPs(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1                   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 8388607
  br i1 %i.j, label %bb.b, label %_ZNSt6vectorIsSaIsEE6resizeEmRKs.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(47) @.str.16)
  br label %bb.c

_ZNSt6vectorIsSaIsEE6resizeEmRKs.exit:            ; preds = %bb.a
  %i.k = lshr i64 %i.i, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i16 -1, ptr %i.a, align 2, !tbaa !29
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, i64 noundef 256, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.l = trunc nuw nsw i64 %i.k to i16
  store i16 %i.l, ptr %2, align 2, !tbaa !29
  store ptr null, ptr %0, align 8, !tbaa !32, !alias.scope !100
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIsSaIsEE6resizeEmRKs.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef captures(none) %2, i8 noundef zeroext %3, i64 %4, ptr nofree readonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = icmp ugt i64 %4, 11
  br i1 %i.a, label %_ZN5arrow6StatusD2Ev.exit.lr.ph, label %_ZN5arrow6StatusD2Ev.exit36

_ZN5arrow6StatusD2Ev.exit.lr.ph:                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.lr.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.01355 = phi ptr [ %2, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ]
  %.01454 = phi i8 [ %3, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.k, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ]
  %.sroa.6.053 = phi ptr [ %5, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ] ; 3 uses
  %.sroa.041.052 = phi i64 [ %4, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i16 -1, ptr %6, align 2, !tbaa !27
  store i16 -1, ptr %i.b, align 2, !tbaa !28
  store i8 11, ptr %i.c, align 2, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01355, i8 noundef zeroext %.01454, ptr noundef nonnull align 2 dereferenceable(16) %6)
  %i.f = load ptr, ptr %7, align 8, !tbaa !32     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %.critedge22

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.6.053, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !40    ; 2 uses
  %i.l = add i64 %.sroa.041.052, -12              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.6.053, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.n = icmp ugt i64 %i.l, 11
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit36, !llvm.loop !0

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.a
  %.sroa.041.0.lcssa = phi i64 [ %4, %bb.a ], [ %i.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ] ; 2 uses
  %.sroa.6.0.lcssa = phi ptr [ %5, %bb.a ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ]
  %.014.lcssa = phi i8 [ %3, %bb.a ], [ %i.k, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ]
  %.013.lcssa = phi ptr [ %2, %bb.a ], [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !49
  store i16 %i.p, ptr %8, align 2, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 -1, ptr %i.q, align 2, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.s = trunc nuw nsw i64 %.sroa.041.0.lcssa to i8
  store i8 %i.s, ptr %i.r, align 2, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %.sroa.6.0.lcssa, i64 %.sroa.041.0.lcssa, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.013.lcssa, i8 noundef zeroext %.014.lcssa, ptr noundef nonnull align 2 dereferenceable(16) %8)
  %i.u = load ptr, ptr %9, align 8, !tbaa !32     ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit40, label %.critedge24

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %_ZN5arrow6StatusD2Ev.exit36
  %i.w = load i16, ptr %i.o, align 8, !tbaa !49
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.o, align 8, !tbaa !49
  store ptr null, ptr %0, align 8, !tbaa !32, !alias.scope !103
  br label %.critedge24

.critedge24:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit36, %_ZN5arrow6StatusD2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.b

.critedge22:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr %i.f, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.b

bb.b:                                             ; preds = %.critedge22, %.critedge24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEcSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef captures(none) %2, i8 noundef signext %3, i64 %4, ptr nofree readonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.a = icmp ugt i64 %4, 11
  br i1 %i.a, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit36.i

_ZN5arrow6StatusD2Ev.exit.lr.ph.i:                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 5
end_hunk_1
