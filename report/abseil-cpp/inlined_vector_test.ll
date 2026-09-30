Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 191
loop-unroll.NumUnrolled: 288
begin_hunk_0_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  %i.jk = add nuw i64 %.012.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.jk, %i.ib
  br i1 %exitcond.not.i.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864, !llvm.loop !1618

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i: ; preds = %.lr.ph.i.i864.prol.loopexit, %.lr.ph.i.i864, %middle.block13955, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i
  %i.jl = load i64, ptr %13, align 8, !tbaa !197
  %i.jm = trunc i64 %i.jl to i1
  br i1 %i.jm, label %bb.z, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i

bb.z:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i
  %i.jn = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.jo = load i64, ptr %i.y, align 8, !tbaa !198
  %i.jp = shl i64 %i.jo, 2
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jp) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i: ; preds = %bb.z, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i
  store ptr %i.gr, ptr %i.z, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i, ptr %i.y, align 8, !tbaa !198
  %i.jq = shl nuw i64 %i.gm, 1
  %i.jr = or disjoint i64 %i.jq, 1
  br label %bb.af

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.gl, i64 %.sink1.i.i) ; 5 uses
  %i.js = getelementptr [4 x i8], ptr %i.gh, i64 %.sroa.speculated.i ; 12 uses
  %i.jt = sub i64 %i.gm, %.sroa.speculated.i      ; 5 uses
  %i.ju = sub nuw nsw i64 %.sroa.speculated.i, %i.gl ; 4 uses
  %i.jv = getelementptr [4 x i8], ptr %i.gj, i64 %i.jt
  %.not.i.i56.i = icmp eq i64 %.0605588, %.sink1.i.i ; 2 uses
  br i1 %.not.i.i56.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.preheader.i

.lr.ph.i.i57.preheader.i:                         ; preds = %bb.aa
  %i.jw = getelementptr i8, ptr %i.js, i64 -4
  %load_initial = load i32, ptr %i.jw, align 4    ; 9 uses
  %i.jx = sub nsw i64 %.sink1.i.i, %.sroa.speculated.i
  %xtraiter16157 = and i64 %i.jt, 7               ; 3 uses
  %i.jy = icmp ult i64 %i.jx, 7
  br i1 %i.jy, label %.lr.ph.i.i57.i.epil.preheader, label %.lr.ph.i.i57.preheader.i.new

.lr.ph.i.i57.preheader.i.new:                     ; preds = %.lr.ph.i.i57.preheader.i
  %unroll_iter = and i64 %i.jt, -8
  br label %.lr.ph.i.i57.i

.lr.ph.i.i57.i:                                   ; preds = %.lr.ph.i.i57.i, %.lr.ph.i.i57.preheader.i.new
  %.012.i.i59.i = phi i64 [ 0, %.lr.ph.i.i57.preheader.i.new ], [ %i.ko, %.lr.ph.i.i57.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i57.preheader.i.new ], [ %niter.next.7, %.lr.ph.i.i57.i ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  store i32 %load_initial, ptr %i.jz, align 4, !tbaa !211
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i32 %load_initial, ptr %i.kb, align 4, !tbaa !211
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 %load_initial, ptr %i.kd, align 4, !tbaa !211
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 %load_initial, ptr %i.kf, align 4, !tbaa !211
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i32 %load_initial, ptr %i.kh, align 4, !tbaa !211
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  store i32 %load_initial, ptr %i.kj, align 4, !tbaa !211
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store i32 %load_initial, ptr %i.kl, align 4, !tbaa !211
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 28
  store i32 %load_initial, ptr %i.kn, align 4, !tbaa !211
  %i.ko = add nuw i64 %.012.i.i59.i, 8            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, label %.lr.ph.i.i57.i, !llvm.loop !1619

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i57.i
  %lcmp.mod16158.not = icmp eq i64 %xtraiter16157, 0
  br i1 %lcmp.mod16158.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.i.epil.preheader

.lr.ph.i.i57.i.epil.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, %.lr.ph.i.i57.preheader.i
  %.012.i.i59.i.epil.init = phi i64 [ 0, %.lr.ph.i.i57.preheader.i ], [ %i.ko, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa ]
  %lcmp.mod16159 = icmp ne i64 %xtraiter16157, 0
  call void @llvm.assume(i1 %lcmp.mod16159)
  br label %.lr.ph.i.i57.i.epil

.lr.ph.i.i57.i.epil:                              ; preds = %.lr.ph.i.i57.i.epil, %.lr.ph.i.i57.i.epil.preheader
  %.012.i.i59.i.epil = phi i64 [ %i.kq, %.lr.ph.i.i57.i.epil ], [ %.012.i.i59.i.epil.init, %.lr.ph.i.i57.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i57.i.epil ], [ 0, %.lr.ph.i.i57.i.epil.preheader ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i.epil
  store i32 %load_initial, ptr %i.kp, align 4, !tbaa !211
  %i.kq = add nuw i64 %.012.i.i59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter16157
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.i.epil, !llvm.loop !1620

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, %.lr.ph.i.i57.i.epil, %bb.aa
  %i.kr = icmp samesign ugt i64 %i.ju, 1
  br i1 %i.kr, label %bb.ab, label %bb.ac, !prof !224

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i
  %.idx1311 = shl nuw nsw i64 %i.ju, 2
  %i.ks = sub nsw i64 0, %i.ju
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ks
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kt, ptr align 4 %i.gj, i64 %.idx1311, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i
  %i.ku = icmp eq i64 %i.ju, 1
  br i1 %i.ku, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kv = getelementptr inbounds i8, ptr %i.js, i64 -4
  %i.kw = load i32, ptr %i.gj, align 4, !tbaa !211
  store i32 %i.kw, ptr %i.kv, align 4, !tbaa !211
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not.i.i56.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i, label %.lr.ph.i64.i.preheader

.lr.ph.i64.i.preheader:                           ; preds = %bb.ae
  %i.kx = shl nuw i64 %i.jt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gj, ptr nonnull align 4 %i.h, i64 %i.kx, i1 false), !tbaa !211
  %i.ky = call i64 @llvm.usub.sat.i64(i64 %indvars.iv, i64 %.sink1.i.i)
  %.neg = mul i64 %i.ky, -4
  %scevgep9114 = getelementptr i8, ptr %scevgep, i64 %.neg
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i: ; preds = %.lr.ph.i64.i.preheader, %bb.ae
  %.sroa.0117.0.i = phi ptr [ %i.h, %bb.ae ], [ %scevgep9114, %.lr.ph.i64.i.preheader ]
  %.not.i68.i = icmp eq i64 %i.jt, 1
  br i1 %.not.i68.i, label %.loopexit.i, label %.lr.ph.i69.i.preheader

.lr.ph.i69.i.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i
  %i.kz = sub nsw i64 %.sroa.speculated.i, %.sink1.i.i
  %i.la = shl i64 %i.kz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jv, ptr align 4 %.sroa.0117.0.i, i64 %i.la, i1 false), !tbaa !211
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i69.i.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i
  %i.lb = load i64, ptr %13, align 8, !tbaa !197
  %i.lc = add i64 %i.lb, 2
  br label %bb.af

bb.af:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i, %.loopexit.i
  %storemerge.i = phi i64 [ %i.lc, %.loopexit.i ], [ %i.jr, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i ]
  %.0.i862 = phi ptr [ %i.gj, %.loopexit.i ], [ %i.gt, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i ]
  store i64 %storemerge.i, ptr %13, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  store ptr %.0.i862, ptr %i.j, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.ld = ptrtoint ptr %.sroa.131263.2 to i64
  %i.le = ptrtoint ptr %.sroa.01257.5 to i64      ; 2 uses
  %i.lf = sub i64 %i.ld, %i.le                    ; 7 uses
  %i.lg = icmp ugt i64 %i.lf, 9223372036854775804
  br i1 %i.lg, label %.noexc.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc235 unwind label %.loopexit.split-lp1375

.noexc235:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i: ; preds = %bb.af
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.131263.2, %.sroa.01257.5
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr null, i64 %i.lf
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #41
          to label %.noexc236 unwind label %.loopexit1374 ; 6 uses

.noexc236:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lf ; 3 uses
  %i.lk = icmp samesign ugt i64 %i.lf, 4
  br i1 %i.lk, label %bb.ag, label %bb.ah, !prof !318

bb.ag:                                            ; preds = %.noexc236
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.li, ptr align 4 %.sroa.01257.5, i64 %i.lf, i1 false), !noalias !1756
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

bb.ah:                                            ; preds = %.noexc236
  %i.ll = icmp eq i64 %i.lf, 4
  br i1 %i.ll, label %bb.ai, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.lm = load i32, ptr %.sroa.01257.5, align 4, !tbaa !211, !noalias !1756
  store i32 %i.lm, ptr %i.li, align 4, !tbaa !211, !noalias !1756
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %.thread.i.i.i.i.i
  %.sroa.91248.0 = phi ptr [ %i.lh, %.thread.i.i.i.i.i ], [ %i.lj, %bb.ag ], [ %i.lj, %bb.ai ], [ %i.lj, %bb.ah ] ; 2 uses
  %.sroa.01244.0 = phi ptr [ null, %.thread.i.i.i.i.i ], [ %i.li, %bb.ag ], [ %i.li, %bb.ai ], [ %i.li, %bb.ah ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.ln = ptrtoint ptr %.sroa.91248.0 to i64
  %i.lo = ptrtoint ptr %.sroa.01244.0 to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 15 uses
  %.not.i.i.i.i.i.i237 = icmp eq ptr %.sroa.91248.0, %.sroa.01244.0
  br i1 %.not.i.i.i.i.i.i237, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit
  %i.lq = icmp ugt i64 %i.lp, 9223372036854775804
  br i1 %i.lq, label %.noexc.i.i.i.i240, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !212

.noexc.i.i.i.i240:                                ; preds = %bb.aj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc241 unwind label %.loopexit.split-lp1380

.noexc241:                                        ; preds = %.noexc.i.i.i.i240
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.lr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #41
          to label %.noexc242 unwind label %.loopexit1379 ; 6 uses

.noexc242:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %i.ls = icmp samesign ugt i64 %i.lp, 4
  br i1 %i.ls, label %bb.ak, label %bb.al, !prof !318

bb.ak:                                            ; preds = %.noexc242
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lr, ptr align 4 %.sroa.01244.0, i64 %i.lp, i1 false), !noalias !1757
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i

bb.al:                                            ; preds = %.noexc242
  %i.lt = icmp eq i64 %i.lp, 4
  br i1 %i.lt, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i: ; preds = %bb.al
  %i.lu = load i32, ptr %.sroa.01244.0, align 4, !tbaa !211, !noalias !1757
  store i32 %i.lu, ptr %i.lr, align 4, !tbaa !211, !noalias !1757
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.al, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !1757
  %i.lv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #41
          to label %.noexc1.i unwind label %bb.ap, !noalias !1757 ; 4 uses

.noexc1.i:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.lv, ptr %15, align 8, !tbaa !320, !alias.scope !1757
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lp ; 2 uses
  store ptr %i.lw, ptr %i.ab, align 8, !tbaa !321, !alias.scope !1757
  %66 = icmp samesign ugt i64 %i.lp, 4
  br i1 %66, label %bb.am, label %bb.an, !prof !318

bb.am:                                            ; preds = %.noexc1.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lv, ptr nonnull align 4 %i.lr, i64 %i.lp, i1 false), !noalias !1757
  br label %.thread9406

bb.an:                                            ; preds = %.noexc1.i
  %i.lx = icmp eq i64 %i.lp, 4
  br i1 %i.lx, label %.thread9.i, label %.thread9406

.thread9.i:                                       ; preds = %bb.an
  %i.ly = load i32, ptr %i.lr, align 4, !tbaa !211, !noalias !1757
  store i32 %i.ly, ptr %i.lv, align 4, !tbaa !211, !noalias !1757
  br label %.thread9406

bb.ao:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit
  %i.lz = getelementptr inbounds i8, ptr null, i64 %i.lp ; 2 uses
  store i64 0, ptr %15, align 8
  store ptr %i.lz, ptr %i.ab, align 8, !tbaa !321, !alias.scope !1757
  store ptr %i.lz, ptr %i.aa, align 8, !tbaa !322, !alias.scope !1757
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit

.thread9406:                                      ; preds = %bb.an, %bb.am, %.thread9.i
  store ptr %i.lw, ptr %i.aa, align 8, !tbaa !322, !alias.scope !1757
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lp) #39, !noalias !1757
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit

bb.ap:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %lpad.loopexit1386 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lp) #39, !noalias !1757
  br label %.body

_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit: ; preds = %bb.ao, %.thread9406
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull @.str.310, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit
  %i.ma = load ptr, ptr %15, align 8, !tbaa !320  ; 3 uses
  %.not.i.i.i.i.i243 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i.i.i243, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mb = load ptr, ptr %i.ab, align 8, !tbaa !321
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.ma to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.me) #39
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit

_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit: ; preds = %bb.aq, %bb.ar
  %.not.i.i.i.i244 = icmp eq ptr %.sroa.01244.0, null
  br i1 %.not.i.i.i.i244, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01244.0, i64 noundef %i.lp) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.mf = load i8, ptr %14, align 8, !tbaa !220, !range !189, !noundef !190
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %bb.bg, label %bb.ax

.loopexit1359:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit1361 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp1360:                           ; preds = %bb.g
  %lpad.loopexit.split-lp1362 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.at:                                            ; preds = %bb.l
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit1364:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1366 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp1365:                           ; preds = %bb.t
  %lpad.loopexit.split-lp1367 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit1369:                                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i
  %lpad.loopexit1371 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp1370:                           ; preds = %.noexc.i865, %.noexc44.i
  %lpad.loopexit.split-lp1372 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit1374:                                    ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i
  %lpad.loopexit1376 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit248

.loopexit.split-lp1375:                           ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp1377 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit248

.loopexit1379:                                    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit1381 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1380:                           ; preds = %.noexc.i.i.i.i240
  %lpad.loopexit.split-lp1382 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit
  %i.mi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mj = load ptr, ptr %15, align 8, !tbaa !320  ; 3 uses
  %.not.i.i.i.i.i245 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i245, label %.body, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mk = load ptr, ptr %i.ab, align 8, !tbaa !321
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mj to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.mn) #39
  br label %.body

.body:                                            ; preds = %.loopexit1379, %.loopexit.split-lp1380, %bb.av, %bb.au, %bb.ap
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1382, %.loopexit.split-lp1380 ], [ %i.mi, %bb.av ], [ %lpad.loopexit1386, %bb.ap ], [ %i.mi, %bb.au ], [ %lpad.loopexit1381, %.loopexit1379 ] ; 2 uses
  %.not.i.i.i.i247 = icmp eq ptr %.sroa.01244.0, null
  br i1 %.not.i.i.i.i247, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit248, label %bb.aw

bb.aw:                                            ; preds = %.body
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01244.0, i64 noundef %i.lp) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit248

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit248: ; preds = %.loopexit1374, %.loopexit.split-lp1375, %bb.aw, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aw ], [ %.pn, %.body ], [ %lpad.loopexit1376, %.loopexit1374 ], [ %lpad.loopexit.split-lp1377, %.loopexit.split-lp1375 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %bb.bn

bb.ax:                                            ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.mo = load ptr, ptr %i.ac, align 8, !tbaa !221 ; 2 uses
  %.not.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.az, %bb.ay
  %i.mq = phi ptr [ %i.mp, %bb.az ], [ @.str.216, %bb.ay ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 579, ptr noundef %i.mq)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  %i.mr = load ptr, ptr %16, align 8, !tbaa !223  ; 3 uses
  %.not.i.i249 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i249, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bb
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !169
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(128) %i.mr) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ax
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit252

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xn = load i32, ptr %i.xk, align 4, !tbaa !211
  store i32 %i.xn, ptr %i.xm, align 4, !tbaa !211
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.012.i.i55.i
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = load i32, ptr %i.xo, align 4, !tbaa !211
  store i32 %i.xr, ptr %i.xq, align 4, !tbaa !211
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xh, i64 12
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.012.i.i55.i
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 12
  %i.xv = load i32, ptr %i.xs, align 4, !tbaa !211
  store i32 %i.xv, ptr %i.xu, align 4, !tbaa !211
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xh, i64 16 ; 2 uses
  %i.xx = add nuw i64 %.012.i.i55.i, 4            ; 2 uses
  %niter16166.next.3 = add i64 %niter16166, 4     ; 2 uses
  %niter16166.ncmp.3 = icmp eq i64 %niter16166.next.3, %unroll_iter16165
  br i1 %niter16166.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa, label %.lr.ph.i.i53.i, !llvm.loop !1619

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i53.i
  %lcmp.mod16163.not = icmp eq i64 %xtraiter16160, 0
  br i1 %lcmp.mod16163.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i, label %.lr.ph.i.i53.i.epil.preheader

.lr.ph.i.i53.i.epil.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa, %.lr.ph.i.i53.preheader.i
  %.epil.init = phi ptr [ %i.xd, %.lr.ph.i.i53.preheader.i ], [ %i.xw, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa ]
  %.012.i.i55.i.epil.init = phi i64 [ 0, %.lr.ph.i.i53.preheader.i ], [ %i.xx, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa ]
  %lcmp.mod16164 = icmp ne i64 %xtraiter16160, 0
  call void @llvm.assume(i1 %lcmp.mod16164)
  br label %.lr.ph.i.i53.i.epil

.lr.ph.i.i53.i.epil:                              ; preds = %.lr.ph.i.i53.i.epil, %.lr.ph.i.i53.i.epil.preheader
  %i.xy = phi ptr [ %i.yb, %.lr.ph.i.i53.i.epil ], [ %.epil.init, %.lr.ph.i.i53.i.epil.preheader ] ; 2 uses
  %.012.i.i55.i.epil = phi i64 [ %i.yc, %.lr.ph.i.i53.i.epil ], [ %.012.i.i55.i.epil.init, %.lr.ph.i.i53.i.epil.preheader ] ; 2 uses
  %epil.iter16161 = phi i64 [ %epil.iter16161.next, %.lr.ph.i.i53.i.epil ], [ 0, %.lr.ph.i.i53.i.epil.preheader ]
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.012.i.i55.i.epil
  %i.ya = load i32, ptr %i.xy, align 4, !tbaa !211
  store i32 %i.ya, ptr %i.xz, align 4, !tbaa !211
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.yc = add nuw i64 %.012.i.i55.i.epil, 1
  %epil.iter16161.next = add i64 %epil.iter16161, 1 ; 2 uses
  %epil.iter16161.cmp.not = icmp eq i64 %epil.iter16161.next, %xtraiter16160
  br i1 %epil.iter16161.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i, label %.lr.ph.i.i53.i.epil, !llvm.loop !1647

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa, %.lr.ph.i.i53.i.epil, %bb.df
  %i.yd = icmp samesign ugt i64 %i.xa, 1
  br i1 %i.yd, label %bb.dg, label %bb.dh, !prof !224

bb.dg:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i
  %.idx1316 = shl nuw nsw i64 %i.xa, 2
  %i.ye = sub nsw i64 0, %i.xa
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.ye
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yf, ptr align 4 %i.tn, i64 %.idx1316, i1 false)
  br label %bb.dj

bb.dh:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i
  %i.yg = icmp eq i64 %i.xa, 1
  br i1 %i.yg, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.yh = getelementptr inbounds i8, ptr %i.wy, i64 -4
  %i.yi = load i32, ptr %i.tn, align 4, !tbaa !211
  store i32 %i.yi, ptr %i.yh, align 4, !tbaa !211
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  br i1 %.not.i.i52.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i, label %.lr.ph.i60.i.preheader

