Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 181
loop-unroll.NumUnrolled: 278
begin_hunk_0_@_ZNSt6vectorIiSaIiEE15_M_range_insertISt24_Fwd_list_const_iteratorIiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_S9_St20forward_iterator_tag:bb.a
_ZSt9__advanceISt24_Fwd_list_const_iteratorIiElEvRT_T0_St18input_iterator_tag.exit: ; preds = %.lr.ph.i51.prol.loopexit, %.lr.ph.i51, %bb.j
  %.sroa.0.0 = phi ptr [ %2, %bb.j ], [ %.lcssa.unr, %.lr.ph.i51.prol.loopexit ], [ %i.av, %.lr.ph.i51 ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %3
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt9__advanceISt24_Fwd_list_const_iteratorIiElEvRT_T0_St18input_iterator_tag.exit, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %_ZSt9__advanceISt24_Fwd_list_const_iteratorIiElEvRT_T0_St18input_iterator_tag.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.0, %_ZSt9__advanceISt24_Fwd_list_const_iteratorIiElEvRT_T0_St18input_iterator_tag.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !211
  store i32 %i.ax, ptr %.08.i.i.i.i.i.i.i.i, align 4, !tbaa !211
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 4
  %i.az = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, align 8, !tbaa !325 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, %3
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1898

_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt9__advanceISt24_Fwd_list_const_iteratorIiElEvRT_T0_St18input_iterator_tag.exit
  %i.ba = sub nuw nsw i64 %i.b, %i.m
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ba ; 5 uses
  store ptr %i.bb, ptr %i.e, align 8, !tbaa !322
  %i.bc = icmp sgt i64 %i.l, 4
  br i1 %i.bc, label %bb.k, label %bb.l, !prof !224

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bb, ptr align 4 %1, i64 %i.l, i1 false)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !322
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit
  %i.bd = icmp eq i64 %i.l, 4
  br i1 %i.bd, label %bb.m, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr %1, align 4, !tbaa !211
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !211
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53: ; preds = %bb.k, %bb.l, %bb.m
  %i.bf = phi ptr [ %.pre, %bb.k ], [ %i.bb, %bb.l ], [ %i.bb, %bb.m ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.l
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !322
  %.not6.i.i.i.i.i54 = icmp eq ptr %2, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i54, label %_ZSt4copyISt24_Fwd_list_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53, %.lr.ph.i.i.i.i.i55
  %.08.i.i.i.i.i56 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i55 ], [ %1, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i57 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i55 ], [ %2, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i57, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !211
  store i32 %i.bi, ptr %.08.i.i.i.i.i56, align 4, !tbaa !211
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i56, i64 4
  %i.bk = load ptr, ptr %.sroa.03.07.i.i.i.i.i57, align 8, !tbaa !325 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %i.bk, %.sroa.0.0
  br i1 %.not.i.i.i.i.i58, label %_ZSt4copyISt24_Fwd_list_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i55, !llvm.loop !1898

bb.n:                                             ; preds = %_ZSt10__distanceISt24_Fwd_list_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !320   ; 5 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bn = sub i64 %i.h, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2                 ; 4 uses
  %i.bp = sub nsw i64 2305843009213693951, %i.bo
  %.not = icmp ugt i64 %i.bp, %.06.i
  br i1 %.not, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.b)
  %i.bq = add nsw i64 %.sroa.speculated.i, %i.bo  ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bo
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 2305843009213693951)
  %i.bt = select i1 %i.br, i64 2305843009213693951, i64 %i.bs ; 3 uses
  %.not.i61 = icmp eq i64 %i.bt, 0
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #41
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.p
  %i.bw = phi ptr [ %i.bv, %bb.p ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bx = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.by = sub i64 %i.bx, %i.bm                    ; 4 uses
  %i.bz = icmp sgt i64 %i.by, 4
  br i1 %i.bz, label %bb.q, label %bb.r, !prof !224

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bw, ptr align 4 %i.bl, i64 %i.by, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.ca = icmp eq i64 %i.by, 4
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = load i32, ptr %i.bl, align 4, !tbaa !211
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !211
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %i.by
  br label %.lr.ph.i.i.i.i.i.i.i.i63

.lr.ph.i.i.i.i.i.i.i.i63:                         ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i63
  %.08.i.i.i.i.i.i.i.i64 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i63 ], [ %i.cc, %bb.t ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i65 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i63 ], [ %2, %bb.t ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i65, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !211
  store i32 %i.ce, ptr %.08.i.i.i.i.i.i.i.i64, align 4, !tbaa !211
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i64, i64 4 ; 4 uses
  %i.cg = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i65, align 8, !tbaa !325 ; 2 uses
  %.not.i.i.i.i.i.i.i.i66 = icmp eq ptr %i.cg, %3
  br i1 %.not.i.i.i.i.i.i.i.i66, label %_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit68, label %.lr.ph.i.i.i.i.i.i.i.i63, !llvm.loop !1898

_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit68: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63
  %i.ch = sub i64 %i.h, %i.bx                     ; 4 uses
  %i.ci = icmp sgt i64 %i.ch, 4
  br i1 %i.ci, label %bb.u, label %bb.v, !prof !224

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit68
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr align 4 %1, i64 %i.ch, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aISt24_Fwd_list_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit68
  %i.cj = icmp eq i64 %i.ch, 4
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = load i32, ptr %1, align 4, !tbaa !211
  store i32 %i.ck, ptr %i.cf, align 4, !tbaa !211
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cl = getelementptr inbounds i8, ptr %i.cf, i64 %i.ch
  %.not.i70 = icmp eq ptr %i.bl, null
  br i1 %.not.i70, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !321
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.co) #39
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.x, %bb.y
  store ptr %i.bw, ptr %0, align 8, !tbaa !320
  store ptr %i.cl, ptr %i.e, align 8, !tbaa !322
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bt
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !321
  br label %_ZSt4copyISt24_Fwd_list_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

_ZSt4copyISt24_Fwd_list_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i55, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE6InsertINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEPiPKiT_m(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !197, !noalias !1915 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1915
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !1915
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 9 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 8      ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 8 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %.sink2.i to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 9 uses
  %i.k = add i64 %i.j, %3                         ; 4 uses
  %i.l = add i64 %.sink1.i, %3                    ; 5 uses
  %i.m = icmp ugt i64 %i.l, %.sink.i
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 4 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i, !prof !212

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.p, label %.noexc, label %.noexc44

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc44:                                         ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #41 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 6 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i
  %xtraiter170 = and i64 %3, 3                    ; 3 uses
  %i.t = icmp ult i64 %3, 4
  br i1 %i.t, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter176 = and i64 %3, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.u = phi ptr [ %2, %.lr.ph.i.i.preheader.new ], [ %i.an, %.lr.ph.i.i ] ; 2 uses
  %.06.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ao, %.lr.ph.i.i ] ; 5 uses
  %niter177 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter177.next.3, %.lr.ph.i.i ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.06.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !211
  store i32 %i.x, ptr %i.v, align 4, !tbaa !211
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !325  ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.06.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !211
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !211
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !325 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.06.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !211
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !211
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !325 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.06.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !211
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !211
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !325 ; 2 uses
  %i.ao = add nuw i64 %.06.i.i, 4                 ; 2 uses
  %niter177.next.3 = add nuw i64 %niter177, 4     ; 2 uses
  %niter177.ncmp.3 = icmp eq i64 %niter177.next.3, %unroll_iter176
  br i1 %niter177.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1903

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod174.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod174.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init173 = phi ptr [ %2, %.lr.ph.i.i.preheader ], [ %i.an, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit.loopexit.unr-lcssa ]
  %.06.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ao, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod175 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod175)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.ap = phi ptr [ %i.at, %.lr.ph.i.i.epil ], [ %.epil.init173, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.06.i.i.epil = phi i64 [ %i.au, %.lr.ph.i.i.epil ], [ %.06.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter171 = phi i64 [ %epil.iter171.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.06.i.i.epil
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !211
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !211
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !325
  %i.au = add nuw i64 %.06.i.i.epil, 1
  %epil.iter171.next = add i64 %epil.iter171, 1   ; 2 uses
  %epil.iter171.cmp.not = icmp eq i64 %epil.iter171.next, %xtraiter170
  br i1 %epil.iter171.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit, label %.lr.ph.i.i.epil, !llvm.loop !1904

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i
  %.not.i.i46 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i46, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit, label %.lr.ph.i.i47.preheader

.lr.ph.i.i47.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit
  %min.iters.check124 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check124, label %.lr.ph.i.i47.preheader155, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.i.i47.preheader
  %n.vec126 = and i64 %i.j, -8                    ; 4 uses
  %i.av = shl nsw i64 %n.vec126, 2
  %i.aw = getelementptr i8, ptr %.sink2.i, i64 %i.av ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body127 ] ; 3 uses
  %i.ax = shl i64 %index128, 2
  %next.gep129 = getelementptr i8, ptr %.sink2.i, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index128 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load130 = load <4 x i32>, ptr %next.gep129, align 4, !tbaa !211
  %wide.load131 = load <4 x i32>, ptr %i.az, align 4, !tbaa !211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %wide.load130, ptr %i.ay, align 4, !tbaa !211
  store <4 x i32> %wide.load131, ptr %i.ba, align 4, !tbaa !211
  %index.next132 = add nuw i64 %index128, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.bb, label %middle.block133, label %vector.body127, !llvm.loop !1905

middle.block133:                                  ; preds = %vector.body127
  %cmp.n134 = icmp eq i64 %i.j, %n.vec126
  br i1 %cmp.n134, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit, label %.lr.ph.i.i47.preheader155

.lr.ph.i.i47.preheader155:                        ; preds = %.lr.ph.i.i47.preheader, %middle.block133
  %.ph156 = phi ptr [ %.sink2.i, %.lr.ph.i.i47.preheader ], [ %i.aw, %middle.block133 ]
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i47.preheader ], [ %n.vec126, %middle.block133 ]
  br label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47.preheader155, %.lr.ph.i.i47
  %i.bc = phi ptr [ %i.bf, %.lr.ph.i.i47 ], [ %.ph156, %.lr.ph.i.i47.preheader155 ] ; 2 uses
  %.012.i.i = phi i64 [ %i.bg, %.lr.ph.i.i47 ], [ %.012.i.i.ph, %.lr.ph.i.i47.preheader155 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !211
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !211
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.bg = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i49 = icmp eq i64 %i.bg, %i.j
  br i1 %exitcond.not.i.i49, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit, label %.lr.ph.i.i47, !llvm.loop !1906

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit: ; preds = %.lr.ph.i.i47, %middle.block133, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit
  %.sroa.086.0 = phi ptr [ %.sink2.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit ], [ %i.aw, %middle.block133 ], [ %i.bf, %.lr.ph.i.i47 ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 6 uses
  %i.bi = sub i64 %.sink1.i, %i.j                 ; 4 uses
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit
  %min.iters.check141 = icmp ult i64 %i.bi, 16
  br i1 %min.iters.check141, label %.lr.ph.i.preheader154, label %vector.memcheck137

vector.memcheck137:                               ; preds = %.lr.ph.i.preheader
  %4 = ptrtoaddr ptr %i.r to i64
  %i.bj = shl i64 %i.k, 2
  %5 = ptrtoaddr ptr %.sroa.086.0 to i64
  %i.bk = add i64 %i.bj, %4
  %i.bl = sub i64 %5, %i.bk
  %diff.check139 = icmp ugt i64 %i.bl, -32
  br i1 %diff.check139, label %.lr.ph.i.preheader154, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck137
  %n.vec143 = and i64 %i.bi, -8                   ; 4 uses
  %i.bm = shl i64 %n.vec143, 2
  %i.bn = getelementptr i8, ptr %.sroa.086.0, i64 %i.bm
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next149, %vector.body144 ] ; 3 uses
  %i.bo = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %.sroa.086.0, i64 %i.bo ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index145 ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load147 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !211
  %wide.load148 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !211
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <4 x i32> %wide.load147, ptr %i.bp, align 4, !tbaa !211
  store <4 x i32> %wide.load148, ptr %i.br, align 4, !tbaa !211
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.bs, label %middle.block150, label %vector.body144, !llvm.loop !1907

middle.block150:                                  ; preds = %vector.body144
  %cmp.n151 = icmp eq i64 %i.bi, %n.vec143
  br i1 %cmp.n151, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i.preheader154

.lr.ph.i.preheader154:                            ; preds = %vector.memcheck137, %.lr.ph.i.preheader, %middle.block150
  %.ph = phi ptr [ %.sroa.086.0, %vector.memcheck137 ], [ %.sroa.086.0, %.lr.ph.i.preheader ], [ %i.bn, %middle.block150 ] ; 2 uses
  %.012.i.ph = phi i64 [ 0, %vector.memcheck137 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec143, %middle.block150 ] ; 3 uses
  %i.bt = sub i64 %.sink1.i, %i.j
  %xtraiter178 = and i64 %i.bt, 3                 ; 2 uses
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader154, %.lr.ph.i.prol
  %i.bu = phi ptr [ %i.bx, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader154 ] ; 2 uses
  %.012.i.prol = phi i64 [ %i.by, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader154 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader154 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.012.i.prol
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !211
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !211
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.by = add nuw i64 %.012.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter178
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1908

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader154
  %.unr180 = phi ptr [ %.ph, %.lr.ph.i.preheader154 ], [ %i.bx, %.lr.ph.i.prol ]
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader154 ], [ %i.by, %.lr.ph.i.prol ]
  %i.bz = sub i64 %.012.i.ph, %.sink1.i
  %i.ca = add i64 %i.bz, %i.j
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.cc = phi ptr [ %i.cr, %.lr.ph.i ], [ %.unr180, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.012.i = phi i64 [ %i.cs, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.012.i
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !211
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !211
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.012.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.cf, align 4, !tbaa !211
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !211
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.012.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !211
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !211
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.012.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !211
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !211
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cs = add nuw i64 %.012.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cs, %i.bi
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !1909

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block150, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit
  %i.ct = load i64, ptr %0, align 8, !tbaa !197
  %i.cu = trunc i64 %i.ct to i1
  br i1 %i.cu, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !198
  %i.cw = load i64, ptr %i.e, align 8, !tbaa !198
  %i.cx = shl i64 %i.cw, 2
  tail call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cx) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !198
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !198
  %i.cy = shl nuw i64 %i.l, 1
  %i.cz = or disjoint i64 %i.cy, 1
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 7 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 4 uses
  %i.db = sub i64 %i.l, %.sroa.speculated         ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 10 uses
  %i.dd = sub nuw i64 %.sroa.speculated, %i.k
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.db ; 5 uses
  %i.df = sub i64 %3, %i.db                       ; 2 uses
  %.not.i.i54 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i54, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %bb.e
  %i.dg = sub i64 %.sroa.speculated, %3
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.dg ; 4 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %.lr.ph.i.i55.preheader158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i55.preheader
  %i.di = shl i64 %3, 2
  %i.dj = add i64 %i.di, -1
  %diff.check = icmp ult i64 %i.dj, 31
  br i1 %diff.check, label %.lr.ph.i.i55.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, -8                      ; 4 uses
  %i.dk = shl i64 %n.vec, 2
  %i.dl = getelementptr i8, ptr %i.dh, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.dm ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load121 = load <4 x i32>, ptr %i.do, align 4, !tbaa !211
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x i32> %wide.load, ptr %i.dn, align 4, !tbaa !211
  store <4 x i32> %wide.load121, ptr %i.dp, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1910

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60, label %.lr.ph.i.i55.preheader158

.lr.ph.i.i55.preheader158:                        ; preds = %vector.memcheck, %.lr.ph.i.i55.preheader, %middle.block
  %.ph159 = phi ptr [ %i.dh, %vector.memcheck ], [ %i.dh, %.lr.ph.i.i55.preheader ], [ %i.dl, %middle.block ]
  %.012.i.i57.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i55.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.preheader158, %.lr.ph.i.i55
  %i.dr = phi ptr [ %i.du, %.lr.ph.i.i55 ], [ %.ph159, %.lr.ph.i.i55.preheader158 ] ; 2 uses
  %.012.i.i57 = phi i64 [ %i.dv, %.lr.ph.i.i55 ], [ %.012.i.i57.ph, %.lr.ph.i.i55.preheader158 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.012.i.i57
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !211
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !211
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dv = add nuw i64 %.012.i.i57, 1              ; 2 uses
  %exitcond.not.i.i58 = icmp eq i64 %i.dv, %i.db
  br i1 %exitcond.not.i.i58, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60, label %.lr.ph.i.i55, !llvm.loop !1911

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60: ; preds = %.lr.ph.i.i55, %middle.block, %bb.e
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dd
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.g                     ; 3 uses
  %i.dz = ashr exact i64 %i.dy, 2                 ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 1
  br i1 %i.ea, label %bb.f, label %bb.g, !prof !224

bb.f:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60
  %i.eb = sub nsw i64 0, %i.dz
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.eb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr align 4 %i.dc, i64 %i.dy, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60
  %i.ed = icmp eq i64 %i.dy, 4
  br i1 %i.ed, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ee = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.ef = load i32, ptr %i.dc, align 4, !tbaa !211
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !211
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i54, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %bb.i
  %i.eg = add i64 %3, %.sink1.i
  %xtraiter = and i64 %i.db, 3                    ; 3 uses
  %i.eh = sub i64 %.sroa.speculated, %i.eg
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %.lr.ph.i62.epil.preheader, label %.lr.ph.i62.preheader.new

end_hunk_0
begin_hunk_1_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEEclIN4absl12lts_2026052613InlinedVectorIS4_Lm8ESaIS4_EEEEENS_15AssertionResultEPKcRKT_:bb.a
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.as, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %.body

bb.al:                                            ; preds = %bb.d, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEEE, i64 16), ptr %8, align 8, !tbaa !169
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !359 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEE8IsSharedEv.exit.i.i: ; preds = %bb.al
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !365
  %.not.i.i67 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEE8IsSharedEv.exit.i.i
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !198
  %i.fj = atomicrmw sub ptr %i.fi, i32 1 acq_rel, align 4
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.an, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEED2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !365
  %i.fo = load ptr, ptr %i.g, align 8, !tbaa !198
  invoke void %i.fn(ptr noundef %i.fo)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEED2Ev.exit unwind label %bb.ao, !inline_history !40

bb.ao:                                            ; preds = %bb.an
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #35, !inline_history !366
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEED2Ev.exit: ; preds = %bb.al, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEE8IsSharedEv.exit.i.i, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  ret void

.body:                                            ; preds = %bb.e, %.body.i, %bb.ak
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.ak ], [ %i.r, %bb.e ], [ %i.n, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %common.resume
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageISt4pairIiiELm8ESaIS4_EE15EmplaceBackSlowIJRmS8_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !197, !noalias !2022 ; 3 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !2022
  %.sink1.i = lshr i64 %i.a, 1                    ; 5 uses
  %i.f = shl i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.f, i64 16         ; 4 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.b, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairIiiEELb0EE8AllocateERS5_m.exit.i, !prof !212

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.i, label %.noexc, label %.noexc14

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc14:                                         ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairIiiEELb0EE8AllocateERS5_m.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !noalias !2022
  %i.k = shl nuw nsw i64 %i.g, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #41 ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sink1.i ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !197
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %i.m, align 4, !tbaa !353
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load i64, ptr %2, align 8, !tbaa !197
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.p, align 4, !tbaa !354
  %.not.i = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairIiiEELb0EE8AllocateERS5_m.exit.i
  %.sink2.i = select i1 %i.b, ptr %i.j, ptr %i.c  ; 3 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.sink1.i, 9223372036854775804 ; 4 uses
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %.sink2.i, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sink2.i, i64 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load31 = load <2 x i64>, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %wide.load, ptr %i.v, align 4
  store <2 x i64> %wide.load31, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2020

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sink1.i, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader33

.lr.ph.i.preheader33:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.019.0.ph = phi ptr [ %.sink2.i, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader33, %.lr.ph.i
  %.sroa.019.0 = phi ptr [ %i.ab, %.lr.ph.i ], [ %.sroa.019.0.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %.012.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.012.i
  %i.aa = load i64, ptr %.sroa.019.0, align 4
  store i64 %i.aa, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.019.0, i64 8
  %i.ac = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %.sink1.i
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !2021

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairIiiEELb0EE8AllocateERS5_m.exit.i
  %i.ad = load i64, ptr %0, align 8, !tbaa !197   ; 2 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !198
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !198
  %i.ah = shl i64 %i.ag, 3
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #39
  %.pre = load i64, ptr %0, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %i.ai = phi i64 [ %.pre, %bb.c ], [ %i.ad, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit ]
  store ptr %i.l, ptr %i.c, align 8, !tbaa !198
  store i64 %i.g, ptr %i.d, align 8, !tbaa !198
  %i.aj = or i64 %i.ai, 1
  %i.ak = add i64 %i.aj, 2
  store i64 %i.ak, ptr %0, align 8, !tbaa !197
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageISt4pairIiiELm8ESaIS4_EE6InsertINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEPS4_PKS4_T_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !197, !noalias !2035 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !2035
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !2035
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 9 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 8      ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 8 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %.sink2.i to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 9 uses
  %i.k = add i64 %i.j, %4                         ; 5 uses
  %i.l = add i64 %.sink1.i, %4                    ; 5 uses
  %i.m = icmp ugt i64 %i.l, %.sink.i
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 4 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i, 1152921504606846975
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairIiiEELb0EE8AllocateERS5_m.exit.i, !prof !212

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.p, label %.noexc, label %.noexc42

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc42:                                         ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairIiiEELb0EE8AllocateERS5_m.exit.i: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #41 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 4 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairIiiEELb0EE8AllocateERS5_m.exit.i
  %xtraiter176 = and i64 %4, 1
  %i.t = icmp eq i64 %4, 1
  br i1 %i.t, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter183 = and i64 %4, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.u = phi ptr [ %3, %.lr.ph.i.i.preheader.new ], [ %i.am, %.lr.ph.i.i ] ; 2 uses
  %i.v = phi ptr [ %2, %.lr.ph.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i ] ; 2 uses
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.an, %.lr.ph.i.i ] ; 3 uses
  %niter184 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter184.next.1, %.lr.ph.i.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.012.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i32, ptr %i.x, align 4, !tbaa !211
  store i32 %i.z, ptr %i.w, align 4, !tbaa !353
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !211
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !354
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !325 ; 2 uses
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !325 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.012.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !211
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !353
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !211
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !354
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !325 ; 2 uses
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !325 ; 2 uses
  %i.an = add nuw i64 %.012.i.i, 2                ; 2 uses
  %niter184.next.1 = add nuw i64 %niter184, 2     ; 2 uses
  %niter184.ncmp.1 = icmp eq i64 %niter184.next.1, %unroll_iter183
  br i1 %niter184.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2025

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod181.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod181.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init178 = phi ptr [ %3, %.lr.ph.i.i.preheader ], [ %i.am, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit.loopexit.unr-lcssa ]
  %.epil.init180 = phi ptr [ %2, %.lr.ph.i.i.preheader ], [ %i.al, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit.loopexit.unr-lcssa ]
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.an, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod182 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.012.i.i.epil.init ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.epil.init180, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.epil.init178, i64 8
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !211
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !353
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !211
  store i32 %i.at, ptr %i.as, align 4, !tbaa !354
  br label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit: ; preds = %.lr.ph.i.i.epil.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit.loopexit.unr-lcssa, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairIiiEELb0EE8AllocateERS5_m.exit.i
  %.not.i.i44 = icmp eq ptr %1, %.sink2.i
  br i1 %.not.i.i44, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit, label %.lr.ph.i.i45.preheader

.lr.ph.i.i45.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit
  %min.iters.check125 = icmp ult i64 %i.j, 4
  br i1 %min.iters.check125, label %.lr.ph.i.i45.preheader156, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph.i.i45.preheader
  %n.vec127 = and i64 %i.j, -4                    ; 4 uses
  %i.au = shl nsw i64 %n.vec127, 3
  %i.av = getelementptr i8, ptr %.sink2.i, i64 %i.au ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next133, %vector.body128 ] ; 3 uses
  %i.aw = shl i64 %index129, 3
  %next.gep130 = getelementptr i8, ptr %.sink2.i, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index129 ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load131 = load <2 x i64>, ptr %next.gep130, align 4
  %wide.load132 = load <2 x i64>, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load131, ptr %i.ax, align 4
  store <2 x i64> %wide.load132, ptr %i.az, align 4
  %index.next133 = add nuw i64 %index129, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.ba, label %middle.block134, label %vector.body128, !llvm.loop !2026

middle.block134:                                  ; preds = %vector.body128
  %cmp.n135 = icmp eq i64 %i.j, %n.vec127
  br i1 %cmp.n135, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit, label %.lr.ph.i.i45.preheader156

.lr.ph.i.i45.preheader156:                        ; preds = %.lr.ph.i.i45.preheader, %middle.block134
  %.sroa.082.0.ph = phi ptr [ %.sink2.i, %.lr.ph.i.i45.preheader ], [ %i.av, %middle.block134 ]
  %.012.i.i46.ph = phi i64 [ 0, %.lr.ph.i.i45.preheader ], [ %n.vec127, %middle.block134 ]
  br label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.preheader156, %.lr.ph.i.i45
  %.sroa.082.0 = phi ptr [ %i.bd, %.lr.ph.i.i45 ], [ %.sroa.082.0.ph, %.lr.ph.i.i45.preheader156 ] ; 2 uses
  %.012.i.i46 = phi i64 [ %i.be, %.lr.ph.i.i45 ], [ %.012.i.i46.ph, %.lr.ph.i.i45.preheader156 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.012.i.i46
  %i.bc = load i64, ptr %.sroa.082.0, align 4
  store i64 %i.bc, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.082.0, i64 8 ; 2 uses
  %i.be = add nuw i64 %.012.i.i46, 1              ; 2 uses
  %exitcond.not.i.i47 = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i.i47, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit, label %.lr.ph.i.i45, !llvm.loop !2027

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit: ; preds = %.lr.ph.i.i45, %middle.block134, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit
  %.sroa.082.1 = phi ptr [ %.sink2.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit ], [ %i.av, %middle.block134 ], [ %i.bd, %.lr.ph.i.i45 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.k ; 6 uses
  %i.bg = sub i64 %.sink1.i, %i.j                 ; 4 uses
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit
  %min.iters.check142 = icmp ult i64 %i.bg, 14
  br i1 %min.iters.check142, label %.lr.ph.i.preheader155, label %vector.memcheck138

vector.memcheck138:                               ; preds = %.lr.ph.i.preheader
  %5 = ptrtoaddr ptr %i.r to i64
  %i.bh = shl i64 %i.k, 3
  %6 = ptrtoaddr ptr %.sroa.082.1 to i64
  %i.bi = add i64 %i.bh, %5
  %i.bj = sub i64 %6, %i.bi
  %diff.check140 = icmp ugt i64 %i.bj, -32
  br i1 %diff.check140, label %.lr.ph.i.preheader155, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck138
  %n.vec144 = and i64 %i.bg, -4                   ; 4 uses
  %i.bk = shl i64 %n.vec144, 3
  %i.bl = getelementptr i8, ptr %.sroa.082.1, i64 %i.bk
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next150, %vector.body145 ] ; 3 uses
  %i.bm = shl i64 %index146, 3
  %next.gep147 = getelementptr i8, ptr %.sroa.082.1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index146 ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep147, i64 16
  %wide.load148 = load <2 x i64>, ptr %next.gep147, align 4
  %wide.load149 = load <2 x i64>, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %wide.load148, ptr %i.bn, align 4
  store <2 x i64> %wide.load149, ptr %i.bp, align 4
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.bq, label %middle.block151, label %vector.body145, !llvm.loop !2028

middle.block151:                                  ; preds = %vector.body145
  %cmp.n152 = icmp eq i64 %i.bg, %n.vec144
  br i1 %cmp.n152, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader155

.lr.ph.i.preheader155:                            ; preds = %vector.memcheck138, %.lr.ph.i.preheader, %middle.block151
  %.sroa.082.2.ph = phi ptr [ %.sroa.082.1, %vector.memcheck138 ], [ %.sroa.082.1, %.lr.ph.i.preheader ], [ %i.bl, %middle.block151 ] ; 2 uses
  %.012.i.ph = phi i64 [ 0, %vector.memcheck138 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec144, %middle.block151 ] ; 3 uses
  %i.br = sub i64 %.sink1.i, %i.j
  %xtraiter185 = and i64 %i.br, 3                 ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader155, %.lr.ph.i.prol
  %.sroa.082.2.prol = phi ptr [ %i.bu, %.lr.ph.i.prol ], [ %.sroa.082.2.ph, %.lr.ph.i.preheader155 ] ; 2 uses
  %.012.i.prol = phi i64 [ %i.bv, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader155 ] ; 2 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader155 ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.012.i.prol
  %i.bt = load i64, ptr %.sroa.082.2.prol, align 4
  store i64 %i.bt, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.082.2.prol, i64 8 ; 2 uses
  %i.bv = add nuw i64 %.012.i.prol, 1             ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2029

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader155
  %.sroa.082.2.unr = phi ptr [ %.sroa.082.2.ph, %.lr.ph.i.preheader155 ], [ %i.bu, %.lr.ph.i.prol ]
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader155 ], [ %i.bv, %.lr.ph.i.prol ]
  %i.bw = sub i64 %.012.i.ph, %.sink1.i
  %i.bx = add i64 %i.bw, %i.j
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.082.2 = phi ptr [ %i.cn, %.lr.ph.i ], [ %.sroa.082.2.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.012.i = phi i64 [ %i.co, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.012.i
  %i.ca = load i64, ptr %.sroa.082.2, align 4
  store i64 %i.ca, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.082.2, i64 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.012.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cb, align 4
  store i64 %i.ce, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.082.2, i64 16
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.012.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.cf, align 4
  store i64 %i.ci, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.082.2, i64 24
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.012.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i64, ptr %i.cj, align 4
  store i64 %i.cm, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.082.2, i64 32
  %i.co = add nuw i64 %.012.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.co, %i.bg
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !2030

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block151, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit
  %i.cp = load i64, ptr %0, align 8, !tbaa !197
  %i.cq = trunc i64 %i.cp to i1
  br i1 %i.cq, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !198
  %i.cs = load i64, ptr %i.e, align 8, !tbaa !198
  %i.ct = shl i64 %i.cs, 3
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.ct) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !198
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !198
  %i.cu = shl nuw i64 %i.l, 1
  %i.cv = or disjoint i64 %i.cu, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 6 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 4 uses
  %i.cx = sub i64 %i.l, %.sroa.speculated         ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 6 uses
  %i.cz = sub nuw i64 %.sroa.speculated, %i.k
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx ; 3 uses
  %i.db = sub i64 %4, %i.cx                       ; 3 uses
  %.not.i.i51 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i51, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57, label %.lr.ph.i.i54.preheader

.lr.ph.i.i54.preheader:                           ; preds = %bb.e
  %i.dc = sub i64 %.sroa.speculated, %4
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i, i64 %i.dc ; 4 uses
  %min.iters.check = icmp ult i64 %i.cx, 8
  br i1 %min.iters.check, label %.lr.ph.i.i54.preheader159, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i54.preheader
  %i.de = shl i64 %4, 3
  %i.df = add i64 %i.de, -1
  %diff.check = icmp ult i64 %i.df, 31
  br i1 %diff.check, label %.lr.ph.i.i54.preheader159, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cx, -4                      ; 4 uses
  %i.dg = shl i64 %n.vec, 3
  %i.dh = getelementptr i8, ptr %i.dd, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.di ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load122 = load <2 x i64>, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x i64> %wide.load, ptr %i.dj, align 4
  store <2 x i64> %wide.load122, ptr %i.dl, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !2031

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57, label %.lr.ph.i.i54.preheader159

.lr.ph.i.i54.preheader159:                        ; preds = %vector.memcheck, %.lr.ph.i.i54.preheader, %middle.block
  %.sroa.078.0.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i54.preheader ], [ %i.dh, %middle.block ]
  %.012.i.i55.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i54.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54.preheader159, %.lr.ph.i.i54
  %.sroa.078.0 = phi ptr [ %i.dp, %.lr.ph.i.i54 ], [ %.sroa.078.0.ph, %.lr.ph.i.i54.preheader159 ] ; 2 uses
  %.012.i.i55 = phi i64 [ %i.dq, %.lr.ph.i.i54 ], [ %.012.i.i55.ph, %.lr.ph.i.i54.preheader159 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.012.i.i55
  %i.do = load i64, ptr %.sroa.078.0, align 4
  store i64 %i.do, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.078.0, i64 8
  %i.dq = add nuw i64 %.012.i.i55, 1              ; 2 uses
  %exitcond.not.i.i56 = icmp eq i64 %i.dq, %i.cx
  br i1 %exitcond.not.i.i56, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57, label %.lr.ph.i.i54, !llvm.loop !2032

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57: ; preds = %.lr.ph.i.i54, %middle.block, %bb.e
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cz ; 3 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.g
  %i.du = ashr exact i64 %i.dt, 3                 ; 5 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57
  %xtraiter = and i64 %i.du, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.prol ], [ %i.du, %.lr.ph.i.i.i.i.i.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.prol ], [ %i.cw, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !211
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !353
  %i.dz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !211
  %i.eb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !354
  %i.ec = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2033

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.prol ]
end_hunk_1
begin_hunk_2_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_15VariadicMatcherINS0_16AllOfMatcherImplEJNS0_13SizeIsMatcherIjEEN12_GLOBAL__N_118CapacityIsMatcherPImEENS0_18ElementsAreMatcherISt5tupleIJiEEEEEEEEclIN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEEENS_15AssertionResultEPKcRKT_:bb.a
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %15, align 8, !tbaa !169
  %i.ha = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.ha, ptr %i.ec, align 8, !tbaa !169
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 -24    ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = getelementptr inbounds i8, ptr %i.ec, i64 %i.hd
  store ptr %i.hb, ptr %i.he, align 8, !tbaa !169
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.hf, ptr %i.ed, align 8, !tbaa !169
  %i.hg = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hg, align 8, !tbaa !169
  %i.hh = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !195 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !198
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #39, !inline_history !257
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hg, align 8, !tbaa !169
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hn) #36, !inline_history !257
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.ho, ptr %i.ec, align 8, !tbaa !169
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.ho, i64 -24    ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds i8, ptr %i.ec, i64 %i.hr
  store ptr %i.hp, ptr %i.hs, align 8, !tbaa !169
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 0, ptr %i.ht, align 8, !tbaa !231
  %i.hu = getelementptr inbounds nuw i8, ptr %15, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hu) #36, !inline_history !257
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  store ptr %i.ha, ptr %14, align 8, !tbaa !169
  %i.hv = load i64, ptr %i.hc, align 8
  %i.hw = getelementptr inbounds i8, ptr %14, i64 %i.hv
  store ptr %i.hb, ptr %i.hw, align 8, !tbaa !169
  store ptr %i.hf, ptr %i.dh, align 8, !tbaa !169
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hx, align 8, !tbaa !169
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !195 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !198
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #39
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hx, align 8, !tbaa !169
  %i.ie = getelementptr inbounds nuw i8, ptr %14, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ie) #36
  store ptr %i.ho, ptr %14, align 8, !tbaa !169
  %i.if = load i64, ptr %i.hq, align 8
  %i.ig = getelementptr inbounds i8, ptr %14, i64 %i.if
  store ptr %i.hp, ptr %i.ig, align 8, !tbaa !169
  %i.ih = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ih, align 8, !tbaa !231
  %i.ii = getelementptr inbounds nuw i8, ptr %14, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ii) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %bb.be

