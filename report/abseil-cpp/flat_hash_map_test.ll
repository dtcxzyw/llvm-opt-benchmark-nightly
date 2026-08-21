inline.NumInlined: 50297
inline.NumDeleted: 9589
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 171
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE5eraseIiEEmRKi:bb.a

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.av, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.628.0.i.i = and i64 %.pn.i7.i, %i.u      ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.628.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.628.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !35 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32
  %i.ag = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af) #43, !srcloc !88 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.019.051.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.051.i.i, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nuw i64 %.sroa.628.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.u                     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87
  %i.an = icmp eq i32 %i.am, %i.m
  br i1 %i.an, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit, label %bb.f, !prof !89

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i32 %.sroa.019.051.i.i, -1
  %i.ap = and i32 %i.ao, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = zext i16 %i.ar to i32
  %i.at = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.as) #43, !srcloc !88
  %.not47.i.i = icmp eq i32 %i.at, 0
  br i1 %.not47.i.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE5eraseENS5_8iteratorE.exit, !prof !90

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.au = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.av = add i64 %i.au, %.sroa.628.0.i.i
  br label %bb.e, !llvm.loop !846

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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !87
  %i.g = load i32, ptr %2, align 4, !tbaa !87
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !35 ; 4 uses
  %i.j = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = lshr i64 %i.a, 8
  %i.l = and i64 %i.k, 255
  %i.m = load i32, ptr %2, align 4, !tbaa !87     ; 2 uses
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
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8, !tbaa !35 ; 3 uses
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
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !35 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32
  %i.ag = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af) #43, !srcloc !88 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.019.051.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.051.i.i, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nuw i64 %.sroa.628.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.u                     ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87
  %i.an = icmp eq i32 %i.am, %i.m
  br i1 %i.an, label %.thread36.i.i, label %bb.f, !prof !89

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
  %i.av = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #43, !srcloc !88
  %.not47.i.i = icmp eq i32 %i.av, 0
  br i1 %.not47.i.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i, !prof !90

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aw = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.628.0.i.i
  br label %bb.e, !llvm.loop !846

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
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iteratorppEv.exit.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !95  ; 2 uses
  %i.bd = icmp slt i8 %i.bc, -1
  br i1 %i.bd, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.preheader, %.lr.ph.i.i.i
  %i.be = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %i.bb, %.preheader.preheader ]
  %i.bf = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %i.ba, %.preheader.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !95  ; 2 uses
  %i.bj = icmp slt i8 %i.bi, -1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !936

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.preheader.preheader
  %.sroa.6.0 = phi ptr [ %i.bb, %.preheader.preheader ], [ %i.bh, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa14.i = phi ptr [ %i.ba, %.preheader.preheader ], [ %i.bg, %.lr.ph.i.i.i ]
  %i.bk = phi i8 [ %i.bc, %.preheader.preheader ], [ %i.bi, %.lr.ph.i.i.i ]
  %i.bl = icmp eq i8 %i.bk, -1
  br i1 %i.bl, label %bb.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iteratorppEv.exit.i, !prof !90

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iteratorppEv.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit, %bb.h, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sink37 = phi ptr [ %i.ay, %bb.h ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit ]
  %.sink35 = phi ptr [ null, %bb.h ], [ %.lcssa14.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit ]
  %.sink = phi ptr [ %.sroa.6.0, %bb.h ], [ %.sroa.6.0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ %i.az, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit ]
  store ptr %.sink37, ptr %0, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.8.0..sroa_idx8, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink35, ptr %i.bm, align 8
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !87
  %i.g = load i32, ptr %1, align 4, !tbaa !87
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE4findIiEENS5_8iteratorERKi.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !35 ; 4 uses
  %i.j = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = lshr i64 %i.a, 8
  %i.l = and i64 %i.k, 255
  %i.m = load i32, ptr %1, align 4, !tbaa !87     ; 2 uses
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
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8, !tbaa !35 ; 3 uses
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
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !35 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32
  %i.ag = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af) #43, !srcloc !88 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.019.051.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.051.i.i, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nuw i64 %.sroa.628.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.u                     ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87
  %i.an = icmp eq i32 %i.am, %i.m
  br i1 %i.an, label %.thread36.i.i, label %bb.f, !prof !89

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
  %i.av = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #43, !srcloc !88
  %.not47.i.i = icmp eq i32 %i.av, 0
  br i1 %.not47.i.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE10find_largeIiEENS5_8iteratorERKim.exit.i, !prof !90

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aw = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.628.0.i.i
  br label %bb.e, !llvm.loop !846

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
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_135FlatHashMap_MergeExtractInsert_TestE, i64 16), ptr %i.a, align 8, !tbaa !65
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
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %.05.i = phi i32 [ 10, %bb.a ], [ %i.ai, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i ] ; 2 uses
  %i.e = invoke i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %.loopexit206 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %.sroa.11185.0, %.sroa.18.1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i64 %i.e, ptr %.sroa.11185.0, align 4
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i

bb.d:                                             ; preds = %.noexc
  %i.f = ptrtoint ptr %.sroa.11185.0 to i64       ; 2 uses
  %i.g = ptrtoint ptr %.sroa.0179.1 to i64        ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #39
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
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42
          to label %.noexc84 unwind label %.loopexit206 ; 8 uses

.noexc84:                                         ; preds = %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  store i64 %i.e, ptr %i.q, align 4
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0179.1, %.sroa.11185.0
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
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader323, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %.sroa.0179.1, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep311 = getelementptr i8, ptr %.sroa.0179.1, i64 %i.aa ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11350)
  call void @llvm.experimental.noalias.scope.decl(metadata !11353)
  %i.ab = getelementptr i8, ptr %next.gep311, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep311, align 4, !alias.scope !11353, !noalias !11350
  %wide.load312 = load <2 x i64>, ptr %i.ab, align 4, !alias.scope !11353, !noalias !11350
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !11350, !noalias !11353
  store <2 x i64> %wide.load312, ptr %i.ac, align 4, !alias.scope !11350, !noalias !11353
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !11355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader323

.lr.ph.i.i.i.i.i.i.i.i.preheader323:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0179.1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader323, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader323 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader323 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11350)
  call void @llvm.experimental.noalias.scope.decl(metadata !11353)
  %i.ae = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 4, !alias.scope !11353, !noalias !11350
  store i64 %i.ae, ptr %.012.i.i.i.i.i.i.i.i, align 4, !alias.scope !11350, !noalias !11353
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %.sroa.11185.0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !11356

_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc84
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.noexc84 ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i.i = icmp eq ptr %.sroa.0179.1, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.1, i64 noundef %i.h) #40
  br label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIKiiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i

_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0179.2 = phi ptr [ %i.p, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0179.1, %bb.c ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11185.0, %bb.c ] ; 4 uses
  %.sroa.18.2 = phi ptr [ %i.ah, %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.18.1, %bb.c ] ; 3 uses
  %.sroa.11185.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ai = add nsw i32 %.05.i, -1
  %i.aj = icmp samesign ugt i32 %.05.i, 1
  br i1 %i.aj, label %bb.b, label %bb.g, !llvm.loop !10352

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKiiESaIS3_EEEaSEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ak = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.am = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %5, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !2425
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !2427
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !2429
  %.not226 = icmp eq ptr %.sroa.0179.2, %.sroa.11185.1
  br i1 %.not226, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.h

.loopexit206:                                     ; preds = %bb.b, %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.1, %bb.b ], [ %.sroa.11185.0, %_ZNKSt6vectorISt4pairIKiiESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.h:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.0176.0227 = phi ptr [ %.sroa.0179.2, %.lr.ph ], [ %i.cr, %bb.y ] ; 3 uses
  %i.as = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE4findIiEENSC_8iteratorERS9_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0176.0227)
          to label %.noexc85 unwind label %bb.l

.noexc85:                                         ; preds = %bb.h
  %i.at = extractvalue { ptr, ptr } %i.as, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit.thread: ; preds = %.noexc85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.m

.preheader.preheader.i:                           ; preds = %.noexc85
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !95, !noalias !11357 ; 2 uses
  %i.aw = icmp slt i8 %i.av, -1
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.ax = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.au, %.preheader.preheader.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !95, !noalias !11357 ; 2 uses
  %i.ba = icmp slt i8 %i.az, -1
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !2495

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.au, %.preheader.preheader.i ], [ %i.ay, %.lr.ph.i.i.i.i ]
  %i.bb = phi i8 [ %i.av, %.preheader.preheader.i ], [ %i.az, %.lr.ph.i.i.i.i ]
  %i.bc = icmp eq i8 %i.bb, -1
  br i1 %i.bc, label %bb.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit, !prof !90

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit: ; preds = %bb.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.i ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.bm, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i ], [ %i.at, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !95  ; 2 uses
  %i.bf = icmp slt i8 %i.be, -1
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.bg = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %i.bd, %.lr.ph.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !95  ; 2 uses
  %i.bj = icmp slt i8 %i.bi, -1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !2495

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.bh, %.lr.ph.i.i.i ]
  %i.bk = phi i8 [ %i.be, %.lr.ph.i ], [ %i.bi, %.lr.ph.i.i.i ]
  %i.bl = icmp eq i8 %i.bk, -1
  br i1 %i.bl, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i, !prof !90

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.j ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.bm = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i86 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i86, label %bb.k, label %.lr.ph.i, !llvm.loop !11360

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.m

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit.thread, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bn = load i8, ptr %6, align 8, !tbaa !282, !range !26, !noundef !27
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.critedge, label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.m:                                             ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit.thread
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.z

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.br = load ptr, ptr %i.ar, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.p, %bb.o
  %i.bt = phi ptr [ %i.bs, %bb.p ], [ @.str.204, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.bt)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.bu = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(128) %i.bu) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 32) #40
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.cf, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.ch = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i91, label %_ZN7testing7MessageD2Ev.exit93, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92: ; preds = %bb.w
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit93

_ZN7testing7MessageD2Ev.exit93:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92, %bb.w, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %.pn, %bb.w ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  br label %bb.z

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #40
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0176.0227, i64 8
  %.not = icmp eq ptr %.sroa.0176.0227, %.0.lcssa.i.i.i.i.i.i.i.i.pn
  br i1 %.not, label %.lr.ph.i.i, label %bb.h

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit93, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit93 ], [ %i.bq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.cb

bb.aa:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.y
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0179.2, %.lr.ph.i.i ], [ %i.dm, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !11361)
  call void @llvm.experimental.noalias.scope.decl(metadata !11364)
  call void @llvm.experimental.noalias.scope.decl(metadata !11367)
  call void @llvm.experimental.noalias.scope.decl(metadata !11370)
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !11373)
  call void @llvm.experimental.noalias.scope.decl(metadata !11376)
  call void @llvm.experimental.noalias.scope.decl(metadata !11379)
  %i.cw = load i64, ptr %5, align 8, !noalias !11382 ; 4 uses
  %i.cx = and i64 %i.cw, 254
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !11383)
  call void @llvm.experimental.noalias.scope.decl(metadata !11386)
  %i.cz = icmp ult i64 %i.cw, 562949953552384
  call void @llvm.assume(i1 %i.cz)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.cw, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.da = or disjoint i64 %i.cw, 131072
  store i64 %i.da, ptr %5, align 8, !noalias !11389
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.db = load i32, ptr %i.cs, align 8, !tbaa !87, !noalias !11389
  %i.dc = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !87, !noalias !11389
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !11389
  store ptr %i.ao, ptr %2, align 8, !tbaa !4219, !noalias !11389
  store ptr %.sroa.01.05.i.i, ptr %i.ct, align 8, !tbaa !155, !noalias !11389
  %i.de = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc100 unwind label %bb.ai ; 2 uses

.noexc100:                                        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !11389
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !35, !noalias !11389, !nonnull !27, !noundef !27
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.de
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !35, !noalias !11389
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.de
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc100, %bb.ae, %bb.ad
  %.sink17.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.df, %.noexc100 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ad ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ae ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dg, %.noexc100 ], [ %i.cs, %bb.ad ], [ %i.cs, %bb.ae ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc100 ], [ 1, %bb.ad ], [ 0, %bb.ae ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !11389
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !11389
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ab
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1166") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.01.05.i.i)
          to label %.noexc101 unwind label %bb.ai

.noexc101:                                        ; preds = %bb.ag
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !4221, !range !26, !alias.scope !11390
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc101, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i
  %i.dh = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i, %.noexc101 ]
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ah, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit.i.i

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !11390 ; 2 uses
  %i.dj = load i32, ptr %.sroa.01.05.i.i, align 4, !tbaa !87, !noalias !11391
  store i32 %i.dj, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, align 4, !tbaa !865
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 4
  %i.dl = load i32, ptr %i.cv, align 4, !tbaa !87, !noalias !11391
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !899
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit.i.i: ; preds = %bb.ah, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %.not.i.i99 = icmp eq ptr %.sroa.01.05.i.i, %.0.lcssa.i.i.i.i.i.i.i.i.pn
  br i1 %.not.i.i99, label %.lr.ph230, label %bb.ab, !llvm.loop !4226

