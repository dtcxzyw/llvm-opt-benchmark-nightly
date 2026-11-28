Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_common_ivf_empty_index?download=true
inline.NumInlined: 806
inline.NumDeleted: 500
begin_hunk_0
@_ZTIN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE = linkonce_odr dso_local constant [78 x i8] c"N7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"IVF32,PQ8np\00", align 1
@_ZTIN5faiss5IndexE = external constant ptr
@_ZTIN5faiss8IndexIVFE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"ref_I[i]\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"new_I[i]\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN5faiss18ArrayInvertedListsE = external constant { [20 x ptr] }, align 8
@_ZTVN5faiss13InvertedListsE = external constant { [20 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTV24DispatchingInvertedLists = linkonce_odr dso_local constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI24DispatchingInvertedLists, ptr @_ZN5faiss13InvertedListsD2Ev, ptr @_ZN24DispatchingInvertedListsD0Ev, ptr @_ZNK24DispatchingInvertedLists9list_sizeEm, ptr @_ZNK24DispatchingInvertedLists9get_codesEm, ptr @_ZNK24DispatchingInvertedLists7get_idsEm, ptr @_ZNK5faiss13InvertedLists13release_codesEmPKh, ptr @_ZNK5faiss13InvertedLists11release_idsEmPKl, ptr @_ZNK5faiss13InvertedLists13get_single_idEmm, ptr @_ZNK5faiss13InvertedLists15get_single_codeEmm, ptr @_ZNK5faiss13InvertedLists14prefetch_listsEPKli, ptr @_ZNK5faiss13InvertedLists8is_emptyEmPv, ptr @_ZNK24DispatchingInvertedLists12get_iteratorEmPv, ptr @_ZN5faiss13InvertedLists9add_entryEmlPKhPv, ptr @_ZN5faiss21ReadOnlyInvertedLists11add_entriesEmmPKlPKh, ptr @_ZN5faiss13InvertedLists12update_entryEmmlPKh, ptr @_ZN5faiss21ReadOnlyInvertedLists14update_entriesEmmmPKlPKh, ptr @_ZN5faiss21ReadOnlyInvertedLists6resizeEmm, ptr @_ZN5faiss13InvertedLists5resetEv] }, comdat, align 8
@_ZTI24DispatchingInvertedLists = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24DispatchingInvertedLists, ptr @_ZTIN5faiss21ReadOnlyInvertedListsE }, comdat, align 8
@_ZTS24DispatchingInvertedLists = linkonce_odr dso_local constant [27 x i8] c"24DispatchingInvertedLists\00", comdat, align 1
@_ZTIN5faiss21ReadOnlyInvertedListsE = external constant ptr
@.str.15 = private unnamed_addr constant [23 x i8] c"use iterator interface\00", align 1
@__PRETTY_FUNCTION__._ZNK24DispatchingInvertedLists9list_sizeEm = private unnamed_addr constant [65 x i8] c"virtual size_t DispatchingInvertedLists::list_size(size_t) const\00", align 1
@_ZTIN5faiss14FaissExceptionE = external constant ptr
@_ZTVN5faiss14FaissExceptionE = external constant { [5 x ptr] }, align 8
@__PRETTY_FUNCTION__._ZNK24DispatchingInvertedLists9get_codesEm = private unnamed_addr constant [73 x i8] c"virtual const uint8_t *DispatchingInvertedLists::get_codes(size_t) const\00", align 1
@__PRETTY_FUNCTION__._ZNK24DispatchingInvertedLists7get_idsEm = private unnamed_addr constant [69 x i8] c"virtual const idx_t *DispatchingInvertedLists::get_ids(size_t) const\00", align 1
@_ZTVN5faiss19SearchParametersIVFE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5faiss19SearchParametersIVFE, ptr @_ZN5faiss16SearchParametersD2Ev, ptr @_ZN5faiss19SearchParametersIVFD0Ev] }, comdat, align 8
@_ZTIN5faiss19SearchParametersIVFE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5faiss19SearchParametersIVFE, ptr @_ZTIN5faiss16SearchParametersE }, comdat, align 8
@_ZTSN5faiss19SearchParametersIVFE = linkonce_odr dso_local constant [30 x i8] c"N5faiss19SearchParametersIVFE\00", comdat, align 1
@_ZTIN5faiss16SearchParametersE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5faiss16SearchParametersE }, comdat, align 8
@_ZTSN5faiss16SearchParametersE = linkonce_odr dso_local constant [27 x i8] c"N5faiss16SearchParametersE\00", comdat, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_common_ivf_empty_index.cpp, ptr null }]

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37COMMON_test_common_trained_index_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN37COMMON_test_common_trained_index_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %1 = alloca %"class.std::unique_ptr.6", align 8 ; 16 uses
  %2 = alloca %"class.std::vector.24", align 8    ; 8 uses
  %3 = alloca %"class.std::vector.14", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.37", align 8    ; 15 uses
  %5 = alloca %struct.DispatchingInvertedLists, align 8 ; 9 uses
  %6 = alloca %"class.std::vector.24", align 8    ; 13 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 3, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 10, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 4, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.d = tail call noundef ptr @_ZN5faiss13index_factoryEiPKcNS_10MetricTypeEb(i32 noundef 64, ptr noundef nonnull @.str.11, i32 noundef 1, i1 noundef zeroext true) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %i.d, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss8IndexIVFE, i64 0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  store ptr %i.g, ptr %1, align 8, !tbaa !18
  %i.h = invoke noalias noundef nonnull dereferenceable(128000) ptr @_Znwm(i64 noundef 128000) #26
          to label %.noexc unwind label %bb.h, !noalias !115 ; 6 uses

