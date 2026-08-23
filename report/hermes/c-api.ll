Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/c-api?download=true
inline.NumInlined: 358
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::MemoryBufferRef" = type { %"class.llvh::StringRef", %"class.llvh::StringRef" }
%"class.llvh::StringRef" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.hermes::SourceErrorManager" = type { %"class.llvh::SourceMgr", %"struct.hermes::SourceErrorOutputOptions", %"class.std::shared_ptr", %"struct.hermes::SourceErrorManager::FindLineCache", %"struct.hermes::StringSetVector", [4 x i32], i32, i8, %"class.llvh::SmallBitVector", %"class.llvh::SmallBitVector", %"class.hermes::OptValue", i8, [7 x i8], %"class.llvh::DenseMap.13", %"class.llvh::DenseMap.13", i32, ptr, %"class.std::vector.16", %"class.std::vector.21" }
%"class.llvh::SourceMgr" = type { %"class.std::vector", %"class.std::map", i32, %"class.std::vector.8", ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<llvh::SourceMgr::SrcBuffer, std::allocator<llvh::SourceMgr::SrcBuffer>>::_Vector_impl" }
%"struct.std::_Vector_base<llvh::SourceMgr::SrcBuffer, std::allocator<llvh::SourceMgr::SrcBuffer>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvh::SourceMgr::SrcBuffer, std::allocator<llvh::SourceMgr::SrcBuffer>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvh::SourceMgr::SrcBuffer, std::allocator<llvh::SourceMgr::SrcBuffer>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.hermes::SourceErrorOutputOptions" = type { i8, i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.hermes::SourceErrorManager::FindLineCache" = type { i32, i32, %"class.llvh::StringRef", %"class.llvh::StringRef" }
%"struct.hermes::StringSetVector" = type { %"class.std::deque", %"class.llvh::DenseMap" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.llvh::DenseMap" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::SmallBitVector" = type { i64 }
%"class.hermes::OptValue" = type <{ i32, i8, [3 x i8] }>
%"class.llvh::DenseMap.13" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<hermes::SourceErrorManager::BufferedMessage, std::allocator<hermes::SourceErrorManager::BufferedMessage>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::SourceErrorManager::BufferedMessage, std::allocator<hermes::SourceErrorManager::BufferedMessage>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::SourceErrorManager::BufferedMessage, std::allocator<hermes::SourceErrorManager::BufferedMessage>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::SourceErrorManager::BufferedMessage, std::allocator<hermes::SourceErrorManager::BufferedMessage>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<hermes::SourceErrorManager::MessageData, std::allocator<hermes::SourceErrorManager::MessageData>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::SourceErrorManager::MessageData, std::allocator<hermes::SourceErrorManager::MessageData>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::SourceErrorManager::MessageData, std::allocator<hermes::SourceErrorManager::MessageData>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::SourceErrorManager::MessageData, std::allocator<hermes::SourceErrorManager::MessageData>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.hermes::SimpleDiagHandlerRAII" = type <{ %"class.hermes::SimpleDiagHandler", ptr, ptr, ptr, i32, [4 x i8] }>
%"class.hermes::SimpleDiagHandler" = type { %"class.llvh::SMDiagnostic" }
%"class.llvh::SMDiagnostic" = type { ptr, %"class.llvh::SMLoc", %"class.std::__cxx11::basic_string", i32, i32, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector.26", %"class.llvh::SmallVector" }
%"class.llvh::SMLoc" = type { ptr }
%"class.std::vector.26" = type { %"struct.std::_Vector_base.27" }
%"struct.std::_Vector_base.27" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [4 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [48 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }

$_ZN6hermes18SourceErrorManagerD2Ev = comdat any

$_ZN4llvh9SourceMgrD2Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZN6hermes9SourceMapD2Ev = comdat any

@.str = private unnamed_addr constant [29 x i8] c"Input is not zero terminated\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"<source map>\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @hermes_source_map_parse(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::MemoryBufferRef", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.hermes::SourceErrorManager", align 8 ; 7 uses
  %5 = alloca %"class.hermes::SimpleDiagHandlerRAII", align 8 ; 6 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, -1                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #14 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 28, ptr %i.a, align 8, !tbaa !12
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #15 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !14
  %i.i = load i64, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.h, ptr noundef nonnull align 1 dereferenceable(28) @.str, i64 28, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !16
  %i.k = load ptr, ptr %3, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !8
  %i.n = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = load i64, ptr %i.j, align 8, !tbaa !16   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  store ptr %i.n, ptr %i.f, align 8, !tbaa !14
  %i.s = load i64, ptr %i.g, align 8, !tbaa !7
  store i64 %i.s, ptr %i.m, align 8, !tbaa !7
  %.pre23 = load i64, ptr %i.j, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 0, ptr %i.y, align 8, !tbaa !16
  store i8 0, ptr %i.x, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464) %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN6hermes21SimpleDiagHandlerRAIIC1ERNS_18SourceErrorManagerE(ptr noundef nonnull align 8 dereferenceable(388) %5, ptr noundef nonnull align 8 dereferenceable(464) %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8, !tbaa !20, !noalias !21
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !12, !noalias !21
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.2, ptr %i.z, align 8, !tbaa !20, !noalias !21
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 12, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !12, !noalias !21
  call void @_ZN6hermes15SourceMapParser5parseEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull byval(%"class.llvh::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(464) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = load ptr, ptr %6, align 8               ; 2 uses
  %.not18 = icmp eq ptr %i.aa, null
  br i1 %.not18, label %bb.e, label %.thread33

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16
  %.not19 = icmp eq i64 %i.ac, 0
  br i1 %.not19, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.ae, align 1, !tbaa !24
  store ptr @.str.1, ptr %7, align 8, !tbaa !7
  store i8 3, ptr %i.ad, align 8, !tbaa !27
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %4, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %7, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.pr.pre = load ptr, ptr %6, align 8            ; 2 uses
  %i.af = icmp eq ptr %.pr.pre, null
  br i1 %i.af, label %.thread, label %.thread33

.thread33:                                        ; preds = %bb.f, %bb.d
  %.in = phi ptr [ %i.aa, %bb.d ], [ %.pr.pre, %bb.f ]
  %i.ag = ptrtoint ptr %.in to i64
  %i.ah = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #14 ; 8 uses
  store ptr null, ptr %6, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !16
  store i8 0, ptr %i.ai, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.ag, ptr %i.ak, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 0, ptr %i.an, align 8, !tbaa !16
  store i8 0, ptr %i.am, align 8, !tbaa !7
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit14

.thread:                                          ; preds = %bb.e, %bb.f
  %i.ao = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #14 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZNK6hermes17SimpleDiagHandler14getErrorStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(360) %5) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !8
  %i.aq = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.g:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.thread
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !14
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !7
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr null, ptr %i.ba, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i64 0, ptr %i.bd, align 8, !tbaa !16
  store i8 0, ptr %i.bc, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %.pre22 = load ptr, ptr %6, align 8, !tbaa !28  ; 3 uses
  %.not.i12 = icmp eq ptr %.pre22, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i13: ; preds = %bb.h
  call void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pre22) #15
  call void @_ZdlPvm(ptr noundef nonnull %.pre22, i64 noundef 104) #16
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit14: ; preds = %.thread33, %bb.h, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i13
  %.036 = phi ptr [ %i.ah, %.thread33 ], [ %i.ao, %bb.h ], [ %i.ao, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN6hermes21SimpleDiagHandlerRAIID1Ev(ptr noundef nonnull align 8 dereferenceable(388) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.036, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit14 ]
  ret ptr %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464)) unnamed_addr #3

declare void @_ZN6hermes21SimpleDiagHandlerRAIIC1ERNS_18SourceErrorManagerE(ptr noundef nonnull align 8 dereferenceable(388), ptr noundef nonnull align 8 dereferenceable(464)) unnamed_addr #3

declare void @_ZNK6hermes17SimpleDiagHandler14getErrorStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6hermes21SimpleDiagHandlerRAIID1Ev(ptr noundef nonnull align 8 dereferenceable(388)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !7
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #16
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !33

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #16
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.z = load i64, ptr %i.x, align 8, !tbaa !7
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #16
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 72 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !40

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.r, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #16
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %.pre1.i = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 3 uses
  br i1 %i.al, label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit
end_hunk_0
