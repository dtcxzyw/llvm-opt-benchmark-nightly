Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/flat_hash_map_test?download=true
inline.NumInlined: 50283
inline.NumDeleted: 9586
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 161
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE5eraseIiEEmRKi:bb.a
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.v = lshr i64 %i.t, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8, !tbaa !140 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.av, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.628.0.i.i = and i64 %.pn.i7.i, %i.u      ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.628.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.628.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !140 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32
  %i.ag = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af) #43, !srcloc !169 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.019.051.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.051.i.i, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nuw i64 %.sroa.628.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.u                     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !168
  %i.an = icmp eq i32 %i.am, %i.m
  br i1 %i.an, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit, label %bb.f, !prof !170

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i32 %.sroa.019.051.i.i, -1
  %i.ap = and i32 %i.ao, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = zext i16 %i.ar to i32
  %i.at = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.as) #43, !srcloc !169
  %.not47.i.i = icmp eq i32 %i.at, 0
  br i1 %.not47.i.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE5eraseENS5_8iteratorE.exit, !prof !171

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.au = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.av = add i64 %i.au, %.sroa.628.0.i.i
  br label %bb.e, !llvm.loop !17

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit: ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  tail call void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.aw, i64 noundef 8)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE5eraseENS5_8iteratorE.exit

.thread:                                          ; preds = %bb.c
  tail call void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true, i64 noundef 8)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE5eraseENS5_8iteratorE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE5eraseENS5_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit, %.thread
  %.0 = phi i64 [ 0, %bb.b ], [ 1, %.thread ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit ], [ 0, %bb.c ], [ 0, %._crit_edge.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE11equal_rangeIiEESt4pairINS5_8iteratorES8_ERKi(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.320") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !168
  %i.g = load i32, ptr %2, align 4, !tbaa !168
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !140 ; 4 uses
  %i.j = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = lshr i64 %i.a, 8
  %i.l = and i64 %i.k, 255
  %i.m = load i32, ptr %2, align 4, !tbaa !168    ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 %i.l, %i.n
  %i.p = zext nneg i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.v = lshr i64 %i.t, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8, !tbaa !140 ; 3 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.ax, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %bb.g ]
  %.sroa.628.0.i.i = and i64 %.pn.i7.i, %i.u      ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.628.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.628.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !140 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32
  %i.ag = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af) #43, !srcloc !169 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.019.051.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.051.i.i, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nuw i64 %.sroa.628.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.u                     ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !168
  %i.an = icmp eq i32 %i.am, %i.m
  br i1 %i.an, label %.thread36.i.i, label %bb.f, !prof !170

.thread36.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aq = add i32 %.sroa.019.051.i.i, -1
  %i.ar = and i32 %i.aq, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.as = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = zext i16 %i.at to i32
  %i.av = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #43, !srcloc !169
  %.not47.i.i = icmp eq i32 %i.av, 0
  br i1 %.not47.i.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i, !prof !171

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aw = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.628.0.i.i
  br label %bb.e, !llvm.loop !17

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i: ; preds = %._crit_edge.i.i, %.thread36.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ap, %.thread36.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ao, %.thread36.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.az = extractvalue { ptr, ptr } %.pn.i, 1     ; 3 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJEE8iteratorElEvRT_T0_St18input_iterator_tag.exit, label %.preheader