.lr.ph230:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.aj:                                            ; preds = %.lr.ph230, %bb.bv
  %.sroa.0170.0229 = phi ptr [ %.sroa.0179.2, %.lr.ph230 ], [ %i.hk, %bb.bv ] ; 5 uses
  %i.ds = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE4findIiEENSC_8iteratorERS9_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0170.0229)
          to label %.noexc113 unwind label %bb.ao ; 2 uses

.noexc113:                                        ; preds = %bb.aj
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0      ; 3 uses
  %i.du = extractvalue { ptr, ptr } %i.ds, 1
  %.not.i102 = icmp eq ptr %i.dt, null
  br i1 %.not.i102, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114.thread, label %.preheader.preheader.i103

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114.thread: ; preds = %.noexc113
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.an

.preheader.preheader.i103:                        ; preds = %.noexc113
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 3 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !95, !noalias !11392 ; 2 uses
  %i.dx = icmp slt i8 %i.dw, -1
  br i1 %i.dx, label %.lr.ph.i.i.i.i112, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104

.lr.ph.i.i.i.i112:                                ; preds = %.preheader.preheader.i103, %.lr.ph.i.i.i.i112
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i.i.i.i112 ], [ %i.dv, %.preheader.preheader.i103 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !95, !noalias !11392 ; 2 uses
  %i.eb = icmp slt i8 %i.ea, -1
  br i1 %i.eb, label %.lr.ph.i.i.i.i112, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104, !llvm.loop !2495

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104: ; preds = %.lr.ph.i.i.i.i112, %.preheader.preheader.i103
  %.lcssa14.i.i106 = phi ptr [ %i.dv, %.preheader.preheader.i103 ], [ %i.dz, %.lr.ph.i.i.i.i112 ]
  %i.ec = phi i8 [ %i.dw, %.preheader.preheader.i103 ], [ %i.ea, %.lr.ph.i.i.i.i112 ]
  %i.ed = icmp eq i8 %i.ec, -1
  br i1 %i.ed, label %bb.ak, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114, !prof !90

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114: ; preds = %bb.ak, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104
  %.sink21.i108 = phi ptr [ null, %bb.ak ], [ %.lcssa14.i.i106, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  br label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i121
  %.09.i117 = phi i64 [ %i.en, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i121 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114 ] ; 2 uses
  %.sroa.02.07.i118 = phi ptr [ %.sroa.02.2.i122, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i121 ], [ %i.dt, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i118, i64 1 ; 3 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !95  ; 2 uses
  %i.eg = icmp slt i8 %i.ef, -1
  br i1 %i.eg, label %.lr.ph.i.i.i125, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119

.lr.ph.i.i.i125:                                  ; preds = %.lr.ph.i116, %.lr.ph.i.i.i125
  %i.eh = phi ptr [ %i.ei, %.lr.ph.i.i.i125 ], [ %i.ee, %.lr.ph.i116 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !95  ; 2 uses
  %i.ek = icmp slt i8 %i.ej, -1
  br i1 %i.ek, label %.lr.ph.i.i.i125, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119, !llvm.loop !2495

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119: ; preds = %.lr.ph.i.i.i125, %.lr.ph.i116
  %.sroa.02.1.i120 = phi ptr [ %i.ee, %.lr.ph.i116 ], [ %i.ei, %.lr.ph.i.i.i125 ]
  %i.el = phi i8 [ %i.ef, %.lr.ph.i116 ], [ %i.ej, %.lr.ph.i.i.i125 ]
  %i.em = icmp eq i8 %i.el, -1
  br i1 %i.em, label %bb.al, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i121, !prof !90

bb.al:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i121

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i121: ; preds = %bb.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119
  %.sroa.02.2.i122 = phi ptr [ null, %bb.al ], [ %.sroa.02.1.i120, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119 ] ; 2 uses
  %i.en = add nuw nsw i64 %.09.i117, 1            ; 2 uses
  %.not.i123 = icmp eq ptr %.sroa.02.2.i122, %.sink21.i108
  br i1 %.not.i123, label %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit, label %.lr.ph.i116, !llvm.loop !11360

_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i121
  store i64 %i.en, ptr %i.d, align 8, !tbaa !34
  %i.eo = icmp eq i64 %.09.i117, 0
  br i1 %i.eo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129 unwind label %bb.ap

bb.an:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11equal_rangeIiEES8_INSC_8iteratorESE_ERS9_.exit114.thread, %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESG_SG_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129 unwind label %bb.ap

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.ep = load i8, ptr %9, align 8, !tbaa !282, !range !26, !noundef !27
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %.critedge79, label %bb.aq

bb.ao:                                            ; preds = %bb.aj
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.be

bb.aq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.et = load ptr, ptr %i.dn, align 8, !tbaa !133 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.et, null
  br i1 %.not.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.as, %bb.ar
  %i.ev = phi ptr [ %i.eu, %bb.as ], [ @.str.204, %bb.ar ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.ev)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.ew = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.au
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !65
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.fa = load ptr, ptr %i.dn, align 8, !tbaa !133 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i135, label %.critedge81, label %bb.av

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !30 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.av
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !35
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 32) #40
  br label %.critedge81

bb.aw:                                            ; preds = %bb.aq
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.at
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn62 = phi { ptr, i32 } [ %i.fi, %bb.ay ], [ %i.fh, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.fj = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.az
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !65
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(128) %i.fj) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.az, %bb.aw
  %.pn62.pn = phi { ptr, i32 } [ %i.fg, %bb.aw ], [ %.pn62, %bb.az ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.be

.critedge79:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129
  %i.fn = load ptr, ptr %i.dn, align 8, !tbaa !133 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i143, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.critedge79
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !30 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.ba
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !35
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef 32) #40
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge79, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0170.0229, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !87, !noalias !11395
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !87, !noalias !11395
  %i.fx = icmp eq i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bb
end_hunk_1
begin_hunk_2_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal10LookupTestENS0_11TemplateSelINS4_23gtest_suite_LookupTest_10EqualRangeEEENS0_5TypesINS3_13flat_hash_mapINS4_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSC_SI_EEEEEJNSB_INS4_9EnumClassEiSJ_SK_NSL_ISM_IKSR_iEEEEENSB_IiNS4_17NonStandardLayoutESJ_SK_NSL_ISM_IKiSW_EEEEENSB_ISW_iSJ_SK_NSL_ISM_IKSW_iEEEEEEEEE8RegisterEPKcNS0_12CodeLocationES18_S18_iRKSt6vectorISI_SaISI_EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.hr = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ai ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.an
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hv = load i64, ptr %i.an, align 8, !tbaa !35
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ah ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.hx = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.w
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.hz = load i64, ptr %i.w, align 8, !tbaa !35
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ag ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %i.ib = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.c
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.id = load i64, ptr %i.c, align 8, !tbaa !35
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.af ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
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
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

_ZN7testing8internal12CodeLocationD2Ev.exit115:   ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113 ], [ %i.if, %bb.ap ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_iEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_iEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_iEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !65
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_iEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_iEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.1055", align 8   ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, int>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const std::__cxx11::basic_string<char>, int>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %"struct.std::pair.1201", align 8   ; 3 uses
  %4 = alloca %"class.std::vector.1186", align 8  ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::flat_hash_map.794", align 8 ; 12 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaISA_EEEiN4absl12lts_2026052618container_internal9GeneratorISA_vEEET_SJ_T0_T1_(ptr nonnull %4, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.h = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 0, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.f, ptr %i.j, align 8, !tbaa !2425
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.h, ptr %i.k, align 8, !tbaa !2427
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !2429
  %i.m = load ptr, ptr %4, align 8, !tbaa !4261   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !4261 ; 2 uses
  %.not201 = icmp eq ptr %i.m, %i.o
  br i1 %.not201, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.d:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.0172.0202 = phi ptr [ %i.m, %.lr.ph ], [ %i.bq, %bb.u ] ; 2 uses
  %i.r = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE4findIS9_EENSI_8iteratorERSF_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0172.0202)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit.thread: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

.preheader.preheader.i:                           ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !95, !noalias !11422 ; 2 uses
  %i.v = icmp slt i8 %i.u, -1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %.preheader.preheader.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !95, !noalias !11422 ; 2 uses
  %i.z = icmp slt i8 %i.y, -1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !2587

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.t, %.preheader.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i ]
  %i.aa = phi i8 [ %i.u, %.preheader.preheader.i ], [ %i.y, %.lr.ph.i.i.i.i ]
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit, !prof !90

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit: ; preds = %bb.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.e ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i ], [ %i.s, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !95  ; 2 uses
  %i.ae = icmp slt i8 %i.ad, -1
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.ac, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !95  ; 2 uses
  %i.ai = icmp slt i8 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !2587

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.i.i ]
  %i.aj = phi i8 [ %i.ad, %.lr.ph.i ], [ %i.ah, %.lr.ph.i.i.i ]
  %i.ak = icmp eq i8 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i, !prof !90

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i: ; preds = %bb.f, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.f ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.al = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i83 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i83, label %bb.g, label %.lr.ph.i, !llvm.loop !11425

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i
  store i64 %i.al, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.am = load i8, ptr %6, align 8, !tbaa !282, !range !26, !noundef !27
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.v

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.as = phi ptr [ %i.ar, %bb.l ], [ @.str.204, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.as)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.at = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.at, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #40
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.r ], [ %i.be, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.bg = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %.pn, %bb.s ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  br label %bb.v

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #40
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0172.0202, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.o
  br i1 %.not, label %.critedge77, label %bb.d

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bp

bb.w:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.loopexit

.critedge77:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %4, align 8, !tbaa !4261  ; 3 uses
  %.pre215 = load ptr, ptr %i.n, align 8, !tbaa !4261 ; 3 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre215
  br i1 %.not4.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge77
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.noexc97, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.bt, %.noexc97 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !11426
  store ptr %5, ptr %2, align 8, !tbaa !4265, !noalias !11426
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !11429
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32
  store ptr %.sroa.01.05.i.i, ptr %1, align 8, !tbaa !133, !alias.scope !11434, !noalias !11439
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !155, !alias.scope !11434, !noalias !11439
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRSF_EESO_IJRKiEEEEESE_INSI_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1201") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.01.05.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %.noexc97 unwind label %bb.y

.noexc97:                                         ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !11429
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !11426
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.bt, %.pre215
  br i1 %.not.i.i96, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit, label %bb.x, !llvm.loop !4279

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit: ; preds = %.noexc97
  %.pre216 = load ptr, ptr %4, align 8, !tbaa !4261
  %.pre217 = load ptr, ptr %i.n, align 8, !tbaa !4261
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit, %.critedge77
  %i.bu = phi ptr [ %.pre217, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit ], [ %.pre215, %.critedge77 ] ; 2 uses
  %i.bv = phi ptr [ %.pre216, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit.loopexit ], [ %.pre, %.critedge77 ] ; 2 uses
  %.not186203 = icmp eq ptr %i.bv, %i.bu
  br i1 %.not186203, label %.loopexit, label %.lr.ph205

.lr.ph205:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEvT_SR_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.z:                                             ; preds = %.lr.ph205, %bb.bl
  %.sroa.0166.0204 = phi ptr [ %i.bv, %.lr.ph205 ], [ %i.ft, %bb.bl ] ; 4 uses
  %i.cb = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE4findIS9_EENSI_8iteratorERSF_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0166.0204)
          to label %.noexc109 unwind label %bb.ae ; 2 uses

.noexc109:                                        ; preds = %bb.z
  %i.cc = extractvalue { ptr, ptr } %i.cb, 0      ; 3 uses
  %i.cd = extractvalue { ptr, ptr } %i.cb, 1
  %.not.i98 = icmp eq ptr %i.cc, null
  br i1 %.not.i98, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110.thread, label %.preheader.preheader.i99

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110.thread: ; preds = %.noexc109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ad

