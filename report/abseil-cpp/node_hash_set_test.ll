inline.NumInlined: 28139
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
  %.sroa.8192.0 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i.i, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ]
  %.sroa.0190.0 = phi i64 [ %i.ai, %bb.b ], [ %i.aq, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ]
  %.sroa.0174.2 = phi ptr [ null, %bb.b ], [ %.sroa.0174.3, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 7 uses
  %.sroa.11180.0 = phi ptr [ null, %bb.b ], [ %.sroa.11180.1, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 6 uses
  %.sroa.17.2 = phi ptr [ null, %bb.b ], [ %.sroa.17.3, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 2 uses
  %.04.i = phi i32 [ 10, %bb.b ], [ %i.bk, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 2 uses
  %i.ak = zext i64 %.sroa.8192.0 to i128
  %i.al = shl nuw i128 %i.ak, 64
  %i.am = zext i64 %.sroa.0190.0 to i128
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
  %.not.i.i.i.i = icmp eq ptr %.sroa.11180.0, %.sroa.17.2
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i32 %i.av, ptr %.sroa.11180.0, align 4, !tbaa !94
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i

bb.d:                                             ; preds = %.noexc
  %i.aw = ptrtoint ptr %.sroa.11180.0 to i64
  %i.ax = ptrtoint ptr %.sroa.0174.2 to i64
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
          to label %.noexc78 unwind label %.loopexit206 ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i32 %i.av, ptr %i.bh, align 4, !tbaa !94
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %.sroa.0174.2, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.f, %.noexc78
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0174.2, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0174.2, i64 noundef %i.ay) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i

_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0174.3 = phi ptr [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0174.2, %bb.c ] ; 9 uses
  %.pn202 = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11180.0, %bb.c ] ; 4 uses
  %.sroa.17.3 = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.17.2, %bb.c ] ; 3 uses
  %.sroa.11180.1 = getelementptr inbounds nuw i8, ptr %.pn202, i64 4 ; 2 uses
  %i.bk = add nsw i32 %.04.i, -1
  %i.bl = icmp samesign ugt i32 %.04.i, 1
  br i1 %i.bl, label %.noexc, label %bb.h, !llvm.loop !5993

bb.h:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.bm = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.bo = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %3, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.bm, ptr %i.bq, align 8, !tbaa !1483
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.bo, ptr %i.br, align 8, !tbaa !1485
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bs, align 8, !tbaa !1487
  %.not220 = icmp eq ptr %.sroa.0174.3, %.sroa.11180.1
  br i1 %.not220, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.i

.loopexit206:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp:                               ; preds = %bb.a, %bb.e
  %.sroa.0174.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.0174.2, %bb.e ]
  %.sroa.17.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11180.0, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.0169.0221 = phi ptr [ %.sroa.0174.3, %.lr.ph ], [ %i.dt, %bb.z ] ; 3 uses
  %i.bu = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE4findIiEENS9_8iteratorERKi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0169.0221)
          to label %.noexc79 unwind label %bb.m

.noexc79:                                         ; preds = %bb.i
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit.thread: ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 0, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

.preheader.preheader.i:                           ; preds = %.noexc79
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !219, !noalias !6348 ; 2 uses
  %i.by = icmp slt i8 %i.bx, -1
  br i1 %i.by, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bw, %.preheader.preheader.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !219, !noalias !6348 ; 2 uses
  %i.cc = icmp slt i8 %i.cb, -1
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !1539

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.bw, %.preheader.preheader.i ], [ %i.ca, %.lr.ph.i.i.i.i ]
  %i.cd = phi i8 [ %i.bx, %.preheader.preheader.i ], [ %i.cb, %.lr.ph.i.i.i.i ]
  %i.ce = icmp eq i8 %i.cd, -1
  br i1 %i.ce, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit, !prof !218

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.j ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
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
  %.not.i80 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i80, label %bb.l, label %.lr.ph.i, !llvm.loop !6351

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i
  store i64 %i.co, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cp = load i8, ptr %4, align 8, !tbaa !190, !range !26, !noundef !27
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.n:                                             ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit.thread
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aa

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.ct = load ptr, ptr %i.bt, align 8, !tbaa !198 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.cv = phi ptr [ %i.cu, %bb.q ], [ @.str.166, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 72, ptr noundef %i.cv)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cw = load ptr, ptr %5, align 8, !tbaa !199   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.di, %bb.w ], [ %i.dh, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.dj = load ptr, ptr %5, align 8, !tbaa !199   ; 3 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
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
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0169.0221, i64 4
  %.not = icmp eq ptr %.sroa.0169.0221, %.pn202
  br i1 %.not, label %.lr.ph.i.i, label %bb.i

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit87, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit87 ], [ %i.cs, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.bv

bb.ab:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.z
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS9_8iteratorEbEDpOSD_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0174.3, %.lr.ph.i.i ], [ %i.en, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS9_8iteratorEbEDpOSD_.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !6352)
  call void @llvm.experimental.noalias.scope.decl(metadata !6355)
  call void @llvm.experimental.noalias.scope.decl(metadata !6358)
  call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  call void @llvm.experimental.noalias.scope.decl(metadata !6364)
  call void @llvm.experimental.noalias.scope.decl(metadata !6367)
  %i.dx = load i64, ptr %3, align 8, !noalias !6370 ; 4 uses
  %i.dy = and i64 %i.dx, 254
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !6371)
  call void @llvm.experimental.noalias.scope.decl(metadata !6374)
  %i.ea = icmp ult i64 %i.dx, 562949953552384
  call void @llvm.assume(i1 %i.ea)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.dx, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eb = or disjoint i64 %i.dx, 131072
  store i64 %i.eb, ptr %3, align 8, !noalias !6377
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE28find_or_prepare_insert_smallIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.du, align 8, !tbaa !95, !noalias !6377
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !94, !noalias !6377
  %i.ee = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !94, !noalias !6377
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE28find_or_prepare_insert_smallIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !6377
  store ptr %i.bq, ptr %1, align 8, !tbaa !2866, !noalias !6377
  store ptr %.sroa.01.05.i.i, ptr %i.dv, align 8, !tbaa !95, !noalias !6377
  %i.eg = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc94 unwind label %bb.aj  ; 2 uses

