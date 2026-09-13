Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ring_hash?download=true
inline.NumInlined: 3519
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE6AssignINS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvT_m:bb.a
_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit._ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit_crit_edge, %bb.e, %.loopexit
  %i.cd = phi i64 [ %.pre86, %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIcENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSI_9size_typeE.exit._ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit_crit_edge ], [ %i.cc, %bb.e ], [ %.pre87, %.loopexit ]
  %i.ce = shl i64 %2, 1
  %i.cf = and i64 %i.cd, 1
  %i.cg = or disjoint i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIcLm196ESaIcEE15EmplaceBackSlowIJcEEERcDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !41, !noalias !473 ; 5 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !473
  %.sink1.i = lshr i64 %i.a, 1                    ; 9 uses
  %i.f = shl i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.f, i64 392        ; 3 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i, !prof !63

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !noalias !473
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #33 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink1.i ; 2 uses
  %i.l = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.l, ptr %i.k, align 1, !tbaa !42
  %.not.i = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i
  %i.m = ptrtoaddr ptr %i.j to i64
  %.sink2.i = select i1 %i.b, ptr %i.i, ptr %i.c  ; 6 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  %.sink2.i29 = ptrtoaddr ptr %.sink2.i to i64
  %i.n = sub i64 %.sink2.i29, %i.m
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.a, 64
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %.sink1.i, 9223372036854775776 ; 5 uses
  %i.o = getelementptr i8, ptr %.sink2.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sink2.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !42
  %wide.load31 = load <16 x i8>, ptr %i.q, align 1, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %wide.load, ptr %i.p, align 1, !tbaa !42
  store <16 x i8> %wide.load31, ptr %i.r, align 1, !tbaa !42
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !469

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sink1.i, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.t = and i64 %i.a, 56
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %.sink1.i, 9223372036854775804 ; 4 uses
  %i.u = getelementptr i8, ptr %.sink2.i, i64 %n.vec32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %next.gep34 = getelementptr i8, ptr %.sink2.i, i64 %index33
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %index33
  %wide.load35 = load <4 x i8>, ptr %next.gep34, align 1, !tbaa !42
  store <4 x i8> %wide.load35, ptr %i.v, align 1, !tbaa !42
  %index.next36 = add nuw i64 %index33, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next36, %n.vec32
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !470

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %.sink1.i, %n.vec32
  br i1 %cmp.n37, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.017.0.ph = phi ptr [ %.sink2.i, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 2 uses
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.sink1.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.017.0.prol = phi ptr [ %i.z, %.lr.ph.i.prol ], [ %.sroa.017.0.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.012.i.prol = phi i64 [ %i.aa, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %.012.i.prol
  %i.y = load i8, ptr %.sroa.017.0.prol, align 1, !tbaa !42
  store i8 %i.y, ptr %i.x, align 1, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.prol, i64 1 ; 2 uses
  %i.aa = add nuw nsw i64 %.012.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !471

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.017.0.unr = phi ptr [ %.sroa.017.0.ph, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ab = sub nsw i64 %.012.i.ph, %.sink1.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.017.0 = phi ptr [ %i.ar, %.lr.ph.i ], [ %.sroa.017.0.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.012.i = phi i64 [ %i.as, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %.012.i
  %i.ae = load i8, ptr %.sroa.017.0, align 1, !tbaa !42
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %.012.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !42
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.012.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !42
  store i8 %i.am, ptr %i.al, align 1, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 %.012.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !42
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 4
  %i.as = add nuw nsw i64 %.012.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.as, %.sink1.i
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !472

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIcELb0EE8AllocateERS3_m.exit.i
  %i.at = load i64, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.au = trunc i64 %i.at to i1
  br i1 %i.au, label %bb.b, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !42
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.aw) #35
  %.pre = load i64, ptr %0, align 8, !tbaa !41
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIcEED2Ev.exit: ; preds = %bb.b, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit
  %i.ax = phi i64 [ %.pre, %bb.b ], [ %i.at, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIcENS1_20IteratorValueAdapterIS3_St13move_iteratorIPcEEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit ]
  store ptr %i.j, ptr %i.c, align 8, !tbaa !42
  store i64 %i.g, ptr %i.d, align 8, !tbaa !42
  %i.ay = or i64 %i.ax, 1
  %i.az = add i64 %i.ay, 2
  store i64 %i.az, ptr %0, align 8, !tbaa !41
  ret ptr %i.k
}

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #24 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.bs, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !474

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cg, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i26.lcssa, 4             ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i.i26.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.al, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.010.i.i.i ; 2 uses
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !41
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %i.y
  %.val2.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !163
  %.val3.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !163
  %i.aa = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.aa, i64 %i.y, i64 %i.w ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !164
  %i.ad = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !475

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ae, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.af = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.07.i.i.i.i.i = phi i64 [ %.098.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.098.i.i.i.i.i ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !163
  %i.ah = icmp ult i64 %.val2.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.ah, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !164
  %i.aj = icmp sgt i64 %.098.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !476

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.t, ptr %i.ak, align 8, !tbaa !41
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.al = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_RT0_.exit.i.i", label %bb.c, !llvm.loop !477

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i26.lcssa, 16
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.am, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_RT0_.exit.i.i" ]
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 5 uses
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !41
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.am, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %.fr27, i64 16, i1 false), !tbaa.struct !164
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.ao, %i.a                     ; 3 uses
  %i.aq = ashr exact i64 %i.ap, 4                 ; 3 uses
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = lshr i64 %i.ar, 1
  %i.at = icmp sgt i64 %i.aq, 2
  br i1 %i.at, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.041.i.i.i23.i = phi i64 [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.au = shl i64 %.041.i.i.i23.i, 1              ; 2 uses
  %i.av = add i64 %i.au, 2                        ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %i.av
  %i.ax = or disjoint i64 %i.au, 1                ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %i.ax
  %.val2.i.i.i.i24.i = load i64, ptr %i.aw, align 8, !tbaa !163
  %.val3.i.i.i.i25.i = load i64, ptr %i.ay, align 8, !tbaa !163
  %i.az = icmp ult i64 %.val2.i.i.i.i24.i, %.val3.i.i.i.i25.i
  %spec.select.i.i.i26.i = select i1 %i.az, i64 %i.ax, i64 %i.av ; 4 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %spec.select.i.i.i26.i
  %i.bb = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.041.i.i.i23.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !164
  %i.bc = icmp slt i64 %spec.select.i.i.i26.i, %i.as
  br i1 %i.bc, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i, !llvm.loop !475

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.bd = and i64 %i.ap, 16
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bf = add nsw i64 %i.aq, -2
  %i.bg = ashr exact i64 %i.bf, 1
  %i.bh = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bg
  br i1 %i.bh, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bi = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bj = or disjoint i64 %i.bi, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !164
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.07.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.07.i.i.i.i17.i = phi i64 [ %.098.i.i34.i.i.i, %bb.i ], [ %.07.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.098.in.i.i.i.i18.i = add nsw i64 %.07.i.i.i.i17.i, -1
  %.098.i.i34.i.i.i = lshr i64 %.098.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.098.i.i34.i.i.i ; 2 uses
  %.val2.i.i.i.i.i19.i = load i64, ptr %i.bm, align 8, !tbaa !163
  %i.bn = icmp ult i64 %.val2.i.i.i.i.i19.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.bn, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bo = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.07.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !164
  %.not5.i.i.i = icmp eq i64 %.098.i.i34.i.i.i, 0
  br i1 %.not5.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !476

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.07.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bp = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i20.i
  store <2 x i64> %i.an, ptr %i.bp, align 8, !tbaa !41
  %i.bq = icmp sgt i64 %i.ap, 16
  br i1 %i.bq, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !478

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2442 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02541 = phi i64 [ %i.bs, %bb.b ], [ %2, %.lr.ph ]
  %i.br = phi i64 [ %i.ch, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bs = add nsw i64 %.02541, -1                 ; 3 uses
  %i.bt = lshr i64 %i.br, 1
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %i.bt ; 5 uses
  %i.bv = getelementptr inbounds i8, ptr %storemerge2442, i64 -16 ; 5 uses
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !tbaa !163 ; 3 uses
  %.val3.i.i.i = load i64, ptr %i.bu, align 8, !tbaa !163 ; 3 uses
  %i.bw = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %.val3.i27.i.i = load i64, ptr %i.bv, align 8, !tbaa !163 ; 4 uses
  br i1 %i.bw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph43
  %i.bx = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.fr27, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bu, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.by = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.050.0.copyload = load <2 x i64>, ptr %.fr27, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.050.0.copyload, ptr %i.bv, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %.sroa.052.0.copyload = load <2 x i64>, ptr %.fr27, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.052.0.copyload, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph43
  %i.bz = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.054.0.copyload = load <2 x i64>, ptr %.fr27, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.054.0.copyload, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.ca = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.056.0.copyload = load <2 x i64>, ptr %.fr27, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.056.0.copyload, ptr %i.bv, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %.sroa.058.0.copyload = load <2 x i64>, ptr %.fr27, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.058.0.copyload, ptr %i.bu, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cc, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2442, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.val3.i.i18.i = load i64, ptr %.fr27, align 8, !tbaa !163 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.cc, %bb.t ] ; 9 uses
  %.val2.i.i19.i = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !163
  %i.cb = icmp ult i64 %.val2.i.i19.i, %.val3.i.i18.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.cb, label %bb.t, label %.preheader.i.i, !llvm.loop !479

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %.val3.i10.i.i = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !163
  %i.cd = icmp ult i64 %.val3.i.i18.i, %.val3.i10.i.i
  br i1 %i.cd, label %.preheader.i.i, label %bb.u, !llvm.loop !480

bb.u:                                             ; preds = %.preheader.i.i
  %i.ce = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ce, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEET_SJ_SJ_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %.sroa.060.0.copyload = load <2 x i64>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.060.0.copyload, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !481

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2442, i64 noundef %i.bs)
  %i.cf = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cg = sub i64 %i.cf, %i.a                     ; 2 uses
  %i.ch = ashr exact i64 %i.cg, 4                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 16
  br i1 %i.ci, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !474

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core12_GLOBAL__N_18RingHash4Ring9RingEntryESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_C1EPS4_PNS3_16RingHashLbConfigEE3$_0EEEvT_SJ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3setI21grpc_resolved_addressN9grpc_core23ResolvedAddressLessThanESaIS0_EEC2IN9__gnu_cxx17__normal_iteratorIPKS0_St6vectorIS0_S3_EEEEET_SD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !86
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE22_M_insert_range_uniqueIN9__gnu_cxx17__normal_iteratorIPKS0_St6vectorIS0_S5_EEEEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESG_SG_.exit, label %.lr.ph.i

thread-pre-split:                                 ; preds = %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE17_M_insert_unique_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_ESt23_Rb_tree_const_iteratorIS0_EOT_RT0_.exit.i
  %.pr = load i64, ptr %i.e, align 8, !tbaa !86
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %thread-pre-split
  %i.f = phi i64 [ %.pr, %thread-pre-split ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.z, %thread-pre-split ], [ %1, %bb.a ] ; 6 uses
  %.not.i7 = icmp eq i64 %i.f, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !172
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = invoke noundef zeroext i1 @_ZNK9grpc_core23ResolvedAddressLessThanclERK21grpc_resolved_addressS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(132) %i.h, ptr noundef nonnull align 4 dereferenceable(132) %.sroa.04.08.i)
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.b
  br i1 %i.i, label %.noexc, label %bb.c

bb.c:                                             ; preds = %.noexc9, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.noexc10
  %.02024.i.i = phi ptr [ %.020.i.i, %.noexc10 ], [ %.02022.i.i, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.k = invoke noundef zeroext i1 @_ZNK9grpc_core23ResolvedAddressLessThanclERK21grpc_resolved_addressS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(132) %.sroa.04.08.i, ptr noundef nonnull align 4 dereferenceable(132) %i.j)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %.lr.ph.i.i
  %.in.v.i.i = select i1 %i.k, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !172 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !482

._crit_edge.i.i:                                  ; preds = %.noexc10
  br i1 %i.k, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.m = icmp eq ptr %.019.lcssa29.i.i, %i.l
  br i1 %i.m, label %.noexc.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.d ], [ %.02024.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.n, %bb.d ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 32
  %i.p = invoke noundef zeroext i1 @_ZNK9grpc_core23ResolvedAddressLessThanclERK21grpc_resolved_addressS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(132) %i.o, ptr noundef nonnull align 4 dereferenceable(132) %.sroa.04.08.i)
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.e
  br i1 %i.p, label %.noexc.thread, label %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE17_M_insert_unique_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_ESt23_Rb_tree_const_iteratorIS0_EOT_RT0_.exit.i

.noexc:                                           ; preds = %.noexc9
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !172  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE17_M_insert_unique_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_ESt23_Rb_tree_const_iteratorIS0_EOT_RT0_.exit.i, label %.noexc.thread

.noexc.thread:                                    ; preds = %.noexc11, %._crit_edge.thread.i.i, %.noexc
  %.sroa.12.2.i18 = phi ptr [ %i.q, %.noexc ], [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %.noexc11 ] ; 3 uses
  %i.r = icmp eq ptr %.sroa.12.2.i18, %i.a
  br i1 %i.r, label %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc.thread
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i18, i64 32
  %i.t = invoke noundef zeroext i1 @_ZNK9grpc_core23ResolvedAddressLessThanclERK21grpc_resolved_addressS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(132) %.sroa.04.08.i, ptr noundef nonnull align 4 dereferenceable(132) %i.s)
          to label %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i unwind label %.loopexit.split-lp

_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.f, %.noexc.thread
  %i.u = phi i1 [ true, %.noexc.thread ], [ %i.t, %bb.f ]
  %i.v = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #33
          to label %.noexc6 unwind label %.loopexit.split-lp ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.w, ptr noundef nonnull align 4 dereferenceable(132) %.sroa.04.08.i, i64 132, i1 false), !tbaa.struct !227
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %.sroa.12.2.i18, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #32
  %i.x = load i64, ptr %i.e, align 8, !tbaa !86
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.e, align 8, !tbaa !86
  br label %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE17_M_insert_unique_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_ESt23_Rb_tree_const_iteratorIS0_EOT_RT0_.exit.i

_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE17_M_insert_unique_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_ESt23_Rb_tree_const_iteratorIS0_EOT_RT0_.exit.i: ; preds = %.noexc11, %.noexc6, %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 132 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %2
  br i1 %.not.i, label %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE22_M_insert_range_uniqueIN9__gnu_cxx17__normal_iteratorIPKS0_St6vectorIS0_S5_EEEEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESG_SG_.exit, label %thread-pre-split, !llvm.loop !483

_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE22_M_insert_range_uniqueIN9__gnu_cxx17__normal_iteratorIPKS0_St6vectorIS0_S5_EEEEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESG_SG_.exit: ; preds = %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE17_M_insert_unique_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_ESt23_Rb_tree_const_iteratorIS0_EOT_RT0_.exit.i, %bb.a
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.f, %_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, %bb.b, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt8_Rb_treeI21grpc_resolved_addressS0_St9_IdentityIS0_EN9grpc_core23ResolvedAddressLessThanESaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  resume { ptr, i32 } %lpad.phi
}