.lr.ph.i60.i.preheader:                           ; preds = %bb.dj
  %min.iters.check13911 = icmp ult i64 %i.wz, 8
  br i1 %min.iters.check13911, label %.lr.ph.i60.i.preheader14005, label %vector.ph13912

vector.ph13912:                                   ; preds = %.lr.ph.i60.i.preheader
  %n.vec13913 = and i64 %i.wz, -8                 ; 3 uses
  br label %vector.body13914

vector.body13914:                                 ; preds = %vector.body13914, %vector.ph13912
  %index13915 = phi i64 [ 0, %vector.ph13912 ], [ %index.next13916, %vector.body13914 ] ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %index13915 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store <4 x i32> splat (i32 9999), ptr %i.yj, align 4, !tbaa !211
  store <4 x i32> splat (i32 9999), ptr %i.yk, align 4, !tbaa !211
  %index.next13916 = add nuw i64 %index13915, 8   ; 2 uses
  %i.yl = icmp eq i64 %index.next13916, %n.vec13913
  br i1 %i.yl, label %middle.block13917, label %vector.body13914, !llvm.loop !1648

middle.block13917:                                ; preds = %vector.body13914
  %cmp.n13918 = icmp eq i64 %i.wz, %n.vec13913
  br i1 %cmp.n13918, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i, label %.lr.ph.i60.i.preheader14005

.lr.ph.i60.i.preheader14005:                      ; preds = %.lr.ph.i60.i.preheader, %middle.block13917
  %.05.i.i883.ph = phi i64 [ 0, %.lr.ph.i60.i.preheader ], [ %n.vec13913, %middle.block13917 ]
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.lr.ph.i60.i.preheader14005, %.lr.ph.i60.i
  %.05.i.i883 = phi i64 [ %i.yn, %.lr.ph.i60.i ], [ %.05.i.i883.ph, %.lr.ph.i60.i.preheader14005 ] ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %.05.i.i883
  store i32 9999, ptr %i.ym, align 4, !tbaa !211
  %i.yn = add nuw i64 %.05.i.i883, 1              ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.yn, %i.wz
  br i1 %exitcond.not.i61.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i, label %.lr.ph.i60.i, !llvm.loop !1649

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i: ; preds = %.lr.ph.i60.i, %middle.block13917, %bb.dj
  %.not.i63.i = icmp eq i64 %i.wz, 5
  br i1 %.not.i63.i, label %.loopexit.i887, label %.lr.ph.i64.i884.preheader

.lr.ph.i64.i884.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i
  %min.iters.check13901 = icmp ult i64 %i.xc, 8
  br i1 %min.iters.check13901, label %.lr.ph.i64.i884.preheader14004, label %vector.ph13902

vector.ph13902:                                   ; preds = %.lr.ph.i64.i884.preheader
  %n.vec13903 = and i64 %i.xc, -8                 ; 3 uses
  br label %vector.body13904

vector.body13904:                                 ; preds = %vector.body13904, %vector.ph13902
  %index13905 = phi i64 [ 0, %vector.ph13902 ], [ %index.next13906, %vector.body13904 ] ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %index13905 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store <4 x i32> splat (i32 9999), ptr %i.yo, align 4, !tbaa !211
  store <4 x i32> splat (i32 9999), ptr %i.yp, align 4, !tbaa !211
  %index.next13906 = add nuw i64 %index13905, 8   ; 2 uses
  %i.yq = icmp eq i64 %index.next13906, %n.vec13903
  br i1 %i.yq, label %middle.block13907, label %vector.body13904, !llvm.loop !1650

middle.block13907:                                ; preds = %vector.body13904
  %cmp.n13908 = icmp eq i64 %i.xc, %n.vec13903
  br i1 %cmp.n13908, label %.loopexit.i887, label %.lr.ph.i64.i884.preheader14004

.lr.ph.i64.i884.preheader14004:                   ; preds = %.lr.ph.i64.i884.preheader, %middle.block13907
  %.06.i.i885.ph = phi i64 [ 0, %.lr.ph.i64.i884.preheader ], [ %n.vec13903, %middle.block13907 ]
  br label %.lr.ph.i64.i884

.lr.ph.i64.i884:                                  ; preds = %.lr.ph.i64.i884.preheader14004, %.lr.ph.i64.i884
  %.06.i.i885 = phi i64 [ %i.ys, %.lr.ph.i64.i884 ], [ %.06.i.i885.ph, %.lr.ph.i64.i884.preheader14004 ] ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %.06.i.i885
  store i32 9999, ptr %i.yr, align 4, !tbaa !211
  %i.ys = add nuw i64 %.06.i.i885, 1              ; 2 uses
  %exitcond.not.i66.i886 = icmp eq i64 %i.ys, %i.xc
  br i1 %exitcond.not.i66.i886, label %.loopexit.i887, label %.lr.ph.i64.i884, !llvm.loop !1651

.loopexit.i887:                                   ; preds = %.lr.ph.i64.i884, %middle.block13907, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i
  %i.yt = load i64, ptr %21, align 8, !tbaa !197
  %i.yu = add i64 %i.yt, 10
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900, %.loopexit.i887
  %storemerge.i888 = phi i64 [ %i.yu, %.loopexit.i887 ], [ %i.wx, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900 ]
  %.0.i889 = phi ptr [ %i.tn, %.loopexit.i887 ], [ %i.ty, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900 ]
  store i64 %storemerge.i888, ptr %21, align 8, !tbaa !197
  store ptr %.0.i889, ptr %i.l, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  %i.yv = ptrtoint ptr %.sroa.141238.2 to i64
  %i.yw = ptrtoint ptr %.sroa.01230.5 to i64      ; 2 uses
  %i.yx = sub i64 %i.yv, %i.yw                    ; 7 uses
  %i.yy = icmp ugt i64 %i.yx, 9223372036854775804
  br i1 %i.yy, label %.noexc.i.i.i.i304, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i300

.noexc.i.i.i.i304:                                ; preds = %bb.dk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc305 unwind label %.loopexit.split-lp1400

.noexc305:                                        ; preds = %.noexc.i.i.i.i304
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i300: ; preds = %bb.dk
  %.not.i.i.i.i.i.i301 = icmp eq ptr %.sroa.141238.2, %.sroa.01230.5
  br i1 %.not.i.i.i.i.i.i301, label %.thread.i.i.i.i.i303, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i302

.thread.i.i.i.i.i303:                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i300
  %i.yz = getelementptr inbounds nuw i8, ptr null, i64 %i.yx
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit307

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i302: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i300
  %i.za = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yx) #41
          to label %.noexc306 unwind label %.loopexit1399 ; 6 uses

.noexc306:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i302
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.yx ; 3 uses
  %i.zc = icmp samesign ugt i64 %i.yx, 4
  br i1 %i.zc, label %bb.dl, label %bb.dm, !prof !318

bb.dl:                                            ; preds = %.noexc306
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.za, ptr align 4 %.sroa.01230.5, i64 %i.yx, i1 false), !noalias !1763
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit307

bb.dm:                                            ; preds = %.noexc306
  %i.zd = icmp eq i64 %i.yx, 4
  br i1 %i.zd, label %bb.dn, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit307

bb.dn:                                            ; preds = %bb.dm
  %i.ze = load i32, ptr %.sroa.01230.5, align 4, !tbaa !211, !noalias !1763
  store i32 %i.ze, ptr %i.za, align 4, !tbaa !211, !noalias !1763
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit307

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit307: ; preds = %bb.dn, %bb.dm, %bb.dl, %.thread.i.i.i.i.i303
  %.sroa.01219.0 = phi ptr [ null, %.thread.i.i.i.i.i303 ], [ %i.za, %bb.dl ], [ %i.za, %bb.dn ], [ %i.za, %bb.dm ] ; 8 uses
  %.sroa.91223.0 = phi ptr [ %i.yz, %.thread.i.i.i.i.i303 ], [ %i.zb, %bb.dl ], [ %i.zb, %bb.dn ], [ %i.zb, %bb.dm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  %i.zf = ptrtoint ptr %.sroa.91223.0 to i64
  %i.zg = ptrtoint ptr %.sroa.01219.0 to i64
  %i.zh = sub i64 %i.zf, %i.zg                    ; 15 uses
  %.not.i.i.i.i.i.i308 = icmp eq ptr %.sroa.91223.0, %.sroa.01219.0
  br i1 %.not.i.i.i.i.i.i308, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit307
  %i.zi = icmp ugt i64 %i.zh, 9223372036854775804
  br i1 %i.zi, label %.noexc.i.i.i.i328, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i309, !prof !212

.noexc.i.i.i.i328:                                ; preds = %bb.do
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc329 unwind label %.loopexit.split-lp1405

.noexc329:                                        ; preds = %.noexc.i.i.i.i328
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i309: ; preds = %bb.do
  %i.zj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zh) #41
          to label %.noexc330 unwind label %.loopexit1404 ; 6 uses

.noexc330:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i309
  %i.zk = icmp samesign ugt i64 %i.zh, 4
  br i1 %i.zk, label %bb.dp, label %bb.dq, !prof !318

bb.dp:                                            ; preds = %.noexc330
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zj, ptr align 4 %.sroa.01219.0, i64 %i.zh, i1 false), !noalias !1764
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i318

bb.dq:                                            ; preds = %.noexc330
  %i.zl = icmp eq i64 %i.zh, 4
  br i1 %i.zl, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i327, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i318

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i327: ; preds = %bb.dq
  %i.zm = load i32, ptr %.sroa.01219.0, align 4, !tbaa !211, !noalias !1764
  store i32 %i.zm, ptr %i.zj, align 4, !tbaa !211, !noalias !1764
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i318

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i318: ; preds = %bb.dp, %bb.dq, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false), !alias.scope !1764
  %i.zn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zh) #41
          to label %.noexc1.i321 unwind label %bb.du, !noalias !1764 ; 4 uses

.noexc1.i321:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i318
  store ptr %i.zn, ptr %23, align 8, !tbaa !320, !alias.scope !1764
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zh ; 2 uses
  store ptr %i.zo, ptr %i.aj, align 8, !tbaa !321, !alias.scope !1764
  %67 = icmp samesign ugt i64 %i.zh, 4
  br i1 %67, label %bb.dr, label %bb.ds, !prof !318

bb.dr:                                            ; preds = %.noexc1.i321
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zn, ptr nonnull align 4 %i.zj, i64 %i.zh, i1 false), !noalias !1764
  br label %.thread9414

bb.ds:                                            ; preds = %.noexc1.i321
  %i.zp = icmp eq i64 %i.zh, 4
  br i1 %i.zp, label %.thread9.i323, label %.thread9414

.thread9.i323:                                    ; preds = %bb.ds
  %i.zq = load i32, ptr %i.zj, align 4, !tbaa !211, !noalias !1764
  store i32 %i.zq, ptr %i.zn, align 4, !tbaa !211, !noalias !1764
  br label %.thread9414

bb.dt:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit307
  %i.zr = getelementptr inbounds i8, ptr null, i64 %i.zh ; 2 uses
  store i64 0, ptr %23, align 8
  store ptr %i.zr, ptr %i.aj, align 8, !tbaa !321, !alias.scope !1764
  store ptr %i.zr, ptr %i.ai, align 8, !tbaa !322, !alias.scope !1764
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit333

.thread9414:                                      ; preds = %bb.ds, %bb.dr, %.thread9.i323
  store ptr %i.zo, ptr %i.ai, align 8, !tbaa !322, !alias.scope !1764
  call void @_ZdlPvm(ptr noundef nonnull %i.zj, i64 noundef %i.zh) #39, !noalias !1764
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit333

bb.du:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i318
  %lpad.loopexit1411 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.zj, i64 noundef %i.zh) #39, !noalias !1764
  br label %.body331

_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit333: ; preds = %bb.dt, %.thread9414
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull @.str.310, ptr noundef nonnull align 8 dereferenceable(40) %21)
          to label %bb.dv unwind label %bb.ef

bb.dv:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit333
  %i.zs = load ptr, ptr %23, align 8, !tbaa !320  ; 3 uses
  %.not.i.i.i.i.i334 = icmp eq ptr %i.zs, null
  br i1 %.not.i.i.i.i.i334, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit335, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.zt = load ptr, ptr %i.aj, align 8, !tbaa !321
  %i.zu = ptrtoint ptr %i.zt to i64
  %i.zv = ptrtoint ptr %i.zs to i64
  %i.zw = sub i64 %i.zu, %i.zv
  call void @_ZdlPvm(ptr noundef nonnull %i.zs, i64 noundef %i.zw) #39
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit335

_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit335: ; preds = %bb.dv, %bb.dw
  %.not.i.i.i.i336 = icmp eq ptr %.sroa.01219.0, null
  br i1 %.not.i.i.i.i336, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit337, label %bb.dx

bb.dx:                                            ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit335
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01219.0, i64 noundef %i.zh) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit337

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit337: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit335, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  %i.zx = load i8, ptr %22, align 8, !tbaa !220, !range !189, !noundef !190
  %i.zy = trunc nuw i8 %i.zx to i1
  br i1 %i.zy, label %bb.er, label %bb.ei

bb.dy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit263, %.body871
  %.pn142.pn.pn = phi { ptr, i32 } [ %.pn142.pn, %_ZN7testing7MessageD2Ev.exit263 ], [ %eh.lpad-body872, %.body871 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit1369, %.loopexit.split-lp1370, %bb.dy, %bb.bn
  %.pn142.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn, %bb.dy ], [ %.pn138.pn.pn, %bb.bn ], [ %lpad.loopexit1371, %.loopexit1369 ], [ %lpad.loopexit.split-lp1372, %.loopexit.split-lp1370 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  br label %bb.ea

bb.ea:                                            ; preds = %.loopexit1364, %.loopexit.split-lp1365, %bb.dz, %bb.at
  %.sroa.21.0 = phi ptr [ %.sroa.21.3, %bb.at ], [ %.sroa.21.5, %bb.dz ], [ %.sroa.21.412751284, %.loopexit1364 ], [ %.sroa.21.412751284, %.loopexit.split-lp1365 ]
  %.sroa.01257.0 = phi ptr [ %.sroa.01257.3, %bb.at ], [ %.sroa.01257.5, %bb.dz ], [ %.sroa.01257.412771282, %.loopexit1364 ], [ %.sroa.01257.412771282, %.loopexit.split-lp1365 ]
  %.pn142.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mh, %bb.at ], [ %.pn142.pn.pn.pn, %bb.dz ], [ %lpad.loopexit1366, %.loopexit1364 ], [ %lpad.loopexit.split-lp1367, %.loopexit.split-lp1365 ]
  %i.zz = load i64, ptr %13, align 8, !tbaa !197
  %i.aaa = trunc i64 %i.zz to i1
  br i1 %i.aaa, label %bb.eb, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit338

bb.eb:                                            ; preds = %bb.ea
  %i.aab = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.aac = load i64, ptr %i.y, align 8, !tbaa !198
  %i.aad = shl i64 %i.aac, 2
  call void @_ZdlPvm(ptr noundef %i.aab, i64 noundef %i.aad) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit338

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit338: ; preds = %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit1359, %.loopexit.split-lp1360, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit338
  %.sroa.21.1 = phi ptr [ %.sroa.21.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit338 ], [ %.sroa.21.2, %.loopexit1359 ], [ %.sroa.21.2, %.loopexit.split-lp1360 ]
  %.sroa.01257.1 = phi ptr [ %.sroa.01257.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit338 ], [ %.sroa.01257.2, %.loopexit1359 ], [ %.sroa.01257.2, %.loopexit.split-lp1360 ] ; 3 uses
  %.pn142.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit338 ], [ %lpad.loopexit1361, %.loopexit1359 ], [ %lpad.loopexit.split-lp1362, %.loopexit.split-lp1360 ] ; 2 uses
  %.not.i.i.i339 = icmp eq ptr %.sroa.01257.1, null
  br i1 %.not.i.i.i339, label %_ZNSt6vectorIiSaIiEED2Ev.exit340, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aae = ptrtoint ptr %.sroa.21.1 to i64
  %i.aaf = ptrtoint ptr %.sroa.01257.1 to i64
  %i.aag = sub i64 %i.aae, %i.aaf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01257.1, i64 noundef %i.aag) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

.loopexit1354:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i278
  %lpad.loopexit1356 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

.loopexit.split-lp1355:                           ; preds = %bb.ce
  %lpad.loopexit.split-lp1357 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.ee:                                            ; preds = %bb.cj
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit1389:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit1391 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp1390:                           ; preds = %bb.cu
  %lpad.loopexit.split-lp1392 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit1394:                                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i891
  %lpad.loopexit1396 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

.loopexit.split-lp1395:                           ; preds = %.noexc.i902, %.noexc44.i901
  %lpad.loopexit.split-lp1397 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

.loopexit1399:                                    ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i302
  %lpad.loopexit1401 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit344

.loopexit.split-lp1400:                           ; preds = %.noexc.i.i.i.i304
  %lpad.loopexit.split-lp1402 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit344

.loopexit1404:                                    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i309
  %lpad.loopexit1406 = landingpad { ptr, i32 }
          cleanup
  br label %.body331

.loopexit.split-lp1405:                           ; preds = %.noexc.i.i.i.i328
  %lpad.loopexit.split-lp1407 = landingpad { ptr, i32 }
          cleanup
  br label %.body331

bb.ef:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit333
  %i.aai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaj = load ptr, ptr %23, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i341 = icmp eq ptr %i.aaj, null
  br i1 %.not.i.i.i.i.i341, label %.body331, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aak = load ptr, ptr %i.aj, align 8, !tbaa !321
  %i.aal = ptrtoint ptr %i.aak to i64
  %i.aam = ptrtoint ptr %i.aaj to i64
  %i.aan = sub i64 %i.aal, %i.aam
  call void @_ZdlPvm(ptr noundef nonnull %i.aaj, i64 noundef %i.aan) #39
  br label %.body331

.body331:                                         ; preds = %.loopexit1404, %.loopexit.split-lp1405, %bb.eg, %bb.ef, %bb.du
  %.pn149 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1407, %.loopexit.split-lp1405 ], [ %i.aai, %bb.eg ], [ %lpad.loopexit1411, %bb.du ], [ %i.aai, %bb.ef ], [ %lpad.loopexit1406, %.loopexit1404 ] ; 2 uses
  %.not.i.i.i.i343 = icmp eq ptr %.sroa.01219.0, null
  br i1 %.not.i.i.i.i343, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit344, label %bb.eh