.noexc94:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !6377
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !35, !noalias !6377, !nonnull !27, !noundef !27
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.eg
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !35, !noalias !6377
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.eg
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE28find_or_prepare_insert_smallIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE28find_or_prepare_insert_smallIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc94, %bb.af, %bb.ae
  %.sink17.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eh, %.noexc94 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ae ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.af ]
  %.sink16.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.noexc94 ], [ %i.du, %bb.ae ], [ %i.du, %bb.af ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc94 ], [ 1, %bb.ae ], [ 0, %bb.af ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i, ptr %2, align 8, !alias.scope !6377
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6377
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE22find_or_prepare_insertIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ac
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE28find_or_prepare_insert_largeIiEESt4pairINS9_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.621") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.01.05.i.i)
          to label %.noexc95 unwind label %bb.aj

.noexc95:                                         ; preds = %bb.ah
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !2868, !range !26, !alias.scope !6378
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE22find_or_prepare_insertIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE22find_or_prepare_insertIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc95, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE28find_or_prepare_insert_smallIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  %i.ej = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE28find_or_prepare_insert_smallIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.noexc95 ]
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ai, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS9_8iteratorEbEDpOSD_.exit.i.i

bb.ai:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE22find_or_prepare_insertIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6378
  %i.el = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #38
          to label %.noexc96 unwind label %bb.aj  ; 2 uses

.noexc96:                                         ; preds = %bb.ai
  %i.em = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !94, !noalias !6378
  store i32 %i.em, ptr %i.el, align 4, !tbaa !94
  store ptr %i.el, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !95
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS9_8iteratorEbEDpOSD_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS9_8iteratorEbEDpOSD_.exit.i.i: ; preds = %.noexc96, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE22find_or_prepare_insertIiEESt4pairINS9_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4
  %.not.i.i93 = icmp eq ptr %.sroa.01.05.i.i, %.pn202
  br i1 %.not.i.i93, label %.lr.ph224, label %bb.ac, !llvm.loop !2872

.lr.ph224:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS9_8iteratorEbEDpOSD_.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ak:                                            ; preds = %.lr.ph224, %bb.bs
  %.sroa.0163.0223 = phi ptr [ %.sroa.0174.3, %.lr.ph224 ], [ %i.ht, %bb.bs ] ; 5 uses
  %i.er = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE4findIiEENS9_8iteratorERKi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0163.0223)
          to label %.noexc108 unwind label %bb.ap ; 2 uses

.noexc108:                                        ; preds = %bb.ak
  %i.es = extractvalue { ptr, ptr } %i.er, 0      ; 3 uses
  %i.et = extractvalue { ptr, ptr } %i.er, 1
  %.not.i97 = icmp eq ptr %i.es, null
  br i1 %.not.i97, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109.thread, label %.preheader.preheader.i98

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109.thread: ; preds = %.noexc108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 0, ptr %i.e, align 8, !tbaa !34
  br label %bb.ao

.preheader.preheader.i98:                         ; preds = %.noexc108
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 3 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !219, !noalias !6379 ; 2 uses
  %i.ew = icmp slt i8 %i.ev, -1
  br i1 %i.ew, label %.lr.ph.i.i.i.i107, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99