.noexc:                                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128000) %i.h, i8 0, i64 128000, i1 false)
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef 500, i64 noundef 64, ptr noundef nonnull %i.h, i64 noundef 123)
          to label %_Z18get_random_vectorsmi.exit unwind label %bb.d, !noalias !115

bb.d:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 128000) #25, !noalias !115
  br label %.body

_Z18get_random_vectorsmi.exit:                    ; preds = %.noexc
  %i.j = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(273) %i.j, i64 noundef 500, ptr noundef nonnull %i.h)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_Z18get_random_vectorsmi.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store i64 4, ptr %i.o, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.p = load i32, ptr %i.a, align 4, !tbaa !15   ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc71 unwind label %bb.j

.noexc71:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge.thread

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.s = mul nuw nsw i64 %i.q, 24                 ; 3 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #26
          to label %bb.g unwind label %bb.j       ; 8 uses

bb.g:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.t, ptr %2, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.t, i64 %i.s ; 4 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !15
  %i.v = icmp sgt i32 %.pre, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.u, ptr %i.x, align 8, !tbaa !34
  store ptr %scevgep.i.i.i.i.i, ptr %i.w, align 8, !tbaa !35
  br i1 %i.v, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

._crit_edge.thread:                               ; preds = %bb.g, %.thread
  %.ph = phi ptr [ null, %.thread ], [ %scevgep.i.i.i.i.i, %bb.g ]
  %.ph379 = phi ptr [ null, %.thread ], [ %i.u, %bb.g ]
  %.pr.i161378.ph = phi ptr [ null, %.thread ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge273

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %i.aa = icmp sgt i32 %i.cs, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %i.aa, label %.lr.ph272, label %._crit_edge273

.lr.ph272:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_Z18get_random_vectorsmi.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit169

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.k:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !18
  %i.ah = invoke noundef ptr @_ZN5faiss11clone_indexEPKNS_5IndexE(ptr noundef %i.ag)
          to label %bb.l unwind label %bb.x       ; 9 uses

bb.l:                                             ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull dereferenceable(51200) ptr @_Znwm(i64 noundef 51200) #26
          to label %.noexc74 unwind label %bb.y, !noalias !116 ; 6 uses

.noexc74:                                         ; preds = %bb.l
  %i.aj = add nuw nsw i64 %indvars.iv, 1234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(51200) %i.ai, i8 0, i64 51200, i1 false)
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef 200, i64 noundef 64, ptr noundef nonnull %i.ai, i64 noundef %i.aj)
          to label %_Z18get_random_vectorsmi.exit77 unwind label %10, !noalias !116

