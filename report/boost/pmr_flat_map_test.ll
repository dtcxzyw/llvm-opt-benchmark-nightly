Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_flat_map_test?download=true
inline.NumInlined: 109
inline.NumDeleted: 87
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::container::flat_map" = type { %"class.boost::container::dtl::flat_tree" }
%"class.boost::container::dtl::flat_tree" = type { %"struct.boost::container::dtl::flat_tree<std::pair<int, float>, boost::container::dtl::select1st<int>, std::less<int>, boost::container::pmr::polymorphic_allocator<std::pair<int, float>>>::Data" }
%"struct.boost::container::dtl::flat_tree<std::pair<int, float>, boost::container::dtl::select1st<int>, std::less<int>, boost::container::pmr::polymorphic_allocator<std::pair<int, float>>>::Data" = type { %"class.boost::container::vector" }
%"class.boost::container::vector" = type { %"struct.boost::container::vector_alloc_holder" }
%"struct.boost::container::vector_alloc_holder" = type { %"class.boost::container::pmr::polymorphic_allocator", ptr, i64, i64 }
%"class.boost::container::pmr::polymorphic_allocator" = type { ptr }
%"struct.std::pair.0" = type { i32, float }
%"struct.std::pair" = type <{ %"class.boost::container::vec_iterator", i8, [7 x i8] }>
%"class.boost::container::vec_iterator" = type { ptr }

$_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE13insert_uniqueEOS4_ = comdat any

$_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE = comdat any

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
  %0 = alloca %"class.boost::container::flat_map", align 8 ; 9 uses
  %1 = alloca %"struct.std::pair.0", align 4      ; 6 uses
  %2 = alloca %"struct.std::pair", align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #14
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store i32 0, ptr %1, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEE6insertEOS7_.exit unwind label %bb.d

_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEE6insertEOS7_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEE6insertEOS7_.exit
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.g = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.h = shl i64 %i.e, 3
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f, i64 noundef %i.h, i64 noundef 4)
          to label %_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEED2Ev.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #15
  unreachable

_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEED2Ev.exit: ; preds = %_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEE6insertEOS7_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret i32 0

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
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
define linkonce_odr hidden void @_ZN5boost9container8flat_mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIifEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.f = shl i64 %i.b, 3
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.d, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEED2Ev.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #15
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
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
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE13insert_uniqueEOS4_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25, !noalias !56 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27, !noalias !57 ; 7 uses
  %.idx.i = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i
  %.not12.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SH_SH_RKT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !28, !noalias !58
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %i.i = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28, !noalias !58
  %i.l = icmp slt i32 %i.k, %i.g                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.neg.i.i.i = xor i64 %i.i, -1
  %i.n = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.o = select i1 %i.l, ptr %i.m, ptr %i.h       ; 2 uses
  %.1.i.i.i = select i1 %i.l, i64 %i.n, i64 %i.i  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SH_SH_RKT0_.exit.i.i, label %bb.b, !llvm.loop !49

_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SH_SH_RKT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.c, %bb.a ], [ %i.o, %bb.b ] ; 12 uses
  %i.q = icmp eq ptr %i.p, %i.f
  br i1 %i.q, label %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSC_18insert_commit_dataE.exit.thread, label %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSC_18insert_commit_dataE.exit

_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSC_18insert_commit_dataE.exit.thread: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SH_SH_RKT0_.exit.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  br label %bb.c

