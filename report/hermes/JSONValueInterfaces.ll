inline.NumInlined: 383
inline.NumDeleted: 296
begin_hunk_0
%"struct.std::_Tuple_impl.65" = type { %"struct.std::_Head_base.68" }
%"struct.std::_Head_base.68" = type { ptr }
%"class.hermes::SourceErrorManager" = type { %"class.llvh::SourceMgr", %"struct.hermes::SourceErrorOutputOptions", %"class.std::shared_ptr", %"struct.hermes::SourceErrorManager::FindLineCache", %"struct.hermes::StringSetVector", [4 x i32], i32, i8, %"class.llvh::SmallBitVector", %"class.llvh::SmallBitVector", %"class.hermes::OptValue", i8, [7 x i8], %"class.llvh::DenseMap.8", %"class.llvh::DenseMap.8", i32, ptr, %"class.std::vector.11", %"class.std::vector.16" }
%"class.llvh::SourceMgr" = type { %"class.std::vector", %"class.std::map", i32, %"class.std::vector.3", ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<llvh::SourceMgr::SrcBuffer, std::allocator<llvh::SourceMgr::SrcBuffer>>::_Vector_impl" }
%"struct.std::_Vector_base<llvh::SourceMgr::SrcBuffer, std::allocator<llvh::SourceMgr::SrcBuffer>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvh::SourceMgr::SrcBuffer, std::allocator<llvh::SourceMgr::SrcBuffer>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvh::SourceMgr::SrcBuffer, std::allocator<llvh::SourceMgr::SrcBuffer>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.hermes::SourceErrorOutputOptions" = type { i8, i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.hermes::SourceErrorManager::FindLineCache" = type { i32, i32, %"class.llvh::StringRef", %"class.llvh::StringRef" }
%"class.llvh::StringRef" = type { ptr, i64 }
%"struct.hermes::StringSetVector" = type { %"class.std::deque", %"class.llvh::DenseMap" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.llvh::DenseMap" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::SmallBitVector" = type { i64 }
%"class.hermes::OptValue" = type <{ i32, i8, [3 x i8] }>
%"class.llvh::DenseMap.8" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<hermes::SourceErrorManager::BufferedMessage, std::allocator<hermes::SourceErrorManager::BufferedMessage>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::SourceErrorManager::BufferedMessage, std::allocator<hermes::SourceErrorManager::BufferedMessage>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::SourceErrorManager::BufferedMessage, std::allocator<hermes::SourceErrorManager::BufferedMessage>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::SourceErrorManager::BufferedMessage, std::allocator<hermes::SourceErrorManager::BufferedMessage>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<hermes::SourceErrorManager::MessageData, std::allocator<hermes::SourceErrorManager::MessageData>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::SourceErrorManager::MessageData, std::allocator<hermes::SourceErrorManager::MessageData>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::SourceErrorManager::MessageData, std::allocator<hermes::SourceErrorManager::MessageData>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::SourceErrorManager::MessageData, std::allocator<hermes::SourceErrorManager::MessageData>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.hermes::parser::JSONParser" = type { ptr, %"class.hermes::parser::JSLexer", ptr }
%"class.hermes::parser::JSLexer" = type { ptr, ptr, i32, %"class.std::unique_ptr", ptr, ptr, i8, i8, i8, i8, [4 x i8], %"class.hermes::parser::Token", %"class.llvh::SMLoc", ptr, ptr, ptr, i8, %"class.llvh::SmallString", %"class.llvh::SmallString", [46 x ptr], %"class.llvh::StringRef", %"class.llvh::StringRef", %"class.std::vector.23", %"class.std::vector.28" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.22" }
%"struct.std::_Head_base.22" = type { ptr }
%"class.hermes::parser::Token" = type <{ i32, [4 x i8], %"class.llvh::SMRange", double, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.llvh::SMRange" = type { %"class.llvh::SMLoc", %"class.llvh::SMLoc" }
%"class.llvh::SMLoc" = type { ptr }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector" }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [256 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [1 x i8] }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<hermes::parser::StoredComment, std::allocator<hermes::parser::StoredComment>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::parser::StoredComment, std::allocator<hermes::parser::StoredComment>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::parser::StoredComment, std::allocator<hermes::parser::StoredComment>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::parser::StoredComment, std::allocator<hermes::parser::StoredComment>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<hermes::parser::StoredToken, std::allocator<hermes::parser::StoredToken>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::parser::StoredToken, std::allocator<hermes::parser::StoredToken>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::parser::StoredToken, std::allocator<hermes::parser::StoredToken>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::parser::StoredToken, std::allocator<hermes::parser::StoredToken>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvh::raw_string_ostream" = type { %"class.llvh::raw_ostream.base", ptr }
%"class.llvh::raw_ostream.base" = type <{ ptr, ptr, ptr, ptr, i32 }>
%"class.hermes::JSONEmitter" = type { %"class.llvh::SmallVector.54", ptr, i8, i32 }
%"class.llvh::SmallVector.54" = type { %"class.llvh::SmallVectorImpl.55", %"struct.llvh::SmallVectorStorage.58" }
%"class.llvh::SmallVectorImpl.55" = type { %"class.llvh::SmallVectorTemplateBase.56" }
%"class.llvh::SmallVectorTemplateBase.56" = type { %"class.llvh::SmallVectorTemplateCommon.57" }
%"class.llvh::SmallVectorTemplateCommon.57" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.58" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.59"] }
%"struct.llvh::AlignedCharArrayUnion.59" = type { %"struct.llvh::AlignedCharArray.60" }
%"struct.llvh::AlignedCharArray.60" = type { [5 x i8] }

$_ZN6hermes18SourceErrorManagerD2Ev = comdat any

$_ZN4llvh9SourceMgrD2Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE = comdat any

@.str = private unnamed_addr constant [5 x i8] c"json\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN4llvh18raw_string_ostreamE = external unnamed_addr constant { [13 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i8 } @_ZN8facebook6hermes3cdp8parseStrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN6hermes6parser11JSONFactoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.61", align 8 ; 5 uses
  %3 = alloca %"class.hermes::SourceErrorManager", align 8 ; 7 uses
  %4 = alloca %"class.hermes::parser::JSONParser", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464) %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 340
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN4llvh12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.61") align 8 %2, ptr %i.c, i64 %i.e, ptr nonnull @.str, i64 4, i1 noundef zeroext true) #13
  call void @_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EERNS_18SourceErrorManagerEb(ptr noundef nonnull align 8 dereferenceable(1176) %4, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(464) %3, i1 noundef zeroext false) #13
  %i.f = load ptr, ptr %2, align 8, !tbaa !19     ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh9StringRefERNS_18SourceErrorManagerEb.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #13, !inline_history !23
  br label %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh9StringRefERNS_18SourceErrorManagerEb.exit

_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh9StringRefERNS_18SourceErrorManagerEb.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.j = call { i64, i8 } @_ZN6hermes6parser10JSONParser5parseEv(ptr noundef nonnull align 8 dereferenceable(1176) %4) #13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 1144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh9StringRefERNS_18SourceErrorManagerEb.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #14
  br label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh9StringRefERNS_18SourceErrorManagerEb.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 1136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #14
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 448
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 464
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i
  call void @free(ptr noundef %i.z) #13
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i:      ; preds = %bb.d, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i
  call void @free(ptr noundef %i.ad) #13
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i:     ; preds = %bb.e, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN6hermes6parser10JSONParserD2Ev.exit, label %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  call void @_ZdlPv(ptr noundef %i.aj) #13
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 32) #14
  br label %_ZN6hermes6parser10JSONParserD2Ev.exit

_ZN6hermes6parser10JSONParserD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i, %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i
  %i.ak = extractvalue { i64, i8 } %i.j, 1        ; 2 uses
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = extractvalue { i64, i8 } %i.j, 0
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.05.0 = select i1 %i.al, ptr %i.an, ptr undef
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.sroa.44.8.extract.trunc = trunc i64 %i.b to i40
  store i40 %.sroa.44.8.extract.trunc, ptr %i.a, align 8
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %i.ak, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464)) unnamed_addr #2