10:                                               ; preds = %.noexc74
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 51200) #25, !noalias !116
  br label %.body75

_Z18get_random_vectorsmi.exit77:                  ; preds = %.noexc74
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = add nuw nsw i64 %indvars.iv, 12345
  %i.an = shl nsw i64 %i.al, 6                    ; 2 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_Z18get_random_vectorsmi.exit77
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !117

.noexc79:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_Z18get_random_vectorsmi.exit77
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i, label %.noexc8.i

.noexc8.i:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ap = shl nuw nsw i64 %i.al, 8                ; 2 uses
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #26
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !117 ; 4 uses

.noexc80:                                         ; preds = %.noexc8.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !37, !noalias !117
  %i.as = getelementptr i8, ptr %i.aq, i64 4
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.ap, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !37, !noalias !117
  %i.at = ptrtoint ptr %i.ar to i64
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc80
  %.sroa.0183.0 = phi ptr [ %i.aq, %.noexc80 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 11 uses
  %.sroa.9187.0 = phi i64 [ %i.at, %.noexc80 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 3 uses
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef %i.al, i64 noundef 64, ptr noundef %.sroa.0183.0, i64 noundef %i.am)
          to label %_Z18get_random_vectorsmi.exit83 unwind label %bb.m, !noalias !117

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIfSaIfEED2Ev.exit104, label %12

12:                                               ; preds = %bb.m
  %13 = ptrtoint ptr %.sroa.0183.0 to i64
  %14 = sub i64 %.sroa.9187.0, %13
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0, i64 noundef %14) #25, !noalias !117
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit104

_Z18get_random_vectorsmi.exit83:                  ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ah, i64 noundef 200, ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %.loopexit.split-lp208.loopexit.split-lp

bb.n:                                             ; preds = %_Z18get_random_vectorsmi.exit83
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !15
  %i.az = load i32, ptr %i.b, align 4, !tbaa !15
  %i.ba = mul nsw i32 %i.az, %i.ay                ; 3 uses
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = icmp slt i32 %i.ba, 0
  br i1 %i.bc, label %bb.o, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc85 unwind label %.loopexit.split-lp208.loopexit.split-lp

.noexc85:                                         ; preds = %bb.o
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.n
  %.not.i.i.i.i84 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bd = shl nuw nsw i64 %i.bb, 2
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #26
          to label %.noexc86 unwind label %.loopexit.split-lp208.loopexit.split-lp ; 5 uses