bb.ax:                                            ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = load ptr, ptr %16, align 8, !tbaa !195  ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.em
  br i1 %i.il, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.ax, %bb.am
  %.sink = phi ptr [ %i.fa, %bb.am ], [ %i.ik, %bb.ax ]
  %.pn.ph = phi { ptr, i32 } [ %i.ez, %bb.am ], [ %i.ij, %bb.ax ]
  %i.im = load i64, ptr %i.em, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.in) #39
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.ax, %bb.am
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.am ], [ %i.ij, %bb.ax ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.bb

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.au
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.az
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.ip, %bb.az ], [ %i.gk, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.iq = load ptr, ptr %18, align 8, !tbaa !195  ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.fk
  br i1 %i.ir, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.aq
  %.sink97 = phi ptr [ %i.fy, %bb.aq ], [ %i.iq, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.fx, %bb.aq ], [ %eh.lpad-body51, %.body50 ]
  %i.is = load i64, ptr %i.fk, align 8, !tbaa !198
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %.sink97, i64 noundef %i.it) #39
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.aq
  %.pn14 = phi { ptr, i32 } [ %i.fx, %bb.aq ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #36
  br label %bb.ba

bb.ba:                                            ; preds = %.body46, %bb.ay
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.io, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.body43, %bb.ak
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ba ], [ %.pn, %.body43 ], [ %i.ek, %bb.ak ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %15) #36
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.aj
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.bb ], [ %i.ej, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %.body35

.body35:                                          ; preds = %bb.ai, %bb.ad, %bb.bc
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.bc ], [ %i.ei, %bb.ai ], [ %i.dy, %bb.ad ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #36
  br label %bb.bd

bb.bd:                                            ; preds = %.body35, %bb.ah
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.eh, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %.body

bb.be:                                            ; preds = %bb.w, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEEE, i64 16), ptr %13, align 8, !tbaa !169
  %i.iu = load ptr, ptr %i.ci, align 8, !tbaa !432 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE8IsSharedEv.exit.i.i: ; preds = %bb.be
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !437
  %.not.i.i67 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE8IsSharedEv.exit.i.i
  %i.ix = load ptr, ptr %i.cj, align 8, !tbaa !198
  %i.iy = atomicrmw sub ptr %i.ix, i32 1 acq_rel, align 4
  %i.iz = icmp eq i32 %i.iy, 1
  br i1 %i.iz, label %bb.bg, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEED2Ev.exit

bb.bg:                                            ; preds = %bb.bf
  %i.ja = load ptr, ptr %i.ci, align 8, !tbaa !432
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !437
  %i.jd = load ptr, ptr %i.cj, align 8, !tbaa !198
  invoke void %i.jc(ptr noundef %i.jd)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEED2Ev.exit unwind label %bb.bh, !inline_history !58

bb.bh:                                            ; preds = %bb.bg
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #35, !inline_history !438
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEED2Ev.exit: ; preds = %bb.be, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE8IsSharedEv.exit.i.i, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  ret void

.body:                                            ; preds = %bb.x, %.body.i, %bb.bd
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.bd ], [ %i.dg, %bb.x ], [ %i.dc, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm2ESaIiEE6AssignINS1_20IteratorValueAdapterIS3_PKiEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !197, !noalias !4727 ; 3 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4727
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !4727
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 8 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 4      ; 2 uses
  %i.g = icmp ugt i64 %2, %.sink.i
  br i1 %i.g, label %bb.b, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEE8AllocateEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %2) ; 4 uses
  %i.i = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.i, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i, !prof !212

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %i.j, label %.noexc, label %.noexc20

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc20:                                         ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #41 ; 2 uses
  br label %.lr.ph.i23

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEE8AllocateEm.exit: ; preds = %bb.a
  %.sink1.i = lshr i64 %i.a, 1                    ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.sink1.i
  %.sroa.741.0 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sink1.i)
  %.sroa.743.0 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sink1.i) ; 7 uses
  %.not.i = icmp eq i64 %.sroa.743.0, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEE8AllocateEm.exit
  %min.iters.check = icmp samesign ult i64 %.sroa.743.0, 8
  %3 = ptrtoaddr ptr %.sink2.i to i64
  %4 = ptrtoaddr ptr %1 to i64
  %i.n = sub i64 %4, %3
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.sroa.743.0, 9223372036854775800 ; 4 uses
  %i.o = shl i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.q  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load88 = load <4 x i32>, ptr %i.s, align 4, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !211
  store <4 x i32> %wide.load88, ptr %i.t, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !4721

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.743.0, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i.preheader109