.preheader:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !176 ; 2 uses
  %i.bd = icmp slt i8 %i.bc, -1
  br i1 %i.bd, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader, %.lr.ph.i.i.i
  %i.be = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %i.bb, %.preheader ]
  %i.bf = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %i.ba, %.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !176 ; 2 uses
  %i.bj = icmp slt i8 %i.bi, -1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !18

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.preheader
  %.sroa.012.0 = phi ptr [ %i.bb, %.preheader ], [ %i.bh, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.813.0 = phi ptr [ %i.ba, %.preheader ], [ %i.bg, %.lr.ph.i.i.i ]
  %i.bk = phi i8 [ %i.bc, %.preheader ], [ %i.bi, %.lr.ph.i.i.i ]
  %i.bl = icmp eq i8 %i.bk, -1
  br i1 %i.bl, label %bb.h, label %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJEE8iteratorElEvRT_T0_St18input_iterator_tag.exit, !prof !171

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJEE8iteratorElEvRT_T0_St18input_iterator_tag.exit

_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJEE8iteratorElEvRT_T0_St18input_iterator_tag.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit, %bb.h, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sink38 = phi ptr [ %i.ay, %bb.h ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit ]
  %.sink36 = phi ptr [ null, %bb.h ], [ %.sroa.813.0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit ]
  %.sink = phi ptr [ %.sroa.012.0, %bb.h ], [ %.sroa.012.0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ %i.az, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit ]
  store ptr %.sink38, ptr %0, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.8.0..sroa_idx8, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink36, ptr %i.bm, align 8
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %.sroa.8.0..sroa_idx10, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiiEEJEE2atIiS4_EEDTclsrT0_5valueclL_ZSt9addressofISt4pairIKiiEEPT_RSC_EclL_ZSt7declvalIRSB_EDTcl9__declvalISC_ELi0EEEvEEEEERSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !168
  %i.g = load i32, ptr %1, align 4, !tbaa !168
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !140 ; 4 uses
  %i.j = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = lshr i64 %i.a, 8
  %i.l = and i64 %i.k, 255
  %i.m = load i32, ptr %1, align 4, !tbaa !168    ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 %i.l, %i.n
  %i.p = zext nneg i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.v = lshr i64 %i.t, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8, !tbaa !140 ; 3 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.ax, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %bb.g ]
  %.sroa.628.0.i.i = and i64 %.pn.i7.i, %i.u      ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.628.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.628.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !140 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32
  %i.ag = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af) #43, !srcloc !169 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.019.051.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.051.i.i, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nuw i64 %.sroa.628.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.u                     ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !168
  %i.an = icmp eq i32 %i.am, %i.m
  br i1 %i.an, label %.thread36.i.i, label %bb.f, !prof !170

.thread36.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aq = add i32 %.sroa.019.051.i.i, -1
  %i.ar = and i32 %i.aq, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.as = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = zext i16 %i.at to i32
  %i.av = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #43, !srcloc !169
  %.not47.i.i = icmp eq i32 %i.av, 0
  br i1 %.not47.i.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i, !prof !171

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aw = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.628.0.i.i
  br label %bb.e, !llvm.loop !17

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i: ; preds = %._crit_edge.i.i, %.thread36.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ap, %.thread36.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ao, %.thread36.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %.pn.i, 0
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit
  tail call void @_ZN4absl12lts_2026052618ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.220) #39
  unreachable

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit
  %i.ba = extractvalue { ptr, ptr } %.pn.i, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  ret ptr %i.bb
}

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2026052618ThrowStdOutOfRangeEPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_135FlatHashMap_MergeExtractInsert_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_135FlatHashMap_MergeExtractInsert_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_135FlatHashMap_MergeExtractInsert_TestE, i64 16), ptr %i.a, align 8, !tbaa !152
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_135FlatHashMap_MergeExtractInsert_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_135FlatHashMap_MergeExtractInsert_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613flat_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEECI2NS0_18container_internal12raw_hash_setINSC_17FlatHashMapPolicyIiiEEJEEEESt16initializer_listIS7_IiiEEmRKS4_RKS6_RKSA_.exit:
  %1 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %2 = alloca %"struct.std::pair.29", align 8     ; 9 uses
  %3 = alloca %"class.absl::lts_20260526::flat_hash_map", align 8 ; 19 uses
  %4 = alloca [2 x %"struct.std::pair.33"], align 16 ; 5 uses
  %5 = alloca %"struct.absl::lts_20260526::hash_internal::Hash", align 1 ; 3 uses
  %6 = alloca %"struct.std::equal_to", align 1    ; 3 uses
  %7 = alloca %"class.std::allocator.50", align 1 ; 3 uses
  %8 = alloca %"class.absl::lts_20260526::container_internal::node_handle", align 4 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.206", align 8 ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.215", align 8 ; 6 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
end_hunk_0