.noexc86:                                         ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bb ; 2 uses
  store float 0.000000e+00, ptr %i.be, align 4, !tbaa !37
  %i.bg = add nsw i64 %i.bb, -1                   ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc86
  %i.bi = getelementptr i8, ptr %i.be, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !37
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc86, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0179.0 = phi ptr [ %i.be, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.be, %.noexc86 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.10.0 = phi ptr [ %i.bf, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bf, %.noexc86 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !15
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !15
  %i.bl = mul nsw i32 %i.bk, %i.bj                ; 3 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %i.bn = icmp slt i32 %i.bl, 0
  br i1 %i.bn, label %bb.q, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc90 unwind label %.loopexit.split-lp213.loopexit.split-lp

.noexc90:                                         ; preds = %bb.q
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i87 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i87, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bo = shl nuw nsw i64 %i.bm, 3
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #26
          to label %.noexc91 unwind label %.loopexit.split-lp213.loopexit.split-lp ; 6 uses

.noexc91:                                         ; preds = %bb.r
  store ptr %i.bp, ptr %3, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bm
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !41
  store i64 0, ptr %i.bp, align 8, !tbaa !42
  %i.br = getelementptr i8, ptr %i.bp, i64 8      ; 3 uses
  %i.bs = add nsw i64 %i.bm, -1                   ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc91
  %.idx.i.i.i.i.i.i.i88 = shl nuw nsw i64 %i.bs, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.br, i8 0, i64 %.idx.i.i.i.i.i.i.i88, i1 false), !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i88
  br label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc91
  %i.bv = phi ptr [ %i.bp, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bp, %.noexc91 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.0.i.i.i.i.i89 = phi ptr [ %i.bu, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.br, %.noexc91 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ]
  store ptr %.0.i.i.i.i.i89, ptr %i.z, align 8, !tbaa !43
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !15
  %i.bx = sext i32 %i.bw to i64
  %i.by = load i32, ptr %i.c, align 4, !tbaa !15
  %i.bz = sext i32 %i.by to i64
  %i.ca = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(36) %i.ah, i64 noundef %i.bx, ptr noundef %.sroa.0183.0, i64 noundef %i.bz, ptr noundef %.sroa.0179.0, ptr noundef %i.bv, ptr noundef null)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv
  %i.ce = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.z       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cf = load ptr, ptr %3, align 8, !tbaa !40    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.not.i.i.i92 = icmp eq ptr %.sroa.0179.0, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ck = ptrtoint ptr %.sroa.10.0 to i64
  %i.cl = ptrtoint ptr %.sroa.0179.0 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0, i64 noundef %i.cm) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.v
  %.not.i.i.i93 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not.i.i.i93, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.cn = ptrtoint ptr %.sroa.0183.0 to i64
  %i.co = sub i64 %.sroa.9187.0, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0, i64 noundef %i.co) #25
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 51200) #25
  %i.cp = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(36) %i.ah) #14, !inline_history !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !15  ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next, %i.ct
  br i1 %i.cu, label %bb.k, label %._crit_edge, !llvm.loop !103

bb.x:                                             ; preds = %bb.k
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit107

bb.y:                                             ; preds = %bb.l
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc8.i, %.noexc.i
  %lpad.loopexit.split-lp480 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit104

.loopexit.split-lp208.loopexit.split-lp:          ; preds = %_Z18get_random_vectorsmi.exit83, %bb.p, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

.loopexit.split-lp213.loopexit.split-lp:          ; preds = %bb.r, %bb.q
  %lpad.loopexit.split-lp484 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit98

bb.z:                                             ; preds = %bb.s, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %3, align 8, !tbaa !40    ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIlSaIlEED2Ev.exit98, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit98

_ZNSt6vectorIlSaIlEED2Ev.exit98:                  ; preds = %.loopexit.split-lp213.loopexit.split-lp, %bb.aa, %bb.z
  %.pn60 = phi { ptr, i32 } [ %i.cx, %bb.aa ], [ %i.cx, %bb.z ], [ %lpad.loopexit.split-lp484, %.loopexit.split-lp213.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.not.i.i.i99 = icmp eq ptr %.sroa.0179.0, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIfSaIfEED2Ev.exit100, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit98
  %i.dd = ptrtoint ptr %.sroa.10.0 to i64
  %i.de = ptrtoint ptr %.sroa.0179.0 to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0, i64 noundef %i.df) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

_ZNSt6vectorIfSaIfEED2Ev.exit100:                 ; preds = %.loopexit.split-lp208.loopexit.split-lp, %_ZNSt6vectorIlSaIlEED2Ev.exit98, %bb.ab
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60, %bb.ab ], [ %.pn60, %_ZNSt6vectorIlSaIlEED2Ev.exit98 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp208.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIfSaIfEED2Ev.exit104, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit100
  %i.dg = ptrtoint ptr %.sroa.0183.0 to i64
  %i.dh = sub i64 %.sroa.9187.0, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0, i64 noundef %i.dh) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit104

_ZNSt6vectorIfSaIfEED2Ev.exit104:                 ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ac, %_ZNSt6vectorIfSaIfEED2Ev.exit100, %12, %bb.m
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %.pn60.pn.pn, %bb.ac ], [ %i.au, %12 ], [ %.pn60.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit100 ], [ %lpad.loopexit.split-lp480, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 51200) #25
  br label %.body75

