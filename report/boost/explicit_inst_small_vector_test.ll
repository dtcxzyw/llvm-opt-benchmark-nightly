Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_small_vector_test?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1057
loop-unroll.NumRuntimeUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5boost9container12small_vectorIiLm0EvvEC2EmRKi:bb.a
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !62
  store <4 x i32> %broadcast.splat, ptr %i.l, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.017.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i ], [ %i.h, %middle.block ]
  %.01416.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.preheader.i.i.i ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %.017.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.01416.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.01416.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.n = add i64 %.017.i.i.i, -1                  ; 2 uses
  store i32 %.pre.i.i.i, ptr %.01416.i.i.i, align 4, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 4
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !233

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container17small_vector_baseIivvEC2ENS0_24maybe_initial_capacity_tEmm.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8, !tbaa !60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorIiLm0EvvEC2EmRKiRKNS0_13new_allocatorIiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorIiLm0EvvEC5EmRKiRKNS0_13new_allocatorIiEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.not = icmp eq i64 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i.not, label %_ZN5boost9container17small_vector_baseIivvEC2IRKNS0_13new_allocatorIiEEEENS0_24maybe_initial_capacity_tEmmOT_.exit.thread, label %bb.b

_ZN5boost9container17small_vector_baseIivvEC2IRKNS0_13new_allocatorIiEEEENS0_24maybe_initial_capacity_tEmmOT_.exit.thread: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  store ptr %i.b, ptr %0, align 8, !tbaa !59
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !60
  store i64 %1, ptr %i.a, align 8, !tbaa !61
  %i.e = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.e, label %bb.c, label %.lr.ph.preheader.i.i.i, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.f = shl nuw nsw i64 %1, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !59
  store i64 %1, ptr %i.a, align 8, !tbaa !33
  %.pre.i.i.i = load i32, ptr %2, align 4, !tbaa !62 ; 2 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %i.h = and i64 %1, 7
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !62
  store <4 x i32> %broadcast.splat, ptr %i.l, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.017.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i ], [ %i.h, %middle.block ]
  %.01416.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.preheader.i.i.i ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %.017.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.01416.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.01416.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.n = add i64 %.017.i.i.i, -1                  ; 2 uses
  store i32 %.pre.i.i.i, ptr %.01416.i.i.i, align 4, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 4
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !235

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container17small_vector_baseIivvEC2IRKNS0_13new_allocatorIiEEEENS0_24maybe_initial_capacity_tEmmOT_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8, !tbaa !60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorIiLm0EvvEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorIiLm0EvvEC5ERKS2_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.31", align 8 ; 2 uses
  %3 = alloca %"class.boost::container::vec_iterator.31", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !59, !noalias !240 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !67, !alias.scope !240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69, !noalias !241
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.e
  store ptr %i.f, ptr %3, align 8, !tbaa !67, !alias.scope !241
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPiLb1EEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.k = icmp eq ptr %i.a, %i.j
  br i1 %i.k, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl i64 %i.i, 2
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #20
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPiLb1EEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !70     ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = shl i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !59
  store i64 %i.f, ptr %i.g, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !69
  %i.r = load ptr, ptr %1, align 8, !tbaa !70     ; 4 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.t = icmp ne ptr %i.r, %i.s
  %i.u = icmp ne ptr %i.r, null
  %spec.select.i.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 4 %i.r, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %.0.i.i.i = phi ptr [ %i.y, %bb.g ], [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ]
  %i.z = ptrtoint ptr %.0.i.i.i to i64
  %i.aa = ptrtoint ptr %i.k to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  store i64 %i.ac, ptr %i.q, align 8, !tbaa !60
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !59    ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69 ; 6 uses
  %i.ag = icmp ult i64 %i.af, %i.f
  br i1 %i.ag, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp ne ptr %i.ad, null
  %i.ai = icmp ne ptr %i.a, null
  %or.cond.i.i.i13 = and i1 %i.ai, %i.ah
  br i1 %or.cond.i.i.i13, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = shl i64 %i.af, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.a, i64 %i.aj, i1 false), !noalias !246
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.af
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  br label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i

_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.ad, %bb.j ], [ %i.al, %bb.m ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.j ], [ %i.ak, %bb.m ] ; 2 uses
  %i.am = icmp ne ptr %.0.i, null
  %i.an = icmp ne ptr %.sroa.0.0.i.i, null
  %or.cond.i.i12.i = and i1 %i.am, %i.an
  br i1 %or.cond.i.i12.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %i.ao = sub nuw i64 %i.f, %i.af
  %i.ap = shl i64 %i.ao, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.sroa.0.0.i.i, i64 %i.ap, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i13.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i13.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !32

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp ne ptr %i.ad, null
  %i.ar = icmp ne ptr %i.a, null
  %or.cond.i.i14.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i14.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.a, i64 %i.e, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.f, ptr %i.ae, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorIiLm0EvvEC2ERKS2_RKNS0_13new_allocatorIiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorIiLm0EvvEC5ERKS2_RKNS0_13new_allocatorIiEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.31", align 8 ; 2 uses
  %4 = alloca %"class.boost::container::vec_iterator.31", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !59, !noalias !251 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !67, !alias.scope !251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69, !noalias !252
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.e
  store ptr %i.f, ptr %4, align 8, !tbaa !67, !alias.scope !252
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPiLb1EEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.k = icmp eq ptr %i.a, %i.j
  br i1 %i.k, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl i64 %i.i, 2
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #20
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorIiLm0EvvEC2ERKNS0_17small_vector_baseIivvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorIiLm0EvvEC5ERKNS0_17small_vector_baseIivvEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.31", align 8 ; 2 uses
  %3 = alloca %"class.boost::container::vec_iterator.31", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !59, !noalias !257 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !67, !alias.scope !257
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69, !noalias !258
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.e
  store ptr %i.f, ptr %3, align 8, !tbaa !67, !alias.scope !258
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPiLb1EEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.k = icmp eq ptr %i.a, %i.j
  br i1 %i.k, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl i64 %i.i, 2
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #20
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorIiLm0EvvEC2EONS0_17small_vector_baseIivvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorIiLm0EvvEC5EONS0_17small_vector_baseIivvEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8, !tbaa !33
  store <2 x i64> %i.f, ptr %i.b, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container17small_vector_baseIivvEC2INS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEEENS0_18initial_capacity_tEmOT_RS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.not.i, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.i = shl i64 %i.h, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %i.c, i64 %i.i, i1 false)
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %i.h, ptr %i.b, align 8, !tbaa !69
  store i64 0, ptr %i.g, align 8, !tbaa !69
  br label %_ZN5boost9container17small_vector_baseIivvEC2INS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEEENS0_18initial_capacity_tEmOT_RS2_.exit

_ZN5boost9container17small_vector_baseIivvEC2INS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEEENS0_18initial_capacity_tEmOT_RS2_.exit: ; preds = %bb.b, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorIiLm0EvvEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN5boost9container12small_vectorIiLm0EvvEC5EOS2_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8, !tbaa !33
  store <2 x i64> %i.f, ptr %i.b, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container17small_vector_baseIivvEC2INS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEEENS0_18initial_capacity_tEmOT_RS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.not.i, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.i = shl i64 %i.h, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %i.c, i64 %i.i, i1 false)
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %i.h, ptr %i.b, align 8, !tbaa !69
  store i64 0, ptr %i.g, align 8, !tbaa !69
  br label %_ZN5boost9container17small_vector_baseIivvEC2INS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEEENS0_18initial_capacity_tEmOT_RS2_.exit

_ZN5boost9container17small_vector_baseIivvEC2INS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEEENS0_18initial_capacity_tEmOT_RS2_.exit: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorIiLm0EvvEC2EOS2_RKNS0_13new_allocatorIiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorIiLm0EvvEC5EOS2_RKNS0_13new_allocatorIiEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8, !tbaa !33
  store <2 x i64> %i.f, ptr %i.b, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container17small_vector_baseIivvEC2IRKNS0_13new_allocatorIiEEEENS0_18initial_capacity_tEmOT_RS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.not.i, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.i = shl i64 %i.h, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %i.c, i64 %i.i, i1 false)
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %i.h, ptr %i.b, align 8, !tbaa !69
  store i64 0, ptr %i.g, align 8, !tbaa !69
  br label %_ZN5boost9container17small_vector_baseIivvEC2IRKNS0_13new_allocatorIiEEEENS0_18initial_capacity_tEmOT_RS2_.exit

_ZN5boost9container17small_vector_baseIivvEC2IRKNS0_13new_allocatorIiEEEENS0_18initial_capacity_tEmOT_RS2_.exit: ; preds = %bb.b, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorIiLm0EvvEC2ESt16initializer_listIiERKNS0_13new_allocatorIiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorIiLm0EvvEC5ESt16initializer_listIiERKNS0_13new_allocatorIiEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignIPKiEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.c, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.h = icmp eq ptr %i.a, %i.g
  br i1 %i.h, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.i) #20
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignIPKiEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !59
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !69
  %i.p = icmp ne ptr %1, %2
  %i.q = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.q, %i.p
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 4 %1, i64 %i.c, i1 false)
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %.0.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ]
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  store i64 %i.v, ptr %i.o, align 8, !tbaa !60
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !59     ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69   ; 6 uses
  %i.z = icmp ult i64 %i.y, %i.d
  br i1 %i.z, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ne ptr %i.w, null
  %i.ab = icmp ne ptr %1, null
  %or.cond.i.i.i18 = and i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i18, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = shl i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  br label %_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i

_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.w, %bb.j ], [ %i.ae, %bb.m ] ; 2 uses
  %.0.i.i.i19 = phi ptr [ %1, %bb.j ], [ %i.ad, %bb.m ] ; 2 uses
  %i.af = icmp ne ptr %.0.i, null
  %i.ag = icmp ne ptr %.0.i.i.i19, null
  %or.cond.i.i15.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i.i15.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPKiPiEEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %i.ah = sub nuw i64 %i.d, %i.y
  %i.ai = shl i64 %i.ah, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.0.i.i.i19, i64 %i.ai, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPKiPiEEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPKiPiEEvRT_T0_mT1_m.exit, label %bb.p, !prof !32

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp ne ptr %i.w, null
  %i.ak = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i18.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPKiPiEEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPKiPiEEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPKiPiEEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.d, ptr %i.x, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPKiPiEEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12small_vectorIiLm0EvvEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container17small_vector_baseIivvEaSERKS2_.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  tail call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignIPiEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a, ptr noundef %i.d, ptr noundef null)
  br label %_ZN5boost9container17small_vector_baseIivvEaSERKS2_.exit