_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSC_18insert_commit_dataE.exit: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SH_SH_RKT0_.exit.i.i
  %i.r = load i32, ptr %2, align 4, !tbaa !28
  %i.s = load i32, ptr %i.p, align 4, !tbaa !28
  %i.t = icmp slt i32 %i.r, %i.s                  ; 2 uses
  %i.u = zext i1 %i.t to i8
  store i8 %i.u, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  br i1 %i.t, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSC_18insert_commit_dataE.exit.thread, %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSC_18insert_commit_dataE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21, !noalias !63
  %.not.i.i.i3 = icmp eq i64 %i.w, %i.e
  br i1 %.not.i.i.i3, label %bb.h, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.p
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.z = load i32, ptr %2, align 4, !tbaa !28, !noalias !63
  store i32 %i.z, ptr %i.p, align 4, !tbaa !28, !noalias !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ab = load float, ptr %i.y, align 4, !tbaa !31, !noalias !63
  store float %i.ab, ptr %i.aa, align 4, !tbaa !31, !noalias !63
  %i.ac = add i64 %i.e, 1
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !27, !noalias !63
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE18priv_insert_commitIS4_EENS0_12vec_iteratorIPS4_Lb0EEERNSC_18insert_commit_dataEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.p to i64
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.x, i64 -4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !28, !noalias !63
  store i32 %i.aj, ptr %i.x, align 4, !tbaa !28, !noalias !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.al = load float, ptr %i.ai, align 4, !tbaa !31, !noalias !63
  store float %i.al, ptr %i.ak, align 4, !tbaa !31, !noalias !63
  %i.am = add i64 %i.e, 1
  store i64 %i.am, ptr %i.d, align 8, !tbaa !27, !noalias !63
  %i.an = add nsw i64 %i.ag, -1                   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIifES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.ao = sub nsw i64 1, %i.ag                    ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ao
  %i.ar = shl i64 %i.an, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %i.aq, i64 %i.ar, i1 false), !noalias !63
  br label %_ZN5boost9container15move_backward_nIPSt4pairIifES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIifES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.as = load i32, ptr %2, align 4, !tbaa !28, !noalias !63
  store i32 %i.as, ptr %i.p, align 4, !tbaa !16, !noalias !63
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !31, !noalias !63
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store float %i.au, ptr %i.av, align 4, !tbaa !17, !noalias !63
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE18priv_insert_commitIS4_EENS0_12vec_iteratorIPS4_Lb0EEERNSC_18insert_commit_dataEOT_.exit

bb.h:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.p, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %2)
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE18priv_insert_commitIS4_EENS0_12vec_iteratorIPS4_Lb0EEERNSC_18insert_commit_dataEOT_.exit

bb.i:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE26priv_insert_unique_prepareIiEEbRKT_RNSC_18insert_commit_dataE.exit
  %i.aw = ptrtoint ptr %i.p to i64
  %i.ax = ptrtoint ptr %i.c to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.c, i64 %i.ay
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE18priv_insert_commitIS4_EENS0_12vec_iteratorIPS4_Lb0EEERNSC_18insert_commit_dataEOT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE18priv_insert_commitIS4_EENS0_12vec_iteratorIPS4_Lb0EEERNSC_18insert_commit_dataEOT_.exit: ; preds = %bb.e, %_ZN5boost9container15move_backward_nIPSt4pairIifES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, %bb.h, %bb.i
  %i.ba = phi ptr [ %.pre, %bb.h ], [ %i.az, %bb.i ], [ %i.p, %_ZN5boost9container15move_backward_nIPSt4pairIifES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i ], [ %i.p, %bb.e ]
  store ptr %i.ba, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65   ; 2 uses
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
  br label %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !30

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.r = shl nuw i64 %i.o, 3
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.r, i64 noundef 4), !inline_history !64 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 6 uses
  %i.y = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = icmp ne ptr %i.x, %2
  %i.ae = icmp ne ptr %i.v, null
  %or.cond.i.i.i.i = and i1 %i.ae, %i.ad
  %i.af = icmp ne ptr %i.x, null
  %spec.select.i.i.i.i = and i1 %i.af, %or.cond.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i, !prof !66

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 4 %i.x, i64 %i.aa, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.aa
  br label %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.v, %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.ah = load i32, ptr %4, align 4, !tbaa !28
  store i32 %i.ah, ptr %.0.i.i.i.i, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.aj = load float, ptr %5, align 4, !tbaa !31
  store float %i.aj, ptr %i.ai, align 4, !tbaa !31
  %i.ak = icmp ne ptr %2, %i.ac
  %i.al = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.al, %i.ak
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, !prof !66

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = sub i64 %i.an, %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 4 %2, i64 %i.ao, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit.i.i
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS6_JS3_EEEEEvPS3_mSC_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ar = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.as = shl i64 %i.aq, 3
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.ap, i64 noundef %i.as, i64 noundef 4)
          to label %_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS6_JS3_EEEEEvPS3_mSC_mT_.exit unwind label %bb.j, !inline_history !0

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #15
  unreachable

