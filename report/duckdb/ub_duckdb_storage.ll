inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6duckdb14BlockAllocatorC2ERNS_9AllocatorEmmm:bb.a
  store ptr %i.p, ptr %i.o, align 8, !tbaa !1203, !alias.scope !1200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.s = invoke noalias noundef nonnull dereferenceable(616) ptr @_Znwm(i64 noundef 616) #46
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb16make_unsafe_uniqINS_10BlockQueueEJEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(616) %i.s, i8 0, i64 616, i1 false), !noalias !1204
  invoke void @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEEC2Em(ptr noundef nonnull align 8 dereferenceable(616) %i.s, i64 noundef 192)
          to label %bb.d unwind label %bb.c, !noalias !1204

bb.c:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #44, !noalias !1204
  br label %.body

bb.d:                                             ; preds = %.noexc
  store ptr %i.s, ptr %i.r, align 8, !tbaa !1203, !alias.scope !1204
  invoke void @_ZN6duckdb14BlockAllocator6ResizeEm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %_ZN6duckdb16make_unsafe_uniqINS_10BlockQueueEJEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #23
  br label %.body

.body:                                            ; preds = %bb.f, %bb.c, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ], [ %i.t, %bb.c ]
  tail call void @_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #23
  br label %common.resume
}

declare { i64, i64 } @_ZN6duckdb4UUID18GenerateRandomUUIDEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14BlockAllocator6ResizeEm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.b = alloca [2048 x i32], align 16            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %.not56 = icmp eq ptr %i.f, null
  br i1 %.not56, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1199
  %i.i = tail call ptr @mmap(ptr noundef null, i64 noundef %i.h, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #23 ; 2 uses
  %i.j = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  %spec.select.i = select i1 %i.j, ptr null, ptr %i.i
  store atomic ptr %spec.select.i, ptr %i.e seq_cst, align 8
  %i.k = load atomic ptr, ptr %i.e monotonic, align 8
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.m = load atomic i64, ptr %i.l seq_cst, align 8
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.p = load atomic i64, ptr %i.l seq_cst, align 8
  store i64 %i.p, ptr %i.a, align 8, !tbaa !70
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.y unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.031 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.s = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.s) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.031, label %bb.j, label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.031, label %bb.j, label %bb.x

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4152 = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #23
  br label %bb.x

bb.k:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1199
  %i.x = icmp ugt i64 %1, %i.w
  br i1 %i.x, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.y unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.029 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ab) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.029, label %bb.p, label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.029, label %bb.p, label %bb.x

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn3955 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ]
  call void @__cxa_free_exception(ptr %i.y) #23
  br label %bb.x

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ae = load atomic i64, ptr %i.l seq_cst, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1198
  %i.ah = lshr i64 %i.ae, %i.ag
  %i.ai = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ah)
          to label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit unwind label %bb.r ; 2 uses

_ZN6duckdb11NumericCastIjmvEET_T0_.exit:          ; preds = %bb.q
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !1198
  %i.ak = lshr i64 %1, %i.aj
  %i.al = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ak)
          to label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit47.preheader unwind label %bb.s ; 3 uses

_ZN6duckdb11NumericCastIjmvEET_T0_.exit47.preheader: ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit
  %i.am = icmp ult i32 %i.ai, %i.al
  br i1 %i.am, label %.lr.ph60, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit47._crit_edge

.lr.ph60:                                         ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit47.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.lr.ph.preheader

_ZN6duckdb11NumericCastIjmvEET_T0_.exit47._crit_edge: ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIPjEEbT_m.exit, %_ZN6duckdb11NumericCastIjmvEET_T0_.exit47.preheader
  store atomic i64 %1, ptr %i.l seq_cst, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.s:                                             ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph.preheader:                                 ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIPjEEbT_m.exit, %.lr.ph60
  %.02359 = phi i32 [ %i.ai, %.lr.ph60 ], [ %i.bg, %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIPjEEbT_m.exit ] ; 4 uses
  %i.aq = sub nuw i32 %i.al, %.02359              ; 2 uses
  %i.ar = call i32 @llvm.umin.i32(i32 %i.aq, i32 2048)
  %i.as = zext nneg i32 %i.ar to i64              ; 4 uses
  %min.iters.check = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.as, 4088                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.02359, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.at = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %i.at, ptr %i.au, align 16, !tbaa !3
  store <4 x i32> %.reass, ptr %i.av, align 16, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.as
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader70

