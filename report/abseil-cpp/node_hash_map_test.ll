Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/node_hash_map_test?download=true
inline.NumInlined: 21966
inline.NumDeleted: 5252
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %.05.i = phi i32 [ 10, %bb.a ], [ %i.ai, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i ] ; 2 uses
  %i.e = invoke i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %.noexc unwind label %.loopexit205 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %.sroa.11183.0, %.sroa.18.1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i64 %i.e, ptr %.sroa.11183.0, align 4
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i

bb.d:                                             ; preds = %.noexc
  %i.f = ptrtoint ptr %.sroa.11183.0 to i64       ; 2 uses
  %i.g = ptrtoint ptr %.sroa.0177.1 to i64        ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #35
          to label %.noexc83 unwind label %.loopexit.split-lp

.noexc83:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.n, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38
          to label %.noexc84 unwind label %.loopexit205 ; 8 uses

.noexc84:                                         ; preds = %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  store i64 %i.e, ptr %i.q, align 4
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0177.1, %.sroa.11183.0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc84
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.f, -8
  %i.t = sub i64 %i.s, %i.g                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  %i.w = sub i64 %i.g, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader321, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %.sroa.0177.1, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.sroa.0177.1, i64 %i.aa ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5290)
  call void @llvm.experimental.noalias.scope.decl(metadata !5293)
  %i.ab = getelementptr i8, ptr %next.gep309, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep309, align 4, !alias.scope !5293, !noalias !5290
  %wide.load310 = load <2 x i64>, ptr %i.ab, align 4, !alias.scope !5293, !noalias !5290
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !5290, !noalias !5293
  store <2 x i64> %wide.load310, ptr %i.ac, align 4, !alias.scope !5290, !noalias !5293
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !5295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader321

.lr.ph.i.i.i.i.i.i.i.i.preheader321:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0177.1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader321, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader321 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader321 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5290)
  call void @llvm.experimental.noalias.scope.decl(metadata !5293)
  %i.ae = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 4, !alias.scope !5293, !noalias !5290
  store i64 %i.ae, ptr %.012.i.i.i.i.i.i.i.i, align 4, !alias.scope !5290, !noalias !5293
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %.sroa.11183.0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !5296

_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc84
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.noexc84 ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i.i = icmp eq ptr %.sroa.0177.1, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.1, i64 noundef %i.h) #36
  br label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i

_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0177.2 = phi ptr [ %i.p, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0177.1, %bb.c ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11183.0, %bb.c ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %i.ah, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.18.1, %bb.c ] ; 3 uses
  %.sroa.11183.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, i64 8 ; 3 uses
  %i.ai = add nsw i32 %.05.i, -1
  %i.aj = icmp samesign ugt i32 %.05.i, 1
  br i1 %i.aj, label %bb.b, label %bb.g, !llvm.loop !5008

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ak = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.am = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !2418
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !2420
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.aq, align 8, !tbaa !2422
  %.not225 = icmp eq ptr %.sroa.0177.2, %.sroa.11183.1 ; 2 uses
  br i1 %.not225, label %.critedge77, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.h

.loopexit205:                                     ; preds = %bb.b, %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.1, %bb.b ], [ %.sroa.11183.0, %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.h:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.0174.0226 = phi ptr [ %.sroa.0177.2, %.lr.ph ], [ %i.cr, %bb.y ] ; 3 uses
  %i.as = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE4findIiEENSC_8iteratorERS9_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0174.0226)
          to label %.noexc85 unwind label %bb.l

.noexc85:                                         ; preds = %bb.h
  %i.at = extractvalue { ptr, ptr } %i.as, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit.thread: ; preds = %.noexc85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.m