.preheader.preheader.i99:                         ; preds = %.noexc109
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !95, !noalias !11442 ; 2 uses
  %i.cg = icmp slt i8 %i.cf, -1
  br i1 %i.cg, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100

.lr.ph.i.i.i.i108:                                ; preds = %.preheader.preheader.i99, %.lr.ph.i.i.i.i108
  %i.ch = phi ptr [ %i.ci, %.lr.ph.i.i.i.i108 ], [ %i.ce, %.preheader.preheader.i99 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !95, !noalias !11442 ; 2 uses
  %i.ck = icmp slt i8 %i.cj, -1
  br i1 %i.ck, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100, !llvm.loop !2587

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100: ; preds = %.lr.ph.i.i.i.i108, %.preheader.preheader.i99
  %.lcssa14.i.i102 = phi ptr [ %i.ce, %.preheader.preheader.i99 ], [ %i.ci, %.lr.ph.i.i.i.i108 ]
  %i.cl = phi i8 [ %i.cf, %.preheader.preheader.i99 ], [ %i.cj, %.lr.ph.i.i.i.i108 ]
  %i.cm = icmp eq i8 %i.cl, -1
  br i1 %i.cm, label %bb.aa, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110, !prof !90

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110: ; preds = %bb.aa, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  %.sink21.i104 = phi ptr [ null, %bb.aa ], [ %.lcssa14.i.i102, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i117
  %.09.i113 = phi i64 [ %i.cw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i117 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110 ] ; 2 uses
  %.sroa.02.07.i114 = phi ptr [ %.sroa.02.2.i118, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i117 ], [ %i.cc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i114, i64 1 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !95  ; 2 uses
  %i.cp = icmp slt i8 %i.co, -1
  br i1 %i.cp, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115

.lr.ph.i.i.i121:                                  ; preds = %.lr.ph.i112, %.lr.ph.i.i.i121
  %i.cq = phi ptr [ %i.cr, %.lr.ph.i.i.i121 ], [ %i.cn, %.lr.ph.i112 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !95  ; 2 uses
  %i.ct = icmp slt i8 %i.cs, -1
  br i1 %i.ct, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115, !llvm.loop !2587

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115: ; preds = %.lr.ph.i.i.i121, %.lr.ph.i112
  %.sroa.02.1.i116 = phi ptr [ %i.cn, %.lr.ph.i112 ], [ %i.cr, %.lr.ph.i.i.i121 ]
  %i.cu = phi i8 [ %i.co, %.lr.ph.i112 ], [ %i.cs, %.lr.ph.i.i.i121 ]
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.ab, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i117, !prof !90

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i117

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i117: ; preds = %bb.ab, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  %.sroa.02.2.i118 = phi ptr [ null, %bb.ab ], [ %.sroa.02.1.i116, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ] ; 2 uses
  %i.cw = add nuw nsw i64 %.09.i113, 1            ; 2 uses
  %.not.i119 = icmp eq ptr %.sroa.02.2.i118, %.sink21.i104
  br i1 %.not.i119, label %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKSA_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESM_SM_.exit, label %.lr.ph.i112, !llvm.loop !11425

_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKSA_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESM_SM_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE8iteratorppEv.exit.i117
  store i64 %i.cw, ptr %i.d, align 8, !tbaa !34
  %i.cx = icmp eq i64 %.09.i113, 0
  br i1 %i.cx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKSA_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESM_SM_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.af

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_iEEEEE11equal_rangeIS9_EESE_INSI_8iteratorESK_ERSF_.exit110.thread, %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKSA_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESM_SM_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.af

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.cy = load i8, ptr %9, align 8, !tbaa !282, !range !26, !noundef !27
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.critedge79, label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.au

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.dc = load ptr, ptr %i.bw, align 8, !tbaa !133 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i126, label %_ZNK7testing15AssertionResult15failure_messageEv.exit127, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit127

_ZNK7testing15AssertionResult15failure_messageEv.exit127: ; preds = %bb.ai, %bb.ah
  %i.de = phi ptr [ %i.dd, %bb.ai ], [ @.str.204, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.de)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.df = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.df, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ak
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !65
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #40
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn62 = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.dq, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.ds = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i136, label %_ZN7testing7MessageD2Ev.exit138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.ap
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !65
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(128) %i.ds) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit138

_ZN7testing7MessageD2Ev.exit138:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, %bb.ap, %bb.am
  %.pn62.pn = phi { ptr, i32 } [ %i.dp, %bb.am ], [ %.pn62, %bb.ap ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.au

.critedge79:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  %i.dw = load ptr, ptr %i.bw, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef 32) #40
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge79, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0166.0204, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !87, !noalias !11445
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !11445
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.av

bb.at:                                            ; preds = %bb.ar
end_hunk_2
begin_hunk_3_@_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapINS4_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_SE_EEEEEEEE10CreateTestEv:bb.a
bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_SB_EEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !65
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_SB_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_SB_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.1062", align 8   ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<absl::lts_20260526::container_internal::Enum, std::__cxx11::basic_string<char>>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const absl::lts_20260526::container_internal::Enum, std::__cxx11::basic_string<char>>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %"struct.std::pair.1269", align 8   ; 3 uses
  %4 = alloca %"class.std::vector.1253", align 8  ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::flat_hash_map.846", align 8 ; 16 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISE_EEEiNS5_9GeneratorISE_vEEET_SK_T0_T1_(ptr nonnull %4, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.h = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 0, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.f, ptr %i.j, align 8, !tbaa !2425
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.h, ptr %i.k, align 8, !tbaa !2427
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !2429
  %i.m = load ptr, ptr %4, align 8, !tbaa !4540   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !4540 ; 2 uses
  %.not234 = icmp eq ptr %i.m, %i.o
  br i1 %.not234, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.d:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.0199.0235 = phi ptr [ %i.m, %.lr.ph ], [ %i.di, %bb.aa ] ; 3 uses
  %i.t = load i64, ptr %5, align 8                ; 4 uses
  %i.u = and i64 %i.t, 254
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i167 = icmp ult i64 %i.t, 131072
  br i1 %.not.i.i.i167, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.w = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !2715
  %i.x = load i64, ptr %.sroa.0199.0235, align 8, !tbaa !2715
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %.preheader.preheader.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit.thread

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !35 ; 4 uses
  %i.z = and i64 %i.t, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.z
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aa = lshr i64 %i.t, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = load i64, ptr %.sroa.0199.0235, align 8, !tbaa !2715 ; 2 uses
  %i.ad = xor i64 %i.ac, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 2 uses
  %i.aj = xor i64 %i.ab, %i.ai
  %i.ak = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.al = lshr i64 %i.ai, 57
  %i.am = trunc nuw nsw i64 %i.al to i8
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.q, align 8, !tbaa !35 ; 2 uses
  %i.an = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i7.i = phi i64 [ %i.aj, %bb.g ], [ %i.bk, %bb.j ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.g ], [ %i.bj, %bb.j ]
  %.sroa.628.0.i.i = and i64 %.pn.i7.i, %i.ak     ; 4 uses
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.628.0.i.i
  call void @llvm.prefetch.p0(ptr %i.ap, i32 0, i32 3, i32 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.628.0.i.i
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !35 ; 2 uses
  %i.as = icmp eq <16 x i8> %i.ao, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = zext i16 %i.at to i32
  %i.av = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #43, !srcloc !88 ; 2 uses
  %.not49.i.i = icmp eq i32 %i.av, 0
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %bb.h, %bb.i
  %.sroa.019.050.i.i = phi i32 [ %i.be, %bb.i ], [ %i.av, %bb.h ] ; 3 uses
  %i.aw = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i.i, i1 true)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add nuw i64 %.sroa.628.0.i.i, %i.ax
  %i.az = and i64 %i.ay, %i.ak                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !2715
  %i.bc = icmp eq i64 %i.bb, %i.ac
  br i1 %i.bc, label %.noexc, label %bb.i, !prof !89

bb.i:                                             ; preds = %.lr.ph.i.i165
  %i.bd = add i32 %.sroa.019.050.i.i, -1
  %i.be = and i32 %i.bd, %.sroa.019.050.i.i       ; 2 uses
  %.not.i.i166 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i166, label %._crit_edge.i.i, label %.lr.ph.i.i165

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.bf = icmp eq <16 x i8> %i.ar, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = zext i16 %i.bg to i32
  %i.bi = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bh) #43, !srcloc !88
  %.not47.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not47.i.i, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit.thread, !prof !90

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bj = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.628.0.i.i
  br label %bb.h, !llvm.loop !6359

.noexc:                                           ; preds = %.lr.ph.i.i165
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit.thread: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %bb.m

.preheader.preheader.i:                           ; preds = %.noexc, %bb.f
  %.pn.i321 = phi ptr [ %i.bl, %.noexc ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.f ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn.i321, i64 1 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !95, !noalias !11465 ; 2 uses
  %i.bo = icmp slt i8 %i.bn, -1
  br i1 %i.bo, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.bp = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.bm, %.preheader.preheader.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !95, !noalias !11465 ; 2 uses
  %i.bs = icmp slt i8 %i.br, -1
  br i1 %i.bs, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !2695

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.bm, %.preheader.preheader.i ], [ %i.bq, %.lr.ph.i.i.i.i ]
  %i.bt = phi i8 [ %i.bn, %.preheader.preheader.i ], [ %i.br, %.lr.ph.i.i.i.i ]
  %i.bu = icmp eq i8 %i.bt, -1
  br i1 %i.bu, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit, !prof !90

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit: ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.k ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not6.i = icmp eq ptr %.pn.i321, %.sink21.i
  br i1 %.not6.i, label %bb.m, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.ce, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i ], [ %.pn.i321, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !95  ; 2 uses
  %i.bx = icmp slt i8 %i.bw, -1
  br i1 %i.bx, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.by = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %i.bv, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !95  ; 2 uses
  %i.cb = icmp slt i8 %i.ca, -1
  br i1 %i.cb, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !2695

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bz, %.lr.ph.i.i.i ]
  %i.cc = phi i8 [ %i.bw, %.lr.ph.i ], [ %i.ca, %.lr.ph.i.i.i ]
  %i.cd = icmp eq i8 %i.cc, -1
  br i1 %i.cd, label %bb.l, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i, !prof !90

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i: ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.l ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.ce = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i83 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i83, label %bb.n, label %.lr.ph.i, !llvm.loop !11468

bb.m:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit.thread
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i
  store i64 %i.ce, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.o

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.cf = load i8, ptr %6, align 8, !tbaa !282, !range !26, !noundef !27
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %.critedge, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.ab

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.r, %bb.q
  %i.ck = phi ptr [ %i.cj, %bb.r ], [ @.str.204, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.ck)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.cl = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !65
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(128) %i.cl) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.cp = load ptr, ptr %i.r, align 8, !tbaa !133 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i87, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !30 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !35
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 32) #40
  br label %bb.ac

