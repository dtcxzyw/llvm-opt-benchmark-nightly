Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SourceErrorManager?download=true
inline.NumInlined: 1564
inline.NumDeleted: 774
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
%"class.llvh::SMRange" = type { %"class.llvh::SMLoc", %"class.llvh::SMLoc" }
%"class.llvh::ArrayRef.26" = type { ptr, i64 }
%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }
%"struct.llvh::SourceMgr::SrcBuffer" = type { %"class.std::unique_ptr", %"class.llvh::PointerUnion4", %"class.llvh::SMLoc" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }
%"class.llvh::PointerUnion4" = type { %"class.llvh::PointerUnion" }
%"class.llvh::PointerUnion" = type { %"class.llvh::PointerIntPair" }
%"class.llvh::PointerIntPair" = type { i64 }
%"class.llvh::StringRef" = type { ptr, i64 }
%"struct.std::pair" = type <{ %"class.llvh::StringRef", i32, [4 x i8] }>
%"class.hermes::SourceErrorManager::SourceCoords" = type { i32, i32, i32 }
%"class.llvh::Optional" = type { %"struct.llvh::optional_detail::OptionalStorage" }
%"struct.llvh::optional_detail::OptionalStorage" = type { %"struct.llvh::AlignedCharArrayUnion", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [24 x i8] }
%"class.std::__cxx11::basic_string.39" = type { %"struct.std::__cxx11::basic_string<char32_t>::_Alloc_hider", i64, %union.anon.43 }
%"struct.std::__cxx11::basic_string<char32_t>::_Alloc_hider" = type { ptr }
%union.anon.43 = type { i64, [8 x i8] }
%"class.hermes::SourceErrorManager::BufferedMessage" = type { %"class.hermes::SourceErrorManager::MessageData", i32, i32 }
%"class.hermes::SourceErrorManager::MessageData" = type { i32, %"class.llvh::SMLoc", %"class.llvh::SMRange", %"class.std::__cxx11::basic_string" }

$_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE = comdat any

$_ZNK6hermes18SourceErrorManager12getSourceUrlEj = comdat any

$_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7replaceEmmmDi = comdat any

$_ZNSt5tupleIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEaSIS5_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E = comdat any

$_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_ = comdat any

$_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ = comdat any

$_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_ = comdat any

$_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJPKcSA_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E20InsertIntoBucketImplIS2_EEPS7_RKS2_RKT_SB_ = comdat any

$_ZN4llvh8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_jEEE4growEj = comdat any

$_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE17_M_realloc_insertIJRNS0_18SourceErrorManager8DiagKindERN4llvh5SMLocERNS9_7SMRangeERKNS9_5TwineEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE17_M_realloc_insertIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_ = comdat any

$_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE17_M_realloc_insertIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim = comdat any

$_ZN4llvhplERKNS_5TwineES2_ = comdat any

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1, !guid !7
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1, !guid !8
@.str.2 = private unnamed_addr constant [9 x i8] c"none:0,0\00", align 1, !guid !9
@_ZN6hermesL14sTooManyErrorsE = internal constant [24 x i8] c"too many errors emitted\00", align 16, !guid !10
@.str.4 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1, !guid !11
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1, !guid !12
@.str.6 = private unnamed_addr constant [8 x i8] c"error: \00", align 1, !guid !13
@.str.7 = private unnamed_addr constant [10 x i8] c"warning: \00", align 1, !guid !14
@.str.8 = private unnamed_addr constant [7 x i8] c"note: \00", align 1, !guid !15
@.str.9 = private unnamed_addr constant [9 x i8] c"remark: \00", align 1, !guid !16
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !17
@.str.12 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1, !guid !18
@.str.14 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1, !guid !19
@.str.17 = private unnamed_addr constant [28 x i8] c"Invalid UTF-8 code point 0x\00", align 1, !guid !20
@.str.18 = private unnamed_addr constant [27 x i8] c"Invalid UTF-8 lead byte 0x\00", align 1, !guid !21
@.str.19 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1, !guid !22
@.str.20 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1, !guid !23
@.str.21 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1, !guid !24
@.str.22 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1, !guid !25