.lr.ph.i.i.i.i107:                                ; preds = %.preheader.preheader.i98, %.lr.ph.i.i.i.i107
  %i.ex = phi ptr [ %i.ey, %.lr.ph.i.i.i.i107 ], [ %i.eu, %.preheader.preheader.i98 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1 ; 3 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !219, !noalias !6379 ; 2 uses
  %i.fa = icmp slt i8 %i.ez, -1
  br i1 %i.fa, label %.lr.ph.i.i.i.i107, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99, !llvm.loop !1539

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99: ; preds = %.lr.ph.i.i.i.i107, %.preheader.preheader.i98
  %.lcssa14.i.i101 = phi ptr [ %i.eu, %.preheader.preheader.i98 ], [ %i.ey, %.lr.ph.i.i.i.i107 ]
  %i.fb = phi i8 [ %i.ev, %.preheader.preheader.i98 ], [ %i.ez, %.lr.ph.i.i.i.i107 ]
  %i.fc = icmp eq i8 %i.fb, -1
  br i1 %i.fc, label %bb.al, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109, !prof !218

bb.al:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109: ; preds = %bb.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99
  %.sink21.i103 = phi ptr [ null, %bb.al ], [ %.lcssa14.i.i101, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i116
  %.09.i112 = phi i64 [ %i.fm, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i116 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109 ] ; 2 uses
  %.sroa.02.07.i113 = phi ptr [ %.sroa.02.2.i117, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i116 ], [ %i.es, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i113, i64 1 ; 3 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !219 ; 2 uses
  %i.ff = icmp slt i8 %i.fe, -1
  br i1 %i.ff, label %.lr.ph.i.i.i120, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i114

.lr.ph.i.i.i120:                                  ; preds = %.lr.ph.i111, %.lr.ph.i.i.i120
  %i.fg = phi ptr [ %i.fh, %.lr.ph.i.i.i120 ], [ %i.fd, %.lr.ph.i111 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !219 ; 2 uses
  %i.fj = icmp slt i8 %i.fi, -1
  br i1 %i.fj, label %.lr.ph.i.i.i120, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i114, !llvm.loop !1539

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i114: ; preds = %.lr.ph.i.i.i120, %.lr.ph.i111
  %.sroa.02.1.i115 = phi ptr [ %i.fd, %.lr.ph.i111 ], [ %i.fh, %.lr.ph.i.i.i120 ]
  %i.fk = phi i8 [ %i.fe, %.lr.ph.i111 ], [ %i.fi, %.lr.ph.i.i.i120 ]
  %i.fl = icmp eq i8 %i.fk, -1
  br i1 %i.fl, label %bb.am, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i116, !prof !218

bb.am:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i114
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i116

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i116: ; preds = %bb.am, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i114
  %.sroa.02.2.i117 = phi ptr [ null, %bb.am ], [ %.sroa.02.1.i115, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iterator21skip_empty_or_deletedEv.exit.i.i114 ] ; 2 uses
  %i.fm = add nuw nsw i64 %.09.i112, 1            ; 2 uses
  %.not.i118 = icmp eq ptr %.sroa.02.2.i117, %.sink21.i103
  br i1 %.not.i118, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyIiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIiEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit121, label %.lr.ph.i111, !llvm.loop !6351

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyIiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIiEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit121: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE8iteratorppEv.exit.i116
  store i64 %i.fm, ptr %i.e, align 8, !tbaa !34
  %i.fn = icmp eq i64 %.09.i112, 0
  br i1 %i.fn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyIiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIiEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit121
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124 unwind label %bb.aq

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyIiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIiEEEE11equal_rangeIiEESt4pairINS9_8iteratorESC_ERKi.exit109.thread, %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyIiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIiEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESD_SD_St18input_iterator_tag.exit121
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124 unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.fo = load i8, ptr %7, align 8, !tbaa !190, !range !26, !noundef !27
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %.critedge74, label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bf

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.fs = load ptr, ptr %i.eo, align 8, !tbaa !198 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.at, %bb.as
  %i.fu = phi ptr [ %i.ft, %bb.at ], [ @.str.166, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 77, ptr noundef %i.fu)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.fv = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.av
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !62
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(128) %i.fv) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.fz = load ptr, ptr %i.eo, align 8, !tbaa !198 ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i130, label %.critedge76, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !30 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.aw
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !35
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 32) #36
  br label %.critedge76

bb.ax:                                            ; preds = %bb.ar
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.au
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn59 = phi { ptr, i32 } [ %i.gh, %bb.az ], [ %i.gg, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.gi = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ba
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !62
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(128) %i.gi) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.ba, %bb.ax
  %.pn59.pn = phi { ptr, i32 } [ %i.gf, %bb.ax ], [ %.pn59, %bb.ba ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  br label %bb.bf

.critedge74:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124
  %i.gm = load ptr, ptr %i.eo, align 8, !tbaa !198 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i138, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.critedge74
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !30 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.bb
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !35
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 32) #36
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.gs = load ptr, ptr %i.et, align 8, !tbaa !95 ; 2 uses
  %i.gt = load i32, ptr %.sroa.0163.0223, align 4, !tbaa !94, !noalias !6382
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !94, !noalias !6382
  %i.gv = icmp eq i32 %i.gt, %i.gu
  br i1 %i.gv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bg

bb.be:                                            ; preds = %bb.bc
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.237, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0163.0223, ptr noundef nonnull align 4 dereferenceable(4) %i.gs)
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
  %i.u = load i8, ptr %i.t, align 1, !tbaa !219, !noalias !6409 ; 2 uses
  %i.v = icmp slt i8 %i.u, -1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %.preheader.preheader.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !219, !noalias !6409 ; 2 uses
  %i.z = icmp slt i8 %i.y, -1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !1624

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.t, %.preheader.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i ]
  %i.aa = phi i8 [ %i.u, %.preheader.preheader.i ], [ %i.y, %.lr.ph.i.i.i.i ]
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit, !prof !218

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit: ; preds = %bb.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.e ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
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
  %.not.i77 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i77, label %bb.g, label %.lr.ph.i, !llvm.loop !6412

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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !6413
  store ptr %4, ptr %1, align 8, !tbaa !2904, !noalias !6413
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE19EmplaceDecomposableclIS9_JRS9_EEESt4pairINSF_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.636") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.05.i.i)
          to label %.noexc91 unwind label %bb.x

.noexc91:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !6413
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
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !219, !noalias !6416 ; 2 uses
  %i.cc = icmp slt i8 %i.cb, -1
  br i1 %i.cc, label %.lr.ph.i.i.i.i102, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94

