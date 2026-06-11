inline.NumInlined: 1926
inline.NumDeleted: 800
begin_hunk_0_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE22find_or_prepare_insertIS7_EESt4pairImbERKT_:bb.a
  %i.aj = load ptr, ptr %1, align 8               ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.pn = phi i64 [ %i.ac, %bb.a ], [ %i.bn, %bb.g ]
  %.sroa.12.0 = phi i64 [ 0, %bb.a ], [ %i.bm, %bb.g ]
  %.sroa.6.0 = and i64 %.pn, %i.y                 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.6.0
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !101 ; 3 uses
  %i.ao = icmp eq <16 x i8> %i.ag, %i.an
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not52 = icmp eq i16 %i.ap, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !3  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.019.053 = phi i16 [ %i.ap, %.lr.ph ], [ %i.bi, %.critedge ] ; 3 uses
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.053, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.6.0, %i.at
  %i.av = and i64 %i.au, %i.y                     ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !104 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3  ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp eq ptr %i.ax, %i.aj
  br i1 %i.bc, label %.thread39, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = load i32, ptr %i.al, align 4, !tbaa !3
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.e, label %.critedge, !prof !342

bb.e:                                             ; preds = %bb.d
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bb, 2
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ba, %i.ar
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %.critedge, !prof !342

bb.f:                                             ; preds = %bb.e
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread39, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit: ; preds = %bb.f
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ay, ptr %i.aq, i64 %.idx.i.i.i.i.i.i.i.i)
  %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread39, label %.critedge, !prof !163

.critedge:                                        ; preds = %bb.e, %bb.d, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit
  %i.bh = add i16 %.sroa.019.053, -1
  %i.bi = and i16 %i.bh, %.sroa.019.053           ; 2 uses
  %.not = icmp eq i16 %i.bi, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.bj = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.an, <16 x i8> %i.an)
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %.not51 = icmp eq i16 %i.bl, 0
  br i1 %.not51, label %bb.g, label %bb.h, !prof !83

bb.g:                                             ; preds = %._crit_edge
  %i.bm = add i64 %.sroa.12.0, 16                 ; 2 uses
  %i.bn = add i64 %i.bm, %.sroa.6.0
  br label %bb.b

bb.h:                                             ; preds = %._crit_edge
  %i.bo = tail call noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v)
  br label %.thread39

.thread39:                                        ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit, %bb.c, %bb.f, %bb.h
  %.sroa.031.2 = phi i64 [ %i.bo, %bb.h ], [ %i.av, %bb.f ], [ %i.av, %bb.c ], [ %i.av, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit ]
  %.sroa.3.2 = phi i8 [ 1, %bb.h ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.031.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95, !noalias !343 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94, !noalias !343 ; 4 uses
  %i.d = lshr i64 %1, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = and i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !101
  %i.k = icmp slt <16 x i8> %i.j, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.l, 0
  br i1 %.not17.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.10.019.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.5.018.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.a ]
  %i.m = add i64 %.sroa.10.019.i, 16              ; 2 uses
  %i.n = add i64 %i.m, %.sroa.5.018.i
  %i.o = and i64 %i.n, %i.c                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !101
  %i.r = icmp slt <16 x i8> %i.q, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !346