bb.eh:                                            ; preds = %.body331
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01219.0, i64 noundef %i.zh) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit344

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit344: ; preds = %.loopexit1399, %.loopexit.split-lp1400, %bb.eh, %.body331
  %.pn149.pn = phi { ptr, i32 } [ %.pn149, %bb.eh ], [ %.pn149, %.body331 ], [ %lpad.loopexit1401, %.loopexit1399 ], [ %lpad.loopexit.split-lp1402, %.loopexit.split-lp1400 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  br label %bb.ey

bb.ei:                                            ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit337
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ej unwind label %bb.en

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  %i.aao = load ptr, ptr %i.ak, align 8, !tbaa !221 ; 2 uses
  %.not.i.i345 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i345, label %_ZNK7testing15AssertionResult15failure_messageEv.exit346, label %bb.ek
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  br label %vector.body13857

vector.body13857:                                 ; preds = %vector.body13857, %vector.ph13855
  %index13858 = phi i64 [ 0, %vector.ph13855 ], [ %index.next13862, %vector.body13857 ] ; 3 uses
  %i.akf = shl i64 %index13858, 2
  %next.gep13859 = getelementptr i8, ptr %i.aev, i64 %i.akf ; 2 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %index13858 ; 2 uses
  %i.akh = getelementptr i8, ptr %next.gep13859, i64 16
  %wide.load13860 = load <4 x i32>, ptr %next.gep13859, align 4, !tbaa !211
  %wide.load13861 = load <4 x i32>, ptr %i.akh, align 4, !tbaa !211
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  store <4 x i32> %wide.load13860, ptr %i.akg, align 4, !tbaa !211
  store <4 x i32> %wide.load13861, ptr %i.aki, align 4, !tbaa !211
  %index.next13862 = add nuw i64 %index13858, 8   ; 2 uses
  %i.akj = icmp eq i64 %index.next13862, %n.vec13856
  br i1 %i.akj, label %middle.block13863, label %vector.body13857, !llvm.loop !1675

middle.block13863:                                ; preds = %vector.body13857
  %cmp.n13864 = icmp eq i64 %i.air, %n.vec13856
  br i1 %cmp.n13864, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i62.i.preheader13998

.lr.ph.i62.i.preheader13998:                      ; preds = %vector.memcheck13851, %.lr.ph.i62.i.preheader, %middle.block13863
  %.ph13999 = phi ptr [ %i.aev, %vector.memcheck13851 ], [ %i.aev, %.lr.ph.i62.i.preheader ], [ %i.ake, %middle.block13863 ]
  %.05.i.i927.ph = phi i64 [ 0, %vector.memcheck13851 ], [ 0, %.lr.ph.i62.i.preheader ], [ %n.vec13856, %middle.block13863 ]
  br label %.lr.ph.i62.i

.lr.ph.i62.i:                                     ; preds = %.lr.ph.i62.i.preheader13998, %.lr.ph.i62.i
  %i.akk = phi ptr [ %i.akn, %.lr.ph.i62.i ], [ %.ph13999, %.lr.ph.i62.i.preheader13998 ] ; 2 uses
  %.05.i.i927 = phi i64 [ %i.ako, %.lr.ph.i62.i ], [ %.05.i.i927.ph, %.lr.ph.i62.i.preheader13998 ] ; 2 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %.05.i.i927
  %i.akm = load i32, ptr %i.akk, align 4, !tbaa !211
  store i32 %i.akm, ptr %i.akl, align 4, !tbaa !211
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akk, i64 4 ; 2 uses
  %i.ako = add nuw i64 %.05.i.i927, 1             ; 2 uses
  %exitcond.not.i64.i = icmp eq i64 %i.ako, %i.air
  br i1 %exitcond.not.i64.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i62.i, !llvm.loop !1676

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i: ; preds = %.lr.ph.i62.i, %middle.block13863, %bb.ge
  %.sroa.0113.0.i = phi ptr [ %i.aev, %bb.ge ], [ %i.ake, %middle.block13863 ], [ %i.akn, %.lr.ph.i62.i ] ; 5 uses
  %.sroa.0113.0.i13835 = ptrtoaddr ptr %.sroa.0113.0.i to i64
  %.not.i66.i = icmp eq i64 %i.air, 3
  br i1 %.not.i66.i, label %.loopexit.i929, label %.lr.ph.i67.i.preheader

.lr.ph.i67.i.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i
  %min.iters.check13838 = icmp ult i64 %i.aiu, 12
  br i1 %min.iters.check13838, label %.lr.ph.i67.i.preheader13996, label %vector.memcheck13834

vector.memcheck13834:                             ; preds = %.lr.ph.i67.i.preheader
  %i.akp = add i64 %i.dj, %i.aff
  %i.akq = shl i64 %.sink1.i.i925, 2
  %i.akr = add i64 %i.akp, %i.akq
  %i.aks = shl i64 %.sroa.speculated.i926, 2
  %i.akt = add i64 %i.aks, %.sroa.0113.0.i13835
  %i.aku = sub i64 %i.akt, %i.akr
  %diff.check13836 = icmp ugt i64 %i.aku, -32
  br i1 %diff.check13836, label %.lr.ph.i67.i.preheader13996, label %vector.ph13839

vector.ph13839:                                   ; preds = %vector.memcheck13834
  %n.vec13840 = and i64 %i.aiu, -8                ; 4 uses
  %i.akv = shl i64 %n.vec13840, 2
  %i.akw = getelementptr i8, ptr %.sroa.0113.0.i, i64 %i.akv
  br label %vector.body13841

vector.body13841:                                 ; preds = %vector.body13841, %vector.ph13839
  %index13842 = phi i64 [ 0, %vector.ph13839 ], [ %index.next13846, %vector.body13841 ] ; 3 uses
  %i.akx = shl i64 %index13842, 2
  %next.gep13843 = getelementptr i8, ptr %.sroa.0113.0.i, i64 %i.akx ; 2 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %index13842 ; 2 uses
  %i.akz = getelementptr i8, ptr %next.gep13843, i64 16
  %wide.load13844 = load <4 x i32>, ptr %next.gep13843, align 4, !tbaa !211
  %wide.load13845 = load <4 x i32>, ptr %i.akz, align 4, !tbaa !211
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aky, i64 16
  store <4 x i32> %wide.load13844, ptr %i.aky, align 4, !tbaa !211
  store <4 x i32> %wide.load13845, ptr %i.ala, align 4, !tbaa !211
  %index.next13846 = add nuw i64 %index13842, 8   ; 2 uses
  %i.alb = icmp eq i64 %index.next13846, %n.vec13840
  br i1 %i.alb, label %middle.block13847, label %vector.body13841, !llvm.loop !1677

middle.block13847:                                ; preds = %vector.body13841
  %cmp.n13848 = icmp eq i64 %i.aiu, %n.vec13840
  br i1 %cmp.n13848, label %.loopexit.i929, label %.lr.ph.i67.i.preheader13996

.lr.ph.i67.i.preheader13996:                      ; preds = %vector.memcheck13834, %.lr.ph.i67.i.preheader, %middle.block13847
  %.ph13997.a = phi ptr [ %.sroa.0113.0.i, %vector.memcheck13834 ], [ %.sroa.0113.0.i, %.lr.ph.i67.i.preheader ], [ %i.akw, %middle.block13847 ] ; 2 uses
  %.06.i.i928.ph = phi i64 [ 0, %vector.memcheck13834 ], [ 0, %.lr.ph.i67.i.preheader ], [ %n.vec13840, %middle.block13847 ] ; 3 uses
  %i.alc = sub nsw i64 %.sroa.speculated.i926, %.sink1.i.i925
  %xtraiter16183 = and i64 %i.alc, 3              ; 2 uses
  %lcmp.mod16184.not = icmp eq i64 %xtraiter16183, 0
  br i1 %lcmp.mod16184.not, label %.lr.ph.i67.i.prol.loopexit, label %.lr.ph.i67.i.prol

.lr.ph.i67.i.prol:                                ; preds = %.lr.ph.i67.i.preheader13996, %.lr.ph.i67.i.prol
  %i.ald = phi ptr [ %i.alg, %.lr.ph.i67.i.prol ], [ %.ph13997.a, %.lr.ph.i67.i.preheader13996 ] ; 2 uses
  %.06.i.i928.prol = phi i64 [ %i.alh, %.lr.ph.i67.i.prol ], [ %.06.i.i928.ph, %.lr.ph.i67.i.preheader13996 ] ; 2 uses
  %prol.iter16185 = phi i64 [ %prol.iter16185.next, %.lr.ph.i67.i.prol ], [ 0, %.lr.ph.i67.i.preheader13996 ]
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i928.prol
  %i.alf = load i32, ptr %i.ald, align 4, !tbaa !211
  store i32 %i.alf, ptr %i.ale, align 4, !tbaa !211
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ald, i64 4 ; 2 uses
  %i.alh = add nuw i64 %.06.i.i928.prol, 1        ; 2 uses
  %prol.iter16185.next = add i64 %prol.iter16185, 1 ; 2 uses
  %prol.iter16185.cmp.not = icmp eq i64 %prol.iter16185.next, %xtraiter16183
  br i1 %prol.iter16185.cmp.not, label %.lr.ph.i67.i.prol.loopexit, label %.lr.ph.i67.i.prol, !llvm.loop !1678

.lr.ph.i67.i.prol.loopexit:                       ; preds = %.lr.ph.i67.i.prol, %.lr.ph.i67.i.preheader13996
  %.unr16186 = phi ptr [ %.ph13997.a, %.lr.ph.i67.i.preheader13996 ], [ %i.alg, %.lr.ph.i67.i.prol ]
  %.06.i.i928.unr = phi i64 [ %.06.i.i928.ph, %.lr.ph.i67.i.preheader13996 ], [ %i.alh, %.lr.ph.i67.i.prol ]
  %i.ali = sub i64 %.06.i.i928.ph, %.sroa.speculated.i926
  %i.alj = add i64 %i.ali, %.sink1.i.i925
  %i.alk = icmp ugt i64 %i.alj, -4
  br i1 %i.alk, label %.loopexit.i929, label %.lr.ph.i67.i

.lr.ph.i67.i:                                     ; preds = %.lr.ph.i67.i.prol.loopexit, %.lr.ph.i67.i
  %i.all = phi ptr [ %i.ama, %.lr.ph.i67.i ], [ %.unr16186, %.lr.ph.i67.i.prol.loopexit ] ; 5 uses
  %.06.i.i928 = phi i64 [ %i.amb, %.lr.ph.i67.i ], [ %.06.i.i928.unr, %.lr.ph.i67.i.prol.loopexit ] ; 5 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i928
  %i.aln = load i32, ptr %i.all, align 4, !tbaa !211
  store i32 %i.aln, ptr %i.alm, align 4, !tbaa !211
  %i.alo = getelementptr inbounds nuw i8, ptr %i.all, i64 4
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i928
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 4
  %i.alr = load i32, ptr %i.alo, align 4, !tbaa !211
  store i32 %i.alr, ptr %i.alq, align 4, !tbaa !211
  %i.als = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i928
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alv = load i32, ptr %i.als, align 4, !tbaa !211
  store i32 %i.alv, ptr %i.alu, align 4, !tbaa !211
  %i.alw = getelementptr inbounds nuw i8, ptr %i.all, i64 12
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i928
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 12
  %i.alz = load i32, ptr %i.alw, align 4, !tbaa !211
  store i32 %i.alz, ptr %i.aly, align 4, !tbaa !211
  %i.ama = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %i.amb = add nuw i64 %.06.i.i928, 4             ; 2 uses
  %exitcond.not.i69.i.3 = icmp eq i64 %i.amb, %i.aiu
  br i1 %exitcond.not.i69.i.3, label %.loopexit.i929, label %.lr.ph.i67.i, !llvm.loop !1679

.loopexit.i929:                                   ; preds = %.lr.ph.i67.i.prol.loopexit, %.lr.ph.i67.i, %middle.block13847, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i
  %i.amc = load i64, ptr %30, align 8, !tbaa !197
  %i.amd = add i64 %i.amc, 6
  br label %bb.gf

bb.gf:                                            ; preds = %.loopexit.i929, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i944
  %storemerge.i930 = phi i64 [ %i.amd, %.loopexit.i929 ], [ %i.aip, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i944 ]
  %.0.i931 = phi ptr [ %i.afg, %.loopexit.i929 ], [ %i.afr, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i944 ]
  store i64 %storemerge.i930, ptr %30, align 8, !tbaa !197
  store ptr %.0.i931, ptr %i.n, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.ame = load ptr, ptr %29, align 8, !tbaa !234, !noalias !1769 ; 4 uses
  %i.amf = load ptr, ptr %i.ao, align 8, !tbaa !234, !noalias !1769 ; 2 uses
  %i.amg = ptrtoint ptr %i.amf to i64
  %i.amh = ptrtoint ptr %i.ame to i64
  %i.ami = sub i64 %i.amg, %i.amh                 ; 7 uses
  %i.amj = icmp ugt i64 %i.ami, 9223372036854775804
  br i1 %i.amj, label %.noexc.i.i.i.i414, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i410

.noexc.i.i.i.i414:                                ; preds = %bb.gf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc415 unwind label %.loopexit.split-lp1420

.noexc415:                                        ; preds = %.noexc.i.i.i.i414
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i410: ; preds = %bb.gf
  %.not.i.i.i.i.i.i411 = icmp eq ptr %i.amf, %i.ame
  br i1 %.not.i.i.i.i.i.i411, label %.thread.i.i.i.i.i413, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i412

.thread.i.i.i.i.i413:                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i410
  %i.amk = getelementptr inbounds nuw i8, ptr null, i64 %i.ami
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit417

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i412: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i410
  %i.aml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ami) #41
          to label %.noexc416 unwind label %.loopexit1419 ; 6 uses

.noexc416:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i412
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.ami ; 3 uses
  %i.amn = icmp samesign ugt i64 %i.ami, 4
  br i1 %i.amn, label %bb.gg, label %bb.gh, !prof !318

bb.gg:                                            ; preds = %.noexc416
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aml, ptr align 4 %i.ame, i64 %i.ami, i1 false), !noalias !1770
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit417

bb.gh:                                            ; preds = %.noexc416
  %i.amo = icmp eq i64 %i.ami, 4
  br i1 %i.amo, label %bb.gi, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit417

bb.gi:                                            ; preds = %bb.gh
  %i.amp = load i32, ptr %i.ame, align 4, !tbaa !211, !noalias !1770
  store i32 %i.amp, ptr %i.aml, align 4, !tbaa !211, !noalias !1770
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit417

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit417: ; preds = %bb.gi, %bb.gh, %bb.gg, %.thread.i.i.i.i.i413
  %.sroa.01199.0 = phi ptr [ null, %.thread.i.i.i.i.i413 ], [ %i.aml, %bb.gg ], [ %i.aml, %bb.gi ], [ %i.aml, %bb.gh ] ; 8 uses
  %.sroa.91203.0 = phi ptr [ %i.amk, %.thread.i.i.i.i.i413 ], [ %i.amm, %bb.gg ], [ %i.amm, %bb.gi ], [ %i.amm, %bb.gh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  %i.amq = ptrtoint ptr %.sroa.91203.0 to i64
  %i.amr = ptrtoint ptr %.sroa.01199.0 to i64
  %i.ams = sub i64 %i.amq, %i.amr                 ; 15 uses
  %.not.i.i.i.i.i.i418 = icmp eq ptr %.sroa.91203.0, %.sroa.01199.0
  br i1 %.not.i.i.i.i.i.i418, label %bb.go, label %bb.gj

bb.gj:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit417
  %i.amt = icmp ugt i64 %i.ams, 9223372036854775804
  br i1 %i.amt, label %.noexc.i.i.i.i438, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i419, !prof !212

.noexc.i.i.i.i438:                                ; preds = %bb.gj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc439 unwind label %.loopexit.split-lp1425

.noexc439:                                        ; preds = %.noexc.i.i.i.i438
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i419: ; preds = %bb.gj
  %i.amu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ams) #41
          to label %.noexc440 unwind label %.loopexit1424 ; 6 uses

.noexc440:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i419
  %i.amv = icmp samesign ugt i64 %i.ams, 4
  br i1 %i.amv, label %bb.gk, label %bb.gl, !prof !318

bb.gk:                                            ; preds = %.noexc440
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.amu, ptr align 4 %.sroa.01199.0, i64 %i.ams, i1 false), !noalias !1771
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i428

bb.gl:                                            ; preds = %.noexc440
  %i.amw = icmp eq i64 %i.ams, 4
  br i1 %i.amw, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i437, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i428

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i437: ; preds = %bb.gl
  %i.amx = load i32, ptr %.sroa.01199.0, align 4, !tbaa !211, !noalias !1771
  store i32 %i.amx, ptr %i.amu, align 4, !tbaa !211, !noalias !1771
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i428

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i428: ; preds = %bb.gk, %bb.gl, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i437
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false), !alias.scope !1771
  %i.amy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ams) #41
          to label %.noexc1.i431 unwind label %bb.gp, !noalias !1771 ; 4 uses

.noexc1.i431:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i428
  store ptr %i.amy, ptr %32, align 8, !tbaa !320, !alias.scope !1771
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 %i.ams ; 2 uses
  store ptr %i.amz, ptr %i.at, align 8, !tbaa !321, !alias.scope !1771
  %68 = icmp samesign ugt i64 %i.ams, 4
  br i1 %68, label %bb.gm, label %bb.gn, !prof !318

bb.gm:                                            ; preds = %.noexc1.i431
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.amy, ptr nonnull align 4 %i.amu, i64 %i.ams, i1 false), !noalias !1771
  br label %.thread9419

bb.gn:                                            ; preds = %.noexc1.i431
  %i.ana = icmp eq i64 %i.ams, 4
  br i1 %i.ana, label %.thread9.i433, label %.thread9419

.thread9.i433:                                    ; preds = %bb.gn
  %i.anb = load i32, ptr %i.amu, align 4, !tbaa !211, !noalias !1771
  store i32 %i.anb, ptr %i.amy, align 4, !tbaa !211, !noalias !1771
  br label %.thread9419

bb.go:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit417
  %i.anc = getelementptr inbounds i8, ptr null, i64 %i.ams ; 2 uses
  store i64 0, ptr %32, align 8
  store ptr %i.anc, ptr %i.at, align 8, !tbaa !321, !alias.scope !1771
  store ptr %i.anc, ptr %i.as, align 8, !tbaa !322, !alias.scope !1771
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit443

.thread9419:                                      ; preds = %bb.gn, %bb.gm, %.thread9.i433
  store ptr %i.amz, ptr %i.as, align 8, !tbaa !322, !alias.scope !1771
  call void @_ZdlPvm(ptr noundef nonnull %i.amu, i64 noundef %i.ams) #39, !noalias !1771
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit443

bb.gp:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i428
  %lpad.loopexit1431 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.amu, i64 noundef %i.ams) #39, !noalias !1771
  br label %.body441

_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit443: ; preds = %bb.go, %.thread9419
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull @.str.310, ptr noundef nonnull align 8 dereferenceable(40) %30)
          to label %bb.gq unwind label %bb.hb

bb.gq:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit443
  %i.and = load ptr, ptr %32, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i444 = icmp eq ptr %i.and, null
  br i1 %.not.i.i.i.i.i444, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit445, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ane = load ptr, ptr %i.at, align 8, !tbaa !321
  %i.anf = ptrtoint ptr %i.ane to i64
  %i.ang = ptrtoint ptr %i.and to i64
  %i.anh = sub i64 %i.anf, %i.ang
  call void @_ZdlPvm(ptr noundef nonnull %i.and, i64 noundef %i.anh) #39
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit445

_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit445: ; preds = %bb.gq, %bb.gr
  %.not.i.i.i.i446 = icmp eq ptr %.sroa.01199.0, null
  br i1 %.not.i.i.i.i446, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit447, label %bb.gs

bb.gs:                                            ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit445
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01199.0, i64 noundef %i.ams) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit447

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit447: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit445, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.ani = load i8, ptr %31, align 8, !tbaa !220, !range !189, !noundef !190
  %i.anj = trunc nuw i8 %i.ani to i1
  br i1 %i.anj, label %bb.hn, label %bb.he