.lr.ph.i.i.i.i102:                                ; preds = %.preheader.preheader.i93, %.lr.ph.i.i.i.i102
  %i.cd = phi ptr [ %i.ce, %.lr.ph.i.i.i.i102 ], [ %i.ca, %.preheader.preheader.i93 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !219, !noalias !6416 ; 2 uses
  %i.cg = icmp slt i8 %i.cf, -1
  br i1 %i.cg, label %.lr.ph.i.i.i.i102, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94, !llvm.loop !1624

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94: ; preds = %.lr.ph.i.i.i.i102, %.preheader.preheader.i93
  %.lcssa14.i.i96 = phi ptr [ %i.ca, %.preheader.preheader.i93 ], [ %i.ce, %.lr.ph.i.i.i.i102 ]
  %i.ch = phi i8 [ %i.cb, %.preheader.preheader.i93 ], [ %i.cf, %.lr.ph.i.i.i.i102 ]
  %i.ci = icmp eq i8 %i.ch, -1
  br i1 %i.ci, label %bb.z, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104, !prof !218

bb.z:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE11equal_rangeIS9_EESt4pairINSF_8iteratorESI_ERKS9_.exit104: ; preds = %bb.z, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94
  %.sink21.i98 = phi ptr [ null, %bb.z ], [ %.lcssa14.i.i96, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS9_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i94 ]
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
  %.not.i113 = icmp eq ptr %.sroa.02.2.i112, %.sink21.i98
  br i1 %.not.i113, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISA_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit116, label %.lr.ph.i106, !llvm.loop !6412

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
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36, !noalias !6419 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !36, !noalias !6419
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
  %.sroa.8191.0 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ]
  %.sroa.0189.0 = phi i64 [ %i.ai, %bb.b ], [ %i.aq, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ]
  %.sroa.0173.2 = phi ptr [ null, %bb.b ], [ %.sroa.0173.3, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ] ; 7 uses
  %.sroa.11179.0 = phi ptr [ null, %bb.b ], [ %.sroa.11179.1, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ] ; 6 uses
  %.sroa.17.2 = phi ptr [ null, %bb.b ], [ %.sroa.17.3, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.04.i = phi i32 [ 10, %bb.b ], [ %i.bi, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %i.ak = zext i64 %.sroa.8191.0 to i128
  %i.al = shl nuw i128 %i.ak, 64
  %i.am = zext i64 %.sroa.0189.0 to i128
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
  %.not.i.i.i.i = icmp eq ptr %.sroa.11179.0, %.sroa.17.2
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i64 %.0.i.i.i.i.i.i, ptr %.sroa.11179.0, align 8, !tbaa !1775
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i

bb.d:                                             ; preds = %.noexc
  %i.au = ptrtoint ptr %.sroa.11179.0 to i64
  %i.av = ptrtoint ptr %.sroa.0173.2 to i64
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
          to label %.noexc78 unwind label %.loopexit207 ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i64 %.0.i.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !1775
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.f, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %.sroa.0173.2, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.f, %.noexc78
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0173.2, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0173.2, i64 noundef %i.aw) #36
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0173.3 = phi ptr [ %i.be, %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0173.2, %bb.c ] ; 9 uses
  %.pn203 = phi ptr [ %i.bf, %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11179.0, %bb.c ] ; 4 uses
  %.sroa.17.3 = phi ptr [ %i.bh, %_ZNSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.17.2, %bb.c ] ; 3 uses
  %.sroa.11179.1 = getelementptr inbounds nuw i8, ptr %.pn203, i64 8 ; 2 uses
  %i.bi = add nsw i32 %.04.i, -1
  %i.bj = icmp samesign ugt i32 %.04.i, 1
  br i1 %i.bj, label %.noexc, label %bb.h, !llvm.loop !6075

bb.h:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS4_EEEaSEOS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.bk = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.bm = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %3, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.bk, ptr %i.bo, align 8, !tbaa !1483
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.bm, ptr %i.bp, align 8, !tbaa !1485
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !1487
  %.not221 = icmp eq ptr %.sroa.0173.3, %.sroa.11179.1
  br i1 %.not221, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.i

.loopexit207:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618container_internal4EnumESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp:                               ; preds = %bb.a, %bb.e
  %.sroa.0173.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.0173.2, %bb.e ]
  %.sroa.17.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11179.0, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.0169.0222 = phi ptr [ %.sroa.0173.3, %.lr.ph ], [ %i.dr, %bb.z ] ; 3 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE4findIS4_EENSA_8iteratorERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0169.0222)
          to label %.noexc79 unwind label %bb.m

.noexc79:                                         ; preds = %bb.i
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread: ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 0, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

.preheader.preheader.i:                           ; preds = %.noexc79
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !219, !noalias !6439 ; 2 uses
  %i.bw = icmp slt i8 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.bx = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %i.bu, %.preheader.preheader.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !219, !noalias !6439 ; 2 uses
  %i.ca = icmp slt i8 %i.bz, -1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !1774

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.bu, %.preheader.preheader.i ], [ %i.by, %.lr.ph.i.i.i.i ]
  %i.cb = phi i8 [ %i.bv, %.preheader.preheader.i ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %i.cc = icmp eq i8 %i.cb, -1
  br i1 %i.cc, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit, !prof !218

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.j ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
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
  %.not.i80 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i80, label %bb.l, label %.lr.ph.i, !llvm.loop !6442

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cn = load i8, ptr %4, align 8, !tbaa !190, !range !26, !noundef !27
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.n:                                             ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aa

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.cr = load ptr, ptr %i.br, align 8, !tbaa !198 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.ct = phi ptr [ %i.cs, %bb.q ], [ @.str.166, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 72, ptr noundef %i.ct)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cu = load ptr, ptr %5, align 8, !tbaa !199   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.w ], [ %i.df, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.dh = load ptr, ptr %5, align 8, !tbaa !199   ; 3 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
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
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0169.0222, i64 8
  %.not = icmp eq ptr %.sroa.0169.0222, %.pn203
  br i1 %.not, label %.lr.ph.i.i, label %bb.i

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit87, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit87 ], [ %i.cq, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.bv

bb.ab:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.z
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0173.3, %.lr.ph.i.i ], [ %i.ek, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !6443)
  call void @llvm.experimental.noalias.scope.decl(metadata !6446)
  call void @llvm.experimental.noalias.scope.decl(metadata !6449)
  call void @llvm.experimental.noalias.scope.decl(metadata !6452)
  call void @llvm.experimental.noalias.scope.decl(metadata !6455)
  call void @llvm.experimental.noalias.scope.decl(metadata !6458)
  %i.dv = load i64, ptr %3, align 8, !noalias !6461 ; 3 uses
  %i.dw = and i64 %i.dv, 254
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !6462)
  call void @llvm.experimental.noalias.scope.decl(metadata !6465)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.dv, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = or disjoint i64 %i.dv, 131072
  store i64 %i.dy, ptr %3, align 8, !noalias !6468
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !863, !noalias !6468
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1775, !noalias !6468
  %i.eb = load i64, ptr %.sroa.01.05.i.i, align 8, !tbaa !1775, !noalias !6468
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !6468
  store ptr %i.bo, ptr %1, align 8, !tbaa !2866, !noalias !6468
  store ptr %.sroa.01.05.i.i, ptr %i.dt, align 8, !tbaa !863, !noalias !6468
  %i.ed = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashENS3_4EnumELb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc94 unwind label %bb.aj  ; 2 uses

