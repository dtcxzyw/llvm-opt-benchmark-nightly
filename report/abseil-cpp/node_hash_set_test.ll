Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/node_hash_set_test?download=true
inline.NumInlined: 28154
inline.NumDeleted: 4901
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_setIiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEEE8TestBodyEv:bb.a
  %i.h = load i32, ptr %i.g, align 4, !tbaa !94
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw i64 %i.i, 32
  %i.k = zext i32 %i.f to i128
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %i.j, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = shl nuw i128 %i.k, 96
  %i.r = shl nuw nsw i128 %i.p, 32                ; 2 uses
  %i.s = trunc i128 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !94
  %i.v = zext i32 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v
  %.masked.i.i.i.i.i.i.i = and i128 %i.r, 79228162495817593519834398720
  %i.x = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.q
  %i.y = zext i64 %i.w to i128
  %i.z = add nuw nsw i128 %i.y, 1442695040888963407 ; 2 uses
  %i.aa = add i128 %i.x, %i.z
  %i.ab = lshr i128 %i.aa, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ab to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.ac = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.ad = shl nuw i128 %i.ac, 64
  %i.ae = and i128 %i.z, 18446744073709551615
  %i.af = or disjoint i128 %i.ad, %i.ae
  %i.ag = mul i128 %i.af, 47026247687942121848144207491837523525
  %i.ah = add i128 %i.ag, 1442695040888963407     ; 2 uses
  %i.ai = trunc i128 %i.ah to i64
  %i.aj = lshr i128 %i.ah, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.aj to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.noexc

.noexc:                                           ; preds = %bb.b, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i
  %.sroa.8189.0 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i.i, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ]
  %.sroa.0187.0 = phi i64 [ %i.ai, %bb.b ], [ %i.aq, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ]
  %.sroa.0170.2 = phi ptr [ null, %bb.b ], [ %.sroa.0170.3, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 7 uses
  %.sroa.11176.0 = phi ptr [ null, %bb.b ], [ %.sroa.11176.1, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 6 uses
  %.sroa.17.2 = phi ptr [ null, %bb.b ], [ %.sroa.17.3, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 2 uses
  %.04.i = phi i32 [ 10, %bb.b ], [ %i.bk, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 2 uses
  %i.ak = zext i64 %.sroa.8189.0 to i128
  %i.al = shl nuw i128 %i.ak, 64
  %i.am = zext i64 %.sroa.0187.0 to i128
  %i.an = or disjoint i128 %i.al, %i.am
  %i.ao = mul i128 %i.an, 47026247687942121848144207491837523525
  %i.ap = add i128 %i.ao, 1442695040888963407     ; 2 uses
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = lshr i128 %i.ap, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.ar to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.as = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.at = xor i64 %.narrow.i.i.i.i.i.i, %i.aq     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.at, i64 %i.at, i64 %i.as)
  %i.au = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.av = trunc nuw nsw i64 %i.au to i32          ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.11176.0, %.sroa.17.2
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i32 %i.av, ptr %.sroa.11176.0, align 4, !tbaa !94
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i

bb.d:                                             ; preds = %.noexc
  %i.aw = ptrtoint ptr %.sroa.11176.0 to i64
  %i.ax = ptrtoint ptr %.sroa.0170.2 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #35
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #38
          to label %.noexc78 unwind label %.loopexit203 ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i32 %i.av, ptr %i.bh, align 4, !tbaa !94
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %.sroa.0170.2, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.f, %.noexc78
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0170.2, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.2, i64 noundef %i.ay) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i

_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0170.3 = phi ptr [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0170.2, %bb.c ] ; 9 uses
  %.pn199 = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11176.0, %bb.c ] ; 3 uses
  %.sroa.17.3 = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.17.2, %bb.c ] ; 3 uses
  %.sroa.11176.1 = getelementptr inbounds nuw i8, ptr %.pn199, i64 4 ; 3 uses
  %i.bk = add nsw i32 %.04.i, -1
  %i.bl = icmp samesign ugt i32 %.04.i, 1
  br i1 %i.bl, label %.noexc, label %bb.h, !llvm.loop !6050

bb.h:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.bm = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.bo = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %1, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bm, ptr %i.bq, align 8, !tbaa !1483
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bo, ptr %i.br, align 8, !tbaa !1485
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.bs, align 8, !tbaa !1487
  %.not217 = icmp eq ptr %.sroa.0170.3, %.sroa.11176.1 ; 2 uses
  br i1 %.not217, label %.critedge72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.i

.loopexit203:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.a, %bb.e
  %.sroa.0170.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.0170.2, %bb.e ]
  %.sroa.17.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11176.0, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.0165.0218 = phi ptr [ %.sroa.0170.3, %.lr.ph ], [ %i.dt, %bb.z ] ; 3 uses
  %i.bu = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE4findIiEENS9_8iteratorERKi(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0165.0218)
          to label %.noexc79 unwind label %bb.m

.noexc79:                                         ; preds = %bb.i
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit.thread: ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 0, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

.preheader.preheader.i:                           ; preds = %.noexc79
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !219, !noalias !6243 ; 2 uses
  %i.by = icmp slt i8 %i.bx, -1
  br i1 %i.by, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bw, %.preheader.preheader.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !219, !noalias !6243 ; 2 uses
  %i.cc = icmp slt i8 %i.cb, -1
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !1539

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.sroa.012.0.i = phi ptr [ %i.bw, %.preheader.preheader.i ], [ %i.ca, %.lr.ph.i.i.i.i ]
  %i.cd = phi i8 [ %i.bx, %.preheader.preheader.i ], [ %i.cb, %.lr.ph.i.i.i.i ]
  %i.ce = icmp eq i8 %i.cd, -1
  br i1 %i.ce, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit, !prof !218

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink22.i = phi ptr [ null, %bb.j ], [ %.sroa.012.0.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.co, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i ], [ %i.bv, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !219 ; 2 uses
  %i.ch = icmp slt i8 %i.cg, -1
  br i1 %i.ch, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.ci = phi ptr [ %i.cj, %.lr.ph.i.i.i ], [ %i.cf, %.lr.ph.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !219 ; 2 uses
  %i.cl = icmp slt i8 %i.ck, -1
  br i1 %i.cl, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !1539

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.cf, %.lr.ph.i ], [ %i.cj, %.lr.ph.i.i.i ]
  %i.cm = phi i8 [ %i.cg, %.lr.ph.i ], [ %i.ck, %.lr.ph.i.i.i ]
  %i.cn = icmp eq i8 %i.cm, -1
  br i1 %i.cn, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i, !prof !218

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i: ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.k ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.co = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i80 = icmp eq ptr %.sroa.02.2.i, %.sink22.i
  br i1 %.not.i80, label %bb.l, label %.lr.ph.i, !llvm.loop !6246

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i
  store i64 %i.co, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cp = load i8, ptr %2, align 8, !tbaa !190, !range !26, !noundef !27
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.n:                                             ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit.thread
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aa

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ct = load ptr, ptr %i.bt, align 8, !tbaa !198 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.cv = phi ptr [ %i.cu, %bb.q ], [ @.str.166, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 72, ptr noundef %i.cv)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cw = load ptr, ptr %3, align 8, !tbaa !199   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.da = load ptr, ptr %i.bt, align 8, !tbaa !198 ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.da, null
  br i1 %.not.i.i84, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !35
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 32) #36
  br label %bb.ab