.lr.ph.i.preheader109:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph110 = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.p, %middle.block ] ; 2 uses
  %.05.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.743.0, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader109, %.lr.ph.i.prol
  %i.v = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %.ph110, %.lr.ph.i.preheader109 ] ; 2 uses
  %.05.i.prol = phi i64 [ %i.z, %.lr.ph.i.prol ], [ %.05.i.ph, %.lr.ph.i.preheader109 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader109 ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.05.i.prol
  %i.x = load i32, ptr %i.v, align 4, !tbaa !211
  store i32 %i.x, ptr %i.w, align 4, !tbaa !211
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.z = add nuw nsw i64 %.05.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4722

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader109
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader109 ], [ %i.y, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %.ph110, %.lr.ph.i.preheader109 ], [ %i.y, %.lr.ph.i.prol ]
  %.05.i.unr = phi i64 [ %.05.i.ph, %.lr.ph.i.preheader109 ], [ %i.z, %.lr.ph.i.prol ]
  %i.aa = sub nsw i64 %.05.i.ph, %.sroa.743.0
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ac = phi ptr [ %i.ar, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.05.i = phi i64 [ %i.as, %.lr.ph.i ], [ %.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.05.i
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !211
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !211
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.05.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !211
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.05.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !211
  store i32 %i.am, ptr %i.al, align 4, !tbaa !211
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.05.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.an, align 4, !tbaa !211
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !211
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.as = add nuw nsw i64 %.05.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.as, %.sroa.743.0
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !4723

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEE8AllocateEm.exit
  %.sroa.059.0 = phi ptr [ %1, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEE8AllocateEm.exit ], [ %i.p, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ar, %.lr.ph.i ]
  %.not.i22.not = icmp ugt i64 %2, %.sink1.i
  br i1 %.not.i22.not, label %.lr.ph.i23, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit

.lr.ph.i23:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit
  %.sroa.059.083 = phi ptr [ %.sroa.059.0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit ], [ %1, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i ] ; 4 uses
  %.sroa.741.06782 = phi i64 [ %.sroa.741.0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i ] ; 6 uses
  %.sroa.040.06881 = phi ptr [ %i.m, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit ], [ %i.l, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i ] ; 7 uses
  %.sroa.10.06979 = phi i64 [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit ], [ %.sroa.speculated.i, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i ]
  %.sroa.044.07077 = phi ptr [ null, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit ], [ %i.l, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i ] ; 2 uses
  %min.iters.check95 = icmp ult i64 %.sroa.741.06782, 8
  %.sroa.059.08392 = ptrtoaddr ptr %.sroa.040.06881 to i64
  %.sroa.040.0688191 = ptrtoaddr ptr %.sroa.059.083 to i64
  %i.at = sub i64 %.sroa.040.0688191, %.sroa.059.08392
  %diff.check93 = icmp ugt i64 %i.at, -32
  %or.cond108 = select i1 %min.iters.check95, i1 true, i1 %diff.check93
  br i1 %or.cond108, label %scalar.ph94.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %.lr.ph.i23
  %n.vec97 = and i64 %.sroa.741.06782, -8         ; 4 uses
  %i.au = shl i64 %n.vec97, 2
  %i.av = getelementptr i8, ptr %.sroa.059.083, i64 %i.au
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next103, %vector.body98 ] ; 3 uses
  %i.aw = shl i64 %index99, 2
  %next.gep100 = getelementptr i8, ptr %.sroa.059.083, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.06881, i64 %index99 ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load101 = load <4 x i32>, ptr %next.gep100, align 4, !tbaa !211
  %wide.load102 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !211
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %wide.load101, ptr %i.ax, align 4, !tbaa !211
  store <4 x i32> %wide.load102, ptr %i.az, align 4, !tbaa !211
  %index.next103 = add nuw i64 %index99, 8        ; 2 uses
  %i.ba = icmp eq i64 %index.next103, %n.vec97
  br i1 %i.ba, label %middle.block104, label %vector.body98, !llvm.loop !4724

middle.block104:                                  ; preds = %vector.body98
  %cmp.n105 = icmp eq i64 %.sroa.741.06782, %n.vec97
  br i1 %cmp.n105, label %.loopexit, label %scalar.ph94.preheader

scalar.ph94.preheader:                            ; preds = %.lr.ph.i23, %middle.block104
  %.ph = phi ptr [ %.sroa.059.083, %.lr.ph.i23 ], [ %i.av, %middle.block104 ] ; 2 uses
  %.06.i.ph = phi i64 [ 0, %.lr.ph.i23 ], [ %n.vec97, %middle.block104 ] ; 3 uses
  %xtraiter111 = and i64 %.sroa.741.06782, 3      ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol

scalar.ph94.prol:                                 ; preds = %scalar.ph94.preheader, %scalar.ph94.prol
  %i.bb = phi ptr [ %i.be, %scalar.ph94.prol ], [ %.ph, %scalar.ph94.preheader ] ; 2 uses
  %.06.i.prol = phi i64 [ %i.bf, %scalar.ph94.prol ], [ %.06.i.ph, %scalar.ph94.preheader ] ; 2 uses
  %prol.iter113 = phi i64 [ %prol.iter113.next, %scalar.ph94.prol ], [ 0, %scalar.ph94.preheader ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.06881, i64 %.06.i.prol
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !211
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !211
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %i.bf = add nuw i64 %.06.i.prol, 1              ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol, !llvm.loop !4725

scalar.ph94.prol.loopexit:                        ; preds = %scalar.ph94.prol, %scalar.ph94.preheader
  %.unr114 = phi ptr [ %.ph, %scalar.ph94.preheader ], [ %i.be, %scalar.ph94.prol ]
  %.06.i.unr = phi i64 [ %.06.i.ph, %scalar.ph94.preheader ], [ %i.bf, %scalar.ph94.prol ]
  %i.bg = sub i64 %.06.i.ph, %.sroa.741.06782
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit, label %scalar.ph94

scalar.ph94:                                      ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94
  %i.bi = phi ptr [ %i.bx, %scalar.ph94 ], [ %.unr114, %scalar.ph94.prol.loopexit ] ; 5 uses
  %.06.i = phi i64 [ %i.by, %scalar.ph94 ], [ %.06.i.unr, %scalar.ph94.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.06881, i64 %.06.i
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !211
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !211
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.06881, i64 %.06.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !211
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !211
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.06881, i64 %.06.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !211
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !211
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.06881, i64 %.06.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !211
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !211
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.by = add nuw i64 %.06.i, 4                   ; 2 uses
  %exitcond.not.i25.3 = icmp eq i64 %i.by, %.sroa.741.06782
  br i1 %exitcond.not.i25.3, label %.loopexit, label %scalar.ph94, !llvm.loop !4726

.loopexit:                                        ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94, %middle.block104
  %.not = icmp eq ptr %.sroa.044.07077, null
  %.pre86 = load i64, ptr %0, align 8, !tbaa !197 ; 3 uses
  br i1 %.not, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bz = trunc i64 %.pre86 to i1
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !198
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !198
  %i.cc = shl i64 %i.cb, 2
  tail call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cc) #39
  %.pre = load i64, ptr %0, align 8, !tbaa !197
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cd = phi i64 [ %.pre86, %bb.d ], [ %.pre, %bb.e ]
  store ptr %.sroa.044.07077, ptr %i.c, align 8, !tbaa !198
  store i64 %.sroa.10.06979, ptr %i.e, align 8, !tbaa !198
  %i.ce = or i64 %i.cd, 1
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, %bb.f, %.loopexit
  %i.cf = phi i64 [ %i.a, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit ], [ %i.ce, %bb.f ], [ %.pre86, %.loopexit ]
  %i.cg = shl i64 %2, 1
  %i.ch = and i64 %i.cf, 1
  %i.ci = or disjoint i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %0, align 8, !tbaa !197
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118CapacityIsMatcherPImE10gmock_ImplIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK12_GLOBAL__N_118CapacityIsMatcherPImE10gmock_ImplIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE10DescribeToEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call fastcc void @_ZNK12_GLOBAL__N_118CapacityIsMatcherPImE10gmock_ImplIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE17FormatDescriptionB5cxx11Eb(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !195
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !199
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !195    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !198
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !195    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !198
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK12_GLOBAL__N_118CapacityIsMatcherPImE10gmock_ImplIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE18DescribeNegationToEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call fastcc void @_ZNK12_GLOBAL__N_118CapacityIsMatcherPImE10gmock_ImplIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE17FormatDescriptionB5cxx11Eb(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
  %i.a = load ptr, ptr %2, align 8, !tbaa !195
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !199
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !195    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !198
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_138AllocatorSupportTest_Constructors_Test8TestBodyEv:_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit3
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #36
  resume { ptr, i32 } %i.m

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2IPKiTnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEESA_SA_RKS4_.exit: ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.i.i
  %i.n = phi i64 [ %i.j, %.lr.ph.split.us.i.i.preheader ], [ %.pre, %.lr.ph.split.i.i ]
  %i.o = add i64 %i.n, 16                         ; 2 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !197
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit4, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2IPKiTnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEESA_SA_RKS4_.exit
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit4 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit4: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2IPKiTnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEESA_SA_RKS4_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.a, ptr %2, align 8, !tbaa !239
  %.sroa.9.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.9.0..sroa_idx43, align 8
  store i32 1, ptr %i.t, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 2, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !211
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !211
  store i64 6, ptr %i.s, align 8, !tbaa !197
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit10 unwind label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit4
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit10: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !197
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !197
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !197  ; 3 uses
  %i.c = lshr i64 %i.b, 1                         ; 2 uses
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !618  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.promoted.i = load i64, ptr %i.e, align 8, !tbaa !197
  %i.f = sub i64 %.promoted.i, %i.c
  store i64 %i.f, ptr %i.e, align 8, !tbaa !197
  %.pre = load i64, ptr %i.a, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit: ; preds = %bb.a, %.lr.ph.i, %.lr.ph.split.i
  %i.g = phi i64 [ %i.b, %bb.a ], [ %i.b, %.lr.ph.i ], [ %.pre, %.lr.ph.split.i ]
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE21DeallocateIfAllocatedEv.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !198
  %i.m = shl i64 %i.l, 2                          ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #39
  %i.n = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i2, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE21DeallocateIfAllocatedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !tbaa !197
  %i.p = sub i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE21DeallocateIfAllocatedEv.exit

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE21DeallocateIfAllocatedEv.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE8InitFromERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !197  ; 6 uses
  %i.c = lshr i64 %i.b, 1                         ; 13 uses
  %i.d = trunc i64 %i.b to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %i.g = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.g, label %bb.d, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i, !prof !212

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %.noexc.i.i.i, label %.noexc6.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i: ; preds = %bb.c
  %i.i = shl nuw nsw i64 %.sroa.speculated.i, 2   ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #41 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE8AllocateERS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !197
  %i.m = add i64 %i.l, %i.i
  store i64 %i.m, ptr %i.k, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE8AllocateERS5_m.exit

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE8AllocateERS5_m.exit: ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.n, align 8, !tbaa !198
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.speculated.i, ptr %i.o, align 8, !tbaa !198
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE8AllocateERS5_m.exit, %bb.b
  %storemerge = phi ptr [ %i.f, %bb.b ], [ %i.q, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE8AllocateERS5_m.exit ] ; 8 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.j, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE8AllocateERS5_m.exit ] ; 14 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_PKiEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !618  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check21 = icmp ult i64 %i.b, 16
  %2 = ptrtoaddr ptr %.0 to i64
  %3 = ptrtoaddr ptr %storemerge to i64
  %i.t = sub i64 %3, %2
  %diff.check19 = icmp ugt i64 %i.t, -32
  %or.cond = select i1 %min.iters.check21, i1 true, i1 %diff.check19
  br i1 %or.cond, label %.lr.ph.split.us.i.preheader35, label %vector.ph22

vector.ph22:                                      ; preds = %.lr.ph.split.us.i.preheader
  %n.vec23 = and i64 %i.c, 9223372036854775800    ; 4 uses
  %i.u = shl i64 %n.vec23, 2
  %i.v = getelementptr i8, ptr %storemerge, i64 %i.u
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next29, %vector.body24 ] ; 3 uses
  %i.w = shl i64 %index25, 2
  %next.gep26 = getelementptr i8, ptr %storemerge, i64 %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %index25 ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load27 = load <4 x i32>, ptr %next.gep26, align 4, !tbaa !211
  %wide.load28 = load <4 x i32>, ptr %i.y, align 4, !tbaa !211
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %wide.load27, ptr %i.x, align 4, !tbaa !211
  store <4 x i32> %wide.load28, ptr %i.z, align 4, !tbaa !211
  %index.next29 = add nuw i64 %index25, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next29, %n.vec23
  br i1 %i.aa, label %middle.block30, label %vector.body24, !llvm.loop !4781

middle.block30:                                   ; preds = %vector.body24
  %cmp.n31 = icmp eq i64 %i.c, %n.vec23
  br i1 %cmp.n31, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_PKiEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.split.us.i.preheader35

.lr.ph.split.us.i.preheader35:                    ; preds = %.lr.ph.split.us.i.preheader, %middle.block30
  %.ph = phi ptr [ %storemerge, %.lr.ph.split.us.i.preheader ], [ %i.v, %middle.block30 ] ; 2 uses
  %.013.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec23, %middle.block30 ] ; 3 uses
  %xtraiter37 = and i64 %i.c, 3                   ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader35, %.lr.ph.split.us.i.prol
  %i.ab = phi ptr [ %i.ae, %.lr.ph.split.us.i.prol ], [ %.ph, %.lr.ph.split.us.i.preheader35 ] ; 2 uses
  %.013.us.i.prol = phi i64 [ %i.af, %.lr.ph.split.us.i.prol ], [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader35 ] ; 2 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader35 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.us.i.prol
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !211
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !211
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.af = add nuw nsw i64 %.013.us.i.prol, 1      ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !4782

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader35
  %.unr40 = phi ptr [ %.ph, %.lr.ph.split.us.i.preheader35 ], [ %i.ae, %.lr.ph.split.us.i.prol ]
  %.013.us.i.unr = phi i64 [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader35 ], [ %i.af, %.lr.ph.split.us.i.prol ]
  %i.ag = sub nsw i64 %.013.us.i.ph, %i.c
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_PKiEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %i.ai = phi ptr [ %i.ax, %.lr.ph.split.us.i ], [ %.unr40, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %.013.us.i = phi i64 [ %i.ay, %.lr.ph.split.us.i ], [ %.013.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.us.i
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !211
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !211
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.us.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !211
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.us.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !211
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.us.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !211
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !211
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = add nuw nsw i64 %.013.us.i, 4           ; 2 uses
  %exitcond20.not.i.3 = icmp eq i64 %i.ay, %i.c
  br i1 %exitcond20.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_PKiEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.split.us.i, !llvm.loop !4783

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.promoted14.i = load i64, ptr %i.s, align 8, !tbaa !197
  %min.iters.check = icmp ult i64 %i.b, 16
  %4 = ptrtoaddr ptr %.0 to i64
  %5 = ptrtoaddr ptr %storemerge to i64
  %i.az = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond34 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond34, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i
  %n.vec = and i64 %i.c, 9223372036854775800      ; 4 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %storemerge, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %storemerge, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load16 = load <4 x i32>, ptr %i.be, align 4, !tbaa !211
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %wide.load, ptr %i.bd, align 4, !tbaa !211
  store <4 x i32> %wide.load16, ptr %i.bf, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !4784

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.i, %middle.block
  %.ph36 = phi ptr [ %storemerge, %.lr.ph.split.i ], [ %i.bb, %middle.block ] ; 2 uses
  %.013.i.ph = phi i64 [ 0, %.lr.ph.split.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.bh = phi ptr [ %i.bk, %scalar.ph.prol ], [ %.ph36, %scalar.ph.preheader ] ; 2 uses
  %.013.i.prol = phi i64 [ %i.bl, %scalar.ph.prol ], [ %.013.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.i.prol
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !211
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !211
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bl = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4785

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph36, %scalar.ph.preheader ], [ %i.bk, %scalar.ph.prol ]
  %.013.i.unr = phi i64 [ %.013.i.ph, %scalar.ph.preheader ], [ %i.bl, %scalar.ph.prol ]
  %i.bm = sub nsw i64 %.013.i.ph, %i.c
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.split.i, label %scalar.ph

._crit_edge.split.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bo = add i64 %.promoted14.i, %i.c
  store i64 %i.bo, ptr %i.s, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_PKiEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bp = phi ptr [ %i.ce, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.013.i = phi i64 [ %i.cf, %scalar.ph ], [ %.013.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.i
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !211
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !211
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !211
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !211
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !211
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !211
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.013.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !211
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !211
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cf = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cf, %i.c
  br i1 %exitcond.not.i.3, label %._crit_edge.split.i, label %scalar.ph, !llvm.loop !4786

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_PKiEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit: ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block30, %bb.f, %._crit_edge.split.i
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !197
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !197
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.split.i.i:
  %i.a = alloca i64, align 8                      ; 28 uses
  %i.b = alloca i64, align 8                      ; 32 uses
  %1 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 9 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 12 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %24 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %28 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 4 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %32 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 4 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 12 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %37 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 5 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %41 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 5 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %44 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 10 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %46 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 5 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %49 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 15 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %51 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 5 uses
  %52 = alloca %"class.testing::Message", align 8 ; 7 uses
  %53 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %54 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %55 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 4 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %59 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1126", align 4 ; 4 uses
  %60 = alloca %"class.testing::Message", align 8 ; 7 uses
  %61 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %62 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 14 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %64 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %65 = alloca %"class.testing::Message", align 8 ; 7 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_Test8TestBodyEv:.lr.ph.split.i.i
  br i1 %i.kh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360: ; preds = %bb.eh
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !198
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit363

_ZN7testing15AssertionResultD2Ev.exit363:         ; preds = %bb.eg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i64 0, ptr %i.c, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #36
  store ptr %i.c, ptr %44, align 8, !tbaa !239
  %.sroa.5798.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %44, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5798.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.kl = load i64, ptr %i.ij, align 8, !tbaa !197
  %.not.i.i364 = icmp ult i64 %i.kl, 2
  br i1 %.not.i.i364, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit363
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE8InitFromERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %44, ptr noundef nonnull align 8 dereferenceable(40) %35)
          to label %bb.ek unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %44) #36
  br label %.body

bb.ek:                                            ; preds = %bb.ei, %_ZN7testing15AssertionResultD2Ev.exit363
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #36
  store i32 0, ptr %46, align 4
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIiEEEclIlEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %45, ptr noundef nonnull align 4 dereferenceable(4) %46, ptr noundef nonnull @.str.444, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.el unwind label %bb.en

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #36
  %i.kn = load i8, ptr %45, align 8, !tbaa !220, !range !189, !noundef !190
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.ex, label %bb.eo

bb.em:                                            ; preds = %_ZN7testing7MessageD2Ev.exit358, %bb.dw
  %.pn147.pn.pn = phi { ptr, i32 } [ %.pn147.pn, %_ZN7testing7MessageD2Ev.exit358 ], [ %i.jn, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #36
  br label %bb.ge

bb.en:                                            ; preds = %bb.ek
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #36
  br label %bb.fj

bb.eo:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.ep unwind label %bb.et

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #36
  %i.kq = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !221 ; 2 uses
  %.not.i.i365 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i365, label %_ZNK7testing15AssertionResult15failure_messageEv.exit366, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit366

_ZNK7testing15AssertionResult15failure_messageEv.exit366: ; preds = %bb.eq, %bb.ep
  %i.kt = phi ptr [ %i.ks, %bb.eq ], [ @.str.216, %bb.ep ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1809, ptr noundef %i.kt)
          to label %bb.er unwind label %bb.eu

bb.er:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit366
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.es unwind label %bb.ev

bb.es:                                            ; preds = %bb.er
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  %i.ku = load ptr, ptr %47, align 8, !tbaa !223  ; 3 uses
  %.not.i.i367 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i367, label %_ZN7testing7MessageD2Ev.exit369, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368: ; preds = %bb.es
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !169
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(128) %i.ku) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit369

_ZN7testing7MessageD2Ev.exit369:                  ; preds = %bb.es, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #36
  br label %bb.ex

bb.et:                                            ; preds = %bb.eo
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit372

bb.eu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit366
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.er
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #36
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn151 = phi { ptr, i32 } [ %i.la, %bb.ev ], [ %i.kz, %bb.eu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  %i.lb = load ptr, ptr %47, align 8, !tbaa !223  ; 3 uses
  %.not.i.i370 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i370, label %_ZN7testing7MessageD2Ev.exit372, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371: ; preds = %bb.ew
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !169
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(128) %i.lb) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit372

_ZN7testing7MessageD2Ev.exit372:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371, %bb.ew, %bb.et
  %.pn151.pn = phi { ptr, i32 } [ %i.ky, %bb.et ], [ %.pn151, %bb.ew ], [ %.pn151, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #36
  br label %bb.fj

bb.ex:                                            ; preds = %bb.el, %_ZN7testing7MessageD2Ev.exit369
  %i.lf = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !221 ; 4 uses
  %.not.i.i373 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i373, label %_ZN7testing15AssertionResultD2Ev.exit377, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !195 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374: ; preds = %bb.ey
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !198
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit377

_ZN7testing15AssertionResultD2Ev.exit377:         ; preds = %bb.ex, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i64 0, ptr %i.d, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #36
  store ptr %i.d, ptr %49, align 8, !tbaa !239
  %.sroa.5796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5796.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ln = load ptr, ptr %35, align 8, !tbaa !617
  %i.lo = icmp eq ptr %i.d, %i.ln
  %i.lp = load ptr, ptr %.sroa.9.0..sroa_idx808, align 8
  %i.lq = icmp eq ptr %i.lp, null
  %i.lr = select i1 %i.lo, i1 %i.lq, i1 false
  %i.ls = load i64, ptr %i.ij, align 8, !tbaa !197
  %.fr.i = freeze i64 %i.ls                       ; 9 uses
  %i.lt = trunc i64 %.fr.i to i1                  ; 2 uses
  br i1 %i.lr, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit377
  br i1 %i.lt, label %bb.fa, label %.thread.i

bb.fa:                                            ; preds = %bb.ez
  %i.lu = load ptr, ptr %i.ik, align 8, !tbaa !198
  %i.lv = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !198
  %i.lx = getelementptr inbounds nuw i8, ptr %49, i64 24
  store ptr %i.lu, ptr %i.lx, align 8, !tbaa !198
  %i.ly = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i64 %i.lw, ptr %i.ly, align 8, !tbaa !198
  store i64 %.fr.i, ptr %i.lm, align 8, !tbaa !197
  store i64 0, ptr %i.ij, align 8, !tbaa !197
  br label %bb.fh

bb.fb:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit377
  %i.lz = load ptr, ptr %i.ik, align 8
  %spec.select.i = select i1 %i.lt, ptr %i.lz, ptr %i.ik
  br label %.thread.i

.thread.i:                                        ; preds = %bb.fb, %bb.ez
  %i.ma = phi ptr [ %i.ik, %bb.ez ], [ %spec.select.i, %bb.fb ] ; 8 uses
  %i.mb = lshr i64 %.fr.i, 1                      ; 13 uses
  %i.mc = icmp ugt i64 %.fr.i, 9
  br i1 %i.mc, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %.thread.i
  %.sroa.speculated.i.i = call noundef i64 @llvm.umax.i64(i64 %i.mb, i64 8) ; 2 uses
  %i.md = icmp ugt i64 %.fr.i, 4611686018427387903
  br i1 %i.md, label %bb.fd, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, !prof !212

bb.fd:                                            ; preds = %bb.fc
  %i.me = icmp slt i64 %.fr.i, 0
  br i1 %i.me, label %.noexc.i.i.i.i, label %.noexc6.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.fd
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc725 unwind label %bb.fg

.noexc725:                                        ; preds = %.noexc.i.i.i.i
  unreachable

.noexc6.i.i.i.i:                                  ; preds = %bb.fd
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc726 unwind label %bb.fg

.noexc726:                                        ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i: ; preds = %bb.fc
  %i.mf = shl nuw nsw i64 %.sroa.speculated.i.i, 2 ; 2 uses
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #41
          to label %.noexc727 unwind label %bb.fg ; 9 uses

.noexc727:                                        ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i
  %i.mh = load ptr, ptr %49, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.i.i723 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i.i723, label %.lr.ph.i.i, label %bb.fe

bb.fe:                                            ; preds = %.noexc727
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !197
  %i.mj = add i64 %i.mi, %i.mf
  store i64 %i.mj, ptr %i.mh, align 8, !tbaa !197
  br label %.lr.ph.i.i

bb.ff:                                            ; preds = %.thread.i
  %i.mk = getelementptr inbounds nuw i8, ptr %49, i64 24
  %.not.i.i713 = icmp eq i64 %i.mb, 0
  br i1 %.not.i.i713, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit, label %.lr.ph.split.us.i.i720.preheader

.lr.ph.i.i:                                       ; preds = %.noexc727, %bb.fe
  %i.ml = getelementptr inbounds nuw i8, ptr %49, i64 24
  store ptr %i.mg, ptr %i.ml, align 8, !tbaa !198
  %i.mm = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i64 %.sroa.speculated.i.i, ptr %i.mm, align 8, !tbaa !198
  %i.mn = load i64, ptr %i.lm, align 8, !tbaa !197
  %i.mo = or i64 %i.mn, 1                         ; 2 uses
  store i64 %i.mo, ptr %i.lm, align 8, !tbaa !197
  %.pre815 = load ptr, ptr %.sroa.5796.0..sroa_idx, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i.i714 = icmp eq ptr %.pre815, null
  br i1 %.not.i.i.i.i.i.i714, label %.lr.ph.split.us.i.i720.preheader, label %.lr.ph.split.i.i715

.lr.ph.split.us.i.i720.preheader:                 ; preds = %bb.ff, %.lr.ph.i.i
  %.010.i1021 = phi ptr [ %i.mg, %.lr.ph.i.i ], [ %i.mk, %bb.ff ] ; 7 uses
  %i.mp = phi i64 [ %i.mo, %.lr.ph.i.i ], [ 0, %bb.ff ] ; 3 uses
  %min.iters.check1031 = icmp ult i64 %.fr.i, 16
  %121 = ptrtoaddr ptr %.010.i1021 to i64
  %.010.i10211028 = ptrtoaddr ptr %i.ma to i64
  %i.mq = sub i64 %.010.i10211028, %121
  %diff.check1029 = icmp ugt i64 %i.mq, -32
  %or.cond = select i1 %min.iters.check1031, i1 true, i1 %diff.check1029
  br i1 %or.cond, label %.lr.ph.split.us.i.i720.preheader1082, label %vector.ph1032

vector.ph1032:                                    ; preds = %.lr.ph.split.us.i.i720.preheader
  %n.vec1033 = and i64 %i.mb, 9223372036854775800 ; 4 uses
  %i.mr = shl i64 %n.vec1033, 2
  %i.ms = getelementptr i8, ptr %i.ma, i64 %i.mr
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1032
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1039, %vector.body1034 ] ; 3 uses
  %i.mt = shl i64 %index1035, 2
  %next.gep1036 = getelementptr i8, ptr %i.ma, i64 %i.mt ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %index1035 ; 2 uses
  %i.mv = getelementptr i8, ptr %next.gep1036, i64 16
  %wide.load1037 = load <4 x i32>, ptr %next.gep1036, align 4, !tbaa !211
  %wide.load1038 = load <4 x i32>, ptr %i.mv, align 4, !tbaa !211
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store <4 x i32> %wide.load1037, ptr %i.mu, align 4, !tbaa !211
  store <4 x i32> %wide.load1038, ptr %i.mw, align 4, !tbaa !211
  %index.next1039 = add nuw i64 %index1035, 8     ; 2 uses
  %i.mx = icmp eq i64 %index.next1039, %n.vec1033
  br i1 %i.mx, label %middle.block1040, label %vector.body1034, !llvm.loop !4787

middle.block1040:                                 ; preds = %vector.body1034
  %cmp.n1041 = icmp eq i64 %i.mb, %n.vec1033
  br i1 %cmp.n1041, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit, label %.lr.ph.split.us.i.i720.preheader1082

.lr.ph.split.us.i.i720.preheader1082:             ; preds = %.lr.ph.split.us.i.i720.preheader, %middle.block1040
  %.ph1083 = phi ptr [ %i.ma, %.lr.ph.split.us.i.i720.preheader ], [ %i.ms, %middle.block1040 ] ; 2 uses
  %.013.us.i.i721.ph = phi i64 [ 0, %.lr.ph.split.us.i.i720.preheader ], [ %n.vec1033, %middle.block1040 ] ; 3 uses
  %xtraiter1085 = and i64 %i.mb, 3                ; 2 uses
  %lcmp.mod1086.not = icmp eq i64 %xtraiter1085, 0
  br i1 %lcmp.mod1086.not, label %.lr.ph.split.us.i.i720.prol.loopexit, label %.lr.ph.split.us.i.i720.prol

.lr.ph.split.us.i.i720.prol:                      ; preds = %.lr.ph.split.us.i.i720.preheader1082, %.lr.ph.split.us.i.i720.prol
  %i.my = phi ptr [ %i.nb, %.lr.ph.split.us.i.i720.prol ], [ %.ph1083, %.lr.ph.split.us.i.i720.preheader1082 ] ; 2 uses
  %.013.us.i.i721.prol = phi i64 [ %i.nc, %.lr.ph.split.us.i.i720.prol ], [ %.013.us.i.i721.ph, %.lr.ph.split.us.i.i720.preheader1082 ] ; 2 uses
  %prol.iter1087 = phi i64 [ %prol.iter1087.next, %.lr.ph.split.us.i.i720.prol ], [ 0, %.lr.ph.split.us.i.i720.preheader1082 ]
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721.prol
  %i.na = load i32, ptr %i.my, align 4, !tbaa !211
  store i32 %i.na, ptr %i.mz, align 4, !tbaa !211
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 2 uses
  %i.nc = add nuw i64 %.013.us.i.i721.prol, 1     ; 2 uses
  %prol.iter1087.next = add i64 %prol.iter1087, 1 ; 2 uses
  %prol.iter1087.cmp.not = icmp eq i64 %prol.iter1087.next, %xtraiter1085
  br i1 %prol.iter1087.cmp.not, label %.lr.ph.split.us.i.i720.prol.loopexit, label %.lr.ph.split.us.i.i720.prol, !llvm.loop !4788

.lr.ph.split.us.i.i720.prol.loopexit:             ; preds = %.lr.ph.split.us.i.i720.prol, %.lr.ph.split.us.i.i720.preheader1082
  %.unr1088 = phi ptr [ %.ph1083, %.lr.ph.split.us.i.i720.preheader1082 ], [ %i.nb, %.lr.ph.split.us.i.i720.prol ]
  %.013.us.i.i721.unr = phi i64 [ %.013.us.i.i721.ph, %.lr.ph.split.us.i.i720.preheader1082 ], [ %i.nc, %.lr.ph.split.us.i.i720.prol ]
  %i.nd = sub nsw i64 %.013.us.i.i721.ph, %i.mb
  %i.ne = icmp ugt i64 %i.nd, -4
  br i1 %i.ne, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit, label %.lr.ph.split.us.i.i720

.lr.ph.split.us.i.i720:                           ; preds = %.lr.ph.split.us.i.i720.prol.loopexit, %.lr.ph.split.us.i.i720
  %i.nf = phi ptr [ %i.nu, %.lr.ph.split.us.i.i720 ], [ %.unr1088, %.lr.ph.split.us.i.i720.prol.loopexit ] ; 5 uses
  %.013.us.i.i721 = phi i64 [ %i.nv, %.lr.ph.split.us.i.i720 ], [ %.013.us.i.i721.unr, %.lr.ph.split.us.i.i720.prol.loopexit ] ; 5 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721
  %i.nh = load i32, ptr %i.nf, align 4, !tbaa !211
  store i32 %i.nh, ptr %i.ng, align 4, !tbaa !211
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nl = load i32, ptr %i.ni, align 4, !tbaa !211
  store i32 %i.nl, ptr %i.nk, align 4, !tbaa !211
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load i32, ptr %i.nm, align 4, !tbaa !211
  store i32 %i.np, ptr %i.no, align 4, !tbaa !211
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 12
  %i.nt = load i32, ptr %i.nq, align 4, !tbaa !211
  store i32 %i.nt, ptr %i.ns, align 4, !tbaa !211
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nv = add nuw i64 %.013.us.i.i721, 4          ; 2 uses
  %exitcond20.not.i.i722.3 = icmp eq i64 %i.nv, %i.mb
  br i1 %exitcond20.not.i.i722.3, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit, label %.lr.ph.split.us.i.i720, !llvm.loop !4789

.lr.ph.split.i.i715:                              ; preds = %.lr.ph.i.i
  %.promoted14.i.i716 = load i64, ptr %.pre815, align 8, !tbaa !197
  %min.iters.check = icmp ult i64 %.fr.i, 16
  %122 = ptrtoaddr ptr %i.mg to i64
  %123 = ptrtoaddr ptr %i.ma to i64
  %i.nw = sub i64 %123, %122
  %diff.check = icmp ugt i64 %i.nw, -32
  %or.cond1077 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1077, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.i715
  %n.vec = and i64 %i.mb, 2305843009213693944     ; 4 uses
  %i.nx = shl nuw nsw i64 %n.vec, 2
  %i.ny = getelementptr i8, ptr %i.ma, i64 %i.nx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ma, i64 %i.nz ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %index ; 2 uses
  %i.ob = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load1025 = load <4 x i32>, ptr %i.ob, align 4, !tbaa !211
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store <4 x i32> %wide.load, ptr %i.oa, align 4, !tbaa !211
  store <4 x i32> %wide.load1025, ptr %i.oc, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.od = icmp eq i64 %index.next, %n.vec
  br i1 %i.od, label %middle.block, label %vector.body, !llvm.loop !4790

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mb, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.i.i719, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.i.i715, %middle.block
  %.ph1084 = phi ptr [ %i.ma, %.lr.ph.split.i.i715 ], [ %i.ny, %middle.block ] ; 2 uses
  %.013.i.i717.ph = phi i64 [ 0, %.lr.ph.split.i.i715 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.mb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.oe = phi ptr [ %i.oh, %scalar.ph.prol ], [ %.ph1084, %scalar.ph.preheader ] ; 2 uses
  %.013.i.i717.prol = phi i64 [ %i.oi, %scalar.ph.prol ], [ %.013.i.i717.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.013.i.i717.prol
  %i.og = load i32, ptr %i.oe, align 4, !tbaa !211
  store i32 %i.og, ptr %i.of, align 4, !tbaa !211
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 4 ; 2 uses
  %i.oi = add nuw i64 %.013.i.i717.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4791

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph1084, %scalar.ph.preheader ], [ %i.oh, %scalar.ph.prol ]
  %.013.i.i717.unr = phi i64 [ %.013.i.i717.ph, %scalar.ph.preheader ], [ %i.oi, %scalar.ph.prol ]
  %i.oj = sub nsw i64 %.013.i.i717.ph, %i.mb
  %i.ok = icmp ugt i64 %i.oj, -4
  br i1 %i.ok, label %._crit_edge.split.i.i719, label %scalar.ph

._crit_edge.split.i.i719:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ol = add i64 %.promoted14.i.i716, %i.mb
  store i64 %i.ol, ptr %.pre815, align 8, !tbaa !197
  %.pre816 = load i64, ptr %i.lm, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.om = phi ptr [ %i.pb, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.013.i.i717 = phi i64 [ %i.pc, %scalar.ph ], [ %.013.i.i717.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.013.i.i717
  %i.oo = load i32, ptr %i.om, align 4, !tbaa !211
  store i32 %i.oo, ptr %i.on, align 4, !tbaa !211
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.013.i.i717
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.os = load i32, ptr %i.op, align 4, !tbaa !211
  store i32 %i.os, ptr %i.or, align 4, !tbaa !211
  %i.ot = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.013.i.i717
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load i32, ptr %i.ot, align 4, !tbaa !211
  store i32 %i.ow, ptr %i.ov, align 4, !tbaa !211
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 12
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.013.i.i717
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  %i.pa = load i32, ptr %i.ox, align 4, !tbaa !211
  store i32 %i.pa, ptr %i.oz, align 4, !tbaa !211
  %i.pb = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.pc = add nuw i64 %.013.i.i717, 4             ; 2 uses
  %exitcond.not.i.i718.3 = icmp eq i64 %i.pc, %i.mb
  br i1 %exitcond.not.i.i718.3, label %._crit_edge.split.i.i719, label %scalar.ph, !llvm.loop !4792

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit: ; preds = %.lr.ph.split.us.i.i720.prol.loopexit, %.lr.ph.split.us.i.i720, %middle.block1040, %bb.ff, %._crit_edge.split.i.i719
  %i.pd = phi i64 [ %.pre816, %._crit_edge.split.i.i719 ], [ 0, %bb.ff ], [ %i.mp, %middle.block1040 ], [ %i.mp, %.lr.ph.split.us.i.i720 ], [ %i.mp, %.lr.ph.split.us.i.i720.prol.loopexit ]
  %i.pe = and i64 %.fr.i, -2
  %i.pf = add i64 %i.pd, %i.pe
  store i64 %i.pf, ptr %i.lm, align 8, !tbaa !197
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %49) #36
  br label %.body378

bb.fh:                                            ; preds = %bb.fa, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #36
  store i32 0, ptr %51, align 4
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIiEEEclIlEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %50, ptr noundef nonnull align 4 dereferenceable(4) %51, ptr noundef nonnull @.str.445, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #36
  %i.ph = load i8, ptr %50, align 8, !tbaa !220, !range !189, !noundef !190
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.fu, label %bb.fl

bb.fj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit372, %bb.en
  %.pn151.pn.pn = phi { ptr, i32 } [ %.pn151.pn, %_ZN7testing7MessageD2Ev.exit372 ], [ %i.kp, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br label %bb.gd

bb.fk:                                            ; preds = %bb.fh
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #36
  br label %bb.gc

bb.fl:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.fm unwind label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #36
  %i.pk = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !221 ; 2 uses
  %.not.i.i380 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i380, label %_ZNK7testing15AssertionResult15failure_messageEv.exit381, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit381

_ZNK7testing15AssertionResult15failure_messageEv.exit381: ; preds = %bb.fn, %bb.fm
  %i.pn = phi ptr [ %i.pm, %bb.fn ], [ @.str.216, %bb.fm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %53, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1814, ptr noundef %i.pn)
          to label %bb.fo unwind label %bb.fr

bb.fo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit381
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.fp unwind label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #36
  %i.po = load ptr, ptr %52, align 8, !tbaa !223  ; 3 uses
  %.not.i.i382 = icmp eq ptr %i.po, null
  br i1 %.not.i.i382, label %_ZN7testing7MessageD2Ev.exit384, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383: ; preds = %bb.fp
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !169
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(128) %i.po) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit384

_ZN7testing7MessageD2Ev.exit384:                  ; preds = %bb.fp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #36
  br label %bb.fu

bb.fq:                                            ; preds = %bb.fl
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit387

bb.fr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit381
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fo
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #36
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.pn155 = phi { ptr, i32 } [ %i.pu, %bb.fs ], [ %i.pt, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #36
  %i.pv = load ptr, ptr %52, align 8, !tbaa !223  ; 3 uses
  %.not.i.i385 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i385, label %_ZN7testing7MessageD2Ev.exit387, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386: ; preds = %bb.ft
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !169
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(128) %i.pv) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit387

_ZN7testing7MessageD2Ev.exit387:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386, %bb.ft, %bb.fq
  %.pn155.pn = phi { ptr, i32 } [ %i.ps, %bb.fq ], [ %.pn155, %bb.ft ], [ %.pn155, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386 ]
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_Test8TestBodyEv:.lr.ph.split.i.i
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i445
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit448

_ZN7testing15AssertionResultD2Ev.exit448:         ; preds = %bb.id, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  store i64 0, ptr %i.e, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #36
  store ptr %i.e, ptr %71, align 8, !tbaa !239
  %.sroa.5792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5792.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.vh = load i64, ptr %i.so, align 8, !tbaa !197
  %.not.i.i449 = icmp ult i64 %i.vh, 2
  br i1 %.not.i.i449, label %bb.ih, label %bb.if

bb.if:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit448
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE8InitFromERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %71, ptr noundef nonnull align 8 dereferenceable(40) %62)
          to label %._crit_edge unwind label %bb.ig

._crit_edge:                                      ; preds = %bb.if
  %.pre818 = load i64, ptr %i.vg, align 8, !tbaa !197
  %i.vi = shl i64 %.pre818, 1
  %i.vj = and i64 %i.vi, -4
  br label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %71) #36
  br label %.body450

bb.ih:                                            ; preds = %._crit_edge, %_ZN7testing15AssertionResultD2Ev.exit448
  %i.vl = phi i64 [ %i.vj, %._crit_edge ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit448 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #36
  store i64 %i.vl, ptr %73, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIlEEEclIlEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %72, ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull @.str.444, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ii unwind label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #36
  %i.vm = load i8, ptr %72, align 8, !tbaa !220, !range !189, !noundef !190
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %bb.iu, label %bb.il

bb.ij:                                            ; preds = %_ZN7testing7MessageD2Ev.exit443, %bb.ht
  %.pn173.pn.pn = phi { ptr, i32 } [ %.pn173.pn, %_ZN7testing7MessageD2Ev.exit443 ], [ %i.uj, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #36
  br label %bb.kd

bb.ik:                                            ; preds = %bb.ih
  %i.vo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #36
  br label %bb.jg

bb.il:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %bb.im unwind label %bb.iq

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #36
  %i.vp = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !221 ; 2 uses
  %.not.i.i453 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i453, label %_ZNK7testing15AssertionResult15failure_messageEv.exit454, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit454

_ZNK7testing15AssertionResult15failure_messageEv.exit454: ; preds = %bb.in, %bb.im
  %i.vs = phi ptr [ %i.vr, %bb.in ], [ @.str.216, %bb.im ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %75, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1828, ptr noundef %i.vs)
          to label %bb.io unwind label %bb.ir

bb.io:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit454
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %bb.ip unwind label %bb.is

bb.ip:                                            ; preds = %bb.io
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #36
  %i.vt = load ptr, ptr %74, align 8, !tbaa !223  ; 3 uses
  %.not.i.i455 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i455, label %_ZN7testing7MessageD2Ev.exit457, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456: ; preds = %bb.ip
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !169
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8
  call void %i.vw(ptr noundef nonnull align 8 dereferenceable(128) %i.vt) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit457

_ZN7testing7MessageD2Ev.exit457:                  ; preds = %bb.ip, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #36
  br label %bb.iu

bb.iq:                                            ; preds = %bb.il
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit460

bb.ir:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit454
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.is:                                            ; preds = %bb.io
  %i.vz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #36
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %.pn177 = phi { ptr, i32 } [ %i.vz, %bb.is ], [ %i.vy, %bb.ir ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #36
  %i.wa = load ptr, ptr %74, align 8, !tbaa !223  ; 3 uses
  %.not.i.i458 = icmp eq ptr %i.wa, null
  br i1 %.not.i.i458, label %_ZN7testing7MessageD2Ev.exit460, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459: ; preds = %bb.it
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !169
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8
  call void %i.wd(ptr noundef nonnull align 8 dereferenceable(128) %i.wa) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit460

_ZN7testing7MessageD2Ev.exit460:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459, %bb.it, %bb.iq
  %.pn177.pn = phi { ptr, i32 } [ %i.vx, %bb.iq ], [ %.pn177, %bb.it ], [ %.pn177, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #36
  br label %bb.jg

bb.iu:                                            ; preds = %bb.ii, %_ZN7testing7MessageD2Ev.exit457
  %i.we = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !221 ; 4 uses
  %.not.i.i461 = icmp eq ptr %i.wf, null
  br i1 %.not.i.i461, label %_ZN7testing15AssertionResultD2Ev.exit465, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !195 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 16 ; 2 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  br i1 %i.wi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462: ; preds = %bb.iv
  %i.wj = load i64, ptr %i.wh, align 8, !tbaa !198
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wk) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463: ; preds = %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462
  call void @_ZdlPvm(ptr noundef nonnull %i.wf, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit465

_ZN7testing15AssertionResultD2Ev.exit465:         ; preds = %bb.iu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i64 0, ptr %i.f, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #36
  store ptr %i.f, ptr %76, align 8, !tbaa !239
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.wm = load ptr, ptr %62, align 8, !tbaa !617
  %i.wn = icmp eq ptr %i.f, %i.wm
  %i.wo = load ptr, ptr %.sroa.9.0..sroa_idx810, align 8
  %i.wp = icmp eq ptr %i.wo, null
  %i.wq = select i1 %i.wn, i1 %i.wp, i1 false
  %i.wr = load i64, ptr %i.so, align 8, !tbaa !197
  %.fr.i466 = freeze i64 %i.wr                    ; 10 uses
  %i.ws = trunc i64 %.fr.i466 to i1               ; 2 uses
  br i1 %i.wq, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit465
  br i1 %i.ws, label %bb.ix, label %.thread.i468

bb.ix:                                            ; preds = %bb.iw
  %i.wt = load ptr, ptr %i.st, align 8, !tbaa !198
  %i.wu = load i64, ptr %i.su, align 8, !tbaa !198
  %i.wv = getelementptr inbounds nuw i8, ptr %76, i64 24
  store ptr %i.wt, ptr %i.wv, align 8, !tbaa !198
  %i.ww = getelementptr inbounds nuw i8, ptr %76, i64 32
  store i64 %i.wu, ptr %i.ww, align 8, !tbaa !198
  store i64 %.fr.i466, ptr %i.wl, align 8, !tbaa !197
  store i64 0, ptr %i.so, align 8, !tbaa !197
  br label %bb.je

bb.iy:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit465
  %i.wx = load ptr, ptr %i.st, align 8
  %spec.select.i467 = select i1 %i.ws, ptr %i.wx, ptr %i.st
  br label %.thread.i468

.thread.i468:                                     ; preds = %bb.iy, %bb.iw
  %i.wy = phi ptr [ %i.st, %bb.iw ], [ %spec.select.i467, %bb.iy ] ; 8 uses
  %i.wz = lshr i64 %.fr.i466, 1                   ; 13 uses
  %i.xa = icmp ugt i64 %.fr.i466, 9
  br i1 %i.xa, label %bb.iz, label %bb.jc

bb.iz:                                            ; preds = %.thread.i468
  %.sroa.speculated.i.i760 = call noundef i64 @llvm.umax.i64(i64 %i.wz, i64 8) ; 2 uses
  %i.xb = icmp ugt i64 %.fr.i466, 4611686018427387903
  br i1 %i.xb, label %bb.ja, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i761, !prof !212

bb.ja:                                            ; preds = %bb.iz
  %i.xc = icmp slt i64 %.fr.i466, 0
  br i1 %i.xc, label %.noexc.i.i.i.i765, label %.noexc6.i.i.i.i764

.noexc.i.i.i.i765:                                ; preds = %bb.ja
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc766 unwind label %bb.jd

.noexc766:                                        ; preds = %.noexc.i.i.i.i765
  unreachable

.noexc6.i.i.i.i764:                               ; preds = %bb.ja
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc767 unwind label %bb.jd

.noexc767:                                        ; preds = %.noexc6.i.i.i.i764
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i761: ; preds = %bb.iz
  %i.xd = shl nuw nsw i64 %.sroa.speculated.i.i760, 2 ; 2 uses
  %i.xe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xd) #41
          to label %.noexc768 unwind label %bb.jd ; 9 uses

.noexc768:                                        ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i761
  %i.xf = load ptr, ptr %76, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.i.i762 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i.i762, label %.lr.ph.i.i749, label %bb.jb

bb.jb:                                            ; preds = %.noexc768
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !197
  %i.xh = add i64 %i.xg, %i.xd
  store i64 %i.xh, ptr %i.xf, align 8, !tbaa !197
  br label %.lr.ph.i.i749

bb.jc:                                            ; preds = %.thread.i468
  %i.xi = getelementptr inbounds nuw i8, ptr %76, i64 24
  %.not.i.i748 = icmp eq i64 %i.wz, 0
  br i1 %.not.i.i748, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769, label %.lr.ph.split.us.i.i757.preheader

.lr.ph.i.i749:                                    ; preds = %.noexc768, %bb.jb
  %i.xj = getelementptr inbounds nuw i8, ptr %76, i64 24
  store ptr %i.xe, ptr %i.xj, align 8, !tbaa !198
  %i.xk = getelementptr inbounds nuw i8, ptr %76, i64 32
  store i64 %.sroa.speculated.i.i760, ptr %i.xk, align 8, !tbaa !198
  %i.xl = load i64, ptr %i.wl, align 8, !tbaa !197
  %i.xm = or i64 %i.xl, 1                         ; 2 uses
  store i64 %i.xm, ptr %i.wl, align 8, !tbaa !197
  %.pre819 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i.i751 = icmp eq ptr %.pre819, null
  br i1 %.not.i.i.i.i.i.i751, label %.lr.ph.split.us.i.i757.preheader, label %.lr.ph.split.i.i752

.lr.ph.split.us.i.i757.preheader:                 ; preds = %bb.jc, %.lr.ph.i.i749
  %.010.i7501024 = phi ptr [ %i.xe, %.lr.ph.i.i749 ], [ %i.xi, %bb.jc ] ; 7 uses
  %i.xn = phi i64 [ %i.xm, %.lr.ph.i.i749 ], [ 0, %bb.jc ] ; 3 uses
  %min.iters.check1064 = icmp ult i64 %.fr.i466, 16
  %124 = ptrtoaddr ptr %.010.i7501024 to i64
  %.010.i75010241061 = ptrtoaddr ptr %i.wy to i64
  %i.xo = sub i64 %.010.i75010241061, %124
  %diff.check1062 = icmp ugt i64 %i.xo, -32
  %or.cond1078 = select i1 %min.iters.check1064, i1 true, i1 %diff.check1062
  br i1 %or.cond1078, label %.lr.ph.split.us.i.i757.preheader1080, label %vector.ph1065

vector.ph1065:                                    ; preds = %.lr.ph.split.us.i.i757.preheader
  %n.vec1066 = and i64 %i.wz, 9223372036854775800 ; 4 uses
  %i.xp = shl i64 %n.vec1066, 2
  %i.xq = getelementptr i8, ptr %i.wy, i64 %i.xp
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1072, %vector.body1067 ] ; 3 uses
  %i.xr = shl i64 %index1068, 2
  %next.gep1069 = getelementptr i8, ptr %i.wy, i64 %i.xr ; 2 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %index1068 ; 2 uses
  %i.xt = getelementptr i8, ptr %next.gep1069, i64 16
  %wide.load1070 = load <4 x i32>, ptr %next.gep1069, align 4, !tbaa !211
  %wide.load1071 = load <4 x i32>, ptr %i.xt, align 4, !tbaa !211
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  store <4 x i32> %wide.load1070, ptr %i.xs, align 4, !tbaa !211
  store <4 x i32> %wide.load1071, ptr %i.xu, align 4, !tbaa !211
  %index.next1072 = add nuw i64 %index1068, 8     ; 2 uses
  %i.xv = icmp eq i64 %index.next1072, %n.vec1066
  br i1 %i.xv, label %middle.block1073, label %vector.body1067, !llvm.loop !4793

middle.block1073:                                 ; preds = %vector.body1067
  %cmp.n1074 = icmp eq i64 %i.wz, %n.vec1066
  br i1 %cmp.n1074, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769, label %.lr.ph.split.us.i.i757.preheader1080

.lr.ph.split.us.i.i757.preheader1080:             ; preds = %.lr.ph.split.us.i.i757.preheader, %middle.block1073
  %.ph = phi ptr [ %i.wy, %.lr.ph.split.us.i.i757.preheader ], [ %i.xq, %middle.block1073 ] ; 2 uses
  %.013.us.i.i758.ph = phi i64 [ 0, %.lr.ph.split.us.i.i757.preheader ], [ %n.vec1066, %middle.block1073 ] ; 3 uses
  %xtraiter1093 = and i64 %i.wz, 3                ; 2 uses
  %lcmp.mod1094.not = icmp eq i64 %xtraiter1093, 0
  br i1 %lcmp.mod1094.not, label %.lr.ph.split.us.i.i757.prol.loopexit, label %.lr.ph.split.us.i.i757.prol

.lr.ph.split.us.i.i757.prol:                      ; preds = %.lr.ph.split.us.i.i757.preheader1080, %.lr.ph.split.us.i.i757.prol
  %i.xw = phi ptr [ %i.xz, %.lr.ph.split.us.i.i757.prol ], [ %.ph, %.lr.ph.split.us.i.i757.preheader1080 ] ; 2 uses
  %.013.us.i.i758.prol = phi i64 [ %i.ya, %.lr.ph.split.us.i.i757.prol ], [ %.013.us.i.i758.ph, %.lr.ph.split.us.i.i757.preheader1080 ] ; 2 uses
  %prol.iter1095 = phi i64 [ %prol.iter1095.next, %.lr.ph.split.us.i.i757.prol ], [ 0, %.lr.ph.split.us.i.i757.preheader1080 ]
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758.prol
  %i.xy = load i32, ptr %i.xw, align 4, !tbaa !211
  store i32 %i.xy, ptr %i.xx, align 4, !tbaa !211
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 4 ; 2 uses
  %i.ya = add nuw i64 %.013.us.i.i758.prol, 1     ; 2 uses
  %prol.iter1095.next = add i64 %prol.iter1095, 1 ; 2 uses
  %prol.iter1095.cmp.not = icmp eq i64 %prol.iter1095.next, %xtraiter1093
  br i1 %prol.iter1095.cmp.not, label %.lr.ph.split.us.i.i757.prol.loopexit, label %.lr.ph.split.us.i.i757.prol, !llvm.loop !4794

.lr.ph.split.us.i.i757.prol.loopexit:             ; preds = %.lr.ph.split.us.i.i757.prol, %.lr.ph.split.us.i.i757.preheader1080
  %.unr1096 = phi ptr [ %.ph, %.lr.ph.split.us.i.i757.preheader1080 ], [ %i.xz, %.lr.ph.split.us.i.i757.prol ]
  %.013.us.i.i758.unr = phi i64 [ %.013.us.i.i758.ph, %.lr.ph.split.us.i.i757.preheader1080 ], [ %i.ya, %.lr.ph.split.us.i.i757.prol ]
  %i.yb = sub nsw i64 %.013.us.i.i758.ph, %i.wz
  %i.yc = icmp ugt i64 %i.yb, -4
  br i1 %i.yc, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769, label %.lr.ph.split.us.i.i757

.lr.ph.split.us.i.i757:                           ; preds = %.lr.ph.split.us.i.i757.prol.loopexit, %.lr.ph.split.us.i.i757
  %i.yd = phi ptr [ %i.ys, %.lr.ph.split.us.i.i757 ], [ %.unr1096, %.lr.ph.split.us.i.i757.prol.loopexit ] ; 5 uses
  %.013.us.i.i758 = phi i64 [ %i.yt, %.lr.ph.split.us.i.i757 ], [ %.013.us.i.i758.unr, %.lr.ph.split.us.i.i757.prol.loopexit ] ; 5 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758
  %i.yf = load i32, ptr %i.yd, align 4, !tbaa !211
  store i32 %i.yf, ptr %i.ye, align 4, !tbaa !211
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 4
  %i.yj = load i32, ptr %i.yg, align 4, !tbaa !211
  store i32 %i.yj, ptr %i.yi, align 4, !tbaa !211
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load i32, ptr %i.yk, align 4, !tbaa !211
  store i32 %i.yn, ptr %i.ym, align 4, !tbaa !211
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yd, i64 12
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 12
  %i.yr = load i32, ptr %i.yo, align 4, !tbaa !211
  store i32 %i.yr, ptr %i.yq, align 4, !tbaa !211
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.yt = add nuw i64 %.013.us.i.i758, 4          ; 2 uses
  %exitcond20.not.i.i759.3 = icmp eq i64 %i.yt, %i.wz
  br i1 %exitcond20.not.i.i759.3, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769, label %.lr.ph.split.us.i.i757, !llvm.loop !4795

.lr.ph.split.i.i752:                              ; preds = %.lr.ph.i.i749
  %.promoted14.i.i753 = load i64, ptr %.pre819, align 8, !tbaa !197
  %min.iters.check1047 = icmp ult i64 %.fr.i466, 16
  %125 = ptrtoaddr ptr %i.xe to i64
  %126 = ptrtoaddr ptr %i.wy to i64
  %i.yu = sub i64 %126, %125
  %diff.check1045 = icmp ugt i64 %i.yu, -32
  %or.cond1079 = select i1 %min.iters.check1047, i1 true, i1 %diff.check1045
  br i1 %or.cond1079, label %scalar.ph1046.preheader, label %vector.ph1048

vector.ph1048:                                    ; preds = %.lr.ph.split.i.i752
  %n.vec1049 = and i64 %i.wz, 2305843009213693944 ; 4 uses
  %i.yv = shl nuw nsw i64 %n.vec1049, 2
  %i.yw = getelementptr i8, ptr %i.wy, i64 %i.yv
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1048
  %index1051 = phi i64 [ 0, %vector.ph1048 ], [ %index.next1055, %vector.body1050 ] ; 3 uses
  %i.yx = shl i64 %index1051, 2
  %next.gep1052 = getelementptr i8, ptr %i.wy, i64 %i.yx ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %index1051 ; 2 uses
  %i.yz = getelementptr i8, ptr %next.gep1052, i64 16
  %wide.load1053 = load <4 x i32>, ptr %next.gep1052, align 4, !tbaa !211
  %wide.load1054 = load <4 x i32>, ptr %i.yz, align 4, !tbaa !211
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  store <4 x i32> %wide.load1053, ptr %i.yy, align 4, !tbaa !211
  store <4 x i32> %wide.load1054, ptr %i.za, align 4, !tbaa !211
  %index.next1055 = add nuw i64 %index1051, 8     ; 2 uses
  %i.zb = icmp eq i64 %index.next1055, %n.vec1049
  br i1 %i.zb, label %middle.block1056, label %vector.body1050, !llvm.loop !4796

middle.block1056:                                 ; preds = %vector.body1050
  %cmp.n1057 = icmp eq i64 %i.wz, %n.vec1049
  br i1 %cmp.n1057, label %._crit_edge.split.i.i756, label %scalar.ph1046.preheader

scalar.ph1046.preheader:                          ; preds = %.lr.ph.split.i.i752, %middle.block1056
  %.ph1081 = phi ptr [ %i.wy, %.lr.ph.split.i.i752 ], [ %i.yw, %middle.block1056 ] ; 2 uses
  %.013.i.i754.ph = phi i64 [ 0, %.lr.ph.split.i.i752 ], [ %n.vec1049, %middle.block1056 ] ; 3 uses
  %xtraiter1089 = and i64 %i.wz, 3                ; 2 uses
  %lcmp.mod1090.not = icmp eq i64 %xtraiter1089, 0
  br i1 %lcmp.mod1090.not, label %scalar.ph1046.prol.loopexit, label %scalar.ph1046.prol

scalar.ph1046.prol:                               ; preds = %scalar.ph1046.preheader, %scalar.ph1046.prol
  %i.zc = phi ptr [ %i.zf, %scalar.ph1046.prol ], [ %.ph1081, %scalar.ph1046.preheader ] ; 2 uses
  %.013.i.i754.prol = phi i64 [ %i.zg, %scalar.ph1046.prol ], [ %.013.i.i754.ph, %scalar.ph1046.preheader ] ; 2 uses
  %prol.iter1091 = phi i64 [ %prol.iter1091.next, %scalar.ph1046.prol ], [ 0, %scalar.ph1046.preheader ]
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.013.i.i754.prol
  %i.ze = load i32, ptr %i.zc, align 4, !tbaa !211
  store i32 %i.ze, ptr %i.zd, align 4, !tbaa !211
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 4 ; 2 uses
  %i.zg = add nuw i64 %.013.i.i754.prol, 1        ; 2 uses
  %prol.iter1091.next = add i64 %prol.iter1091, 1 ; 2 uses
  %prol.iter1091.cmp.not = icmp eq i64 %prol.iter1091.next, %xtraiter1089
  br i1 %prol.iter1091.cmp.not, label %scalar.ph1046.prol.loopexit, label %scalar.ph1046.prol, !llvm.loop !4797

scalar.ph1046.prol.loopexit:                      ; preds = %scalar.ph1046.prol, %scalar.ph1046.preheader
  %.unr1092 = phi ptr [ %.ph1081, %scalar.ph1046.preheader ], [ %i.zf, %scalar.ph1046.prol ]
  %.013.i.i754.unr = phi i64 [ %.013.i.i754.ph, %scalar.ph1046.preheader ], [ %i.zg, %scalar.ph1046.prol ]
  %i.zh = sub nsw i64 %.013.i.i754.ph, %i.wz
  %i.zi = icmp ugt i64 %i.zh, -4
  br i1 %i.zi, label %._crit_edge.split.i.i756, label %scalar.ph1046

._crit_edge.split.i.i756:                         ; preds = %scalar.ph1046.prol.loopexit, %scalar.ph1046, %middle.block1056
  %i.zj = add i64 %.promoted14.i.i753, %i.wz
  store i64 %i.zj, ptr %.pre819, align 8, !tbaa !197
  %.pre820 = load i64, ptr %i.wl, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769

scalar.ph1046:                                    ; preds = %scalar.ph1046.prol.loopexit, %scalar.ph1046
  %i.zk = phi ptr [ %i.zz, %scalar.ph1046 ], [ %.unr1092, %scalar.ph1046.prol.loopexit ] ; 5 uses
  %.013.i.i754 = phi i64 [ %i.aaa, %scalar.ph1046 ], [ %.013.i.i754.unr, %scalar.ph1046.prol.loopexit ] ; 5 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.013.i.i754
  %i.zm = load i32, ptr %i.zk, align 4, !tbaa !211
  store i32 %i.zm, ptr %i.zl, align 4, !tbaa !211
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.013.i.i754
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.zq = load i32, ptr %i.zn, align 4, !tbaa !211
  store i32 %i.zq, ptr %i.zp, align 4, !tbaa !211
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.013.i.i754
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zu = load i32, ptr %i.zr, align 4, !tbaa !211
  store i32 %i.zu, ptr %i.zt, align 4, !tbaa !211
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zk, i64 12
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.013.i.i754
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 12
  %i.zy = load i32, ptr %i.zv, align 4, !tbaa !211
  store i32 %i.zy, ptr %i.zx, align 4, !tbaa !211
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.aaa = add nuw i64 %.013.i.i754, 4            ; 2 uses
  %exitcond.not.i.i755.3 = icmp eq i64 %i.aaa, %i.wz
  br i1 %exitcond.not.i.i755.3, label %._crit_edge.split.i.i756, label %scalar.ph1046, !llvm.loop !4798

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769: ; preds = %.lr.ph.split.us.i.i757.prol.loopexit, %.lr.ph.split.us.i.i757, %middle.block1073, %bb.jc, %._crit_edge.split.i.i756
  %i.aab = phi i64 [ %.pre820, %._crit_edge.split.i.i756 ], [ 0, %bb.jc ], [ %i.xn, %middle.block1073 ], [ %i.xn, %.lr.ph.split.us.i.i757 ], [ %i.xn, %.lr.ph.split.us.i.i757.prol.loopexit ]
  %i.aac = and i64 %.fr.i466, -2
  %i.aad = add i64 %i.aab, %i.aac                 ; 2 uses
  store i64 %i.aad, ptr %i.wl, align 8, !tbaa !197
  br label %bb.je

bb.jd:                                            ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i761, %.noexc6.i.i.i.i764, %.noexc.i.i.i.i765
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %76) #36
  br label %.body469

bb.je:                                            ; preds = %bb.ix, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769
  %i.aaf = phi i64 [ %.fr.i466, %bb.ix ], [ %i.aad, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #36
  %i.aag = shl i64 %i.aaf, 1
  %i.aah = and i64 %i.aag, -4
  store i64 %i.aah, ptr %78, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIlEEEclIlEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %77, ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull @.str.445, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.jf unwind label %bb.jh

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #36
  %i.aai = load i8, ptr %77, align 8, !tbaa !220, !range !189, !noundef !190
  %i.aaj = trunc nuw i8 %i.aai to i1
  br i1 %i.aaj, label %bb.jr, label %bb.ji

bb.jg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit460, %bb.ik
  %.pn177.pn.pn = phi { ptr, i32 } [ %.pn177.pn, %_ZN7testing7MessageD2Ev.exit460 ], [ %i.vo, %bb.ik ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #36
  br label %bb.kc

bb.jh:                                            ; preds = %bb.je
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #36
  br label %bb.kb

bb.ji:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %bb.jj unwind label %bb.jn

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #36
  %i.aal = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !221 ; 2 uses
  %.not.i.i472 = icmp eq ptr %i.aam, null
  br i1 %.not.i.i472, label %_ZNK7testing15AssertionResult15failure_messageEv.exit473, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit473

_ZNK7testing15AssertionResult15failure_messageEv.exit473: ; preds = %bb.jk, %bb.jj
  %i.aao = phi ptr [ %i.aan, %bb.jk ], [ @.str.216, %bb.jj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %80, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1834, ptr noundef %i.aao)
          to label %bb.jl unwind label %bb.jo

bb.jl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit473
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %bb.jm unwind label %bb.jp

bb.jm:                                            ; preds = %bb.jl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %80) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #36
  %i.aap = load ptr, ptr %79, align 8, !tbaa !223 ; 3 uses
  %.not.i.i474 = icmp eq ptr %i.aap, null
  br i1 %.not.i.i474, label %_ZN7testing7MessageD2Ev.exit476, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i475

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i475: ; preds = %bb.jm
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !169
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8
  call void %i.aas(ptr noundef nonnull align 8 dereferenceable(128) %i.aap) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit476

_ZN7testing7MessageD2Ev.exit476:                  ; preds = %bb.jm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #36
  br label %bb.jr

bb.jn:                                            ; preds = %bb.ji
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit479

bb.jo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit473
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jl
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %80) #36
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %.pn181 = phi { ptr, i32 } [ %i.aav, %bb.jp ], [ %i.aau, %bb.jo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #36
  %i.aaw = load ptr, ptr %79, align 8, !tbaa !223 ; 3 uses
  %.not.i.i477 = icmp eq ptr %i.aaw, null
  br i1 %.not.i.i477, label %_ZN7testing7MessageD2Ev.exit479, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i478

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i478: ; preds = %bb.jq
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !169
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8
  call void %i.aaz(ptr noundef nonnull align 8 dereferenceable(128) %i.aaw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit479
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE6ResizeINS1_19DefaultValueAdapterIS5_EEEEvT_m:bb.a
  %i.x = load ptr, ptr %2, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i47, label %.lr.ph.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc49
  %i.y = load i64, ptr %i.x, align 8, !tbaa !197
  %i.z = add i64 %i.y, %i.v
  store i64 %i.z, ptr %i.x, align 8, !tbaa !197
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc49, %bb.f
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !239 ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sink1.i ; 2 uses
  %i.ab = sub nuw i64 %1, %.sink1.i               ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionINS0_18container_internal17CountingAllocatorIiEEE9ConstructINS1_19DefaultValueAdapterIS5_EEEEvPiRT_m.exit, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionINS0_18container_internal17CountingAllocatorIiEEE9ConstructINS1_19DefaultValueAdapterIS5_EEEEvPiRT_m.exit.thread

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionINS0_18container_internal17CountingAllocatorIiEEE9ConstructINS1_19DefaultValueAdapterIS5_EEEEvPiRT_m.exit: ; preds = %.lr.ph.i.i
  %i.ac = shl nuw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aa, i8 0, i64 %i.ac, i1 false), !tbaa !211
  %.not.i50 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i50, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionINS0_18container_internal17CountingAllocatorIiEEE9ConstructINS1_19DefaultValueAdapterIS5_EEEEvPiRT_m.exit
  %min.iters.check95 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check95, label %.lr.ph.split.us.i.preheader108, label %vector.ph96

vector.ph96:                                      ; preds = %.lr.ph.split.us.i.preheader
  %n.vec97 = and i64 %.sink1.i, 9223372036854775800 ; 4 uses
  %i.ad = shl i64 %n.vec97, 2
  %i.ae = getelementptr i8, ptr %.sink2.i, i64 %i.ad
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next103, %vector.body98 ] ; 3 uses
  %i.af = shl i64 %index99, 2
  %next.gep100 = getelementptr i8, ptr %.sink2.i, i64 %i.af ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index99 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load101 = load <4 x i32>, ptr %next.gep100, align 4, !tbaa !211
  %wide.load102 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !211
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %wide.load101, ptr %i.ag, align 4, !tbaa !211
  store <4 x i32> %wide.load102, ptr %i.ai, align 4, !tbaa !211
  %index.next103 = add nuw i64 %index99, 8        ; 2 uses
  %i.aj = icmp eq i64 %index.next103, %n.vec97
  br i1 %i.aj, label %middle.block104, label %vector.body98, !llvm.loop !4948

middle.block104:                                  ; preds = %vector.body98
  %cmp.n105 = icmp eq i64 %.sink1.i, %n.vec97
  br i1 %cmp.n105, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60, label %.lr.ph.split.us.i.preheader108

.lr.ph.split.us.i.preheader108:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block104
  %.ph = phi ptr [ %.sink2.i, %.lr.ph.split.us.i.preheader ], [ %i.ae, %middle.block104 ]
  %.013.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec97, %middle.block104 ]
  br label %.lr.ph.split.us.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionINS0_18container_internal17CountingAllocatorIiEEE9ConstructINS1_19DefaultValueAdapterIS5_EEEEvPiRT_m.exit.thread: ; preds = %.lr.ph.i.i
  %.promoted.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !197
  %i.ak = shl nuw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aa, i8 0, i64 %i.ak, i1 false), !tbaa !211
  %i.al = add i64 %.promoted.i.i, %i.ab
  store i64 %i.al, ptr %.sroa.4.0.copyload, align 8, !tbaa !197
  %.not.i5090 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i5090, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60, label %.lr.ph.split.i53.preheader

.lr.ph.split.i53.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionINS0_18container_internal17CountingAllocatorIiEEE9ConstructINS1_19DefaultValueAdapterIS5_EEEEvPiRT_m.exit.thread
  %min.iters.check = icmp ult i64 %i.b, 16
  br i1 %min.iters.check, label %.lr.ph.split.i53.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i53.preheader
  %n.vec = and i64 %.sink1.i, 9223372036854775800 ; 4 uses
  %i.am = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %.sink2.i, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sink2.i, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load92 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !211
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %wide.load, ptr %i.ap, align 4, !tbaa !211
  store <4 x i32> %wide.load92, ptr %i.ar, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !4949

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sink1.i, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60, label %.lr.ph.split.i53.preheader109

.lr.ph.split.i53.preheader109:                    ; preds = %.lr.ph.split.i53.preheader, %middle.block
  %.ph110 = phi ptr [ %.sink2.i, %.lr.ph.split.i53.preheader ], [ %i.an, %middle.block ]
  %.013.i.ph = phi i64 [ 0, %.lr.ph.split.i53.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.i53

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader108, %.lr.ph.split.us.i
  %i.at = phi ptr [ %i.aw, %.lr.ph.split.us.i ], [ %.ph, %.lr.ph.split.us.i.preheader108 ] ; 2 uses
  %.013.us.i = phi i64 [ %i.ax, %.lr.ph.split.us.i ], [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader108 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.013.us.i
  %i.av = load i32, ptr %i.at, align 4, !tbaa !211
  store i32 %i.av, ptr %i.au, align 4, !tbaa !211
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = add nuw nsw i64 %.013.us.i, 1           ; 2 uses
  %exitcond20.not.i = icmp eq i64 %i.ax, %.sink1.i
  br i1 %exitcond20.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60, label %.lr.ph.split.us.i, !llvm.loop !4950

.lr.ph.split.i53:                                 ; preds = %.lr.ph.split.i53.preheader109, %.lr.ph.split.i53
  %i.ay = phi ptr [ %i.bb, %.lr.ph.split.i53 ], [ %.ph110, %.lr.ph.split.i53.preheader109 ] ; 2 uses
  %.013.i = phi i64 [ %i.bc, %.lr.ph.split.i53 ], [ %.013.i.ph, %.lr.ph.split.i53.preheader109 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.013.i
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !211
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.sink1.i
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60, label %.lr.ph.split.i53, !llvm.loop !4951

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60: ; preds = %.lr.ph.split.i53, %.lr.ph.split.us.i, %middle.block, %middle.block104, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionINS0_18container_internal17CountingAllocatorIiEEE9ConstructINS1_19DefaultValueAdapterIS5_EEEEvPiRT_m.exit.thread, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionINS0_18container_internal17CountingAllocatorIiEEE9ConstructINS1_19DefaultValueAdapterIS5_EEEEvPiRT_m.exit
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !197
  %i.be = trunc i64 %i.bd to i1
  br i1 %i.be, label %bb.g, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !198
  %i.bh = shl i64 %i.bg, 2                        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #39
  %i.bi = load ptr, ptr %0, align 8, !tbaa !617   ; 3 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i61, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !197
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit: ; preds = %bb.h, %bb.g, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60
  store ptr %i.w, ptr %i.d, align 8, !tbaa !198
  store i64 %.sroa.speculated.i, ptr %i.f, align 8, !tbaa !198
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !197
  %i.bm = or i64 %i.bl, 1
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit

bb.i:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.bn

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit: ; preds = %.lr.ph.split.i45, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterINS0_18container_internal17CountingAllocatorIiEEE13ConstructNextERS5_Pi.exit.us.preheader.i, %.lr.ph.split.i, %.lr.ph.i, %bb.b, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit
  %i.bo = shl i64 %1, 1
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !197
  %i.bq = and i64 %i.bp, 1
  %i.br = or disjoint i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.a, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE10DeallocateERS5_Pim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = shl i64 %i.d, 2                          ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #39
  %i.f = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE10DeallocateERS5_Pim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !tbaa !197
  %i.h = sub i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE10DeallocateERS5_Pim.exit

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE10DeallocateERS5_Pim.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE11ShrinkToFitEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::inlined_vector_internal::AllocationTransaction.1147", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197  ; 6 uses
  %i.e = lshr i64 %i.d, 1                         ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !198  ; 3 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.n, label %bb.b, !prof !212

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !628
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = icmp ugt i64 %i.d, 9
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.k, label %bb.d, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, !prof !212

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %i.d, 0
  br i1 %i.l, label %.noexc.i.i.i.i, label %.noexc6.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

.noexc6.i.i.i.i:                                  ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc25 unwind label %bb.g

.noexc25:                                         ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.e, 2                  ; 4 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41
          to label %.noexc26 unwind label %bb.g   ; 3 uses

.noexc26:                                         ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !617    ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc26
  %i.p = load i64, ptr %i.o, align 8, !tbaa !197
  %i.q = add i64 %i.p, %i.m
  store i64 %i.q, ptr %i.o, align 8, !tbaa !197
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc26
  %.not = icmp ult i64 %i.e, %i.g
  br i1 %.not, label %.lr.ph.i, label %.thread40

bb.g:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %i.r

bb.h:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %i.s = phi i64 [ 0, %bb.h ], [ %i.e, %bb.f ]    ; 4 uses
  %i.t = phi ptr [ null, %bb.h ], [ %i.n, %bb.f ] ; 4 uses
  %.01936 = phi ptr [ %i.a, %bb.h ], [ %i.n, %bb.f ] ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !618  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check56 = icmp ult i64 %i.d, 16
  %2 = ptrtoaddr ptr %.01936 to i64
  %3 = ptrtoaddr ptr %i.b to i64
  %i.w = sub i64 %3, %2
  %diff.check54 = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check56, i1 true, i1 %diff.check54
  br i1 %or.cond, label %.lr.ph.split.us.i.preheader70, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph.split.us.i.preheader
  %n.vec58 = and i64 %i.e, 9223372036854775800    ; 4 uses
  %i.x = shl i64 %n.vec58, 2
  %i.y = getelementptr i8, ptr %i.b, i64 %i.x
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next64, %vector.body59 ] ; 3 uses
  %i.z = shl i64 %index60, 2
  %next.gep61 = getelementptr i8, ptr %i.b, i64 %i.z ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %index60 ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load62 = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !211
  %wide.load63 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %wide.load62, ptr %i.aa, align 4, !tbaa !211
  store <4 x i32> %wide.load63, ptr %i.ac, align 4, !tbaa !211
  %index.next64 = add nuw i64 %index60, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next64, %n.vec58
  br i1 %i.ad, label %middle.block65, label %vector.body59, !llvm.loop !4953

middle.block65:                                   ; preds = %vector.body59
  %cmp.n66 = icmp eq i64 %i.e, %n.vec58
  br i1 %cmp.n66, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.split.us.i.preheader70

.lr.ph.split.us.i.preheader70:                    ; preds = %.lr.ph.split.us.i.preheader, %middle.block65
  %.ph = phi ptr [ %i.b, %.lr.ph.split.us.i.preheader ], [ %i.y, %middle.block65 ] ; 2 uses
  %.013.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec58, %middle.block65 ] ; 3 uses
  %xtraiter72 = and i64 %i.e, 3                   ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader70, %.lr.ph.split.us.i.prol
  %i.ae = phi ptr [ %i.ah, %.lr.ph.split.us.i.prol ], [ %.ph, %.lr.ph.split.us.i.preheader70 ] ; 2 uses
  %.013.us.i.prol = phi i64 [ %i.ai, %.lr.ph.split.us.i.prol ], [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader70 ] ; 2 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader70 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i.prol
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !211
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !211
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ai = add nuw i64 %.013.us.i.prol, 1          ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !4954

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader70
  %.unr75 = phi ptr [ %.ph, %.lr.ph.split.us.i.preheader70 ], [ %i.ah, %.lr.ph.split.us.i.prol ]
  %.013.us.i.unr = phi i64 [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader70 ], [ %i.ai, %.lr.ph.split.us.i.prol ]
  %i.aj = sub nsw i64 %.013.us.i.ph, %i.e
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %i.al = phi ptr [ %i.ba, %.lr.ph.split.us.i ], [ %.unr75, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %.013.us.i = phi i64 [ %i.bb, %.lr.ph.split.us.i ], [ %.013.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i
  %i.an = load i32, ptr %i.al, align 4, !tbaa !211
  store i32 %i.an, ptr %i.am, align 4, !tbaa !211
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !211
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !211
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.as, align 4, !tbaa !211
  store i32 %i.av, ptr %i.au, align 4, !tbaa !211
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !211
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bb = add nuw i64 %.013.us.i, 4               ; 2 uses
  %exitcond20.not.i.3 = icmp eq i64 %i.bb, %i.e
  br i1 %exitcond20.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.split.us.i, !llvm.loop !4955

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.promoted14.i = load i64, ptr %i.v, align 8, !tbaa !197
  %min.iters.check = icmp ult i64 %i.d, 16
  %4 = ptrtoaddr ptr %.01936 to i64
  %5 = ptrtoaddr ptr %i.b to i64
  %i.bc = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.bc, -32
  %or.cond69 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond69, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i
  %n.vec = and i64 %i.e, 9223372036854775800      ; 4 uses
  %i.bd = shl i64 %n.vec, 2
  %i.be = getelementptr i8, ptr %i.b, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.bf ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %index ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load51 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !211
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <4 x i32> %wide.load, ptr %i.bg, align 4, !tbaa !211
  store <4 x i32> %wide.load51, ptr %i.bi, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !4956

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.lr.ph.split.i29, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.i, %middle.block
  %.ph71 = phi ptr [ %i.b, %.lr.ph.split.i ], [ %i.be, %middle.block ] ; 2 uses
  %.013.i.ph = phi i64 [ 0, %.lr.ph.split.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.bk = phi ptr [ %i.bn, %scalar.ph.prol ], [ %.ph71, %scalar.ph.preheader ] ; 2 uses
  %.013.i.prol = phi i64 [ %i.bo, %scalar.ph.prol ], [ %.013.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i.prol
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !211
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bo = add nuw i64 %.013.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4957

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph71, %scalar.ph.preheader ], [ %i.bn, %scalar.ph.prol ]
  %.013.i.unr = phi i64 [ %.013.i.ph, %scalar.ph.preheader ], [ %i.bo, %scalar.ph.prol ]
  %i.bp = sub nsw i64 %.013.i.ph, %i.e
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.lr.ph.split.i29, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.br = phi ptr [ %i.cg, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.013.i = phi i64 [ %i.ch, %scalar.ph ], [ %.013.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !211
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !211
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !211
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !211
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !211
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !211
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !211
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !211
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ch = add nuw i64 %.013.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ch, %i.e
  br i1 %exitcond.not.i.3, label %.lr.ph.split.i29, label %scalar.ph, !llvm.loop !4958

.lr.ph.split.i29:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  store i64 %.promoted14.i, ptr %i.v, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit: ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block65, %bb.h, %.lr.ph.split.i29
  %i.ci = phi i64 [ 0, %bb.h ], [ %i.s, %.lr.ph.split.i29 ], [ %i.s, %middle.block65 ], [ %i.s, %.lr.ph.split.us.i ], [ %i.s, %.lr.ph.split.us.i.prol.loopexit ]
  %.pr = phi ptr [ null, %bb.h ], [ %i.t, %.lr.ph.split.i29 ], [ %i.t, %middle.block65 ], [ %i.t, %.lr.ph.split.us.i ], [ %i.t, %.lr.ph.split.us.i.prol.loopexit ] ; 2 uses
  %i.cj = shl i64 %i.g, 2                         ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.cj) #39
  %i.ck = load ptr, ptr %0, align 8, !tbaa !617   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !197
  %i.cm = sub i64 %i.cl, %i.cj
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !197
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, %bb.i
  %.not42 = icmp eq ptr %.pr, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.pr, ptr %i.a, align 8, !tbaa !198
  store i64 %i.ci, ptr %i.f, align 8, !tbaa !198
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !197
  %i.co = and i64 %i.cn, -2
  store i64 %i.co, ptr %i.c, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

.thread40:                                        ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #39
  %.not.i.i.i.i32 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i32, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.thread40
  %i.cp = load i64, ptr %i.o, align 8, !tbaa !197
  %i.cq = sub i64 %i.cp, %i.m
  store i64 %i.cq, ptr %i.o, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit: ; preds = %bb.k, %bb.l, %.thread40, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %1 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 14 uses
  %2 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 14 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 9 uses
  %16 = alloca %"class.testing::internal::ElementsAreArrayMatcher", align 8 ; 6 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 9 uses
  %21 = alloca %"class.testing::internal::ElementsAreArrayMatcher", align 8 ; 6 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
end_hunk_6
begin_hunk_7_@_ZNK7testing8internal29PredicateFormatterFromMatcherIiEclIlEENS_15AssertionResultEPKcRKT_:bb.a
_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dl, align 8, !tbaa !169
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ds) #36, !inline_history !257
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.dt, ptr %i.ah, align 8, !tbaa !169
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 -24    ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.ah, i64 %i.dw
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !169
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.dy, align 8, !tbaa !231
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dz) #36, !inline_history !257
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  store ptr %i.df, ptr %9, align 8, !tbaa !169
  %i.ea = load i64, ptr %i.dh, align 8
  %i.eb = getelementptr inbounds i8, ptr %9, i64 %i.ea
  store ptr %i.dg, ptr %i.eb, align 8, !tbaa !169
  store ptr %i.dk, ptr %i.m, align 8, !tbaa !169
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ec, align 8, !tbaa !169
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !195 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !198
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #39
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ec, align 8, !tbaa !169
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ej) #36
  store ptr %i.dt, ptr %9, align 8, !tbaa !169
  %i.ek = load i64, ptr %i.dv, align 8
  %i.el = getelementptr inbounds i8, ptr %9, i64 %i.ek
  store ptr %i.du, ptr %i.el, align 8, !tbaa !169
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.em, align 8, !tbaa !231
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.en) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ak

bb.ad:                                            ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %11, align 8, !tbaa !195  ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ar
  br i1 %i.eq, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.ad, %bb.s
  %.sink = phi ptr [ %i.bf, %bb.s ], [ %i.ep, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.be, %bb.s ], [ %i.eo, %bb.ad ]
  %i.er = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.es) #39
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.ad, %bb.s
  %.pn = phi { ptr, i32 } [ %i.be, %bb.s ], [ %i.eo, %bb.ad ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.aa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.af
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.eu, %bb.af ], [ %i.cp, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.ev = load ptr, ptr %13, align 8, !tbaa !195  ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.bp
  br i1 %i.ew, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.w
  %.sink90 = phi ptr [ %i.cd, %bb.w ], [ %i.ev, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %eh.lpad-body51, %.body50 ]
  %i.ex = load i64, ptr %i.bp, align 8, !tbaa !198
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %.sink90, i64 noundef %i.ey) #39
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.w
  %.pn14 = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #36
  br label %bb.ag

bb.ag:                                            ; preds = %.body46, %bb.ae
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.et, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body43, %bb.q
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ag ], [ %.pn, %.body43 ], [ %i.ap, %bb.q ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #36
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.p
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ah ], [ %i.ao, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %.body35

.body35:                                          ; preds = %bb.o, %bb.j, %bb.ai
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.ai ], [ %i.an, %bb.o ], [ %i.ad, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #36
  br label %bb.aj

bb.aj:                                            ; preds = %.body35, %bb.n
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.am, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %.body

bb.ak:                                            ; preds = %bb.c, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKlEE, i64 16), ptr %8, align 8, !tbaa !169
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !621 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i: ; preds = %bb.ak
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !626
  %.not.i.i67 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.fd = atomicrmw sub ptr %i.fc, i32 1 acq_rel, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.am, label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ff = load ptr, ptr %i.c, align 8, !tbaa !621
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !626
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !198
  invoke void %i.fh(ptr noundef %i.fi)
          to label %_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit unwind label %bb.an, !inline_history !113

bb.an:                                            ; preds = %bb.am
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #35, !inline_history !627
  unreachable

_ZN7testing8internal11MatcherBaseIRKlED2Ev.exit:  ; preds = %bb.ak, %_ZNK7testing8internal11MatcherBaseIRKlE8IsSharedEv.exit.i.i, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  ret void

.body:                                            ; preds = %bb.d, %.body.i, %bb.aj
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.aj ], [ %i.l, %bb.d ], [ %i.h, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKlED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  resume { ptr, i32 } %.pn21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE4SwapEPS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20260526::inlined_vector_internal::Storage<int, 4, absl::lts_20260526::container_internal::CountingAllocator<int>>::Allocated", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !197  ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !197  ; 3 uses
  %i.f = trunc i64 %i.e to i1                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.thread33

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !423
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !423
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %.thread33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ugt i64 %i.b, %i.e                  ; 2 uses
  %spec.select.i = select i1 %i.i, ptr %0, ptr %1 ; 4 uses
  %spec.select23.i = select i1 %i.i, ptr %1, ptr %0 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select23.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !197
  %i.l = lshr i64 %i.k, 1                         ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !197
  %i.o = lshr i64 %i.n, 1                         ; 6 uses
  %i.p = sub nsw i64 %i.o, %i.l                   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %.idx.i.i = shl i64 %i.l, 2                     ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %.idx.i.i ; 2 uses
  %.not8.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.e
  %i.s = getelementptr i8, ptr %1, i64 24         ; 5 uses
  %i.t = add i64 %.idx.i.i, -4                    ; 2 uses
  %i.u = lshr exact i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i.i
  %i.w = getelementptr i8, ptr %1, i64 %.idx.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %bound0 = icmp ult ptr %i.q, %i.x
  %bound1 = icmp ult ptr %i.s, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.q, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %next.gep49, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep49, align 8, !tbaa !211, !alias.scope !5059, !noalias !5060
  %wide.load50 = load <4 x i32>, ptr %i.ac, align 8, !tbaa !211, !alias.scope !5059, !noalias !5060
  %i.ad = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load51 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211, !alias.scope !5060
  %wide.load52 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !211, !alias.scope !5060
  store <4 x i32> %wide.load51, ptr %next.gep49, align 8, !tbaa !211, !alias.scope !5059, !noalias !5060
  store <4 x i32> %wide.load52, ptr %i.ac, align 8, !tbaa !211, !alias.scope !5059, !noalias !5060
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !211, !alias.scope !5060
  store <4 x i32> %wide.load50, ptr %i.ad, align 4, !tbaa !211, !alias.scope !5060
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !5045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.preheader.i.i, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.preheader.i.i ], [ %i.z, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.preheader.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.af = load i32, ptr %.079.i.i.i, align 4, !tbaa !211
  %i.ag = load i32, ptr %.010.i.i.i, align 4, !tbaa !211
  store i32 %i.ag, ptr %.079.i.i.i, align 4, !tbaa !211
  store i32 %i.af, ptr %.010.i.i.i, align 4, !tbaa !211
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5046

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select23.i, i64 24
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.l ; 12 uses
  %.not.i.i = icmp eq i64 %i.o, %i.l
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 24
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.l ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !618
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  %min.iters.check74 = icmp ult i64 %i.p, 8
  %3 = ptrtoaddr ptr %spec.select23.i to i64
  %4 = ptrtoaddr ptr %spec.select.i to i64
  %i.ap = sub i64 %4, %3
  %diff.check72 = icmp ugt i64 %i.ap, -32
  %or.cond121 = or i1 %min.iters.check74, %diff.check72 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  br i1 %or.cond121, label %.lr.ph.split.i.i.preheader128, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.split.i.i.preheader
  %n.vec60 = and i64 %i.p, -8                     ; 4 uses
  %i.aq = shl i64 %n.vec60, 2
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next66, %vector.body61 ] ; 3 uses
  %i.as = shl i64 %index62, 2
  %next.gep63 = getelementptr i8, ptr %i.am, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index62 ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load64 = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !211
  %wide.load65 = load <4 x i32>, ptr %i.au, align 4, !tbaa !211
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %wide.load64, ptr %i.at, align 4, !tbaa !211
  store <4 x i32> %wide.load65, ptr %i.av, align 4, !tbaa !211
  %index.next66 = add nuw i64 %index62, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next66, %n.vec60
  br i1 %i.aw, label %middle.block67, label %vector.body61, !llvm.loop !5047

middle.block67:                                   ; preds = %vector.body61
  %cmp.n68 = icmp eq i64 %i.p, %n.vec60
  br i1 %cmp.n68, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit, label %.lr.ph.split.i.i.preheader128

.lr.ph.split.i.i.preheader128:                    ; preds = %.lr.ph.split.i.i.preheader, %middle.block67
  %.ph129 = phi ptr [ %i.am, %.lr.ph.split.i.i.preheader ], [ %i.ar, %middle.block67 ] ; 2 uses
  %.013.i.i.ph = phi i64 [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec60, %middle.block67 ] ; 3 uses
  %i.ax = sub nsw i64 %i.o, %i.l
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader128, %.lr.ph.split.i.i.prol
  %i.ay = phi ptr [ %i.bb, %.lr.ph.split.i.i.prol ], [ %.ph129, %.lr.ph.split.i.i.preheader128 ] ; 2 uses
  %.013.i.i.prol = phi i64 [ %i.bc, %.lr.ph.split.i.i.prol ], [ %.013.i.i.ph, %.lr.ph.split.i.i.preheader128 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.prol ], [ 0, %.lr.ph.split.i.i.preheader128 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.i.i.prol
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !211
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.bc = add nuw i64 %.013.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol, !llvm.loop !5048

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader128
  %.unr = phi ptr [ %.ph129, %.lr.ph.split.i.i.preheader128 ], [ %i.bb, %.lr.ph.split.i.i.prol ]
  %.013.i.i.unr = phi i64 [ %.013.i.i.ph, %.lr.ph.split.i.i.preheader128 ], [ %i.bc, %.lr.ph.split.i.i.prol ]
  %i.bd = sub i64 %.013.i.i.ph, %i.o
  %i.be = add i64 %i.bd, %i.l
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  br i1 %or.cond121, label %.lr.ph.split.us.i.i.preheader126, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.split.us.i.i.preheader
  %n.vec76 = and i64 %i.p, -8                     ; 4 uses
  %i.bg = shl i64 %n.vec76, 2
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bg
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next82, %vector.body77 ] ; 3 uses
  %i.bi = shl i64 %index78, 2
  %next.gep79 = getelementptr i8, ptr %i.am, i64 %i.bi ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index78 ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !211
  %wide.load81 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !211
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x i32> %wide.load80, ptr %i.bj, align 4, !tbaa !211
  store <4 x i32> %wide.load81, ptr %i.bl, align 4, !tbaa !211
  %index.next82 = add nuw i64 %index78, 8         ; 2 uses
  %i.bm = icmp eq i64 %index.next82, %n.vec76
  br i1 %i.bm, label %middle.block83, label %vector.body77, !llvm.loop !5049

middle.block83:                                   ; preds = %vector.body77
  %cmp.n84 = icmp eq i64 %i.p, %n.vec76
  br i1 %cmp.n84, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit, label %.lr.ph.split.us.i.i.preheader126

.lr.ph.split.us.i.i.preheader126:                 ; preds = %.lr.ph.split.us.i.i.preheader, %middle.block83
  %.ph127 = phi ptr [ %i.am, %.lr.ph.split.us.i.i.preheader ], [ %i.bh, %middle.block83 ] ; 2 uses
  %.013.us.i.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader ], [ %n.vec76, %middle.block83 ] ; 3 uses
  %i.bn = sub nsw i64 %i.o, %i.l
  %xtraiter131 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader126, %.lr.ph.split.us.i.i.prol
  %i.bo = phi ptr [ %i.br, %.lr.ph.split.us.i.i.prol ], [ %.ph127, %.lr.ph.split.us.i.i.preheader126 ] ; 2 uses
  %.013.us.i.i.prol = phi i64 [ %i.bs, %.lr.ph.split.us.i.i.prol ], [ %.013.us.i.i.ph, %.lr.ph.split.us.i.i.preheader126 ] ; 2 uses
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader126 ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.us.i.i.prol
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !211
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !211
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bs = add nuw i64 %.013.us.i.i.prol, 1        ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !5050

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader126
  %.unr134 = phi ptr [ %.ph127, %.lr.ph.split.us.i.i.preheader126 ], [ %i.br, %.lr.ph.split.us.i.i.prol ]
  %.013.us.i.i.unr = phi i64 [ %.013.us.i.i.ph, %.lr.ph.split.us.i.i.preheader126 ], [ %i.bs, %.lr.ph.split.us.i.i.prol ]
  %i.bt = sub i64 %.013.us.i.i.ph, %i.o
  %i.bu = add i64 %i.bt, %i.l
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %i.bw = phi ptr [ %i.cl, %.lr.ph.split.us.i.i ], [ %.unr134, %.lr.ph.split.us.i.i.prol.loopexit ] ; 5 uses
  %.013.us.i.i = phi i64 [ %i.cm, %.lr.ph.split.us.i.i ], [ %.013.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.us.i.i
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !211
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !211
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.us.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !211
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !211
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !211
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !211
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.us.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !211
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !211
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cm = add nuw i64 %.013.us.i.i, 4             ; 2 uses
  %exitcond20.not.i.i.3 = icmp eq i64 %i.cm, %i.p
  br i1 %exitcond20.not.i.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !5051

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i
  %i.cn = phi ptr [ %i.dc, %.lr.ph.split.i.i ], [ %.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 5 uses
  %.013.i.i = phi i64 [ %i.dd, %.lr.ph.split.i.i ], [ %.013.i.i.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.i.i
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !211
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !211
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cq, align 4, !tbaa !211
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !211
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cu, align 4, !tbaa !211
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !211
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.013.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !211
  store i32 %i.db, ptr %i.da, align 4, !tbaa !211
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.dd = add nuw i64 %.013.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dd, %i.p
  br i1 %exitcond.not.i.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit, label %.lr.ph.split.i.i, !llvm.loop !5052

.thread33:                                        ; preds = %bb.b, %bb.d
  %i.de = phi i64 [ %i.b, %bb.d ], [ %i.e, %bb.b ] ; 3 uses
  %.032 = phi ptr [ %0, %bb.d ], [ %1, %bb.b ]    ; 7 uses
  %.0 = phi ptr [ %1, %bb.d ], [ %0, %bb.b ]      ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 13 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !198
  %i.dh = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !198
  %i.dj = getelementptr inbounds nuw i8, ptr %.032, i64 24 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.dl = lshr i64 %i.de, 1                       ; 15 uses
  %.not.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread33
  %i.dm = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check108 = icmp ult i64 %i.de, 16
  %5 = ptrtoaddr ptr %.0 to i64
  %6 = ptrtoaddr ptr %.032 to i64
  %i.do = sub i64 %6, %5
  %diff.check106 = icmp ugt i64 %i.do, -32
  %or.cond122 = or i1 %min.iters.check108, %diff.check106
  br i1 %or.cond122, label %.lr.ph.split.us.i.preheader124, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.split.us.i.preheader
  %n.vec110 = and i64 %i.dl, 9223372036854775800  ; 4 uses
  %i.dp = shl i64 %n.vec110, 2
  %i.dq = getelementptr i8, ptr %i.dj, i64 %i.dp
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next116, %vector.body111 ] ; 3 uses
  %i.dr = shl i64 %index112, 2
  %next.gep113 = getelementptr i8, ptr %i.dj, i64 %i.dr ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index112 ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep113, i64 16
  %wide.load114 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !211
  %wide.load115 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !211
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x i32> %wide.load114, ptr %i.ds, align 4, !tbaa !211
  store <4 x i32> %wide.load115, ptr %i.du, align 4, !tbaa !211
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next116, %n.vec110
  br i1 %i.dv, label %middle.block117, label %vector.body111, !llvm.loop !5053

middle.block117:                                  ; preds = %vector.body111
  %cmp.n118 = icmp eq i64 %i.dl, %n.vec110
  br i1 %cmp.n118, label %.lr.ph.i15, label %.lr.ph.split.us.i.preheader124

.lr.ph.split.us.i.preheader124:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block117
  %.ph = phi ptr [ %i.dj, %.lr.ph.split.us.i.preheader ], [ %i.dq, %middle.block117 ] ; 2 uses
  %.013.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec110, %middle.block117 ] ; 3 uses
  %xtraiter139 = and i64 %i.dl, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader124, %.lr.ph.split.us.i.prol
  %i.dw = phi ptr [ %i.dz, %.lr.ph.split.us.i.prol ], [ %.ph, %.lr.ph.split.us.i.preheader124 ] ; 2 uses
  %.013.us.i.prol = phi i64 [ %i.ea, %.lr.ph.split.us.i.prol ], [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader124 ] ; 2 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader124 ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.us.i.prol
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !211
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !211
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %i.ea = add nuw nsw i64 %.013.us.i.prol, 1      ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !5054

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader124
  %.unr142 = phi ptr [ %.ph, %.lr.ph.split.us.i.preheader124 ], [ %i.dz, %.lr.ph.split.us.i.prol ]
  %.013.us.i.unr = phi i64 [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader124 ], [ %i.ea, %.lr.ph.split.us.i.prol ]
  %i.eb = sub nsw i64 %.013.us.i.ph, %i.dl
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %.lr.ph.i15, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %i.ed = phi ptr [ %i.es, %.lr.ph.split.us.i ], [ %.unr142, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %.013.us.i = phi i64 [ %i.et, %.lr.ph.split.us.i ], [ %.013.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.us.i
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !211
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !211
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.us.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.eg, align 4, !tbaa !211
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !211
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.us.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.ek, align 4, !tbaa !211
  store i32 %i.en, ptr %i.em, align 4, !tbaa !211
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.us.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eo, align 4, !tbaa !211
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !211
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.et = add nuw nsw i64 %.013.us.i, 4           ; 2 uses
  %exitcond20.not.i.3 = icmp eq i64 %i.et, %i.dl
  br i1 %exitcond20.not.i.3, label %.lr.ph.i15, label %.lr.ph.split.us.i, !llvm.loop !5055

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.promoted14.i = load i64, ptr %i.dn, align 8, !tbaa !197
  %min.iters.check92 = icmp ult i64 %i.de, 16
  %7 = ptrtoaddr ptr %.0 to i64
  %8 = ptrtoaddr ptr %.032 to i64
  %i.eu = sub i64 %8, %7
  %diff.check90 = icmp ugt i64 %i.eu, -32
  %or.cond123 = or i1 %min.iters.check92, %diff.check90
  br i1 %or.cond123, label %scalar.ph91.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.split.i
  %n.vec94 = and i64 %i.dl, 9223372036854775800   ; 4 uses
  %i.ev = shl i64 %n.vec94, 2
  %i.ew = getelementptr i8, ptr %i.dj, i64 %i.ev
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body95 ] ; 3 uses
  %i.ex = shl i64 %index96, 2
  %next.gep97 = getelementptr i8, ptr %i.dj, i64 %i.ex ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index96 ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load98 = load <4 x i32>, ptr %next.gep97, align 4, !tbaa !211
  %wide.load99 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !211
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <4 x i32> %wide.load98, ptr %i.ey, align 4, !tbaa !211
  store <4 x i32> %wide.load99, ptr %i.fa, align 4, !tbaa !211
  %index.next100 = add nuw i64 %index96, 8        ; 2 uses
  %i.fb = icmp eq i64 %index.next100, %n.vec94
  br i1 %i.fb, label %middle.block101, label %vector.body95, !llvm.loop !5056

middle.block101:                                  ; preds = %vector.body95
  %cmp.n102 = icmp eq i64 %i.dl, %n.vec94
  br i1 %cmp.n102, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %.lr.ph.split.i, %middle.block101
  %.ph125 = phi ptr [ %i.dj, %.lr.ph.split.i ], [ %i.ew, %middle.block101 ] ; 2 uses
  %.013.i.ph = phi i64 [ 0, %.lr.ph.split.i ], [ %n.vec94, %middle.block101 ] ; 3 uses
  %xtraiter135 = and i64 %i.dl, 3                 ; 2 uses
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol

scalar.ph91.prol:                                 ; preds = %scalar.ph91.preheader, %scalar.ph91.prol
  %i.fc = phi ptr [ %i.ff, %scalar.ph91.prol ], [ %.ph125, %scalar.ph91.preheader ] ; 2 uses
  %.013.i.prol = phi i64 [ %i.fg, %scalar.ph91.prol ], [ %.013.i.ph, %scalar.ph91.preheader ] ; 2 uses
  %prol.iter137 = phi i64 [ %prol.iter137.next, %scalar.ph91.prol ], [ 0, %scalar.ph91.preheader ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.i.prol
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !211
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !211
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 4 ; 2 uses
  %i.fg = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter137.next = add i64 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i64 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol, !llvm.loop !5057

scalar.ph91.prol.loopexit:                        ; preds = %scalar.ph91.prol, %scalar.ph91.preheader
  %.unr138 = phi ptr [ %.ph125, %scalar.ph91.preheader ], [ %i.ff, %scalar.ph91.prol ]
  %.013.i.unr = phi i64 [ %.013.i.ph, %scalar.ph91.preheader ], [ %i.fg, %scalar.ph91.prol ]
  %i.fh = sub nsw i64 %.013.i.ph, %i.dl
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91
  %i.fj = phi ptr [ %i.fy, %scalar.ph91 ], [ %.unr138, %scalar.ph91.prol.loopexit ] ; 5 uses
  %.013.i = phi i64 [ %i.fz, %scalar.ph91 ], [ %.013.i.unr, %scalar.ph91.prol.loopexit ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.i
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !211
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !211
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fm, align 4, !tbaa !211
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !211
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i32, ptr %i.fq, align 4, !tbaa !211
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !211
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.013.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load i32, ptr %i.fu, align 4, !tbaa !211
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !211
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fz = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fz, %i.dl
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %scalar.ph91, !llvm.loop !5058

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit: ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91, %middle.block101
  %i.ga = add i64 %.promoted14.i, %i.dl
  store i64 %i.ga, ptr %i.dn, align 8, !tbaa !197
  %.pre = load i64, ptr %i.dk, align 8, !tbaa !197
  %.pre36 = lshr i64 %.pre, 1                     ; 2 uses
  %.not5.i = icmp eq i64 %.pre36, 0
  br i1 %.not5.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block117, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %.pre-phi46 = phi i64 [ %.pre36, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit ], [ %i.dl, %middle.block117 ], [ %i.dl, %.lr.ph.split.us.i ], [ %i.dl, %.lr.ph.split.us.i.prol.loopexit ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.split.i16

.lr.ph.split.i16:                                 ; preds = %.lr.ph.i15
  %.promoted.i = load i64, ptr %i.gc, align 8, !tbaa !197
  %i.gd = sub i64 %.promoted.i, %.pre-phi46
  store i64 %i.gd, ptr %i.gc, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit: ; preds = %.thread33, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsINS0_18container_internal17CountingAllocatorIiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, %.lr.ph.i15, %.lr.ph.split.i16
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !198
  %i.ge = getelementptr inbounds nuw i8, ptr %.032, i64 32
  store i64 %i.di, ptr %i.ge, align 8, !tbaa !198
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE19SwapInlinedElementsINS6_21ElementwiseSwapPolicyEEEvT_PS6_.exit: ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block67, %middle.block83, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, %bb.c
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !197
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !197
  store i64 %i.gh, ptr %i.a, align 8, !tbaa !197
  store i64 %i.gg, ptr %i.gf, align 8, !tbaa !197
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8, !tbaa !239
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !628
  store <2 x ptr> %.sroa.0.0.copyload, ptr %1, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !631
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 246)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !631
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !636
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal20MatchPrintAndExplainIKN4absl12lts_2026052613InlinedVectorIiLm4ENS3_18container_internal17CountingAllocatorIiEEEERS9_EEbRT_RKNS_7MatcherIT0_EEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %6 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !253
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !631
  %i.f = icmp ne ptr %i.e, null
  %i.g = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.f)
  br i1 %i.g, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE7MatchesESA_.exit, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc3.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE7MatchesESA_.exit

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i ], [ %.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.noexc3.i
  %i.i = landingpad { ptr, i32 }
          cleanup
end_hunk_7
begin_hunk_8_@_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_:bb.a
  %i.i = add i64 %reass.sub, -4
  %i.j = lshr i64 %i.i, 2
  %i.k = xor i64 %i.j, -1
  %i.l = add i64 %.promoted.i.i.i.i.i.i.i, %i.k
  store i64 %i.l, ptr %i.h, align 8, !tbaa !197
  br label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !642
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.q) #39
  %i.r = load ptr, ptr %1, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.r, align 8, !tbaa !197
  %i.t = sub i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !197
  br label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !645  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE10_S_destroyIS9_S7_EEDTcldtfp_7destroyfp0_EERT_PT0_i.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !197
  %i.x = add nsw i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !197
  br label %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE10_S_destroyIS9_S7_EEDTcldtfp_7destroyfp0_EERT_PT0_i.exit

_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE10_S_destroyIS9_S7_EEDTcldtfp_7destroyfp0_EERT_PT0_i.exit: ; preds = %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE15DestroyElementsERSA_PS8_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5 = icmp eq i64 %2, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit
  %.06 = phi i64 [ %2, %.lr.ph ], [ %i.b, %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit ]
  %i.b = add i64 %.06, -1                         ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.b ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !643  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !641  ; 2 uses
  %i.h = ptrtoaddr ptr %i.e to i64
  %i.i = ptrtoaddr ptr %i.g to i64
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !618  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !197
  %reass.sub = sub i64 %i.i, %i.h
  %i.l = add i64 %reass.sub, -4
  %i.m = lshr i64 %i.l, 2
  %i.n = xor i64 %i.m, -1
  %i.o = add i64 %.promoted.i.i.i.i.i.i.i.i, %i.n
  store i64 %i.o, ptr %i.k, align 8, !tbaa !197
  br label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !642
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.e to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.t) #39
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i.i.i, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.u, align 8, !tbaa !197
  %i.w = sub i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8, !tbaa !197
  br label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !645  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !197
  %i.z = add nsw i64 %i.y, -1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !197
  br label %_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit

_ZNSt16allocator_traitsISt24scoped_allocator_adaptorIN4absl12lts_2026052618container_internal17CountingAllocatorISt6vectorIiNS4_IiEEEEEJEEE7destroyIS7_EEvRS9_PT_.exit: ; preds = %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev.exit.i.i.i.i.i.i, %bb.e
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !119
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !647  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE10DeallocateERSA_PS8_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197  ; 2 uses
  %i.e = mul i64 %i.d, 40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #39
  %i.f = load ptr, ptr %0, align 8, !tbaa !648    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE10DeallocateERSA_PS8_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg.i.i.i.i.i = mul i64 %i.d, -40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !197
  %i.h = add i64 %i.g, %.neg.i.i.i.i.i
  store i64 %i.h, ptr %i.f, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE10DeallocateERSA_PS8_m.exit

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISt24scoped_allocator_adaptorINS0_18container_internal17CountingAllocatorISt6vectorIiNS5_IiEEEEEJEELb0EE10DeallocateERSA_PS8_m.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEC2EOS5_RKS4_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !628
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !239
  %i.c = load <2 x ptr>, ptr %2, align 8
  %i.d = icmp eq <2 x ptr> %i.b, %i.c             ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !233
  store <2 x ptr> %i.j, ptr %i.a, align 8, !tbaa !233
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !642
  store ptr %i.l, ptr %i.i, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !233  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !233  ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp ugt i64 %i.s, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i.i, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, !prof !212

.noexc.i.i.i.i:                                   ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #41
          to label %.noexc13 unwind label %bb.g   ; 12 uses

.noexc13:                                         ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc13
  %i.w = load i64, ptr %i.v, align 8, !tbaa !197
  %i.x = add i64 %i.w, %i.s
  store i64 %i.x, ptr %i.v, align 8, !tbaa !197
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc13
  store ptr %i.u, ptr %i.a, align 8, !tbaa !643
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.y, align 8, !tbaa !641
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !642
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !233 ; 12 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !233 ; 5 uses
  %.not12.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not12.i.i, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader, label %.lr.ph.split.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader: ; preds = %.lr.ph.i.i
  %i.af = ptrtoaddr ptr %i.ac to i64
  %3 = ptrtoaddr ptr %i.ab to i64                 ; 2 uses
  %i.ag = add i64 %i.af, -4
  %i.ah = sub i64 %i.ag, %3                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ah, 44
  %4 = ptrtoaddr ptr %i.u to i64
  %i.ak = sub i64 %3, %4
  %diff.check37 = icmp ugt i64 %i.ak, -32
  %or.cond = or i1 %min.iters.check39, %diff.check37
  br i1 %or.cond, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54, label %vector.ph40

vector.ph40:                                      ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader
  %n.vec41 = and i64 %i.aj, 9223372036854775800   ; 3 uses
  %i.al = shl i64 %n.vec41, 2                     ; 2 uses
  %i.am = getelementptr i8, ptr %i.u, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %i.ab, i64 %i.al
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next48, %vector.body42 ] ; 2 uses
  %i.ao = shl i64 %index43, 2                     ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.u, i64 %i.ao ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ab, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load46 = load <4 x i32>, ptr %next.gep45, align 4, !tbaa !211
  %wide.load47 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !211
  %i.aq = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x i32> %wide.load46, ptr %next.gep44, align 4, !tbaa !211
  store <4 x i32> %wide.load47, ptr %i.aq, align 4, !tbaa !211
  %index.next48 = add nuw i64 %index43, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next48, %n.vec41
  br i1 %i.ar, label %middle.block49, label %vector.body42, !llvm.loop !5145