.noexc94:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !6468
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !tbaa !35, !noalias !6468, !nonnull !27, !noundef !27
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ed
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !35, !noalias !6468
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ed
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc94, %bb.af, %bb.ae
  %.sink17.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ee, %.noexc94 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ae ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.af ]
  %.sink16.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ef, %.noexc94 ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.af ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc94 ], [ 1, %bb.ae ], [ 0, %bb.af ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i, ptr %2, align 8, !alias.scope !6468
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6468
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ac
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_largeIS4_EESt4pairINSA_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.654") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01.05.i.i)
          to label %.noexc95 unwind label %bb.aj

.noexc95:                                         ; preds = %bb.ah
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !3117, !range !26, !alias.scope !6469
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc95, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  %i.eg = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.noexc95 ]
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ai, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i

bb.ai:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6469
  %i.ei = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %.noexc96 unwind label %bb.aj  ; 2 uses

.noexc96:                                         ; preds = %bb.ai
  %i.ej = load i64, ptr %.sroa.01.05.i.i, align 8, !tbaa !1775, !noalias !6469
  store i64 %i.ej, ptr %i.ei, align 8, !tbaa !1775
  store ptr %i.ei, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !863
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i: ; preds = %.noexc96, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %.not.i.i93 = icmp eq ptr %.sroa.01.05.i.i, %.pn203
  br i1 %.not.i.i93, label %.lr.ph225, label %bb.ac, !llvm.loop !3121

.lr.ph225:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ak:                                            ; preds = %.lr.ph225, %bb.bs
  %.sroa.0163.0224 = phi ptr [ %.sroa.0173.3, %.lr.ph225 ], [ %i.hq, %bb.bs ] ; 5 uses
  %i.eo = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE4findIS4_EENSA_8iteratorERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0163.0224)
          to label %.noexc108 unwind label %bb.ap ; 2 uses

.noexc108:                                        ; preds = %bb.ak
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 3 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1
  %.not.i97 = icmp eq ptr %i.ep, null
  br i1 %.not.i97, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109.thread, label %.preheader.preheader.i98

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109.thread: ; preds = %.noexc108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 0, ptr %i.e, align 8, !tbaa !34
  br label %bb.ao

.preheader.preheader.i98:                         ; preds = %.noexc108
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 3 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !219, !noalias !6470 ; 2 uses
  %i.et = icmp slt i8 %i.es, -1
  br i1 %i.et, label %.lr.ph.i.i.i.i107, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99