bb.u:                                             ; preds = %bb.o
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit87

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.di, %bb.w ], [ %i.dh, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.dj = load ptr, ptr %3, align 8, !tbaa !199   ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i85, label %_ZN7testing7MessageD2Ev.exit87, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.x
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit87

_ZN7testing7MessageD2Ev.exit87:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  br label %bb.aa

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.dn = load ptr, ptr %i.bt, align 8, !tbaa !198 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i88, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !30 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89: ; preds = %bb.y
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !35
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 32) #36
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0165.0218, i64 4
  %.not = icmp eq ptr %.sroa.0165.0218, %.pn199
  br i1 %.not, label %.critedge72, label %bb.i

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit87, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit87 ], [ %i.cs, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.bn

bb.ab:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.loopexit

.critedge72:                                      ; preds = %bb.z, %bb.h
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE12insert_rangeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.sroa.0170.3, ptr nonnull %.sroa.11176.1)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE6insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_SI_.exit.preheader unwind label %bb.ac

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE6insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_SI_.exit.preheader: ; preds = %.critedge72
  br i1 %.not217, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE6insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_SI_.exit.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge72
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %.lr.ph221, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE6insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_SI_.exit
  %.sroa.0159.0220 = phi ptr [ %.sroa.0170.3, %.lr.ph221 ], [ %i.gz, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE6insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_SI_.exit ] ; 5 uses
  %i.dx = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE4findIiEENS9_8iteratorERKi(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0159.0220)
          to label %.noexc105 unwind label %bb.ai ; 2 uses

.noexc105:                                        ; preds = %bb.ad
  %i.dy = extractvalue { ptr, ptr } %i.dx, 0      ; 3 uses
  %i.dz = extractvalue { ptr, ptr } %i.dx, 1
  %.not.i94 = icmp eq ptr %i.dy, null
  br i1 %.not.i94, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106.thread, label %.preheader.preheader.i95

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106.thread: ; preds = %.noexc105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 0, ptr %i.e, align 8, !tbaa !34
  br label %bb.ah

.preheader.preheader.i95:                         ; preds = %.noexc105
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !219, !noalias !6247 ; 2 uses
  %i.ec = icmp slt i8 %i.eb, -1
  br i1 %i.ec, label %.lr.ph.i.i.i.i104, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96

.lr.ph.i.i.i.i104:                                ; preds = %.preheader.preheader.i95, %.lr.ph.i.i.i.i104
  %i.ed = phi ptr [ %i.ee, %.lr.ph.i.i.i.i104 ], [ %i.ea, %.preheader.preheader.i95 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 3 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !219, !noalias !6247 ; 2 uses
  %i.eg = icmp slt i8 %i.ef, -1
  br i1 %i.eg, label %.lr.ph.i.i.i.i104, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96, !llvm.loop !1539

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96: ; preds = %.lr.ph.i.i.i.i104, %.preheader.preheader.i95
  %.sroa.012.0.i97 = phi ptr [ %i.ea, %.preheader.preheader.i95 ], [ %i.ee, %.lr.ph.i.i.i.i104 ]
  %i.eh = phi i8 [ %i.eb, %.preheader.preheader.i95 ], [ %i.ef, %.lr.ph.i.i.i.i104 ]
  %i.ei = icmp eq i8 %i.eh, -1
  br i1 %i.ei, label %bb.ae, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106, !prof !218

bb.ae:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106: ; preds = %bb.ae, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96
  %.sink22.i100 = phi ptr [ null, %bb.ae ], [ %.sroa.012.0.i97, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i113
  %.09.i109 = phi i64 [ %i.es, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i113 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106 ] ; 2 uses
  %.sroa.02.07.i110 = phi ptr [ %.sroa.02.2.i114, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i113 ], [ %i.dy, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i110, i64 1 ; 3 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !219 ; 2 uses
  %i.el = icmp slt i8 %i.ek, -1
  br i1 %i.el, label %.lr.ph.i.i.i117, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i111

.lr.ph.i.i.i117:                                  ; preds = %.lr.ph.i108, %.lr.ph.i.i.i117
  %i.em = phi ptr [ %i.en, %.lr.ph.i.i.i117 ], [ %i.ej, %.lr.ph.i108 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 3 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !219 ; 2 uses
  %i.ep = icmp slt i8 %i.eo, -1
  br i1 %i.ep, label %.lr.ph.i.i.i117, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i111, !llvm.loop !1539

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i111: ; preds = %.lr.ph.i.i.i117, %.lr.ph.i108
  %.sroa.02.1.i112 = phi ptr [ %i.ej, %.lr.ph.i108 ], [ %i.en, %.lr.ph.i.i.i117 ]
  %i.eq = phi i8 [ %i.ek, %.lr.ph.i108 ], [ %i.eo, %.lr.ph.i.i.i117 ]
  %i.er = icmp eq i8 %i.eq, -1
  br i1 %i.er, label %bb.af, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i113, !prof !218

bb.af:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i111
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i113

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i113: ; preds = %bb.af, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i111
  %.sroa.02.2.i114 = phi ptr [ null, %bb.af ], [ %.sroa.02.1.i112, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i111 ] ; 2 uses
  %i.es = add nuw nsw i64 %.09.i109, 1            ; 2 uses
  %.not.i115 = icmp eq ptr %.sroa.02.2.i114, %.sink22.i100
  br i1 %.not.i115, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyIiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIiEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit118, label %.lr.ph.i108, !llvm.loop !6246

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyIiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIiEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit118: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i113
  store i64 %i.es, ptr %i.e, align 8, !tbaa !34
  %i.et = icmp eq i64 %.09.i109, 0
  br i1 %i.et, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyIiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIiEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit118
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121 unwind label %bb.aj

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit106.thread, %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyIiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIiEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit118
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121 unwind label %bb.aj

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.eu = load i8, ptr %5, align 8, !tbaa !190, !range !26, !noundef !27
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.critedge74, label %bb.ak

bb.ai:                                            ; preds = %bb.ad
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.ay

bb.ak:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ey = load ptr, ptr %i.du, align 8, !tbaa !198 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i122, label %_ZNK7testing15AssertionResult15failure_messageEv.exit123, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit123

_ZNK7testing15AssertionResult15failure_messageEv.exit123: ; preds = %bb.am, %bb.al
  %i.fa = phi ptr [ %i.ez, %bb.am ], [ @.str.166, %bb.al ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 77, ptr noundef %i.fa)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.fb = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i124, label %_ZN7testing7MessageD2Ev.exit126, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.ao
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !62
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(128) %i.fb) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit126

_ZN7testing7MessageD2Ev.exit126:                  ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ff = load ptr, ptr %i.du, align 8, !tbaa !198 ; 4 uses
  %.not.i.i127 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i127, label %.critedge76, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit126
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !30 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128: ; preds = %bb.ap
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !35
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 32) #36
  br label %.critedge76

bb.aq:                                            ; preds = %bb.ak
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit134

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #33
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn59 = phi { ptr, i32 } [ %i.fn, %bb.as ], [ %i.fm, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.fo = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.at
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !62
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fo) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %bb.at, %bb.aq
  %.pn59.pn = phi { ptr, i32 } [ %i.fl, %bb.aq ], [ %.pn59, %bb.at ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  br label %bb.ay

.critedge74:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121
  %i.fs = load ptr, ptr %i.du, align 8, !tbaa !198 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i135, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge74
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !30 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.au
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !35
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 32) #36
  br label %bb.av

bb.av:                                            ; preds = %.critedge74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.fy = load ptr, ptr %i.dz, align 8, !tbaa !95 ; 2 uses
  %i.fz = load i32, ptr %.sroa.0159.0220, align 4, !tbaa !94, !noalias !6250
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !94, !noalias !6250
  %i.gb = icmp eq i32 %i.fz, %i.ga
  br i1 %i.gb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.az

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.237, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0159.0220, ptr noundef nonnull align 4 dereferenceable(4) %i.fy)
end_hunk_0
begin_hunk_1_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal10LookupTestENS0_11TemplateSelINS4_23gtest_suite_LookupTest_10EqualRangeEEENS0_5TypesINS3_13node_hash_setINS4_4EnumENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISC_EEEEJNSB_INS4_9EnumClassESD_SE_NSF_ISI_EEEEEEEE8RegisterEPKcNS0_12CodeLocationESO_SO_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EE:bb.a
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.hr = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ai ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.an
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hv = load i64, ptr %i.an, align 8, !tbaa !35
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ah ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.hx = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.w
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.hz = load i64, ptr %i.w, align 8, !tbaa !35
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ag ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %i.ib = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.c
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.id = load i64, ptr %i.c, align 8, !tbaa !35
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.af ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

bb.ap:                                            ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fr
  br i1 %i.ih, label %_ZN7testing8internal12CodeLocationD2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.ap
  %i.ii = load i64, ptr %i.fr, align 8, !tbaa !35
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #36
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

_ZN7testing8internal12CodeLocationD2Ev.exit115:   ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113 ], [ %i.if, %bb.ap ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13node_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISD_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13node_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISD_EEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISA_EEEEEE, i64 16), ptr %i.a, align 8, !tbaa !62
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISA_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISA_EEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::NodeHashSetPolicy<std::__cxx11::basic_string<char>>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::__cxx11::basic_string<char>>>::EmplaceDecomposable", align 8 ; 4 uses
  %2 = alloca %"struct.std::pair.636", align 8    ; 3 uses
  %3 = alloca %"class.std::vector", align 8       ; 13 uses
  %4 = alloca %"class.absl::lts_20260526::node_hash_set.420", align 8 ; 12 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEiN4absl12lts_2026052618container_internal9GeneratorIS7_vEEET_SG_T0_T1_(ptr nonnull %3, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.h = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.f, ptr %i.j, align 8, !tbaa !1483
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.h, ptr %i.k, align 8, !tbaa !1485
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !1487
  %i.m = load ptr, ptr %3, align 8, !tbaa !198    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !198  ; 2 uses
  %.not188 = icmp eq ptr %i.m, %i.o
  br i1 %.not188, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.d:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.0162.0189 = phi ptr [ %i.m, %.lr.ph ], [ %i.bq, %bb.u ] ; 2 uses
  %i.r = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE4findIS9_EENSF_8iteratorERKS9_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0162.0189)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit.thread: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

