Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_flat_set_test?download=true
inline.NumInlined: 99
inline.NumDeleted: 77
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::container::flat_set" = type { %"class.boost::container::dtl::flat_tree" }
%"class.boost::container::dtl::flat_tree" = type { %"struct.boost::container::dtl::flat_tree<int, boost::move_detail::identity<int>, std::less<int>, boost::container::pmr::polymorphic_allocator<int>>::Data" }
%"struct.boost::container::dtl::flat_tree<int, boost::move_detail::identity<int>, std::less<int>, boost::container::pmr::polymorphic_allocator<int>>::Data" = type { %"class.boost::container::vector" }
%"class.boost::container::vector" = type { %"struct.boost::container::vector_alloc_holder" }
%"struct.boost::container::vector_alloc_holder" = type { %"class.boost::container::pmr::polymorphic_allocator", ptr, i64, i64 }
%"class.boost::container::pmr::polymorphic_allocator" = type { ptr }
%"struct.std::pair" = type <{ %"class.boost::container::vec_iterator", i8, [7 x i8] }>
%"class.boost::container::vec_iterator" = type { ptr }

$_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE13insert_uniqueEOi = comdat any

$_ZN5boost9container6vectorIiNS0_3pmr21polymorphic_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JiEEEEENS0_12vec_iteratorIPiLb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE = comdat any

$_ZN5boost9container18throw_length_errorEPKc = comdat any

$_ZN5boost9container12length_errorD0Ev = comdat any

$_ZNK5boost9container9exception4whatEv = comdat any

$_ZTIN5boost9container12length_errorE = comdat any

$_ZTSN5boost9container12length_errorE = comdat any

$_ZTIN5boost9container9exceptionE = comdat any

$_ZTSN5boost9container9exceptionE = comdat any

$_ZTVN5boost9container12length_errorE = comdat any

@.str = private unnamed_addr constant [48 x i8] c"get_next_capacity, allocator's max size reached\00", align 1
@_ZTIN5boost9container12length_errorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9container12length_errorE, ptr @_ZTIN5boost9container9exceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost9container12length_errorE = linkonce_odr dso_local constant [33 x i8] c"N5boost9container12length_errorE\00", comdat, align 1
@_ZTIN5boost9container9exceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9container9exceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5boost9container9exceptionE = linkonce_odr dso_local constant [29 x i8] c"N5boost9container9exceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN5boost9container12length_errorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost9container12length_errorE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5boost9container12length_errorD0Ev, ptr @_ZNK5boost9container9exception4whatEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"unknown boost::container exception\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::flat_set", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.std::pair", align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  %i.b = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #14
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  invoke void @_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE13insert_uniqueEOi(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container8flat_setIiSt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE6insertEOi.exit unwind label %bb.d

_ZN5boost9container8flat_setIiSt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE6insertEOi.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container8flat_setIiSt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE6insertEOi.exit
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.g = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.h = shl i64 %i.e, 2
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f, i64 noundef %i.h, i64 noundef 4)
          to label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEED2Ev.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #15
  unreachable

_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEED2Ev.exit: ; preds = %_ZN5boost9container8flat_setIiSt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE6insertEOi.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret i32 0

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  resume { ptr, i32 } %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE4DataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.f = shl i64 %i.b, 2
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.d, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE4DataD2Ev.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #15
  unreachable

_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE4DataD2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE13insert_uniqueEOi(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22, !noalias !51 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24, !noalias !52 ; 7 uses
  %.idx.i = shl nsw i64 %i.e, 2
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i
  %.not12.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SG_SG_RKT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !14, !noalias !53
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %i.i = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14, !noalias !53
  %i.l = icmp slt i32 %i.k, %i.g                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.neg.i.i.i = xor i64 %i.i, -1
  %i.n = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.o = select i1 %i.l, ptr %i.m, ptr %i.h       ; 2 uses
  %.1.i.i.i = select i1 %i.l, i64 %i.n, i64 %i.i  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SG_SG_RKT0_.exit.i.i, label %bb.b, !llvm.loop !44

_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SG_SG_RKT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.c, %bb.a ], [ %i.o, %bb.b ] ; 10 uses
  %i.q = icmp eq ptr %i.p, %i.f
  br i1 %i.q, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit

_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread: ; preds = %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SG_SG_RKT0_.exit.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  br label %bb.c