bb.gt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit368, %.body920
  %.pn156.pn.pn = phi { ptr, i32 } [ %.pn156.pn, %_ZN7testing7MessageD2Ev.exit368 ], [ %eh.lpad-body921, %.body920 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  br label %bb.gu

bb.gu:                                            ; preds = %.loopexit1394, %.loopexit.split-lp1395, %bb.gt, %bb.ey
  %.pn156.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn, %bb.gt ], [ %.pn152.pn.pn, %bb.ey ], [ %lpad.loopexit1396, %.loopexit1394 ], [ %lpad.loopexit.split-lp1397, %.loopexit.split-lp1395 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  br label %bb.gv

bb.gv:                                            ; preds = %.loopexit1389, %.loopexit.split-lp1390, %bb.gu, %bb.ee
  %.sroa.01230.0 = phi ptr [ %.sroa.01230.3, %bb.ee ], [ %.sroa.01230.5, %bb.gu ], [ %.sroa.01230.41288, %.loopexit1389 ], [ %.sroa.01230.41288, %.loopexit.split-lp1390 ]
  %.sroa.25.0 = phi ptr [ %.sroa.25.3, %bb.ee ], [ %.sroa.25.5, %bb.gu ], [ %.sroa.25.41290, %.loopexit1389 ], [ %.sroa.25.41290, %.loopexit.split-lp1390 ]
  %.pn156.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aah, %bb.ee ], [ %.pn156.pn.pn.pn, %bb.gu ], [ %lpad.loopexit1391, %.loopexit1389 ], [ %lpad.loopexit.split-lp1392, %.loopexit.split-lp1390 ]
  %i.ank = load i64, ptr %21, align 8, !tbaa !197
  %i.anl = trunc i64 %i.ank to i1
  br i1 %i.anl, label %bb.gw, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit448

bb.gw:                                            ; preds = %bb.gv
  %i.anm = load ptr, ptr %i.ah, align 8, !tbaa !198
  %i.ann = load i64, ptr %i.ag, align 8, !tbaa !198
  %i.ano = shl i64 %i.ann, 2
  call void @_ZdlPvm(ptr noundef %i.anm, i64 noundef %i.ano) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit448

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit448: ; preds = %bb.gv, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.gx

bb.gx:                                            ; preds = %.loopexit1354, %.loopexit.split-lp1355, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit448
  %.sroa.01230.1 = phi ptr [ %.sroa.01230.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit448 ], [ %.sroa.01230.2, %.loopexit1354 ], [ %.sroa.01230.2, %.loopexit.split-lp1355 ] ; 3 uses
  %.sroa.25.1 = phi ptr [ %.sroa.25.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit448 ], [ %.sroa.25.2, %.loopexit1354 ], [ %.sroa.25.2, %.loopexit.split-lp1355 ]
  %.pn156.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit448 ], [ %lpad.loopexit1356, %.loopexit1354 ], [ %lpad.loopexit.split-lp1357, %.loopexit.split-lp1355 ] ; 2 uses
  %.not.i.i.i449 = icmp eq ptr %.sroa.01230.1, null
  br i1 %.not.i.i.i449, label %_ZNSt6vectorIiSaIiEED2Ev.exit340, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.anp = ptrtoint ptr %.sroa.25.1 to i64
  %i.anq = ptrtoint ptr %.sroa.01230.1 to i64
  %i.anr = sub i64 %i.anp, %i.anq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01230.1, i64 noundef %i.anr) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

.loopexit1348:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i385
  %lpad.loopexit1350 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

.loopexit.split-lp1349:                           ; preds = %bb.fp
  %lpad.loopexit.split-lp1351 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.gz:                                            ; preds = %bb.fu
  %i.ans = landingpad { ptr, i32 }
          cleanup
  br label %.body405

bb.ha:                                            ; preds = %bb.fv
  %i.ant = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit571

.loopexit1414:                                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i933
  %lpad.loopexit1416 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

.loopexit.split-lp1415:                           ; preds = %.noexc.i946, %.noexc44.i945
  %lpad.loopexit.split-lp1417 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

.loopexit1419:                                    ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i412
  %lpad.loopexit1421 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit455

.loopexit.split-lp1420:                           ; preds = %.noexc.i.i.i.i414
  %lpad.loopexit.split-lp1422 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit455

.loopexit1424:                                    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i419
  %lpad.loopexit1426 = landingpad { ptr, i32 }
          cleanup
  br label %.body441

.loopexit.split-lp1425:                           ; preds = %.noexc.i.i.i.i438
  %lpad.loopexit.split-lp1427 = landingpad { ptr, i32 }
          cleanup
  br label %.body441

bb.hb:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit443
  %i.anu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anv = load ptr, ptr %32, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i452 = icmp eq ptr %i.anv, null
  br i1 %.not.i.i.i.i.i452, label %.body441, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.anw = load ptr, ptr %i.at, align 8, !tbaa !321
  %i.anx = ptrtoint ptr %i.anw to i64
  %i.any = ptrtoint ptr %i.anv to i64
  %i.anz = sub i64 %i.anx, %i.any
  call void @_ZdlPvm(ptr noundef nonnull %i.anv, i64 noundef %i.anz) #39
  br label %.body441

.body441:                                         ; preds = %.loopexit1424, %.loopexit.split-lp1425, %bb.hc, %bb.hb, %bb.gp
  %.pn164 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1427, %.loopexit.split-lp1425 ], [ %i.anu, %bb.hc ], [ %lpad.loopexit1431, %bb.gp ], [ %i.anu, %bb.hb ], [ %lpad.loopexit1426, %.loopexit1424 ] ; 2 uses
  %.not.i.i.i.i454 = icmp eq ptr %.sroa.01199.0, null
  br i1 %.not.i.i.i.i454, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit455, label %bb.hd

bb.hd:                                            ; preds = %.body441
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01199.0, i64 noundef %i.ams) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit455

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit455: ; preds = %.loopexit1419, %.loopexit.split-lp1420, %bb.hd, %.body441
  %.pn164.pn = phi { ptr, i32 } [ %.pn164, %bb.hd ], [ %.pn164, %.body441 ], [ %lpad.loopexit1421, %.loopexit1419 ], [ %lpad.loopexit.split-lp1422, %.loopexit.split-lp1420 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %bb.hu

bb.he:                                            ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit447
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.hf unwind label %bb.hj

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  %i.aoa = load ptr, ptr %i.au, align 8, !tbaa !221 ; 2 uses
  %.not.i.i456 = icmp eq ptr %i.aoa, null
  br i1 %.not.i.i456, label %_ZNK7testing15AssertionResult15failure_messageEv.exit457, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit457

end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  %i.aro = shl nuw nsw i64 %i.arn, 2
  %i.arp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aro) #41
          to label %.noexc507 unwind label %.loopexit1343 ; 5 uses

.noexc507:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i500
  %i.arq = getelementptr inbounds i8, ptr %i.arp, i64 %i.arh ; 2 uses
  store i32 %i.ard, ptr %i.arq, align 4, !tbaa !211
  %i.arr = icmp sgt i64 %i.arh, 0
  br i1 %i.arr, label %bb.im, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i503

bb.im:                                            ; preds = %.noexc507
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.arp, ptr align 4 %i.ara, i64 %i.arh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i503

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i503: ; preds = %bb.im, %.noexc507
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arq, i64 4 ; 2 uses
  %.not.i17.i.i.i.i504 = icmp eq ptr %i.ara, null
  br i1 %.not.i17.i.i.i.i504, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i505, label %bb.in

bb.in:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i503
  %i.art = load ptr, ptr %i.az, align 8, !tbaa !321
  %i.aru = ptrtoint ptr %i.art to i64
  %i.arv = sub i64 %i.aru, %i.arg
  call void @_ZdlPvm(ptr noundef nonnull %i.ara, i64 noundef %i.arv) #39
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i505

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i505: ; preds = %bb.in, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i503
  store ptr %i.arp, ptr %38, align 8, !tbaa !320
  store ptr %i.ars, ptr %i.ay, align 8, !tbaa !322
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arp, i64 %i.arn ; 2 uses
  store ptr %i.arw, ptr %i.az, align 8, !tbaa !321
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i498

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i498:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i505, %bb.ij
  %i.arx = phi ptr [ %i.ara, %bb.ij ], [ %i.arp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i505 ]
  %i.ary = phi ptr [ %i.arb, %bb.ij ], [ %i.arw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i505 ]
  %i.arz = phi ptr [ %i.are, %bb.ij ], [ %i.ars, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i505 ]
  %i.asa = add nuw nsw i64 %.06.i496, 1           ; 2 uses
  %exitcond.not.i499 = icmp eq i64 %i.asa, %.05589
  br i1 %exitcond.not.i499, label %.lr.ph.i510, label %.lr.ph.i493, !llvm.loop !1608

.lr.ph.i510:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i498
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  store i64 0, ptr %39, align 8, !tbaa !210
  br label %bb.io

bb.io:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i516, %.lr.ph.i510
  %.05.i511 = phi i64 [ 0, %.lr.ph.i510 ], [ %i.asj, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i516 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.asb = trunc i64 %.05.i511 to i32             ; 2 uses
  store i32 %i.asb, ptr %i.e, align 4, !tbaa !211
  %i.asc = load i64, ptr %39, align 8, !tbaa !197, !noalias !1774 ; 3 uses
  %i.asd = trunc i64 %i.asc to i1                 ; 2 uses
  %i.ase = load i64, ptr %i.ba, align 8, !noalias !1774
  %.sink.i.i.i.i.i512 = select i1 %i.asd, i64 %i.ase, i64 8
  %.sink1.i.i.i.i.i513 = lshr i64 %i.asc, 1       ; 2 uses
  %.not.i.i.i.i514 = icmp eq i64 %.sink1.i.i.i.i.i513, %.sink.i.i.i.i.i512
  br i1 %.not.i.i.i.i514, label %bb.iq, label %bb.ip, !prof !212

bb.ip:                                            ; preds = %bb.io
  %i.asf = load ptr, ptr %i.bb, align 8, !noalias !1774
  %.sink2.i.i.i.i.i515 = select i1 %i.asd, ptr %i.asf, ptr %i.bb
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i.i.i515, i64 %.sink1.i.i.i.i.i513
  store i32 %i.asb, ptr %i.asg, align 4, !tbaa !211
  %i.ash = add i64 %i.asc, 2
  store i64 %i.ash, ptr %39, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i516

bb.iq:                                            ; preds = %bb.io
  %i.asi = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE15EmplaceBackSlowIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i516 unwind label %bb.jk ; 0 uses

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i516: ; preds = %bb.iq, %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %i.asj = add nuw nsw i64 %.05.i511, 1           ; 2 uses
  %exitcond.not.i517 = icmp eq i64 %i.asj, %.05589
  br i1 %exitcond.not.i517, label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit519, label %bb.io, !llvm.loop !4

_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit519: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i516, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit508.thread
  %i.ask = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i521 unwind label %bb.ir ; 9 uses

.noexc.i521:                                      ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit519
  store ptr null, ptr %i.ask, align 8, !tbaa !325
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 8
  store i32 9999, ptr %i.asl, align 8, !tbaa !211
  %i.asm = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i521.1 unwind label %.lr.ph.i.i.i.preheader ; 4 uses

.noexc.i521.1:                                    ; preds = %.noexc.i521
  store ptr null, ptr %i.asm, align 8, !tbaa !325
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  store i32 8888, ptr %i.asn, align 8, !tbaa !211
  store ptr %i.asm, ptr %i.ask, align 8, !tbaa !325
  %i.aso = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i521.2 unwind label %.lr.ph.i.i.i.preheader ; 3 uses

.noexc.i521.2:                                    ; preds = %.noexc.i521.1
  store ptr null, ptr %i.aso, align 8, !tbaa !325
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  store i32 7777, ptr %i.asp, align 8, !tbaa !211
  store ptr %i.aso, ptr %i.asm, align 8, !tbaa !325
  %i.asq = load ptr, ptr %38, align 8, !tbaa !234
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.asq, i64 %.0605588
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertISt24_Fwd_list_const_iteratorIiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr %i.asr, ptr nonnull %i.ask, ptr null)
          to label %.lr.ph.i.i527.preheader unwind label %bb.jl

bb.ir:                                            ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit519
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit696

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc.i521.1, %.noexc.i521
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.ass, %.lr.ph.i.i.i ], [ %i.ask, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ass = load ptr, ptr %.013.i.i.i, align 8, !tbaa !325 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 16) #39
  %.not.i.i.i520 = icmp eq ptr %i.ass, null
  br i1 %.not.i.i.i520, label %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit696, label %.lr.ph.i.i.i, !llvm.loop !28

.lr.ph.i.i527.preheader:                          ; preds = %.noexc.i521.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #36
  %i.ast = load i64, ptr %39, align 8, !tbaa !197
  %i.asu = trunc i64 %i.ast to i1
  %i.asv = load ptr, ptr %i.bb, align 8
  %i.asw = select i1 %i.asu, ptr %i.asv, ptr %i.bb
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.asw, i64 %.0605588
  br label %.lr.ph.i.i527

.lr.ph.i.i527:                                    ; preds = %.lr.ph.i.i527.preheader, %.lr.ph.i.i527
  %.06.i.i = phi i64 [ %i.asz, %.lr.ph.i.i527 ], [ 0, %.lr.ph.i.i527.preheader ]
  %.sroa.02.05.i.i = phi ptr [ %i.asy, %.lr.ph.i.i527 ], [ %i.ask, %.lr.ph.i.i527.preheader ]
  %i.asy = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !325 ; 2 uses
  %i.asz = add nuw nsw i64 %.06.i.i, 1            ; 2 uses
  %.not.i.i528 = icmp eq ptr %i.asy, null
  br i1 %.not.i.i528, label %_ZSt10__distanceISt24_Fwd_list_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i, label %.lr.ph.i.i527, !llvm.loop !29

_ZSt10__distanceISt24_Fwd_list_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i: ; preds = %.lr.ph.i.i527
  %i.ata = invoke noundef ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE6InsertINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEPiPKiT_m(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef %i.asx, ptr nonnull %i.ask, i64 noundef %i.asz)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE6insertISt24_Fwd_list_const_iteratorIiETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPiPKiS8_S8_.exit unwind label %bb.jm

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE6insertISt24_Fwd_list_const_iteratorIiETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPiPKiS8_S8_.exit: ; preds = %_ZSt10__distanceISt24_Fwd_list_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i
  store ptr %i.ata, ptr %i.p, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #36
  %i.atb = load ptr, ptr %38, align 8, !tbaa !234, !noalias !1775 ; 4 uses
  %i.atc = load ptr, ptr %i.ay, align 8, !tbaa !234, !noalias !1775 ; 2 uses
  %i.atd = ptrtoint ptr %i.atc to i64
  %i.ate = ptrtoint ptr %i.atb to i64
  %i.atf = sub i64 %i.atd, %i.ate                 ; 7 uses
  %i.atg = icmp ugt i64 %i.atf, 9223372036854775804
  br i1 %i.atg, label %.noexc.i.i.i.i535, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i531

.noexc.i.i.i.i535:                                ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE6insertISt24_Fwd_list_const_iteratorIiETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPiPKiS8_S8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc536 unwind label %.loopexit.split-lp1435

.noexc536:                                        ; preds = %.noexc.i.i.i.i535
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i531: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE6insertISt24_Fwd_list_const_iteratorIiETnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEEPiPKiS8_S8_.exit
  %.not.i.i.i.i.i.i532 = icmp eq ptr %i.atc, %i.atb
  br i1 %.not.i.i.i.i.i.i532, label %.thread.i.i.i.i.i534, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i533

.thread.i.i.i.i.i534:                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i531
  %i.ath = getelementptr inbounds nuw i8, ptr null, i64 %i.atf
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit538

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i533: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i531
  %i.ati = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atf) #41
          to label %.noexc537 unwind label %.loopexit1434 ; 6 uses

.noexc537:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i533
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 %i.atf ; 3 uses
  %i.atk = icmp samesign ugt i64 %i.atf, 4
  br i1 %i.atk, label %bb.is, label %bb.it, !prof !318

bb.is:                                            ; preds = %.noexc537
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ati, ptr align 4 %i.atb, i64 %i.atf, i1 false), !noalias !1776
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit538

bb.it:                                            ; preds = %.noexc537
  %i.atl = icmp eq i64 %i.atf, 4
  br i1 %i.atl, label %bb.iu, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit538

bb.iu:                                            ; preds = %bb.it
  %i.atm = load i32, ptr %i.atb, align 4, !tbaa !211, !noalias !1776
  store i32 %i.atm, ptr %i.ati, align 4, !tbaa !211, !noalias !1776
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit538

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit538: ; preds = %bb.iu, %bb.it, %bb.is, %.thread.i.i.i.i.i534
  %.sroa.01184.0 = phi ptr [ null, %.thread.i.i.i.i.i534 ], [ %i.ati, %bb.is ], [ %i.ati, %bb.iu ], [ %i.ati, %bb.it ] ; 8 uses
  %.sroa.91188.0 = phi ptr [ %i.ath, %.thread.i.i.i.i.i534 ], [ %i.atj, %bb.is ], [ %i.atj, %bb.iu ], [ %i.atj, %bb.it ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %i.atn = ptrtoint ptr %.sroa.91188.0 to i64
  %i.ato = ptrtoint ptr %.sroa.01184.0 to i64
  %i.atp = sub i64 %i.atn, %i.ato                 ; 15 uses
  %.not.i.i.i.i.i.i539 = icmp eq ptr %.sroa.91188.0, %.sroa.01184.0
  br i1 %.not.i.i.i.i.i.i539, label %bb.ja, label %bb.iv

bb.iv:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit538
  %i.atq = icmp ugt i64 %i.atp, 9223372036854775804
  br i1 %i.atq, label %.noexc.i.i.i.i559, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i540, !prof !212

.noexc.i.i.i.i559:                                ; preds = %bb.iv
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc560 unwind label %.loopexit.split-lp1440

.noexc560:                                        ; preds = %.noexc.i.i.i.i559
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i540: ; preds = %bb.iv
  %i.atr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atp) #41
          to label %.noexc561 unwind label %.loopexit1439 ; 6 uses

.noexc561:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i540
  %i.ats = icmp samesign ugt i64 %i.atp, 4
  br i1 %i.ats, label %bb.iw, label %bb.ix, !prof !318

bb.iw:                                            ; preds = %.noexc561
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.atr, ptr align 4 %.sroa.01184.0, i64 %i.atp, i1 false), !noalias !1777
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i549

bb.ix:                                            ; preds = %.noexc561
  %i.att = icmp eq i64 %i.atp, 4
  br i1 %i.att, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i558, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i549

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i558: ; preds = %bb.ix
  %i.atu = load i32, ptr %.sroa.01184.0, align 4, !tbaa !211, !noalias !1777
  store i32 %i.atu, ptr %i.atr, align 4, !tbaa !211, !noalias !1777
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i549

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i549: ; preds = %bb.iw, %bb.ix, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false), !alias.scope !1777
  %i.atv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atp) #41
          to label %.noexc1.i552 unwind label %bb.jb, !noalias !1777 ; 4 uses

.noexc1.i552:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i549
  store ptr %i.atv, ptr %41, align 8, !tbaa !320, !alias.scope !1777
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 %i.atp ; 2 uses
  store ptr %i.atw, ptr %i.bd, align 8, !tbaa !321, !alias.scope !1777
  %69 = icmp samesign ugt i64 %i.atp, 4
  br i1 %69, label %bb.iy, label %bb.iz, !prof !318

bb.iy:                                            ; preds = %.noexc1.i552
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.atv, ptr nonnull align 4 %i.atr, i64 %i.atp, i1 false), !noalias !1777
  br label %.thread9432

bb.iz:                                            ; preds = %.noexc1.i552
  %i.atx = icmp eq i64 %i.atp, 4
  br i1 %i.atx, label %.thread9.i554, label %.thread9432

.thread9.i554:                                    ; preds = %bb.iz
  %i.aty = load i32, ptr %i.atr, align 4, !tbaa !211, !noalias !1777
  store i32 %i.aty, ptr %i.atv, align 4, !tbaa !211, !noalias !1777
  br label %.thread9432