.preheader.preheader.i:                           ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !219, !noalias !6277 ; 2 uses
  %i.v = icmp slt i8 %i.u, -1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %.preheader.preheader.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !219, !noalias !6277 ; 2 uses
  %i.z = icmp slt i8 %i.y, -1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !1624

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.sroa.012.0.i = phi ptr [ %i.t, %.preheader.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i ]
  %i.aa = phi i8 [ %i.u, %.preheader.preheader.i ], [ %i.y, %.lr.ph.i.i.i.i ]
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit, !prof !218

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit: ; preds = %bb.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink22.i = phi ptr [ null, %bb.e ], [ %.sroa.012.0.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i ], [ %i.s, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !219 ; 2 uses
  %i.ae = icmp slt i8 %i.ad, -1
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.ac, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !219 ; 2 uses
  %i.ai = icmp slt i8 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !1624

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.i.i ]
  %i.aj = phi i8 [ %i.ad, %.lr.ph.i ], [ %i.ah, %.lr.ph.i.i.i ]
  %i.ak = icmp eq i8 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i, !prof !218

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i: ; preds = %bb.f, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.f ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.al = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i77 = icmp eq ptr %.sroa.02.2.i, %.sink22.i
  br i1 %.not.i77, label %bb.g, label %.lr.ph.i, !llvm.loop !6280

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i
  store i64 %i.al, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.am = load i8, ptr %5, align 8, !tbaa !190, !range !26, !noundef !27
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.i:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.v

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.as = phi ptr [ %i.ar, %bb.l ], [ @.str.166, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 72, ptr noundef %i.as)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.at = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.at, null
  br i1 %.not.i.i80, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !198 ; 4 uses
  %.not.i.i81 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i81, label %bb.w, label %bb.o

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
  br label %_ZN7testing7MessageD2Ev.exit84

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.r ], [ %i.be, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.bg = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i82, label %_ZN7testing7MessageD2Ev.exit84, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit84

_ZN7testing7MessageD2Ev.exit84:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83, %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %.pn, %bb.s ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  br label %bb.v

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !198 ; 4 uses
  %.not.i.i85 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86: ; preds = %bb.t
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !35
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #36
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0162.0189, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.o
  br i1 %.not, label %.critedge72, label %bb.d

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit84, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit84 ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bj

bb.w:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.loopexit

.critedge72:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %3, align 8, !tbaa !198   ; 3 uses
  %.pre202 = load ptr, ptr %i.n, align 8, !tbaa !198 ; 3 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre202
  br i1 %.not4.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge72, %.noexc91
  %.sroa.01.05.i.i = phi ptr [ %i.br, %.noexc91 ], [ %.pre, %.critedge72 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !6281
  store ptr %4, ptr %1, align 8, !tbaa !2904, !noalias !6281
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE19EmplaceDecomposableclIS9_JRS9_EEESt4pairINSF_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.636") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.05.i.i)
          to label %.noexc91 unwind label %bb.x

.noexc91:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !6281
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.br, %.pre202
  br i1 %.not.i.i90, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !2905

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit.loopexit: ; preds = %.noexc91
  %.pre203 = load ptr, ptr %3, align 8, !tbaa !198
  %.pre204 = load ptr, ptr %i.n, align 8, !tbaa !198
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit.loopexit, %.critedge72
  %i.bs = phi ptr [ %.pre204, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit.loopexit ], [ %.pre202, %.critedge72 ] ; 2 uses
  %i.bt = phi ptr [ %.pre203, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit.loopexit ], [ %.pre, %.critedge72 ] ; 2 uses
  %.not176190 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not176190, label %.loopexit, label %.lr.ph192

.lr.ph192:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEvT_SO_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.y:                                             ; preds = %.lr.ph192, %bb.bf
  %.sroa.0156.0191 = phi ptr [ %i.bt, %.lr.ph192 ], [ %i.ff, %bb.bf ] ; 5 uses
  %i.bx = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE4findIS9_EENSF_8iteratorERKS9_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0156.0191)
          to label %.noexc103 unwind label %bb.ad ; 2 uses

.noexc103:                                        ; preds = %bb.y
  %i.by = extractvalue { ptr, ptr } %i.bx, 0      ; 3 uses
  %i.bz = extractvalue { ptr, ptr } %i.bx, 1
  %.not.i92 = icmp eq ptr %i.by, null
  br i1 %.not.i92, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104.thread, label %.preheader.preheader.i93

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104.thread: ; preds = %.noexc103
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 1, ptr %i.c, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ac

.preheader.preheader.i93:                         ; preds = %.noexc103
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !219, !noalias !6284 ; 2 uses
  %i.cc = icmp slt i8 %i.cb, -1
  br i1 %i.cc, label %.lr.ph.i.i.i.i102, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94

.lr.ph.i.i.i.i102:                                ; preds = %.preheader.preheader.i93, %.lr.ph.i.i.i.i102
  %i.cd = phi ptr [ %i.ce, %.lr.ph.i.i.i.i102 ], [ %i.ca, %.preheader.preheader.i93 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !219, !noalias !6284 ; 2 uses
  %i.cg = icmp slt i8 %i.cf, -1
  br i1 %i.cg, label %.lr.ph.i.i.i.i102, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94, !llvm.loop !1624

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94: ; preds = %.lr.ph.i.i.i.i102, %.preheader.preheader.i93
  %.sroa.012.0.i95 = phi ptr [ %i.ca, %.preheader.preheader.i93 ], [ %i.ce, %.lr.ph.i.i.i.i102 ]
  %i.ch = phi i8 [ %i.cb, %.preheader.preheader.i93 ], [ %i.cf, %.lr.ph.i.i.i.i102 ]
  %i.ci = icmp eq i8 %i.ch, -1
  br i1 %i.ci, label %bb.z, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104, !prof !218

bb.z:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104: ; preds = %bb.z, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94
  %.sink22.i98 = phi ptr [ null, %bb.z ], [ %.sroa.012.0.i95, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 1, ptr %i.c, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i111
  %.09.i107 = phi i64 [ %i.cs, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i111 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104 ] ; 2 uses
  %.sroa.02.07.i108 = phi ptr [ %.sroa.02.2.i112, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i111 ], [ %i.by, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i108, i64 1 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !219 ; 2 uses
  %i.cl = icmp slt i8 %i.ck, -1
  br i1 %i.cl, label %.lr.ph.i.i.i115, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i109

.lr.ph.i.i.i115:                                  ; preds = %.lr.ph.i106, %.lr.ph.i.i.i115
  %i.cm = phi ptr [ %i.cn, %.lr.ph.i.i.i115 ], [ %i.cj, %.lr.ph.i106 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !219 ; 2 uses
  %i.cp = icmp slt i8 %i.co, -1
  br i1 %i.cp, label %.lr.ph.i.i.i115, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i109, !llvm.loop !1624

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i109: ; preds = %.lr.ph.i.i.i115, %.lr.ph.i106
  %.sroa.02.1.i110 = phi ptr [ %i.cj, %.lr.ph.i106 ], [ %i.cn, %.lr.ph.i.i.i115 ]
  %i.cq = phi i8 [ %i.ck, %.lr.ph.i106 ], [ %i.co, %.lr.ph.i.i.i115 ]
  %i.cr = icmp eq i8 %i.cq, -1
  br i1 %i.cr, label %bb.aa, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i111, !prof !218

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i109
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i111

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i111: ; preds = %bb.aa, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i109
  %.sroa.02.2.i112 = phi ptr [ null, %bb.aa ], [ %.sroa.02.1.i110, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i109 ] ; 2 uses
  %i.cs = add nuw nsw i64 %.09.i107, 1            ; 2 uses
  %.not.i113 = icmp eq ptr %.sroa.02.2.i112, %.sink22.i98
  br i1 %.not.i113, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISA_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit116, label %.lr.ph.i106, !llvm.loop !6280

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISA_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit116: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iteratorppEv.exit.i111
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !34
  %i.ct = icmp eq i64 %.09.i107, 0
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISA_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit116
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit119 unwind label %bb.ae

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104.thread, %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISA_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit116
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit119 unwind label %bb.ae

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit119: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.cu = load i8, ptr %8, align 8, !tbaa !190, !range !26, !noundef !27
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %.critedge74, label %bb.af

bb.ad:                                            ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.as

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.cy = load ptr, ptr %i.bu, align 8, !tbaa !198 ; 2 uses
  %.not.i.i120 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i120, label %_ZNK7testing15AssertionResult15failure_messageEv.exit121, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit121

_ZNK7testing15AssertionResult15failure_messageEv.exit121: ; preds = %bb.ah, %bb.ag
  %i.da = phi ptr [ %i.cz, %bb.ah ], [ @.str.166, %bb.ag ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 77, ptr noundef %i.da)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit121
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.db = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i.i122 = icmp eq ptr %i.db, null
  br i1 %.not.i.i122, label %_ZN7testing7MessageD2Ev.exit124, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123: ; preds = %bb.aj
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !62
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.db) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit124

_ZN7testing7MessageD2Ev.exit124:                  ; preds = %bb.aj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.df = load ptr, ptr %i.bu, align 8, !tbaa !198 ; 4 uses
  %.not.i.i125 = icmp eq ptr %i.df, null
  br i1 %.not.i.i125, label %.critedge76, label %bb.ak

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit124
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !30 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126: ; preds = %bb.ak
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !35
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 32) #36
  br label %.critedge76

bb.al:                                            ; preds = %bb.af
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit132

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit121
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn59 = phi { ptr, i32 } [ %i.dn, %bb.an ], [ %i.dm, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.do = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i.i130 = icmp eq ptr %i.do, null
  br i1 %.not.i.i130, label %_ZN7testing7MessageD2Ev.exit132, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131: ; preds = %bb.ao
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !62
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(128) %i.do) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit132

_ZN7testing7MessageD2Ev.exit132:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131, %bb.ao, %bb.al
  %.pn59.pn = phi { ptr, i32 } [ %i.dl, %bb.al ], [ %.pn59, %bb.ao ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #33
  br label %bb.as

.critedge74:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit119
  %i.ds = load ptr, ptr %i.bu, align 8, !tbaa !198 ; 4 uses
  %.not.i.i133 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i133, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge74
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !30 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134: ; preds = %bb.ap
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !35
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i134
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #36
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.dy = load ptr, ptr %i.bz, align 8, !tbaa !198 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0156.0191, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36, !noalias !6287 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !36, !noalias !6287
  %i.ed = icmp eq i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ee = icmp eq i64 %i.ea, 0
  br i1 %i.ee, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_setINS1_4EnumENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS5_EEEEE8TestBodyEv:bb.a
  %i.f = load i32, ptr %i.a, align 16, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !94
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw i64 %i.i, 32
  %i.k = zext i32 %i.f to i128
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %i.j, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = shl nuw i128 %i.k, 96
  %i.r = shl nuw nsw i128 %i.p, 32                ; 2 uses
  %i.s = trunc i128 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !94
  %i.v = zext i32 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v
  %.masked.i.i.i.i.i.i.i = and i128 %i.r, 79228162495817593519834398720
  %i.x = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.q
  %i.y = zext i64 %i.w to i128
  %i.z = add nuw nsw i128 %i.y, 1442695040888963407 ; 2 uses
  %i.aa = add i128 %i.x, %i.z
  %i.ab = lshr i128 %i.aa, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ab to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.ac = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.ad = shl nuw i128 %i.ac, 64
  %i.ae = and i128 %i.z, 18446744073709551615
  %i.af = or disjoint i128 %i.ad, %i.ae
  %i.ag = mul i128 %i.af, 47026247687942121848144207491837523525
  %i.ah = add i128 %i.ag, 1442695040888963407     ; 2 uses
  %i.ai = trunc i128 %i.ah to i64
  %i.aj = lshr i128 %i.ah, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.aj to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.noexc

.noexc:                                           ; preds = %bb.b, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i
  %.sroa.8188.0 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ]
  %.sroa.0186.0 = phi i64 [ %i.ai, %bb.b ], [ %i.aq, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ]
  %.sroa.0169.2 = phi ptr [ null, %bb.b ], [ %.sroa.0169.3, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ] ; 7 uses
  %.sroa.11175.0 = phi ptr [ null, %bb.b ], [ %.sroa.11175.1, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ] ; 6 uses
  %.sroa.17.2 = phi ptr [ null, %bb.b ], [ %.sroa.17.3, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.04.i = phi i32 [ 10, %bb.b ], [ %i.bi, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %i.ak = zext i64 %.sroa.8188.0 to i128
  %i.al = shl nuw i128 %i.ak, 64
  %i.am = zext i64 %.sroa.0186.0 to i128
  %i.an = or disjoint i128 %i.al, %i.am
  %i.ao = mul i128 %i.an, 47026247687942121848144207491837523525
  %i.ap = add i128 %i.ao, 1442695040888963407     ; 2 uses
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = lshr i128 %i.ap, 64
  %.tr.i.i.i.i.i = trunc nuw i128 %i.ar to i64
  %.narrow.i.i.i.i.i = add i64 %.tr.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.as = lshr i64 %.narrow.i.i.i.i.i, 58
  %i.at = xor i64 %.narrow.i.i.i.i.i, %i.aq       ; 2 uses
  %.0.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.at, i64 %i.at, i64 %i.as) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.11175.0, %.sroa.17.2
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i64 %.0.i.i.i.i.i.i, ptr %.sroa.11175.0, align 8, !tbaa !1775
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i

bb.d:                                             ; preds = %.noexc
  %i.au = ptrtoint ptr %.sroa.11175.0 to i64
  %i.av = ptrtoint ptr %.sroa.0169.2 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.e, label %_ZNKSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #35
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #38
          to label %.noexc78 unwind label %.loopexit204 ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i64 %.0.i.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !1775
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.f, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %.sroa.0169.2, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.f, %.noexc78
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0169.2, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.2, i64 noundef %i.aw) #36
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0169.3 = phi ptr [ %i.be, %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0169.2, %bb.c ] ; 9 uses
  %.pn200 = phi ptr [ %i.bf, %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11175.0, %bb.c ] ; 3 uses
  %.sroa.17.3 = phi ptr [ %i.bh, %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.17.2, %bb.c ] ; 3 uses
  %.sroa.11175.1 = getelementptr inbounds nuw i8, ptr %.pn200, i64 8 ; 3 uses
  %i.bi = add nsw i32 %.04.i, -1
  %i.bj = icmp samesign ugt i32 %.04.i, 1
  br i1 %i.bj, label %.noexc, label %bb.h, !llvm.loop !6105

bb.h:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.bk = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.bm = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %1, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bk, ptr %i.bo, align 8, !tbaa !1483
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bm, ptr %i.bp, align 8, !tbaa !1485
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !1487
  %.not218 = icmp eq ptr %.sroa.0169.3, %.sroa.11175.1 ; 2 uses
  br i1 %.not218, label %.critedge72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.i

.loopexit204:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.a, %bb.e
  %.sroa.0169.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.0169.2, %bb.e ]
  %.sroa.17.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11175.0, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.0165.0219 = phi ptr [ %.sroa.0169.3, %.lr.ph ], [ %i.dr, %bb.z ] ; 3 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE4findIS4_EENSA_8iteratorERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0165.0219)
          to label %.noexc79 unwind label %bb.m

.noexc79:                                         ; preds = %bb.i
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread: ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 0, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

.preheader.preheader.i:                           ; preds = %.noexc79
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !219, !noalias !6307 ; 2 uses
  %i.bw = icmp slt i8 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.bx = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %i.bu, %.preheader.preheader.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !219, !noalias !6307 ; 2 uses
  %i.ca = icmp slt i8 %i.bz, -1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !1774

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.sroa.012.0.i = phi ptr [ %i.bu, %.preheader.preheader.i ], [ %i.by, %.lr.ph.i.i.i.i ]
  %i.cb = phi i8 [ %i.bv, %.preheader.preheader.i ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %i.cc = icmp eq i8 %i.cb, -1
  br i1 %i.cc, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit, !prof !218

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink22.i = phi ptr [ null, %bb.j ], [ %.sroa.012.0.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.cm, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i ], [ %i.bt, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !219 ; 2 uses
  %i.cf = icmp slt i8 %i.ce, -1
  br i1 %i.cf, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.cd, %.lr.ph.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !219 ; 2 uses
  %i.cj = icmp slt i8 %i.ci, -1
  br i1 %i.cj, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !1774

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %i.ch, %.lr.ph.i.i.i ]
  %i.ck = phi i8 [ %i.ce, %.lr.ph.i ], [ %i.ci, %.lr.ph.i.i.i ]
  %i.cl = icmp eq i8 %i.ck, -1
  br i1 %i.cl, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i, !prof !218

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i: ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.k ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.cm = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i80 = icmp eq ptr %.sroa.02.2.i, %.sink22.i
  br i1 %.not.i80, label %bb.l, label %.lr.ph.i, !llvm.loop !6310

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cn = load i8, ptr %2, align 8, !tbaa !190, !range !26, !noundef !27
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.n:                                             ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aa

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.cr = load ptr, ptr %i.br, align 8, !tbaa !198 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.ct = phi ptr [ %i.cs, %bb.q ], [ @.str.166, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 72, ptr noundef %i.ct)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cu = load ptr, ptr %3, align 8, !tbaa !199   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cy = load ptr, ptr %i.br, align 8, !tbaa !198 ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i84, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !30 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !35
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #36
  br label %bb.ab

bb.u:                                             ; preds = %bb.o
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit87

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.w ], [ %i.df, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.dh = load ptr, ptr %3, align 8, !tbaa !199   ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i85, label %_ZN7testing7MessageD2Ev.exit87, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.x
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit87

_ZN7testing7MessageD2Ev.exit87:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.de, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  br label %bb.aa

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.dl = load ptr, ptr %i.br, align 8, !tbaa !198 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i88, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !30 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89: ; preds = %bb.y
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #36
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0165.0219, i64 8
  %.not = icmp eq ptr %.sroa.0165.0219, %.pn200
  br i1 %.not, label %.critedge72, label %bb.i

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit87, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit87 ], [ %i.cq, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.bn

bb.ab:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.loopexit

.critedge72:                                      ; preds = %bb.z, %bb.h
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE12insert_rangeIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.sroa.0169.3, ptr nonnull %.sroa.11175.1)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit.preheader unwind label %bb.ac

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit.preheader: ; preds = %.critedge72
  br i1 %.not218, label %.loopexit, label %.lr.ph222

.lr.ph222:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge72
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %.lr.ph222, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit
  %.sroa.0159.0221 = phi ptr [ %.sroa.0169.3, %.lr.ph222 ], [ %i.gx, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit ] ; 5 uses
  %i.dv = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE4findIS4_EENSA_8iteratorERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0159.0221)
          to label %.noexc105 unwind label %bb.ai ; 2 uses