_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit: ; preds = %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SG_SG_RKT0_.exit.i.i
  %i.r = load i32, ptr %2, align 4, !tbaa !14
  %i.s = load i32, ptr %i.p, align 4, !tbaa !14
  %i.t = icmp slt i32 %i.r, %i.s                  ; 2 uses
  %i.u = zext i1 %i.t to i8
  store i8 %i.u, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  br i1 %i.t, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread, %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18, !noalias !58
  %.not.i.i.i3 = icmp eq i64 %i.w, %i.e
  br i1 %.not.i.i.i3, label %bb.h, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.p
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.y = load i32, ptr %2, align 4, !tbaa !14, !noalias !58
  store i32 %i.y, ptr %i.p, align 4, !tbaa !14, !noalias !58
  %i.z = add i64 %i.e, 1
  store i64 %i.z, ptr %i.d, align 8, !tbaa !24, !noalias !58
  br label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE18priv_insert_commitIiEENS0_12vec_iteratorIPiLb0EEERNSB_18insert_commit_dataEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.p to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !14, !noalias !58
  store i32 %i.af, ptr %i.x, align 4, !tbaa !14, !noalias !58
  %i.ag = add i64 %i.e, 1
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !24, !noalias !58
  %i.ah = add nsw i64 %i.ad, -1                   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.ai = sub nsw i64 1, %i.ad                    ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai
  %i.al = shl i64 %i.ah, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.ak, i64 %i.al, i1 false), !noalias !58
  br label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i

_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.am = load i32, ptr %2, align 4, !tbaa !14, !noalias !58
  store i32 %i.am, ptr %i.p, align 4, !tbaa !14, !noalias !58
  br label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE18priv_insert_commitIiEENS0_12vec_iteratorIPiLb0EEERNSB_18insert_commit_dataEOT_.exit

bb.h:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIiNS0_3pmr21polymorphic_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JiEEEEENS0_12vec_iteratorIPiLb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.p, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %2)
  %.pre = load ptr, ptr %3, align 8, !tbaa !19
  br label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE18priv_insert_commitIiEENS0_12vec_iteratorIPiLb0EEERNSB_18insert_commit_dataEOT_.exit

bb.i:                                             ; preds = %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit
  %i.an = ptrtoint ptr %i.p to i64
  %i.ao = ptrtoint ptr %i.c to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.c, i64 %i.ap
  br label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE18priv_insert_commitIiEENS0_12vec_iteratorIPiLb0EEERNSB_18insert_commit_dataEOT_.exit

_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIiEEE18priv_insert_commitIiEENS0_12vec_iteratorIPiLb0EEERNSB_18insert_commit_dataEOT_.exit: ; preds = %bb.e, %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i, %bb.h, %bb.i
  %i.ar = phi ptr [ %.pre, %bb.h ], [ %i.aq, %bb.i ], [ %i.p, %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i ], [ %i.p, %bb.e ]
  store ptr %i.ar, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_3pmr21polymorphic_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JiEEEEENS0_12vec_iteratorIPiLb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 6 uses
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4611686018427387903)
  %i.n = select i1 %i.k, i64 4611686018427387903, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i64 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0.i.i) ; 2 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !26

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.s = shl nuw i64 %i.p, 2
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.s, i64 noundef 4), !inline_history !59 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 5 uses
  %i.z = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ac ; 2 uses
  %i.ae = icmp ne ptr %i.y, %2
  %i.af = icmp ne ptr %i.w, null
  %or.cond.i.i.i.i = and i1 %i.af, %i.ae
  %i.ag = icmp ne ptr %i.y, null                  ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.ag, %or.cond.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i, !prof !61

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 4 %i.y, i64 %i.ab, i1 false)
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %i.ab
  br label %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.w, %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.ai = load i32, ptr %4, align 4, !tbaa !14
  store i32 %i.ai, ptr %.0.i.i.i.i, align 4, !tbaa !14
  %i.aj = icmp ne ptr %2, %i.ad
  %i.ak = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ak, %i.aj
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_NS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, !prof !61

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = sub i64 %i.am, %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 4 %2, i64 %i.an, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_NS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvRT_T0_SB_SB_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_NS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvRT_T0_SB_SB_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  br i1 %i.ag, label %bb.i, label %_ZN5boost9container6vectorIiNS0_3pmr21polymorphic_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPimSA_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_NS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvRT_T0_SB_SB_T1_mT2_.exit.i
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !18
  %i.aq = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.ar = shl i64 %i.ap, 2
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ao, i64 noundef %i.ar, i64 noundef 4)
          to label %_ZN5boost9container6vectorIiNS0_3pmr21polymorphic_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPimSA_mT_.exit unwind label %bb.j, !inline_history !0

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #15
  unreachable

_ZN5boost9container6vectorIiNS0_3pmr21polymorphic_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPimSA_mT_.exit: ; preds = %bb.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIiEEPiS5_NS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvRT_T0_SB_SB_T1_mT2_.exit.i
  store ptr %i.w, ptr %i.x, align 8, !tbaa !22
  %.pn = load i64, ptr %i.d, align 8, !tbaa !60
  %storemerge = add i64 %.pn, %3
  store i64 %storemerge, ptr %i.d, align 8, !tbaa !60
  store i64 %i.p, ptr %i.a, align 8, !tbaa !62
  %i.ax = getelementptr inbounds i8, ptr %i.w, i64 %i.ab
  store ptr %i.ax, ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #16
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost9container9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.1, ptr %i.b
  ret ptr %spec.select
end_hunk_0