bb.ja:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit538
  %i.atz = getelementptr inbounds i8, ptr null, i64 %i.atp ; 2 uses
  store i64 0, ptr %41, align 8
  store ptr %i.atz, ptr %i.bd, align 8, !tbaa !321, !alias.scope !1777
  store ptr %i.atz, ptr %i.bc, align 8, !tbaa !322, !alias.scope !1777
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit564

.thread9432:                                      ; preds = %bb.iz, %bb.iy, %.thread9.i554
  store ptr %i.atw, ptr %i.bc, align 8, !tbaa !322, !alias.scope !1777
  call void @_ZdlPvm(ptr noundef nonnull %i.atr, i64 noundef %i.atp) #39, !noalias !1777
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit564

bb.jb:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i549
  %lpad.loopexit1446 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.atr, i64 noundef %i.atp) #39, !noalias !1777
  br label %.body562

_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit564: ; preds = %bb.ja, %.thread9432
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull @.str.310, ptr noundef nonnull align 8 dereferenceable(40) %39)
          to label %bb.jc unwind label %bb.jn

bb.jc:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit564
  %i.aua = load ptr, ptr %41, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i565 = icmp eq ptr %i.aua, null
  br i1 %.not.i.i.i.i.i565, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit566, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aub = load ptr, ptr %i.bd, align 8, !tbaa !321
  %i.auc = ptrtoint ptr %i.aub to i64
  %i.aud = ptrtoint ptr %i.aua to i64
  %i.aue = sub i64 %i.auc, %i.aud
  call void @_ZdlPvm(ptr noundef nonnull %i.aua, i64 noundef %i.aue) #39
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit566

_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit566: ; preds = %bb.jc, %bb.jd
  %.not.i.i.i.i567 = icmp eq ptr %.sroa.01184.0, null
  br i1 %.not.i.i.i.i567, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit568, label %bb.je

bb.je:                                            ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit566
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01184.0, i64 noundef %i.atp) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit568

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit568: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit566, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #36
  %i.auf = load i8, ptr %40, align 8, !tbaa !220, !range !189, !noundef !190
  %i.aug = trunc nuw i8 %i.auf to i1
  br i1 %i.aug, label %bb.jz, label %bb.jq

bb.jf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit479, %.body964
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %_ZN7testing7MessageD2Ev.exit479 ], [ %eh.lpad-body965, %.body964 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  br label %bb.jg

bb.jg:                                            ; preds = %.loopexit1414, %.loopexit.split-lp1415, %bb.jf, %bb.hu
  %.pn171.pn.pn.pn = phi { ptr, i32 } [ %.pn171.pn.pn, %bb.jf ], [ %.pn167.pn.pn, %bb.hu ], [ %lpad.loopexit1416, %.loopexit1414 ], [ %lpad.loopexit.split-lp1417, %.loopexit.split-lp1415 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit571

_ZNSt6vectorIiSaIiEED2Ev.exit571:                 ; preds = %bb.jg, %bb.ha
  %.pn171.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn171.pn.pn.pn, %bb.jg ], [ %i.ant, %bb.ha ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aev, i64 noundef 12) #39
  br label %.body405

.body405:                                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit571, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i, %bb.gz
  %.pn171.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ans, %bb.gz ], [ %.pn171.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit571 ], [ %i.aew, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ]
  %i.auh = load i64, ptr %30, align 8, !tbaa !197
  %i.aui = trunc i64 %i.auh to i1
  br i1 %i.aui, label %bb.jh, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit572

bb.jh:                                            ; preds = %.body405
  %i.auj = load ptr, ptr %i.ar, align 8, !tbaa !198
  %i.auk = load i64, ptr %i.aq, align 8, !tbaa !198
  %i.aul = shl i64 %i.auk, 2
  call void @_ZdlPvm(ptr noundef %i.auj, i64 noundef %i.aul) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit572

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit572: ; preds = %.body405, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.ji

bb.ji:                                            ; preds = %.loopexit1348, %.loopexit.split-lp1349, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit572
  %.pn171.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn171.pn.pn.pn.pn.pn.pn, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit572 ], [ %lpad.loopexit1350, %.loopexit1348 ], [ %lpad.loopexit.split-lp1351, %.loopexit.split-lp1349 ]
  %i.aum = load ptr, ptr %29, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i573 = icmp eq ptr %i.aum, null
  br i1 %.not.i.i.i573, label %_ZNSt6vectorIiSaIiEED2Ev.exit575, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aun = load ptr, ptr %i.ap, align 8, !tbaa !321
  %i.auo = ptrtoint ptr %i.aun to i64
  %i.aup = ptrtoint ptr %i.aum to i64
  %i.auq = sub i64 %i.auo, %i.aup
  call void @_ZdlPvm(ptr noundef nonnull %i.aum, i64 noundef %i.auq) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit575

_ZNSt6vectorIiSaIiEED2Ev.exit575:                 ; preds = %bb.ji, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

.loopexit1343:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i500
  %lpad.loopexit1345 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

.loopexit.split-lp1344:                           ; preds = %bb.il
  %lpad.loopexit.split-lp1346 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

bb.jk:                                            ; preds = %bb.iq
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit696

bb.jl:                                            ; preds = %.noexc.i521.2
  %i.aus = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i693.preheader

bb.jm:                                            ; preds = %_ZSt10__distanceISt24_Fwd_list_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i
  %i.aut = landingpad { ptr, i32 }
          cleanup
  br label %bb.nd

.loopexit1434:                                    ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i533
  %lpad.loopexit1436 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit579

.loopexit.split-lp1435:                           ; preds = %.noexc.i.i.i.i535
  %lpad.loopexit.split-lp1437 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit579

.loopexit1439:                                    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i540
  %lpad.loopexit1441 = landingpad { ptr, i32 }
          cleanup
  br label %.body562

.loopexit.split-lp1440:                           ; preds = %.noexc.i.i.i.i559
  %lpad.loopexit.split-lp1442 = landingpad { ptr, i32 }
          cleanup
  br label %.body562

bb.jn:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit564
  %i.auu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.auv = load ptr, ptr %41, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i576 = icmp eq ptr %i.auv, null
  br i1 %.not.i.i.i.i.i576, label %.body562, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.auw = load ptr, ptr %i.bd, align 8, !tbaa !321
  %i.aux = ptrtoint ptr %i.auw to i64
  %i.auy = ptrtoint ptr %i.auv to i64
  %i.auz = sub i64 %i.aux, %i.auy
  call void @_ZdlPvm(ptr noundef nonnull %i.auv, i64 noundef %i.auz) #39
  br label %.body562

.body562:                                         ; preds = %.loopexit1439, %.loopexit.split-lp1440, %bb.jo, %bb.jn, %bb.jb
  %.pn180 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1442, %.loopexit.split-lp1440 ], [ %i.auu, %bb.jo ], [ %lpad.loopexit1446, %bb.jb ], [ %i.auu, %bb.jn ], [ %lpad.loopexit1441, %.loopexit1439 ] ; 2 uses
  %.not.i.i.i.i578 = icmp eq ptr %.sroa.01184.0, null
  br i1 %.not.i.i.i.i578, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit579, label %bb.jp

bb.jp:                                            ; preds = %.body562
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01184.0, i64 noundef %i.atp) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit579

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit579: ; preds = %.loopexit1434, %.loopexit.split-lp1435, %bb.jp, %.body562
  %.pn180.pn = phi { ptr, i32 } [ %.pn180, %bb.jp ], [ %.pn180, %.body562 ], [ %lpad.loopexit1436, %.loopexit1434 ], [ %lpad.loopexit.split-lp1437, %.loopexit.split-lp1435 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #36
  br label %bb.kg

bb.jq:                                            ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit568
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.jr unwind label %bb.jv

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #36
  %i.ava = load ptr, ptr %i.be, align 8, !tbaa !221 ; 2 uses
  %.not.i.i580 = icmp eq ptr %i.ava, null
  br i1 %.not.i.i580, label %_ZNK7testing15AssertionResult15failure_messageEv.exit581, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !195
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
.lr.ph.i.i57.preheader.i1005.new:                 ; preds = %.lr.ph.i.i57.preheader.i1005
  %unroll_iter16203 = and i64 %i.bhc, -8
  br label %.lr.ph.i.i57.i1006

.lr.ph.i.i57.i1006:                               ; preds = %.lr.ph.i.i57.i1006, %.lr.ph.i.i57.preheader.i1005.new
  %.012.i.i59.i1007 = phi i64 [ 0, %.lr.ph.i.i57.preheader.i1005.new ], [ %i.bhx, %.lr.ph.i.i57.i1006 ] ; 9 uses
  %niter16204 = phi i64 [ 0, %.lr.ph.i.i57.preheader.i1005.new ], [ %niter16204.next.7, %.lr.ph.i.i57.i1006 ]
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007
  store i32 %load_initial13975, ptr %i.bhi, align 4, !tbaa !211
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 4
  store i32 %load_initial13975, ptr %i.bhk, align 4, !tbaa !211
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  store i32 %load_initial13975, ptr %i.bhm, align 4, !tbaa !211
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 12
  store i32 %load_initial13975, ptr %i.bho, align 4, !tbaa !211
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 16
  store i32 %load_initial13975, ptr %i.bhq, align 4, !tbaa !211
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 20
  store i32 %load_initial13975, ptr %i.bhs, align 4, !tbaa !211
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 24
  store i32 %load_initial13975, ptr %i.bhu, align 4, !tbaa !211
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 28
  store i32 %load_initial13975, ptr %i.bhw, align 4, !tbaa !211
  %i.bhx = add nuw i64 %.012.i.i59.i1007, 8       ; 2 uses
  %niter16204.next.7 = add i64 %niter16204, 8     ; 2 uses
  %niter16204.ncmp.7 = icmp eq i64 %niter16204.next.7, %unroll_iter16203
  br i1 %niter16204.ncmp.7, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa, label %.lr.ph.i.i57.i1006, !llvm.loop !1619

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i57.i1006
  %lcmp.mod16201.not = icmp eq i64 %xtraiter16199, 0
  br i1 %lcmp.mod16201.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009, label %.lr.ph.i.i57.i1006.epil.preheader

.lr.ph.i.i57.i1006.epil.preheader:                ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa, %.lr.ph.i.i57.preheader.i1005
  %.012.i.i59.i1007.epil.init = phi i64 [ 0, %.lr.ph.i.i57.preheader.i1005 ], [ %i.bhx, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa ]
  %lcmp.mod16202 = icmp ne i64 %xtraiter16199, 0
  call void @llvm.assume(i1 %lcmp.mod16202)
  br label %.lr.ph.i.i57.i1006.epil

.lr.ph.i.i57.i1006.epil:                          ; preds = %.lr.ph.i.i57.i1006.epil, %.lr.ph.i.i57.i1006.epil.preheader
  %.012.i.i59.i1007.epil = phi i64 [ %i.bhz, %.lr.ph.i.i57.i1006.epil ], [ %.012.i.i59.i1007.epil.init, %.lr.ph.i.i57.i1006.epil.preheader ] ; 2 uses
  %epil.iter16200 = phi i64 [ %epil.iter16200.next, %.lr.ph.i.i57.i1006.epil ], [ 0, %.lr.ph.i.i57.i1006.epil.preheader ]
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.012.i.i59.i1007.epil
  store i32 %load_initial13975, ptr %i.bhy, align 4, !tbaa !211
  %i.bhz = add nuw i64 %.012.i.i59.i1007.epil, 1
  %epil.iter16200.next = add i64 %epil.iter16200, 1 ; 2 uses
  %epil.iter16200.cmp.not = icmp eq i64 %epil.iter16200.next, %xtraiter16199
  br i1 %epil.iter16200.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009, label %.lr.ph.i.i57.i1006.epil, !llvm.loop !1715

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa, %.lr.ph.i.i57.i1006.epil, %bb.mj
  %i.bia = icmp sgt i64 %i.bhd, 1
  br i1 %i.bia, label %bb.mk, label %bb.ml, !prof !224

bb.mk:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009
  %.idx1325 = shl nuw nsw i64 %i.bhd, 2
  %i.bib = sub nsw i64 0, %i.bhd
  %i.bic = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bib
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bic, ptr align 4 %i.bem, i64 %.idx1325, i1 false)
  br label %bb.mn

bb.ml:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009
  %i.bid = icmp eq i64 %i.bhd, 1
  br i1 %i.bid, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.bie = getelementptr inbounds i8, ptr %i.bhb, i64 -4
  %i.bif = load i32, ptr %i.bem, align 4, !tbaa !211
  store i32 %i.bif, ptr %i.bie, align 4, !tbaa !211
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %bb.ml, %bb.mk
  br i1 %.not.i.i56.i1004, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013, label %.lr.ph.i64.i1010.preheader

.lr.ph.i64.i1010.preheader:                       ; preds = %bb.mn
  %i.big = shl nuw i64 %i.bhc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bem, ptr nonnull align 4 %i.c, i64 %i.big, i1 false), !tbaa !211
  %i.bih = call i64 @llvm.usub.sat.i64(i64 %indvars.iv9116, i64 %.sink1.i.i1002)
  %.neg9403 = mul i64 %i.bih, -4
  %scevgep9119 = getelementptr i8, ptr %scevgep9115, i64 %.neg9403
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013: ; preds = %.lr.ph.i64.i1010.preheader, %bb.mn
  %.sroa.0117.0.i1014 = phi ptr [ %i.c, %bb.mn ], [ %scevgep9119, %.lr.ph.i64.i1010.preheader ]
  %.not.i68.i1015 = icmp eq i64 %i.bhc, 1
  br i1 %.not.i68.i1015, label %.loopexit.i1019, label %.lr.ph.i69.i1016.preheader

.lr.ph.i69.i1016.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013
  %i.bii = sub i64 %.sroa.speculated.i1003, %.sink1.i.i1002
  %i.bij = shl i64 %i.bii, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bhe, ptr align 4 %.sroa.0117.0.i1014, i64 %i.bij, i1 false), !tbaa !211
  br label %.loopexit.i1019

.loopexit.i1019:                                  ; preds = %.lr.ph.i69.i1016.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013
  %i.bik = load i64, ptr %47, align 8, !tbaa !197
  %i.bil = add i64 %i.bik, 2
  br label %.noexc652

.noexc652:                                        ; preds = %.loopexit.i1019, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1037
  %storemerge.i1020 = phi i64 [ %i.bil, %.loopexit.i1019 ], [ %i.bha, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1037 ]
  store i64 %storemerge.i1020, ptr %47, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.bim = load ptr, ptr %50, align 8, !tbaa !1795 ; 2 uses
  %.not.i.i.i650 = icmp eq ptr %i.bim, null
  br i1 %.not.i.i.i650, label %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i, label %bb.mo

bb.mo:                                            ; preds = %.noexc652
  %i.bin = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.bim, ptr noundef nonnull align 4 dereferenceable(4) %i.cf)
          to label %.noexc653 unwind label %.loopexit1333 ; 2 uses

.noexc653:                                        ; preds = %bb.mo
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !169
  %i.bip = getelementptr i8, ptr %i.bio, i64 -24
  %i.biq = load i64, ptr %i.bip, align 8
  %i.bir = getelementptr inbounds i8, ptr %i.bin, i64 %i.biq
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 32
  %i.bit = load i32, ptr %i.bis, align 8, !tbaa !178
  %i.biu = and i32 %i.bit, 5
  %.not1.i.i.i = icmp eq i32 %i.biu, 0
  br i1 %.not1.i.i.i, label %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i, label %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i.thread

_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i.thread: ; preds = %.noexc653
  store ptr null, ptr %50, align 8, !tbaa !1795
  store i8 0, ptr %i.ce, align 4, !tbaa !1796
  br label %._crit_edge.loopexit

_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i: ; preds = %.noexc653, %.noexc652
  %.pr = load i8, ptr %i.ce, align 4, !tbaa !1796
  %i.biv = icmp eq i8 %.pr, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.biv, label %._crit_edge.loopexit, label %_ZStneRKSt16istream_iteratorIicSt11char_traitsIcElES4_.exit.thread.i, !llvm.loop !1716

._crit_edge.loopexit:                             ; preds = %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i.thread
  %.pre9129 = load i64, ptr %47, align 8, !tbaa !197
  %.pre9130 = load ptr, ptr %i.bj, align 8
  %.pre9131 = trunc i64 %.pre9129 to i1
  %.pre9132 = select i1 %.pre9131, ptr %.pre9130, ptr %i.bj
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit.thread, %._crit_edge.loopexit, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit
  %i.biw = phi i64 [ %i.bea, %._crit_edge.loopexit ], [ %i.bea, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit ], [ %i.bdt, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit.thread ]
  %.pre-phi9133 = phi ptr [ %.pre9132, %._crit_edge.loopexit ], [ %i.bdy, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit ], [ %i.bdr, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit.thread ]
  %i.bix = getelementptr inbounds nuw i8, ptr %.pre-phi9133, i64 %i.biw
  store ptr %i.bix, ptr %i.s, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #36
  %i.biy = ptrtoint ptr %.sroa.141177.2 to i64
  %i.biz = ptrtoint ptr %.sroa.01169.5 to i64     ; 2 uses
  %i.bja = sub i64 %i.biy, %i.biz                 ; 7 uses
  %i.bjb = icmp ugt i64 %i.bja, 9223372036854775804
  br i1 %i.bjb, label %.noexc.i.i.i.i658, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i654

.noexc.i.i.i.i658:                                ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc659 unwind label %.loopexit.split-lp1463

.noexc659:                                        ; preds = %.noexc.i.i.i.i658
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i654: ; preds = %._crit_edge
  %.not.i.i.i.i.i.i655 = icmp eq ptr %.sroa.141177.2, %.sroa.01169.5
  br i1 %.not.i.i.i.i.i.i655, label %.thread.i.i.i.i.i657, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i656

.thread.i.i.i.i.i657:                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i654
  %i.bjc = getelementptr inbounds nuw i8, ptr null, i64 %i.bja
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit661

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i656: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i654
  %i.bjd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bja) #41
          to label %.noexc660 unwind label %.loopexit1462 ; 6 uses

.noexc660:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i656
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 %i.bja ; 3 uses
  %i.bjf = icmp samesign ugt i64 %i.bja, 4
  br i1 %i.bjf, label %bb.mp, label %bb.mq, !prof !318

bb.mp:                                            ; preds = %.noexc660
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bjd, ptr align 4 %.sroa.01169.5, i64 %i.bja, i1 false), !noalias !1798
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit661

bb.mq:                                            ; preds = %.noexc660
  %i.bjg = icmp eq i64 %i.bja, 4
  br i1 %i.bjg, label %bb.mr, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit661

bb.mr:                                            ; preds = %bb.mq
  %i.bjh = load i32, ptr %.sroa.01169.5, align 4, !tbaa !211, !noalias !1798
  store i32 %i.bjh, ptr %i.bjd, align 4, !tbaa !211, !noalias !1798
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit661

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit661: ; preds = %bb.mr, %bb.mq, %bb.mp, %.thread.i.i.i.i.i657
  %.sroa.01158.0 = phi ptr [ null, %.thread.i.i.i.i.i657 ], [ %i.bjd, %bb.mp ], [ %i.bjd, %bb.mr ], [ %i.bjd, %bb.mq ] ; 8 uses
  %.sroa.91162.0 = phi ptr [ %i.bjc, %.thread.i.i.i.i.i657 ], [ %i.bje, %bb.mp ], [ %i.bje, %bb.mr ], [ %i.bje, %bb.mq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  %i.bji = ptrtoint ptr %.sroa.91162.0 to i64
  %i.bjj = ptrtoint ptr %.sroa.01158.0 to i64
  %i.bjk = sub i64 %i.bji, %i.bjj                 ; 15 uses
  %.not.i.i.i.i.i.i662 = icmp eq ptr %.sroa.91162.0, %.sroa.01158.0
  br i1 %.not.i.i.i.i.i.i662, label %bb.mx, label %bb.ms

bb.ms:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit661
  %i.bjl = icmp ugt i64 %i.bjk, 9223372036854775804
  br i1 %i.bjl, label %.noexc.i.i.i.i682, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i663, !prof !212

.noexc.i.i.i.i682:                                ; preds = %bb.ms
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc683 unwind label %.loopexit.split-lp1468

.noexc683:                                        ; preds = %.noexc.i.i.i.i682
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i663: ; preds = %bb.ms
  %i.bjm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjk) #41
          to label %.noexc684 unwind label %.loopexit1467 ; 6 uses