.noexc105:                                        ; preds = %bb.ad
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0      ; 3 uses
  %i.dx = extractvalue { ptr, ptr } %i.dv, 1
  %.not.i94 = icmp eq ptr %i.dw, null
  br i1 %.not.i94, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106.thread, label %.preheader.preheader.i95

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106.thread: ; preds = %.noexc105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 0, ptr %i.e, align 8, !tbaa !34
  br label %bb.ah

.preheader.preheader.i95:                         ; preds = %.noexc105
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 3 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !219, !noalias !6311 ; 2 uses
  %i.ea = icmp slt i8 %i.dz, -1
  br i1 %i.ea, label %.lr.ph.i.i.i.i104, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96

.lr.ph.i.i.i.i104:                                ; preds = %.preheader.preheader.i95, %.lr.ph.i.i.i.i104
  %i.eb = phi ptr [ %i.ec, %.lr.ph.i.i.i.i104 ], [ %i.dy, %.preheader.preheader.i95 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1 ; 3 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !219, !noalias !6311 ; 2 uses
  %i.ee = icmp slt i8 %i.ed, -1
  br i1 %i.ee, label %.lr.ph.i.i.i.i104, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96, !llvm.loop !1774

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96: ; preds = %.lr.ph.i.i.i.i104, %.preheader.preheader.i95
  %.sroa.012.0.i97 = phi ptr [ %i.dy, %.preheader.preheader.i95 ], [ %i.ec, %.lr.ph.i.i.i.i104 ]
  %i.ef = phi i8 [ %i.dz, %.preheader.preheader.i95 ], [ %i.ed, %.lr.ph.i.i.i.i104 ]
  %i.eg = icmp eq i8 %i.ef, -1
  br i1 %i.eg, label %bb.ae, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106, !prof !218

bb.ae:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106: ; preds = %bb.ae, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96
  %.sink22.i100 = phi ptr [ null, %bb.ae ], [ %.sroa.012.0.i97, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113
  %.09.i109 = phi i64 [ %i.eq, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106 ] ; 2 uses
  %.sroa.02.07.i110 = phi ptr [ %.sroa.02.2.i114, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113 ], [ %i.dw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i110, i64 1 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !219 ; 2 uses
  %i.ej = icmp slt i8 %i.ei, -1
  br i1 %i.ej, label %.lr.ph.i.i.i117, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111

.lr.ph.i.i.i117:                                  ; preds = %.lr.ph.i108, %.lr.ph.i.i.i117
  %i.ek = phi ptr [ %i.el, %.lr.ph.i.i.i117 ], [ %i.eh, %.lr.ph.i108 ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 3 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !219 ; 2 uses
  %i.en = icmp slt i8 %i.em, -1
  br i1 %i.en, label %.lr.ph.i.i.i117, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111, !llvm.loop !1774

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111: ; preds = %.lr.ph.i.i.i117, %.lr.ph.i108
  %.sroa.02.1.i112 = phi ptr [ %i.eh, %.lr.ph.i108 ], [ %i.el, %.lr.ph.i.i.i117 ]
  %i.eo = phi i8 [ %i.ei, %.lr.ph.i108 ], [ %i.em, %.lr.ph.i.i.i117 ]
  %i.ep = icmp eq i8 %i.eo, -1
  br i1 %i.ep, label %bb.af, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113, !prof !218

bb.af:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113: ; preds = %bb.af, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111
  %.sroa.02.2.i114 = phi ptr [ null, %bb.af ], [ %.sroa.02.1.i112, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111 ] ; 2 uses
  %i.eq = add nuw nsw i64 %.09.i109, 1            ; 2 uses
  %.not.i115 = icmp eq ptr %.sroa.02.2.i114, %.sink22.i100
  br i1 %.not.i115, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_4EnumEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit118, label %.lr.ph.i108, !llvm.loop !6310

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_4EnumEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit118: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113
  store i64 %i.eq, ptr %i.e, align 8, !tbaa !34
  %i.er = icmp eq i64 %.09.i109, 0
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_4EnumEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit118
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121 unwind label %bb.aj

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106.thread, %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_4EnumEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit118
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121 unwind label %bb.aj

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.es = load i8, ptr %5, align 8, !tbaa !190, !range !26, !noundef !27
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %.critedge74, label %bb.ak

bb.ai:                                            ; preds = %bb.ad
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.ay

bb.ak:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ew = load ptr, ptr %i.ds, align 8, !tbaa !198 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i122, label %_ZNK7testing15AssertionResult15failure_messageEv.exit123, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit123

_ZNK7testing15AssertionResult15failure_messageEv.exit123: ; preds = %bb.am, %bb.al
  %i.ey = phi ptr [ %i.ex, %bb.am ], [ @.str.166, %bb.al ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 77, ptr noundef %i.ey)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ez = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i124, label %_ZN7testing7MessageD2Ev.exit126, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.ao
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(128) %i.ez) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit126

_ZN7testing7MessageD2Ev.exit126:                  ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.fd = load ptr, ptr %i.ds, align 8, !tbaa !198 ; 4 uses
  %.not.i.i127 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i127, label %.critedge76, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit126
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !30 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128: ; preds = %bb.ap
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !35
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 32) #36
  br label %.critedge76

bb.aq:                                            ; preds = %bb.ak
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit134

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #33
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn59 = phi { ptr, i32 } [ %i.fl, %bb.as ], [ %i.fk, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.fm = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.at
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %bb.at, %bb.aq
  %.pn59.pn = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %.pn59, %bb.at ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  br label %bb.ay

.critedge74:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121
  %i.fq = load ptr, ptr %i.ds, align 8, !tbaa !198 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i135, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge74
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !30 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.au
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !35
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 32) #36
  br label %bb.av

bb.av:                                            ; preds = %.critedge74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.fw = load ptr, ptr %i.dx, align 8, !tbaa !863 ; 2 uses
  %i.fx = load i64, ptr %.sroa.0159.0221, align 8, !tbaa !1775, !noalias !6314
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !1775, !noalias !6314
  %i.fz = icmp eq i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal4EnumES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.az

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal4EnumES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.237, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0159.0221, ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13node_hash_setINS1_9EnumClassENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS5_EEEEE8TestBodyEv:bb.a
  %i.f = load i32, ptr %i.a, align 16, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !94
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw i64 %i.i, 32
  %i.k = zext i32 %i.f to i128
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %i.j, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = shl nuw i128 %i.k, 96
  %i.r = shl nuw nsw i128 %i.p, 32                ; 2 uses
  %i.s = trunc i128 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !94
  %i.v = zext i32 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v
  %.masked.i.i.i.i.i.i.i = and i128 %i.r, 79228162495817593519834398720
  %i.x = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.q
  %i.y = zext i64 %i.w to i128
  %i.z = add nuw nsw i128 %i.y, 1442695040888963407 ; 2 uses
  %i.aa = add i128 %i.x, %i.z
  %i.ab = lshr i128 %i.aa, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ab to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.ac = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.ad = shl nuw i128 %i.ac, 64
  %i.ae = and i128 %i.z, 18446744073709551615
  %i.af = or disjoint i128 %i.ad, %i.ae
  %i.ag = mul i128 %i.af, 47026247687942121848144207491837523525
  %i.ah = add i128 %i.ag, 1442695040888963407     ; 2 uses
  %i.ai = trunc i128 %i.ah to i64
  %i.aj = lshr i128 %i.ah, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.aj to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.noexc

.noexc:                                           ; preds = %bb.b, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i
  %.sroa.8188.0 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ]
  %.sroa.0186.0 = phi i64 [ %i.ai, %bb.b ], [ %i.aq, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ]
  %.sroa.0169.2 = phi ptr [ null, %bb.b ], [ %.sroa.0169.3, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ] ; 7 uses
  %.sroa.11175.0 = phi ptr [ null, %bb.b ], [ %.sroa.11175.1, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ] ; 6 uses
  %.sroa.17.2 = phi ptr [ null, %bb.b ], [ %.sroa.17.3, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.04.i = phi i32 [ 10, %bb.b ], [ %i.bi, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %i.ak = zext i64 %.sroa.8188.0 to i128
  %i.al = shl nuw i128 %i.ak, 64
  %i.am = zext i64 %.sroa.0186.0 to i128
  %i.an = or disjoint i128 %i.al, %i.am
  %i.ao = mul i128 %i.an, 47026247687942121848144207491837523525
  %i.ap = add i128 %i.ao, 1442695040888963407     ; 2 uses
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = lshr i128 %i.ap, 64
  %.tr.i.i.i.i.i = trunc nuw i128 %i.ar to i64
  %.narrow.i.i.i.i.i = add i64 %.tr.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.as = lshr i64 %.narrow.i.i.i.i.i, 58
  %i.at = xor i64 %.narrow.i.i.i.i.i, %i.aq       ; 2 uses
  %.0.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.at, i64 %i.at, i64 %i.as) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.11175.0, %.sroa.17.2
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i64 %.0.i.i.i.i.i.i, ptr %.sroa.11175.0, align 8, !tbaa !1891
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i

bb.d:                                             ; preds = %.noexc
  %i.au = ptrtoint ptr %.sroa.11175.0 to i64
  %i.av = ptrtoint ptr %.sroa.0169.2 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.e, label %_ZNKSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #35
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #38
          to label %.noexc78 unwind label %.loopexit204 ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i64 %.0.i.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !1891
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.f, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %.sroa.0169.2, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.f, %.noexc78
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0169.2, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.2, i64 noundef %i.aw) #36
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0169.3 = phi ptr [ %i.be, %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0169.2, %bb.c ] ; 9 uses
  %.pn200 = phi ptr [ %i.bf, %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11175.0, %bb.c ] ; 3 uses
  %.sroa.17.3 = phi ptr [ %i.bh, %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.17.2, %bb.c ] ; 3 uses
  %.sroa.11175.1 = getelementptr inbounds nuw i8, ptr %.pn200, i64 8 ; 3 uses
  %i.bi = add nsw i32 %.04.i, -1
  %i.bj = icmp samesign ugt i32 %.04.i, 1
  br i1 %i.bj, label %.noexc, label %bb.h, !llvm.loop !6116

bb.h:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.bk = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.bm = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %1, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bk, ptr %i.bo, align 8, !tbaa !1483
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bm, ptr %i.bp, align 8, !tbaa !1485
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !1487
  %.not218 = icmp eq ptr %.sroa.0169.3, %.sroa.11175.1 ; 2 uses
  br i1 %.not218, label %.critedge72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.i

.loopexit204:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.a, %bb.e
  %.sroa.0169.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.0169.2, %bb.e ]
  %.sroa.17.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11175.0, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.0165.0219 = phi ptr [ %.sroa.0169.3, %.lr.ph ], [ %i.dr, %bb.z ] ; 3 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE4findIS4_EENSA_8iteratorERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0165.0219)
          to label %.noexc79 unwind label %bb.m