_ZN5boost9container17small_vector_baseIivvEaSERKS2_.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12small_vectorIiLm0EvvEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container17small_vector_baseIivvEaSEOS2_.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !59     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !69
  %i.d = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = icmp eq ptr %i.e, %i.d
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.f, !prof !40
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS5_EEvONS1_IiT_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72
  %i.i = shl i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !59
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS5_EEvONS1_IiT_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS5_EEvONS1_IiT_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.a, %bb.c ], [ %.pre.i.i.i.i, %bb.d ]
  store ptr %i.j, ptr %0, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !33
  store <2 x i64> %i.l, ptr %i.c, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container17small_vector_baseIivvEaSEOS2_.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !69, !noalias !261
  %i.o = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.n
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPiEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.a, ptr %i.o, ptr noundef null)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !69
  br label %_ZN5boost9container17small_vector_baseIivvEaSEOS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

_ZN5boost9container17small_vector_baseIivvEaSEOS2_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS5_EEvONS1_IiT_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i, %.noexc.i.i
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12small_vectorIiLm0EvvEaSERKNS0_17small_vector_baseIivvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container17small_vector_baseIivvEaSERKS2_.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  tail call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignIPiEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a, ptr noundef %i.d, ptr noundef null)
  br label %_ZN5boost9container17small_vector_baseIivvEaSERKS2_.exit

_ZN5boost9container17small_vector_baseIivvEaSERKS2_.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12small_vectorIiLm0EvvEaSEONS0_17small_vector_baseIivvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container17small_vector_baseIivvEaSEOS2_.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !59     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS2_16simple_allocatorIS3_EEvEC2EmRKS3_RKS5_:bb.a

_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_24maybe_initial_capacity_tEmmOT_.exit.thread: ; preds = %bb.d
  %i.e = shl nuw nsw i64 %1, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !75
  store i64 %1, ptr %i.b, align 8, !tbaa !33
  br label %.lr.ph.i.i.i.preheader

_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_24maybe_initial_capacity_tEmmOT_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.h, align 8, !tbaa !77
  store ptr %i.g, ptr %0, align 8, !tbaa !75
  %.not15.i.i.i = icmp eq i64 %1, 0
  br i1 %.not15.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_24maybe_initial_capacity_tEmmOT_.exit.thread, %_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_24maybe_initial_capacity_tEmmOT_.exit
  %.01416.i.i.i.ph = phi ptr [ %i.g, %_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_24maybe_initial_capacity_tEmmOT_.exit ], [ %i.f, %_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_24maybe_initial_capacity_tEmmOT_.exit.thread ] ; 2 uses
  %i.i = add i64 %1, -1
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.017.i.i.i.prol = phi i64 [ %i.j, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %.01416.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.prol ], [ %.01416.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.j = add i64 %.017.i.i.i.prol, -1             ; 2 uses
  %i.k = load i32, ptr %2, align 4, !tbaa !79
  store i32 %i.k, ptr %.01416.i.i.i.prol, align 4, !tbaa !79
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !355

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.017.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.prol ]
  %.01416.i.i.i.unr = phi ptr [ %.01416.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.prol ]
  %i.o = icmp ult i64 %i.i, 3
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01416.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.01416.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !79
  store i32 %i.p, ptr %.01416.i.i.i, align 4, !tbaa !79
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 4
  %i.t = load i32, ptr %2, align 4, !tbaa !79
  store i32 %i.t, ptr %i.s, align 4, !tbaa !79
  %i.u = add i32 %i.q, 2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 8
  %i.w = load i32, ptr %2, align 4, !tbaa !79
  store i32 %i.w, ptr %i.v, align 4, !tbaa !79
  %i.x = add i32 %i.q, 3
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 12
  %i.z = add i64 %.017.i.i.i, -4                  ; 2 uses
  %i.aa = load i32, ptr %2, align 4, !tbaa !79
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !79
  %i.ab = add i32 %i.q, 4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_24maybe_initial_capacity_tEmmOT_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.ad, align 8, !tbaa !76
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS2_16simple_allocatorIS3_EEvEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS2_16simple_allocatorIS3_EEvEC5ERKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.52", align 8 ; 2 uses
  %3 = alloca %"class.boost::container::vec_iterator.52", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.d = load ptr, ptr %1, align 8, !tbaa !75, !noalias !360 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !84, !alias.scope !360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82, !noalias !361
  %i.g = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  store ptr %i.g, ptr %3, align 8, !tbaa !84, !alias.scope !361
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !85     ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !85     ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77   ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 4611686018427387903
  br i1 %i.j, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !82   ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter124 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !79
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !362

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !79
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !79
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !79
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !79
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !75
  store i64 %i.f, ptr %i.g, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !85    ; 9 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 3 uses
  %i.al = add i64 %i.ak, -4
  %i.am = sub i64 %i.al, %i.ai                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check87, label %.lr.ph.i.i13.preheader103, label %vector.memcheck77

vector.memcheck77:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = add i64 %i.ak, -4
  %i.aq = sub i64 %i.ap, %i.ai
  %i.ar = and i64 %i.aq, -4
  %i.as = add i64 %i.ar, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.as ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.ah, i64 %i.as ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound079 = icmp ult ptr %i.k, %scevgep78
  %bound180 = icmp ult ptr %i.ah, %scevgep
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ugt ptr %scevgep78, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound183 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %.lr.ph.i.i13.preheader103, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck77
  %n.vec89 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec89, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.k, i64 %i.at   ; 2 uses
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next97, %vector.body90 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph88 ], [ %i.ba, %vector.body90 ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph88 ], [ %i.bb, %vector.body90 ]
  %i.ax = shl i64 %index91, 2                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.k, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load95 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !79, !alias.scope !380
  %wide.load96 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !79, !alias.scope !380
  %i.az = getelementptr i8, ptr %next.gep94, i64 16
  store <4 x i32> %wide.load95, ptr %next.gep94, align 4, !tbaa !79, !alias.scope !381, !noalias !382
  store <4 x i32> %wide.load96, ptr %i.az, align 4, !tbaa !79, !alias.scope !381, !noalias !382
  %i.ba = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bb = add <4 x i32> %vec.phi92, splat (i32 1) ; 2 uses
  %index.next97 = add nuw i64 %index91, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next97, %n.vec89
  br i1 %i.bc, label %middle.block98, label %vector.body90, !llvm.loop !367

middle.block98:                                   ; preds = %vector.body90
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62, !alias.scope !383, !noalias !380
  %cmp.n99 = icmp eq i64 %i.ao, %n.vec89
  br i1 %cmp.n99, label %.loopexit, label %.lr.ph.i.i13.preheader103

.lr.ph.i.i13.preheader103:                        ; preds = %vector.memcheck77, %.lr.ph.i.i13.preheader, %middle.block98
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck77 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bd, %middle.block98 ]
  %.ph104 = phi ptr [ %i.ah, %vector.memcheck77 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block98 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck77 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.av, %middle.block98 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader103, %.lr.ph.i.i13
  %i.be = phi i32 [ %i.bh, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader103 ]
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.ph104, %.lr.ph.i.i13.preheader103 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bj, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader103 ] ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !79
  store i32 %i.bg, ptr %.011.i.i, align 4, !tbaa !79
  %i.bh = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bi, %i.aj
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !368

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block98, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.av, %middle.block98 ], [ %i.bj, %.lr.ph.i.i13 ]
  %i.bk = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bl = ptrtoint ptr %i.k to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !76
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %0, align 8, !tbaa !75    ; 9 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !82 ; 11 uses
  %i.bs = icmp ult i64 %i.br, %i.f
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.br, 8
  %i.bt = sub i64 %i.d, %i.bp
  %diff.check60 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check60
  br i1 %or.cond, label %.lr.ph.i.i19.preheader107, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec64 = and i64 %i.br, -8                    ; 3 uses
  %i.bu = shl i64 %n.vec64, 2                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bu   ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bu  ; 2 uses
  %i.bx = and i64 %i.br, 7
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.by = shl i64 %index66, 2                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.a, i64 %i.by ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !79, !noalias !384
  %wide.load70 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !79, !noalias !384
  %i.ca = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load69, ptr %next.gep68, align 4, !tbaa !79, !noalias !384
  store <4 x i32> %wide.load70, ptr %i.ca, align 4, !tbaa !79, !noalias !384
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.cb, label %middle.block72, label %vector.body65, !llvm.loop !371

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.br, %n.vec64
  br i1 %cmp.n73, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader107