.loopexit:                                        ; preds = %.lr.ph.i, %bb.a
  %.sroa.5.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.l, %bb.a ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.5.0.lcssa.i, %i.u
  %i.w = and i64 %i.v, %i.c                       ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !211
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !99
  %.not = icmp eq i8 %i.ab, -2
  br i1 %.not, label %.critedge, label %bb.c, !prof !245

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ac = tail call { i64, i64 } @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper27FindFirstNonFullAfterResizeERKNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i64 noundef %1)
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !95
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.c, %bb.b
  %i.ae = phi ptr [ %i.a, %.loopexit ], [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.01.0 = phi i64 [ %i.w, %.loopexit ], [ %i.ad, %bb.c ], [ %i.w, %bb.b ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !96
  %i.ah = add i64 %i.ag, 2
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !96
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !211
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.0 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !99
  %i.am = icmp eq i8 %i.al, -128
  %.neg = sext i1 %i.am to i64
  %i.an = add i64 %i.aj, %.neg
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !211
  %i.ao = trunc i64 %1 to i8
  %i.ap = and i8 %i.ao, 127                       ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !94  ; 2 uses
  store i8 %i.ap, ptr %i.ak, align 1, !tbaa !99
  %i.ar = add i64 %.sroa.01.0, -15
  %i.as = and i64 %i.aq, %i.ar
  %i.at = and i64 %i.aq, 15
  %i.au = getelementptr i8, ptr %i.ae, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 %i.at
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !99
  ret i64 %.sroa.01.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::container_internal::HashSetResizeHelper", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.36", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !95
  store ptr %i.a, ptr %2, align 8, !tbaa !347
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  store i64 %i.d, ptr %i.b, align 8, !tbaa !349
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !96
  %i.h = trunc i64 %i.g to i8
  %i.i = and i8 %i.h, 1
  store i8 %i.i, ptr %i.e, align 8, !tbaa !350
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !98   ; 2 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !94
  %i.l = call noundef zeroext i1 @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm8ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.k, ptr noundef nonnull %3)
  %i.m = load i64, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %brmerge = or i1 %i.l, %i.n
  br i1 %brmerge, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !98
  %.pre34 = load ptr, ptr %2, align 8, !tbaa !347
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.p = phi i64 [ %i.bv, %bb.c ], [ %i.m, %.lr.ph.preheader ]
  %4 = phi ptr [ %5, %bb.c ], [ %.pre34, %.lr.ph.preheader ] ; 2 uses
  %.02229 = phi i64 [ %i.bw, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %.02229
  %i.r = load i8, ptr %i.q, align 1, !tbaa !99
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02229 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104  ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.0.copyload.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.z, align 4
  %i.aa = zext i32 %.0.copyload.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ab = add i64 %i.aa, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, 11376068507788127593 ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64
  %i.ah = shl nsw i64 %i.y, 2
  %i.ai = call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.ag, ptr noundef %i.v, i64 noundef %i.ah)
  %i.aj = add i64 %i.ai, %i.y
  %i.ak = zext i64 %i.aj to i128
  %i.al = mul nuw i128 %i.ak, 11376068507788127593 ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al                   ; 2 uses
  %i.ao = trunc i128 %i.an to i64
  %i.ap = load ptr, ptr %0, align 8, !tbaa !95, !noalias !351 ; 5 uses
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !94, !noalias !351 ; 5 uses
  %i.ar = lshr i64 %i.ao, 7
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = lshr i64 %i.as, 12
  %i.au = xor i64 %i.ar, %i.at
  %i.av = and i64 %i.au, %i.aq                    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.ax = load <16 x i8>, ptr %i.aw, align 1, !tbaa !101
  %i.ay = icmp slt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not17.i = icmp eq i16 %i.az, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.10.019.i = phi i64 [ %i.ba, %.lr.ph.i ], [ 0, %bb.b ]
  %.sroa.5.018.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %i.av, %bb.b ]
  %i.ba = add i64 %.sroa.10.019.i, 16             ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.5.018.i
  %i.bc = and i64 %i.bb, %i.aq                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bc
  %i.be = load <16 x i8>, ptr %i.bd, align 1, !tbaa !101
  %i.bf = icmp slt <16 x i8> %i.be, splat (i8 -1)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit, !llvm.loop !346

_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.5.0.lcssa.i = phi i64 [ %i.av, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.az, %bb.b ], [ %i.bg, %.lr.ph.i ]
  %i.bh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.5.0.lcssa.i, %i.bi
  %i.bk = and i64 %i.bj, %i.aq                    ; 3 uses
  %i.bl = trunc i128 %i.an to i8
  %i.bm = and i8 %i.bl, 127                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !99
  %i.bo = add i64 %i.bk, -15
  %i.bp = and i64 %i.bo, %i.aq
  %i.bq = and i64 %i.aq, 15
  %i.br = getelementptr i8, ptr %i.ap, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bq
  store i8 %i.bm, ptr %i.bs, align 1, !tbaa !99
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bk
  %i.bu = load i64, ptr %i.t, align 8
  store i64 %i.bu, ptr %i.bt, align 1
  %.pre = load ptr, ptr %2, align 8, !tbaa !347
  %.pre.a = load i64, ptr %i.b, align 8, !tbaa !349
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit
  %i.bv = phi i64 [ %.pre.a, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ], [ %i.p, %.lr.ph ] ; 4 uses
  %5 = phi ptr [ %.pre, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ], [ %4, %.lr.ph ] ; 2 uses
  %i.bw = add i64 %.02229, 1                      ; 2 uses
  %.not = icmp eq i64 %i.bw, %i.bv
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !354