.lr.ph.preheader70:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !1203
  %i.ay = invoke noundef ptr @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %i.ax)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %._crit_edge
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIPjEEbT_m.exit, label %bb.t

bb.t:                                             ; preds = %.noexc
  %i.ba = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer12enqueue_bulkILNS2_14AllocationModeE0EPjEEbT0_m(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, ptr noundef nonnull %i.b, i64 noundef %i.as)
          to label %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIPjEEbT_m.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.preheader70, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader70 ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = add i32 %.02359, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.as
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !1208

_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIPjEEbT_m.exit: ; preds = %.noexc, %bb.t
  %i.bg = add i32 %.02359, 2048                   ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %i.al
  br i1 %i.bh, label %.lr.ph.preheader, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit47._crit_edge, !llvm.loop !1209

bb.v:                                             ; preds = %bb.d, %_ZN6duckdb11NumericCastIjmvEET_T0_.exit47._crit_edge
  %i.bi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23 ; 0 uses
  ret void

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.bb, %bb.u ], [ %i.ap, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %bb.w
  %.pn41.pn = phi { ptr, i32 } [ %.pn4152, %bb.j ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn3955, %bb.p ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn.pn, %bb.w ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23 ; 0 uses
  resume { ptr, i32 } %.pn41.pn

bb.y:                                             ; preds = %bb.n, %bb.h
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1203   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(616) %i.a) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #44
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14BlockAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %.b.i = load i1, ptr @_ZGVZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorEE11local_state, align 1
  br i1 %.b.i, label %bb.c, label %bb.b, !prof !1181

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb30BlockAllocatorThreadLocalStateC2ERKNS_14BlockAllocatorE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorEE11local_state, ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.b
  %i.a = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN6duckdb30BlockAllocatorThreadLocalStateD2Ev, ptr nonnull @_ZZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorEE11local_state, ptr nonnull @__dso_handle) #23 ; 0 uses
  store i1 true, ptr @_ZGVZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorEE11local_state, align 1
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorEE11local_state) ; 3 uses
  %i.c = invoke noundef zeroext i1 @_ZNK6duckdb9hugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %.noexc2 unwind label %bb.m

.noexc2:                                          ; preds = %bb.c
  br i1 %i.c, label %bb.d, label %_ZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorE.exit

bb.d:                                             ; preds = %.noexc2
  invoke void @_ZN6duckdb30BlockAllocatorThreadLocalState10InitializeERKNS_14BlockAllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %_ZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorE.exit unwind label %bb.m

_ZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorE.exit: ; preds = %.noexc2, %bb.d
  invoke void @_ZN6duckdb30BlockAllocatorThreadLocalState5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorE.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN6duckdbL17FreeVirtualMemoryEPhm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1199
  %i.i = tail call i32 @munmap(ptr noundef %i.f, i64 noundef %i.h) #23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN6duckdbL17FreeVirtualMemoryEPhm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.233, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.l unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.n) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.k, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.k, label %.body

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn11.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #23
  br label %.body

bb.l:                                             ; preds = %bb.i
  unreachable

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn11.i, %bb.k ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.q = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.r = call ptr @__cxa_begin_catch(ptr %i.q) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN6duckdbL17FreeVirtualMemoryEPhm.exit unwind label %bb.m

_ZN6duckdbL17FreeVirtualMemoryEPhm.exit:          ; preds = %bb.f, %.body, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1203 ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit.i: ; preds = %_ZN6duckdbL17FreeVirtualMemoryEPhm.exit
  call void @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(616) %i.t) #23
  call void @_ZdlPv(ptr noundef nonnull %i.t) #44
  br label %_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdbL17FreeVirtualMemoryEPhm.exit, %_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1203 ; 3 uses
  %.not.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev.exit6, label %_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit.i5

_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit.i5: ; preds = %_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(616) %i.v) #23
  call void @_ZdlPv(ptr noundef nonnull %i.v) #44
  br label %_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev.exit6

_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev.exit6: ; preds = %_ZNSt10unique_ptrIN6duckdb10BlockQueueESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10BlockQueueEEclEPS1_.exit.i5
  ret void

bb.m:                                             ; preds = %bb.d, %bb.c, %bb.b, %.body, %_ZN6duckdb33GetBlockAllocatorThreadLocalStateERKNS_14BlockAllocatorE.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #45
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb30BlockAllocatorThreadLocalState5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1210
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1210
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN6duckdb6vectorIjLb1ESaIjEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrIKNS_14BlockAllocatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1211
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1203
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !1210 ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !1213
  %i.l = tail call noundef ptr @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %i.i) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