.lr.ph.i.i19.preheader107:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block72
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block72 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block72 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i19.preheader ], [ %i.bx, %middle.block72 ] ; 4 uses
  %i.cc = add i64 %.04.i.i.ph, -1
  %xtraiter117 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader107, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader107 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader107 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader107 ]
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader107 ]
  %i.cd = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.ce = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !79, !noalias !384
  store i32 %i.ce, ptr %.0.i.prol, align 4, !tbaa !79, !noalias !384
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !372

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader107
  %.lcssa109.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader107 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.lcssa108.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader107 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader107 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader107 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader107 ], [ %i.cd, %.lr.ph.i.i19.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.dg, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dd, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ci = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !79, !noalias !384
  store i32 %i.ci, ptr %.0.i, align 4, !tbaa !79, !noalias !384
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !79, !noalias !384
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !79, !noalias !384
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !79, !noalias !384
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !79, !noalias !384
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !79, !noalias !384
end_hunk_1
begin_hunk_2_@_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS2_16simple_allocatorIS3_EEvEC2EOS6_RKS5_:bb.a
  br i1 %i.p, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.020.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.0919.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.0919.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.01618.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %i.q = load i32, ptr %.0919.i.i.i, align 4, !tbaa !79
  store i32 %i.q, ptr %.01618.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.0919.i.i.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 4
  %i.v = add i64 %.020.i.i.i, -2                  ; 2 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !79
  store i32 %i.w, ptr %i.u, align 4, !tbaa !79
  store i32 0, ptr %i.t, align 4, !tbaa !79
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %.not.i.i.i.1 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  store i64 %i.i, ptr %i.b, align 8, !tbaa !82
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i
  %xtraiter5 = and i64 %i.ab, 3                   ; 2 uses
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ac = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !79
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter5
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !399

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.ab, 4
  br i1 %i.ag, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !79
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !79
  %i.ak = add i32 %i.ah, -2
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !79
  %i.am = add i32 %i.ah, -3
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ao = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.an, align 4, !tbaa !79
  %i.ap = add i32 %i.ah, -4
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i
  store i64 0, ptr %i.h, align 8, !tbaa !82
  br label %_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_18initial_capacity_tEmOT_RS6_.exit

_ZN5boost9container17small_vector_baseINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2IRKS5_EENS0_18initial_capacity_tEmOT_RS6_.exit: ; preds = %bb.b, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS2_16simple_allocatorIS3_EEvEC2ESt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS2_16simple_allocatorIS3_EEvEC5ESt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE6assignIPKS3_EEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.d, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE6assignIPKS3_EEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82   ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter112 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !79
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !400

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.preheader ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.l, 4
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !79
  %i.u = add i32 %i.r, -2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !79
  %i.w = add i32 %i.r, -3
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.y = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !79
  %i.z = add i32 %i.r, -4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ad = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ad) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !75
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 3 uses
  %i.af = add i64 %i.a, -4
  %i.ag = sub i64 %i.af, %i.b                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ag, 60
  br i1 %min.iters.check77, label %.lr.ph.i.i18.preheader93, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i18.preheader
  %i.aj = add i64 %i.a, -4
  %i.ak = sub i64 %i.aj, %i.b
  %i.al = and i64 %i.ak, -4
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.am, i64 4
  %bound0 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i18.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck75
  %n.vec79 = and i64 %i.ai, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec79, 2                     ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.i, i64 %i.an   ; 2 uses
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aq, %vector.ph78 ], [ %i.au, %vector.body80 ]
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.av, %vector.body80 ]
  %i.ar = shl i64 %index81, 2                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %1, i64 %i.ar ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.i, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !79, !alias.scope !415
  %wide.load86 = load <4 x i32>, ptr %i.as, align 4, !tbaa !79, !alias.scope !415
  %i.at = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x i32> %wide.load85, ptr %next.gep84, align 4, !tbaa !79
  store <4 x i32> %wide.load86, ptr %i.at, align 4, !tbaa !79
  %i.au = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.av = add <4 x i32> %vec.phi82, splat (i32 1) ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.aw, label %middle.block88, label %vector.body80, !llvm.loop !403

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62, !alias.scope !416, !noalias !415
  %cmp.n89 = icmp eq i64 %i.ai, %n.vec79
  br i1 %cmp.n89, label %.loopexit, label %.lr.ph.i.i18.preheader93

.lr.ph.i.i18.preheader93:                         ; preds = %vector.memcheck75, %.lr.ph.i.i18.preheader, %middle.block88
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck75 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i18.preheader ], [ %i.ax, %middle.block88 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i.i18.preheader ], [ %i.ao, %middle.block88 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck75 ], [ %i.i, %.lr.ph.i.i18.preheader ], [ %i.ap, %middle.block88 ]
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.preheader93, %.lr.ph.i.i18
  %i.ay = phi i32 [ %i.ba, %.lr.ph.i.i18 ], [ %.ph, %.lr.ph.i.i18.preheader93 ]
  %.018.i.i = phi ptr [ %i.bb, %.lr.ph.i.i18 ], [ %.018.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.bc, %.lr.ph.i.i18 ], [ %.01517.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %i.az = load i32, ptr %.018.i.i, align 4, !tbaa !79
  store i32 %i.az, ptr %.01517.i.i, align 4, !tbaa !79
  %i.ba = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bb, %2
  br i1 %.not.i.i19, label %.loopexit, label %.lr.ph.i.i18, !llvm.loop !405

.loopexit:                                        ; preds = %.lr.ph.i.i18, %middle.block88, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.015.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.ap, %middle.block88 ], [ %i.bc, %.lr.ph.i.i18 ]
  %i.bd = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.be = ptrtoint ptr %i.i to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !76
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bh = load ptr, ptr %0, align 8, !tbaa !75    ; 9 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !82 ; 11 uses
  %i.bl = icmp ult i64 %i.bk, %i.d
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i23.preheader

.lr.ph.i.i23.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.bk, 8
  %i.bm = sub i64 %i.b, %i.bi
  %diff.check58 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check60, i1 true, i1 %diff.check58
  br i1 %or.cond, label %.lr.ph.i.i23.preheader96, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i23.preheader
  %n.vec62 = and i64 %i.bk, -8                    ; 3 uses
  %i.bn = shl i64 %n.vec62, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 %i.bn     ; 2 uses
  %i.bq = and i64 %i.bk, 7
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.br = shl i64 %index64, 2                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bh, i64 %i.br ; 2 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !79
  %wide.load68 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !79
  %i.bt = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep65, align 4, !tbaa !79
  store <4 x i32> %wide.load68, ptr %i.bt, align 4, !tbaa !79
  %index.next69 = add nuw i64 %index64, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bu, label %middle.block70, label %vector.body63, !llvm.loop !406

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.bk, %n.vec62
  br i1 %cmp.n71, label %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i23.preheader96

.lr.ph.i.i23.preheader96:                         ; preds = %.lr.ph.i.i23.preheader, %middle.block70
  %.ph97 = phi ptr [ %i.bh, %.lr.ph.i.i23.preheader ], [ %i.bo, %middle.block70 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %.lr.ph.i.i23.preheader ], [ %i.bp, %middle.block70 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.bk, %.lr.ph.i.i23.preheader ], [ %i.bq, %middle.block70 ] ; 4 uses
  %i.bv = add i64 %.068.i.i.ph, -1
  %xtraiter106 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol

.lr.ph.i.i23.prol:                                ; preds = %.lr.ph.i.i23.preheader96, %.lr.ph.i.i23.prol
  %i.bw = phi ptr [ %i.ca, %.lr.ph.i.i23.prol ], [ %.ph97, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.09.i.i.prol = phi ptr [ %i.bz, %.lr.ph.i.i23.prol ], [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i23.prol ], [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ]
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i23.prol ], [ 0, %.lr.ph.i.i23.preheader96 ]
  %i.bx = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.by = load i32, ptr %.09.i.i.prol, align 4, !tbaa !79
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !79
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 3 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol, !llvm.loop !407

.lr.ph.i.i23.prol.loopexit:                       ; preds = %.lr.ph.i.i23.prol, %.lr.ph.i.i23.preheader96
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.bz, %.lr.ph.i.i23.prol ]
  %.lcssa98.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.ca, %.lr.ph.i.i23.prol ]
  %.unr = phi ptr [ %.ph97, %.lr.ph.i.i23.preheader96 ], [ %i.ca, %.lr.ph.i.i23.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bz, %.lr.ph.i.i23.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bx, %.lr.ph.i.i23.prol ]
  %i.cb = icmp ult i64 %i.bv, 7
  br i1 %i.cb, label %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23
  %i.cc = phi ptr [ %i.db, %.lr.ph.i.i23 ], [ %.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.da, %.lr.ph.i.i23 ], [ %.09.i.i.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.cy, %.lr.ph.i.i23 ], [ %.068.i.i.unr, %.lr.ph.i.i23.prol.loopexit ]
  %i.cd = load i32, ptr %.09.i.i, align 4, !tbaa !79
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !79
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !79
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !79
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !79
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !79
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !79
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !79
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !79
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !79
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !79
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorIcNS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPcEEEEEENS0_12vec_iteratorISB_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = icmp ne ptr %i.s, %2
  %i.z = icmp ne ptr %i.s, null
  %spec.select.i.i.i.i = and i1 %i.z, %i.y
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, !prof !39

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.s, i64 %i.v, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %3, 0
  %i.ab = icmp ne ptr %4, null
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.ab, i1 false, !prof !97
  br i1 %or.cond, label %bb.h, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEENS_13move_iteratorIPcEEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.i, !prof !97

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i.i, ptr nonnull align 1 %4, i64 %3, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEENS_13move_iteratorIPcEEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.i

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEENS_13move_iteratorIPcEEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %i.ac = icmp ne ptr %2, %i.x
  %i.ad = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ad, %i.ac
  br i1 %spec.select.i.i18.i.i, label %bb.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, !prof !39

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEENS_13move_iteratorIPcEEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %3
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = sub i64 %i.af, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %2, i64 %i.ag, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %bb.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEENS_13move_iteratorIPcEEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = icmp eq ptr %i.ah, %i.s
  %or.cond10 = select i1 %.not.i, i1 true, i1 %i.ai
  br i1 %or.cond10, label %_ZN5boost9container6vectorIcNS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPcEEEEEEvSB_mSB_mT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.aj) #20
  %.pre = load i64, ptr %i.d, align 8, !tbaa !46
  br label %_ZN5boost9container6vectorIcNS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPcEEEEEEvSB_mSB_mT_.exit

_ZN5boost9container6vectorIcNS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPcEEEEEEvSB_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %bb.j
  %i.ak = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre, %bb.j ]
  store ptr %i.r, ptr %1, align 8, !tbaa !45
  %i.al = add i64 %i.ak, %3
  store i64 %i.al, ptr %i.d, align 8, !tbaa !46
  store i64 %i.p, ptr %i.a, align 8, !tbaa !33
  %i.am = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.am, ptr %0, align 8, !tbaa !496
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIcNS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 7 uses
  %.not22 = icmp eq ptr %i.c, %1
  br i1 %.not22, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52   ; 9 uses
  %.not23 = icmp eq i64 %i.e, 0
  br i1 %.not23, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not24 = icmp eq ptr %i.c, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.f, %i.c
  %or.cond = select i1 %.not24, i1 true, i1 %i.g, !prof !40
  br i1 %or.cond, label %.sink.split, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.b) #20
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %.not25 = icmp ugt i64 %i.e, %2
  br i1 %.not25, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = icmp ne ptr %1, null
  %i.i = icmp ne ptr %i.c, null
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %bb.h, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.c, i64 %i.e, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %bb.g, %bb.h
  %i.j = phi ptr [ %i.c, %bb.g ], [ %.pre, %bb.h ] ; 3 uses
  %.not26 = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = icmp eq ptr %i.k, %i.j
  %or.cond31 = select i1 %.not26, i1 true, i1 %i.l, !prof !40
  br i1 %or.cond31, label %.sink.split, label %bb.i, !prof !40

