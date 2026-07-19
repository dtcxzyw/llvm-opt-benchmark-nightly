inline.NumInlined: 1430
inline.NumDeleted: 710
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::ErrorOr" = type { %union.anon.0, i8, [7 x i8] }
%union.anon.0 = type { %"struct.llvh::AlignedCharArrayUnion.1" }
%"struct.llvh::AlignedCharArrayUnion.1" = type { %"struct.llvh::AlignedCharArray.2" }
%"struct.llvh::AlignedCharArray.2" = type { [16 x i8] }
%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.15" }
%"struct.std::_Head_base.15" = type { ptr }
%"struct.llvh::SourceMgr::SrcBuffer" = type { %"class.std::unique_ptr", %"class.llvh::PointerUnion4", %"class.llvh::SMLoc" }
%"class.llvh::PointerUnion4" = type { %"class.llvh::PointerUnion" }
%"class.llvh::PointerUnion" = type { %"class.llvh::PointerIntPair" }
%"class.llvh::PointerIntPair" = type { i64 }
%"class.llvh::SMLoc" = type { ptr }
%"struct.std::pair.36" = type <{ %"class.llvh::StringRef", i32, [4 x i8] }>
%"class.llvh::StringRef" = type { ptr, i64 }
%"class.llvh::SMDiagnostic" = type { ptr, %"class.llvh::SMLoc", %"class.std::__cxx11::basic_string", i32, i32, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector.42", %"class.llvh::SmallVector" }
%"class.std::vector.42" = type { %"struct.std::_Vector_base.43" }
%"struct.std::_Vector_base.43" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.47"] }
%"struct.llvh::AlignedCharArrayUnion.47" = type { %"struct.llvh::AlignedCharArray.48" }
%"struct.llvh::AlignedCharArray.48" = type { [48 x i8] }
%"class.llvh::ArrayRef" = type { ptr, i64 }
%"class.llvh::ArrayRef.41" = type { ptr, i64 }
%"class.llvh::SmallVector.49" = type { %"class.llvh::SmallVectorImpl.50", %"struct.llvh::SmallVectorStorage.53" }
%"class.llvh::SmallVectorImpl.50" = type { %"class.llvh::SmallVectorTemplateBase.51" }
%"class.llvh::SmallVectorTemplateBase.51" = type { %"class.llvh::SmallVectorTemplateCommon.52" }
%"class.llvh::SmallVectorTemplateCommon.52" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.53" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.54"] }
%"struct.llvh::AlignedCharArrayUnion.54" = type { %"struct.llvh::AlignedCharArray.55" }
%"struct.llvh::AlignedCharArray.55" = type { [8 x i8] }
%"class.llvh::ArrayRef.56" = type { ptr, i64 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"class.llvh::SMFixIt" = type { %"class.llvh::SMRange", %"class.std::__cxx11::basic_string" }
%"class.llvh::SMRange" = type { %"class.llvh::SMLoc", %"class.llvh::SMLoc" }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }

$_ZN4llvh9SourceMgr18AddNewSourceBufferESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EENS_5SMLocE = comdat any

$_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_ = comdat any

$_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ = comdat any

$_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIhEEPSt6vectorIT_SaIS4_EEv = comdat any

$_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsItEEPSt6vectorIT_SaIS4_EEv = comdat any

$_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIjEEPSt6vectorIT_SaIS4_EEv = comdat any

$_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsImEEPSt6vectorIT_SaIS4_EEv = comdat any

$_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm = comdat any

$_ZSt16__introsort_loopIPN4llvh7SMFixItElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_ = comdat any

$_ZSt11__make_heapIPN4llvh7SMFixItEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_ = comdat any

$_ZSt10__pop_heapIPN4llvh7SMFixItEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_ = comdat any

$_ZSt13__adjust_heapIPN4llvh7SMFixItElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_ = comdat any

$_ZSt11__push_heapIPN4llvh7SMFixItElS1_N9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S7_T1_RT2_ = comdat any

$_ZSt22__move_median_to_firstIPN4llvh7SMFixItEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_ = comdat any

$_ZSt21__unguarded_partitionIPN4llvh7SMFixItEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_S6_T0_ = comdat any

$_ZSt4swapIN4llvh7SMFixItEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_ = comdat any

$_ZSt16__insertion_sortIPN4llvh7SMFixItEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIPN4llvh7SMFixItEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_ = comdat any

@.str = private unnamed_addr constant [15 x i8] c"Included from \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"error: \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"warning: \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"note: \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"remark: \00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\0A\0D\09\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"SmallVector capacity overflow during allocation\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1