.lr.ph.i.i.i.i107:                                ; preds = %.preheader.preheader.i98, %.lr.ph.i.i.i.i107
  %i.eu = phi ptr [ %i.ev, %.lr.ph.i.i.i.i107 ], [ %i.er, %.preheader.preheader.i98 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !219, !noalias !6470 ; 2 uses
  %i.ex = icmp slt i8 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i.i.i.i107, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99, !llvm.loop !1774

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99: ; preds = %.lr.ph.i.i.i.i107, %.preheader.preheader.i98
  %.lcssa14.i.i101 = phi ptr [ %i.er, %.preheader.preheader.i98 ], [ %i.ev, %.lr.ph.i.i.i.i107 ]
  %i.ey = phi i8 [ %i.es, %.preheader.preheader.i98 ], [ %i.ew, %.lr.ph.i.i.i.i107 ]
  %i.ez = icmp eq i8 %i.ey, -1
  br i1 %i.ez, label %bb.al, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109, !prof !218

bb.al:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109: ; preds = %bb.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99
  %.sink21.i103 = phi ptr [ null, %bb.al ], [ %.lcssa14.i.i101, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116
  %.09.i112 = phi i64 [ %i.fj, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109 ] ; 2 uses
  %.sroa.02.07.i113 = phi ptr [ %.sroa.02.2.i117, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116 ], [ %i.ep, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i113, i64 1 ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !219 ; 2 uses
  %i.fc = icmp slt i8 %i.fb, -1
  br i1 %i.fc, label %.lr.ph.i.i.i120, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114

.lr.ph.i.i.i120:                                  ; preds = %.lr.ph.i111, %.lr.ph.i.i.i120
  %i.fd = phi ptr [ %i.fe, %.lr.ph.i.i.i120 ], [ %i.fa, %.lr.ph.i111 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1 ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !219 ; 2 uses
  %i.fg = icmp slt i8 %i.ff, -1
  br i1 %i.fg, label %.lr.ph.i.i.i120, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114, !llvm.loop !1774

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114: ; preds = %.lr.ph.i.i.i120, %.lr.ph.i111
  %.sroa.02.1.i115 = phi ptr [ %i.fa, %.lr.ph.i111 ], [ %i.fe, %.lr.ph.i.i.i120 ]
  %i.fh = phi i8 [ %i.fb, %.lr.ph.i111 ], [ %i.ff, %.lr.ph.i.i.i120 ]
  %i.fi = icmp eq i8 %i.fh, -1
  br i1 %i.fi, label %bb.am, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116, !prof !218

bb.am:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116: ; preds = %bb.am, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114
  %.sroa.02.2.i117 = phi ptr [ null, %bb.am ], [ %.sroa.02.1.i115, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114 ] ; 2 uses
  %i.fj = add nuw nsw i64 %.09.i112, 1            ; 2 uses
  %.not.i118 = icmp eq ptr %.sroa.02.2.i117, %.sink21.i103
  br i1 %.not.i118, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_4EnumEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit121, label %.lr.ph.i111, !llvm.loop !6442

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_4EnumEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit121: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116
  store i64 %i.fj, ptr %i.e, align 8, !tbaa !34
  %i.fk = icmp eq i64 %.09.i112, 0
  br i1 %i.fk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_4EnumEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit121
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124 unwind label %bb.aq

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_4EnumEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109.thread, %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_4EnumEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit121
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124 unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.fl = load i8, ptr %7, align 8, !tbaa !190, !range !26, !noundef !27
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %.critedge74, label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bf

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.fp = load ptr, ptr %i.el, align 8, !tbaa !198 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.at, %bb.as
  %i.fr = phi ptr [ %i.fq, %bb.at ], [ @.str.166, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 77, ptr noundef %i.fr)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.fs = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.av
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.fw = load ptr, ptr %i.el, align 8, !tbaa !198 ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i130, label %.critedge76, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !30 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.aw
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !35
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 32) #36
  br label %.critedge76

bb.ax:                                            ; preds = %bb.ar
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.au
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn59 = phi { ptr, i32 } [ %i.ge, %bb.az ], [ %i.gd, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.gf = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ba
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !62
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(128) %i.gf) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.ba, %bb.ax
  %.pn59.pn = phi { ptr, i32 } [ %i.gc, %bb.ax ], [ %.pn59, %bb.ba ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  br label %bb.bf

.critedge74:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124
  %i.gj = load ptr, ptr %i.el, align 8, !tbaa !198 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i138, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.critedge74
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !30 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.bb
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !35
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 32) #36
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.gp = load ptr, ptr %i.eq, align 8, !tbaa !863 ; 2 uses
  %i.gq = load i64, ptr %.sroa.0163.0224, align 8, !tbaa !1775, !noalias !6473
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !1775, !noalias !6473
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal4EnumES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.bg

bb.be:                                            ; preds = %bb.bc
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal4EnumES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.237, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0163.0224, ptr noundef nonnull align 8 dereferenceable(8) %i.gp)
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
  %.sroa.8191.0 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ]
  %.sroa.0189.0 = phi i64 [ %i.ai, %bb.b ], [ %i.aq, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ]
  %.sroa.0173.2 = phi ptr [ null, %bb.b ], [ %.sroa.0173.3, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ] ; 7 uses
  %.sroa.11179.0 = phi ptr [ null, %bb.b ], [ %.sroa.11179.1, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ] ; 6 uses
  %.sroa.17.2 = phi ptr [ null, %bb.b ], [ %.sroa.17.3, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.04.i = phi i32 [ 10, %bb.b ], [ %i.bi, %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %i.ak = zext i64 %.sroa.8191.0 to i128
  %i.al = shl nuw i128 %i.ak, 64
  %i.am = zext i64 %.sroa.0189.0 to i128
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
  %.not.i.i.i.i = icmp eq ptr %.sroa.11179.0, %.sroa.17.2
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i64 %.0.i.i.i.i.i.i, ptr %.sroa.11179.0, align 8, !tbaa !1891
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i

bb.d:                                             ; preds = %.noexc
  %i.au = ptrtoint ptr %.sroa.11179.0 to i64
  %i.av = ptrtoint ptr %.sroa.0173.2 to i64
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
          to label %.noexc78 unwind label %.loopexit207 ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i64 %.0.i.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !1891
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.f, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %.sroa.0173.2, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.f, %.noexc78
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0173.2, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0173.2, i64 noundef %i.aw) #36
  br label %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0173.3 = phi ptr [ %i.be, %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0173.2, %bb.c ] ; 9 uses
  %.pn203 = phi ptr [ %i.bf, %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11179.0, %bb.c ] ; 4 uses
  %.sroa.17.3 = phi ptr [ %i.bh, %_ZNSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.17.2, %bb.c ] ; 3 uses
  %.sroa.11179.1 = getelementptr inbounds nuw i8, ptr %.pn203, i64 8 ; 2 uses
  %i.bi = add nsw i32 %.04.i, -1
  %i.bj = icmp samesign ugt i32 %.04.i, 1
  br i1 %i.bj, label %.noexc, label %bb.h, !llvm.loop !6113

bb.h:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS4_EEEaSEOS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.bk = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.bm = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %3, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.bk, ptr %i.bo, align 8, !tbaa !1483
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.bm, ptr %i.bp, align 8, !tbaa !1485
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !1487
  %.not221 = icmp eq ptr %.sroa.0173.3, %.sroa.11179.1
  br i1 %.not221, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.i

.loopexit207:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618container_internal9EnumClassESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp:                               ; preds = %bb.a, %bb.e
  %.sroa.0173.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.0173.2, %bb.e ]
  %.sroa.17.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11179.0, %bb.e ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.0169.0222 = phi ptr [ %.sroa.0173.3, %.lr.ph ], [ %i.dr, %bb.z ] ; 3 uses
  %i.bs = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE4findIS4_EENSA_8iteratorERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0169.0222)
          to label %.noexc79 unwind label %bb.m