bb.i:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.b) #20
  br label %.sink.split

bb.j:                                             ; preds = %bb.f
  %i.m = icmp ult i64 %i.e, %i.b
  br i1 %i.m, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.n = icmp slt i64 %i.e, 0
  br i1 %i.n, label %bb.l, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i, !prof !32

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i: ; preds = %bb.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !45     ; 5 uses
  %i.q = load i64, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.r = icmp samesign ne i64 %i.q, 0
  %i.s = icmp ne ptr %i.p, null
  %spec.select.i.i.i.i.i = and i1 %i.s, %i.r
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old5.i = icmp eq ptr %.old.i, %i.p            ; 2 uses
  br i1 %spec.select.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, !prof !39

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  br i1 %.old5.i, label %.sink.split, label %bb.m

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i
  %.not.i.i28 = icmp eq ptr %i.p, null
  %or.cond.i = select i1 %.not.i.i28, i1 true, i1 %.old5.i
  br i1 %or.cond.i, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, %bb.i, %bb.d, %bb.e
  %.sink39 = phi ptr [ %1, %bb.d ], [ %1, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit ], [ %1, %bb.e ], [ %1, %bb.i ], [ %i.o, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i ], [ %i.o, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i ], [ %i.o, %bb.m ]
  %.sink = phi i64 [ %2, %bb.d ], [ %2, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit ], [ %2, %bb.e ], [ %2, %bb.i ], [ %i.e, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i ], [ %i.e, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIcNS0_13new_allocatorIvEEvEEPcS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i ], [ %i.e, %bb.m ]
  store ptr %.sink39, ptr %0, align 8, !tbaa !45
  store i64 %.sink, ptr %i.a, align 8, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.j, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignIPiEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !59
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !69
  %i.p = icmp ne ptr %1, %2
  %i.q = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.q, %i.p
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 4 %1, i64 %i.c, i1 false)
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %.0.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ]
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  store i64 %i.v, ptr %i.o, align 8, !tbaa !60
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !59     ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69   ; 6 uses
  %i.z = icmp ult i64 %i.y, %i.d
  br i1 %i.z, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i, label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ne ptr %i.w, null
  %i.ab = icmp ne ptr %1, null
  %or.cond.i.i.i18 = and i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i18, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = shl i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  br label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i

_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.w, %bb.j ], [ %i.ae, %bb.m ] ; 2 uses
  %.0.i.i.i19 = phi ptr [ %1, %bb.j ], [ %i.ad, %bb.m ] ; 2 uses
  %i.af = icmp ne ptr %.0.i, null
  %i.ag = icmp ne ptr %.0.i.i.i19, null
  %or.cond.i.i15.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i.i15.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i
  %i.ah = sub nuw i64 %i.d, %i.y
  %i.ai = shl i64 %i.ah, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.0.i.i.i19, i64 %i.ai, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !32

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp ne ptr %i.w, null
  %i.ak = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i18.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.d, ptr %i.x, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPiEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !59
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !69
  %i.p = icmp ne ptr %1, %2
  %i.q = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.q, %i.p
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 4 %1, i64 %i.c, i1 false)
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %.0.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ]
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  store i64 %i.v, ptr %i.o, align 8, !tbaa !60
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !59     ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69   ; 6 uses
  %i.z = icmp ult i64 %i.y, %i.d
  br i1 %i.z, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ne ptr %i.w, null
  %i.ab = icmp ne ptr %1, null
  %or.cond.i.i.i19 = and i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i19, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = shl i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  br label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i

_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.w, %bb.j ], [ %i.ae, %bb.m ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %1, %bb.j ], [ %i.ad, %bb.m ] ; 2 uses
  %i.af = icmp ne ptr %.0.i, null
  %i.ag = icmp ne ptr %.sroa.0.0.i.i.i, null
  %or.cond.i.i16.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i.i16.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %i.ah = sub nuw i64 %i.d, %i.y
  %i.ai = shl i64 %i.ah, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.sroa.0.0.i.i.i, i64 %i.ai, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !32

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp ne ptr %i.w, null
  %i.ak = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i18.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.d, ptr %i.x, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIivvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.82", align 8 ; 3 uses
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.k, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !59     ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = icmp ne ptr %i.d, %i.b                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = icmp ne ptr %i.f, %i.c                   ; 2 uses
  %or.cond.i.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIivvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.c

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIivvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !70
  store ptr %i.b, ptr %1, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  store i64 %i.k, ptr %i.h, align 8, !tbaa !33
  store i64 %i.j, ptr %i.i, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !33
  %i.o = load i64, ptr %i.m, align 8, !tbaa !33
  store i64 %i.o, ptr %i.l, align 8, !tbaa !33
  store i64 %i.n, ptr %i.m, align 8, !tbaa !33
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i64 %2, 0
  %or.cond = or i1 %i.e, %i.g
  %or.cond80 = and i1 %.not, %or.cond
  br i1 %or.cond80, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = select i1 %i.e, ptr %0, ptr %1           ; 4 uses
  %i.q = select i1 %i.e, ptr %1, ptr %0           ; 3 uses
  %i.r = select i1 %i.e, ptr %i.b, ptr %i.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !71
  store i64 0, ptr %i.s, align 8, !tbaa !60
  store i64 %2, ptr %i.t, align 8, !tbaa !33
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp ne i64 %i.y, 0
  %i.z = icmp ne ptr %i.w, null
  %or.cond96 = select i1 %.not.i.i, i1 %i.z, i1 false, !prof !97
  br i1 %or.cond96, label %bb.e, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEED2Ev.exit, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.aa = shl i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 1 %i.w, i64 %i.aa, i1 false)
  %.pre101 = load i64, ptr %i.x, align 8, !tbaa !69
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEED2Ev.exit

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEED2Ev.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i64 [ %i.y, %bb.d ], [ %.pre101, %bb.e ]
  store i64 %i.ab, ptr %i.s, align 8, !tbaa !60
  store ptr %i.r, ptr %i.q, align 8, !tbaa !71
  store <2 x i64> %i.u, ptr %i.x, align 8, !tbaa !33
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69
  %i.ag = icmp ult i64 %i.ad, %i.af               ; 4 uses
  %i.ah = select i1 %i.ag, ptr %0, ptr %1         ; 3 uses
  %i.ai = select i1 %i.ag, ptr %1, ptr %0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !69 ; 12 uses
  %.not7998 = icmp eq i64 %i.ak, 0
  %i.al = select i1 %i.ag, ptr %i.b, ptr %i.c     ; 8 uses
  %i.am = select i1 %i.ag, ptr %i.c, ptr %i.b     ; 8 uses
  br i1 %.not7998, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.an = shl i64 %i.ak, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.an
  %scevgep110 = getelementptr i8, ptr %i.am, i64 %i.an
  %bound0 = icmp ult ptr %i.al, %scevgep110
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !62, !alias.scope !508, !noalias !509
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPiEEEEEENS0_12vec_iteratorISB_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !71     ; 7 uses
  %.not22 = icmp eq ptr %i.c, %1
  br i1 %.not22, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69   ; 9 uses
  %.not23 = icmp eq i64 %i.e, 0
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not24 = icmp eq ptr %i.c, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.f, %i.c
  %or.cond = select i1 %.not24, i1 true, i1 %i.g, !prof !40
  br i1 %or.cond, label %.sink.split, label %.sink.split.sink.split, !prof !40

bb.e:                                             ; preds = %bb.c
  %.not25 = icmp ugt i64 %i.e, %2
  br i1 %.not25, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ne ptr %1, null
  %i.i = icmp ne ptr %i.c, null
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %bb.g, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit

bb.g:                                             ; preds = %bb.f
  %i.j = shl i64 %i.e, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.c, i64 %i.j, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !71
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %bb.f, %bb.g
  %i.k = phi ptr [ %i.c, %bb.f ], [ %.pre, %bb.g ] ; 3 uses
  %.not26 = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = icmp eq ptr %i.l, %i.k
  %or.cond31 = select i1 %.not26, i1 true, i1 %i.m, !prof !40
  br i1 %or.cond31, label %.sink.split, label %.sink.split.sink.split, !prof !40