declare { i64, i8 } @_ZN6hermes6parser10JSONParser5parseEv(ptr noundef nonnull align 8 dereferenceable(1176)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !43
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #14
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #14
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.z = load i64, ptr %i.x, align 8, !tbaa !43
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #14
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 72 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !51

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.r, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #14
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !53 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %.pre1.i = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 3 uses
  br i1 %i.al, label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit
  %i.am = zext i32 %i.ak to i64
  %.idx.i.i = mul nuw nsw i64 %i.am, 40
  %i.an = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ao = load i32, ptr %.010.i.i, align 4, !tbaa !4
  %switch.i.i = icmp ugt i32 %i.ao, -3
  br i1 %switch.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !57

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !56
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit

_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i
  %i.aw = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.aw) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !53 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  %.pre1.i9 = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 3 uses
  br i1 %i.ba, label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21, label %.lr.ph.preheader.i.i10

.lr.ph.preheader.i.i10:                           ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit
  %i.bb = zext i32 %i.az to i64
  %.idx.i.i11 = mul nuw nsw i64 %i.bb, 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre1.i9, i64 %.idx.i.i11
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, %.lr.ph.preheader.i.i10
  %.010.i.i13 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16 ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 4 uses
  %i.bd = load i32, ptr %.010.i.i13, align 4, !tbaa !4
  %switch.i.i14 = icmp ugt i32 %i.bd, -3
  br i1 %switch.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i12
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 24 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %bb.e
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !43
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15, %.lr.ph.i.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 40 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bk, %i.bc
  br i1 %.not.i.i17, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18, label %.lr.ph.i.i12, !llvm.loop !57

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16
  %.pre.i19 = load ptr, ptr %i.ax, align 8, !tbaa !56
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21

_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21: ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18
  %i.bl = phi ptr [ %.pre.i19, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18 ], [ %.pre1.i9, %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.bl) #13
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !58 ; 3 uses
  %i.bo = trunc i64 %i.bn to i1
  %i.bp = icmp eq i64 %i.bn, 0
end_hunk_0