.noexc79:                                         ; preds = %bb.i
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread: ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 0, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

.preheader.preheader.i:                           ; preds = %.noexc79
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !219, !noalias !6319 ; 2 uses
  %i.bw = icmp slt i8 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.bx = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %i.bu, %.preheader.preheader.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !219, !noalias !6319 ; 2 uses
  %i.ca = icmp slt i8 %i.bz, -1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !1890

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.sroa.012.0.i = phi ptr [ %i.bu, %.preheader.preheader.i ], [ %i.by, %.lr.ph.i.i.i.i ]
  %i.cb = phi i8 [ %i.bv, %.preheader.preheader.i ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %i.cc = icmp eq i8 %i.cb, -1
  br i1 %i.cc, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit, !prof !218

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink22.i = phi ptr [ null, %bb.j ], [ %.sroa.012.0.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.cm, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i ], [ %i.bt, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !219 ; 2 uses
  %i.cf = icmp slt i8 %i.ce, -1
  br i1 %i.cf, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.cd, %.lr.ph.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !219 ; 2 uses
  %i.cj = icmp slt i8 %i.ci, -1
  br i1 %i.cj, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !1890

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %i.ch, %.lr.ph.i.i.i ]
  %i.ck = phi i8 [ %i.ce, %.lr.ph.i ], [ %i.ci, %.lr.ph.i.i.i ]
  %i.cl = icmp eq i8 %i.ck, -1
  br i1 %i.cl, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i, !prof !218

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i: ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.k ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.cm = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i80 = icmp eq ptr %.sroa.02.2.i, %.sink22.i
  br i1 %.not.i80, label %bb.l, label %.lr.ph.i, !llvm.loop !6322

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cn = load i8, ptr %2, align 8, !tbaa !190, !range !26, !noundef !27
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.n:                                             ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aa

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.cr = load ptr, ptr %i.br, align 8, !tbaa !198 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.ct = phi ptr [ %i.cs, %bb.q ], [ @.str.166, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 72, ptr noundef %i.ct)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cu = load ptr, ptr %3, align 8, !tbaa !199   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cy = load ptr, ptr %i.br, align 8, !tbaa !198 ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i84, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !30 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !35
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #36
  br label %bb.ab

bb.u:                                             ; preds = %bb.o
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit87

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.w ], [ %i.df, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.dh = load ptr, ptr %3, align 8, !tbaa !199   ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i85, label %_ZN7testing7MessageD2Ev.exit87, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.x
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit87

_ZN7testing7MessageD2Ev.exit87:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.de, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  br label %bb.aa

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.dl = load ptr, ptr %i.br, align 8, !tbaa !198 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i88, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !30 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89: ; preds = %bb.y
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #36
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0165.0219, i64 8
  %.not = icmp eq ptr %.sroa.0165.0219, %.pn200
  br i1 %.not, label %.critedge72, label %bb.i

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit87, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit87 ], [ %i.cq, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.bn

bb.ab:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.loopexit

.critedge72:                                      ; preds = %bb.z, %bb.h
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE12insert_rangeIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.sroa.0169.3, ptr nonnull %.sroa.11175.1)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit.preheader unwind label %bb.ac

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit.preheader: ; preds = %.critedge72
  br i1 %.not218, label %.loopexit, label %.lr.ph222