.noexc684:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i663
  %i.bjn = icmp samesign ugt i64 %i.bjk, 4
  br i1 %i.bjn, label %bb.mt, label %bb.mu, !prof !318

bb.mt:                                            ; preds = %.noexc684
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bjm, ptr align 4 %.sroa.01158.0, i64 %i.bjk, i1 false), !noalias !1799
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i672

bb.mu:                                            ; preds = %.noexc684
  %i.bjo = icmp eq i64 %i.bjk, 4
  br i1 %i.bjo, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i681, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i672

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i681: ; preds = %bb.mu
  %i.bjp = load i32, ptr %.sroa.01158.0, align 4, !tbaa !211, !noalias !1799
  store i32 %i.bjp, ptr %i.bjm, align 4, !tbaa !211, !noalias !1799
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i672

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i672: ; preds = %bb.mt, %bb.mu, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i681
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false), !alias.scope !1799
  %i.bjq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjk) #41
          to label %.noexc1.i675 unwind label %bb.my, !noalias !1799 ; 4 uses

.noexc1.i675:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i672
  store ptr %i.bjq, ptr %52, align 8, !tbaa !320, !alias.scope !1799
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 %i.bjk ; 2 uses
  store ptr %i.bjr, ptr %i.ch, align 8, !tbaa !321, !alias.scope !1799
  %70 = icmp samesign ugt i64 %i.bjk, 4
  br i1 %70, label %bb.mv, label %bb.mw, !prof !318

bb.mv:                                            ; preds = %.noexc1.i675
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bjq, ptr nonnull align 4 %i.bjm, i64 %i.bjk, i1 false), !noalias !1799
  br label %.thread9439

bb.mw:                                            ; preds = %.noexc1.i675
  %i.bjs = icmp eq i64 %i.bjk, 4
  br i1 %i.bjs, label %.thread9.i677, label %.thread9439

.thread9.i677:                                    ; preds = %bb.mw
  %i.bjt = load i32, ptr %i.bjm, align 4, !tbaa !211, !noalias !1799
  store i32 %i.bjt, ptr %i.bjq, align 4, !tbaa !211, !noalias !1799
  br label %.thread9439

bb.mx:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit661
  %i.bju = getelementptr inbounds i8, ptr null, i64 %i.bjk ; 2 uses
  store i64 0, ptr %52, align 8
  store ptr %i.bju, ptr %i.ch, align 8, !tbaa !321, !alias.scope !1799
  store ptr %i.bju, ptr %i.cg, align 8, !tbaa !322, !alias.scope !1799
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit687

.thread9439:                                      ; preds = %bb.mw, %bb.mv, %.thread9.i677
  store ptr %i.bjr, ptr %i.cg, align 8, !tbaa !322, !alias.scope !1799
  call void @_ZdlPvm(ptr noundef nonnull %i.bjm, i64 noundef %i.bjk) #39, !noalias !1799
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit687

bb.my:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i672
  %lpad.loopexit1474 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bjm, i64 noundef %i.bjk) #39, !noalias !1799
  br label %.body685

_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit687: ; preds = %bb.mx, %.thread9439
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %51, ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull @.str.310, ptr noundef nonnull align 8 dereferenceable(40) %47)
          to label %bb.mz unwind label %bb.nj

bb.mz:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit687
  %i.bjv = load ptr, ptr %52, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i688 = icmp eq ptr %i.bjv, null
  br i1 %.not.i.i.i.i.i688, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit689, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.bjw = load ptr, ptr %i.ch, align 8, !tbaa !321
  %i.bjx = ptrtoint ptr %i.bjw to i64
  %i.bjy = ptrtoint ptr %i.bjv to i64
  %i.bjz = sub i64 %i.bjx, %i.bjy
  call void @_ZdlPvm(ptr noundef nonnull %i.bjv, i64 noundef %i.bjz) #39
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit689

_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit689: ; preds = %bb.mz, %bb.na
  %.not.i.i.i.i690 = icmp eq ptr %.sroa.01158.0, null
  br i1 %.not.i.i.i.i690, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit691, label %bb.nb

bb.nb:                                            ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit689
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01158.0, i64 noundef %i.bjk) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit691

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit691: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit689, %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #36
  %i.bka = load i8, ptr %51, align 8, !tbaa !220, !range !189, !noundef !190
  %i.bkb = trunc nuw i8 %i.bka to i1
  br i1 %i.bkb, label %bb.nv, label %bb.nm

bb.nc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit603, %.body981
  %.pn187.pn.pn = phi { ptr, i32 } [ %.pn187.pn, %_ZN7testing7MessageD2Ev.exit603 ], [ %eh.lpad-body982, %.body981 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #36
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.kg, %bb.jm
  %.pn187.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn, %bb.nc ], [ %.pn183.pn.pn, %bb.kg ], [ %i.aut, %bb.jm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #36
  br label %.lr.ph.i.i693.preheader

.lr.ph.i.i693.preheader:                          ; preds = %bb.jl, %bb.nd
  %.pn187.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn.pn, %bb.nd ], [ %i.aus, %bb.jl ]
  br label %.lr.ph.i.i693

.lr.ph.i.i693:                                    ; preds = %.lr.ph.i.i693.preheader, %.lr.ph.i.i693
  %.013.i.i694 = phi ptr [ %i.bkc, %.lr.ph.i.i693 ], [ %i.ask, %.lr.ph.i.i693.preheader ] ; 2 uses
  %i.bkc = load ptr, ptr %.013.i.i694, align 8, !tbaa !325 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i694, i64 noundef 16) #39
  %.not.i.i695 = icmp eq ptr %i.bkc, null
  br i1 %.not.i.i695, label %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit696, label %.lr.ph.i.i693, !llvm.loop !28

_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit696:        ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i693, %bb.ir, %bb.jk
  %.pn187.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aur, %bb.jk ], [ %.pn187.pn.pn.pn.pn, %.lr.ph.i.i693 ], [ %lpad.thr_comm.split-lp, %bb.ir ], [ %lpad.thr_comm, %.lr.ph.i.i.i ]
  %i.bkd = load i64, ptr %39, align 8, !tbaa !197
  %i.bke = trunc i64 %i.bkd to i1
  br i1 %i.bke, label %bb.ne, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit697

bb.ne:                                            ; preds = %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit696
  %i.bkf = load ptr, ptr %i.bb, align 8, !tbaa !198
  %i.bkg = load i64, ptr %i.ba, align 8, !tbaa !198
  %i.bkh = shl i64 %i.bkg, 2
  call void @_ZdlPvm(ptr noundef %i.bkf, i64 noundef %i.bkh) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit697

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit697: ; preds = %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit696, %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  br label %bb.nf

bb.nf:                                            ; preds = %.loopexit1343, %.loopexit.split-lp1344, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit697
  %.pn187.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn.pn.pn.pn.pn, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit697 ], [ %lpad.loopexit1345, %.loopexit1343 ], [ %lpad.loopexit.split-lp1346, %.loopexit.split-lp1344 ]
  %i.bki = load ptr, ptr %38, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i698 = icmp eq ptr %i.bki, null
  br i1 %.not.i.i.i698, label %_ZNSt6vectorIiSaIiEED2Ev.exit700, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.bkj = load ptr, ptr %i.az, align 8, !tbaa !321
  %i.bkk = ptrtoint ptr %i.bkj to i64
  %i.bkl = ptrtoint ptr %i.bki to i64
  %i.bkm = sub i64 %i.bkk, %i.bkl
  call void @_ZdlPvm(ptr noundef nonnull %i.bki, i64 noundef %i.bkm) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit700

_ZNSt6vectorIiSaIiEED2Ev.exit700:                 ; preds = %bb.nf, %bb.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

.loopexit1338:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i623
  %lpad.loopexit1340 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qt

.loopexit.split-lp1339:                           ; preds = %bb.kx
  %lpad.loopexit.split-lp1341 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qt

bb.nh:                                            ; preds = %bb.lc
  %i.bkn = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

.loopexit1449:                                    ; preds = %bb.lp
  %lpad.loopexit1451 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ni

.loopexit.split-lp1450:                           ; preds = %bb.lo
  %lpad.loopexit.split-lp1452 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ni

bb.ni:                                            ; preds = %.loopexit.split-lp1450, %.loopexit1449
  %lpad.phi1453 = phi { ptr, i32 } [ %lpad.loopexit1451, %.loopexit1449 ], [ %lpad.loopexit.split-lp1452, %.loopexit.split-lp1450 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #36
  br label %bb.qr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701: ; preds = %.body646
  %i.bko = load i64, ptr %i.bm, align 8, !tbaa !198
  %i.bkp = add i64 %i.bko, 1
  call void @_ZdlPvm(ptr noundef %i.bcu, i64 noundef %i.bkp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703: ; preds = %.body646, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  br label %bb.qq

.loopexit1333:                                    ; preds = %bb.mo, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i1023
  %lpad.loopexit1335 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1334

.loopexit.split-lp1334.loopexit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit1459 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1334

.loopexit.split-lp1334.loopexit.split-lp:         ; preds = %.noexc44.i1038, %.noexc.i1039
  %lpad.loopexit.split-lp1460 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1334

.loopexit1462:                                    ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i656
  %lpad.loopexit1464 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit707

.loopexit.split-lp1463:                           ; preds = %.noexc.i.i.i.i658
  %lpad.loopexit.split-lp1465 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit707

.loopexit1467:                                    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i663
  %lpad.loopexit1469 = landingpad { ptr, i32 }
          cleanup
  br label %.body685

.loopexit.split-lp1468:                           ; preds = %.noexc.i.i.i.i682
  %lpad.loopexit.split-lp1470 = landingpad { ptr, i32 }
          cleanup
  br label %.body685

bb.nj:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit687
  %i.bkq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bkr = load ptr, ptr %52, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i704 = icmp eq ptr %i.bkr, null
  br i1 %.not.i.i.i.i.i704, label %.body685, label %bb.nk
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a

.lr.ph.i.i1112:                                   ; preds = %.lr.ph.i.i1112.prol.loopexit, %.lr.ph.i.i1112
  %i.buj = phi ptr [ %i.buy, %.lr.ph.i.i1112 ], [ %.unr16212, %.lr.ph.i.i1112.prol.loopexit ] ; 5 uses
  %.012.i.i1113 = phi i64 [ %i.buz, %.lr.ph.i.i1112 ], [ %.012.i.i1113.unr, %.lr.ph.i.i1112.prol.loopexit ] ; 5 uses
  %i.buk = getelementptr inbounds nuw [4 x i8], ptr %i.btp, i64 %.012.i.i1113
  %i.bul = load i32, ptr %i.buj, align 4, !tbaa !211
  store i32 %i.bul, ptr %i.buk, align 4, !tbaa !211
  %i.bum = getelementptr inbounds nuw i8, ptr %i.buj, i64 4
  %i.bun = getelementptr inbounds nuw [4 x i8], ptr %i.btp, i64 %.012.i.i1113
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 4
  %i.bup = load i32, ptr %i.bum, align 4, !tbaa !211
  store i32 %i.bup, ptr %i.buo, align 4, !tbaa !211
  %i.buq = getelementptr inbounds nuw i8, ptr %i.buj, i64 8
  %i.bur = getelementptr inbounds nuw [4 x i8], ptr %i.btp, i64 %.012.i.i1113
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 8
  %i.but = load i32, ptr %i.buq, align 4, !tbaa !211
  store i32 %i.but, ptr %i.bus, align 4, !tbaa !211
  %i.buu = getelementptr inbounds nuw i8, ptr %i.buj, i64 12
  %i.buv = getelementptr inbounds nuw [4 x i8], ptr %i.btp, i64 %.012.i.i1113
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 12
  %i.bux = load i32, ptr %i.buu, align 4, !tbaa !211
  store i32 %i.bux, ptr %i.buw, align 4, !tbaa !211
  %i.buy = getelementptr inbounds nuw i8, ptr %i.buj, i64 16
  %i.buz = add nuw i64 %.012.i.i1113, 4           ; 2 uses
  %exitcond.not.i.i1114.3 = icmp eq i64 %i.buz, %i.btq
  br i1 %exitcond.not.i.i1114.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115, label %.lr.ph.i.i1112, !llvm.loop !1738

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115: ; preds = %.lr.ph.i.i1112.prol.loopexit, %.lr.ph.i.i1112, %middle.block, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109
  %i.bva = load i64, ptr %58, align 8, !tbaa !197
  %i.bvb = trunc i64 %i.bva to i1
  br i1 %i.bvb, label %bb.pv, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116

bb.pv:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115
  %i.bvc = load ptr, ptr %i.cq, align 8, !tbaa !198
  %i.bvd = load i64, ptr %i.cp, align 8, !tbaa !198
  %i.bve = shl i64 %i.bvd, 2
  call void @_ZdlPvm(ptr noundef %i.bvc, i64 noundef %i.bve) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116: ; preds = %bb.pv, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115
  store ptr %i.bsf, ptr %i.cq, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i1102, ptr %i.cp, align 8, !tbaa !198
  %i.bvf = shl nuw i64 %i.brz, 1
  %i.bvg = or disjoint i64 %i.bvf, 1
  br label %bb.qb

bb.pw:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772
  %.sroa.speculated.i1084 = call i64 @llvm.umax.i64(i64 %i.bry, i64 %.sink1.i.i1083) ; 4 uses
  %i.bvh = getelementptr [4 x i8], ptr %i.bru, i64 %.sroa.speculated.i1084 ; 5 uses
  %i.bvi = sub i64 %i.brz, %.sroa.speculated.i1084 ; 7 uses
  %i.bvj = sub nuw nsw i64 %.sroa.speculated.i1084, %i.bry ; 4 uses
  %i.bvk = getelementptr [4 x i8], ptr %i.brw, i64 %i.bvi
  %.not.i.i54.i1085 = icmp eq i64 %.0605588, %.sink1.i.i1083 ; 2 uses
  br i1 %.not.i.i54.i1085, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090, label %.lr.ph.i.i55.preheader.i1086

.lr.ph.i.i55.preheader.i1086:                     ; preds = %bb.pw
  %i.bvl = getelementptr i8, ptr %i.bvh, i64 -8   ; 3 uses
  %min.iters.check13756 = icmp ult i64 %i.bvi, 2
  br i1 %min.iters.check13756, label %.lr.ph.i.i55.i1087.preheader, label %vector.ph13757

vector.ph13757:                                   ; preds = %.lr.ph.i.i55.preheader.i1086
  %n.vec13758 = and i64 %i.bvi, -2                ; 4 uses
  %i.bvm = shl i64 %n.vec13758, 2
  %i.bvn = getelementptr i8, ptr %i.bvl, i64 %i.bvm
  %load_initial13977 = load <2 x i32>, ptr %i.bvl, align 4
  br label %vector.body13759

vector.body13759:                                 ; preds = %vector.body13759, %vector.ph13757
  %index13760 = phi i64 [ 0, %vector.ph13757 ], [ %index.next13763, %vector.body13759 ] ; 2 uses
  %i.bvo = getelementptr inbounds nuw [4 x i8], ptr %i.bvh, i64 %index13760
  store <2 x i32> %load_initial13977, ptr %i.bvo, align 4, !tbaa !211
  %index.next13763 = add nuw i64 %index13760, 2   ; 2 uses
  %i.bvp = icmp eq i64 %index.next13763, %n.vec13758
  br i1 %i.bvp, label %middle.block13764, label %vector.body13759, !llvm.loop !1739

middle.block13764:                                ; preds = %vector.body13759
  %cmp.n13765 = icmp eq i64 %i.bvi, %n.vec13758
  br i1 %cmp.n13765, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090, label %.lr.ph.i.i55.i1087.preheader

.lr.ph.i.i55.i1087.preheader:                     ; preds = %.lr.ph.i.i55.preheader.i1086, %middle.block13764
  %.ph13991 = phi ptr [ %i.bvl, %.lr.ph.i.i55.preheader.i1086 ], [ %i.bvn, %middle.block13764 ]
  %.012.i.i57.i1088.ph = phi i64 [ 0, %.lr.ph.i.i55.preheader.i1086 ], [ %n.vec13758, %middle.block13764 ]
  br label %.lr.ph.i.i55.i1087

.lr.ph.i.i55.i1087:                               ; preds = %.lr.ph.i.i55.i1087.preheader, %.lr.ph.i.i55.i1087
  %i.bvq = phi ptr [ %i.bvt, %.lr.ph.i.i55.i1087 ], [ %.ph13991, %.lr.ph.i.i55.i1087.preheader ] ; 2 uses
  %.012.i.i57.i1088 = phi i64 [ %i.bvu, %.lr.ph.i.i55.i1087 ], [ %.012.i.i57.i1088.ph, %.lr.ph.i.i55.i1087.preheader ] ; 2 uses
  %i.bvr = getelementptr inbounds nuw [4 x i8], ptr %i.bvh, i64 %.012.i.i57.i1088
  %i.bvs = load i32, ptr %i.bvq, align 4, !tbaa !211
  store i32 %i.bvs, ptr %i.bvr, align 4, !tbaa !211
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvq, i64 4
  %i.bvu = add nuw i64 %.012.i.i57.i1088, 1       ; 2 uses
  %exitcond.not.i.i58.i1089 = icmp eq i64 %i.bvu, %i.bvi
  br i1 %exitcond.not.i.i58.i1089, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090, label %.lr.ph.i.i55.i1087, !llvm.loop !1740

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090: ; preds = %.lr.ph.i.i55.i1087, %middle.block13764, %bb.pw
  %i.bvv = icmp samesign ugt i64 %i.bvj, 1
  br i1 %i.bvv, label %bb.px, label %bb.py, !prof !224

bb.px:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090
  %.idx1331 = shl nuw nsw i64 %i.bvj, 2
  %i.bvw = sub nsw i64 0, %i.bvj
  %i.bvx = getelementptr inbounds [4 x i8], ptr %i.bvh, i64 %i.bvw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bvx, ptr align 4 %i.brw, i64 %.idx1331, i1 false)
  br label %bb.qa

bb.py:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090
  %i.bvy = icmp eq i64 %i.bvj, 1
  br i1 %i.bvy, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  %i.bvz = getelementptr inbounds i8, ptr %i.bvh, i64 -4
  %i.bwa = load i32, ptr %i.brw, align 4, !tbaa !211
  store i32 %i.bwa, ptr %i.bvz, align 4, !tbaa !211
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py, %bb.px
  br i1 %.not.i.i54.i1085, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i, label %.lr.ph.i62.i1091.preheader

.lr.ph.i62.i1091.preheader:                       ; preds = %bb.qa
  %i.bwb = shl nuw i64 %i.bvi, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.brw, ptr nonnull align 8 %i.w, i64 %i.bwb, i1 false), !tbaa !211
  %i.bwc = call i64 @llvm.usub.sat.i64(i64 %indvars.iv9121, i64 %.sink1.i.i1083)
  %.neg9404 = mul i64 %i.bwc, -4
  %scevgep9124 = getelementptr i8, ptr %scevgep9120, i64 %.neg9404
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i: ; preds = %.lr.ph.i62.i1091.preheader, %bb.qa
  %.sroa.0113.0.i1094 = phi ptr [ %i.w, %bb.qa ], [ %scevgep9124, %.lr.ph.i62.i1091.preheader ]
  %.not.i66.i1095 = icmp eq i64 %i.bvi, 2
  br i1 %.not.i66.i1095, label %.loopexit.i1099, label %.lr.ph.i67.i1096.preheader