_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS6_JS3_EEEEEvPS3_mSC_mT_.exit: ; preds = %bb.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorISt4pairIifEEEPS5_S7_NS0_3dtl20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !25
  %.pn = load i64, ptr %i.d, align 8, !tbaa !65
  %storemerge = add i64 %.pn, %3
  store i64 %storemerge, ptr %i.d, align 8, !tbaa !65
  store i64 %i.o, ptr %i.a, align 8, !tbaa !67
  %i.ay = getelementptr inbounds i8, ptr %i.v, i64 %i.aa
  store ptr %i.ay, ptr %0, align 8, !tbaa !32
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
  store ptr %0, ptr %i.b, align 8, !tbaa !36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !24
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.1, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN5boost9container3pmr15memory_resourceE", !10, i64 0}
!12 = !{!"_ZTSN5boost9container3pmr21polymorphic_allocatorISt4pairIifEEE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"float", !6, i64 0}
!15 = !{!"_ZTSSt4pairIifE", !7, i64 0, !14, i64 4}
!16 = !{!15, !7, i64 0}
!17 = !{!15, !14, i64 4}
!18 = !{!"p1 _ZTSSt4pairIifE", !10, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIifEEEmNS_11move_detail17integral_constantIjLj1EEEEE", !12, i64 0, !18, i64 8, !19, i64 16, !19, i64 24}
!21 = !{!20, !19, i64 24}
!22 = !{!18, !18, i64 0}
!23 = !{!"vtable pointer", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!20, !18, i64 8}
!26 = !{!"_ZTSN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvEE", !20, i64 0}
!27 = !{!26, !19, i64 16}
!28 = !{!7, !7, i64 0}
!29 = !{!"_ZTSN5boost9container12vec_iteratorIPSt4pairIifELb0EEE", !18, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!14, !14, i64 0}
!32 = !{!29, !18, i64 0}
!33 = !{!"_ZTSSt9exception"}
!34 = !{!"p1 omnipotent char", !10, i64 0}
!35 = !{!"_ZTSN5boost9container9exceptionE", !33, i64 0, !34, i64 8}
!36 = !{!35, !34, i64 8}
!37 = distinct !{!37, !"_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE6cbeginEv"}
!38 = distinct !{!38, !37, !"_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE6cbeginEv: argument 0"}
!39 = distinct !{!39, !"_ZNK5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE5beginEv"}
!40 = distinct !{!40, !39, !"_ZNK5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE5beginEv: argument 0"}
!41 = distinct !{!41, !"_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE4cendEv"}
!42 = distinct !{!42, !41, !"_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE4cendEv: argument 0"}
!43 = distinct !{!43, !"_ZNK5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE3endEv"}
!44 = distinct !{!44, !43, !"_ZNK5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE3endEv: argument 0"}
!45 = distinct !{!45, !"_ZNK5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE4cendEv"}
!46 = distinct !{!46, !45, !"_ZNK5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE4cendEv: argument 0"}
!47 = distinct !{!47, !"_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SH_SH_RKT0_"}
!48 = distinct !{!48, !47, !"_ZNK5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SH_SH_RKT0_: argument 0"}
!49 = distinct !{!49, !59}
!50 = distinct !{!50, !"_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE18priv_insert_commitIS4_EENS0_12vec_iteratorIPS4_Lb0EEERNSC_18insert_commit_dataEOT_"}
!51 = distinct !{!51, !50, !"_ZN5boost9container3dtl9flat_treeISt4pairIifENS1_9select1stIiEESt4lessIiENS0_3pmr21polymorphic_allocatorIS4_EEE18priv_insert_commitIS4_EENS0_12vec_iteratorIPS4_Lb0EEERNSC_18insert_commit_dataEOT_: argument 0"}
!52 = distinct !{!52, !"_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENS9_ISA_Lb1EEEDpOT_"}
!53 = distinct !{!53, !52, !"_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENS9_ISA_Lb1EEEDpOT_: argument 0"}
!54 = distinct !{!54, !"_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSD_mT_"}
!55 = distinct !{!55, !54, !"_ZN5boost9container6vectorISt4pairIifENS0_3pmr21polymorphic_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSD_mT_: argument 0"}
!56 = !{!40, !38}
!57 = !{!46, !44, !42}
!58 = !{!48}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"bool", !6, i64 0}
!61 = !{!"_ZTSSt4pairIN5boost9container12vec_iteratorIPS_IifELb0EEEbE", !29, i64 0, !60, i64 8}
!62 = !{!61, !60, i64 8}
!63 = !{!55, !53, !51}
!64 = distinct !{null, null, null, null}
!65 = !{!20, !19, i64 16}
!66 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!67 = !{!19, !19, i64 0}
end_hunk_0