bb.v:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit90

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.x ], [ %i.cw, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.cy = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.y
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !65
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(128) %i.cy) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.y, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.v ], [ %.pn, %bb.y ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  br label %bb.ab

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !133 ; 4 uses
  %.not.i.i91 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i91, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !30 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92: ; preds = %bb.z
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !35
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #40
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0199.0235, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.di, %i.o
  br i1 %.not, label %.critedge77, label %bb.d

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.ch, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bz

bb.ac:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.loopexit

.critedge77:                                      ; preds = %bb.aa
  %.pre = load ptr, ptr %4, align 8, !tbaa !4540  ; 3 uses
  %.pre254 = load ptr, ptr %i.n, align 8, !tbaa !4540 ; 3 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre254
  br i1 %.not4.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge77
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc97, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.dl, %.noexc97 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !11469
  store ptr %5, ptr %2, align 8, !tbaa !4544, !noalias !11469
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !11472
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  store ptr %.sroa.01.05.i.i, ptr %1, align 8, !tbaa !1294, !alias.scope !11477, !noalias !11482
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !133, !alias.scope !11477, !noalias !11482
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE19EmplaceDecomposableclIS4_JRKSt21piecewise_construct_tSt5tupleIJRSG_EESP_IJRKSA_EEEEESF_INSJ_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1269") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.05.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %.noexc97 unwind label %bb.ae

.noexc97:                                         ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !11472
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !11469
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.dl, %.pre254
  br i1 %.not.i.i96, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit.loopexit, label %bb.ad, !llvm.loop !4558

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit.loopexit: ; preds = %.noexc97
  %.pre255 = load ptr, ptr %4, align 8, !tbaa !4540
  %.pre256 = load ptr, ptr %i.n, align 8, !tbaa !4540
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit.loopexit, %.critedge77
  %i.dm = phi ptr [ %.pre256, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit.loopexit ], [ %.pre254, %.critedge77 ] ; 2 uses
  %i.dn = phi ptr [ %.pre255, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit.loopexit ], [ %.pre, %.critedge77 ] ; 2 uses
  %.not213236 = icmp eq ptr %i.dn, %i.dm
  br i1 %.not213236, label %.loopexit, label %.lr.ph238

.lr.ph238:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSH_St6vectorISH_SaISH_EEEEEEvT_SS_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.af:                                            ; preds = %.lr.ph238, %bb.bv
  %.sroa.0193.0237 = phi ptr [ %i.dn, %.lr.ph238 ], [ %i.jk, %bb.bv ] ; 6 uses
  %i.dv = load i64, ptr %5, align 8               ; 4 uses
  %i.dw = and i64 %i.dv, 254
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i187 = icmp ult i64 %i.dv, 131072
  br i1 %.not.i.i.i187, label %.noexc109, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload.i.i.i.i.i.i188 = load ptr, ptr %i.dp, align 8, !tbaa !35 ; 2 uses
  %i.dy = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i.i188, align 8, !tbaa !2715
  %i.dz = load i64, ptr %.sroa.0193.0237, align 8, !tbaa !2715
  %i.ea = icmp eq i64 %i.dy, %i.dz
  %.fca.1.insert.i.i.i189 = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i188, 1
  %spec.select.i.i190 = select i1 %i.ea, { ptr, ptr } %.fca.1.insert.i.i.i189, { ptr, ptr } { ptr null, ptr undef }
  br label %.noexc109

bb.ai:                                            ; preds = %bb.af
  %.sroa.0.0.copyload.i.i.i.i.i168 = load ptr, ptr %i.do, align 8, !tbaa !35 ; 4 uses
  %i.eb = and i64 %i.dv, 255
  %notmask.i.i.i.i.i.i169 = shl nsw i64 -1, %i.eb
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i168, i32 0, i32 1, i32 1)
  %i.ec = lshr i64 %i.dv, 8
  %i.ed = and i64 %i.ec, 255
  %i.ee = load i64, ptr %.sroa.0193.0237, align 8, !tbaa !2715 ; 2 uses
  %i.ef = xor i64 %i.ee, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.eg = zext i64 %i.ef to i128
  %i.eh = mul nuw nsw i128 %i.eg, 8779197792823184629 ; 2 uses
  %i.ei = lshr i128 %i.eh, 64
  %i.ej = xor i128 %i.ei, %i.eh
  %i.ek = trunc i128 %i.ej to i64                 ; 2 uses
  %i.el = xor i64 %i.ed, %i.ek
  %i.em = xor i64 %notmask.i.i.i.i.i.i169, -1     ; 2 uses
  %i.en = lshr i64 %i.ek, 57
  %i.eo = trunc nuw nsw i64 %i.en to i8
  %.sroa.0.0.copyload.i.i.i14.i.i170 = load ptr, ptr %i.dp, align 8, !tbaa !35 ; 2 uses
  %i.ep = insertelement <16 x i8> poison, i8 %i.eo, i64 0
  %i.eq = shufflevector <16 x i8> %i.ep, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.pn.i7.i171 = phi i64 [ %i.el, %bb.ai ], [ %i.fn, %bb.al ]
  %.sroa.13.0.i.i172 = phi i64 [ 0, %bb.ai ], [ %i.fm, %bb.al ]
  %.sroa.628.0.i.i173 = and i64 %.pn.i7.i171, %i.em ; 4 uses
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i170, i64 %.sroa.628.0.i.i173
  call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i168, i64 %.sroa.628.0.i.i173
  %i.et = load <16 x i8>, ptr %i.es, align 1, !tbaa !35 ; 2 uses
  %i.eu = icmp eq <16 x i8> %i.eq, %i.et
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = zext i16 %i.ev to i32
  %i.ex = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ew) #43, !srcloc !88 ; 2 uses
  %.not49.i.i174 = icmp eq i32 %i.ex, 0
  br i1 %.not49.i.i174, label %._crit_edge.i.i178, label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %bb.aj, %bb.ak
  %.sroa.019.050.i.i176 = phi i32 [ %i.fh, %bb.ak ], [ %i.ex, %bb.aj ] ; 3 uses
  %i.ey = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i.i176, i1 true)
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = add nuw i64 %.sroa.628.0.i.i173, %i.ez
  %i.fb = and i64 %i.fa, %i.em                    ; 2 uses
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i170, i64 %i.fb ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !2715
  %i.fe = icmp eq i64 %i.fd, %i.ee
  br i1 %i.fe, label %.thread36.i.i186, label %bb.ak, !prof !89

.thread36.i.i186:                                 ; preds = %.lr.ph.i.i175
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i168, i64 %i.fb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i168) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE10find_largeIS4_EENSJ_8iteratorERSG_m.exit.i180

bb.ak:                                            ; preds = %.lr.ph.i.i175
  %i.fg = add i32 %.sroa.019.050.i.i176, -1
  %i.fh = and i32 %i.fg, %.sroa.019.050.i.i176    ; 2 uses
  %.not.i.i177 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i177, label %._crit_edge.i.i178, label %.lr.ph.i.i175

._crit_edge.i.i178:                               ; preds = %bb.ak, %bb.aj
  %i.fi = icmp eq <16 x i8> %i.et, splat (i8 -128)
  %i.fj = bitcast <16 x i1> %i.fi to i16
  %i.fk = zext i16 %i.fj to i32
  %i.fl = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fk) #43, !srcloc !88
  %.not47.i.i179 = icmp eq i32 %i.fl, 0
  br i1 %.not47.i.i179, label %bb.al, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE10find_largeIS4_EENSJ_8iteratorERSG_m.exit.i180, !prof !90

bb.al:                                            ; preds = %._crit_edge.i.i178
  %i.fm = add i64 %.sroa.13.0.i.i172, 16          ; 2 uses
  %i.fn = add i64 %i.fm, %.sroa.628.0.i.i173
  br label %bb.aj, !llvm.loop !6359

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE10find_largeIS4_EENSJ_8iteratorERSG_m.exit.i180: ; preds = %._crit_edge.i.i178, %.thread36.i.i186
  %.sroa.0.4.ph.i.i181 = phi ptr [ %i.ff, %.thread36.i.i186 ], [ null, %._crit_edge.i.i178 ]
  %.sroa.3.4.ph.i.i182 = phi ptr [ %i.fc, %.thread36.i.i186 ], [ undef, %._crit_edge.i.i178 ]
  %.fca.0.insert.i.i183 = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i181, 0
  %.fca.1.insert.i.i184 = insertvalue { ptr, ptr } %.fca.0.insert.i.i183, ptr %.sroa.3.4.ph.i.i182, 1
  br label %.noexc109

.noexc109:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE10find_largeIS4_EENSJ_8iteratorERSG_m.exit.i180, %bb.ah, %bb.ag
  %.pn.i185 = phi { ptr, ptr } [ %.fca.1.insert.i.i184, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE10find_largeIS4_EENSJ_8iteratorERSG_m.exit.i180 ], [ { ptr null, ptr undef }, %bb.ag ], [ %spec.select.i.i190, %bb.ah ] ; 2 uses
  %i.fo = extractvalue { ptr, ptr } %.pn.i185, 0  ; 3 uses
  %i.fp = extractvalue { ptr, ptr } %.pn.i185, 1  ; 2 uses
  %.not.i98 = icmp eq ptr %i.fo, null
  br i1 %.not.i98, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110.thread, label %.preheader.preheader.i99

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110.thread: ; preds = %.noexc109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ap

.preheader.preheader.i99:                         ; preds = %.noexc109
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 3 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !95, !noalias !11485 ; 2 uses
  %i.fs = icmp slt i8 %i.fr, -1
  br i1 %i.fs, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100