@_ZN6hermes18SourceErrorManager16ICoordTranslatorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6hermes18SourceErrorManager16ICoordTranslatorD2Ev
@_ZN6hermes18SourceErrorManagerC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6hermes18SourceErrorManagerC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes18SourceErrorManager16ICoordTranslatorD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 !guid !193 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define hidden void @_ZN6hermes18SourceErrorManager16ICoordTranslatorD0Ev(ptr nofree noundef nonnull readnone align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 !guid !194 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(464) initializes((0, 80)) %0) unnamed_addr #3 align 2 !guid !195 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  store ptr %i.a, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.a, ptr %i.c, align 8, !tbaa !196
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.f, align 8, !tbaa !198
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 -1, ptr %i.g, align 8, !tbaa !199
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.h, i8 0, i64 160, i1 false)
  store i64 8, ptr %i.j, align 8, !tbaa !55
  %i.k = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !56
  %i.l = load i64, ptr %i.j, align 8, !tbaa !55
  %i.m = add i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n ; 3 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23 ; 6 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.o, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.p, ptr %i.s, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 512 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.t, ptr %i.u, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.o, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.p, ptr %i.x, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.t, ptr %i.y, align 8, !tbaa !60
  store ptr %i.p, ptr %i.q, align 8, !tbaa !200
  store ptr %i.p, ptr %i.v, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.z, i8 0, i64 20, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.ab, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i8 0, ptr %i.ac, align 4, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 1441151880758558783, ptr %i.ad, align 8, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 1441151880758558721, ptr %i.ae, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 0, ptr %i.af, align 8, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i8 0, ptr %i.ag, align 4, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 0, ptr %i.ah, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ai, i8 0, i64 20, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, i8 0, i64 20, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %i.ak, align 8, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, i8 0, i64 56, i1 false)
  store ptr @_ZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPv, ptr %i.am, align 8, !tbaa !202
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %0, ptr %i.an, align 8, !tbaa !203
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0, ptr nofree noundef readonly captures(none) %1) #3 align 2 !guid !209 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.std::pair.32", align 8     ; 8 uses
  %5 = alloca %"class.std::tuple.61", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8, !tbaa !210
  %.sroa.14107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14107.0.copyload = load i64, ptr %.sroa.14107.0..sroa_idx, align 8, !tbaa !99
  %i.b = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #24 ; 47 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !211  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !119  ; 3 uses
  %i.k = trunc nuw i8 %.sroa.0.0.copyload to i1   ; 9 uses
  br i1 %i.k, label %bb.b, label %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit"

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false) #24, !inline_history !204 ; 0 uses
  br label %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit"

"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit": ; preds = %bb.a, %bb.b
  switch i64 %i.f, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.a [
    i64 0, label %_ZN4llvh11raw_ostreamlsEPKc.exit
    i64 1, label %_ZNK4llvh9StringRef6equalsES0_.exit
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit"
  %lhsc = load i8, ptr %i.d, align 1
  %i.p = icmp eq i8 %lhsc, 45                     ; 2 uses
  %spec.select = select i1 %i.p, i64 7, i64 1
  %spec.select108 = select i1 %i.p, ptr @.str.4, ptr %i.d
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.a

_ZNK4llvh9StringRef6equalsES0_.exit.thread.a:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit"
  %.sroa.3.0 = phi i64 [ %i.f, %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit" ], [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 4 uses
  %.sroa.0100.0 = phi ptr [ %i.d, %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit" ], [ %spec.select108, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 10 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125  ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %.sroa.3.0, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.a
  %i.y = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef %.sroa.0100.0, i64 noundef %.sroa.3.0) #24 ; 0 uses
  %.pre110.pre = load ptr, ptr %i.s, align 8, !tbaa !125
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.d:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %.sroa.0100.0, i64 %.sroa.3.0, i1 false)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !125
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.3.0 ; 2 uses
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !125
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.c, %bb.d
  %.pre110.a = phi ptr [ %.pre110.pre, %bb.c ], [ %i.aa, %bb.d ] ; 4 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !124
  %.not.i57 = icmp ult ptr %.pre110.a, %i.ab
  br i1 %.not.i57, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i8 noundef zeroext 58) #24
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre110.a, i64 1
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !125
  store i8 58, ptr %.pre110.a, align 1, !tbaa !126
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.f, %bb.g
  %.0.i58 = phi ptr [ %i.ac, %bb.f ], [ %i.b, %bb.g ]
  %i.ae = sext i32 %i.h to i64
  %i.af = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i58, i64 noundef %i.ae) #24 ; 0 uses
  %.not36 = icmp eq i32 %i.j, -1
  %.pre109 = load ptr, ptr %i.s, align 8, !tbaa !125 ; 4 uses
  br i1 %.not36, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !124
  %.not.i59 = icmp ult ptr %.pre109, %i.ag
  br i1 %.not.i59, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i8 noundef zeroext 58) #24
  br label %_ZN4llvh11raw_ostreamlsEc.exit61

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre109, i64 1
  store ptr %i.ai, ptr %i.s, align 8, !tbaa !125
  store i8 58, ptr %.pre109, align 1, !tbaa !126
  br label %_ZN4llvh11raw_ostreamlsEc.exit61