.body75:                                          ; preds = %bb.y, %10, %_ZNSt6vectorIfSaIfEED2Ev.exit104
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit104 ], [ %i.cw, %bb.y ], [ %11, %10 ] ; 2 uses
  %.not.i105 = icmp eq ptr %i.ah, null
  br i1 %.not.i105, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit107, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i106

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i106: ; preds = %.body75
  %i.di = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(36) %i.ah) #14, !inline_history !102
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit107

._crit_edge273:                                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit122, %._crit_edge.thread, %._crit_edge
  %.pr.i161378381 = phi ptr [ %.pr.i161378.ph, %._crit_edge.thread ], [ %i.t, %._crit_edge ], [ %i.t, %_ZNSt6vectorIfSaIfEED2Ev.exit122 ] ; 6 uses
  %i.dl = phi ptr [ %.ph379, %._crit_edge.thread ], [ %i.u, %._crit_edge ], [ %i.u, %_ZNSt6vectorIfSaIfEED2Ev.exit122 ]
  %i.dm = phi ptr [ %.ph, %._crit_edge.thread ], [ %scevgep.i.i.i.i.i, %._crit_edge ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit122 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.dn = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !118
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 168
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !132
  invoke void @_ZN5faiss13InvertedListsC2Emm(ptr noundef nonnull align 8 dereferenceable(25) %5, i64 noundef %i.dp, i64 noundef %i.dr)
          to label %bb.ak unwind label %bb.ao

bb.ad:                                            ; preds = %.lr.ph272, %_ZNSt6vectorIfSaIfEED2Ev.exit122
  %indvars.iv332 = phi i64 [ 0, %.lr.ph272 ], [ %indvars.iv.next333, %_ZNSt6vectorIfSaIfEED2Ev.exit122 ] ; 2 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 168 ; 2 uses
  %i.dv = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 3 uses
  %i.dw = load ptr, ptr %i.ac, align 8, !tbaa !51
  %.not.i109 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i109, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = load i64, ptr %i.dt, align 8, !tbaa !42
  %i.dy = load i64, ptr %i.du, align 8, !tbaa !42
  invoke void @_ZN5faiss18ArrayInvertedListsC1Emm(ptr noundef nonnull align 8 dereferenceable(80) %i.dv, i64 noundef %i.dx, i64 noundef %i.dy)
          to label %.noexc110 unwind label %bb.aj

.noexc110:                                        ; preds = %bb.ae
  %i.dz = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 80 ; 2 uses
  store ptr %i.ea, ptr %i.ab, align 8, !tbaa !50
  br label %_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %._ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit_crit_edge unwind label %bb.aj

._ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit_crit_edge: ; preds = %bb.af
  %.pre338 = load ptr, ptr %i.ab, align 8, !tbaa !133
  br label %_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit

_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit: ; preds = %._ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit_crit_edge, %.noexc110
  %i.eb = phi ptr [ %.pre338, %._ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit_crit_edge ], [ %i.ea, %.noexc110 ]
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -80
  %i.ed = load ptr, ptr %1, align 8, !tbaa !18
  invoke void @_ZN5faiss8IndexIVF16replace_invlistsEPNS_13InvertedListsEb(ptr noundef nonnull align 8 dereferenceable(273) %i.ed, ptr noundef nonnull %i.ec, i1 noundef zeroext false)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit
  %i.ee = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 112
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(273) %i.ee)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ei = invoke noalias noundef nonnull dereferenceable(51200) ptr @_Znwm(i64 noundef 51200) #26
          to label %.noexc117 unwind label %bb.aj, !noalias !134 ; 6 uses

.noexc117:                                        ; preds = %bb.ah
  %i.ej = add nuw nsw i64 %indvars.iv332, 1234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(51200) %i.ei, i8 0, i64 51200, i1 false)
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef 200, i64 noundef 64, ptr noundef nonnull %i.ei, i64 noundef %i.ej)
          to label %_Z18get_random_vectorsmi.exit120 unwind label %bb.ai, !noalias !134