.noexc79:                                         ; preds = %bb.i
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread: ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 0, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

.preheader.preheader.i:                           ; preds = %.noexc79
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !219, !noalias !6478 ; 2 uses
  %i.bw = icmp slt i8 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.bx = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %i.bu, %.preheader.preheader.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !219, !noalias !6478 ; 2 uses
  %i.ca = icmp slt i8 %i.bz, -1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !1890

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.bu, %.preheader.preheader.i ], [ %i.by, %.lr.ph.i.i.i.i ]
  %i.cb = phi i8 [ %i.bv, %.preheader.preheader.i ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %i.cc = icmp eq i8 %i.cb, -1
  br i1 %i.cc, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit, !prof !218

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.j ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
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
  %.not.i80 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i80, label %bb.l, label %.lr.ph.i, !llvm.loop !6481

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cn = load i8, ptr %4, align 8, !tbaa !190, !range !26, !noundef !27
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.n:                                             ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aa

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.cr = load ptr, ptr %i.br, align 8, !tbaa !198 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.ct = phi ptr [ %i.cs, %bb.q ], [ @.str.166, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 72, ptr noundef %i.ct)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cu = load ptr, ptr %5, align 8, !tbaa !199   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.w ], [ %i.df, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.dh = load ptr, ptr %5, align 8, !tbaa !199   ; 3 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
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
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0169.0222, i64 8
  %.not = icmp eq ptr %.sroa.0169.0222, %.pn203
  br i1 %.not, label %.lr.ph.i.i, label %bb.i

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit87, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit87 ], [ %i.cq, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.bv

bb.ab:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.z
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0173.3, %.lr.ph.i.i ], [ %i.ek, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !6482)
  call void @llvm.experimental.noalias.scope.decl(metadata !6485)
  call void @llvm.experimental.noalias.scope.decl(metadata !6488)
  call void @llvm.experimental.noalias.scope.decl(metadata !6491)
  call void @llvm.experimental.noalias.scope.decl(metadata !6494)
  call void @llvm.experimental.noalias.scope.decl(metadata !6497)
  %i.dv = load i64, ptr %3, align 8, !noalias !6500 ; 3 uses
  %i.dw = and i64 %i.dv, 254
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !6501)
  call void @llvm.experimental.noalias.scope.decl(metadata !6504)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.dv, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = or disjoint i64 %i.dv, 131072
  store i64 %i.dy, ptr %3, align 8, !noalias !6507
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !863, !noalias !6507
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1891, !noalias !6507
  %i.eb = load i64, ptr %.sroa.01.05.i.i, align 8, !tbaa !1891, !noalias !6507
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !6507
  store ptr %i.bo, ptr %1, align 8, !tbaa !2866, !noalias !6507
  store ptr %.sroa.01.05.i.i, ptr %i.dt, align 8, !tbaa !863, !noalias !6507
  %i.ed = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashENS3_9EnumClassELb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc94 unwind label %bb.aj  ; 2 uses

.noexc94:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !6507
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !tbaa !35, !noalias !6507, !nonnull !27, !noundef !27
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ed
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !35, !noalias !6507
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ed
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc94, %bb.af, %bb.ae
  %.sink17.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ee, %.noexc94 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ae ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.af ]
  %.sink16.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ef, %.noexc94 ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.af ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc94 ], [ 1, %bb.ae ], [ 0, %bb.af ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i, ptr %2, align 8, !alias.scope !6507
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6507
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ac
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_largeIS4_EESt4pairINSA_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.678") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01.05.i.i)
          to label %.noexc95 unwind label %bb.aj

.noexc95:                                         ; preds = %bb.ah
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !3235, !range !26, !alias.scope !6508
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc95, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  %i.eg = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE28find_or_prepare_insert_smallIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.noexc95 ]
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ai, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i

bb.ai:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6508
  %i.ei = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %.noexc96 unwind label %bb.aj  ; 2 uses

.noexc96:                                         ; preds = %bb.ai
  %i.ej = load i64, ptr %.sroa.01.05.i.i, align 8, !tbaa !1891, !noalias !6508
  store i64 %i.ej, ptr %i.ei, align 8, !tbaa !1891
  store ptr %i.ei, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !863
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i: ; preds = %.noexc96, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE22find_or_prepare_insertIS4_EESt4pairINSA_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %.not.i.i93 = icmp eq ptr %.sroa.01.05.i.i, %.pn203
  br i1 %.not.i.i93, label %.lr.ph225, label %bb.ac, !llvm.loop !3239

.lr.ph225:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE7emplaceIJRS4_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSE_.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ak:                                            ; preds = %.lr.ph225, %bb.bs
  %.sroa.0163.0224 = phi ptr [ %.sroa.0173.3, %.lr.ph225 ], [ %i.hq, %bb.bs ] ; 5 uses
  %i.eo = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE4findIS4_EENSA_8iteratorERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0163.0224)
          to label %.noexc108 unwind label %bb.ap ; 2 uses

.noexc108:                                        ; preds = %bb.ak
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 3 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1
  %.not.i97 = icmp eq ptr %i.ep, null
  br i1 %.not.i97, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109.thread, label %.preheader.preheader.i98

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109.thread: ; preds = %.noexc108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 0, ptr %i.e, align 8, !tbaa !34
  br label %bb.ao