_ZN4llvh11raw_ostreamlsEc.exit61:                 ; preds = %bb.i, %bb.j
  %.0.i60 = phi ptr [ %i.ah, %bb.i ], [ %i.b, %bb.j ]
  %i.aj = add nuw nsw i32 %i.j, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i60, i64 noundef %i.ak) #24 ; 0 uses
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !125
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %_ZN4llvh11raw_ostreamlsEc.exit61, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.am = phi ptr [ %.pre109, %_ZN4llvh11raw_ostreamlsEc.exit ], [ %.pre, %_ZN4llvh11raw_ostreamlsEc.exit61 ], [ %.pre110.a, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 2 uses
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 2
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull @.str.5, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.m:                                             ; preds = %bb.k
  store i16 8250, ptr %i.am, align 1
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !125
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store ptr %i.au, ptr %i.s, align 8, !tbaa !125
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit", %bb.m, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !212
  switch i32 %i.aw, label %_ZN4llvh11raw_ostreamlsEPKc.exit65 [
    i32 0, label %bb.n
    i32 1, label %bb.r
    i32 3, label %bb.v
    i32 2, label %bb.z
  ]

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  br i1 %i.k, label %bb.o, label %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit62"

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #24, !inline_history !204 ; 0 uses
  br label %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit62"

"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit62": ; preds = %bb.n, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !124
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !125 ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, 7
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit62"
  %i.bj = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull @.str.6, i64 noundef 7) #24 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit65

bb.q:                                             ; preds = %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit62"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.be, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i64 7, i1 false)
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !125
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 7
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !125
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit65

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  br i1 %i.k, label %bb.s, label %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit66"

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i32 noundef 5, i1 noundef zeroext true, i1 noundef zeroext false) #24, !inline_history !204 ; 0 uses
  br label %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit66"

"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit66": ; preds = %bb.r, %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !124
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !125 ; 2 uses
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ult i64 %i.bw, 9
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit66"
  %i.by = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull @.str.7, i64 noundef 9) #24 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit65

bb.u:                                             ; preds = %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit66"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bt, ptr noundef nonnull align 1 dereferenceable(9) @.str.7, i64 9, i1 false)
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !125
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  store ptr %i.ca, ptr %i.bs, align 8, !tbaa !125
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit65

bb.v:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  br i1 %i.k, label %bb.w, label %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit70"

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false) #24, !inline_history !204 ; 0 uses
  br label %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit70"

"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit70": ; preds = %bb.v, %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !124
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !125 ; 2 uses
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = icmp ult i64 %i.cl, 6
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit70"
  %i.cn = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull @.str.8, i64 noundef 6) #24 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit65

bb.y:                                             ; preds = %"_ZZN6hermes18SourceErrorManager15printDiagnosticERKN4llvh12SMDiagnosticEPvENK3$_0clENS1_11raw_ostream6ColorsE.exit70"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ci, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !125
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  store ptr %i.cp, ptr %i.ch, align 8, !tbaa !125
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit65

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
end_hunk_0