.preheader.preheader.i:                           ; preds = %.noexc85
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !398, !noalias !5297 ; 2 uses
  %i.aw = icmp slt i8 %i.av, -1
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.ax = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.au, %.preheader.preheader.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !398, !noalias !5297 ; 2 uses
  %i.ba = icmp slt i8 %i.az, -1
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !2485

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.sroa.012.0.i = phi ptr [ %i.au, %.preheader.preheader.i ], [ %i.ay, %.lr.ph.i.i.i.i ]
  %i.bb = phi i8 [ %i.av, %.preheader.preheader.i ], [ %i.az, %.lr.ph.i.i.i.i ]
  %i.bc = icmp eq i8 %i.bb, -1
  br i1 %i.bc, label %bb.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit, !prof !227

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit: ; preds = %bb.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink22.i = phi ptr [ %.sroa.012.0.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ], [ null, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.bm, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i ], [ %i.at, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !398 ; 2 uses
  %i.bf = icmp slt i8 %i.be, -1
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.bg = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %i.bd, %.lr.ph.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !398 ; 2 uses
  %i.bj = icmp slt i8 %i.bi, -1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !2485

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.bh, %.lr.ph.i.i.i ]
  %i.bk = phi i8 [ %i.be, %.lr.ph.i ], [ %i.bi, %.lr.ph.i.i.i ]
  %i.bl = icmp eq i8 %i.bk, -1
  br i1 %i.bl, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i, !prof !227

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.j ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.bm = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i86 = icmp eq ptr %.sroa.02.2.i, %.sink22.i
  br i1 %.not.i86, label %bb.k, label %.lr.ph.i, !llvm.loop !5300

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.288, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.m

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit.thread, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bn = load i8, ptr %3, align 8, !tbaa !135, !range !26, !noundef !27
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.critedge, label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.m:                                             ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit.thread
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.z

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.br = load ptr, ptr %i.ar, align 8, !tbaa !143 ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.p, %bb.o
  %i.bt = phi ptr [ %i.bs, %bb.p ], [ @.str.160, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.bt)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.bu = load ptr, ptr %4, align 8, !tbaa !144   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(128) %i.bu) #33, !inline_history !146
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !143 ; 4 uses
  %.not.i.i90 = icmp eq ptr %i.by, null
  br i1 %.not.i.i90, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !35
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 32) #36
  br label %bb.aa

bb.t:                                             ; preds = %bb.n
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit93

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #33
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.cf, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.ch = load ptr, ptr %4, align 8, !tbaa !144   ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i91, label %_ZN7testing7MessageD2Ev.exit93, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92: ; preds = %bb.w
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #33, !inline_history !146
  br label %_ZN7testing7MessageD2Ev.exit93

_ZN7testing7MessageD2Ev.exit93:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92, %bb.w, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %.pn, %bb.w ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  br label %bb.z

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !143 ; 4 uses
  %.not.i.i94 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i94, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95: ; preds = %bb.x
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #36
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0174.0226, i64 8
  %.not = icmp eq ptr %.sroa.0174.0226, %.0.lcssa.i.i.i.i.i.i.i.i.pn
  br i1 %.not, label %.critedge77, label %bb.h

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit93, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit93 ], [ %i.bq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.bq

bb.aa:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.loopexit

.critedge77:                                      ; preds = %bb.y, %bb.g
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE12insert_rangeIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEvT_SL_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.sroa.0177.2, ptr nonnull %.sroa.11183.1)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEvT_SL_.exit.preheader unwind label %bb.ab

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEvT_SL_.exit.preheader: ; preds = %.critedge77
  br i1 %.not225, label %.loopexit, label %.lr.ph229

.lr.ph229:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEvT_SL_.exit.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge77
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ac:                                            ; preds = %.lr.ph229, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEvT_SL_.exit
  %.sroa.0168.0228 = phi ptr [ %.sroa.0177.2, %.lr.ph229 ], [ %i.gq, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEvT_SL_.exit ] ; 5 uses
  %i.cx = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE4findIiEENSC_8iteratorERS9_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0168.0228)
          to label %.noexc111 unwind label %bb.ah ; 2 uses

.noexc111:                                        ; preds = %bb.ac
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 3 uses
  %i.cz = extractvalue { ptr, ptr } %i.cx, 1
  %.not.i100 = icmp eq ptr %i.cy, null
  br i1 %.not.i100, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112.thread, label %.preheader.preheader.i101

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112.thread: ; preds = %.noexc111
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 1, ptr %i.c, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ag

.preheader.preheader.i101:                        ; preds = %.noexc111
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 3 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !398, !noalias !5301 ; 2 uses
  %i.dc = icmp slt i8 %i.db, -1
  br i1 %i.dc, label %.lr.ph.i.i.i.i110, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i102