@_ZN4llvh9SourceMgr9SrcBufferC1EOS1_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvh9SourceMgr9SrcBufferC2EOS1_
@_ZN4llvh9SourceMgr9SrcBufferD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4llvh9SourceMgr9SrcBufferD2Ev
@_ZN4llvh12SMDiagnosticC1ERKNS_9SourceMgrENS_5SMLocENS_9StringRefEiiNS1_8DiagKindES5_S5_NS_8ArrayRefISt4pairIjjEEENS7_INS_7SMFixItEEE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, i32, i32, i32, ptr, ptr, ptr, ptr), ptr @_ZN4llvh12SMDiagnosticC2ERKNS_9SourceMgrENS_5SMLocENS_9StringRefEiiNS1_8DiagKindES5_S5_NS_8ArrayRefISt4pairIjjEEENS7_INS_7SMFixItEEE

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh9SourceMgr14AddIncludeFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5SMLocERS6_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::ErrorOr", align 8     ; 13 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.llvh::ErrorOr", align 8     ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 4, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !10
  store ptr %3, ptr %5, align 8, !tbaa !11
  call void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(18) %5, i64 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %11 = and i64 %i.i, 137438953440
  %.not22 = icmp eq i64 %11, 0
  br i1 %.not22, label %..critedge_crit_edge, label %.lr.ph

..critedge_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre25 = load i8, ptr %.phi.trans.insert, align 8
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %12 = lshr exact i64 %i.i, 5
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 17
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.31.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %14 = and i64 %12, 4294967295
  %.pre = load i8, ptr %13, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.u = phi i8 [ %.pre, %.lr.ph ], [ %.sink, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit ] ; 2 uses
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, %..critedge_crit_edge
  %i.w = phi i8 [ %.pre25, %..critedge_crit_edge ], [ %i.u, %bb.b ], [ %.sink, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = trunc i8 %i.w to i1
  br i1 %i.y, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ab = call { ptr, i64 } @_ZN4llvh3sys4path13get_separatorENS1_5StyleE(i32 noundef 2) #19
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !20, !noalias !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25, !noalias !17 ; 3 uses
  %i.ag = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #19, !noalias !17 ; 3 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !26, !alias.scope !27
  store i64 0, ptr %i.k, align 8, !tbaa !25, !alias.scope !27
  store i8 0, ptr %i.j, align 8, !tbaa !11, !alias.scope !27
  %i.ah = add i64 %i.ag, %i.af
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ah) #19
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !25, !alias.scope !27
  %i.aj = sub i64 4611686018427387903, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.af
  br i1 %i.ak, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.c
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ad, i64 noundef %i.af) #19 ; 0 uses
  %i.am = load i64, ptr %i.k, align 8, !tbaa !25, !alias.scope !27
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ag
  br i1 %i.ao, label %bb.e, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.ac, i64 noundef %i.ag) #19 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !25, !noalias !30 ; 2 uses
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !25, !noalias !30
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20, !noalias !30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !20, !noalias !30
  %i.av = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.au, i64 noundef %i.aq) #19, !noalias !30 ; 6 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !26, !alias.scope !30
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.aw, ptr %6, align 8, !tbaa !20, !alias.scope !30
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !11
  store i64 %i.bd, ptr %i.m, align 8, !tbaa !11, !alias.scope !30
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !25
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = phi i64 [ %i.ba, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.be, ptr %i.n, align 8, !tbaa !25, !alias.scope !30
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !20
  store i64 0, ptr %i.bf, align 8, !tbaa !25
  store i8 0, ptr %i.ax, align 8, !tbaa !11
  %i.bg = load ptr, ptr %3, align 8, !tbaa !20    ; 6 uses
  %i.bh = icmp eq ptr %i.bg, %i.o
  %i.bi = load ptr, ptr %6, align 8, !tbaa !20    ; 5 uses
  %i.bj = icmp eq ptr %i.bi, %i.m                 ; 2 uses
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  br i1 %i.bj, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  br i1 %i.bj, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bk = load i64, ptr %i.n, align 8, !tbaa !25  ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  switch i64 %i.bk, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !11
  store i8 %i.bm, ptr %i.bg, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bi, i64 %i.bk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bn = load i64, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  store i64 %i.bn, ptr %i.p, align 8, !tbaa !25
  %i.bo = load ptr, ptr %3, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !11
  %.pre.i13 = load ptr, ptr %6, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bi, ptr %3, align 8, !tbaa !20
  %i.bq = load <2 x i64>, ptr %i.n, align 8, !tbaa !11
  store <2 x i64> %i.bq, ptr %i.p, align 8, !tbaa !11
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.br = load i64, ptr %i.o, align 8, !tbaa !11
  store ptr %i.bi, ptr %3, align 8, !tbaa !20
  %i.bs = load <2 x i64>, ptr %i.n, align 8, !tbaa !11
  store <2 x i64> %i.bs, ptr %i.p, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bg, ptr %6, align 8, !tbaa !20
  store i64 %i.br, ptr %i.m, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.m, ptr %6, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.bt = phi ptr [ %i.bg, %bb.k ], [ %i.m, %bb.l ], [ %.pre.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.n, align 8, !tbaa !25
  store i8 0, ptr %i.bt, align 1, !tbaa !11
  %i.bu = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.m
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bw = load i64, ptr %i.m, align 8, !tbaa !11
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.by = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.j
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load i64, ptr %i.j, align 8, !tbaa !11
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i8 4, ptr %i.q, align 8, !tbaa !7
  store i8 1, ptr %i.r, align 1, !tbaa !10
  store ptr %3, ptr %9, align 8, !tbaa !11
  call void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(18) %9, i64 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false) #19
  %i.cc = load i8, ptr %13, align 8               ; 3 uses
  %i.cd = trunc i8 %i.cc to i1
  br i1 %i.cd, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ce = load ptr, ptr %4, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i: ; preds = %bb.m
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ce) #19, !inline_history !37
  %.pre.i.i = load i8, ptr %13, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ci = phi i8 [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.cc, %bb.m ], [ %.pre.i.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i ] ; 2 uses
  %i.cj = load i8, ptr %i.s, align 8
  %i.ck = trunc i8 %i.cj to i1
  br i1 %i.ck, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread, label %bb.n

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread: ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.cl = or i8 %i.ci, 1
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %8, align 8, !tbaa !3
  %.sroa.31.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !38
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %4, align 8
  store ptr %.sroa.31.0.copyload.i.i.i.i.i, ptr %i.t, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.cm = and i8 %i.ci, -2
  %i.cn = load i64, ptr %8, align 8, !tbaa !33
  store i64 %i.cn, ptr %4, align 8, !tbaa !33
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.n, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread
  %.sink = phi i8 [ %i.cl, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread ], [ %i.cm, %bb.n ] ; 3 uses
  store i8 %.sink, ptr %13, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %14
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !40