.lr.ph222:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge72
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %.lr.ph222, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit
  %.sroa.0159.0221 = phi ptr [ %.sroa.0169.3, %.lr.ph222 ], [ %i.gx, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEvT_SJ_.exit ] ; 5 uses
  %i.dv = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE4findIS4_EENSA_8iteratorERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0159.0221)
          to label %.noexc105 unwind label %bb.ai ; 2 uses

.noexc105:                                        ; preds = %bb.ad
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0      ; 3 uses
  %i.dx = extractvalue { ptr, ptr } %i.dv, 1
  %.not.i94 = icmp eq ptr %i.dw, null
  br i1 %.not.i94, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106.thread, label %.preheader.preheader.i95

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106.thread: ; preds = %.noexc105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 0, ptr %i.e, align 8, !tbaa !34
  br label %bb.ah

.preheader.preheader.i95:                         ; preds = %.noexc105
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 3 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !219, !noalias !6323 ; 2 uses
  %i.ea = icmp slt i8 %i.dz, -1
  br i1 %i.ea, label %.lr.ph.i.i.i.i104, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96

.lr.ph.i.i.i.i104:                                ; preds = %.preheader.preheader.i95, %.lr.ph.i.i.i.i104
  %i.eb = phi ptr [ %i.ec, %.lr.ph.i.i.i.i104 ], [ %i.dy, %.preheader.preheader.i95 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1 ; 3 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !219, !noalias !6323 ; 2 uses
  %i.ee = icmp slt i8 %i.ed, -1
  br i1 %i.ee, label %.lr.ph.i.i.i.i104, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96, !llvm.loop !1890

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96: ; preds = %.lr.ph.i.i.i.i104, %.preheader.preheader.i95
  %.sroa.012.0.i97 = phi ptr [ %i.dy, %.preheader.preheader.i95 ], [ %i.ec, %.lr.ph.i.i.i.i104 ]
  %i.ef = phi i8 [ %i.dz, %.preheader.preheader.i95 ], [ %i.ed, %.lr.ph.i.i.i.i104 ]
  %i.eg = icmp eq i8 %i.ef, -1
  br i1 %i.eg, label %bb.ae, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106, !prof !218

bb.ae:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106: ; preds = %bb.ae, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96
  %.sink22.i100 = phi ptr [ null, %bb.ae ], [ %.sroa.012.0.i97, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113
  %.09.i109 = phi i64 [ %i.eq, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106 ] ; 2 uses
  %.sroa.02.07.i110 = phi ptr [ %.sroa.02.2.i114, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113 ], [ %i.dw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i110, i64 1 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !219 ; 2 uses
  %i.ej = icmp slt i8 %i.ei, -1
  br i1 %i.ej, label %.lr.ph.i.i.i117, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111

.lr.ph.i.i.i117:                                  ; preds = %.lr.ph.i108, %.lr.ph.i.i.i117
  %i.ek = phi ptr [ %i.el, %.lr.ph.i.i.i117 ], [ %i.eh, %.lr.ph.i108 ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 3 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !219 ; 2 uses
  %i.en = icmp slt i8 %i.em, -1
  br i1 %i.en, label %.lr.ph.i.i.i117, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111, !llvm.loop !1890

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111: ; preds = %.lr.ph.i.i.i117, %.lr.ph.i108
  %.sroa.02.1.i112 = phi ptr [ %i.eh, %.lr.ph.i108 ], [ %i.el, %.lr.ph.i.i.i117 ]
  %i.eo = phi i8 [ %i.ei, %.lr.ph.i108 ], [ %i.em, %.lr.ph.i.i.i117 ]
  %i.ep = icmp eq i8 %i.eo, -1
  br i1 %i.ep, label %bb.af, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113, !prof !218

bb.af:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113: ; preds = %bb.af, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111
  %.sroa.02.2.i114 = phi ptr [ null, %bb.af ], [ %.sroa.02.1.i112, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i111 ] ; 2 uses
  %i.eq = add nuw nsw i64 %.09.i109, 1            ; 2 uses
  %.not.i115 = icmp eq ptr %.sroa.02.2.i114, %.sink22.i100
  br i1 %.not.i115, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_9EnumClassEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit118, label %.lr.ph.i108, !llvm.loop !6322

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_9EnumClassEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit118: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i113
  store i64 %i.eq, ptr %i.e, align 8, !tbaa !34
  %i.er = icmp eq i64 %.09.i109, 0
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_9EnumClassEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit118
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121 unwind label %bb.aj

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit106.thread, %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_9EnumClassEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit118
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121 unwind label %bb.aj

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.es = load i8, ptr %5, align 8, !tbaa !190, !range !26, !noundef !27
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %.critedge74, label %bb.ak

bb.ai:                                            ; preds = %bb.ad
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.ay

bb.ak:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ew = load ptr, ptr %i.ds, align 8, !tbaa !198 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i122, label %_ZNK7testing15AssertionResult15failure_messageEv.exit123, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit123

_ZNK7testing15AssertionResult15failure_messageEv.exit123: ; preds = %bb.am, %bb.al
  %i.ey = phi ptr [ %i.ex, %bb.am ], [ @.str.166, %bb.al ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 77, ptr noundef %i.ey)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ez = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i124, label %_ZN7testing7MessageD2Ev.exit126, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.ao
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(128) %i.ez) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit126

_ZN7testing7MessageD2Ev.exit126:                  ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.fd = load ptr, ptr %i.ds, align 8, !tbaa !198 ; 4 uses
  %.not.i.i127 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i127, label %.critedge76, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit126
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !30 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128: ; preds = %bb.ap
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !35
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 32) #36
  br label %.critedge76

bb.aq:                                            ; preds = %bb.ak
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit134

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #33
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn59 = phi { ptr, i32 } [ %i.fl, %bb.as ], [ %i.fk, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.fm = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.at
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %bb.at, %bb.aq
  %.pn59.pn = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %.pn59, %bb.at ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  br label %bb.ay

.critedge74:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit121
  %i.fq = load ptr, ptr %i.ds, align 8, !tbaa !198 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i135, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge74
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !30 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.au
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !35
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 32) #36
  br label %bb.av

bb.av:                                            ; preds = %.critedge74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.fw = load ptr, ptr %i.dx, align 8, !tbaa !863 ; 2 uses
  %i.fx = load i64, ptr %.sroa.0159.0221, align 8, !tbaa !1891, !noalias !6326
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !1891, !noalias !6326
  %i.fz = icmp eq i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal9EnumClassES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.az

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal9EnumClassES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.237, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0159.0221, ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
end_hunk_3