bb.h:                                             ; preds = %bb.e
  %i.n = icmp ult i64 %i.e, %i.b
  br i1 %i.n, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.o, label %bb.j, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i, !prof !32

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i: ; preds = %bb.i
  %i.p = shl nuw nsw i64 %i.e, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !59     ; 6 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = icmp ne ptr %i.r, null
  %spec.select.i.i.i.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, !prof !39

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i
  %.idx.i = shl nuw nsw i64 %i.s, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 4 %i.r, i64 %.idx.i, i1 false)
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old5.i = icmp eq ptr %.old.i, %i.r
  br i1 %.old5.i, label %.sink.split, label %bb.k

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i
  %.not.i.i28 = icmp eq ptr %i.r, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = icmp eq ptr %i.v, %i.r
  %or.cond.i = select i1 %.not.i.i28, i1 true, i1 %i.w
  br i1 %or.cond.i, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !61
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, %bb.d, %bb.k
  %.sink42 = phi i64 [ %i.x, %bb.k ], [ %i.b, %bb.d ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit ]
  %.sink40 = phi ptr [ %i.r, %bb.k ], [ %i.c, %bb.d ], [ %i.k, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit ]
  %.sink39.ph = phi ptr [ %i.q, %bb.k ], [ %1, %bb.d ], [ %1, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit ]
  %.sink.ph = phi i64 [ %i.e, %bb.k ], [ %2, %bb.d ], [ %2, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit ]
  %i.y = shl i64 %.sink42, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink40, i64 noundef %i.y) #20
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, %bb.d
  %.sink39 = phi ptr [ %1, %bb.d ], [ %1, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit ], [ %i.q, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i ], [ %i.q, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i ], [ %.sink39.ph, %.sink.split.sink.split ]
  %.sink = phi i64 [ %2, %bb.d ], [ %2, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit ], [ %i.e, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i ], [ %i.e, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i ], [ %.sink.ph, %.sink.split.sink.split ]
  store ptr %.sink39, ptr %0, align 8, !tbaa !59
  store i64 %.sink, ptr %i.a, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82   ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter112 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !79
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !514

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.preheader ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.l, 4
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !79
  %i.u = add i32 %i.r, -2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !79
  %i.w = add i32 %i.r, -3
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.y = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !79
  %i.z = add i32 %i.r, -4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ad = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ad) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !75
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 3 uses
  %i.af = add i64 %i.a, -4
  %i.ag = sub i64 %i.af, %i.b                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ag, 60
  br i1 %min.iters.check77, label %.lr.ph.i.i18.preheader93, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i18.preheader
  %i.aj = add i64 %i.a, -4
  %i.ak = sub i64 %i.aj, %i.b
  %i.al = and i64 %i.ak, -4
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.am, i64 4
  %bound0 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i18.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck75
  %n.vec79 = and i64 %i.ai, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec79, 2                     ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.i, i64 %i.an   ; 2 uses
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aq, %vector.ph78 ], [ %i.au, %vector.body80 ]
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.av, %vector.body80 ]
  %i.ar = shl i64 %index81, 2                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %1, i64 %i.ar ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.i, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !79, !alias.scope !529
  %wide.load86 = load <4 x i32>, ptr %i.as, align 4, !tbaa !79, !alias.scope !529
  %i.at = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x i32> %wide.load85, ptr %next.gep84, align 4, !tbaa !79
  store <4 x i32> %wide.load86, ptr %i.at, align 4, !tbaa !79
  %i.au = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.av = add <4 x i32> %vec.phi82, splat (i32 1) ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.aw, label %middle.block88, label %vector.body80, !llvm.loop !517

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62, !alias.scope !530, !noalias !529
  %cmp.n89 = icmp eq i64 %i.ai, %n.vec79
  br i1 %cmp.n89, label %.loopexit, label %.lr.ph.i.i18.preheader93

.lr.ph.i.i18.preheader93:                         ; preds = %vector.memcheck75, %.lr.ph.i.i18.preheader, %middle.block88
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck75 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i18.preheader ], [ %i.ax, %middle.block88 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i.i18.preheader ], [ %i.ao, %middle.block88 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck75 ], [ %i.i, %.lr.ph.i.i18.preheader ], [ %i.ap, %middle.block88 ]
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.preheader93, %.lr.ph.i.i18
  %i.ay = phi i32 [ %i.ba, %.lr.ph.i.i18 ], [ %.ph, %.lr.ph.i.i18.preheader93 ]
  %.018.i.i = phi ptr [ %i.bb, %.lr.ph.i.i18 ], [ %.018.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.bc, %.lr.ph.i.i18 ], [ %.01517.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %i.az = load i32, ptr %.018.i.i, align 4, !tbaa !79
  store i32 %i.az, ptr %.01517.i.i, align 4, !tbaa !79
  %i.ba = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bb, %2
  br i1 %.not.i.i19, label %.loopexit, label %.lr.ph.i.i18, !llvm.loop !519

.loopexit:                                        ; preds = %.lr.ph.i.i18, %middle.block88, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.015.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.ap, %middle.block88 ], [ %i.bc, %.lr.ph.i.i18 ]
  %i.bd = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.be = ptrtoint ptr %i.i to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !76
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bh = load ptr, ptr %0, align 8, !tbaa !75    ; 9 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !82 ; 11 uses
  %i.bl = icmp ult i64 %i.bk, %i.d
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader

.lr.ph.i.i23.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.bk, 8
  %i.bm = sub i64 %i.b, %i.bi
  %diff.check58 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check60, i1 true, i1 %diff.check58
  br i1 %or.cond, label %.lr.ph.i.i23.preheader96, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i23.preheader
  %n.vec62 = and i64 %i.bk, -8                    ; 3 uses
  %i.bn = shl i64 %n.vec62, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 %i.bn     ; 2 uses
  %i.bq = and i64 %i.bk, 7
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.br = shl i64 %index64, 2                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bh, i64 %i.br ; 2 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !79
  %wide.load68 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !79
  %i.bt = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep65, align 4, !tbaa !79
  store <4 x i32> %wide.load68, ptr %i.bt, align 4, !tbaa !79
  %index.next69 = add nuw i64 %index64, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bu, label %middle.block70, label %vector.body63, !llvm.loop !520

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.bk, %n.vec62
  br i1 %cmp.n71, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader96

.lr.ph.i.i23.preheader96:                         ; preds = %.lr.ph.i.i23.preheader, %middle.block70
  %.ph97 = phi ptr [ %i.bh, %.lr.ph.i.i23.preheader ], [ %i.bo, %middle.block70 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %.lr.ph.i.i23.preheader ], [ %i.bp, %middle.block70 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.bk, %.lr.ph.i.i23.preheader ], [ %i.bq, %middle.block70 ] ; 4 uses
  %i.bv = add i64 %.068.i.i.ph, -1
  %xtraiter106 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol

.lr.ph.i.i23.prol:                                ; preds = %.lr.ph.i.i23.preheader96, %.lr.ph.i.i23.prol
  %i.bw = phi ptr [ %i.ca, %.lr.ph.i.i23.prol ], [ %.ph97, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.09.i.i.prol = phi ptr [ %i.bz, %.lr.ph.i.i23.prol ], [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i23.prol ], [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ]
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i23.prol ], [ 0, %.lr.ph.i.i23.preheader96 ]
  %i.bx = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.by = load i32, ptr %.09.i.i.prol, align 4, !tbaa !79
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !79
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 3 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol, !llvm.loop !521

.lr.ph.i.i23.prol.loopexit:                       ; preds = %.lr.ph.i.i23.prol, %.lr.ph.i.i23.preheader96
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.bz, %.lr.ph.i.i23.prol ]
  %.lcssa98.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.ca, %.lr.ph.i.i23.prol ]
  %.unr = phi ptr [ %.ph97, %.lr.ph.i.i23.preheader96 ], [ %i.ca, %.lr.ph.i.i23.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bz, %.lr.ph.i.i23.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bx, %.lr.ph.i.i23.prol ]
  %i.cb = icmp ult i64 %i.bv, 7
  br i1 %i.cb, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23
  %i.cc = phi ptr [ %i.db, %.lr.ph.i.i23 ], [ %.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.da, %.lr.ph.i.i23 ], [ %.09.i.i.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.cy, %.lr.ph.i.i23 ], [ %.068.i.i.unr, %.lr.ph.i.i23.prol.loopexit ]
  %i.cd = load i32, ptr %.09.i.i, align 4, !tbaa !79
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !79
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !79
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !79
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !79
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !79
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !79
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !79
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !79
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !79
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !79
end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb0EEE:bb.a
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.m, align 4, !tbaa !79
  %i.n = add i32 %i.k, -2
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.o, align 4, !tbaa !79
  %i.p = add i32 %i.k, -3
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.r = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.q, align 4, !tbaa !79
  %i.s = add i32 %i.k, -4
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %i.u = load ptr, ptr %0, align 8, !tbaa !98     ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = icmp eq ptr %i.v, %i.u
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.w, !prof !40
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !535
  %i.z = shl i64 %i.y, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #20
  %.pre = load ptr, ptr %1, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i, %bb.c
  %i.aa = phi ptr [ %i.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit.i ], [ %.pre, %bb.c ]
  store ptr %i.aa, ptr %0, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !33
  store <2 x i64> %i.ac, ptr %i.c, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !82, !noalias !536
  %i.af = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ae
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.a, ptr %i.af, ptr noundef null)
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !82 ; 5 uses
  %.not3.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d
  %i.ah = load ptr, ptr %1, align 8, !tbaa !75    ; 2 uses
  %xtraiter15 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.prol ], [ %i.ag, %.lr.ph.i.preheader.i.i ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.prol ], [ %i.ah, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter17 = phi i64 [ %prol.iter17.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.ai = add i64 %.05.i.i.i.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !79
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter17.next = add i64 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i64 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !534

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.05.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.preheader.i.i ], [ %i.ai, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.ah, %.lr.ph.i.preheader.i.i ], [ %i.al, %.lr.ph.i.i.i.prol ]
  %i.am = icmp ult i64 %i.ag, 4
  br i1 %i.am, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !79
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !79
  %i.aq = add i32 %i.an, -2
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !79
  %i.as = add i32 %i.an, -3
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.au = add i64 %.05.i.i.i, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !79
  %i.av = add i32 %i.an, -4
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.d
  store i64 0, ptr %i.ad, align 8, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE5clearEv.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82   ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter97 = and i64 %i.l, 3                   ; 2 uses
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter99 = phi i64 [ %prol.iter99.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !79
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter99.next = add i64 %prol.iter99, 1     ; 2 uses
  %prol.iter99.cmp.not = icmp eq i64 %prol.iter99.next, %xtraiter97
  br i1 %prol.iter99.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !537

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.preheader ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.l, 4
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !79
  %i.u = add i32 %i.r, -2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !79
  %i.w = add i32 %i.r, -3
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.y = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !79
  %i.z = add i32 %i.r, -4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ad = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ad) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !75
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not13.i.i = icmp eq ptr %1, %2
  br i1 %.not13.i.i, label %.loopexit, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, %.lr.ph.i.i19
  %.015.i.i = phi ptr [ %i.aj, %.lr.ph.i.i19 ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ai, %.lr.ph.i.i19 ], [ %1, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 3 uses
  %i.af = load i32, ptr %.sroa.010.014.i.i, align 4, !tbaa !79
  store i32 %i.af, ptr %.015.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.010.014.i.i, align 4, !tbaa !79
  %i.ag = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ai, %2
  br i1 %.not.i.i20, label %.loopexit, label %.lr.ph.i.i19, !llvm.loop !538

.loopexit:                                        ; preds = %.lr.ph.i.i19, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.aj, %.lr.ph.i.i19 ]
  %i.ak = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.al = ptrtoint ptr %i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  store i64 %i.an, ptr %i.ae, align 8, !tbaa !76
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %0, align 8, !tbaa !75    ; 14 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !82 ; 13 uses
  %i.ar = icmp ult i64 %i.aq, %i.d
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not4.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i25.preheader

.lr.ph.i.i25.preheader:                           ; preds = %bb.h
  %min.iters.check67 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check67, label %.lr.ph.i.i25.preheader82, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i.i25.preheader
  %i.as = shl i64 %i.aq, 2                        ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ao, i64 %i.as
  %scevgep62 = getelementptr i8, ptr %1, i64 %i.as
  %bound063 = icmp ult ptr %i.ao, %scevgep62
  %bound164 = icmp ult ptr %1, %scevgep61
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i.i25.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck60
  %n.vec69 = and i64 %i.aq, -8                    ; 3 uses
  %i.at = shl i64 %n.vec69, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.at  ; 2 uses
  %i.av = and i64 %i.aq, 7
  %i.aw = getelementptr i8, ptr %1, i64 %i.at     ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.ax = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %next.gep73 = getelementptr i8, ptr %1, i64 %i.ax ; 3 uses
  %i.ay = getelementptr i8, ptr %next.gep73, i64 16 ; 2 uses
  %wide.load74 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !79, !alias.scope !553
  %wide.load75 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !79, !alias.scope !553
  %i.az = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load74, ptr %next.gep72, align 4, !tbaa !79, !alias.scope !554, !noalias !553
  store <4 x i32> %wide.load75, ptr %i.az, align 4, !tbaa !79, !alias.scope !554, !noalias !553
  store <4 x i32> zeroinitializer, ptr %next.gep73, align 4, !tbaa !79, !alias.scope !553
  store <4 x i32> zeroinitializer, ptr %i.ay, align 4, !tbaa !79, !alias.scope !553
  %index.next76 = add nuw i64 %index71, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.ba, label %middle.block77, label %vector.body70, !llvm.loop !542

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.aq, %n.vec69
  br i1 %cmp.n78, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i25.preheader82

.lr.ph.i.i25.preheader82:                         ; preds = %vector.memcheck60, %.lr.ph.i.i25.preheader, %middle.block77
  %.ph = phi ptr [ %i.ao, %vector.memcheck60 ], [ %i.ao, %.lr.ph.i.i25.preheader ], [ %i.au, %middle.block77 ] ; 2 uses
  %.06.i.i.ph = phi i64 [ %i.aq, %vector.memcheck60 ], [ %i.aq, %.lr.ph.i.i25.preheader ], [ %i.av, %middle.block77 ] ; 4 uses
  %.sroa.0.05.i.i.ph = phi ptr [ %1, %vector.memcheck60 ], [ %1, %.lr.ph.i.i25.preheader ], [ %i.aw, %middle.block77 ] ; 2 uses
  %i.bb = add i64 %.06.i.i.ph, -1
  %xtraiter91 = and i64 %.06.i.i.ph, 3            ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph.i.i25.prol.loopexit, label %.lr.ph.i.i25.prol

.lr.ph.i.i25.prol:                                ; preds = %.lr.ph.i.i25.preheader82, %.lr.ph.i.i25.prol
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i.i25.prol ], [ %.ph, %.lr.ph.i.i25.preheader82 ] ; 2 uses
  %.06.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i25.prol ], [ %.06.i.i.ph, %.lr.ph.i.i25.preheader82 ]
  %.sroa.0.05.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i25.prol ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i25.preheader82 ] ; 3 uses
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph.i.i25.prol ], [ 0, %.lr.ph.i.i25.preheader82 ]
  %i.bd = add i64 %.06.i.i.prol, -1               ; 2 uses
  %i.be = load i32, ptr %.sroa.0.05.i.i.prol, align 4, !tbaa !79
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.05.i.i.prol, align 4, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.prol, i64 4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 3 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph.i.i25.prol.loopexit, label %.lr.ph.i.i25.prol, !llvm.loop !543