._crit_edge:                                      ; preds = %bb.c
  %i.bx = load i8, ptr %i.e, align 8, !tbaa !350, !range !132, !noundef !97
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  %.neg.i = select i1 %i.by, i64 -9, i64 -8
  %i.bz = select i1 %i.by, i64 9, i64 8
  %i.ca = getelementptr inbounds i8, ptr %5, i64 %.neg.i
  %i.cb = add i64 %i.bv, 23
  %i.cc = add i64 %i.cb, %i.bz
  %i.cd = shl i64 %i.bv, 3
  %i.ce = add i64 %i.cc, %i.cd
  %i.cf = and i64 %i.ce, -8
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94   ; 3 uses
  %i.d = icmp ugt i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96
  %i.g = shl i64 %i.f, 4
  %i.h = and i64 %i.g, -32
  %i.i = mul i64 %i.c, 25
  %.not = icmp ugt i64 %i.h, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @_ZN4absl12lts_2024011618container_internal24DropDeletesWithoutResizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = shl i64 %i.c, 1
  %i.k = or disjoint i64 %i.j, 1
  tail call void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper27FindFirstNonFullAfterResizeERKNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 5 uses
  %i.c = icmp ult i64 %i.b, 17
  %i.d = icmp ult i64 %1, %i.b
  %i.e = and i1 %i.c, %i.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !95, !noalias !97 ; 3 uses
  %i.g = lshr i64 %2, 7
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = lshr i64 %i.h, 12
  %i.j = xor i64 %i.i, %i.g
  %i.k = and i64 %i.j, %i.b                       ; 5 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !101
  %i.n = icmp slt <16 x i8> %i.m, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.o, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.10.019.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %bb.b ]
  %.sroa.5.018.i = phi i64 [ %i.r, %.lr.ph.i ], [ %i.k, %bb.b ]
  %i.p = add i64 %.sroa.10.019.i, 16              ; 3 uses
  %i.q = add i64 %i.p, %.sroa.5.018.i
  %i.r = and i64 %i.q, %i.b                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.r
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !101
  %i.u = icmp slt <16 x i8> %i.t, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit, !llvm.loop !346

_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.5.0.lcssa.i = phi i64 [ %i.k, %bb.b ], [ %i.r, %.lr.ph.i ]
  %.sroa.10.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.p, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.o, %bb.b ], [ %i.v, %.lr.ph.i ]
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.5.0.lcssa.i, %i.x
  %i.z = and i64 %i.y, %i.b
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.neg = xor i64 %1, -1
  %i.aa = add i64 %i.k, %.neg
  %.not = icmp ult i64 %i.aa, %1
  %i.ab = lshr i64 %1, 1
  %spec.select = select i1 %.not, i64 %i.k, i64 %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit
  %spec.select.pn = phi i64 [ %spec.select, %bb.c ], [ %i.z, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ]
  %.pn11 = phi i64 [ 0, %bb.c ], [ %.sroa.10.0.lcssa.i, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ]
  %.pn = insertvalue { i64, i64 } poison, i64 %spec.select.pn, 0
  %.fca.1.insert.merged = insertvalue { i64, i64 } %.pn, i64 %.pn11, 1
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm8ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 8 uses
  %i.c = add i64 %i.b, 31                         ; 2 uses
  %i.d = shl i64 %i.b, 3
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.g = and i64 %i.c, -8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = and i64 %i.e, 9223372036854775800
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store ptr %i.l, ptr %i.h, align 8, !tbaa !98
  %i.m = lshr i64 %i.b, 3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96   ; 2 uses
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw i64 %i.m, %i.p
  %i.r = sub i64 %i.b, %i.q
  store i64 %i.r, ptr %i.j, align 8, !tbaa !211
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !349  ; 2 uses
  %i.u = icmp ult i64 %i.b, 17
  %i.v = icmp ult i64 %i.t, %i.b
  %i.w = and i1 %i.u, %i.v                        ; 2 uses
  %i.x = icmp ne i64 %i.t, 0
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit
  tail call void @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper35GrowSizeIntoSingleGroupTransferableERNS1_12CommonFieldsEPvm(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef 8)
  %i.y = load i64, ptr %i.s, align 8, !tbaa !349  ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !347
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !350, !range !132, !noundef !97
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %.neg.i = select i1 %i.ac, i64 -9, i64 -8
  %i.ad = select i1 %i.ac, i64 9, i64 8
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %.neg.i
  %i.af = add i64 %i.y, 23
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = shl i64 %i.y, 3
  %i.ai = add i64 %i.ag, %i.ah
  %i.aj = and i64 %i.ai, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #28
  %.pre = load i64, ptr %i.n, align 8, !tbaa !96
  br label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit
  %i.ak = add i64 %i.b, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 -128, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  store i8 -1, ptr %i.al, align 1, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.am = phi i64 [ %.pre, %bb.c ], [ %i.o, %bb.d ]
  %i.an = and i64 %i.am, -2
  store i64 %i.an, ptr %i.n, align 8, !tbaa !96
  ret i1 %i.w
}