declare noundef zeroext i1 @_ZNK9grpc_core23ResolvedAddressLessThanclERK21grpc_resolved_addressS3_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 4 dereferenceable(132), ptr noundef nonnull align 4 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_18RingHash16RingHashEndpoint23UpdateChildPolicyLockedEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc_core::EndpointAddresses", align 8 ; 7 uses
  %3 = alloca %class.anon.310, align 1            ; 3 uses
  %4 = alloca %class.anon.310, align 1            ; 3 uses
  %5 = alloca %class.anon.310, align 1            ; 3 uses
  %6 = alloca %class.anon.310, align 1            ; 3 uses
  %7 = alloca %class.anon.310, align 1            ; 3 uses
  %8 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %9 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  %10 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.287", align 8  ; 13 uses
  %12 = alloca [1 x %"class.grpc_core::experimental::Json"], align 8 ; 10 uses
  %13 = alloca %"class.std::map.292", align 8     ; 14 uses
  %14 = alloca [1 x %"struct.std::pair.298"], align 8 ; 10 uses
  %15 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %16 = alloca %"class.std::map.292", align 8     ; 12 uses
  %17 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %18 = alloca %"struct.grpc_core::LoadBalancingPolicy::UpdateArgs", align 8 ; 20 uses
  %19 = alloca %"struct.grpc_core::LoadBalancingPolicy::UpdateArgs", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.a = load atomic ptr, ptr @_ZN9grpc_core17CoreConfiguration7config_E acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN9grpc_core17CoreConfiguration3GetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(1928) ptr @_ZN9grpc_core17CoreConfiguration19BuildNewAndMaybeSetEv()
  br label %_ZN9grpc_core17CoreConfiguration3GetEv.exit

_ZN9grpc_core17CoreConfiguration3GetEv.exit:      ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1712
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !234, !alias.scope !494
  %i.j = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %15, ptr noundef nonnull align 8 dereferenceable(48) %16) #32 ; 0 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA11_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef nonnull align 1 dereferenceable(11) @.str.38, ptr noundef nonnull align 8 dereferenceable(56) %15)
          to label %.lr.ph.i.i unwind label %bb.x

.lr.ph.i.i:                                       ; preds = %_ZN9grpc_core17CoreConfiguration3GetEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i32 0, ptr %i.k, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.k, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.k, ptr %i.n, align 8, !tbaa !85
end_hunk_0