.lr.ph.i.i25.prol.loopexit:                       ; preds = %.lr.ph.i.i25.prol, %.lr.ph.i.i25.preheader82
  %.lcssa84.unr = phi ptr [ poison, %.lr.ph.i.i25.preheader82 ], [ %i.bf, %.lr.ph.i.i25.prol ]
  %.lcssa83.unr = phi ptr [ poison, %.lr.ph.i.i25.preheader82 ], [ %i.bg, %.lr.ph.i.i25.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.i25.preheader82 ], [ %i.bg, %.lr.ph.i.i25.prol ]
  %.06.i.i.unr = phi i64 [ %.06.i.i.ph, %.lr.ph.i.i25.preheader82 ], [ %i.bd, %.lr.ph.i.i25.prol ]
  %.sroa.0.05.i.i.unr = phi ptr [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i25.preheader82 ], [ %i.bf, %.lr.ph.i.i25.prol ]
  %i.bh = icmp ult i64 %i.bb, 3
  br i1 %i.bh, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.lr.ph.i.i25.prol.loopexit, %.lr.ph.i.i25
  %i.bi = phi ptr [ %i.bv, %.lr.ph.i.i25 ], [ %.unr, %.lr.ph.i.i25.prol.loopexit ] ; 5 uses
  %.06.i.i = phi i64 [ %i.bs, %.lr.ph.i.i25 ], [ %.06.i.i.unr, %.lr.ph.i.i25.prol.loopexit ]
  %.sroa.0.05.i.i = phi ptr [ %i.bu, %.lr.ph.i.i25 ], [ %.sroa.0.05.i.i.unr, %.lr.ph.i.i25.prol.loopexit ] ; 6 uses
  %i.bj = load i32, ptr %.sroa.0.05.i.i, align 4, !tbaa !79
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.05.i.i, align 4, !tbaa !79
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !79
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !79
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !79
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !79
  store i32 0, ptr %i.bn, align 4, !tbaa !79
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bs = add i64 %.06.i.i, -4                    ; 2 uses
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !79
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !79
  store i32 0, ptr %i.bq, align 4, !tbaa !79
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.not.i.i26.3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i26.3, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i25, !llvm.loop !544

_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i25.prol.loopexit, %.lr.ph.i.i25, %middle.block77, %bb.h
  %.0.i = phi ptr [ %i.ao, %bb.h ], [ %i.au, %middle.block77 ], [ %.lcssa83.unr, %.lr.ph.i.i25.prol.loopexit ], [ %i.bv, %.lr.ph.i.i25 ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.h ], [ %i.aw, %middle.block77 ], [ %.lcssa84.unr, %.lr.ph.i.i25.prol.loopexit ], [ %i.bu, %.lr.ph.i.i25 ] ; 4 uses
  %i.bw = sub i64 %i.d, %i.aq                     ; 3 uses
  %.neg = add i64 %i.aq, 1
  %xtraiter94 = and i64 %i.bw, 1
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %i.bx = add nsw i64 %i.bw, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.by = load i32, ptr %.sroa.0.0.lcssa.i.i, align 4, !tbaa !79
  store i32 %i.by, ptr %.0.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.0.lcssa.i.i, align 4, !tbaa !79
  %i.bz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %.lr.ph.i15.i.prol.loopexit

.lr.ph.i15.i.prol.loopexit:                       ; preds = %.lr.ph.i15.i.prol, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.018.i.i.unr = phi i64 [ %i.bw, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.bx, %.lr.ph.i15.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cc, %.lr.ph.i15.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cb, %.lr.ph.i15.i.prol ]
  %i.cd = icmp eq i64 %i.d, %.neg
  br i1 %i.cd, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i
  %.018.i.i = phi i64 [ %i.cj, %.lr.ph.i15.i ], [ %.018.i.i.unr, %.lr.ph.i15.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.co, %.lr.ph.i15.i ], [ %.01417.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.cn, %.lr.ph.i15.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.ce = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !79
  store i32 %i.ce, ptr %.01417.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.016.i.i, align 4, !tbaa !79
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.cj = add i64 %.018.i.i, -2                   ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !79
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !79
  store i32 0, ptr %i.ch, align 4, !tbaa !79
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %.not.i16.i.1 = icmp eq i64 %i.cj, 0
  br i1 %.not.i16.i.1, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i, !llvm.loop !545
end_hunk_5
begin_hunk_6_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_:bb.a
  %i.bv = getelementptr i8, ptr %i.ag, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !79, !alias.scope !583
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !79, !alias.scope !583
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !79, !alias.scope !584, !noalias !583
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !79, !alias.scope !584, !noalias !583
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !79, !alias.scope !583
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !79, !alias.scope !583
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader74

.lr.ph.i40.i.i.i.preheader74:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader74, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !79
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !79
  store i32 0, ptr %i.cc, align 4, !tbaa !79
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !570

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check33 = icmp ult i64 %3, 8
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.a, i64 %i.cf
  %scevgep28 = getelementptr i8, ptr %4, i64 %i.cf
  %bound029 = icmp ult ptr %i.a, %scevgep28
  %bound130 = icmp ult ptr %4, %scevgep27
  %found.conflict31 = and i1 %bound029, %bound130
  br i1 %found.conflict31, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck26
  %n.vec35 = and i64 %3, -8                       ; 3 uses
  %i.cg = and i64 %3, 7
  %i.ch = shl i64 %n.vec35, 2                     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch
  %i.cj = getelementptr i8, ptr %4, i64 %i.ch
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.ck = shl i64 %index37, 2                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.a, i64 %i.ck ; 2 uses
  %next.gep39 = getelementptr i8, ptr %4, i64 %i.ck ; 3 uses
  %i.cl = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !79, !alias.scope !585
  %wide.load41 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !79, !alias.scope !585
  %i.cm = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load40, ptr %next.gep38, align 4, !tbaa !79, !alias.scope !586, !noalias !585
  store <4 x i32> %wide.load41, ptr %i.cm, align 4, !tbaa !79, !alias.scope !586, !noalias !585
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !79, !alias.scope !585
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !79, !alias.scope !585
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.cn, label %middle.block43, label %vector.body36, !llvm.loop !574

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %3, %n.vec35
  br i1 %cmp.n44, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck26, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block43
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck26 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cg, %middle.block43 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck26 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block43 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck26 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block43 ] ; 2 uses
  %i.co = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter75 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cp = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cq = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.cq, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter75
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !575

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %i.ct = icmp ult i64 %i.co, 3
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cu = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.cu, ptr %.048.i.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !79
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !79
  store i32 0, ptr %i.cv, align 4, !tbaa !79
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !79
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !79
  store i32 0, ptr %i.cy, align 4, !tbaa !79
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dd = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !79
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !79
  store i32 0, ptr %i.db, align 4, !tbaa !79
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !576

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i48.i.i.i ], [ %i.dh, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.di = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  store i32 %i.di, ptr %.01517.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dl = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dl, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !12

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i52.i.i.i.preheader71, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %scevgep50 = getelementptr i8, ptr %4, i64 %i.ad
  %bound051 = icmp ult ptr %i.a, %scevgep50
  %bound152 = icmp ult ptr %4, %i.i
  %found.conflict53 = and i1 %bound051, %bound152
  br i1 %found.conflict53, label %.lr.ph.i.i52.i.i.i.preheader71, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck48
  %n.vec57 = and i64 %i.ae, -8                    ; 3 uses
  %i.dn = and i64 %i.ae, 7
  %i.do = shl nsw i64 %n.vec57, 2                 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.a, i64 %i.do
  %i.dq = getelementptr i8, ptr %4, i64 %i.do     ; 2 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next64, %vector.body58 ] ; 2 uses
  %i.dr = shl i64 %index59, 2                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.a, i64 %i.dr ; 2 uses
  %next.gep61 = getelementptr i8, ptr %4, i64 %i.dr ; 3 uses
  %i.ds = getelementptr i8, ptr %next.gep61, i64 16 ; 2 uses
  %wide.load62 = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !79, !alias.scope !587
  %wide.load63 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !79, !alias.scope !587
  %i.dt = getelementptr i8, ptr %next.gep60, i64 16
  store <4 x i32> %wide.load62, ptr %next.gep60, align 4, !tbaa !79, !alias.scope !588, !noalias !587
  store <4 x i32> %wide.load63, ptr %i.dt, align 4, !tbaa !79, !alias.scope !588, !noalias !587
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !79, !alias.scope !587
  store <4 x i32> zeroinitializer, ptr %i.ds, align 4, !tbaa !79, !alias.scope !587
  %index.next64 = add nuw i64 %index59, 8         ; 2 uses
  %i.du = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.du, label %middle.block65, label %vector.body58, !llvm.loop !580

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %i.ae, %n.vec57
  br i1 %cmp.n66, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader71