bb.o:                                             ; preds = %.critedge
  %i.co = load i64, ptr %4, align 8, !tbaa !33
  store i64 %i.co, ptr %10, align 8, !tbaa !33
  store ptr null, ptr %4, align 8, !tbaa !33
  %i.cp = call noundef i32 @_ZN4llvh9SourceMgr18AddNewSourceBufferESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %10, ptr %2) ; 2 uses
  %i.cq = load ptr, ptr %10, align 8, !tbaa !33   ; 3 uses
  %.not.i18 = icmp eq ptr %i.cq, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.o
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cq) #19, !inline_history !42
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i, %bb.o, %.critedge
  %.0 = phi i32 [ 0, %.critedge ], [ %i.cp, %bb.o ], [ %i.cp, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i ]
  %i.cu = load i8, ptr %i.x, align 8
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit21, label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.cw = load ptr, ptr %4, align 8, !tbaa !33    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i19, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit21, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i20

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i20: ; preds = %bb.p
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cw) #19, !inline_history !43
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit21

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit21: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.p, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8, ptr noundef nonnull align 8 dereferenceable(18), i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { ptr, i64 } @_ZN4llvh3sys4path13get_separatorENS1_5StyleE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvh9SourceMgr18AddNewSourceBufferESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EEaSEOS4_.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.llvh::SourceMgr::SrcBuffer", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  store ptr %i.e, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8
  store ptr null, ptr %1, align 8, !tbaa !33
  store ptr %i.c, ptr %3, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EEaSEOS4_.exit
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %i.c to i64
  store i64 %i.m, ptr %i.i, align 8, !tbaa !33
  store ptr null, ptr %3, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.l, ptr %i.p, align 8, !tbaa !46
  store i64 0, ptr %i.o, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EEaSEOS4_.exit
  call void @_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.q, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.s = load ptr, ptr %0, align 8, !tbaa !54
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  %i.x = trunc i64 %i.w to i32
  store i32 %i.x, ptr %i.b, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = call { ptr, i8 } @_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ac, 8
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit
  %i.ad = and i64 %i.ac, -8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i

_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i:       ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i, %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 24) #21
  store i64 0, ptr %i.ab, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit
  %i.al = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.al, null
  br i1 %.not.i.i3, label %_ZN4llvh9SourceMgr9SrcBufferD2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #19, !inline_history !56
  br label %_ZN4llvh9SourceMgr9SrcBufferD2Ev.exit

_ZN4llvh9SourceMgr9SrcBufferD2Ev.exit:            ; preds = %bb.d, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.aa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(120) %0, ptr nofree readnone captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge4, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %.not1 = icmp ult ptr %1, %i.i
  br i1 %.not1, label %.critedge4, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %.not13 = icmp ugt ptr %1, %i.k
  br i1 %.not13, label %.critedge4, label %.critedge, !prof !74

.critedge4:                                       ; preds = %bb.b, %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge4, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %.critedge4 ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.n, %.critedge4 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = icmp ult ptr %i.p, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.q, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
end_hunk_0