middle.block49:                                   ; preds = %vector.body42
  %cmp.n50 = icmp eq i64 %i.aj, %n.vec41
  br i1 %cmp.n50, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader, %middle.block49
  %.014.us.i.i.ph = phi ptr [ %i.u, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader ], [ %i.am, %middle.block49 ]
  %.sroa.010.013.us.i.i.ph = phi ptr [ %i.ab, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader ], [ %i.an, %middle.block49 ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i
  %.014.us.i.i = phi ptr [ %i.au, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ], [ %.014.us.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54 ] ; 2 uses
  %.sroa.010.013.us.i.i = phi ptr [ %i.at, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ], [ %.sroa.010.013.us.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader54 ] ; 2 uses
  %i.as = load i32, ptr %.sroa.010.013.us.i.i, align 4, !tbaa !211
  store i32 %i.as, ptr %.014.us.i.i, align 4, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.013.us.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.014.us.i.i, i64 4 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.at, %i.ac
  br i1 %.not.us.i.i, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i, !llvm.loop !5146

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %.promoted.i.i = load i64, ptr %i.ae, align 8, !tbaa !197 ; 2 uses
  %i.av = ptrtoaddr ptr %i.ac to i64
  %5 = ptrtoaddr ptr %i.ab to i64                 ; 2 uses
  %i.aw = add i64 %i.av, -4
  %i.ax = sub i64 %i.aw, %5                       ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  %6 = ptrtoaddr ptr %i.u to i64
  %i.ba = sub i64 %5, %6
  %diff.check = icmp ugt i64 %i.ba, -16
  %or.cond53 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond53, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.i
  %n.vec = and i64 %i.az, 9223372036854775804     ; 3 uses
  %i.bb = shl i64 %n.vec, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.u, i64 %i.bb   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ab, i64 %i.bb
  %i.be = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.be, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi32 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.bf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.bf ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ab, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep33, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep33, align 4, !tbaa !211
  %wide.load34 = load <2 x i32>, ptr %i.bg, align 4, !tbaa !211
  %i.bh = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !211
  store <2 x i32> %wide.load34, ptr %i.bh, align 4, !tbaa !211
  %i.bi = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bj = add <2 x i64> %vec.phi32, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !5147

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader: ; preds = %.lr.ph.split.i.i, %middle.block
  %.ph = phi i64 [ %.promoted.i.i, %.lr.ph.split.i.i ], [ %i.bl, %middle.block ]
  %.014.i.i.ph = phi ptr [ %i.u, %.lr.ph.split.i.i ], [ %i.bc, %middle.block ]
  %.sroa.010.013.i.i.ph = phi ptr [ %i.ab, %.lr.ph.split.i.i ], [ %i.bd, %middle.block ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i
  %i.bm = phi i64 [ %i.bo, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ]
  %.014.i.i = phi ptr [ %i.bq, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.014.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ] ; 2 uses
  %.sroa.010.013.i.i = phi ptr [ %i.bp, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.sroa.010.013.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ] ; 2 uses
  %i.bn = load i32, ptr %.sroa.010.013.i.i, align 4, !tbaa !211
  store i32 %i.bn, ptr %.014.i.i, align 4, !tbaa !211
  %i.bo = add nsw i64 %i.bm, 1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bp, %i.ac
  br i1 %.not.i.i14, label %._crit_edge.split.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i, !llvm.loop !5148

._crit_edge.split.i.i:                            ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i, %middle.block
  %.lcssa31 = phi i64 [ %i.bl, %middle.block ], [ %i.bo, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ]
  %.lcssa30 = phi ptr [ %i.bc, %middle.block ], [ %i.bq, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ]
  store i64 %.lcssa31, ptr %i.ae, align 8, !tbaa !197
  br label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit

_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i, %middle.block49, %._crit_edge.split.i.i, %bb.f
  %.0.lcssa.i.i = phi ptr [ %i.u, %bb.f ], [ %.lcssa30, %._crit_edge.split.i.i ], [ %i.am, %middle.block49 ], [ %i.au, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ]
  store ptr %.0.lcssa.i.i, ptr %i.y, align 8, !tbaa !641
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !641 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.br, %i.ab
  br i1 %.not.i.i15, label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit
  %i.bs = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.bt = ptrtoaddr ptr %i.br to i64
  %i.bu = ptrtoaddr ptr %i.ab to i64
  %.promoted.i.i.i = load i64, ptr %i.bs, align 8, !tbaa !197
  %reass.sub = sub i64 %i.bt, %i.bu
  %i.bv = add i64 %reass.sub, -4
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = xor i64 %i.bw, -1
  %i.by = add i64 %.promoted.i.i.i, %i.bx
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !197
  br label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i

_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i: ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !641
  br label %_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit

bb.g:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, %.noexc.i.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #36
  resume { ptr, i32 } %i.bz

_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE5clearEv.exit: ; preds = %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit.i.i, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEEES2_S8_ET0_T_SC_SB_RT1_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !643  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !642
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #39
  %i.h = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !197
  %i.j = sub i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !197
  br label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !641  ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !643  ; 13 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775804
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
  unreachable

_ZNKSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 2305843009213693951)
  %i.m = select i1 %i.k, i64 2305843009213693951, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #41 ; 11 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE12_M_check_lenEmPKc.exit
  %i.s = load i64, ptr %i.r, align 8, !tbaa !197
  %i.t = add i64 %i.s, %i.p
  store i64 %i.t, ptr %i.r, align 8, !tbaa !197
  br label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE12_M_check_lenEmPKc.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i32 0, ptr %i.u, align 4, !tbaa !211
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !618  ; 8 uses
  %.not.i.i.i27 = icmp eq ptr %i.w, null          ; 3 uses
  br i1 %.not.i.i.i27, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.thread

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit: ; preds = %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit
  %.not13.i.i = icmp eq ptr %i.d, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit
  %i.x = add i64 %i.n, -4
  %i.y = sub i64 %i.x, %i.f                       ; 2 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.y, 28
  br i1 %min.iters.check107, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader163, label %vector.ph108

vector.ph108:                                     ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader
  %n.vec109 = and i64 %i.aa, 9223372036854775800  ; 3 uses
  %i.ab = shl i64 %n.vec109, 2                    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 %i.ab
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body110 ] ; 2 uses
  %i.ae = shl i64 %index111, 2                    ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.q, i64 %i.ae ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.d, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep113, i64 16
  %wide.load114 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !211
  %wide.load115 = load <4 x i32>, ptr %i.af, align 4, !tbaa !211
  %i.ag = getelementptr i8, ptr %next.gep112, i64 16
  store <4 x i32> %wide.load114, ptr %next.gep112, align 4, !tbaa !211
  store <4 x i32> %wide.load115, ptr %i.ag, align 4, !tbaa !211
  %index.next116 = add nuw i64 %index111, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.ah, label %middle.block117, label %vector.body110, !llvm.loop !5149