.lr.ph.i.i.i.i108:                                ; preds = %.preheader.preheader.i99, %.lr.ph.i.i.i.i108
  %i.ft = phi ptr [ %i.fu, %.lr.ph.i.i.i.i108 ], [ %i.fq, %.preheader.preheader.i99 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !95, !noalias !11485 ; 2 uses
  %i.fw = icmp slt i8 %i.fv, -1
  br i1 %i.fw, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100, !llvm.loop !2695

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100: ; preds = %.lr.ph.i.i.i.i108, %.preheader.preheader.i99
  %.lcssa14.i.i102 = phi ptr [ %i.fq, %.preheader.preheader.i99 ], [ %i.fu, %.lr.ph.i.i.i.i108 ]
  %i.fx = phi i8 [ %i.fr, %.preheader.preheader.i99 ], [ %i.fv, %.lr.ph.i.i.i.i108 ]
  %i.fy = icmp eq i8 %i.fx, -1
  br i1 %i.fy, label %bb.am, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110, !prof !90

bb.am:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110: ; preds = %bb.am, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  %.sink21.i104 = phi ptr [ null, %bb.am ], [ %.lcssa14.i.i102, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i117
  %.09.i113 = phi i64 [ %i.gi, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i117 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110 ] ; 2 uses
  %.sroa.02.07.i114 = phi ptr [ %.sroa.02.2.i118, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i117 ], [ %i.fo, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i114, i64 1 ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !95  ; 2 uses
  %i.gb = icmp slt i8 %i.ga, -1
  br i1 %i.gb, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115

.lr.ph.i.i.i121:                                  ; preds = %.lr.ph.i112, %.lr.ph.i.i.i121
  %i.gc = phi ptr [ %i.gd, %.lr.ph.i.i.i121 ], [ %i.fz, %.lr.ph.i112 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 3 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !95  ; 2 uses
  %i.gf = icmp slt i8 %i.ge, -1
  br i1 %i.gf, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115, !llvm.loop !2695

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115: ; preds = %.lr.ph.i.i.i121, %.lr.ph.i112
  %.sroa.02.1.i116 = phi ptr [ %i.fz, %.lr.ph.i112 ], [ %i.gd, %.lr.ph.i.i.i121 ]
  %i.gg = phi i8 [ %i.ga, %.lr.ph.i112 ], [ %i.ge, %.lr.ph.i.i.i121 ]
  %i.gh = icmp eq i8 %i.gg, -1
  br i1 %i.gh, label %bb.an, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i117, !prof !90

bb.an:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i117

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i117: ; preds = %bb.an, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  %.sroa.02.2.i118 = phi ptr [ null, %bb.an ], [ %.sroa.02.1.i116, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ] ; 2 uses
  %i.gi = add nuw nsw i64 %.09.i113, 1            ; 2 uses
  %.not.i119 = icmp eq ptr %.sroa.02.2.i118, %.sink21.i104
  br i1 %.not.i119, label %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_SB_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESN_SN_.exit, label %.lr.ph.i112, !llvm.loop !11468

_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_SB_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESN_SN_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE8iteratorppEv.exit.i117
  store i64 %i.gi, ptr %i.d, align 8, !tbaa !34
  %i.gj = icmp eq i64 %.09.i113, 0
  br i1 %i.gj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_SB_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESN_SN_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.aq

bb.ap:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_SA_EEEEE11equal_rangeIS4_EESF_INSJ_8iteratorESL_ERSG_.exit110.thread, %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_SB_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESN_SN_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.gk = load i8, ptr %9, align 8, !tbaa !282, !range !26, !noundef !27
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %.critedge79, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.be

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.gn = load ptr, ptr %i.dq, align 8, !tbaa !133 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i126, label %_ZNK7testing15AssertionResult15failure_messageEv.exit127, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit127

_ZNK7testing15AssertionResult15failure_messageEv.exit127: ; preds = %bb.at, %bb.as
  %i.gp = phi ptr [ %i.go, %bb.at ], [ @.str.204, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.gp)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.gq = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.av
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !65
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.gu = load ptr, ptr %i.dq, align 8, !tbaa !133 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i131, label %.critedge81, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !30 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.aw
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !35
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef 32) #40
  br label %.critedge81

bb.ax:                                            ; preds = %bb.ar
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit138

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.au
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn62 = phi { ptr, i32 } [ %i.hc, %bb.az ], [ %i.hb, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hd = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i136, label %_ZN7testing7MessageD2Ev.exit138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.ba
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !65
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(128) %i.hd) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit138

_ZN7testing7MessageD2Ev.exit138:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, %bb.ba, %bb.ax
  %.pn62.pn = phi { ptr, i32 } [ %i.ha, %bb.ax ], [ %.pn62, %bb.ba ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.be

.critedge79:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  %i.hh = load ptr, ptr %i.dq, align 8, !tbaa !133 ; 4 uses
  %.not.i.i139 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i139, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.critedge79
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !30 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140: ; preds = %bb.bb
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !35
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 32) #40
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge79, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0193.0237, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0193.0237, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !36, !noalias !11488 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !36, !noalias !11488
  %i.ht = icmp eq i64 %i.hq, %i.hs
  br i1 %i.ht, label %bb.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.hu = icmp eq i64 %i.hq, 0
  br i1 %i.hu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.bd
  %i.hv = load ptr, ptr %i.ho, align 8, !tbaa !30, !noalias !11488
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !30, !noalias !11488
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.hw, ptr %i.hv, i64 %i.hq), !noalias !11488
end_hunk_3
begin_hunk_4_@_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapINS4_9EnumClassEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE10CreateTestEv:bb.a
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINS1_9EnumClassEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINS1_9EnumClassEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.944, align 8            ; 4 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1340", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.1336", align 8   ; 6 uses
  %4 = alloca %"struct.absl::lts_20260526::container_internal::Generator.1333", align 1 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::flat_hash_map.896", align 8 ; 21 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i, %bb.a
  %.sroa.0179.1 = phi ptr [ null, %bb.a ], [ %.sroa.0179.2, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i ] ; 8 uses
  %.sroa.11185.0 = phi ptr [ null, %bb.a ], [ %.sroa.11185.1, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i ] ; 9 uses
  %.sroa.18.1 = phi ptr [ null, %bb.a ], [ %.sroa.18.2, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i ] ; 3 uses
  %.010.i = phi i32 [ 10, %bb.a ], [ %i.u, %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i ] ; 2 uses
  %i.e = invoke { i64, i32 } @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKNS1_9EnumClassEiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %.loopexit206 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.e, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.e, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.11185.0, %.sroa.18.1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i64 %.fca.0.extract.i, ptr %.sroa.11185.0, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11185.0, i64 8
  store i32 %.fca.1.extract.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i

bb.d:                                             ; preds = %.noexc
  %i.f = ptrtoint ptr %.sroa.11185.0 to i64
  %i.g = ptrtoint ptr %.sroa.0179.1 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775792
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #39
          to label %.noexc83 unwind label %.loopexit.split-lp

.noexc83:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = call i64 @llvm.umin.i64(i64 %i.k, i64 576460752303423487)
  %i.n = select i1 %i.l, i64 576460752303423487, i64 %i.m ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.n, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42
          to label %.noexc84 unwind label %.loopexit206 ; 5 uses

.noexc84:                                         ; preds = %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h ; 2 uses
  store i64 %.fca.0.extract.i, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.fca.1.extract.i, ptr %.sroa.5.0..sroa_idx5.i, align 8
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0179.1, %.sroa.11185.0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc84, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.p, %.noexc84 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0179.1, %.noexc84 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !11508
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %.sroa.11185.0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4837

_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc84
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.noexc84 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i.i = icmp eq ptr %.sroa.0179.1, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.1, i64 noundef %i.h) #40
  br label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i.i
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i

_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i: ; preds = %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.0179.2 = phi ptr [ %i.p, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0179.1, %bb.c ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i ], [ %.sroa.11185.0, %bb.c ] ; 4 uses
  %.sroa.18.2 = phi ptr [ %i.t, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i ], [ %.sroa.18.1, %bb.c ] ; 3 uses
  %.sroa.11185.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.u = add nsw i32 %.010.i, -1
  %i.v = icmp samesign ugt i32 %.010.i, 1
  br i1 %i.v, label %bb.b, label %bb.g, !llvm.loop !10433

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS7_EEEaSEOS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.w = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.y = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 1, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !2425
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !2427
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !2429
  %.not226 = icmp eq ptr %.sroa.0179.2, %.sroa.11185.1
  br i1 %.not226, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.h

.loopexit206:                                     ; preds = %bb.b, %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.1, %bb.b ], [ %.sroa.11185.0, %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal9EnumClassEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.h:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.0176.0227 = phi ptr [ %.sroa.0179.2, %.lr.ph ], [ %i.cd, %bb.y ] ; 3 uses
  %i.ae = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE4findIS4_EENSD_8iteratorERSA_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0176.0227)
          to label %.noexc85 unwind label %bb.l

.noexc85:                                         ; preds = %bb.h
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit.thread: ; preds = %.noexc85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.m

.preheader.preheader.i:                           ; preds = %.noexc85
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !95, !noalias !11512 ; 2 uses
  %i.ai = icmp slt i8 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ag, %.preheader.preheader.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !95, !noalias !11512 ; 2 uses
  %i.am = icmp slt i8 %i.al, -1
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !2808

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.ag, %.preheader.preheader.i ], [ %i.ak, %.lr.ph.i.i.i.i ]
  %i.an = phi i8 [ %i.ah, %.preheader.preheader.i ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit, !prof !90

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit: ; preds = %bb.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.i ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.ay, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i ], [ %i.af, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !95  ; 2 uses
  %i.ar = icmp slt i8 %i.aq, -1
  br i1 %i.ar, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.ap, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !95  ; 2 uses
  %i.av = icmp slt i8 %i.au, -1
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !2808

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.at, %.lr.ph.i.i.i ]
  %i.aw = phi i8 [ %i.aq, %.lr.ph.i ], [ %i.au, %.lr.ph.i.i.i ]
  %i.ax = icmp eq i8 %i.aw, -1
  br i1 %i.ax, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i, !prof !90

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.j ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.ay = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i86 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i86, label %bb.k, label %.lr.ph.i, !llvm.loop !11515

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.m

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit.thread, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.az = load i8, ptr %6, align 8, !tbaa !282, !range !26, !noundef !27
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.critedge, label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.m:                                             ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit.thread
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.z

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.p, %bb.o
  %i.bf = phi ptr [ %i.be, %bb.p ], [ @.str.204, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.bf)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.bg = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !133 ; 4 uses
  %.not.i.i90 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i90, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !35
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #40
  br label %bb.aa

bb.t:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit93

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %i.br, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.bt = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i91, label %_ZN7testing7MessageD2Ev.exit93, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92: ; preds = %bb.w
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !65
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(128) %i.bt) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit93

_ZN7testing7MessageD2Ev.exit93:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92, %bb.w, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %.pn, %bb.w ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  br label %bb.z

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !133 ; 4 uses
  %.not.i.i94 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i94, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95: ; preds = %bb.x
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !35
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 32) #40
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0176.0227, i64 16
  %.not = icmp eq ptr %.sroa.0176.0227, %.0.lcssa.i.i.i.i.i.i.i.i.pn
  br i1 %.not, label %.lr.ph.i.i, label %bb.h

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit93, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit93 ], [ %i.bc, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ca

bb.aa:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.y
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE7emplaceIJRSB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES9_INSD_8iteratorEbEDpOSH_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.sroa.0179.2, %.lr.ph.i.i ], [ %i.cx, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE7emplaceIJRSB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES9_INSD_8iteratorEbEDpOSH_.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !11516)
  call void @llvm.experimental.noalias.scope.decl(metadata !11519)
  call void @llvm.experimental.noalias.scope.decl(metadata !11522)
  call void @llvm.experimental.noalias.scope.decl(metadata !11525)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11528)
  call void @llvm.experimental.noalias.scope.decl(metadata !11531)
  call void @llvm.experimental.noalias.scope.decl(metadata !11534)
  %i.ci = load i64, ptr %5, align 8, !noalias !11537 ; 3 uses
  %i.cj = and i64 %i.ci, 254
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !11538)
  call void @llvm.experimental.noalias.scope.decl(metadata !11541)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ci, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cl = or disjoint i64 %i.ci, 131072
  store i64 %i.cl, ptr %5, align 8, !noalias !11544
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE28find_or_prepare_insert_smallIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !2828, !noalias !11544
  %i.cn = load i64, ptr %.sroa.01.05.i.i, align 8, !tbaa !2828, !noalias !11544
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE28find_or_prepare_insert_smallIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !11544
  store ptr %i.aa, ptr %2, align 8, !tbaa !4219, !noalias !11544
  store ptr %.sroa.01.05.i.i, ptr %i.cf, align 8, !tbaa !1294, !noalias !11544
  %i.cp = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashENS3_9EnumClassELb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc100 unwind label %bb.ai ; 2 uses

.noexc100:                                        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !11544
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !35, !noalias !11544, !nonnull !27, !noundef !27
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cp
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !35, !noalias !11544
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cp
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE28find_or_prepare_insert_smallIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE28find_or_prepare_insert_smallIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc100, %bb.ae, %bb.ad
  %.sink17.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.noexc100 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ad ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ae ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.noexc100 ], [ %i.ce, %bb.ad ], [ %i.ce, %bb.ae ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc100 ], [ 1, %bb.ad ], [ 0, %bb.ae ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !11544
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !11544
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE22find_or_prepare_insertIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ab
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE28find_or_prepare_insert_largeIS4_EES9_INSD_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1336") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.01.05.i.i)
          to label %.noexc101 unwind label %bb.ai

.noexc101:                                        ; preds = %bb.ag
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !4978, !range !26, !alias.scope !11545
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE22find_or_prepare_insertIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE22find_or_prepare_insertIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc101, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE28find_or_prepare_insert_smallIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i
  %i.cs = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE28find_or_prepare_insert_smallIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i, %.noexc101 ]
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ah, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE7emplaceIJRSB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES9_INSD_8iteratorEbEDpOSH_.exit.i.i

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE22find_or_prepare_insertIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !11545 ; 2 uses
  %i.cu = load i64, ptr %.sroa.01.05.i.i, align 8, !tbaa !2828, !noalias !11546
  store i64 %i.cu, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, align 8, !tbaa !4933
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 8
  %i.cw = load i32, ptr %i.ch, align 8, !tbaa !87, !noalias !11546
  store i32 %i.cw, ptr %i.cv, align 8, !tbaa !4935
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE7emplaceIJRSB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES9_INSD_8iteratorEbEDpOSH_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE7emplaceIJRSB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES9_INSD_8iteratorEbEDpOSH_.exit.i.i: ; preds = %bb.ah, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE22find_or_prepare_insertIS4_EES9_INSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %.not.i.i99 = icmp eq ptr %.sroa.01.05.i.i, %.0.lcssa.i.i.i.i.i.i.i.i.pn
  br i1 %.not.i.i99, label %.lr.ph230, label %bb.ab, !llvm.loop !4983

.lr.ph230:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE7emplaceIJRSB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES9_INSD_8iteratorEbEDpOSH_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.aj:                                            ; preds = %.lr.ph230, %bb.bv
  %.sroa.0170.0229 = phi ptr [ %.sroa.0179.2, %.lr.ph230 ], [ %i.gv, %bb.bv ] ; 5 uses
  %i.dd = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE4findIS4_EENSD_8iteratorERSA_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0170.0229)
          to label %.noexc113 unwind label %bb.ao ; 2 uses

.noexc113:                                        ; preds = %bb.aj
  %i.de = extractvalue { ptr, ptr } %i.dd, 0      ; 3 uses
  %i.df = extractvalue { ptr, ptr } %i.dd, 1
  %.not.i102 = icmp eq ptr %i.de, null
  br i1 %.not.i102, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114.thread, label %.preheader.preheader.i103

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114.thread: ; preds = %.noexc113
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.an

.preheader.preheader.i103:                        ; preds = %.noexc113
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !95, !noalias !11547 ; 2 uses
  %i.di = icmp slt i8 %i.dh, -1
  br i1 %i.di, label %.lr.ph.i.i.i.i112, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104