end_hunk_0
begin_hunk_1_@_ZN6duckdb17SerializationData5UnsetIKNS_15CompressionInfoEEEvv:bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_15CompressionInfoEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !4880 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.m
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_15CompressionInfoEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -8
  br label %_ZNSt5stackISt17reference_wrapperIKN6duckdb15CompressionInfoEESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.j:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_15CompressionInfoEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4050
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !4031
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !4028 ; 3 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !4032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.s, ptr %i.t, align 8, !tbaa !4033
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 504
  br label %_ZNSt5stackISt17reference_wrapperIKN6duckdb15CompressionInfoEESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5stackISt17reference_wrapperIKN6duckdb15CompressionInfoEESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi ptr [ %i.n, %bb.i ], [ %i.u, %bb.j ]
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !3839
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17SerializationData5UnsetINS_16DatabaseInstanceEEEvv(ptr noundef nonnull align 8 dereferenceable(616) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1252 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1252
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperINS_16DatabaseInstanceEEEEvRKSt5stackIT_St5dequeIS6_SaIS6_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.328, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperINS_16DatabaseInstanceEEEEvRKSt5stackIT_St5dequeIS6_SaIS6_EEE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !4881 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.m
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperINS_16DatabaseInstanceEEEEvRKSt5stackIT_St5dequeIS6_SaIS6_EEE.exit
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -8
  br label %_ZNSt5stackISt17reference_wrapperIN6duckdb16DatabaseInstanceEESt5dequeIS3_SaIS3_EEE3popEv.exit

bb.j:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperINS_16DatabaseInstanceEEEEvRKSt5stackIT_St5dequeIS6_SaIS6_EEE.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3988
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !1257
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1258 ; 3 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !1253
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.s, ptr %i.t, align 8, !tbaa !4004
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 504
  br label %_ZNSt5stackISt17reference_wrapperIN6duckdb16DatabaseInstanceEESt5dequeIS3_SaIS3_EEE3popEv.exit

_ZNSt5stackISt17reference_wrapperIN6duckdb16DatabaseInstanceEESt5dequeIS3_SaIS3_EEE3popEv.exit: ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi ptr [ %i.n, %bb.i ], [ %i.u, %bb.j ]
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !3837
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #42

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #43

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { builtin nounwind }
attributes #45 = { noreturn nounwind }
attributes #46 = { builtin allocsize(0) }
attributes #47 = { noreturn }
attributes #48 = { nounwind willreturn memory(read) }
attributes #49 = { nounwind willreturn memory(none) }
attributes #50 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !14, i64 24}
!8 = !{!"_ZTSN6duckdb10ArenaChunkE", !9, i64 0, !14, i64 24, !14, i64 32, !15, i64 40, !22, i64 48}
!9 = !{!"_ZTSN6duckdb13AllocatedDataE", !10, i64 0, !13, i64 8, !14, i64 16}
!10 = !{!"_ZTSN6duckdb12optional_ptrINS_9AllocatorELb1EEE", !11, i64 0}
!11 = !{!"p1 _ZTSN6duckdb9AllocatorE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEE", !16, i64 0}
!16 = !{!"_ZTSSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EE", !17, i64 0}
!17 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10ArenaChunkESt14default_deleteIS1_ELb1ELb1EE", !18, i64 0}
!18 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10ArenaChunkESt14default_deleteIS1_EE", !19, i64 0}
!19 = !{!"_ZTSSt5tupleIJPN6duckdb10ArenaChunkESt14default_deleteIS1_EEE", !20, i64 0}
!20 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10ArenaChunkESt14default_deleteIS1_EEE", !21, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10ArenaChunkELb0EE", !22, i64 0}
!22 = !{!"p1 _ZTSN6duckdb10ArenaChunkE", !12, i64 0}
!23 = !{!8, !14, i64 32}
!24 = !{!22, !22, i64 0}
!25 = distinct !{null, null}
!26 = distinct !{null, null, null, null, null, null}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!11, !11, i64 0}
!30 = !{!31, !14, i64 8}
!31 = !{!"_ZTSN6duckdb14ArenaAllocatorE", !11, i64 0, !14, i64 8, !15, i64 16, !22, i64 24, !32, i64 32, !14, i64 64}
!32 = !{!"_ZTSN6duckdb9AllocatorE", !12, i64 0, !12, i64 8, !12, i64 16, !33, i64 24}
!33 = !{!"_ZTSN6duckdb10unique_ptrINS_20PrivateAllocatorDataESt14default_deleteIS1_ELb1EEE", !34, i64 0}
!34 = !{!"_ZTSSt10unique_ptrIN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_EE", !35, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_ELb1ELb1EE", !36, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_EE", !37, i64 0}
!37 = !{!"_ZTSSt5tupleIJPN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_EEE", !38, i64 0}
!38 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_EEE", !39, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb20PrivateAllocatorDataELb0EE", !40, i64 0}
!40 = !{!"p1 _ZTSN6duckdb20PrivateAllocatorDataE", !12, i64 0}
!41 = !{!21, !22, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN6duckdb9make_uniqINS_18ArenaAllocatorDataEJRNS_14ArenaAllocatorEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!44 = distinct !{!44, !"_ZN6duckdb9make_uniqINS_18ArenaAllocatorDataEJRNS_14ArenaAllocatorEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !6, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTSN6duckdb14ArenaAllocatorE", !12, i64 0}
!49 = !{!50, !51, i64 8}
!50 = !{!"_ZTSN6duckdb20PrivateAllocatorDataE", !51, i64 8, !52, i64 16}
!51 = !{!"_ZTSN6duckdb17AllocatorFreeTypeE", !5, i64 0}
!52 = !{!"_ZTSN6duckdb10unique_ptrINS_18AllocatorDebugInfoESt14default_deleteIS1_ELb1EEE", !53, i64 0}
!53 = !{!"_ZTSSt10unique_ptrIN6duckdb18AllocatorDebugInfoESt14default_deleteIS1_EE", !54, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb18AllocatorDebugInfoESt14default_deleteIS1_ELb1ELb1EE", !55, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb18AllocatorDebugInfoESt14default_deleteIS1_EE", !56, i64 0}
!56 = !{!"_ZTSSt5tupleIJPN6duckdb18AllocatorDebugInfoESt14default_deleteIS1_EEE", !57, i64 0}
!57 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb18AllocatorDebugInfoESt14default_deleteIS1_EEE", !58, i64 0}
!58 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb18AllocatorDebugInfoELb0EE", !59, i64 0}
!59 = !{!"p1 _ZTSN6duckdb18AllocatorDebugInfoE", !12, i64 0}
!60 = !{!39, !40, i64 0}
!61 = !{!40, !40, i64 0}
!62 = distinct !{null, null}
!63 = !{!31, !14, i64 64}
!64 = !{!31, !22, i64 24}
!65 = !{!66, !48, i64 24}
!66 = !{!"_ZTSN6duckdb18ArenaAllocatorDataE", !50, i64 0, !48, i64 24}
!67 = !{}
!68 = !{i64 8}
!69 = !{!9, !13, i64 8}
!70 = !{!14, !14, i64 0}
!71 = distinct !{!71, !28}
!72 = !{!31, !11, i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN6duckdb16make_unsafe_uniqINS_10ArenaChunkEJRNS_9AllocatorERmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_: argument 0"}
!75 = distinct !{!75, !"_ZN6duckdb16make_unsafe_uniqINS_10ArenaChunkEJRNS_9AllocatorERmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_"}
!76 = !{!8, !22, i64 48}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28}
!79 = !{!80, !80, i64 0}
!80 = !{!"p1 _ZTSN6duckdb13BufferManagerE", !12, i64 0}
!81 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!82 = !{!83, !13, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !84, i64 0, !14, i64 8, !5, i64 16}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!85 = !{!86, !138, i64 256}
!86 = !{!"_ZTSN6duckdb16AttachedDatabaseE", !87, i64 0, !132, i64 240, !138, i64 256, !139, i64 264, !147, i64 272, !155, i64 280, !163, i64 288, !171, i64 296, !172, i64 304, !173, i64 312, !175, i64 320, !176, i64 324, !91, i64 328, !91, i64 329, !177, i64 336, !181, i64 352}
!87 = !{!"_ZTSN6duckdb12CatalogEntryE", !14, i64 8, !88, i64 16, !89, i64 24, !83, i64 32, !91, i64 64, !91, i64 65, !91, i64 66, !92, i64 72, !94, i64 80, !108, i64 144, !123, i64 224, !131, i64 232}
!88 = !{!"_ZTSN6duckdb11CatalogTypeE", !5, i64 0}
!89 = !{!"_ZTSN6duckdb12optional_ptrINS_10CatalogSetELb1EEE", !90, i64 0}
!90 = !{!"p1 _ZTSN6duckdb10CatalogSetE", !12, i64 0}
!91 = !{!"bool", !5, i64 0}
!92 = !{!"_ZTSSt6atomicImE", !93, i64 0}
!93 = !{!"_ZTSSt13__atomic_baseImE", !14, i64 0}
!94 = !{!"_ZTSN6duckdb5ValueE", !95, i64 0, !91, i64 24, !5, i64 32, !104, i64 48}
!95 = !{!"_ZTSN6duckdb11LogicalTypeE", !96, i64 0, !97, i64 1, !98, i64 8}
!96 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!97 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!98 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !99, i64 0}
!99 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !100, i64 0}
!100 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !101, i64 0, !102, i64 8}
!101 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !12, i64 0}
!102 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !103, i64 0}
!103 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!104 = !{!"_ZTSN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EEE", !105, i64 0}
!105 = !{!"_ZTSSt10shared_ptrIN6duckdb14ExtraValueInfoEE", !106, i64 0}
!106 = !{!"_ZTSSt12__shared_ptrIN6duckdb14ExtraValueInfoELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !102, i64 8}
!107 = !{!"p1 _ZTSN6duckdb14ExtraValueInfoE", !12, i64 0}
!108 = !{!"_ZTSN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !109, i64 0, !115, i64 24}
!109 = !{!"_ZTSN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb1ESaIS8_EEE", !110, i64 0}
!110 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !111, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!114 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !12, i64 0}
!115 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEE", !116, i64 0}
!116 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !117, i64 0, !14, i64 8, !119, i64 16, !14, i64 24, !121, i64 32, !120, i64 48}
!117 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !118, i64 0}
!118 = !{!"any p2 pointer", !12, i64 0}
!119 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !120, i64 0}
!120 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!121 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !122, i64 0, !14, i64 8}
!122 = !{!"float", !5, i64 0}
!123 = !{!"_ZTSN6duckdb10unique_ptrINS_12CatalogEntryESt14default_deleteIS1_ELb1EEE", !124, i64 0}
!124 = !{!"_ZTSSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EE", !125, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12CatalogEntryESt14default_deleteIS1_ELb1ELb1EE", !126, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12CatalogEntryESt14default_deleteIS1_EE", !127, i64 0}
!127 = !{!"_ZTSSt5tupleIJPN6duckdb12CatalogEntryESt14default_deleteIS1_EEE", !128, i64 0}
!128 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12CatalogEntryESt14default_deleteIS1_EEE", !129, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12CatalogEntryELb0EE", !130, i64 0}
!130 = !{!"p1 _ZTSN6duckdb12CatalogEntryE", !12, i64 0}
!131 = !{!"_ZTSN6duckdb12optional_ptrINS_12CatalogEntryELb1EEE", !130, i64 0}
!132 = !{!"_ZTSN6duckdb23enable_shared_from_thisINS_16AttachedDatabaseEEE", !133, i64 0}
!133 = !{!"_ZTSN6duckdb8weak_ptrINS_16AttachedDatabaseELb1EEE", !134, i64 0}
!134 = !{!"_ZTSSt8weak_ptrIN6duckdb16AttachedDatabaseEE", !135, i64 0}
!135 = !{!"_ZTSSt10__weak_ptrIN6duckdb16AttachedDatabaseELN9__gnu_cxx12_Lock_policyE2EE", !136, i64 0, !137, i64 8}
!136 = !{!"p1 _ZTSN6duckdb16AttachedDatabaseE", !12, i64 0}
!137 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !103, i64 0}
!138 = !{!"p1 _ZTSN6duckdb16DatabaseInstanceE", !12, i64 0}
!139 = !{!"_ZTSN6duckdb10unique_ptrINS_18StoredDatabasePathESt14default_deleteIS1_ELb1EEE", !140, i64 0}
!140 = !{!"_ZTSSt10unique_ptrIN6duckdb18StoredDatabasePathESt14default_deleteIS1_EE", !141, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb18StoredDatabasePathESt14default_deleteIS1_ELb1ELb1EE", !142, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb18StoredDatabasePathESt14default_deleteIS1_EE", !143, i64 0}
!143 = !{!"_ZTSSt5tupleIJPN6duckdb18StoredDatabasePathESt14default_deleteIS1_EEE", !144, i64 0}
end_hunk_1