middle.block117:                                  ; preds = %vector.body110
  %cmp.n118 = icmp eq i64 %i.aa, %n.vec109
  br i1 %cmp.n118, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader163

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader163: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader, %middle.block117
  %.015.us.i.i.ph = phi ptr [ %i.q, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader ], [ %i.ac, %middle.block117 ]
  %.sroa.010.014.us.i.i.ph = phi ptr [ %i.d, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader ], [ %i.ad, %middle.block117 ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.thread: ; preds = %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE11_M_allocateEm.exit
  %i.ai = load i64, ptr %i.w, align 8, !tbaa !197
  %i.aj = add nsw i64 %i.ai, 1                    ; 3 uses
  store i64 %i.aj, ptr %i.w, align 8, !tbaa !197
  %.not13.i.i59 = icmp eq ptr %i.d, %1
  br i1 %.not13.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.thread
  %i.ak = add i64 %i.n, -4
  %i.al = sub i64 %i.ak, %i.f                     ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 12
  br i1 %min.iters.check, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader165, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader
  %n.vec = and i64 %i.an, 9223372036854775804     ; 3 uses
  %i.ao = shl i64 %n.vec, 2                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.q, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr i8, ptr %i.d, i64 %i.ao
  %i.ar = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.aj, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ar, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi102 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.as ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.d, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep103, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep103, align 4, !tbaa !211
  %wide.load104 = load <2 x i32>, ptr %i.at, align 4, !tbaa !211
  %i.au = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !211
  store <2 x i32> %wide.load104, ptr %i.au, align 4, !tbaa !211
  %i.av = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.aw = add <2 x i64> %vec.phi102, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !5150

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aw, %i.av
  %i.ay = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader165

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader165: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader, %middle.block
  %.ph166 = phi i64 [ %i.aj, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ], [ %i.ay, %middle.block ]
  %.015.i.i.ph = phi ptr [ %i.q, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ], [ %i.ap, %middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.d, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader163, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i
  %.015.us.i.i = phi ptr [ %i.bb, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ], [ %.015.us.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader163 ] ; 2 uses
  %.sroa.010.014.us.i.i = phi ptr [ %i.ba, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ], [ %.sroa.010.014.us.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i.preheader163 ] ; 2 uses
  %i.az = load i32, ptr %.sroa.010.014.us.i.i, align 4, !tbaa !211
  store i32 %i.az, ptr %.015.us.i.i, align 4, !tbaa !211
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.014.us.i.i, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.us.i.i, i64 4 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.us.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i, !llvm.loop !5151

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader165, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i
  %i.bc = phi i64 [ %i.be, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.ph166, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader165 ]
  %.015.i.i = phi ptr [ %i.bg, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.015.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader165 ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.bf, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ], [ %.sroa.010.014.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i.preheader165 ] ; 2 uses
  %i.bd = load i32, ptr %.sroa.010.014.i.i, align 4, !tbaa !211
  store i32 %i.bd, ptr %.015.i.i, align 4, !tbaa !211
  %i.be = add nsw i64 %i.bc, 1                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %1
  br i1 %.not.i.i, label %._crit_edge.split.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i, !llvm.loop !5152

._crit_edge.split.i.i:                            ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i, %middle.block
  %.lcssa101 = phi i64 [ %i.ay, %middle.block ], [ %i.be, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ]
  %.lcssa100 = phi ptr [ %i.ap, %middle.block ], [ %i.bg, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i ]
  store i64 %.lcssa101, ptr %i.w, align 8, !tbaa !197
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i, %middle.block117, %._crit_edge.split.i.i, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.thread
  %.0.lcssa.i.i = phi ptr [ %i.q, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit ], [ %.lcssa100, %._crit_edge.split.i.i ], [ %i.q, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.thread ], [ %i.ac, %middle.block117 ], [ %i.bb, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 4 ; 10 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit
  br i1 %.not.i.i.i27, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader, label %.lr.ph.split.i.i31

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader: ; preds = %.lr.ph.i.i29
  %i.bi = add i64 %i.e, -4
  %i.bj = sub i64 %i.bi, %i.n                     ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.bj, 60
  br i1 %min.iters.check144, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader158, label %vector.memcheck141

vector.memcheck141:                               ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader
  %2 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.bm = sub i64 %2, %i.n
  %i.bn = add i64 %i.bm, 3
  %diff.check142 = icmp ult i64 %i.bn, 31
  br i1 %diff.check142, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader158, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck141
  %n.vec146 = and i64 %i.bl, 9223372036854775800  ; 3 uses
  %i.bo = shl i64 %n.vec146, 2                    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bh, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.bo
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %i.br = shl i64 %index148, 2                    ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.bh, i64 %i.br ; 2 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load151 = load <4 x i32>, ptr %next.gep150, align 4, !tbaa !211
  %wide.load152 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !211
  %i.bt = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %wide.load151, ptr %next.gep149, align 4, !tbaa !211
  store <4 x i32> %wide.load152, ptr %i.bt, align 4, !tbaa !211
  %index.next153 = add nuw i64 %index148, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.bu, label %middle.block154, label %vector.body147, !llvm.loop !5153

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %i.bl, %n.vec146
  br i1 %cmp.n155, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader158

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader158: ; preds = %vector.memcheck141, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader, %middle.block154
  %.015.us.i.i40.ph = phi ptr [ %i.bh, %vector.memcheck141 ], [ %i.bh, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader ], [ %i.bp, %middle.block154 ]
  %.sroa.010.014.us.i.i41.ph = phi ptr [ %1, %vector.memcheck141 ], [ %1, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader ], [ %i.bq, %middle.block154 ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader158, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39
  %.015.us.i.i40 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39 ], [ %.015.us.i.i40.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader158 ] ; 2 uses
  %.sroa.010.014.us.i.i41 = phi ptr [ %i.bw, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39 ], [ %.sroa.010.014.us.i.i41.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39.preheader158 ] ; 2 uses
  %i.bv = load i32, ptr %.sroa.010.014.us.i.i41, align 4, !tbaa !211
  store i32 %i.bv, ptr %.015.us.i.i40, align 4, !tbaa !211
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.us.i.i41, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.015.us.i.i40, i64 4 ; 2 uses
  %.not.us.i.i42 = icmp eq ptr %i.bw, %i.c
  br i1 %.not.us.i.i42, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39, !llvm.loop !5154

.lr.ph.split.i.i31:                               ; preds = %.lr.ph.i.i29
  %.promoted.i.i32 = load i64, ptr %i.w, align 8, !tbaa !197 ; 3 uses
  %i.by = add i64 %i.e, -4
  %i.bz = sub i64 %i.by, %i.n                     ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check123 = icmp ult i64 %i.bz, 36
  br i1 %min.iters.check123, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.i.i31
  %3 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.cc = sub i64 %3, %i.n
  %i.cd = add i64 %i.cc, 3
  %diff.check = icmp ult i64 %i.cd, 15
  br i1 %diff.check, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %vector.memcheck
  %n.vec125 = and i64 %i.cb, 9223372036854775804  ; 3 uses
  %i.ce = shl i64 %n.vec125, 2                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bh, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %1, i64 %i.ce
  %i.ch = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i32, i64 0
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next134, %vector.body126 ] ; 2 uses
  %vec.phi128 = phi <2 x i64> [ %i.ch, %vector.ph124 ], [ %i.cl, %vector.body126 ]
  %vec.phi129 = phi <2 x i64> [ zeroinitializer, %vector.ph124 ], [ %i.cm, %vector.body126 ]
  %i.ci = shl i64 %index127, 2                    ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.bh, i64 %i.ci ; 2 uses
  %next.gep131 = getelementptr i8, ptr %1, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep131, i64 8
  %wide.load132 = load <2 x i32>, ptr %next.gep131, align 4, !tbaa !211
  %wide.load133 = load <2 x i32>, ptr %i.cj, align 4, !tbaa !211
  %i.ck = getelementptr i8, ptr %next.gep130, i64 8
  store <2 x i32> %wide.load132, ptr %next.gep130, align 4, !tbaa !211
  store <2 x i32> %wide.load133, ptr %i.ck, align 4, !tbaa !211
  %i.cl = add <2 x i64> %vec.phi128, splat (i64 1) ; 2 uses
  %i.cm = add <2 x i64> %vec.phi129, splat (i64 1) ; 2 uses
  %index.next134 = add nuw i64 %index127, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next134, %n.vec125
  br i1 %i.cn, label %middle.block135, label %vector.body126, !llvm.loop !5155

middle.block135:                                  ; preds = %vector.body126
  %bin.rdx136 = add <2 x i64> %i.cm, %i.cl
  %i.co = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx136) ; 2 uses
  %cmp.n137 = icmp eq i64 %i.cb, %n.vec125
  br i1 %cmp.n137, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43.thread, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33.preheader

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33.preheader: ; preds = %vector.memcheck, %.lr.ph.split.i.i31, %middle.block135
  %.ph = phi i64 [ %.promoted.i.i32, %vector.memcheck ], [ %.promoted.i.i32, %.lr.ph.split.i.i31 ], [ %i.co, %middle.block135 ]
  %.015.i.i34.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.split.i.i31 ], [ %i.cf, %middle.block135 ]
  %.sroa.010.014.i.i35.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.split.i.i31 ], [ %i.cg, %middle.block135 ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33.preheader, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33
  %i.cp = phi i64 [ %i.cr, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33 ], [ %.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33.preheader ]
  %.015.i.i34 = phi ptr [ %i.ct, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33 ], [ %.015.i.i34.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33.preheader ] ; 2 uses
  %.sroa.010.014.i.i35 = phi ptr [ %i.cs, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33 ], [ %.sroa.010.014.i.i35.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33.preheader ] ; 2 uses
  %i.cq = load i32, ptr %.sroa.010.014.i.i35, align 4, !tbaa !211
  store i32 %i.cq, ptr %.015.i.i34, align 4, !tbaa !211
  %i.cr = add nsw i64 %i.cp, 1                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i35, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.015.i.i34, i64 4 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.cs, %i.c
  br i1 %.not.i.i36, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43.thread, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33, !llvm.loop !5156

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit
  %.not5.i = icmp eq ptr %i.d, %1
  %brmerge = or i1 %.not5.i, %.not.i.i.i27
  br i1 %brmerge, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43..lr.ph.split.i_crit_edge

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43..lr.ph.split.i_crit_edge: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43
  %.promoted.i.pre = load i64, ptr %i.w, align 8, !tbaa !197
  br label %.lr.ph.split.i

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43.thread: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33, %middle.block135
  %.lcssa98 = phi i64 [ %i.co, %middle.block135 ], [ %i.cr, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33 ] ; 2 uses
  %.lcssa97 = phi ptr [ %i.cf, %middle.block135 ], [ %i.ct, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.i.i33 ] ; 2 uses
  store i64 %.lcssa98, ptr %i.w, align 8, !tbaa !197
  %.not5.i61 = icmp eq ptr %i.d, %i.c
  br i1 %.not5.i61, label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43..lr.ph.split.i_crit_edge, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43.thread
  %.promoted.i = phi i64 [ %.promoted.i.pre, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43..lr.ph.split.i_crit_edge ], [ %.lcssa98, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43.thread ]
  %.0.lcssa.i.i386265 = phi ptr [ %i.bh, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43..lr.ph.split.i_crit_edge ], [ %.lcssa97, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43.thread ]
  %i.cu = add i64 %i.e, -4
  %i.cv = sub i64 %i.cu, %i.f
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = xor i64 %i.cw, -1
  %i.cy = add i64 %.promoted.i, %i.cx
  store i64 %i.cy, ptr %i.w, align 8, !tbaa !197
  br label %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit

_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39, %middle.block154, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43.thread, %.lr.ph.split.i
  %.0.lcssa.i.i3863 = phi ptr [ %.lcssa97, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43.thread ], [ %i.bh, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N4absl12lts_2026052618container_internal17CountingAllocatorIiEEET0_T_S7_S6_RT1_.exit43 ], [ %.0.lcssa.i.i386265, %.lr.ph.split.i ], [ %i.bp, %middle.block154 ], [ %i.bx, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS7_.exit.us.i.i39 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !642
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.f                     ; 2 uses
  %.not.i44 = icmp eq ptr %i.d, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.dc) #39
  %i.dd = load ptr, ptr %0, align 8, !tbaa !617   ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i45, label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !197
  %i.df = sub i64 %i.de, %i.dc
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !197
  br label %_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE13_M_deallocateEPim.exit: ; preds = %_ZSt8_DestroyIPiN4absl12lts_2026052618container_internal17CountingAllocatorIiEEEvT_S6_RT0_.exit, %bb.d, %bb.e
  store ptr %i.q, ptr %i.a, align 8, !tbaa !643
  store ptr %.0.lcssa.i.i3863, ptr %i.b, align 8, !tbaa !641
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.m
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !642
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureIllEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.218, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !223   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #36, !inline_history !6
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !223   ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #36, !inline_history !6
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.224, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
end_hunk_8