.lr.ph.i67.i1096.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i
  %i.bwd = sub nsw i64 %.sroa.speculated.i1084, %.sink1.i.i1083
  %i.bwe = shl i64 %i.bwd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bvk, ptr align 4 %.sroa.0113.0.i1094, i64 %i.bwe, i1 false), !tbaa !211
  br label %.loopexit.i1099

.loopexit.i1099:                                  ; preds = %.lr.ph.i67.i1096.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i
  %i.bwf = load i64, ptr %58, align 8, !tbaa !197
  %i.bwg = add i64 %i.bwf, 4
  br label %bb.qb

bb.qb:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116, %.loopexit.i1099
  %storemerge.i1100 = phi i64 [ %i.bwg, %.loopexit.i1099 ], [ %i.bvg, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116 ]
  %.0.i1101 = phi ptr [ %i.brw, %.loopexit.i1099 ], [ %i.bsh, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116 ]
  store i64 %storemerge.i1100, ptr %58, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #36
  store ptr %.0.i1101, ptr %i.v, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #36
  %i.bwh = ptrtoint ptr %.sroa.14.2 to i64
  %i.bwi = ptrtoint ptr %.sroa.01145.5 to i64     ; 2 uses
  %i.bwj = sub i64 %i.bwh, %i.bwi                 ; 7 uses
  %i.bwk = icmp ugt i64 %i.bwj, 9223372036854775804
  br i1 %i.bwk, label %.noexc.i.i.i.i778, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i774

.noexc.i.i.i.i778:                                ; preds = %bb.qb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc779 unwind label %.loopexit.split-lp1488

.noexc779:                                        ; preds = %.noexc.i.i.i.i778
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i774: ; preds = %bb.qb
  %.not.i.i.i.i.i.i775 = icmp eq ptr %.sroa.14.2, %.sroa.01145.5
  br i1 %.not.i.i.i.i.i.i775, label %.thread.i.i.i.i.i777, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i776

.thread.i.i.i.i.i777:                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i774
  %i.bwl = getelementptr inbounds nuw i8, ptr null, i64 %i.bwj
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i776: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i774
  %i.bwm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bwj) #41
          to label %.noexc780 unwind label %.loopexit1487 ; 6 uses

.noexc780:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i776
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bwj ; 3 uses
  %i.bwo = icmp samesign ugt i64 %i.bwj, 4
  br i1 %i.bwo, label %bb.qc, label %bb.qd, !prof !318

bb.qc:                                            ; preds = %.noexc780
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bwm, ptr align 4 %.sroa.01145.5, i64 %i.bwj, i1 false), !noalias !1804
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781

bb.qd:                                            ; preds = %.noexc780
  %i.bwp = icmp eq i64 %i.bwj, 4
  br i1 %i.bwp, label %bb.qe, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781

bb.qe:                                            ; preds = %bb.qd
  %i.bwq = load i32, ptr %.sroa.01145.5, align 4, !tbaa !211, !noalias !1804
  store i32 %i.bwq, ptr %i.bwm, align 4, !tbaa !211, !noalias !1804
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781: ; preds = %bb.qe, %bb.qd, %bb.qc, %.thread.i.i.i.i.i777
  %.sroa.0.0 = phi ptr [ null, %.thread.i.i.i.i.i777 ], [ %i.bwm, %bb.qc ], [ %i.bwm, %bb.qe ], [ %i.bwm, %bb.qd ] ; 8 uses
  %.sroa.9.0 = phi ptr [ %i.bwl, %.thread.i.i.i.i.i777 ], [ %i.bwn, %bb.qc ], [ %i.bwn, %bb.qe ], [ %i.bwn, %bb.qd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.bwr = ptrtoint ptr %.sroa.9.0 to i64
  %i.bws = ptrtoint ptr %.sroa.0.0 to i64
  %i.bwt = sub i64 %i.bwr, %i.bws                 ; 15 uses
  %.not.i.i.i.i.i.i782 = icmp eq ptr %.sroa.9.0, %.sroa.0.0
  br i1 %.not.i.i.i.i.i.i782, label %bb.qk, label %bb.qf

bb.qf:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781
  %i.bwu = icmp ugt i64 %i.bwt, 9223372036854775804
  br i1 %i.bwu, label %.noexc.i.i.i.i802, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i783, !prof !212

.noexc.i.i.i.i802:                                ; preds = %bb.qf
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc803 unwind label %.loopexit.split-lp1493

.noexc803:                                        ; preds = %.noexc.i.i.i.i802
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i783: ; preds = %bb.qf
  %i.bwv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bwt) #41
          to label %.noexc804 unwind label %.loopexit1492 ; 6 uses

.noexc804:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i783
  %i.bww = icmp samesign ugt i64 %i.bwt, 4
  br i1 %i.bww, label %bb.qg, label %bb.qh, !prof !318

bb.qg:                                            ; preds = %.noexc804
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bwv, ptr align 4 %.sroa.0.0, i64 %i.bwt, i1 false), !noalias !1805
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792

bb.qh:                                            ; preds = %.noexc804
  %i.bwx = icmp eq i64 %i.bwt, 4
  br i1 %i.bwx, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i801, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i801: ; preds = %bb.qh
  %i.bwy = load i32, ptr %.sroa.0.0, align 4, !tbaa !211, !noalias !1805
  store i32 %i.bwy, ptr %i.bwv, align 4, !tbaa !211, !noalias !1805
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792: ; preds = %bb.qg, %bb.qh, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false), !alias.scope !1805
  %i.bwz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bwt) #41
          to label %.noexc1.i795 unwind label %bb.ql, !noalias !1805 ; 4 uses

.noexc1.i795:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792
  store ptr %i.bwz, ptr %60, align 8, !tbaa !320, !alias.scope !1805
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwz, i64 %i.bwt ; 2 uses
  store ptr %i.bxa, ptr %i.cu, align 8, !tbaa !321, !alias.scope !1805
  %71 = icmp samesign ugt i64 %i.bwt, 4
  br i1 %71, label %bb.qi, label %bb.qj, !prof !318

bb.qi:                                            ; preds = %.noexc1.i795
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bwz, ptr nonnull align 4 %i.bwv, i64 %i.bwt, i1 false), !noalias !1805
  br label %.thread9447

bb.qj:                                            ; preds = %.noexc1.i795
  %i.bxb = icmp eq i64 %i.bwt, 4
  br i1 %i.bxb, label %.thread9.i797, label %.thread9447

.thread9.i797:                                    ; preds = %bb.qj
  %i.bxc = load i32, ptr %i.bwv, align 4, !tbaa !211, !noalias !1805
  store i32 %i.bxc, ptr %i.bwz, align 4, !tbaa !211, !noalias !1805
  br label %.thread9447

bb.qk:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781
  %i.bxd = getelementptr inbounds i8, ptr null, i64 %i.bwt ; 2 uses
  store i64 0, ptr %60, align 8
  store ptr %i.bxd, ptr %i.cu, align 8, !tbaa !321, !alias.scope !1805
  store ptr %i.bxd, ptr %i.ct, align 8, !tbaa !322, !alias.scope !1805
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit807

.thread9447:                                      ; preds = %bb.qj, %bb.qi, %.thread9.i797
  store ptr %i.bxa, ptr %i.ct, align 8, !tbaa !322, !alias.scope !1805
  call void @_ZdlPvm(ptr noundef nonnull %i.bwv, i64 noundef %i.bwt) #39, !noalias !1805
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit807

bb.ql:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792
  %lpad.loopexit1499 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bwv, i64 noundef %i.bwt) #39, !noalias !1805
  br label %.body805

_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit807: ; preds = %bb.qk, %.thread9447
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %59, ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull @.str.310, ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %bb.qm unwind label %bb.qy

bb.qm:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit807
  %i.bxe = load ptr, ptr %60, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i808 = icmp eq ptr %i.bxe, null
  br i1 %.not.i.i.i.i.i808, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit809, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.bxf = load ptr, ptr %i.cu, align 8, !tbaa !321
  %i.bxg = ptrtoint ptr %i.bxf to i64
  %i.bxh = ptrtoint ptr %i.bxe to i64
  %i.bxi = sub i64 %i.bxg, %i.bxh
  call void @_ZdlPvm(ptr noundef nonnull %i.bxe, i64 noundef %i.bxi) #39
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit809

_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit809: ; preds = %bb.qm, %bb.qn
  %.not.i.i.i.i810 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i.i810, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit811, label %bb.qo

bb.qo:                                            ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit809
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.bwt) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit811

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit811: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit809, %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #36
  %i.bxj = load i8, ptr %59, align 8, !tbaa !220, !range !189, !noundef !190
  %i.bxk = trunc nuw i8 %i.bxj to i1
  br i1 %i.bxk, label %bb.rk, label %bb.rb

bb.qp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit731, %.body1058
  %.pn205.pn.pn = phi { ptr, i32 } [ %.pn205.pn, %_ZN7testing7MessageD2Ev.exit731 ], [ %eh.lpad-body1059, %.body1058 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  br label %.loopexit.split-lp1334

.loopexit.split-lp1334:                           ; preds = %.loopexit1333, %.loopexit.split-lp1334.loopexit.split-lp, %.loopexit.split-lp1334.loopexit, %bb.qp, %bb.oc
  %.pn205.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn, %bb.qp ], [ %.pn201.pn.pn, %bb.oc ], [ %lpad.loopexit1335, %.loopexit1333 ], [ %lpad.loopexit1459, %.loopexit.split-lp1334.loopexit ], [ %lpad.loopexit.split-lp1460, %.loopexit.split-lp1334.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #36
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %48) #36
  br label %bb.qq

bb.qq:                                            ; preds = %.loopexit.split-lp1334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703
  %.pn205.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn, %.loopexit.split-lp1334 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  br label %bb.qr

bb.qr:                                            ; preds = %bb.qq, %bb.ni, %bb.nh
  %.sroa.01169.0 = phi ptr [ %.sroa.01169.41295, %bb.ni ], [ %.sroa.01169.5, %bb.qq ], [ %.sroa.01169.3, %bb.nh ]
  %.sroa.261179.0 = phi ptr [ %.sroa.261179.41297, %bb.ni ], [ %.sroa.261179.5, %bb.qq ], [ %.sroa.261179.3, %bb.nh ]
  %.pn205.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi1453, %bb.ni ], [ %.pn205.pn.pn.pn.pn, %bb.qq ], [ %i.bkn, %bb.nh ]
  %i.bxl = load i64, ptr %47, align 8, !tbaa !197
  %i.bxm = trunc i64 %i.bxl to i1
  br i1 %i.bxm, label %bb.qs, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit812

bb.qs:                                            ; preds = %bb.qr
  %i.bxn = load ptr, ptr %i.bj, align 8, !tbaa !198
  %i.bxo = load i64, ptr %i.bi, align 8, !tbaa !198
  %i.bxp = shl i64 %i.bxo, 2
  call void @_ZdlPvm(ptr noundef %i.bxn, i64 noundef %i.bxp) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit812

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit812: ; preds = %bb.qr, %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #36
  br label %bb.qt

bb.qt:                                            ; preds = %.loopexit1338, %.loopexit.split-lp1339, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit812
  %.sroa.01169.1 = phi ptr [ %.sroa.01169.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit812 ], [ %.sroa.01169.2, %.loopexit1338 ], [ %.sroa.01169.2, %.loopexit.split-lp1339 ] ; 3 uses
  %.sroa.261179.1 = phi ptr [ %.sroa.261179.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit812 ], [ %.sroa.261179.2, %.loopexit1338 ], [ %.sroa.261179.2, %.loopexit.split-lp1339 ]
  %.pn205.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn.pn.pn, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit812 ], [ %lpad.loopexit1340, %.loopexit1338 ], [ %lpad.loopexit.split-lp1341, %.loopexit.split-lp1339 ] ; 2 uses
  %.not.i.i.i813 = icmp eq ptr %.sroa.01169.1, null
  br i1 %.not.i.i.i813, label %_ZNSt6vectorIiSaIiEED2Ev.exit340, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.bxq = ptrtoint ptr %.sroa.261179.1 to i64
  %i.bxr = ptrtoint ptr %.sroa.01169.1 to i64
  %i.bxs = sub i64 %i.bxq, %i.bxr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01169.1, i64 noundef %i.bxs) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i751
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.sk

.loopexit.split-lp:                               ; preds = %bb.ot
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.sk

bb.qv:                                            ; preds = %bb.oy
  %i.bxt = landingpad { ptr, i32 }
          cleanup
  br label %bb.si

.loopexit1477:                                    ; preds = %bb.pk
  %lpad.loopexit1479 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qw

.loopexit.split-lp1478:                           ; preds = %bb.pj
  %lpad.loopexit.split-lp1480 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qw

bb.qw:                                            ; preds = %.loopexit.split-lp1478, %.loopexit1477
  %lpad.phi1481 = phi { ptr, i32 } [ %lpad.loopexit1479, %.loopexit1477 ], [ %lpad.loopexit.split-lp1480, %.loopexit.split-lp1478 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #36
  br label %bb.si

.loopexit1482:                                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i1103
  %lpad.loopexit1484 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qx

.loopexit.split-lp1483:                           ; preds = %.noexc.i1118, %.noexc44.i1117
  %lpad.loopexit.split-lp1485 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qx

bb.qx:                                            ; preds = %.loopexit.split-lp1483, %.loopexit1482
  %lpad.phi1486 = phi { ptr, i32 } [ %lpad.loopexit1484, %.loopexit1482 ], [ %lpad.loopexit.split-lp1485, %.loopexit.split-lp1483 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #36
  br label %bb.sh

.loopexit1487:                                    ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i776
  %lpad.loopexit1489 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit819

.loopexit.split-lp1488:                           ; preds = %.noexc.i.i.i.i778
  %lpad.loopexit.split-lp1490 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit819

.loopexit1492:                                    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i783
  %lpad.loopexit1494 = landingpad { ptr, i32 }
          cleanup
  br label %.body805

.loopexit.split-lp1493:                           ; preds = %.noexc.i.i.i.i802
  %lpad.loopexit.split-lp1495 = landingpad { ptr, i32 }
          cleanup
  br label %.body805

bb.qy:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit807
  %i.bxu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bxv = load ptr, ptr %60, align 8, !tbaa !320 ; 3 uses
  %.not.i.i.i.i.i816 = icmp eq ptr %i.bxv, null
  br i1 %.not.i.i.i.i.i816, label %.body805, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.bxw = load ptr, ptr %i.cu, align 8, !tbaa !321
  %i.bxx = ptrtoint ptr %i.bxw to i64
  %i.bxy = ptrtoint ptr %i.bxv to i64
  %i.bxz = sub i64 %i.bxx, %i.bxy
  call void @_ZdlPvm(ptr noundef nonnull %i.bxv, i64 noundef %i.bxz) #39
  br label %.body805

.body805:                                         ; preds = %.loopexit1492, %.loopexit.split-lp1493, %bb.qz, %bb.qy, %bb.ql
  %.pn213 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1495, %.loopexit.split-lp1493 ], [ %i.bxu, %bb.qz ], [ %lpad.loopexit1499, %bb.ql ], [ %i.bxu, %bb.qy ], [ %lpad.loopexit1494, %.loopexit1492 ] ; 2 uses
  %.not.i.i.i.i818 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i.i818, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit819, label %bb.ra

bb.ra:                                            ; preds = %.body805
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.bwt) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit819
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit837

_ZNK7testing15AssertionResult15failure_messageEv.exit837: ; preds = %bb.rv, %bb.ru
  %i.bzy = phi ptr [ %i.bzx, %bb.rv ], [ @.str.216, %bb.ru ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %65, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 648, ptr noundef %i.bzy)
          to label %bb.rw unwind label %bb.rz

bb.rw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit837
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 8 dereferenceable(8) %64)
          to label %bb.rx unwind label %bb.sa

bb.rx:                                            ; preds = %bb.rw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #36
  %i.bzz = load ptr, ptr %64, align 8, !tbaa !223 ; 3 uses
  %.not.i.i838 = icmp eq ptr %i.bzz, null
  br i1 %.not.i.i838, label %_ZN7testing7MessageD2Ev.exit840, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i839

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i839: ; preds = %bb.rx
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !169
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 8
  %i.cac = load ptr, ptr %i.cab, align 8
  call void %i.cac(ptr noundef nonnull align 8 dereferenceable(128) %i.bzz) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit840

_ZN7testing7MessageD2Ev.exit840:                  ; preds = %bb.rx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i839
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #36
  br label %bb.sc

bb.ry:                                            ; preds = %bb.rt
  %i.cad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit843

bb.rz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit837
  %i.cae = landingpad { ptr, i32 }
          cleanup
  br label %bb.sb

