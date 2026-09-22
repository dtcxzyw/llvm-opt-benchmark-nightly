Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_EmiESB_:bb.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, %2
  br i1 %i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.6.0.copyload.i = phi i32 [ %.sroa.6.0.copyload.i.pre, %._crit_edge ], [ %i.f, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %.not64.i = icmp eq i8 %i.k, 0
  %i.l = sub nsw i32 0, %2
  %i.m = sext i32 %i.l to i64
  br i1 %.not64.i, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.o = add i32 %2, 1
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !877  ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !813
  %i.t = icmp eq i8 %.pre.i, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.15280.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.s, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %.15280.i, i64 256
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !877  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !813
  %.not.i61.i = icmp eq i8 %i.x, 0
  br i1 %.not.i61.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3104

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.048104.i = phi i64 [ 1, %bb.f ], [ %i.m, %bb.e ], [ 1, %.lr.ph.i ]
  %.152.lcssa.i = phi ptr [ %i.s, %bb.f ], [ %1, %bb.e ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.152.lcssa.i, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !813
  %i.aa = zext i8 %i.z to i64
  %i.ab = load ptr, ptr %.152.lcssa.i, align 8, !tbaa !877
  %i.ac = sext i32 %.sroa.6.0.copyload.i to i64   ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %._crit_edge.i
  %.250.i = phi i64 [ %.048104.i, %._crit_edge.i ], [ %i.ax, %.backedge ] ; 2 uses
  %.146.i = phi i64 [ %i.aa, %._crit_edge.i ], [ %.146.i.be, %.backedge ] ; 2 uses
  %.1.i = phi ptr [ %i.ab, %._crit_edge.i ], [ %.1.i.be, %.backedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 256
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.146.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !877 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !813
  %.not.i62.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i62.i, label %.lr.ph83.i, label %bb.h

.lr.ph83.i:                                       ; preds = %bb.g, %.lr.ph83.i
  %.25382.i = phi ptr [ %i.aj, %.lr.ph83.i ], [ %i.af, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.25382.i, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !877 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !813
  %.not.i63.i = icmp eq i8 %i.al, 0
  br i1 %.not.i63.i, label %.lr.ph83.i, label %._crit_edge84.i, !llvm.loop !3105

._crit_edge84.i:                                  ; preds = %.lr.ph83.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !813
  %i.ao = zext i8 %i.an to i64
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !877
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge84.i, %bb.g
  %.354.i = phi ptr [ %i.aj, %._crit_edge84.i ], [ %i.af, %bb.g ] ; 2 uses
  %.247.i = phi i64 [ %i.ao, %._crit_edge84.i ], [ %.146.i, %bb.g ] ; 3 uses
  %.2.i = phi ptr [ %i.ap, %._crit_edge84.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.aq = icmp eq ptr %.354.i, %i.a
  br i1 %i.aq, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_E13distance_slowESB_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %.2.i, %i.a
  %i.as = icmp eq i64 %.247.i, %i.ac
  %or.cond.i = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = getelementptr inbounds nuw i8, ptr %.354.i, i64 10
  %i.au = load i8, ptr %i.at, align 1, !tbaa !813
  %i.av = zext i8 %i.au to i64                    ; 3 uses
  br i1 %or.cond.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_E13distance_slowESB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %.250.i, 1
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.2.i, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !813
  %i.ba = zext i8 %i.az to i64
  %.not.not.i = icmp samesign ult i64 %.247.i, %i.ba
  br i1 %.not.not.i, label %.backedge, label %.preheader65.i

.backedge:                                        ; preds = %bb.k, %bb.j
  %.146.i.be.in = phi i64 [ %.247.i, %bb.j ], [ %i.bd, %bb.k ]
  %.1.i.be = phi ptr [ %.2.i, %bb.j ], [ %i.be, %bb.k ]
  %.146.i.be = add nuw nsw i64 %.146.i.be.in, 1
  br label %bb.g, !llvm.loop !3106

.preheader65.i:                                   ; preds = %bb.j, %bb.k
  %.3.i = phi ptr [ %i.be, %bb.k ], [ %.2.i, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !813 ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = load ptr, ptr %.3.i, align 8, !tbaa !877 ; 4 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  %i.bg = icmp eq i64 %i.bd, %i.ac
  %or.cond60.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond60.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_E13distance_slowESB_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader65.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !813
  %.not.i = icmp ult i8 %i.bc, %i.bi
  br i1 %.not.i, label %.backedge, label %.preheader65.i, !llvm.loop !3107

_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_E13distance_slowESB_.exit: ; preds = %bb.h, %bb.i, %.preheader65.i
  %.pn.i = phi i64 [ %i.av, %.preheader65.i ], [ %i.ac, %bb.h ], [ %i.av, %bb.i ]
  %.055.i = add i64 %.pn.i, %.250.i
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_E13distance_slowESB_.exit, %bb.c
  %.0 = phi i64 [ %i.h, %bb.c ], [ %.055.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_E13distance_slowESB_.exit ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !853
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !851
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE16clear_and_deleteEPS5_PSaIiE(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23GenerateNumbersWithSeedEiii(ptr dead_on_unwind noalias writable sret(%"class.std::vector.146") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20260526::flat_hash_set", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store i64 1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %bb.b
  %i.d = sext i32 %3 to i64
  %i.e = urem i64 %i.d, 2147483647
  %storemerge.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1)
  %i.f = add nsw i32 %2, 1                        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph73, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.k = phi ptr [ null, %.lr.ph73 ], [ %i.cp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.072 = phi i32 [ 0, %.lr.ph73 ], [ %i.cs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.018.071 = phi i64 [ %storemerge.i.i, %.lr.ph73 ], [ %i.by, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.l = phi ptr [ null, %.lr.ph73 ], [ %i.cr, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.m = phi ptr [ null, %.lr.ph73 ], [ %i.cq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.n = load i64, ptr %5, align 8, !noalias !3129 ; 6 uses
  %i.o = and i64 %i.n, 254
  %i.p = icmp eq i64 %i.o, 0
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.g, align 8 ; 3 uses
  %i.q = and i64 %i.n, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.q
  %i.r = lshr i64 %i.n, 8
  %i.s = and i64 %i.r, 255
  %i.t = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %.sroa.0.0.copyload.i.i.i3.i = load ptr, ptr %i.h, align 8 ; 2 uses
  %i.u = icmp ult i64 %i.n, 562949953552384
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.p, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.n, 131072
  call void @llvm.assume(i1 %i.u)
  %i.x = mul nuw nsw i64 %.sroa.018.071, 16807
  %i.y = urem i64 %i.x, 2147483647                ; 4 uses
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = srem i32 %i.z, %i.f                     ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.split.us, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us.lr.ph.split

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us.lr.ph.split: ; preds = %.split.us
  %i.ab = icmp eq i32 %i.aa, %i.w
  br i1 %i.ab, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us, label %.split51.us

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us.lr.ph.split, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us
  %i.ac = phi i64 [ %i.ae, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us ], [ %i.y, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us.lr.ph.split ]
  %i.ad = mul nuw nsw i64 %i.ac, 16807
  %i.ae = urem i64 %i.ad, 2147483647              ; 3 uses
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = srem i32 %i.af, %i.f                    ; 2 uses
  %i.ah = icmp eq i32 %i.ag, %i.w
  br i1 %i.ah, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us, label %.split51.us

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.split.us: ; preds = %.split.us
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !802
  %i.ai = or i64 %i.n, 131328
  store i64 %i.ai, ptr %5, align 8, !noalias !3130
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

.split51.us:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us.lr.ph.split
  %.lcssa54 = phi i32 [ %i.aa, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us.lr.ph.split ], [ %i.ag, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us ]
  %.lcssa47.us = phi i64 [ %i.y, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us.lr.ph.split ], [ %i.ae, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIiLi0EEESt4pairINS5_8iteratorEbERKT_.exit.us ]
  store i32 %.lcssa54, ptr %i.a, align 4, !tbaa !802
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !3130
  store ptr %5, ptr %4, align 8, !tbaa !3131, !noalias !3130
  store ptr %i.a, ptr %i.i, align 8, !tbaa !869, !noalias !3130
  %i.aj = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.l

.split:                                           ; preds = %.lr.ph.i, %bb.c
  %.sroa.018.1 = phi i64 [ %.sroa.018.071, %bb.c ], [ %i.al, %.lr.ph.i ]
  %i.ak = mul nuw nsw i64 %.sroa.018.1, 16807
  %i.al = urem i64 %i.ak, 2147483647              ; 3 uses
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = srem i32 %i.am, %i.f                    ; 3 uses
  store i32 %i.an, ptr %i.a, align 4, !tbaa !802
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !3132
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = xor i64 %i.s, %i.ao
  %i.aq = zext nneg i64 %i.ap to i128
  %i.ar = mul nuw nsw i128 %i.aq, 8779197792823184629 ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 3 uses
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

.noexc:                                           ; preds = %.split51.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !3130
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !813, !noalias !3130
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.aj
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.d:                                             ; preds = %bb.f, %.split
  %.pn.i = phi i64 [ %i.au, %.split ], [ %i.bx, %bb.f ]
  %.sroa.14.0.i = phi i64 [ 0, %.split ], [ %i.bw, %bb.f ] ; 2 uses
  %.sroa.639.0.i = and i64 %.pn.i, %i.t           ; 5 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %.sroa.639.0.i
  call void @llvm.prefetch.p0(ptr %i.ba, i32 0, i32 3, i32 1), !noalias !3132
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.639.0.i
  %i.bc = load <16 x i8>, ptr %i.bb, align 1, !tbaa !813, !noalias !3132 ; 2 uses
  %i.bd = icmp eq <16 x i8> %i.ay, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = zext i16 %i.be to i32
  %i.bg = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bf) #28, !srcloc !893 ; 2 uses
  %.not67.i = icmp eq i32 %i.bg, 0
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i.i
  %.sroa.024.068.i = phi i32 [ %i.bp, %.critedge.i.i ], [ %i.bg, %bb.d ] ; 3 uses
  %i.bh = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.068.i, i1 true)
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = add nuw i64 %.sroa.639.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.t
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !802, !noalias !3132
  %i.bn = icmp eq i32 %i.bm, %i.an
  br i1 %i.bn, label %.split, label %.critedge.i.i, !prof !871

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.bo = add i32 %.sroa.024.068.i, -1
  %i.bp = and i32 %i.bo, %.sroa.024.068.i         ; 2 uses
  %.not.i15 = icmp eq i32 %i.bp, 0
  br i1 %.not.i15, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.d
  %i.bq = icmp eq <16 x i8> %i.bc, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = zext i16 %i.br to i32
  %i.bt = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bs) #28, !srcloc !893 ; 2 uses
  %.not61.i = icmp eq i32 %i.bt, 0
  br i1 %.not61.i, label %bb.f, label %bb.e, !prof !812

bb.e:                                             ; preds = %._crit_edge.i
  %i.bu = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.au, i32 %i.bt, i64 %.sroa.639.0.i, i64 %.sroa.14.0.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread27 unwind label %bb.l

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread27: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i2.i.pre.i = load ptr, ptr %i.h, align 8, !tbaa !813, !noalias !3132
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.pre.i, i64 %i.bu
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.bw = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.bx = add i64 %i.bw, %.sroa.639.0.i
  br label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.split.us, %.noexc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread27
  %i.by = phi i64 [ %i.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread27 ], [ %i.y, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.split.us ], [ %.lcssa47.us, %.noexc ]
  %.sroa.5.023 = phi ptr [ %i.bv, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread27 ], [ %i.g, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.split.us ], [ %i.az, %.noexc ]
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !802, !noalias !3133 ; 2 uses
  store i32 %i.bz, ptr %.sroa.5.023, align 4, !tbaa !802
  %.not.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  store i32 %i.bz, ptr %i.l, align 4, !tbaa !802
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  %i.ca = ptrtoint ptr %i.k to i64
  %i.cb = ptrtoint ptr %i.m to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 6 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775804
  br i1 %i.cd, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.l, ptr %i.b, align 8
  store ptr %i.m, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.303) #38
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ce = ashr exact i64 %i.cc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 2305843009213693951)
  %i.ci = select i1 %i.cg, i64 2305843009213693951, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #35
          to label %.noexc13 unwind label %.loopexit35 ; 4 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !802
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !802
  %i.cn = icmp sgt i64 %i.cc, 0
  br i1 %i.cn, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc13
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 4 %i.m, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc13
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.cc) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ci ; 2 uses
  store ptr %i.co, ptr %i.j, align 8, !tbaa !870
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g
  %i.cp = phi ptr [ %i.co, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.k, %bb.g ]
  %i.cq = phi ptr [ %i.ck, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.m, %bb.g ] ; 2 uses
  %.pn76 = phi ptr [ %i.cl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.l, %bb.g ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn76, i64 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.cs = add nuw nsw i32 %.072, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %1
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !3128

.loopexit35:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.b, align 8
  store ptr %i.m, ptr %0, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e, %.split51.us
  %i.ct = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.b, align 8
  store ptr %i.m, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %.loopexit35, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.l ], [ %lpad.loopexit, %.loopexit35 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.not.i.i.i14 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = ptrtoint ptr %i.k to i64
  %i.cv = ptrtoint ptr %i.m to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.cw) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %.pn

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre.pre = load i64, ptr %5, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.pre = phi i64 [ 1, %bb.b ], [ %.pre.pre, %.loopexit.loopexit ]
  %.lcssa67 = phi ptr [ null, %bb.b ], [ %i.cq, %.loopexit.loopexit ]
  %.lcssa62 = phi ptr [ null, %bb.b ], [ %i.cr, %.loopexit.loopexit ]
  store ptr %.lcssa62, ptr %i.b, align 8
  store ptr %.lcssa67, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.a
  %i.cx = phi i64 [ %.pre, %.loopexit ], [ 1, %bb.a ] ; 4 uses
  %i.cy = and i64 %i.cx, 255                      ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.cy      ; 4 uses
  %i.cz = add nsw i64 %notmask.i.i.i.i.i, 8589934591
  %i.da = or i64 %i.cz, %notmask.i.i.i.i.i
  %i.db = icmp eq i64 %i.da, -1
  call void @llvm.assume(i1 %i.db)
  %i.dc = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp samesign ugt i64 %notmask.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.dd)
  %i.de = and i64 %i.cx, 254
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.p, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.dg = icmp ult i64 %i.cx, 562949953552384
  call void @llvm.assume(i1 %i.dg)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i: ; preds = %bb.o
  %i.dh = xor i64 %notmask.i.i.i.i.i, -1
  %i.di = and i64 %i.cx, 65536
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !813
  %i.dj = icmp ne i64 %i.di, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.dh, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.dj)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #39
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev.exit: ; preds = %bb.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 4 uses
  %i.c = add nsw i64 %notmask.i.i.i.i, 8589934591
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %notmask.i.i.i.i, -8589934593
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.a, 254
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i: ; preds = %bb.a
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = and i64 %i.a, 65536
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !813
  %i.m = icmp ne i64 %i.l, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.m)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i
  ret void
end_hunk_0