.lr.ph.i.i52.i.i.i.preheader71:                   ; preds = %vector.memcheck48, %.lr.ph.i.i52.i.i.i.preheader, %middle.block65
  %.09.i.i53.i.i.i.ph = phi i64 [ %i.ae, %vector.memcheck48 ], [ %i.ae, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dn, %middle.block65 ] ; 4 uses
  %.048.i.i54.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck48 ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %middle.block65 ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.ph = phi ptr [ %4, %vector.memcheck48 ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %middle.block65 ] ; 2 uses
  %i.dv = add nsw i64 %.09.i.i53.i.i.i.ph, -1
  %xtraiter77 = and i64 %.09.i.i53.i.i.i.ph, 3    ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader71, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph.i.i52.i.i.i.prol ], [ %.09.i.i53.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dz, %.lr.ph.i.i52.i.i.i.prol ], [ %.048.i.i54.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dy, %.lr.ph.i.i52.i.i.i.prol ], [ %.sroa.0.07.i.i55.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ] ; 3 uses
  %prol.iter79 = phi i64 [ %prol.iter79.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader71 ]
  %i.dw = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dx = load i32, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.dx, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 4, !tbaa !79
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 4 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter79.next = add i64 %prol.iter79, 1     ; 2 uses
  %prol.iter79.cmp.not = icmp eq i64 %prol.iter79.next, %xtraiter77
  br i1 %prol.iter79.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !581

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader71
  %.lcssa72.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader71 ], [ %i.dy, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %.09.i.i53.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ], [ %i.dw, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %.048.i.i54.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ], [ %i.dz, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i55.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ], [ %i.dy, %.lr.ph.i.i52.i.i.i.prol ]
  %i.ea = icmp ult i64 %i.dv, 3
  br i1 %i.ea, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 6 uses
  %i.eb = load i32, ptr %.sroa.0.07.i.i55.i.i.i, align 4, !tbaa !79
  store i32 %i.eb, ptr %.048.i.i54.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i55.i.i.i, align 4, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !79
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !79
  store i32 0, ptr %i.ec, align 4, !tbaa !79
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !79
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !79
  store i32 0, ptr %i.ef, align 4, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 12 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ek = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.el = load i32, ptr %i.ei, align 4, !tbaa !79
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !79
  store i32 0, ptr %i.ei, align 4, !tbaa !79
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !582

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i, %middle.block65
  %.lcssa = phi ptr [ %i.dq, %middle.block65 ], [ %.lcssa72.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.em, %.lr.ph.i.i52.i.i.i ] ; 4 uses
  %5 = sub nuw i64 %3, %i.ae                      ; 4 uses
  %.not15.i.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a: ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i
  %.neg = add nsw i64 %i.ae, 1
  %xtraiter80 = and i64 %5, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.eo = load i32, ptr %.lcssa, align 4, !tbaa !79
  store i32 %i.eo, ptr %i.i, align 4, !tbaa !79
  store i32 0, ptr %.lcssa, align 4, !tbaa !79
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.et = add nsw i64 %5, -1
  br label %.lr.ph.i.i60.i.i.i.prol.loopexit

.lr.ph.i.i60.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i60.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a
  %.018.i.i.i.i.i.unr = phi i64 [ %5, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a ], [ %i.et, %.lr.ph.i.i60.i.i.i.prol ]
  %.01417.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a ], [ %i.es, %.lr.ph.i.i60.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.unr = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a ], [ %i.er, %.lr.ph.i.i60.i.i.i.prol ]
  %i.eu = icmp eq i64 %3, %.neg
  br i1 %i.eu, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i

.lr.ph.i.i60.i.i.i:                               ; preds = %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i
  %.018.i.i.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i60.i.i.i ], [ %.018.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i60.i.i.i ], [ %.01417.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i60.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i) ]
  %i.ev = load i32, ptr %.sroa.0.016.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.ev, ptr %.01417.i.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.016.i.i.i.i.i, align 4, !tbaa !79
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 2 uses
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 4
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !79
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !79
  store i32 0, ptr %i.ey, align 4, !tbaa !79
  %i.fb = add i32 %i.ew, 2
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 8
  %i.fe = add i64 %.018.i.i.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.i.i.1 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i61.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i, !llvm.loop !11

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block43, %bb.c, %bb.d, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i
  %i.ff = add i64 %i.e, %3
  store i64 %i.ff, ptr %i.d, align 8, !tbaa !76
  store ptr %i.a, ptr %0, align 8, !tbaa !100
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 6 uses
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4611686018427387903)
  %i.n = select i1 %i.k, i64 4611686018427387903, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i64 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0.i.i) ; 3 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %bb.g, !prof !32

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = icmp samesign ugt i64 %i.p, 2305843009213693951
  br i1 %i.r, label %bb.h, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !32

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.s = shl nuw nsw i64 %i.p, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #23 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !75     ; 9 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !82   ; 8 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.u, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.t, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.x = load i32, ptr %.018.i.i.i, align 4, !tbaa !79
  store i32 %i.x, ptr %.01517.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !79
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.t, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ab, %.lr.ph.i.i.i ] ; 4 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = load i32, ptr %4, align 4, !tbaa !79
  store i32 %i.ac, ptr %.015.lcssa.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %4, align 4, !tbaa !79
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i, i64 4
  %i.ah = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.prol ]
  %i.ai = icmp eq i64 %3, 1
  br i1 %i.ai, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.aj = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  store i32 %i.aj, ptr %.01417.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 2 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !79
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !79
  store i32 0, ptr %i.am, align 4, !tbaa !79
  %i.ap = add i32 %i.ak, 2
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.as = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.ax, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ay, %.lr.ph.i20.i.i ], [ %i.at, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.au = load i32, ptr %.018.i21.i.i, align 4, !tbaa !79
  store i32 %i.au, ptr %.01517.i22.i.i, align 4, !tbaa !79
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !79
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ax, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !12

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter17 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  br i1 %lcmp.mod18.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.az = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !79
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter17
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !589

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.prol ]
  %i.bd = icmp ult i64 %i.v, 4
  br i1 %i.bd, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bl, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
end_hunk_6
begin_hunk_7_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_:bb.a
  %i.bv = getelementptr i8, ptr %i.ag, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !79, !alias.scope !658
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !79, !alias.scope !658
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !79, !alias.scope !659, !noalias !658
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !79, !alias.scope !659, !noalias !658
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !79, !alias.scope !658
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !79, !alias.scope !658
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader74