bb.ai:                                            ; preds = %.noexc117
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 51200) #25, !noalias !134
  br label %.body118

_Z18get_random_vectorsmi.exit120:                 ; preds = %.noexc117
  %i.el = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !20
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(273) %i.el, i64 noundef 200, ptr noundef nonnull %i.ei)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit122 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit124

_ZNSt6vectorIfSaIfEED2Ev.exit122:                 ; preds = %_Z18get_random_vectorsmi.exit120
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 51200) #25
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !15
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next333, %i.eq
  br i1 %i.er, label %bb.ad, label %._crit_edge273, !llvm.loop !106

bb.aj:                                            ; preds = %_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit, %bb.ag, %bb.ae, %bb.af, %bb.ah
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body118

_ZNSt6vectorIfSaIfEED2Ev.exit124:                 ; preds = %_Z18get_random_vectorsmi.exit120
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 51200) #25
  br label %.body118

bb.ak:                                            ; preds = %._crit_edge273
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV24DispatchingInvertedLists, i64 16), ptr %5, align 8, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.eu, align 8, !tbaa !136
  %i.ev = load ptr, ptr %1, align 8, !tbaa !18
  invoke void @_ZN5faiss8IndexIVF16replace_invlistsEPNS_13InvertedListsEb(ptr noundef nonnull align 8 dereferenceable(273) %i.ev, ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ew = load i32, ptr %i.a, align 4, !tbaa !15  ; 3 uses
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = icmp slt i32 %i.ew, 0
  br i1 %i.ey, label %bb.am, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc132 unwind label %bb.aq

.noexc132:                                        ; preds = %bb.am
  unreachable

_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i125: ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i126 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.i.i126, label %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131, label %.lr.ph.preheader.i.i.i.i.i127

_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131: ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i125
  store i64 0, ptr %6, align 8
  br label %bb.an

.lr.ph.preheader.i.i.i.i.i127:                    ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i125
  %i.ez = mul nuw nsw i64 %i.ex, 24               ; 3 uses
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #26
          to label %.noexc133 unwind label %bb.aq ; 4 uses

.noexc133:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i127
  store ptr %i.fa, ptr %6, align 8, !tbaa !33
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %i.ex
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fa, i8 0, i64 %i.ez, i1 false)
  %scevgep.i.i.i.i.i128 = getelementptr i8, ptr %i.fa, i64 %i.ez
  br label %bb.an

bb.an:                                            ; preds = %.noexc133, %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131
  %.sink.i129 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131 ], [ %i.fb, %.noexc133 ]
  %.0.lcssa.i.i.i.i.i130 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131 ], [ %scevgep.i.i.i.i.i128, %.noexc133 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sink.i129, ptr %i.fd, align 8, !tbaa !34
  store ptr %.0.lcssa.i.i.i.i.i130, ptr %i.fc, align 8, !tbaa !35
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN37COMMON_test_common_trained_index_Test8TestBodyEv.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %4, ptr nonnull %6)
  %i.fe = load i32, ptr %i.a, align 4, !tbaa !15
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph276, label %.loopexit

.lr.ph276:                                        ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.ar

bb.ao:                                            ; preds = %._crit_edge273
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ap:                                            ; preds = %bb.ak
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.aq:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i127, %bb.am
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ar:                                            ; preds = %.lr.ph276, %bb.bf
  %indvars.iv335 = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next336, %bb.bf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %.pr.i161378381, i64 %indvars.iv335 ; 3 uses
  %i.fl = load ptr, ptr %6, align 8, !tbaa !33
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %indvars.iv335 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !43, !noalias !137 ; 2 uses
  %i.fp = load ptr, ptr %i.fk, align 8, !tbaa !40, !noalias !137 ; 3 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !43, !noalias !137
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !40, !noalias !137 ; 2 uses
end_hunk_0