.lr.ph.i.i.i.i112:                                ; preds = %.preheader.preheader.i103, %.lr.ph.i.i.i.i112
  %i.dj = phi ptr [ %i.dk, %.lr.ph.i.i.i.i112 ], [ %i.dg, %.preheader.preheader.i103 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !95, !noalias !11547 ; 2 uses
  %i.dm = icmp slt i8 %i.dl, -1
  br i1 %i.dm, label %.lr.ph.i.i.i.i112, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104, !llvm.loop !2808

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104: ; preds = %.lr.ph.i.i.i.i112, %.preheader.preheader.i103
  %.lcssa14.i.i106 = phi ptr [ %i.dg, %.preheader.preheader.i103 ], [ %i.dk, %.lr.ph.i.i.i.i112 ]
  %i.dn = phi i8 [ %i.dh, %.preheader.preheader.i103 ], [ %i.dl, %.lr.ph.i.i.i.i112 ]
  %i.do = icmp eq i8 %i.dn, -1
  br i1 %i.do, label %bb.ak, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114, !prof !90

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114: ; preds = %bb.ak, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104
  %.sink21.i108 = phi ptr [ null, %bb.ak ], [ %.lcssa14.i.i106, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i104 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  br label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i121
  %.09.i117 = phi i64 [ %i.dy, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i121 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114 ] ; 2 uses
  %.sroa.02.07.i118 = phi ptr [ %.sroa.02.2.i122, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i121 ], [ %i.de, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i118, i64 1 ; 3 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !95  ; 2 uses
  %i.dr = icmp slt i8 %i.dq, -1
  br i1 %i.dr, label %.lr.ph.i.i.i125, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119

.lr.ph.i.i.i125:                                  ; preds = %.lr.ph.i116, %.lr.ph.i.i.i125
  %i.ds = phi ptr [ %i.dt, %.lr.ph.i.i.i125 ], [ %i.dp, %.lr.ph.i116 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 3 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !95  ; 2 uses
  %i.dv = icmp slt i8 %i.du, -1
  br i1 %i.dv, label %.lr.ph.i.i.i125, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119, !llvm.loop !2808

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119: ; preds = %.lr.ph.i.i.i125, %.lr.ph.i116
  %.sroa.02.1.i120 = phi ptr [ %i.dp, %.lr.ph.i116 ], [ %i.dt, %.lr.ph.i.i.i125 ]
  %i.dw = phi i8 [ %i.dq, %.lr.ph.i116 ], [ %i.du, %.lr.ph.i.i.i125 ]
  %i.dx = icmp eq i8 %i.dw, -1
  br i1 %i.dx, label %bb.al, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i121, !prof !90

bb.al:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i121

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i121: ; preds = %bb.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119
  %.sroa.02.2.i122 = phi ptr [ null, %bb.al ], [ %.sroa.02.1.i120, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i119 ] ; 2 uses
  %i.dy = add nuw nsw i64 %.09.i117, 1            ; 2 uses
  %.not.i123 = icmp eq ptr %.sroa.02.2.i122, %.sink21.i108
  br i1 %.not.i123, label %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_9EnumClassEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit, label %.lr.ph.i116, !llvm.loop !11515

_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_9EnumClassEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i121
  store i64 %i.dy, ptr %i.d, align 8, !tbaa !34
  %i.dz = icmp eq i64 %.09.i117, 0
  br i1 %i.dz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_9EnumClassEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129 unwind label %bb.ap

bb.an:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_9EnumClassEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit114.thread, %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_9EnumClassEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129 unwind label %bb.ap

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.ea = load i8, ptr %9, align 8, !tbaa !282, !range !26, !noundef !27
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %.critedge79, label %bb.aq

bb.ao:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.be

bb.aq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.ee = load ptr, ptr %i.cy, align 8, !tbaa !133 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.as, %bb.ar
  %i.eg = phi ptr [ %i.ef, %bb.as ], [ @.str.204, %bb.ar ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.eg)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.eh = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.au
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !65
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(128) %i.eh) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.el = load ptr, ptr %i.cy, align 8, !tbaa !133 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.el, null
  br i1 %.not.i.i135, label %.critedge81, label %bb.av

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !30 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.av
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !35
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 32) #40
  br label %.critedge81

bb.aw:                                            ; preds = %bb.aq
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.at
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn62 = phi { ptr, i32 } [ %i.et, %bb.ay ], [ %i.es, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.eu = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.az
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !65
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(128) %i.eu) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.az, %bb.aw
  %.pn62.pn = phi { ptr, i32 } [ %i.er, %bb.aw ], [ %.pn62, %bb.az ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.be

.critedge79:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit129
  %i.ey = load ptr, ptr %i.cy, align 8, !tbaa !133 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i143, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.critedge79
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !30 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.ba
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !35
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 32) #40
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge79, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0170.0229, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !87, !noalias !11550
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !87, !noalias !11550
  %i.fi = icmp eq i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bb
end_hunk_4
begin_hunk_5_@_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapIiNS4_17NonStandardLayoutENS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiS8_EEEEEEEE10CreateTestEv:bb.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapIiNS1_17NonStandardLayoutENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS5_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapIiNS1_17NonStandardLayoutENS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS5_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.1079", align 8   ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<int, absl::lts_20260526::container_internal::NonStandardLayout>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const int, absl::lts_20260526::container_internal::NonStandardLayout>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %"struct.std::pair.1403", align 8   ; 3 uses
  %4 = alloca %"class.std::vector.1388", align 8  ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::flat_hash_map.948", align 8 ; 16 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS8_EEEiNS6_9GeneratorIS8_vEEET_SE_T0_T1_(ptr nonnull %4, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.h = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 0, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.f, ptr %i.j, align 8, !tbaa !2425
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.h, ptr %i.k, align 8, !tbaa !2427
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !2429
  %i.m = load ptr, ptr %4, align 8, !tbaa !5086   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5086 ; 2 uses
  %.not234 = icmp eq ptr %i.m, %i.o
  br i1 %.not234, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.d:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.0199.0235 = phi ptr [ %i.m, %.lr.ph ], [ %i.dk, %bb.aa ] ; 3 uses
  %i.t = load i64, ptr %5, align 8                ; 5 uses
  %i.u = and i64 %i.t, 254
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ult i64 %i.t, 562949953552384
  call void @llvm.assume(i1 %i.w)
  %.not.i.i.i167 = icmp samesign ult i64 %i.t, 131072
  br i1 %.not.i.i.i167, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.x = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4, !tbaa !87
  %i.y = load i32, ptr %.sroa.0199.0235, align 4, !tbaa !87
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader.preheader.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit.thread

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !35 ; 4 uses
  %i.aa = and i64 %i.t, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.aa
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ab = lshr i64 %i.t, 8
  %i.ac = and i64 %i.ab, 255
  %i.ad = load i32, ptr %.sroa.0199.0235, align 4, !tbaa !87 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = xor i64 %i.ae, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.ag = zext i64 %i.af to i128
  %i.ah = mul nuw nsw i128 %i.ag, 8779197792823184629 ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 2 uses
  %i.al = xor i64 %i.ac, %i.ak
  %i.am = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.an = lshr i64 %i.ak, 57
  %i.ao = trunc nuw nsw i64 %i.an to i8
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.q, align 8, !tbaa !35 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.ao, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i7.i = phi i64 [ %i.al, %bb.g ], [ %i.bm, %bb.j ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.g ], [ %i.bl, %bb.j ]
  %.sroa.628.0.i.i = and i64 %.pn.i7.i, %i.am     ; 4 uses
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.628.0.i.i
  call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.628.0.i.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !35 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = zext i16 %i.av to i32
  %i.ax = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aw) #43, !srcloc !88 ; 2 uses
  %.not49.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %bb.h, %bb.i
  %.sroa.019.050.i.i = phi i32 [ %i.bg, %bb.i ], [ %i.ax, %bb.h ] ; 3 uses
  %i.ay = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i.i, i1 true)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add nuw i64 %.sroa.628.0.i.i, %i.az
  %i.bb = and i64 %i.ba, %i.am                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !87
  %i.be = icmp eq i32 %i.bd, %i.ad
  br i1 %i.be, label %.noexc, label %bb.i, !prof !89

bb.i:                                             ; preds = %.lr.ph.i.i165
  %i.bf = add i32 %.sroa.019.050.i.i, -1
  %i.bg = and i32 %i.bf, %.sroa.019.050.i.i       ; 2 uses
  %.not.i.i166 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i166, label %._crit_edge.i.i, label %.lr.ph.i.i165

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.bh = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = zext i16 %i.bi to i32
  %i.bk = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bj) #43, !srcloc !88
  %.not47.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not47.i.i, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit.thread, !prof !90

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bl = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bm = add i64 %i.bl, %.sroa.628.0.i.i
  br label %bb.h, !llvm.loop !6513

.noexc:                                           ; preds = %.lr.ph.i.i165
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit.thread: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %bb.m

.preheader.preheader.i:                           ; preds = %.noexc, %bb.f
  %.pn.i321 = phi ptr [ %i.bn, %.noexc ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.f ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn.i321, i64 1 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !95, !noalias !11570 ; 2 uses
  %i.bq = icmp slt i8 %i.bp, -1
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.br = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.bo, %.preheader.preheader.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !95, !noalias !11570 ; 2 uses
  %i.bu = icmp slt i8 %i.bt, -1
  br i1 %i.bu, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !2915

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.bo, %.preheader.preheader.i ], [ %i.bs, %.lr.ph.i.i.i.i ]
  %i.bv = phi i8 [ %i.bp, %.preheader.preheader.i ], [ %i.bt, %.lr.ph.i.i.i.i ]
  %i.bw = icmp eq i8 %i.bv, -1
  br i1 %i.bw, label %bb.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit, !prof !90

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit: ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.k ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not6.i = icmp eq ptr %.pn.i321, %.sink21.i
  br i1 %.not6.i, label %bb.m, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.cg, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i ], [ %.pn.i321, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !95  ; 2 uses
  %i.bz = icmp slt i8 %i.by, -1
  br i1 %i.bz, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.ca = phi ptr [ %i.cb, %.lr.ph.i.i.i ], [ %i.bx, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !95  ; 2 uses
  %i.cd = icmp slt i8 %i.cc, -1
  br i1 %i.cd, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !2915

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.cb, %.lr.ph.i.i.i ]
  %i.ce = phi i8 [ %i.by, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.i.i ]
  %i.cf = icmp eq i8 %i.ce, -1
  br i1 %i.cf, label %bb.l, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i, !prof !90

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i: ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.l ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.cg = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i83 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i83, label %bb.n, label %.lr.ph.i, !llvm.loop !11573

bb.m:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit.thread
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i
  store i64 %i.cg, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.o

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ch = load i8, ptr %6, align 8, !tbaa !282, !range !26, !noundef !27
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.critedge, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.ab

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.r, %bb.q
  %i.cm = phi ptr [ %i.cl, %bb.r ], [ @.str.204, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.cm)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.cn = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !65
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %i.cn) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !133 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i87, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !35
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 32) #40
  br label %bb.ac

bb.v:                                             ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit90

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.x ], [ %i.cy, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.da = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.da, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.y
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(128) %i.da) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.y, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.v ], [ %.pn, %bb.y ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  br label %bb.ab

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !133 ; 4 uses
  %.not.i.i91 = icmp eq ptr %i.de, null
  br i1 %.not.i.i91, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !30 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92: ; preds = %bb.z
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !35
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 32) #40
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0199.0235, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.dk, %i.o
  br i1 %.not, label %.critedge77, label %bb.d

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.cj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bz

bb.ac:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.loopexit

.critedge77:                                      ; preds = %bb.aa
  %.pre = load ptr, ptr %4, align 8, !tbaa !5086  ; 3 uses
  %.pre254 = load ptr, ptr %i.n, align 8, !tbaa !5086 ; 3 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre254
  br i1 %.not4.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge77
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc97, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.dn, %.noexc97 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !11574
  store ptr %5, ptr %2, align 8, !tbaa !5090, !noalias !11574
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !11577
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  store ptr %.sroa.01.05.i.i, ptr %1, align 8, !tbaa !155, !alias.scope !11582, !noalias !11587
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !5104, !alias.scope !11582, !noalias !11587
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE19EmplaceDecomposableclIiJRKSt21piecewise_construct_tSt5tupleIJRSA_EESJ_IJRKS4_EEEEES9_INSD_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1403") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.05.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %.noexc97 unwind label %bb.ae