declare void @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper35GrowSizeIntoSingleGroupTransferableERNS1_12CommonFieldsEPvm(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_2024011618container_internal24DropDeletesWithoutResizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPv(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE12hash_slot_fnEPvSD_(ptr noundef %0, ptr noundef %1) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !104    ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3
  %i.e = sext i32 %i.d to i64                     ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_1JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_":bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !357
  invoke void @_ZN3re23DFAC1EPNS_4ProgENS1_9MatchKindEl(ptr noundef nonnull align 8 dereferenceable(176) %i.e, ptr noundef nonnull %.val, i32 noundef 3, i64 noundef %i.g)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 176) #28
  resume { ptr, i32 } %i.h

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 152
  store ptr %i.e, ptr %i.i, align 8, !tbaa !358
  %i.j = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.k = icmp eq i32 %i.j, 94570706
  br i1 %i.k, label %bb.c, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.c:                                             ; preds = %bb.b
  tail call void @AbslInternalSpinLockWake_lts_20240116(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.c, %bb.b, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_2JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = cmpxchg ptr %0, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4absl12lts_2024011613base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @"_ZZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_2JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans", i32 noundef 1)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %.val = load ptr, ptr %1, align 8, !tbaa !244   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !248, !range !132, !noundef !97
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #26 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.j = load i64, ptr %i.i, align 8, !tbaa !357  ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  %i.k = sdiv i64 %i.j, 2
  invoke void @_ZN3re23DFAC1EPNS_4ProgENS1_9MatchKindEl(ptr noundef nonnull align 8 dereferenceable(176) %i.h, ptr noundef nonnull %.val, i32 noundef 1, i64 noundef %i.k)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  invoke void @_ZN3re23DFAC1EPNS_4ProgENS1_9MatchKindEl(ptr noundef nonnull align 8 dereferenceable(176) %i.h, ptr noundef nonnull %.val, i32 noundef 1, i64 noundef %i.j)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 176) #28
  resume { ptr, i32 } %.pn.i.i.i.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 160
  store ptr %i.h, ptr %i.n, align 8, !tbaa !359
  %i.o = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.p = icmp eq i32 %i.o, 94570706
  br i1 %i.p, label %bb.g, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.g:                                             ; preds = %bb.f
  tail call void @AbslInternalSpinLockWake_lts_20240116(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.g, %bb.f, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95, !noalias !360 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94, !noalias !360 ; 4 uses
  %i.d = lshr i64 %1, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = and i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !101
  %i.k = icmp slt <16 x i8> %i.j, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.l, 0
  br i1 %.not17.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.10.019.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.5.018.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.a ]
  %i.m = add i64 %.sroa.10.019.i, 16              ; 2 uses
  %i.n = add i64 %i.m, %.sroa.5.018.i
  %i.o = and i64 %i.n, %i.c                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !101
  %i.r = icmp slt <16 x i8> %i.q, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !346