bb.sa:                                            ; preds = %bb.rw
  %i.caf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #36
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %bb.rz
  %.pn220 = phi { ptr, i32 } [ %i.caf, %bb.sa ], [ %i.cae, %bb.rz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #36
  %i.cag = load ptr, ptr %64, align 8, !tbaa !223 ; 3 uses
  %.not.i.i841 = icmp eq ptr %i.cag, null
  br i1 %.not.i.i841, label %_ZN7testing7MessageD2Ev.exit843, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i842

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i842: ; preds = %bb.sb
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !169
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 8
  %i.caj = load ptr, ptr %i.cai, align 8
  call void %i.caj(ptr noundef nonnull align 8 dereferenceable(128) %i.cag) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit843

_ZN7testing7MessageD2Ev.exit843:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i842, %bb.sb, %bb.ry
  %.pn220.pn = phi { ptr, i32 } [ %i.cad, %bb.ry ], [ %.pn220, %bb.sb ], [ %.pn220, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i842 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #36
  br label %bb.sg

bb.sc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPiPKiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit835, %_ZN7testing7MessageD2Ev.exit840
  %i.cak = load ptr, ptr %i.cy, align 8, !tbaa !221 ; 4 uses
  %.not.i.i844 = icmp eq ptr %i.cak, null
  br i1 %.not.i.i844, label %_ZN7testing15AssertionResultD2Ev.exit848, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.cal = load ptr, ptr %i.cak, align 8, !tbaa !195 ; 2 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cak, i64 16 ; 2 uses
  %i.can = icmp eq ptr %i.cal, %i.cam
  br i1 %i.can, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i846, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i845

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i845: ; preds = %bb.sd
  %i.cao = load i64, ptr %i.cam, align 8, !tbaa !198
  %i.cap = add i64 %i.cao, 1
  call void @_ZdlPvm(ptr noundef %i.cal, i64 noundef %i.cap) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i846

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i846: ; preds = %bb.sd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i845
  call void @_ZdlPvm(ptr noundef nonnull %i.cak, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit848

_ZN7testing15AssertionResultD2Ev.exit848:         ; preds = %bb.sc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i846
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #36
  %i.caq = load i64, ptr %58, align 8, !tbaa !197
  %i.car = trunc i64 %i.caq to i1
  br i1 %i.car, label %bb.se, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit849

bb.se:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit848
  %i.cas = load ptr, ptr %i.cq, align 8, !tbaa !198
  %i.cat = load i64, ptr %i.cp, align 8, !tbaa !198
  %i.cau = shl i64 %i.cat, 2
  call void @_ZdlPvm(ptr noundef %i.cas, i64 noundef %i.cau) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit849

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit849: ; preds = %_ZN7testing15AssertionResultD2Ev.exit848, %bb.se
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #36
  %.not.i.i.i850 = icmp eq ptr %.sroa.01145.5, null
  br i1 %.not.i.i.i850, label %_ZNSt6vectorIiSaIiEED2Ev.exit852, label %bb.sf

bb.sf:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit849
  %i.cav = ptrtoint ptr %.sroa.26.5 to i64
  %i.caw = sub i64 %i.cav, %i.bwi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01145.5, i64 noundef %i.caw) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit852

_ZNSt6vectorIiSaIiEED2Ev.exit852:                 ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit849, %bb.sf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next9122 = add nuw nsw i64 %indvars.iv9121, 1
  %exitcond.not = icmp eq i64 %i.gl, %indvars.iv9125
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !1753

bb.sg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit843, %.body1136
  %.pn220.pn.pn = phi { ptr, i32 } [ %.pn220.pn, %_ZN7testing7MessageD2Ev.exit843 ], [ %eh.lpad-body1137, %.body1136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #36
  br label %bb.sh

bb.sh:                                            ; preds = %bb.sg, %bb.rr, %bb.qx
  %.pn220.pn.pn.pn = phi { ptr, i32 } [ %.pn220.pn.pn, %bb.sg ], [ %.pn216.pn.pn, %bb.rr ], [ %lpad.phi1486, %bb.qx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #36
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.qw, %bb.qv
  %.sroa.01145.0 = phi ptr [ %.sroa.01145.41303, %bb.qw ], [ %.sroa.01145.5, %bb.sh ], [ %.sroa.01145.3, %bb.qv ]
  %.sroa.26.0 = phi ptr [ %.sroa.26.41305, %bb.qw ], [ %.sroa.26.5, %bb.sh ], [ %.sroa.26.3, %bb.qv ]
  %.pn220.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi1481, %bb.qw ], [ %.pn220.pn.pn.pn, %bb.sh ], [ %i.bxt, %bb.qv ]
  %i.cax = load i64, ptr %58, align 8, !tbaa !197
  %i.cay = trunc i64 %i.cax to i1
  br i1 %i.cay, label %bb.sj, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit853

bb.sj:                                            ; preds = %bb.si
  %i.caz = load ptr, ptr %i.cq, align 8, !tbaa !198
  %i.cba = load i64, ptr %i.cp, align 8, !tbaa !198
  %i.cbb = shl i64 %i.cba, 2
  call void @_ZdlPvm(ptr noundef %i.caz, i64 noundef %i.cbb) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit853

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit853: ; preds = %bb.si, %bb.sj
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #36
  br label %bb.sk

bb.sk:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit853
  %.sroa.01145.1 = phi ptr [ %.sroa.01145.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit853 ], [ %.sroa.01145.2, %.loopexit ], [ %.sroa.01145.2, %.loopexit.split-lp ] ; 3 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit853 ], [ %.sroa.26.2, %.loopexit ], [ %.sroa.26.2, %.loopexit.split-lp ]
  %.pn220.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn220.pn.pn.pn.pn, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit853 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i854 = icmp eq ptr %.sroa.01145.1, null
  br i1 %.not.i.i.i854, label %_ZNSt6vectorIiSaIiEED2Ev.exit340, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.cbc = ptrtoint ptr %.sroa.26.1 to i64
  %i.cbd = ptrtoint ptr %.sroa.01145.1 to i64
  %i.cbe = sub i64 %i.cbc, %i.cbd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01145.1, i64 noundef %i.cbe) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

_ZNSt6vectorIiSaIiEED2Ev.exit340:                 ; preds = %bb.sl, %bb.sk, %bb.qu, %bb.qt, %bb.gy, %bb.gx, %bb.ed, %bb.ec, %_ZNSt6vectorIiSaIiEED2Ev.exit700, %_ZNSt6vectorIiSaIiEED2Ev.exit575
  %.pn220.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn.pn.pn.pn, %bb.qu ], [ %.pn156.pn.pn.pn.pn.pn.pn, %bb.gy ], [ %.pn187.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit700 ], [ %.pn171.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit575 ], [ %.pn142.pn.pn.pn.pn.pn, %bb.ed ], [ %.pn142.pn.pn.pn.pn.pn, %bb.ec ], [ %.pn156.pn.pn.pn.pn.pn.pn, %bb.gx ], [ %.pn205.pn.pn.pn.pn.pn.pn, %bb.qt ], [ %.pn220.pn.pn.pn.pn.pn, %bb.sk ], [ %.pn220.pn.pn.pn.pn.pn, %bb.sl ]
  resume { ptr, i32 } %.pn220.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::PredicateFormatterFromMatcher.350") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !322  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !320    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !212

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41
  %.pre = load ptr, ptr %1, align 8, !tbaa !234   ; 3 uses
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !234 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi14           ; 10 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !224

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false)
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %bb.f

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.j, align 4, !tbaa !211
  store i32 %i.o, ptr %i.k, align 4, !tbaa !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i

.thread:                                          ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !321
  br label %bb.i

bb.f:                                             ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.s, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !1808

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #41
          to label %.noexc1 unwind label %bb.k    ; 4 uses

.noexc1:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !320
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !321
  %2 = icmp samesign ugt i64 %i.l, 4
  br i1 %2, label %bb.g, label %bb.h, !prof !318

bb.g:                                             ; preds = %.noexc1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc1
  %i.x = icmp eq i64 %i.l, 4
  br i1 %i.x, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.y = load i32, ptr %i.k, align 4, !tbaa !211
  store i32 %i.y, ptr %i.t, align 4, !tbaa !211
  store ptr %i.v, ptr %i.u, align 8, !tbaa !322
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.z = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ]
  %i.aa = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !322
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i2, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit3

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit3: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::Matcher.357", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41, !noalias !1834 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !234, !noalias !1834
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234, !noalias !1834
  invoke void @_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEC2IN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS5_EEEEET_SI_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %i.b, ptr %i.d)
          to label %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEENS_8internal23ElementsAreArrayMatcherIiEEEENS_7MatcherIT_EERKT0_.exit unwind label %bb.b, !noalias !1834

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn21, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #39, !noalias !1834
  br label %common.resume

_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEENS_8internal23ElementsAreArrayMatcherIiEEEENS_7MatcherIT_EERKT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE9GetVTableINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.f, align 8, !tbaa !328, !alias.scope !1834
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41, !noalias !1834 ; 3 uses
  store i32 1, ptr %i.h, align 4, !tbaa !249, !noalias !1834
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.i, align 8, !tbaa !330, !noalias !1834
  store ptr %i.h, ptr %i.g, align 8, !tbaa !198, !alias.scope !1834
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEE, i64 16), ptr %8, align 8, !tbaa !169, !alias.scope !1834
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !169
  %i.l = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEENS_8internal23ElementsAreArrayMatcherIiEEEENS_7MatcherIT_EERKT0_.exit
  br i1 %i.l, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc23 unwind label %bb.e

.noexc23:                                         ; preds = %.noexc3.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc23
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !328
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !332
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %7)
          to label %bb.c unwind label %bb.e, !inline_history !30

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.al unwind label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEENS_8internal23ElementsAreArrayMatcherIiEEEENS_7MatcherIT_EERKT0_.exit, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.245, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !169
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !178
  %i.aa = or i32 %i.z, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef %i.aa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %2, i64 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.h, %bb.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.246, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.247, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !328
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ag)
          to label %.noexc33 unwind label %bb.p

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.ah, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 246)
          to label %.noexc34 unwind label %bb.p

.noexc34:                                         ; preds = %bb.j
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc34
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_128RangedAssign_SimpleType_Test8TestBodyEv:_ZN4absl12lts_2026052613InlinedVectorIiLm3ESaIiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i156: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i162, %bb.bm
  %.pn.i157 = phi { ptr, i32 } [ %i.jg, %bb.bm ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i162 ], [ %i.jh, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !3722
  %i.jm = load ptr, ptr %1, align 8, !tbaa !195, !noalias !3722 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.p
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i156
  %i.jo = load i64, ptr %i.p, align 8, !tbaa !198, !noalias !3722
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !3722
  br label %.body170

.noexc89:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !3722
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit90

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit90: ; preds = %.noexc89, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.jq = load i8, ptr %16, align 8, !tbaa !220, !range !189, !noundef !190
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bz, label %bb.bq

bb.bo:                                            ; preds = %_ZN7testing7MessageD2Ev.exit82, %bb.aw
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %_ZN7testing7MessageD2Ev.exit82 ], [ %i.hw, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.dh

bb.bp:                                            ; preds = %bb.bk, %bb.bj
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body170

.body170:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i159, %bb.bp
  %eh.lpad-body171 = phi { ptr, i32 } [ %i.js, %bb.bp ], [ %.pn.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %bb.cb

bb.bq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.jt = load ptr, ptr %i.q, align 8, !tbaa !221 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i91, label %_ZNK7testing15AssertionResult15failure_messageEv.exit92, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit92

_ZNK7testing15AssertionResult15failure_messageEv.exit92: ; preds = %bb.bs, %bb.br
  %i.jv = phi ptr [ %i.ju, %bb.bs ], [ @.str.216, %bb.br ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1549, ptr noundef %i.jv)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  %i.jw = load ptr, ptr %17, align 8, !tbaa !223  ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.bu
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !169
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(128) %i.jw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bq
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit98

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #36
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn38 = phi { ptr, i32 } [ %i.kc, %bb.bx ], [ %i.kb, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  %i.kd = load ptr, ptr %17, align 8, !tbaa !223  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.by
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !169
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(128) %i.kd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, %bb.by, %bb.bv
  %.pn38.pn = phi { ptr, i32 } [ %i.ka, %bb.bv ], [ %.pn38, %bb.by ], [ %.pn38, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #36
  br label %bb.cb

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit90, %_ZN7testing7MessageD2Ev.exit95
  %i.kh = load ptr, ptr %i.q, align 8, !tbaa !221 ; 4 uses
  %.not.i.i99 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i99, label %_ZN7testing15AssertionResultD2Ev.exit103, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !195 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %bb.ca
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !198
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit103

_ZN7testing15AssertionResultD2Ev.exit103:         ; preds = %bb.bz, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.cc

bb.cb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit98, %.body170
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %_ZN7testing7MessageD2Ev.exit98 ], [ %eh.lpad-body171, %.body170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.dh

bb.cc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit103, %_ZN7testing15AssertionResultD2Ev.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.kn = icmp ugt i64 %i.ct, 9223372036854775804
  br i1 %i.kn, label %.noexc.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc104 unwind label %.loopexit.split-lp220

.noexc104:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i: ; preds = %bb.cc
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.12.0.lcssa, %.sroa.0178.0.lcssa
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr null, i64 %i.ct
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #41
          to label %.noexc105 unwind label %.loopexit219 ; 6 uses

.noexc105:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ct ; 3 uses
  %i.kr = icmp samesign ugt i64 %i.ct, 4
  br i1 %i.kr, label %bb.cd, label %bb.ce, !prof !318

bb.cd:                                            ; preds = %.noexc105
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kp, ptr align 4 %.sroa.0178.0.lcssa, i64 %i.ct, i1 false), !noalias !3723
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

bb.ce:                                            ; preds = %.noexc105
  %i.ks = icmp eq i64 %i.ct, 4
  br i1 %i.ks, label %bb.cf, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

bb.cf:                                            ; preds = %bb.ce
  %i.kt = load i32, ptr %.sroa.0178.0.lcssa, align 4, !tbaa !211, !noalias !3723
  store i32 %i.kt, ptr %i.kp, align 4, !tbaa !211, !noalias !3723
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit: ; preds = %bb.cf, %bb.ce, %bb.cd, %.thread.i.i.i.i.i
  %.sroa.0.0 = phi ptr [ null, %.thread.i.i.i.i.i ], [ %i.kp, %bb.cd ], [ %i.kp, %bb.cf ], [ %i.kp, %bb.ce ] ; 8 uses
  %.sroa.9.0 = phi ptr [ %i.ko, %.thread.i.i.i.i.i ], [ %i.kq, %bb.cd ], [ %i.kq, %bb.cf ], [ %i.kq, %bb.ce ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3724)
  %i.ku = ptrtoint ptr %.sroa.9.0 to i64
  %i.kv = ptrtoint ptr %.sroa.0.0 to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 15 uses
  %.not.i.i.i.i.i.i106 = icmp eq ptr %.sroa.9.0, %.sroa.0.0
  br i1 %.not.i.i.i.i.i.i106, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit
  %i.kx = icmp ugt i64 %i.kw, 9223372036854775804
  br i1 %i.kx, label %.noexc.i.i.i.i108, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !212

.noexc.i.i.i.i108:                                ; preds = %bb.cg
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc109 unwind label %.loopexit.split-lp225

.noexc109:                                        ; preds = %.noexc.i.i.i.i108
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.cg
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kw) #41
          to label %.noexc110 unwind label %.loopexit224 ; 6 uses

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %i.kz = icmp samesign ugt i64 %i.kw, 4
  br i1 %i.kz, label %bb.ch, label %bb.ci, !prof !318

bb.ch:                                            ; preds = %.noexc110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ky, ptr align 4 %.sroa.0.0, i64 %i.kw, i1 false), !noalias !3724
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %.noexc110
  %i.la = icmp eq i64 %i.kw, 4
  br i1 %i.la, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i: ; preds = %bb.ci
  %i.lb = load i32, ptr %.sroa.0.0, align 4, !tbaa !211, !noalias !3724
  store i32 %i.lb, ptr %i.ky, align 4, !tbaa !211, !noalias !3724
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.ch, %bb.ci, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false), !alias.scope !3724
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kw) #41
          to label %.noexc1.i unwind label %bb.cm, !noalias !3724 ; 4 uses

.noexc1.i:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.lc, ptr %20, align 8, !tbaa !320, !alias.scope !3724
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kw ; 2 uses
  store ptr %i.ld, ptr %i.s, align 8, !tbaa !321, !alias.scope !3724
  %23 = icmp samesign ugt i64 %i.kw, 4
  br i1 %23, label %bb.cj, label %bb.ck, !prof !318

bb.cj:                                            ; preds = %.noexc1.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lc, ptr nonnull align 4 %i.ky, i64 %i.kw, i1 false), !noalias !3724
  br label %.thread950

bb.ck:                                            ; preds = %.noexc1.i
  %i.le = icmp eq i64 %i.kw, 4
  br i1 %i.le, label %.thread9.i, label %.thread950

.thread9.i:                                       ; preds = %bb.ck
  %i.lf = load i32, ptr %i.ky, align 4, !tbaa !211, !noalias !3724
  store i32 %i.lf, ptr %i.lc, align 4, !tbaa !211, !noalias !3724
  br label %.thread950

bb.cl:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit
  %i.lg = getelementptr inbounds i8, ptr null, i64 %i.kw ; 2 uses
  store i64 0, ptr %20, align 8
  store ptr %i.lg, ptr %i.s, align 8, !tbaa !321, !alias.scope !3724
  store ptr %i.lg, ptr %i.r, align 8, !tbaa !322, !alias.scope !3724
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit

.thread950:                                       ; preds = %bb.ck, %bb.cj, %.thread9.i
  store ptr %i.ld, ptr %i.r, align 8, !tbaa !322, !alias.scope !3724
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.kw) #39, !noalias !3724
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit

bb.cm:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %lpad.loopexit231 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.kw) #39, !noalias !3724
  br label %.body111

_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit: ; preds = %bb.cl, %.thread950
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052613InlinedVectorIiLm3ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull @.str.310, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit
  %i.lh = load ptr, ptr %20, align 8, !tbaa !320  ; 3 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i.i113, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.li = load ptr, ptr %i.s, align 8, !tbaa !321
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.lh to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.ll) #39
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit

_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit: ; preds = %bb.cn, %bb.co
  %.not.i.i.i.i114 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i.i114, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.kw) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEED2Ev.exit, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.lm = load i8, ptr %19, align 8, !tbaa !220, !range !189, !noundef !190
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.dc, label %bb.ct

.loopexit219:                                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i
  %lpad.loopexit221 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit118

.loopexit.split-lp220:                            ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit118

.loopexit224:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit226 = landingpad { ptr, i32 }
          cleanup
  br label %.body111

.loopexit.split-lp225:                            ; preds = %.noexc.i.i.i.i108
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          cleanup
  br label %.body111

bb.cq:                                            ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_.exit
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %20, align 8, !tbaa !320  ; 3 uses
  %.not.i.i.i.i.i115 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i.i.i115, label %.body111, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lq = load ptr, ptr %i.s, align 8, !tbaa !321
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lp to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lt) #39
  br label %.body111

.body111:                                         ; preds = %.loopexit224, %.loopexit.split-lp225, %bb.cr, %bb.cq, %bb.cm
  %.pn42 = phi { ptr, i32 } [ %lpad.loopexit.split-lp227, %.loopexit.split-lp225 ], [ %i.lo, %bb.cr ], [ %lpad.loopexit231, %bb.cm ], [ %i.lo, %bb.cq ], [ %lpad.loopexit226, %.loopexit224 ] ; 2 uses
  %.not.i.i.i.i117 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i.i117, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit118, label %bb.cs

bb.cs:                                            ; preds = %.body111
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.kw) #39
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit118

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit118: ; preds = %.loopexit219, %.loopexit.split-lp220, %bb.cs, %.body111
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.cs ], [ %.pn42, %.body111 ], [ %lpad.loopexit221, %.loopexit219 ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.dg

bb.ct:                                            ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.cu unwind label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  %i.lu = load ptr, ptr %i.t, align 8, !tbaa !221 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i119, label %_ZNK7testing15AssertionResult15failure_messageEv.exit120, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit120

_ZNK7testing15AssertionResult15failure_messageEv.exit120: ; preds = %bb.cv, %bb.cu
  %i.lw = phi ptr [ %i.lv, %bb.cv ], [ @.str.216, %bb.cu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1551, ptr noundef %i.lw)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit120
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  %i.lx = load ptr, ptr %21, align 8, !tbaa !223  ; 3 uses
  %.not.i.i121 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i121, label %_ZN7testing7MessageD2Ev.exit123, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.cx
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !169
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(128) %i.lx) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit123

_ZN7testing7MessageD2Ev.exit123:                  ; preds = %bb.cx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.dc

bb.cy:                                            ; preds = %bb.ct
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit126

bb.cz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit120
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.cw
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #36
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn45 = phi { ptr, i32 } [ %i.md, %bb.da ], [ %i.mc, %bb.cz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  %i.me = load ptr, ptr %21, align 8, !tbaa !223  ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.me, null
  br i1 %.not.i.i124, label %_ZN7testing7MessageD2Ev.exit126, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.db
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !169
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(128) %i.me) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit126

_ZN7testing7MessageD2Ev.exit126:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, %bb.db, %bb.cy
  %.pn45.pn = phi { ptr, i32 } [ %i.mb, %bb.cy ], [ %.pn45, %bb.db ], [ %.pn45, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #36
  br label %bb.dg

bb.dc:                                            ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit, %_ZN7testing7MessageD2Ev.exit123
  %i.mi = load ptr, ptr %i.t, align 8, !tbaa !221 ; 4 uses
  %.not.i.i127 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i127, label %_ZN7testing15AssertionResultD2Ev.exit131, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !195 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128
end_hunk_7