.noexc97:                                         ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !11577
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !11574
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 48 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.dn, %.pre254
  br i1 %.not.i.i96, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit, label %bb.ad, !llvm.loop !5106

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit: ; preds = %.noexc97
  %.pre255 = load ptr, ptr %4, align 8, !tbaa !5086
  %.pre256 = load ptr, ptr %i.n, align 8, !tbaa !5086
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit, %.critedge77
  %i.do = phi ptr [ %.pre256, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit ], [ %.pre254, %.critedge77 ] ; 2 uses
  %i.dp = phi ptr [ %.pre255, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit ], [ %.pre, %.critedge77 ] ; 2 uses
  %.not213236 = icmp eq ptr %i.dp, %i.do
  br i1 %.not213236, label %.loopexit, label %.lr.ph238

.lr.ph238:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.af:                                            ; preds = %.lr.ph238, %bb.bv
  %.sroa.0193.0237 = phi ptr [ %i.dp, %.lr.ph238 ], [ %i.jq, %bb.bv ] ; 7 uses
  %i.dx = load i64, ptr %5, align 8               ; 5 uses
  %i.dy = and i64 %i.dx, 254
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ea = icmp ult i64 %i.dx, 562949953552384
  call void @llvm.assume(i1 %i.ea)
  %.not.i.i.i187 = icmp samesign ult i64 %i.dx, 131072
  br i1 %.not.i.i.i187, label %.noexc109, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload.i.i.i.i.i.i188 = load ptr, ptr %i.dr, align 8, !tbaa !35 ; 2 uses
  %i.eb = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i188, align 4, !tbaa !87
  %i.ec = load i32, ptr %.sroa.0193.0237, align 4, !tbaa !87
  %i.ed = icmp eq i32 %i.eb, %i.ec
  %.fca.1.insert.i.i.i189 = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i188, 1
  %spec.select.i.i190 = select i1 %i.ed, { ptr, ptr } %.fca.1.insert.i.i.i189, { ptr, ptr } { ptr null, ptr undef }
  br label %.noexc109

bb.ai:                                            ; preds = %bb.af
  %.sroa.0.0.copyload.i.i.i.i.i168 = load ptr, ptr %i.dq, align 8, !tbaa !35 ; 4 uses
  %i.ee = and i64 %i.dx, 255
  %notmask.i.i.i.i.i.i169 = shl nsw i64 -1, %i.ee
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i168, i32 0, i32 1, i32 1)
  %i.ef = lshr i64 %i.dx, 8
  %i.eg = and i64 %i.ef, 255
  %i.eh = load i32, ptr %.sroa.0193.0237, align 4, !tbaa !87 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = xor i64 %i.ei, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.ek = zext i64 %i.ej to i128
  %i.el = mul nuw nsw i128 %i.ek, 8779197792823184629 ; 2 uses
  %i.em = lshr i128 %i.el, 64
  %i.en = xor i128 %i.em, %i.el
  %i.eo = trunc i128 %i.en to i64                 ; 2 uses
  %i.ep = xor i64 %i.eg, %i.eo
  %i.eq = xor i64 %notmask.i.i.i.i.i.i169, -1     ; 2 uses
  %i.er = lshr i64 %i.eo, 57
  %i.es = trunc nuw nsw i64 %i.er to i8
  %.sroa.0.0.copyload.i.i.i14.i.i170 = load ptr, ptr %i.dr, align 8, !tbaa !35 ; 2 uses
  %i.et = insertelement <16 x i8> poison, i8 %i.es, i64 0
  %i.eu = shufflevector <16 x i8> %i.et, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.pn.i7.i171 = phi i64 [ %i.ep, %bb.ai ], [ %i.fr, %bb.al ]
  %.sroa.13.0.i.i172 = phi i64 [ 0, %bb.ai ], [ %i.fq, %bb.al ]
  %.sroa.628.0.i.i173 = and i64 %.pn.i7.i171, %i.eq ; 4 uses
  %i.ev = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i170, i64 %.sroa.628.0.i.i173
  call void @llvm.prefetch.p0(ptr %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i168, i64 %.sroa.628.0.i.i173
  %i.ex = load <16 x i8>, ptr %i.ew, align 1, !tbaa !35 ; 2 uses
  %i.ey = icmp eq <16 x i8> %i.eu, %i.ex
  %i.ez = bitcast <16 x i1> %i.ey to i16
  %i.fa = zext i16 %i.ez to i32
  %i.fb = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fa) #43, !srcloc !88 ; 2 uses
  %.not49.i.i174 = icmp eq i32 %i.fb, 0
  br i1 %.not49.i.i174, label %._crit_edge.i.i178, label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %bb.aj, %bb.ak
  %.sroa.019.050.i.i176 = phi i32 [ %i.fl, %bb.ak ], [ %i.fb, %bb.aj ] ; 3 uses
  %i.fc = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i.i176, i1 true)
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = add nuw i64 %.sroa.628.0.i.i173, %i.fd
  %i.ff = and i64 %i.fe, %i.eq                    ; 2 uses
  %i.fg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i170, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !87
  %i.fi = icmp eq i32 %i.fh, %i.eh
  br i1 %i.fi, label %.thread36.i.i186, label %bb.ak, !prof !89

.thread36.i.i186:                                 ; preds = %.lr.ph.i.i175
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i168, i64 %i.ff
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i168) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE10find_largeIiEENSD_8iteratorERSA_m.exit.i180

bb.ak:                                            ; preds = %.lr.ph.i.i175
  %i.fk = add i32 %.sroa.019.050.i.i176, -1
  %i.fl = and i32 %i.fk, %.sroa.019.050.i.i176    ; 2 uses
  %.not.i.i177 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i177, label %._crit_edge.i.i178, label %.lr.ph.i.i175

._crit_edge.i.i178:                               ; preds = %bb.ak, %bb.aj
  %i.fm = icmp eq <16 x i8> %i.ex, splat (i8 -128)
  %i.fn = bitcast <16 x i1> %i.fm to i16
  %i.fo = zext i16 %i.fn to i32
  %i.fp = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fo) #43, !srcloc !88
  %.not47.i.i179 = icmp eq i32 %i.fp, 0
  br i1 %.not47.i.i179, label %bb.al, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE10find_largeIiEENSD_8iteratorERSA_m.exit.i180, !prof !90

bb.al:                                            ; preds = %._crit_edge.i.i178
  %i.fq = add i64 %.sroa.13.0.i.i172, 16          ; 2 uses
  %i.fr = add i64 %i.fq, %.sroa.628.0.i.i173
  br label %bb.aj, !llvm.loop !6513

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE10find_largeIiEENSD_8iteratorERSA_m.exit.i180: ; preds = %._crit_edge.i.i178, %.thread36.i.i186
  %.sroa.0.4.ph.i.i181 = phi ptr [ %i.fj, %.thread36.i.i186 ], [ null, %._crit_edge.i.i178 ]
  %.sroa.3.4.ph.i.i182 = phi ptr [ %i.fg, %.thread36.i.i186 ], [ undef, %._crit_edge.i.i178 ]
  %.fca.0.insert.i.i183 = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i181, 0
  %.fca.1.insert.i.i184 = insertvalue { ptr, ptr } %.fca.0.insert.i.i183, ptr %.sroa.3.4.ph.i.i182, 1
  br label %.noexc109

.noexc109:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE10find_largeIiEENSD_8iteratorERSA_m.exit.i180, %bb.ah, %bb.ag
  %.pn.i185 = phi { ptr, ptr } [ %.fca.1.insert.i.i184, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE10find_largeIiEENSD_8iteratorERSA_m.exit.i180 ], [ { ptr null, ptr undef }, %bb.ag ], [ %spec.select.i.i190, %bb.ah ] ; 2 uses
  %i.fs = extractvalue { ptr, ptr } %.pn.i185, 0  ; 3 uses
  %i.ft = extractvalue { ptr, ptr } %.pn.i185, 1  ; 3 uses
  %.not.i98 = icmp eq ptr %i.fs, null
  br i1 %.not.i98, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110.thread, label %.preheader.preheader.i99

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110.thread: ; preds = %.noexc109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ap

.preheader.preheader.i99:                         ; preds = %.noexc109
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !95, !noalias !11590 ; 2 uses
  %i.fw = icmp slt i8 %i.fv, -1
  br i1 %i.fw, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100