.lr.ph.i40.i.i.i.preheader74:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader74, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !79
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !79
  store i32 0, ptr %i.cc, align 4, !tbaa !79
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !645

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check33 = icmp ult i64 %3, 8
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.a, i64 %i.cf
  %scevgep28 = getelementptr i8, ptr %4, i64 %i.cf
  %bound029 = icmp ult ptr %i.a, %scevgep28
  %bound130 = icmp ult ptr %4, %scevgep27
  %found.conflict31 = and i1 %bound029, %bound130
  br i1 %found.conflict31, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck26
  %n.vec35 = and i64 %3, -8                       ; 3 uses
  %i.cg = and i64 %3, 7
  %i.ch = shl i64 %n.vec35, 2                     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch
  %i.cj = getelementptr i8, ptr %4, i64 %i.ch
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.ck = shl i64 %index37, 2                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.a, i64 %i.ck ; 2 uses
  %next.gep39 = getelementptr i8, ptr %4, i64 %i.ck ; 3 uses
  %i.cl = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !79, !alias.scope !660
  %wide.load41 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !79, !alias.scope !660
  %i.cm = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load40, ptr %next.gep38, align 4, !tbaa !79, !alias.scope !661, !noalias !660
  store <4 x i32> %wide.load41, ptr %i.cm, align 4, !tbaa !79, !alias.scope !661, !noalias !660
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !79, !alias.scope !660
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !79, !alias.scope !660
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.cn, label %middle.block43, label %vector.body36, !llvm.loop !649

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %3, %n.vec35
  br i1 %cmp.n44, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck26, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block43
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck26 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cg, %middle.block43 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck26 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block43 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck26 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block43 ] ; 2 uses
  %i.co = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter75 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cp = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cq = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.cq, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter75
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !650

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %i.ct = icmp ult i64 %i.co, 3
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cu = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.cu, ptr %.048.i.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !79
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !79
  store i32 0, ptr %i.cv, align 4, !tbaa !79
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !79
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !79
  store i32 0, ptr %i.cy, align 4, !tbaa !79
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dd = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !79
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !79
  store i32 0, ptr %i.db, align 4, !tbaa !79
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !651

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i48.i.i.i ], [ %i.dh, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.di = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  store i32 %i.di, ptr %.01517.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dl = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dl, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !13

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i52.i.i.i.preheader71, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %scevgep50 = getelementptr i8, ptr %4, i64 %i.ad
  %bound051 = icmp ult ptr %i.a, %scevgep50
  %bound152 = icmp ult ptr %4, %i.i
  %found.conflict53 = and i1 %bound051, %bound152
  br i1 %found.conflict53, label %.lr.ph.i.i52.i.i.i.preheader71, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck48
  %n.vec57 = and i64 %i.ae, -8                    ; 3 uses
  %i.dn = and i64 %i.ae, 7
  %i.do = shl nsw i64 %n.vec57, 2                 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.a, i64 %i.do
  %i.dq = getelementptr i8, ptr %4, i64 %i.do     ; 2 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next64, %vector.body58 ] ; 2 uses
  %i.dr = shl i64 %index59, 2                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.a, i64 %i.dr ; 2 uses
  %next.gep61 = getelementptr i8, ptr %4, i64 %i.dr ; 3 uses
  %i.ds = getelementptr i8, ptr %next.gep61, i64 16 ; 2 uses
  %wide.load62 = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !79, !alias.scope !662
  %wide.load63 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !79, !alias.scope !662
  %i.dt = getelementptr i8, ptr %next.gep60, i64 16
  store <4 x i32> %wide.load62, ptr %next.gep60, align 4, !tbaa !79, !alias.scope !663, !noalias !662
  store <4 x i32> %wide.load63, ptr %i.dt, align 4, !tbaa !79, !alias.scope !663, !noalias !662
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !79, !alias.scope !662
  store <4 x i32> zeroinitializer, ptr %i.ds, align 4, !tbaa !79, !alias.scope !662
  %index.next64 = add nuw i64 %index59, 8         ; 2 uses
  %i.du = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.du, label %middle.block65, label %vector.body58, !llvm.loop !655

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %i.ae, %n.vec57
  br i1 %cmp.n66, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader71

.lr.ph.i.i52.i.i.i.preheader71:                   ; preds = %vector.memcheck48, %.lr.ph.i.i52.i.i.i.preheader, %middle.block65
  %.09.i.i53.i.i.i.ph = phi i64 [ %i.ae, %vector.memcheck48 ], [ %i.ae, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dn, %middle.block65 ] ; 4 uses
  %.048.i.i54.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck48 ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %middle.block65 ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.ph = phi ptr [ %4, %vector.memcheck48 ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %middle.block65 ] ; 2 uses
  %i.dv = add nsw i64 %.09.i.i53.i.i.i.ph, -1
  %xtraiter77 = and i64 %.09.i.i53.i.i.i.ph, 3    ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader71, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph.i.i52.i.i.i.prol ], [ %.09.i.i53.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dz, %.lr.ph.i.i52.i.i.i.prol ], [ %.048.i.i54.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dy, %.lr.ph.i.i52.i.i.i.prol ], [ %.sroa.0.07.i.i55.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ] ; 3 uses
  %prol.iter79 = phi i64 [ %prol.iter79.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader71 ]
  %i.dw = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dx = load i32, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.dx, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 4, !tbaa !79
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 4 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter79.next = add i64 %prol.iter79, 1     ; 2 uses
  %prol.iter79.cmp.not = icmp eq i64 %prol.iter79.next, %xtraiter77
  br i1 %prol.iter79.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !656

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader71
  %.lcssa72.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader71 ], [ %i.dy, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %.09.i.i53.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ], [ %i.dw, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %.048.i.i54.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ], [ %i.dz, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i55.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader71 ], [ %i.dy, %.lr.ph.i.i52.i.i.i.prol ]
  %i.ea = icmp ult i64 %i.dv, 3
  br i1 %i.ea, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 6 uses
  %i.eb = load i32, ptr %.sroa.0.07.i.i55.i.i.i, align 4, !tbaa !79
  store i32 %i.eb, ptr %.048.i.i54.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i55.i.i.i, align 4, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !79
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !79
  store i32 0, ptr %i.ec, align 4, !tbaa !79
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !79
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !79
  store i32 0, ptr %i.ef, align 4, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 12 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ek = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.el = load i32, ptr %i.ei, align 4, !tbaa !79
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !79
  store i32 0, ptr %i.ei, align 4, !tbaa !79
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !657

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i, %middle.block65
  %.lcssa = phi ptr [ %i.dq, %middle.block65 ], [ %.lcssa72.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.em, %.lr.ph.i.i52.i.i.i ] ; 4 uses
  %5 = sub nuw i64 %3, %i.ae                      ; 4 uses
  %.not15.i.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a: ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i
  %.neg = add nsw i64 %i.ae, 1
  %xtraiter80 = and i64 %5, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.eo = load i32, ptr %.lcssa, align 4, !tbaa !79
  store i32 %i.eo, ptr %i.i, align 4, !tbaa !79
  store i32 0, ptr %.lcssa, align 4, !tbaa !79
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.et = add nsw i64 %5, -1
  br label %.lr.ph.i.i60.i.i.i.prol.loopexit

.lr.ph.i.i60.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i60.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a
  %.018.i.i.i.i.i.unr = phi i64 [ %5, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a ], [ %i.et, %.lr.ph.i.i60.i.i.i.prol ]
  %.01417.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a ], [ %i.es, %.lr.ph.i.i60.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.unr = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i.a ], [ %i.er, %.lr.ph.i.i60.i.i.i.prol ]
  %i.eu = icmp eq i64 %3, %.neg
  br i1 %i.eu, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i

.lr.ph.i.i60.i.i.i:                               ; preds = %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i
  %.018.i.i.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i60.i.i.i ], [ %.018.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i60.i.i.i ], [ %.01417.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i60.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i) ]
  %i.ev = load i32, ptr %.sroa.0.016.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.ev, ptr %.01417.i.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.016.i.i.i.i.i, align 4, !tbaa !79
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 2 uses
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 4
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !79
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !79
  store i32 0, ptr %i.ey, align 4, !tbaa !79
  %i.fb = add i32 %i.ew, 2
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 8
  %i.fe = add i64 %.018.i.i.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.i.i.1 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i61.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i, !llvm.loop !14

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block43, %bb.c, %bb.d, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i
  %i.ff = add i64 %i.e, %3
  store i64 %i.ff, ptr %i.d, align 8, !tbaa !88
  store ptr %i.a, ptr %0, align 8, !tbaa !100
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89   ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %bb.g, !prof !32

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.q, i64 noundef 4) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !87
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.r, i64 noundef %i.o, ptr noundef %2, i64 noundef %3, ptr %4)
  %i.w = load ptr, ptr %1, align 8, !tbaa !87
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.v
  store ptr %i.x, ptr %0, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE24prot_shrink_to_fit_smallEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !101    ; 13 uses
  %.not22 = icmp eq ptr %i.c, %1
  br i1 %.not22, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 12 uses
  %.not23 = icmp eq i64 %i.e, 0
  br i1 %.not23, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not24 = icmp eq ptr %i.c, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.f, %i.c
  %or.cond = select i1 %.not24, i1 true, i1 %i.g, !prof !40
  br i1 %or.cond, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.c)
          to label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.e, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !101
  store i64 %2, ptr %i.a, align 8, !tbaa !33
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %.not25 = icmp ugt i64 %i.e, %2
  br i1 %.not25, label %bb.j, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %xtraiter = and i64 %i.e, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.j = add nsw i64 %i.e, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.k = load i32, ptr %i.c, align 4, !tbaa !79
  store i32 %i.k, ptr %1, align 4, !tbaa !79
  store i32 0, ptr %i.c, align 4, !tbaa !79
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.unr = phi i64 [ %i.e, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.p = icmp eq i64 %i.e, 1
  br i1 %i.p, label %.lr.ph.i27.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.q = load i32, ptr %.0819.i, align 4, !tbaa !79
  store i32 %i.q, ptr %.01618.i, align 4, !tbaa !79
  store i32 0, ptr %.0819.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.v = add i64 %.020.i, -2                      ; 2 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !79
  store i32 %i.w, ptr %i.u, align 4, !tbaa !79
  store i32 0, ptr %i.t, align 4, !tbaa !79
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i.1 = icmp eq i64 %i.v, 0
  br i1 %.not.i.1, label %.lr.ph.i27.preheader, label %.lr.ph.i, !llvm.loop !15

.lr.ph.i27.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %xtraiter37 = and i64 %i.e, 3                   ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol

.lr.ph.i27.prol:                                  ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27.prol
  %.05.i.prol = phi i64 [ %i.ab, %.lr.ph.i27.prol ], [ %i.e, %.lr.ph.i27.preheader ]
  %storemerge4.i.prol = phi ptr [ %i.ae, %.lr.ph.i27.prol ], [ %i.c, %.lr.ph.i27.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i27.prol ], [ 0, %.lr.ph.i27.preheader ]
  %i.ab = add i64 %.05.i.prol, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.prol, align 4, !tbaa !79
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter37
  br i1 %prol.iter.cmp.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol, !llvm.loop !664

.lr.ph.i27.prol.loopexit:                         ; preds = %.lr.ph.i27.prol, %.lr.ph.i27.preheader
  %.05.i.unr = phi i64 [ %i.e, %.lr.ph.i27.preheader ], [ %i.ab, %.lr.ph.i27.prol ]
  %storemerge4.i.unr = phi ptr [ %i.c, %.lr.ph.i27.preheader ], [ %i.ae, %.lr.ph.i27.prol ]
  %i.af = icmp ult i64 %i.e, 4
  br i1 %i.af, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i27

end_hunk_7
