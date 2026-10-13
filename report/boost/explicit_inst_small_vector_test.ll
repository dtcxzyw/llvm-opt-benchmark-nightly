Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_small_vector_test?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1057
loop-unroll.NumRuntimeUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS2_16simple_allocatorIS3_EEvEC2EmRKS3_RKS5_:bb.a
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
  %xtraiter132 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !79
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !362

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
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #20
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !75
  store i64 %i.f, ptr %i.g, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !85    ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check87, label %.lr.ph.i.i13.preheader111, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %i.ar = getelementptr i8, ptr %i.k, i64 %i.aq   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.ar, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %i.k, %i.as
  %bound190 = icmp ult ptr %i.ah, %i.ar
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ugt ptr %i.as, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound193 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  br i1 %conflict.rdx95, label %.lr.ph.i.i13.preheader111, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec97 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec97, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.k, i64 %i.at   ; 2 uses
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next105, %vector.body98 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph96 ], [ %i.ba, %vector.body98 ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph96 ], [ %i.bb, %vector.body98 ]
  %i.ax = shl i64 %index99, 2                     ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.k, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load103 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !79, !alias.scope !380
  %wide.load104 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !79, !alias.scope !380
  %i.az = getelementptr i8, ptr %next.gep102, i64 16
  store <4 x i32> %wide.load103, ptr %next.gep102, align 4, !tbaa !79, !alias.scope !381, !noalias !382
  store <4 x i32> %wide.load104, ptr %i.az, align 4, !tbaa !79, !alias.scope !381, !noalias !382
  %i.ba = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bb = add <4 x i32> %vec.phi100, splat (i32 1) ; 2 uses
  %index.next105 = add nuw i64 %index99, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next105, %n.vec97
  br i1 %i.bc, label %middle.block106, label %vector.body98, !llvm.loop !367

middle.block106:                                  ; preds = %vector.body98
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62, !alias.scope !383, !noalias !380
  %cmp.n107 = icmp eq i64 %i.ao, %n.vec97
  br i1 %cmp.n107, label %.loopexit, label %.lr.ph.i.i13.preheader111

.lr.ph.i.i13.preheader111:                        ; preds = %vector.memcheck88, %.lr.ph.i.i13.preheader, %middle.block106
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck88 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bd, %middle.block106 ]
  %.ph112 = phi ptr [ %i.ah, %vector.memcheck88 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block106 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck88 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.av, %middle.block106 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader111, %.lr.ph.i.i13
  %i.be = phi i32 [ %i.bh, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader111 ]
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.ph112, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bj, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !79
  store i32 %i.bg, ptr %.011.i.i, align 4, !tbaa !79
  %i.bh = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bi, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !368

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block106, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.av, %middle.block106 ], [ %i.bj, %.lr.ph.i.i13 ]
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
  br i1 %or.cond, label %.lr.ph.i.i19.preheader115, label %vector.ph63

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
  br i1 %cmp.n73, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader115

.lr.ph.i.i19.preheader115:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block72
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block72 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block72 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i19.preheader ], [ %i.bx, %middle.block72 ] ; 4 uses
  %i.cc = add i64 %.04.i.i.ph, -1
  %xtraiter125 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader115, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ]
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader115 ]
  %i.cd = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.ce = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !79, !noalias !384
  store i32 %i.ce, ptr %.0.i.prol, align 4, !tbaa !79, !noalias !384
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !372

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader115
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cd, %.lr.ph.i.i19.prol ]
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
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !79, !noalias !384
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !79, !noalias !384
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !79, !noalias !384
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !79, !noalias !384
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !79, !noalias !384
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !79, !noalias !384
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !79, !noalias !384
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dd = add i64 %.04.i.i, -8                    ; 2 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !79, !noalias !384
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !79, !noalias !384
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m:bb.a
  store i32 0, ptr %.0819.i, align 4, !tbaa !79
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.al = add i64 %.020.i, -2                     ; 2 uses
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !79
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !79
  store i32 0, ptr %i.aj, align 4, !tbaa !79
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.1, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEEED2Ev.exit, label %.lr.ph.i, !llvm.loop !10

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEEED2Ev.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  store i64 %i.y, ptr %i.s, align 8, !tbaa !76
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !82  ; 5 uses
  %.not3.i83 = icmp eq i64 %i.ar, 0
  br i1 %.not3.i83, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEEED2Ev.exit
  %xtraiter126 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol

.lr.ph.i84.prol:                                  ; preds = %.lr.ph.i84.preheader, %.lr.ph.i84.prol
  %.05.i.prol = phi i64 [ %i.as, %.lr.ph.i84.prol ], [ %i.ar, %.lr.ph.i84.preheader ]
  %storemerge4.i.prol = phi ptr [ %i.av, %.lr.ph.i84.prol ], [ %i.w, %.lr.ph.i84.preheader ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.i84.prol ], [ 0, %.lr.ph.i84.preheader ]
  %i.as = add i64 %.05.i.prol, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.prol, align 4, !tbaa !79
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.prol, i64 4 ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol, !llvm.loop !557

.lr.ph.i84.prol.loopexit:                         ; preds = %.lr.ph.i84.prol, %.lr.ph.i84.preheader
  %.05.i.unr = phi i64 [ %i.ar, %.lr.ph.i84.preheader ], [ %i.as, %.lr.ph.i84.prol ]
  %storemerge4.i.unr = phi ptr [ %i.w, %.lr.ph.i84.preheader ], [ %i.av, %.lr.ph.i84.prol ]
  %i.aw = icmp ult i64 %i.ar, 4
  br i1 %i.aw, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84
  %.05.i = phi i64 [ %i.be, %.lr.ph.i84 ], [ %.05.i.unr, %.lr.ph.i84.prol.loopexit ]
  %storemerge4.i = phi ptr [ %i.bg, %.lr.ph.i84 ], [ %storemerge4.i.unr, %.lr.ph.i84.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !79
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !79
  %i.ba = add i32 %i.ax, -2
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !79
  %i.bc = add i32 %i.ax, -3
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 12
  %i.be = add i64 %.05.i, -4                      ; 2 uses
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !79
  %i.bf = add i32 %i.ax, -4
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %.not.i85.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i85.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84, !llvm.loop !1

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit: ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84, %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIvEEvEEED2Ev.exit
  store ptr %i.r, ptr %i.q, align 8, !tbaa !98
  store <2 x i64> %i.u, ptr %i.x, align 8, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !82
  %i.bl = icmp ult i64 %i.bi, %i.bk               ; 4 uses
  %i.bm = select i1 %i.bl, ptr %0, ptr %1         ; 2 uses
  %i.bn = select i1 %i.bl, ptr %1, ptr %0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !82 ; 8 uses
  %.not79112 = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %i.bl, ptr %i.b, ptr %i.c     ; 2 uses
  %i.br = select i1 %i.bl, ptr %i.c, ptr %i.b     ; 2 uses
  br i1 %.not79112, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.idx111 = shl nsw i64 %i.bp, 2
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %.idx111 ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bp
  store ptr %i.bt, ptr %3, align 8, !tbaa !84, !alias.scope !564
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !82, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bw = sub nsw i64 %i.bv, %i.bp
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.91") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bw, ptr %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !82 ; 2 uses
  %i.by = sub i64 %i.bx, %i.bp                    ; 4 uses
  %.not3.i93 = icmp eq i64 %i.by, 0
  br i1 %.not3.i93, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, label %.lr.ph.i94.preheader

.lr.ph.i94.preheader:                             ; preds = %._crit_edge
  %xtraiter = and i64 %i.by, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i94.prol.loopexit, label %.lr.ph.i94.prol

.lr.ph.i94.prol:                                  ; preds = %.lr.ph.i94.preheader, %.lr.ph.i94.prol
  %.05.i95.prol = phi i64 [ %i.bz, %.lr.ph.i94.prol ], [ %i.by, %.lr.ph.i94.preheader ]
  %storemerge4.i96.prol = phi ptr [ %i.cc, %.lr.ph.i94.prol ], [ %i.bs, %.lr.ph.i94.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i94.prol ], [ 0, %.lr.ph.i94.preheader ]
  %i.bz = add i64 %.05.i95.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i96.prol, align 4, !tbaa !79
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i96.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i94.prol.loopexit, label %.lr.ph.i94.prol, !llvm.loop !562

.lr.ph.i94.prol.loopexit:                         ; preds = %.lr.ph.i94.prol, %.lr.ph.i94.preheader
  %.05.i95.unr = phi i64 [ %i.by, %.lr.ph.i94.preheader ], [ %i.bz, %.lr.ph.i94.prol ]
  %storemerge4.i96.unr = phi ptr [ %i.bs, %.lr.ph.i94.preheader ], [ %i.cc, %.lr.ph.i94.prol ]
  %i.cd = sub i64 %i.bp, %i.bx
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94
  %.05.i95 = phi i64 [ %i.cm, %.lr.ph.i94 ], [ %.05.i95.unr, %.lr.ph.i94.prol.loopexit ]
  %storemerge4.i96 = phi ptr [ %i.co, %.lr.ph.i94 ], [ %storemerge4.i96.unr, %.lr.ph.i94.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i96, align 4, !tbaa !79
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 4
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !79
  %i.ci = add i32 %i.cf, -2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 8
  store i32 -2147483648, ptr %i.cj, align 4, !tbaa !79
  %i.ck = add i32 %i.cf, -3
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 12
  %i.cm = add i64 %.05.i95, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !79
  %i.cn = add i32 %i.cf, -4
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 16
  %.not.i97.3 = icmp eq i64 %i.cm, 0
  br i1 %.not.i97.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, label %.lr.ph.i94, !llvm.loop !1

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98: ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94, %._crit_edge
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !76
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0113 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %.0113 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.0113 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !79
  store i32 0, ptr %i.cp, align 4, !tbaa !79
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !79
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !79
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !79
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cx = add nuw i64 %.0113, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.cx, %i.bp
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !563

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !85     ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82   ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !75     ; 7 uses
  %5 = ptrtoaddr ptr %i.g to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !79
  store i32 %i.j, ptr %i.h, align 4, !tbaa !79
  store i32 0, ptr %4, align 4, !tbaa !79
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp eq i64 %3, 1
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  store i32 %i.q, ptr %.01417.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !79
  store i32 %i.v, ptr %i.u, align 4, !tbaa !79
  store i32 0, ptr %i.t, align 4, !tbaa !79
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.z = add i64 %.018.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ad, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub i64 0, %3
  %i.af = getelementptr [4 x i8], ptr %i.h, i64 %i.ae ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ag = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !79
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !79
  store i32 0, ptr %i.af, align 4, !tbaa !79
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !79
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !79
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !79
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !79
  store i32 0, ptr %i.aq, align 4, !tbaa !79
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !10

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.ay = shl nuw nsw i64 %i.e, 2
  %i.az = shl i64 %3, 2
  %i.ba = add i64 %i.ay, %5
  %i.bb = add i64 %i.ba, -4
  %i.bc = add i64 %i.az, %i.ab
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bg = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bh = shl i64 %3, 2                           ; 2 uses
  %i.bi = add i64 %i.bg, %5
  %i.bj = add i64 %i.bi, -4
  %i.bk = add i64 %i.bh, %i.ab
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = add nsw i64 %i.bg, -4                   ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr i8, ptr %i.g, i64 %i.bo
  %i.bq = add i64 %i.bh, %i.bm
  %i.br = sub i64 %i.bn, %i.bq
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %bound0 = icmp ult ptr %i.bp, %i.af
  %bound1 = icmp ult ptr %i.bs, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.af, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bw ; 2 uses
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
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !79
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !79
  store i32 0, ptr %i.cc, align 4, !tbaa !79
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !570

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  %bound034 = icmp ult ptr %i.a, %i.ch
  %bound135 = icmp ult ptr %4, %i.cg
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.ci = and i64 %3, 7
  %i.cj = shl i64 %n.vec38, 2                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.a, i64 %i.cj
  %i.cl = getelementptr i8, ptr %4, i64 %i.cj
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cm = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !585
  %wide.load44 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !79, !alias.scope !585
  %i.co = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !79, !alias.scope !586, !noalias !585
  store <4 x i32> %wide.load44, ptr %i.co, align 4, !tbaa !79, !alias.scope !586, !noalias !585
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !585
  store <4 x i32> zeroinitializer, ptr %i.cn, align 4, !tbaa !79, !alias.scope !585
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cp, label %middle.block46, label %vector.body39, !llvm.loop !574

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ck, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %i.cq = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cr = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.cs, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !575

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %i.cv = icmp ult i64 %i.cq, 3
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.cw, ptr %.048.i.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !79
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !79
  store i32 0, ptr %i.cx, align 4, !tbaa !79
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !79
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !79
  store i32 0, ptr %i.da, align 4, !tbaa !79
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.df = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !79
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !79
  store i32 0, ptr %i.dd, align 4, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !576

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dn, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.dj, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dn, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !12

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_Lj2ELj0EEEvEEEEvRT_m:bb.a
  store i32 0, ptr %.0819.i, align 4, !tbaa !79
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.al = add i64 %.020.i, -2                     ; 2 uses
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !79
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !79
  store i32 0, ptr %i.aj, align 4, !tbaa !79
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.1, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEED2Ev.exit, label %.lr.ph.i, !llvm.loop !15

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEED2Ev.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  store i64 %i.y, ptr %i.s, align 8, !tbaa !88
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !91  ; 5 uses
  %.not3.i83 = icmp eq i64 %i.ar, 0
  br i1 %.not3.i83, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEED2Ev.exit
  %xtraiter117 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol

.lr.ph.i84.prol:                                  ; preds = %.lr.ph.i84.preheader, %.lr.ph.i84.prol
  %.05.i.prol = phi i64 [ %i.as, %.lr.ph.i84.prol ], [ %i.ar, %.lr.ph.i84.preheader ]
  %storemerge4.i.prol = phi ptr [ %i.av, %.lr.ph.i84.prol ], [ %i.w, %.lr.ph.i84.preheader ] ; 2 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph.i84.prol ], [ 0, %.lr.ph.i84.preheader ]
  %i.as = add i64 %.05.i.prol, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.prol, align 4, !tbaa !79
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.prol, i64 4 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol, !llvm.loop !632

.lr.ph.i84.prol.loopexit:                         ; preds = %.lr.ph.i84.prol, %.lr.ph.i84.preheader
  %.05.i.unr = phi i64 [ %i.ar, %.lr.ph.i84.preheader ], [ %i.as, %.lr.ph.i84.prol ]
  %storemerge4.i.unr = phi ptr [ %i.w, %.lr.ph.i84.preheader ], [ %i.av, %.lr.ph.i84.prol ]
  %i.aw = icmp ult i64 %i.ar, 4
  br i1 %i.aw, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84
  %.05.i = phi i64 [ %i.be, %.lr.ph.i84 ], [ %.05.i.unr, %.lr.ph.i84.prol.loopexit ]
  %storemerge4.i = phi ptr [ %i.bg, %.lr.ph.i84 ], [ %storemerge4.i.unr, %.lr.ph.i84.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !79
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !79
  %i.ba = add i32 %i.ax, -2
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !79
  %i.bc = add i32 %i.ax, -3
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 12
  %i.be = add i64 %.05.i, -4                      ; 2 uses
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !79
  %i.bf = add i32 %i.ax, -4
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %.not.i85.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i85.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84, !llvm.loop !6

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit: ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84, %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEED2Ev.exit
  store ptr %i.r, ptr %i.q, align 8, !tbaa !101
  store <2 x i64> %i.u, ptr %i.x, align 8, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !91
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !91
  %i.bl = icmp ult i64 %i.bi, %i.bk               ; 4 uses
  %i.bm = select i1 %i.bl, ptr %0, ptr %1         ; 2 uses
  %i.bn = select i1 %i.bl, ptr %1, ptr %0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !91 ; 8 uses
  %.not79103 = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %i.bl, ptr %i.b, ptr %i.c     ; 2 uses
  %i.br = select i1 %i.bl, ptr %i.c, ptr %i.b     ; 2 uses
  br i1 %.not79103, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.idx102 = shl nsw i64 %i.bp, 2
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %.idx102 ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bp
  store ptr %i.bt, ptr %3, align 8, !tbaa !84, !alias.scope !639
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !91, !noalias !640
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bw = sub nsw i64 %i.bv, %i.bp
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.91") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bw, ptr %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  %i.by = sub i64 %i.bx, %i.bp                    ; 4 uses
  %.not3.i90 = icmp eq i64 %i.by, 0
  br i1 %.not3.i90, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, label %.lr.ph.i91.preheader

.lr.ph.i91.preheader:                             ; preds = %._crit_edge
  %xtraiter = and i64 %i.by, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i91.prol.loopexit, label %.lr.ph.i91.prol

.lr.ph.i91.prol:                                  ; preds = %.lr.ph.i91.preheader, %.lr.ph.i91.prol
  %.05.i92.prol = phi i64 [ %i.bz, %.lr.ph.i91.prol ], [ %i.by, %.lr.ph.i91.preheader ]
  %storemerge4.i93.prol = phi ptr [ %i.cc, %.lr.ph.i91.prol ], [ %i.bs, %.lr.ph.i91.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i91.prol ], [ 0, %.lr.ph.i91.preheader ]
  %i.bz = add i64 %.05.i92.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i93.prol, align 4, !tbaa !79
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i93.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i91.prol.loopexit, label %.lr.ph.i91.prol, !llvm.loop !637

.lr.ph.i91.prol.loopexit:                         ; preds = %.lr.ph.i91.prol, %.lr.ph.i91.preheader
  %.05.i92.unr = phi i64 [ %i.by, %.lr.ph.i91.preheader ], [ %i.bz, %.lr.ph.i91.prol ]
  %storemerge4.i93.unr = phi ptr [ %i.bs, %.lr.ph.i91.preheader ], [ %i.cc, %.lr.ph.i91.prol ]
  %i.cd = sub i64 %i.bp, %i.bx
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91
  %.05.i92 = phi i64 [ %i.cm, %.lr.ph.i91 ], [ %.05.i92.unr, %.lr.ph.i91.prol.loopexit ]
  %storemerge4.i93 = phi ptr [ %i.co, %.lr.ph.i91 ], [ %storemerge4.i93.unr, %.lr.ph.i91.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i93, align 4, !tbaa !79
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 4 uses
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 4
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !79
  %i.ci = add i32 %i.cf, -2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 8
  store i32 -2147483648, ptr %i.cj, align 4, !tbaa !79
  %i.ck = add i32 %i.cf, -3
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 12
  %i.cm = add i64 %.05.i92, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !79
  %i.cn = add i32 %i.cf, -4
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 16
  %.not.i94.3 = icmp eq i64 %i.cm, 0
  br i1 %.not.i94.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, label %.lr.ph.i91, !llvm.loop !6

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95: ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91, %._crit_edge
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !88
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0104 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %.0104 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.0104 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !79
  store i32 0, ptr %i.cp, align 4, !tbaa !79
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !79
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !79
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !79
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cx = add nuw i64 %.0104, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.cx, %i.bp
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !638

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_Lj2ELj0EEEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !85     ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !87     ; 7 uses
  %5 = ptrtoaddr ptr %i.g to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !79
  store i32 %i.j, ptr %i.h, align 4, !tbaa !79
  store i32 0, ptr %4, align 4, !tbaa !79
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp eq i64 %3, 1
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  store i32 %i.q, ptr %.01417.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !79
  store i32 %i.v, ptr %i.u, align 4, !tbaa !79
  store i32 0, ptr %i.t, align 4, !tbaa !79
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.z = add i64 %.018.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !14

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ad, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub i64 0, %3
  %i.af = getelementptr [4 x i8], ptr %i.h, i64 %i.ae ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ag = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !79
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !79
  store i32 0, ptr %i.af, align 4, !tbaa !79
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !79
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !79
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !79
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !79
  store i32 0, ptr %i.aq, align 4, !tbaa !79
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !15

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.ay = shl nuw nsw i64 %i.e, 2
  %i.az = shl i64 %3, 2
  %i.ba = add i64 %i.ay, %5
  %i.bb = add i64 %i.ba, -4
  %i.bc = add i64 %i.az, %i.ab
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bg = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bh = shl i64 %3, 2                           ; 2 uses
  %i.bi = add i64 %i.bg, %5
  %i.bj = add i64 %i.bi, -4
  %i.bk = add i64 %i.bh, %i.ab
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = add nsw i64 %i.bg, -4                   ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr i8, ptr %i.g, i64 %i.bo
  %i.bq = add i64 %i.bh, %i.bm
  %i.br = sub i64 %i.bn, %i.bq
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %bound0 = icmp ult ptr %i.bp, %i.af
  %bound1 = icmp ult ptr %i.bs, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.af, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bw ; 2 uses
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
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !79
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !79
  store i32 0, ptr %i.cc, align 4, !tbaa !79
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !645

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  %bound034 = icmp ult ptr %i.a, %i.ch
  %bound135 = icmp ult ptr %4, %i.cg
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.ci = and i64 %3, 7
  %i.cj = shl i64 %n.vec38, 2                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.a, i64 %i.cj
  %i.cl = getelementptr i8, ptr %4, i64 %i.cj
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cm = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !660
  %wide.load44 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !79, !alias.scope !660
  %i.co = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !79, !alias.scope !661, !noalias !660
  store <4 x i32> %wide.load44, ptr %i.co, align 4, !tbaa !79, !alias.scope !661, !noalias !660
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !660
  store <4 x i32> zeroinitializer, ptr %i.cn, align 4, !tbaa !79, !alias.scope !660
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cp, label %middle.block46, label %vector.body39, !llvm.loop !649

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ck, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %i.cq = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cr = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.cs, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !650

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %i.cv = icmp ult i64 %i.cq, 3
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.cw, ptr %.048.i.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !79
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !79
  store i32 0, ptr %i.cx, align 4, !tbaa !79
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !79
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !79
  store i32 0, ptr %i.da, align 4, !tbaa !79
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.df = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !79
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !79
  store i32 0, ptr %i.dd, align 4, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !651

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dn, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.dj, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dn, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !13

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

end_hunk_2