.lr.ph.i.i.i.i110:                                ; preds = %.preheader.preheader.i101, %.lr.ph.i.i.i.i110
  %i.dd = phi ptr [ %i.de, %.lr.ph.i.i.i.i110 ], [ %i.da, %.preheader.preheader.i101 ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 3 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !398, !noalias !5301 ; 2 uses
  %i.dg = icmp slt i8 %i.df, -1
  br i1 %i.dg, label %.lr.ph.i.i.i.i110, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i102, !llvm.loop !2485

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i102: ; preds = %.lr.ph.i.i.i.i110, %.preheader.preheader.i101
  %.sroa.012.0.i103 = phi ptr [ %i.da, %.preheader.preheader.i101 ], [ %i.de, %.lr.ph.i.i.i.i110 ]
  %i.dh = phi i8 [ %i.db, %.preheader.preheader.i101 ], [ %i.df, %.lr.ph.i.i.i.i110 ]
  %i.di = icmp eq i8 %i.dh, -1
  br i1 %i.di, label %bb.ad, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112, !prof !227

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i102
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112: ; preds = %bb.ad, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i102
  %.sink22.i106 = phi ptr [ %.sroa.012.0.i103, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i102 ], [ null, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 1, ptr %i.c, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i119
  %.09.i115 = phi i64 [ %i.ds, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i119 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112 ] ; 2 uses
  %.sroa.02.07.i116 = phi ptr [ %.sroa.02.2.i120, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i119 ], [ %i.cy, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i116, i64 1 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !398 ; 2 uses
  %i.dl = icmp slt i8 %i.dk, -1
  br i1 %i.dl, label %.lr.ph.i.i.i123, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i117

.lr.ph.i.i.i123:                                  ; preds = %.lr.ph.i114, %.lr.ph.i.i.i123
  %i.dm = phi ptr [ %i.dn, %.lr.ph.i.i.i123 ], [ %i.dj, %.lr.ph.i114 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1 ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !398 ; 2 uses
  %i.dp = icmp slt i8 %i.do, -1
  br i1 %i.dp, label %.lr.ph.i.i.i123, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i117, !llvm.loop !2485

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i117: ; preds = %.lr.ph.i.i.i123, %.lr.ph.i114
  %.sroa.02.1.i118 = phi ptr [ %i.dj, %.lr.ph.i114 ], [ %i.dn, %.lr.ph.i.i.i123 ]
  %i.dq = phi i8 [ %i.dk, %.lr.ph.i114 ], [ %i.do, %.lr.ph.i.i.i123 ]
  %i.dr = icmp eq i8 %i.dq, -1
  br i1 %i.dr, label %bb.ae, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i119, !prof !227

bb.ae:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i117
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i119

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i119: ; preds = %bb.ae, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i117
  %.sroa.02.2.i120 = phi ptr [ null, %bb.ae ], [ %.sroa.02.1.i118, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i117 ] ; 2 uses
  %i.ds = add nuw nsw i64 %.09.i115, 1            ; 2 uses
  %.not.i121 = icmp eq ptr %.sroa.02.2.i120, %.sink22.i106
  br i1 %.not.i121, label %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit, label %.lr.ph.i114, !llvm.loop !5300

_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i119
  store i64 %i.ds, ptr %i.d, align 8, !tbaa !34
  %i.dt = icmp eq i64 %.09.i115, 0
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit127 unwind label %bb.ai

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit112.thread, %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.288, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit127 unwind label %bb.ai

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit127: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.du = load i8, ptr %6, align 8, !tbaa !135, !range !26, !noundef !27
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %.critedge79, label %bb.aj

bb.ah:                                            ; preds = %bb.ac
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.ax

bb.aj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.dy = load ptr, ptr %i.cs, align 8, !tbaa !143 ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i128, label %_ZNK7testing15AssertionResult15failure_messageEv.exit129, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit129

_ZNK7testing15AssertionResult15failure_messageEv.exit129: ; preds = %bb.al, %bb.ak
  %i.ea = phi ptr [ %i.dz, %bb.al ], [ @.str.160, %bb.ak ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.ea)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit129
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.eb = load ptr, ptr %7, align 8, !tbaa !144   ; 3 uses
  %.not.i.i130 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i130, label %_ZN7testing7MessageD2Ev.exit132, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131: ; preds = %bb.an
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !62
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(128) %i.eb) #33, !inline_history !146
  br label %_ZN7testing7MessageD2Ev.exit132

_ZN7testing7MessageD2Ev.exit132:                  ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ef = load ptr, ptr %i.cs, align 8, !tbaa !143 ; 4 uses
  %.not.i.i133 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i133, label %.critedge81, label %bb.ao

bb.ao:                                            ; preds = %_ZN7testing7MessageD2Ev.exit132
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !30 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134: ; preds = %bb.ao
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !35
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 32) #36
  br label %.critedge81

bb.ap:                                            ; preds = %bb.aj
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit140

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit129
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.am
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #33
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn62 = phi { ptr, i32 } [ %i.en, %bb.ar ], [ %i.em, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.eo = load ptr, ptr %7, align 8, !tbaa !144   ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i138, label %_ZN7testing7MessageD2Ev.exit140, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139: ; preds = %bb.as
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !62
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #33, !inline_history !146
  br label %_ZN7testing7MessageD2Ev.exit140

_ZN7testing7MessageD2Ev.exit140:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139, %bb.as, %bb.ap
  %.pn62.pn = phi { ptr, i32 } [ %i.el, %bb.ap ], [ %.pn62, %bb.as ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  br label %bb.ax

.critedge79:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit127
  %i.es = load ptr, ptr %i.cs, align 8, !tbaa !143 ; 4 uses
  %.not.i.i141 = icmp eq ptr %i.es, null
  br i1 %.not.i.i141, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.critedge79
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !30 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142: ; preds = %bb.at
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !35
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 32) #36
  br label %bb.au

bb.au:                                            ; preds = %.critedge79, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.ey = load ptr, ptr %i.cz, align 8, !tbaa !1168
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0168.0228, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !133, !noalias !5304
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !133, !noalias !5304
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ay

end_hunk_0
begin_hunk_1_@_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE19GetSetUpCaseOrSuiteEPKci:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 533)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.258, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !62
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !62
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.582", align 8    ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::NodeHashMapPolicy<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %"struct.std::pair.818", align 8    ; 3 uses
  %4 = alloca %"class.std::vector.803", align 8   ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 12 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaISA_EEEiN4absl12lts_2026052618container_internal9GeneratorISA_vEEET_SJ_T0_T1_(ptr nonnull %4, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.h = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.f, ptr %i.j, align 8, !tbaa !2418
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.h, ptr %i.k, align 8, !tbaa !2420
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !2422
  %i.m = load ptr, ptr %4, align 8, !tbaa !2091   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2091 ; 2 uses
  %.not201 = icmp eq ptr %i.m, %i.o
  br i1 %.not201, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.d:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.0172.0202 = phi ptr [ %i.m, %.lr.ph ], [ %i.bq, %bb.u ] ; 2 uses
  %i.r = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE4findIS9_EENSI_8iteratorERSF_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0172.0202)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit.thread: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

.preheader.preheader.i:                           ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !398, !noalias !5316 ; 2 uses
  %i.v = icmp slt i8 %i.u, -1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %.preheader.preheader.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !398, !noalias !5316 ; 2 uses
  %i.z = icmp slt i8 %i.y, -1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !2554

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.sroa.012.0.i = phi ptr [ %i.t, %.preheader.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i ]
  %i.aa = phi i8 [ %i.u, %.preheader.preheader.i ], [ %i.y, %.lr.ph.i.i.i.i ]
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit, !prof !227

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit: ; preds = %bb.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink22.i = phi ptr [ %.sroa.012.0.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ], [ null, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i ], [ %i.s, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !398 ; 2 uses
  %i.ae = icmp slt i8 %i.ad, -1
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.ac, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !398 ; 2 uses
  %i.ai = icmp slt i8 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !2554

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.i.i ]
  %i.aj = phi i8 [ %i.ad, %.lr.ph.i ], [ %i.ah, %.lr.ph.i.i.i ]
  %i.ak = icmp eq i8 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i, !prof !227

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i: ; preds = %bb.f, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.f ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.al = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i83 = icmp eq ptr %.sroa.02.2.i, %.sink22.i
  br i1 %.not.i83, label %bb.g, label %.lr.ph.i, !llvm.loop !5319

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i
  store i64 %i.al, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.288, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.am = load i8, ptr %6, align 8, !tbaa !135, !range !26, !noundef !27
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.i:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.v

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !143 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.as = phi ptr [ %i.ar, %bb.l ], [ @.str.160, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.as)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.at = load ptr, ptr %7, align 8, !tbaa !144   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.at, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #33, !inline_history !146
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !143 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i87, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !30 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !35
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #36
  br label %bb.w

bb.p:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit90

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.r ], [ %i.be, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.bg = load ptr, ptr %7, align 8, !tbaa !144   ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #33, !inline_history !146
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %.pn, %bb.s ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  br label %bb.v

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !143 ; 4 uses
  %.not.i.i91 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i91, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92: ; preds = %bb.t
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !35
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #36
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0172.0202, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.o
  br i1 %.not, label %.critedge77, label %bb.d

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bo

bb.w:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.loopexit

.critedge77:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %4, align 8, !tbaa !2091  ; 3 uses
  %.pre215 = load ptr, ptr %i.n, align 8, !tbaa !2091 ; 3 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre215
  br i1 %.not4.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge77
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.noexc97, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.bt, %.noexc97 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !5320
  store ptr %5, ptr %2, align 8, !tbaa !3117, !noalias !5320
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !5323
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32
  store ptr %.sroa.01.05.i.i, ptr %1, align 8, !tbaa !143, !alias.scope !5328, !noalias !5333
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !143, !alias.scope !5328, !noalias !5333
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRSF_EESQ_EEESE_INSI_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.818") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.01.05.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %.noexc97 unwind label %bb.y

.noexc97:                                         ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !5323
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !5320
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 64 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.bt, %.pre215
  br i1 %.not.i.i96, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit, label %bb.x, !llvm.loop !3131

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit: ; preds = %.noexc97
  %.pre216 = load ptr, ptr %4, align 8, !tbaa !2091
  %.pre217 = load ptr, ptr %i.n, align 8, !tbaa !2091
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit, %.critedge77
  %i.bu = phi ptr [ %.pre217, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit ], [ %.pre215, %.critedge77 ] ; 2 uses
  %i.bv = phi ptr [ %.pre216, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit ], [ %.pre, %.critedge77 ] ; 2 uses
  %.not186203 = icmp eq ptr %i.bv, %i.bu
  br i1 %.not186203, label %.loopexit, label %.lr.ph205

.lr.ph205:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.z:                                             ; preds = %.lr.ph205, %bb.bk
  %.sroa.0166.0204 = phi ptr [ %i.bv, %.lr.ph205 ], [ %i.ga, %bb.bk ] ; 5 uses
  %i.cb = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE4findIS9_EENSI_8iteratorERSF_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0166.0204)
          to label %.noexc109 unwind label %bb.ae ; 2 uses

.noexc109:                                        ; preds = %bb.z
  %i.cc = extractvalue { ptr, ptr } %i.cb, 0      ; 3 uses
  %i.cd = extractvalue { ptr, ptr } %i.cb, 1
  %.not.i98 = icmp eq ptr %i.cc, null
  br i1 %.not.i98, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110.thread, label %.preheader.preheader.i99

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110.thread: ; preds = %.noexc109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 1, ptr %i.c, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ad

.preheader.preheader.i99:                         ; preds = %.noexc109
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !398, !noalias !5336 ; 2 uses
  %i.cg = icmp slt i8 %i.cf, -1
  br i1 %i.cg, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100

.lr.ph.i.i.i.i108:                                ; preds = %.preheader.preheader.i99, %.lr.ph.i.i.i.i108
  %i.ch = phi ptr [ %i.ci, %.lr.ph.i.i.i.i108 ], [ %i.ce, %.preheader.preheader.i99 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !398, !noalias !5336 ; 2 uses
  %i.ck = icmp slt i8 %i.cj, -1
  br i1 %i.ck, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100, !llvm.loop !2554

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100: ; preds = %.lr.ph.i.i.i.i108, %.preheader.preheader.i99
  %.sroa.012.0.i101 = phi ptr [ %i.ce, %.preheader.preheader.i99 ], [ %i.ci, %.lr.ph.i.i.i.i108 ]
  %i.cl = phi i8 [ %i.cf, %.preheader.preheader.i99 ], [ %i.cj, %.lr.ph.i.i.i.i108 ]
  %i.cm = icmp eq i8 %i.cl, -1
  br i1 %i.cm, label %bb.aa, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110, !prof !227

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110: ; preds = %bb.aa, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  %.sink22.i104 = phi ptr [ %.sroa.012.0.i101, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100 ], [ null, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 1, ptr %i.c, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i117
  %.09.i113 = phi i64 [ %i.cw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i117 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110 ] ; 2 uses
  %.sroa.02.07.i114 = phi ptr [ %.sroa.02.2.i118, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i117 ], [ %i.cc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i114, i64 1 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !398 ; 2 uses
  %i.cp = icmp slt i8 %i.co, -1
  br i1 %i.cp, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115

.lr.ph.i.i.i121:                                  ; preds = %.lr.ph.i112, %.lr.ph.i.i.i121
  %i.cq = phi ptr [ %i.cr, %.lr.ph.i.i.i121 ], [ %i.cn, %.lr.ph.i112 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !398 ; 2 uses
  %i.ct = icmp slt i8 %i.cs, -1
  br i1 %i.ct, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115, !llvm.loop !2554

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115: ; preds = %.lr.ph.i.i.i121, %.lr.ph.i112
  %.sroa.02.1.i116 = phi ptr [ %i.cn, %.lr.ph.i112 ], [ %i.cr, %.lr.ph.i.i.i121 ]
  %i.cu = phi i8 [ %i.co, %.lr.ph.i112 ], [ %i.cs, %.lr.ph.i.i.i121 ]
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.ab, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i117, !prof !227

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i117

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i117: ; preds = %bb.ab, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  %.sroa.02.2.i118 = phi ptr [ null, %bb.ab ], [ %.sroa.02.1.i116, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ] ; 2 uses
  %i.cw = add nuw nsw i64 %.09.i113, 1            ; 2 uses
  %.not.i119 = icmp eq ptr %.sroa.02.2.i118, %.sink22.i104
  br i1 %.not.i119, label %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKSA_SA_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESM_SM_.exit, label %.lr.ph.i112, !llvm.loop !5319

_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKSA_SA_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESM_SM_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE8iteratorppEv.exit.i117
  store i64 %i.cw, ptr %i.d, align 8, !tbaa !34
  %i.cx = icmp eq i64 %.09.i113, 0
  br i1 %i.cx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKSA_SA_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESM_SM_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.af

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110.thread, %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKSA_SA_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESM_SM_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.288, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.af

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.cy = load i8, ptr %9, align 8, !tbaa !135, !range !26, !noundef !27
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.critedge79, label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.at

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.dc = load ptr, ptr %i.bw, align 8, !tbaa !143 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i126, label %_ZNK7testing15AssertionResult15failure_messageEv.exit127, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit127

_ZNK7testing15AssertionResult15failure_messageEv.exit127: ; preds = %bb.ai, %bb.ah
  %i.de = phi ptr [ %i.dd, %bb.ai ], [ @.str.160, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.de)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.df = load ptr, ptr %10, align 8, !tbaa !144  ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.df, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ak
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #33, !inline_history !146
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !143 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i131, label %.critedge81, label %bb.al

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !30 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.al
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !35
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #36
  br label %.critedge81

bb.am:                                            ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit138

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #33
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn62 = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.dq, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.ds = load ptr, ptr %10, align 8, !tbaa !144  ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i136, label %_ZN7testing7MessageD2Ev.exit138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.ap
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(128) %i.ds) #33, !inline_history !146
  br label %_ZN7testing7MessageD2Ev.exit138

_ZN7testing7MessageD2Ev.exit138:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, %bb.ap, %bb.am
  %.pn62.pn = phi { ptr, i32 } [ %i.dp, %bb.am ], [ %.pn62, %bb.ap ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  br label %bb.at

.critedge79:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  %i.dw = load ptr, ptr %i.bw, align 8, !tbaa !143 ; 4 uses
  %.not.i.i139 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i139, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge79
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !30 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140: ; preds = %bb.aq
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !35
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef 32) #36
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge79, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ec = load ptr, ptr %i.cd, align 8, !tbaa !2091 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0166.0204, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0166.0204, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !36, !noalias !5339 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !36, !noalias !5339
  %i.ej = icmp eq i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ek = icmp eq i64 %i.eg, 0
end_hunk_1