.preheader.preheader.i98:                         ; preds = %.noexc108
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 3 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !219, !noalias !6509 ; 2 uses
  %i.et = icmp slt i8 %i.es, -1
  br i1 %i.et, label %.lr.ph.i.i.i.i107, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99

.lr.ph.i.i.i.i107:                                ; preds = %.preheader.preheader.i98, %.lr.ph.i.i.i.i107
  %i.eu = phi ptr [ %i.ev, %.lr.ph.i.i.i.i107 ], [ %i.er, %.preheader.preheader.i98 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !219, !noalias !6509 ; 2 uses
  %i.ex = icmp slt i8 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i.i.i.i107, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99, !llvm.loop !1890

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99: ; preds = %.lr.ph.i.i.i.i107, %.preheader.preheader.i98
  %.lcssa14.i.i101 = phi ptr [ %i.er, %.preheader.preheader.i98 ], [ %i.ev, %.lr.ph.i.i.i.i107 ]
  %i.ey = phi i8 [ %i.es, %.preheader.preheader.i98 ], [ %i.ew, %.lr.ph.i.i.i.i107 ]
  %i.ez = icmp eq i8 %i.ey, -1
  br i1 %i.ez, label %bb.al, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109, !prof !218

bb.al:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109: ; preds = %bb.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99
  %.sink21.i103 = phi ptr [ null, %bb.al ], [ %.lcssa14.i.i101, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i99 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 1, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116
  %.09.i112 = phi i64 [ %i.fj, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109 ] ; 2 uses
  %.sroa.02.07.i113 = phi ptr [ %.sroa.02.2.i117, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116 ], [ %i.ep, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i113, i64 1 ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !219 ; 2 uses
  %i.fc = icmp slt i8 %i.fb, -1
  br i1 %i.fc, label %.lr.ph.i.i.i120, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114

.lr.ph.i.i.i120:                                  ; preds = %.lr.ph.i111, %.lr.ph.i.i.i120
  %i.fd = phi ptr [ %i.fe, %.lr.ph.i.i.i120 ], [ %i.fa, %.lr.ph.i111 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1 ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !219 ; 2 uses
  %i.fg = icmp slt i8 %i.ff, -1
  br i1 %i.fg, label %.lr.ph.i.i.i120, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114, !llvm.loop !1890

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114: ; preds = %.lr.ph.i.i.i120, %.lr.ph.i111
  %.sroa.02.1.i115 = phi ptr [ %i.fa, %.lr.ph.i111 ], [ %i.fe, %.lr.ph.i.i.i120 ]
  %i.fh = phi i8 [ %i.fb, %.lr.ph.i111 ], [ %i.ff, %.lr.ph.i.i.i120 ]
  %i.fi = icmp eq i8 %i.fh, -1
  br i1 %i.fi, label %bb.am, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116, !prof !218

bb.am:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116: ; preds = %bb.am, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114
  %.sroa.02.2.i117 = phi ptr [ null, %bb.am ], [ %.sroa.02.1.i115, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iterator21skip_empty_or_deletedEv.exit.i.i114 ] ; 2 uses
  %i.fj = add nuw nsw i64 %.09.i112, 1            ; 2 uses
  %.not.i118 = icmp eq ptr %.sroa.02.2.i117, %.sink21.i103
  br i1 %.not.i118, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_9EnumClassEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit121, label %.lr.ph.i111, !llvm.loop !6481

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_9EnumClassEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit121: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE8iteratorppEv.exit.i116
  store i64 %i.fj, ptr %i.e, align 8, !tbaa !34
  %i.fk = icmp eq i64 %.09.i112, 0
  br i1 %i.fk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_9EnumClassEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit121
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124 unwind label %bb.aq

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashSetPolicyINS1_9EnumClassEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS4_EEEE11equal_rangeIS4_EESt4pairINSA_8iteratorESD_ERKS4_.exit109.thread, %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashSetPolicyINS2_9EnumClassEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocIS5_EEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit121
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124 unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.fl = load i8, ptr %7, align 8, !tbaa !190, !range !26, !noundef !27
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %.critedge74, label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bf

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.fp = load ptr, ptr %i.el, align 8, !tbaa !198 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.at, %bb.as
  %i.fr = phi ptr [ %i.fq, %bb.at ], [ @.str.166, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 77, ptr noundef %i.fr)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.fs = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.av
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.fw = load ptr, ptr %i.el, align 8, !tbaa !198 ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i130, label %.critedge76, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !30 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.aw
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !35
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 32) #36
  br label %.critedge76

bb.ax:                                            ; preds = %bb.ar
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.au
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn59 = phi { ptr, i32 } [ %i.ge, %bb.az ], [ %i.gd, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.gf = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ba
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !62
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(128) %i.gf) #33, !inline_history !201
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.ba, %bb.ax
  %.pn59.pn = phi { ptr, i32 } [ %i.gc, %bb.ax ], [ %.pn59, %bb.ba ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  br label %bb.bf

.critedge74:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124
  %i.gj = load ptr, ptr %i.el, align 8, !tbaa !198 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i138, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.critedge74
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !30 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.bb
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !35
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 32) #36
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.gp = load ptr, ptr %i.eq, align 8, !tbaa !863 ; 2 uses
  %i.gq = load i64, ptr %.sroa.0163.0224, align 8, !tbaa !1891, !noalias !6512
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !1891, !noalias !6512
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal9EnumClassES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.bg

bb.be:                                            ; preds = %bb.bc
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal9EnumClassES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.237, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0163.0224, ptr noundef nonnull align 8 dereferenceable(8) %i.gp)
end_hunk_3