.lr.ph.i.i.i.i108:                                ; preds = %.preheader.preheader.i99, %.lr.ph.i.i.i.i108
  %i.fx = phi ptr [ %i.fy, %.lr.ph.i.i.i.i108 ], [ %i.fu, %.preheader.preheader.i99 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 3 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !95, !noalias !11590 ; 2 uses
  %i.ga = icmp slt i8 %i.fz, -1
  br i1 %i.ga, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100, !llvm.loop !2915

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100: ; preds = %.lr.ph.i.i.i.i108, %.preheader.preheader.i99
  %.lcssa14.i.i102 = phi ptr [ %i.fu, %.preheader.preheader.i99 ], [ %i.fy, %.lr.ph.i.i.i.i108 ]
  %i.gb = phi i8 [ %i.fv, %.preheader.preheader.i99 ], [ %i.fz, %.lr.ph.i.i.i.i108 ]
  %i.gc = icmp eq i8 %i.gb, -1
  br i1 %i.gc, label %bb.am, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110, !prof !90

bb.am:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110: ; preds = %bb.am, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  %.sink21.i104 = phi ptr [ null, %bb.am ], [ %.lcssa14.i.i102, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i117
  %.09.i113 = phi i64 [ %i.gm, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i117 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110 ] ; 2 uses
  %.sroa.02.07.i114 = phi ptr [ %.sroa.02.2.i118, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i117 ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i114, i64 1 ; 3 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !95  ; 2 uses
  %i.gf = icmp slt i8 %i.ge, -1
  br i1 %i.gf, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115

.lr.ph.i.i.i121:                                  ; preds = %.lr.ph.i112, %.lr.ph.i.i.i121
  %i.gg = phi ptr [ %i.gh, %.lr.ph.i.i.i121 ], [ %i.gd, %.lr.ph.i112 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1 ; 3 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !95  ; 2 uses
  %i.gj = icmp slt i8 %i.gi, -1
  br i1 %i.gj, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115, !llvm.loop !2915

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115: ; preds = %.lr.ph.i.i.i121, %.lr.ph.i112
  %.sroa.02.1.i116 = phi ptr [ %i.gd, %.lr.ph.i112 ], [ %i.gh, %.lr.ph.i.i.i121 ]
  %i.gk = phi i8 [ %i.ge, %.lr.ph.i112 ], [ %i.gi, %.lr.ph.i.i.i121 ]
  %i.gl = icmp eq i8 %i.gk, -1
  br i1 %i.gl, label %bb.an, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i117, !prof !90

bb.an:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i117

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i117: ; preds = %bb.an, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  %.sroa.02.2.i118 = phi ptr [ null, %bb.an ], [ %.sroa.02.1.i116, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ] ; 2 uses
  %i.gm = add nuw nsw i64 %.09.i113, 1            ; 2 uses
  %.not.i119 = icmp eq ptr %.sroa.02.2.i118, %.sink21.i104
  br i1 %.not.i119, label %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiNS2_17NonStandardLayoutEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS5_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit, label %.lr.ph.i112, !llvm.loop !11573

_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiNS2_17NonStandardLayoutEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS5_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE8iteratorppEv.exit.i117
  store i64 %i.gm, ptr %i.d, align 8, !tbaa !34
  %i.gn = icmp eq i64 %.09.i113, 0
  br i1 %i.gn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiNS2_17NonStandardLayoutEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS5_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.aq

bb.ap:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNS1_17NonStandardLayoutEEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiS4_EEEEE11equal_rangeIiEES9_INSD_8iteratorESF_ERSA_.exit110.thread, %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiNS2_17NonStandardLayoutEEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiS5_EEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.go = load i8, ptr %9, align 8, !tbaa !282, !range !26, !noundef !27
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %.critedge79, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.be

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.gr = load ptr, ptr %i.ds, align 8, !tbaa !133 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i126, label %_ZNK7testing15AssertionResult15failure_messageEv.exit127, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit127

_ZNK7testing15AssertionResult15failure_messageEv.exit127: ; preds = %bb.at, %bb.as
  %i.gt = phi ptr [ %i.gs, %bb.at ], [ @.str.204, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.gt)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.gu = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.av
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.gy = load ptr, ptr %i.ds, align 8, !tbaa !133 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i131, label %.critedge81, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !30 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.aw
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !35
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef 32) #40
  br label %.critedge81

bb.ax:                                            ; preds = %bb.ar
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit138

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.au
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn62 = phi { ptr, i32 } [ %i.hg, %bb.az ], [ %i.hf, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hh = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i136, label %_ZN7testing7MessageD2Ev.exit138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.ba
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !65
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(128) %i.hh) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit138

_ZN7testing7MessageD2Ev.exit138:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, %bb.ba, %bb.ax
  %.pn62.pn = phi { ptr, i32 } [ %i.he, %bb.ax ], [ %.pn62, %bb.ba ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.be

.critedge79:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  %i.hl = load ptr, ptr %i.ds, align 8, !tbaa !133 ; 4 uses
  %.not.i.i139 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i139, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.critedge79
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !30 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140: ; preds = %bb.bb
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !35
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 32) #40
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge79, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0193.0237, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0193.0237, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0193.0237, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !36, !noalias !11593 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !36, !noalias !11593
  %i.hz = icmp eq i64 %i.hw, %i.hy
  br i1 %i.hz, label %bb.bd, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.thread6.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.ia = icmp eq i64 %i.hw, 0
  br i1 %i.ia, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.thread.i.i, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i

_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i: ; preds = %bb.bd
  %i.ib = load ptr, ptr %i.hu, align 8, !tbaa !30, !noalias !11593
end_hunk_5
begin_hunk_6_@_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE19GetSetUpCaseOrSuiteEPKci:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.281, i32 noundef 533)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.284, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.287, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !65
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.286, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS3_13flat_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINS1_17NonStandardLayoutEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !65
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINS1_17NonStandardLayoutEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal23gtest_suite_LookupTest_10EqualRangeINS0_13flat_hash_mapINS1_17NonStandardLayoutEiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS5_iEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.1087", align 8   ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<absl::lts_20260526::container_internal::NonStandardLayout, int>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const absl::lts_20260526::container_internal::NonStandardLayout, int>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %"struct.std::pair.1467", align 8   ; 3 uses
  %4 = alloca %"class.std::vector.1453", align 8  ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::flat_hash_map.998", align 8 ; 12 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS8_EEEiNS5_9GeneratorIS8_vEEET_SE_T0_T1_(ptr nonnull %4, i32 noundef 10)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  %i.h = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34 ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !34
  store i64 0, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.f, ptr %i.j, align 8, !tbaa !2425
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.h, ptr %i.k, align 8, !tbaa !2427
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !2429
  %i.m = load ptr, ptr %4, align 8, !tbaa !5313   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5313 ; 2 uses
  %.not201 = icmp eq ptr %i.m, %i.o
  br i1 %.not201, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.d:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.0172.0202 = phi ptr [ %i.m, %.lr.ph ], [ %i.bq, %bb.u ] ; 2 uses
  %i.r = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE4findIS4_EENSD_8iteratorERSA_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0172.0202)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit.thread, label %.preheader.preheader.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit.thread: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

.preheader.preheader.i:                           ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !95, !noalias !11598 ; 2 uses
  %i.v = icmp slt i8 %i.u, -1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader.i, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %.preheader.preheader.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !95, !noalias !11598 ; 2 uses
  %i.z = icmp slt i8 %i.y, -1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !3009

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.preheader.i
  %.lcssa14.i.i = phi ptr [ %i.t, %.preheader.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i ]
  %i.aa = phi i8 [ %i.u, %.preheader.preheader.i ], [ %i.y, %.lr.ph.i.i.i.i ]
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit, !prof !90

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit: ; preds = %bb.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sink21.i = phi ptr [ null, %bb.e ], [ %.lcssa14.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i
  %.09.i = phi i64 [ %i.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit ]
  %.sroa.02.07.i = phi ptr [ %.sroa.02.2.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i ], [ %i.s, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !95  ; 2 uses
  %i.ae = icmp slt i8 %i.ad, -1
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.ac, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !95  ; 2 uses
  %i.ai = icmp slt i8 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !3009

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.02.1.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.i.i ]
  %i.aj = phi i8 [ %i.ad, %.lr.ph.i ], [ %i.ah, %.lr.ph.i.i.i ]
  %i.ak = icmp eq i8 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i, !prof !90

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i: ; preds = %bb.f, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.02.2.i = phi ptr [ null, %bb.f ], [ %.sroa.02.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %i.al = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %.not.i83 = icmp eq ptr %.sroa.02.2.i, %.sink21.i
  br i1 %.not.i83, label %bb.g, label %.lr.ph.i, !llvm.loop !11601

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i
  store i64 %i.al, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.am = load i8, ptr %6, align 8, !tbaa !282, !range !26, !noundef !27
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.v

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.as = phi ptr [ %i.ar, %bb.l ], [ @.str.204, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 95, ptr noundef %i.as)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.at = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.at, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #40
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.r ], [ %i.be, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.bg = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %.pn, %bb.s ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  br label %bb.v

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #40
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0172.0202, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.o
  br i1 %.not, label %.critedge77, label %bb.d

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bp

bb.w:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.loopexit

.critedge77:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %4, align 8, !tbaa !5313  ; 3 uses
  %.pre215 = load ptr, ptr %i.n, align 8, !tbaa !5313 ; 3 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre215
  br i1 %.not4.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge77
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.noexc97, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.bt, %.noexc97 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !11602
  store ptr %5, ptr %2, align 8, !tbaa !5317, !noalias !11602
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !11605
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40
  store ptr %.sroa.01.05.i.i, ptr %1, align 8, !tbaa !5104, !alias.scope !11610, !noalias !11615
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !155, !alias.scope !11610, !noalias !11615
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE19EmplaceDecomposableclIS4_JRKSt21piecewise_construct_tSt5tupleIJRSA_EESJ_IJRKiEEEEES9_INSD_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1467") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.01.05.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %.noexc97 unwind label %bb.y

.noexc97:                                         ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !11605
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 48 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.bt, %.pre215
  br i1 %.not.i.i96, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit, label %bb.x, !llvm.loop !5331

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit: ; preds = %.noexc97
  %.pre216 = load ptr, ptr %4, align 8, !tbaa !5313
  %.pre217 = load ptr, ptr %i.n, align 8, !tbaa !5313
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit, %.critedge77
  %i.bu = phi ptr [ %.pre217, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit ], [ %.pre215, %.critedge77 ] ; 2 uses
  %i.bv = phi ptr [ %.pre216, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit.loopexit ], [ %.pre, %.critedge77 ] ; 2 uses
  %.not186203 = icmp eq ptr %i.bv, %i.bu
  br i1 %.not186203, label %.loopexit, label %.lr.ph205

.lr.ph205:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE6insertIN9__gnu_cxx17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEvT_SM_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.z:                                             ; preds = %.lr.ph205, %bb.bl
  %.sroa.0166.0204 = phi ptr [ %i.bv, %.lr.ph205 ], [ %i.ft, %bb.bl ] ; 4 uses
  %i.cb = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE4findIS4_EENSD_8iteratorERSA_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0166.0204)
          to label %.noexc109 unwind label %bb.ae ; 2 uses

.noexc109:                                        ; preds = %bb.z
  %i.cc = extractvalue { ptr, ptr } %i.cb, 0      ; 3 uses
  %i.cd = extractvalue { ptr, ptr } %i.cb, 1
  %.not.i98 = icmp eq ptr %i.cc, null
  br i1 %.not.i98, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110.thread, label %.preheader.preheader.i99

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110.thread: ; preds = %.noexc109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ad

.preheader.preheader.i99:                         ; preds = %.noexc109
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !95, !noalias !11618 ; 2 uses
  %i.cg = icmp slt i8 %i.cf, -1
  br i1 %i.cg, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100

.lr.ph.i.i.i.i108:                                ; preds = %.preheader.preheader.i99, %.lr.ph.i.i.i.i108
  %i.ch = phi ptr [ %i.ci, %.lr.ph.i.i.i.i108 ], [ %i.ce, %.preheader.preheader.i99 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !95, !noalias !11618 ; 2 uses
  %i.ck = icmp slt i8 %i.cj, -1
  br i1 %i.ck, label %.lr.ph.i.i.i.i108, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100, !llvm.loop !3009

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100: ; preds = %.lr.ph.i.i.i.i108, %.preheader.preheader.i99
  %.lcssa14.i.i102 = phi ptr [ %i.ce, %.preheader.preheader.i99 ], [ %i.ci, %.lr.ph.i.i.i.i108 ]
  %i.cl = phi i8 [ %i.cf, %.preheader.preheader.i99 ], [ %i.cj, %.lr.ph.i.i.i.i108 ]
  %i.cm = icmp eq i8 %i.cl, -1
  br i1 %i.cm, label %bb.aa, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110, !prof !90

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110: ; preds = %bb.aa, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100
  %.sink21.i104 = phi ptr [ null, %bb.aa ], [ %.lcssa14.i.i102, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 1, ptr %i.c, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i117
  %.09.i113 = phi i64 [ %i.cw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i117 ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110 ] ; 2 uses
  %.sroa.02.07.i114 = phi ptr [ %.sroa.02.2.i118, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i117 ], [ %i.cc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i114, i64 1 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !95  ; 2 uses
  %i.cp = icmp slt i8 %i.co, -1
  br i1 %i.cp, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115

.lr.ph.i.i.i121:                                  ; preds = %.lr.ph.i112, %.lr.ph.i.i.i121
  %i.cq = phi ptr [ %i.cr, %.lr.ph.i.i.i121 ], [ %i.cn, %.lr.ph.i112 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !95  ; 2 uses
  %i.ct = icmp slt i8 %i.cs, -1
  br i1 %i.ct, label %.lr.ph.i.i.i121, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115, !llvm.loop !3009

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115: ; preds = %.lr.ph.i.i.i121, %.lr.ph.i112
  %.sroa.02.1.i116 = phi ptr [ %i.cn, %.lr.ph.i112 ], [ %i.cr, %.lr.ph.i.i.i121 ]
  %i.cu = phi i8 [ %i.co, %.lr.ph.i112 ], [ %i.cs, %.lr.ph.i.i.i121 ]
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.ab, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i117, !prof !90

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i117

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i117: ; preds = %bb.ab, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  %.sroa.02.2.i118 = phi ptr [ null, %bb.ab ], [ %.sroa.02.1.i116, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ] ; 2 uses
  %i.cw = add nuw nsw i64 %.09.i113, 1            ; 2 uses
  %.not.i119 = icmp eq ptr %.sroa.02.2.i118, %.sink21.i104
  br i1 %.not.i119, label %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_17NonStandardLayoutEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit, label %.lr.ph.i112, !llvm.loop !11601

_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_17NonStandardLayoutEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE8iteratorppEv.exit.i117
  store i64 %i.cw, ptr %i.d, align 8, !tbaa !34
  %i.cx = icmp eq i64 %.09.i113, 0
  br i1 %i.cx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_17NonStandardLayoutEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.af

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINS1_17NonStandardLayoutEiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS4_iEEEEE11equal_rangeIS4_EES9_INSD_8iteratorESF_ERSA_.exit110.thread, %_ZSt8distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINS2_17NonStandardLayoutEiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKS5_iEEEEE8iteratorEENSt15iterator_traitsIT_E15difference_typeESH_SH_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.af

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.cy = load i8, ptr %9, align 8, !tbaa !282, !range !26, !noundef !27
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.critedge79, label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.au

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.dc = load ptr, ptr %i.bw, align 8, !tbaa !133 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i126, label %_ZNK7testing15AssertionResult15failure_messageEv.exit127, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit127

_ZNK7testing15AssertionResult15failure_messageEv.exit127: ; preds = %bb.ai, %bb.ah
  %i.de = phi ptr [ %i.dd, %bb.ai ], [ @.str.204, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 100, ptr noundef %i.de)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.df = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.df, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ak
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !65
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #40
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn62 = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.dq, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.ds = load ptr, ptr %10, align 8, !tbaa !273  ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i136, label %_ZN7testing7MessageD2Ev.exit138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.ap
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !65
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(128) %i.ds) #37, !inline_history !290
  br label %_ZN7testing7MessageD2Ev.exit138

_ZN7testing7MessageD2Ev.exit138:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, %bb.ap, %bb.am
  %.pn62.pn = phi { ptr, i32 } [ %i.dp, %bb.am ], [ %.pn62, %bb.ap ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.au

.critedge79:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  %i.dw = load ptr, ptr %i.bw, align 8, !tbaa !133 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef 32) #40
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge79, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0166.0204, i64 40 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !87, !noalias !11621
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !11621
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.av

bb.at:                                            ; preds = %bb.ar
end_hunk_6