.loopexit:                                        ; preds = %.lr.ph.i, %bb.a
  %.sroa.5.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.l, %bb.a ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.5.0.lcssa.i, %i.u
  %i.w = and i64 %i.v, %i.c                       ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !211
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !99
  %.not = icmp eq i8 %i.ab, -2
  br i1 %.not, label %.critedge, label %bb.c, !prof !245

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ac = tail call { i64, i64 } @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper27FindFirstNonFullAfterResizeERKNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i64 noundef %1)
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !95
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.c, %bb.b
  %i.ae = phi ptr [ %i.a, %.loopexit ], [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.01.0 = phi i64 [ %i.w, %.loopexit ], [ %i.ad, %bb.c ], [ %i.w, %bb.b ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !96
  %i.ah = add i64 %i.ag, 2
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !96
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !211
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.0 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !99
  %i.am = icmp eq i8 %i.al, -128
  %.neg = sext i1 %i.am to i64
  %i.an = add i64 %i.aj, %.neg
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !211
  %i.ao = trunc i64 %1 to i8
  %i.ap = and i8 %i.ao, 127                       ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !94  ; 2 uses
  store i8 %i.ap, ptr %i.ak, align 1, !tbaa !99
  %i.ar = add i64 %.sroa.01.0, -15
  %i.as = and i64 %i.aq, %i.ar
  %i.at = and i64 %i.aq, 15
  %i.au = getelementptr i8, ptr %i.ae, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 %i.at
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !99
  ret i64 %.sroa.01.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::container_internal::HashSetResizeHelper", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.36", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !95
  store ptr %i.a, ptr %2, align 8, !tbaa !347
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  store i64 %i.d, ptr %i.b, align 8, !tbaa !349
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !96
  %i.h = trunc i64 %i.g to i8
  %i.i = and i8 %i.h, 1
  store i8 %i.i, ptr %i.e, align 8, !tbaa !350
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !98   ; 2 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !94
  %i.l = call noundef zeroext i1 @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm16ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.k, ptr noundef nonnull %3)
  %i.m = load i64, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %brmerge = or i1 %i.l, %i.n
  br i1 %brmerge, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !98
  %.pre34 = load ptr, ptr %2, align 8, !tbaa !347
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.p = phi i64 [ %i.bn, %bb.c ], [ %i.m, %.lr.ph.preheader ]
  %4 = phi ptr [ %5, %bb.c ], [ %.pre34, %.lr.ph.preheader ] ; 2 uses
  %.02229 = phi i64 [ %i.bo, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %.02229
  %i.r = load i8, ptr %i.q, align 1, !tbaa !99
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.02229 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = add i64 %i.v, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.x = zext i64 %i.w to i128
  %i.y = mul nuw i128 %i.x, 11376068507788127593  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64
  %i.ac = add i64 %i.ab, %i.v
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw i128 %i.ad, 11376068507788127593 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae                   ; 2 uses
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = load ptr, ptr %0, align 8, !tbaa !95, !noalias !363 ; 5 uses
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !94, !noalias !363 ; 5 uses
  %i.ak = lshr i64 %i.ah, 7
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = lshr i64 %i.al, 12
  %i.an = xor i64 %i.ak, %i.am
  %i.ao = and i64 %i.an, %i.aj                    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1, !tbaa !101
  %i.ar = icmp slt <16 x i8> %i.aq, splat (i8 -1)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not17.i = icmp eq i16 %i.as, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.10.019.i = phi i64 [ %i.at, %.lr.ph.i ], [ 0, %bb.b ]
  %.sroa.5.018.i = phi i64 [ %i.av, %.lr.ph.i ], [ %i.ao, %bb.b ]
  %i.at = add i64 %.sroa.10.019.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.5.018.i
  %i.av = and i64 %i.au, %i.aj                    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.av
  %i.ax = load <16 x i8>, ptr %i.aw, align 1, !tbaa !101
  %i.ay = icmp slt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.az, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit, !llvm.loop !346

_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.5.0.lcssa.i = phi i64 [ %i.ao, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.as, %bb.b ], [ %i.az, %.lr.ph.i ]
  %i.ba = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = add i64 %.sroa.5.0.lcssa.i, %i.bb
  %i.bd = and i64 %i.bc, %i.aj                    ; 3 uses
  %i.be = trunc i128 %i.ag to i8
  %i.bf = and i8 %i.be, 127                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !99
  %i.bh = add i64 %i.bd, -15
  %i.bi = and i64 %i.bh, %i.aj
  %i.bj = and i64 %i.aj, 15
  %i.bk = getelementptr i8, ptr %i.ai, i64 %i.bi
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !99
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull align 1 dereferenceable(16) %i.t, i64 16, i1 false)
  %.pre = load ptr, ptr %2, align 8, !tbaa !347
  %.pre.a = load i64, ptr %i.b, align 8, !tbaa !349
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit
  %i.bn = phi i64 [ %.pre.a, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ], [ %i.p, %.lr.ph ] ; 4 uses
  %5 = phi ptr [ %.pre, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ], [ %4, %.lr.ph ] ; 2 uses
  %i.bo = add i64 %.02229, 1                      ; 2 uses
  %.not = icmp eq i64 %i.bo, %i.bn
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !366

._crit_edge:                                      ; preds = %bb.c
  %i.bp = load i8, ptr %i.e, align 8, !tbaa !350, !range !132, !noundef !97
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.neg.i = select i1 %i.bq, i64 -9, i64 -8
  %i.br = select i1 %i.bq, i64 9, i64 8
  %i.bs = getelementptr inbounds i8, ptr %5, i64 %.neg.i
  %i.bt = add i64 %i.bn, 23
  %i.bu = add i64 %i.bt, %i.br
  %i.bv = shl i64 %i.bn, 4
  %i.bw = add i64 %i.bu, %i.bv
  %i.bx = and i64 %i.bw, -8
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94   ; 3 uses
  %i.d = icmp ugt i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96
  %i.g = shl i64 %i.f, 4
  %i.h = and i64 %i.g, -32
  %i.i = mul i64 %i.c, 25
  %.not = icmp ugt i64 %i.h, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @_ZN4absl12lts_2024011618container_internal24DropDeletesWithoutResizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = shl i64 %i.c, 1
  %i.k = or disjoint i64 %i.j, 1
  tail call void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm16ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 8 uses
  %i.c = add i64 %i.b, 31                         ; 2 uses
  %i.d = shl i64 %i.b, 4
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.g = and i64 %i.c, -8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = and i64 %i.e, 9223372036854775800
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store ptr %i.l, ptr %i.h, align 8, !tbaa !98
  %i.m = lshr i64 %i.b, 3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96   ; 2 uses
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw i64 %i.m, %i.p
  %i.r = sub i64 %i.b, %i.q
  store i64 %i.r, ptr %i.j, align 8, !tbaa !211
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !349  ; 2 uses
  %i.u = icmp ult i64 %i.b, 17
  %i.v = icmp ult i64 %i.t, %i.b
  %i.w = and i1 %i.u, %i.v                        ; 2 uses
  %i.x = icmp ne i64 %i.t, 0
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit
  tail call void @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper35GrowSizeIntoSingleGroupTransferableERNS1_12CommonFieldsEPvm(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef 16)
  %i.y = load i64, ptr %i.s, align 8, !tbaa !349  ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !347
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !350, !range !132, !noundef !97
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %.neg.i = select i1 %i.ac, i64 -9, i64 -8
  %i.ad = select i1 %i.ac, i64 9, i64 8
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %.neg.i
  %i.af = add i64 %i.y, 23
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = shl i64 %i.y, 4
  %i.ai = add i64 %i.ag, %i.ah
  %i.aj = and i64 %i.ai, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #28
  %.pre = load i64, ptr %i.n, align 8, !tbaa !96
  br label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit
  %i.ak = add i64 %i.b, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 -128, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  store i8 -1, ptr %i.al, align 1, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.am = phi i64 [ %.pre, %bb.c ], [ %i.o, %bb.d ]
  %i.an = and i64 %i.am, -2
  store i64 %i.an, ptr %i.n, align 8, !tbaa !96
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE12hash_slot_fnEPvSI_(ptr noundef %0, ptr noundef %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !104
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = add i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw i128 %i.d, 11376068507788127593  ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  %i.i = add i64 %i.h, %i.b
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %i.j, 11376068507788127593  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  ret i64 %i.n
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal19TransferRelocatableILm16EEEvPvS3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21 comdat {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !274
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !275
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !268
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !298
  %i.ag = load ptr, ptr %0, align 8, !tbaa !295
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
end_hunk_1
