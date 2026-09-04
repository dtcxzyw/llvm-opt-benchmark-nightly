Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE6subsetEP19hb_subset_context_tPK8hb_map_tS8_:bb.a

bb.t:                                             ; preds = %._crit_edge
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !208 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 44 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !190
  switch i32 %i.cy, label %_ZN22hb_serialize_context_t6revertENS_10snapshot_tE.exit46 [
    i32 0, label %.critedge.i36
    i32 2, label %.critedge.i36
    i32 8, label %.critedge.i36
    i32 16, label %.critedge.i36
  ]

.critedge.i36:                                    ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 72 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !214 ; 5 uses
  %.not.i37 = icmp eq ptr %i.da, null
  br i1 %.not.i37, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i41, label %bb.u

bb.u:                                             ; preds = %.critedge.i36
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 20 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !272
  %.not.i.i38 = icmp ult i32 %.sink.i, %i.dd
  br i1 %.not.i.i38, label %bb.v, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i39

bb.v:                                             ; preds = %bb.u
  store i32 %.sink.i, ptr %i.dc, align 4, !tbaa !272
  %i.de = load i32, ptr %i.db, align 8, !tbaa !271
  %i.df = add i32 %i.de, -1
  %spec.select.i.i.i44 = icmp ult i32 %i.df, -2
  br i1 %spec.select.i.i.i44, label %bb.w, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i39

bb.w:                                             ; preds = %bb.v
  %i.dg = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i32 noundef %.sink.i, i1 noundef zeroext true) ; 0 uses
  %.pre.i45 = load ptr, ptr %i.cz, align 8, !tbaa !214
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i39

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i39: ; preds = %bb.w, %bb.v, %bb.u
  %i.dh = phi ptr [ %i.da, %bb.u ], [ %i.da, %bb.v ], [ %.pre.i45, %bb.w ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 36 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !272
  %.not.i1.i40 = icmp ult i32 %i.q, %i.dk
  br i1 %.not.i1.i40, label %bb.x, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i41

bb.x:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i39
  store i32 %i.q, ptr %i.dj, align 4, !tbaa !272
  %i.dl = load i32, ptr %i.di, align 8, !tbaa !271
  %i.dm = add i32 %i.dl, -1
  %spec.select.i.i2.i43 = icmp ult i32 %i.dm, -2
  br i1 %spec.select.i.i2.i43, label %bb.y, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i41

bb.y:                                             ; preds = %bb.x
  %i.dn = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i32 noundef %i.q, i1 noundef zeroext true) ; 0 uses
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i41

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i41: ; preds = %bb.y, %bb.x, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i39, %.critedge.i36
  store i32 0, ptr %i.cx, align 4, !tbaa !190
  %i.do = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.f, ptr %i.do, align 8, !tbaa !191
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.h, ptr %i.dp, align 8, !tbaa !192
  call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cw)
  br label %_ZN22hb_serialize_context_t6revertENS_10snapshot_tE.exit46

_ZN22hb_serialize_context_t6revertENS_10snapshot_tE.exit46: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i, %._crit_edge, %bb.t, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i41, %.critedge.i.i.i, %_ZN22hb_serialize_context_t8snapshotEv.exit
  %.025 = phi i1 [ true, %._crit_edge ], [ false, %_ZN22hb_serialize_context_t8snapshotEv.exit ], [ false, %.critedge.i.i.i ], [ false, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i41 ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %bb.t ]
  ret i1 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8OffsetToINS_4RuleINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS_7RuleSetIS3_EEJRPK8hb_map_tSE_EEEbP19hb_subset_context_tRKS7_PKT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1, !tbaa !282
  %i.a = load i16, ptr %2, align 1, !tbaa !211
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_4RuleINS1_6Layout10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208  ; 5 uses
  %i.e = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %i.d) ; 0 uses
  %i.f = load i16, ptr %2, align 1, !tbaa !211    ; 2 uses
  %i.g = icmp eq i16 %i.f, 0
  %i.h = tail call i16 @llvm.bswap.i16(i16 %i.f)
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %.0.i.i = select i1 %i.g, ptr @_hb_NullPool, ptr %i.j, !prof !112
  %i.k = tail call noundef zeroext i1 @_ZN19hb_subset_context_t9_dispatchIN2OT4RuleINS1_6Layout10SmallTypesEEEJRPK8hb_map_tS9_EEEDTcldtfp_6subsetfpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.k, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i1 noundef zeroext true) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !190
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp eq i32 %i.l, 0
  %or.cond.not.i = or i1 %i.p, %i.o
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_4RuleINS1_6Layout10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.d, !prof !252

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !214  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !272  ; 2 uses
  %i.u = add i32 %i.t, 1                          ; 5 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.e, !prof !112

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i32 noundef %i.u, i1 noundef zeroext false)
  br i1 %i.x, label %bb.f, label %bb.i, !prof !306

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.s, align 4, !tbaa !272  ; 3 uses
  %i.z = icmp ugt i32 %i.u, %i.y
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = sub nuw nsw i32 %i.u, %i.y
  %i.ab = mul i32 %i.aa, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.h, !prof !112

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !273
  %i.ae = zext nneg i32 %i.y to i64
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = zext i32 %i.ab to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 0, i64 %i.ag, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i32 %i.u, ptr %i.s, align 4, !tbaa !272
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !273
  %i.aj = zext i32 %i.t to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.aj
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i13 = phi ptr [ @_hb_CrapPool, %bb.i ], [ %i.ak, %bb.j ] ; 5 uses
  %i.al = load ptr, ptr %i.q, align 8, !tbaa !214
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !271
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !190
  %i.aq = or i32 %i.ap, 1
  store i32 %i.aq, ptr %i.m, align 4, !tbaa !190
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ar = load i32, ptr %.0.i.i13, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 8
  store i32 %i.l, ptr %i.as, align 4, !tbaa !304
  %i.at = and i32 %i.ar, -64
  %i.au = or disjoint i32 %i.at, 2
  store i32 %i.au, ptr %.0.i.i13, align 4
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !214
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !315
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !316
  store i32 2, ptr %.0.i.i13, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_4RuleINS1_6Layout10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.m:                                             ; preds = %bb.b
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %i.d)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_4RuleINS1_6Layout10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_4RuleINS1_6Layout10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.l, %bb.c, %bb.m, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.m ], [ true, %bb.c ], [ true, %bb.l ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN19hb_subset_context_t9_dispatchIN2OT4RuleINS1_6Layout10SmallTypesEEEJRPK8hb_map_tS9_EEEDTcldtfp_6subsetfpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !763
  %i.b = load i16, ptr %1, align 1, !tbaa !211    ; 2 uses
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNK2OT4RuleINS_6Layout10SmallTypesEE6subsetEP19hb_subset_context_tPK8hb_map_tS8_.exit, label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !763    ; 2 uses
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  %i.h = icmp eq ptr %i.c, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !548
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.c, %bb.b ] ; 4 uses
  %.not13.i.i = icmp eq i64 %i.g, 0
  br i1 %.not13.i.i, label %"_ZNK4$_18clIRK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERPK8hb_map_tRK4$_19TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOSH_OT0_OT1_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT4RuleINS_6Layout10SmallTypesEE6subsetEP19hb_subset_context_tPK8hb_map_tS8_.exit, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !322
  br label %bb.e

bb.e:                                             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i, %.lr.ph.split.i.i
  %.sroa.0.015.i.i = phi ptr [ %i.f, %.lr.ph.split.i.i ], [ %i.ar, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i ] ; 2 uses
  %.sroa.6.014.i.i = phi i64 [ %i.g, %.lr.ph.split.i.i ], [ %.sroa.6.8.insert.ext.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i ]
  %.val7.i.i = load i16, ptr %.sroa.0.015.i.i, align 1, !tbaa !211
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %.val7.i.i)
  %i.t = zext i16 %i.s to i32                     ; 3 uses
  %i.u = mul i32 %i.t, 506952113
  %i.v = and i32 %i.u, 1073741823
  %i.w = urem i32 %i.v, %i.r                      ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = and i32 %i.aa, 2
  %.not15.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i, label %_ZNK2OT4RuleINS_6Layout10SmallTypesEE6subsetEP19hb_subset_context_tPK8hb_map_tS8_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e
  %i.ac = load i32, ptr %i.p, align 4
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !218
  %i.ae = icmp eq i32 %i.ad, %i.t
  br i1 %i.ae, label %"_ZNK4$_22clIRPK8hb_map_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.af = load i32, ptr %i.al, align 4, !tbaa !218
  %i.ag = icmp eq i32 %i.af, %i.t
  br i1 %i.ag, label %"_ZNK4$_22clIRPK8hb_map_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.f
  %.01016.i20.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.f ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ah = add i32 %.017.i19.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.ai = add i32 %i.ah, %.01016.i20.i.i.i.i.i.i.i.i
  %i.aj = and i32 %i.ai, %i.ac                    ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = and i32 %i.an, 2
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK2OT4RuleINS_6Layout10SmallTypesEE6subsetEP19hb_subset_context_tPK8hb_map_tS8_.exit, label %bb.f, !llvm.loop !6

"_ZNK4$_22clIRPK8hb_map_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i = phi i32 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.an, %bb.f ]
  %i.ap = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i to i1
  br i1 %i.ap, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i, label %_ZNK2OT4RuleINS_6Layout10SmallTypesEE6subsetEP19hb_subset_context_tPK8hb_map_tS8_.exit

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i: ; preds = %"_ZNK4$_22clIRPK8hb_map_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i"
  %i.aq = add nsw i64 %.sroa.6.014.i.i, 4294967295
  %.sroa.6.8.insert.ext.i.i = and i64 %i.aq, 4294967295 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 2
  %.not.i.i = icmp eq i64 %.sroa.6.8.insert.ext.i.i, 0
  br i1 %.not.i.i, label %"_ZNK4$_18clIRK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERPK8hb_map_tRK4$_19TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOSH_OT0_OT1_.exit.i", label %bb.e, !llvm.loop !3719

"_ZNK4$_18clIRK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERPK8hb_map_tRK4$_19TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOSH_OT0_OT1_.exit.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !208
  %i.au = tail call noundef zeroext i1 @_ZNK2OT4RuleINS_6Layout10SmallTypesEE9serializeEP22hb_serialize_context_tPK8hb_map_tS8_(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef %i.at, ptr noundef %i.m, ptr noundef %i.a)
  br label %_ZNK2OT4RuleINS_6Layout10SmallTypesEE6subsetEP19hb_subset_context_tPK8hb_map_tS8_.exit

_ZNK2OT4RuleINS_6Layout10SmallTypesEE6subsetEP19hb_subset_context_tPK8hb_map_tS8_.exit: ; preds = %bb.e, %"_ZNK4$_22clIRPK8hb_map_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i", %.lr.ph.i.i.i.i.i.i.i.i, %bb.a, %.lr.ph.i.i, %"_ZNK4$_18clIRK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERPK8hb_map_tRK4$_19TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOSH_OT0_OT1_.exit.i"
  %.1.i = phi i1 [ false, %bb.a ], [ %i.au, %"_ZNK4$_18clIRK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERPK8hb_map_tRK4$_19TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOSH_OT0_OT1_.exit.i" ], [ false, %.lr.ph.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i ], [ false, %"_ZNK4$_22clIRPK8hb_map_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i" ], [ false, %bb.e ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4RuleINS_6Layout10SmallTypesEE9serializeEP22hb_serialize_context_tPK8hb_map_tS8_(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !190
  %.not11.i.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !219

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.e
  %i.j = icmp slt i64 %i.i, 4
  br i1 %i.j, label %select.unfold.sink.split, label %_ZL9hb_memsetPvij.exit.i.i.i, !prof !112

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.b
  store i32 0, ptr %i.b, align 1
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !191 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 4
  store ptr %i.k, ptr %i.a, align 8, !tbaa !191
  %i.l = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.l, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT4RuleINS1_6Layout10SmallTypesEEEEEPT_S7_.exit, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT4RuleINS1_6Layout10SmallTypesEEEEEPT_S7_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.m = load i16, ptr %0, align 1, !tbaa !282
  store i16 %i.m, ptr %i.b, align 1, !tbaa !282
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.o = load i16, ptr %0, align 1, !tbaa !211    ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1                  ; 2 uses
  %.sroa.2.8.insert.ext.i.i = add nuw nsw i64 %i.r, 8589934590
  %.idx = and i64 %.sroa.2.8.insert.ext.i.i, 8589934590 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not2050 = icmp samesign eq i64 %.idx, 0
  br i1 %.not2050, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT4RuleINS1_6Layout10SmallTypesEEEEEPT_S7_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN22hb_serialize_context_t4copyIN2OT7NumTypeILb1EtLj2EEEJEEEPT_RKS4_DpOT0_.exit
  %.pre = load i16, ptr %0, align 1, !tbaa !211   ; 2 uses
  %.pre55 = tail call noundef i16 @llvm.bswap.i16(i16 %.pre)
  %.pre56 = zext i16 %.pre55 to i64
  %.pre58 = shl nuw nsw i64 %.pre56, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN22hb_serialize_context_t10extend_minIN2OT4RuleINS1_6Layout10SmallTypesEEEEEPT_S7_.exit
  %.pre-phi59 = phi i64 [ %.pre58, %._crit_edge.loopexit ], [ %i.r, %_ZN22hb_serialize_context_t10extend_minIN2OT4RuleINS1_6Layout10SmallTypesEEEEEPT_S7_.exit ]
  %i.w = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %_ZN22hb_serialize_context_t10extend_minIN2OT4RuleINS1_6Layout10SmallTypesEEEEEPT_S7_.exit ]
  %.not21 = icmp eq i16 %i.w, 0
  %i.x = add nuw nsw i64 %.pre-phi59, 4294967294
  %i.y = and i64 %i.x, 4294967294
  %i.z = select i1 %.not21, i64 0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !211
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %.sroa.2.8.insert.ext.i.i31 = zext i16 %i.ad to i64
  %i.ae = tail call fastcc noundef i32 @_ZN2OTL28serialize_lookuprecord_arrayEP22hb_serialize_context_t10hb_array_tIKNS_12LookupRecordEEPK8hb_map_t(ptr noundef nonnull %1, ptr nonnull %i.aa, i64 %.sroa.2.8.insert.ext.i.i31, ptr noundef %3) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ag = trunc i32 %i.ae to i16
  %i.ah = tail call i16 @llvm.bswap.i16(i16 %i.ag)
  store i16 %i.ah, ptr %i.af, align 1, !tbaa !282
  %.not.i.i33 = icmp ult i32 %i.ae, 65536
  br i1 %.not.i.i33, label %select.unfold, label %bb.h

bb.c:                                             ; preds = %.lr.ph, %_ZN22hb_serialize_context_t4copyIN2OT7NumTypeILb1EtLj2EEEJEEEPT_RKS4_DpOT0_.exit
  %.01951 = phi ptr [ %i.n, %.lr.ph ], [ %i.bx, %_ZN22hb_serialize_context_t4copyIN2OT7NumTypeILb1EtLj2EEEJEEEPT_RKS4_DpOT0_.exit ] ; 2 uses
  %i.ai = load i16, ptr %.01951, align 1, !tbaa !282
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32                   ; 3 uses
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !288 ; 4 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = mul i32 %i.ak, 506952113
  %i.an = and i32 %i.am, 1073741823
  %i.ao = load i32, ptr %i.u, align 8, !tbaa !322
  %i.ap = urem i32 %i.an, %i.ao                   ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = and i32 %i.at, 2
  %.not15.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.av = load i32, ptr %i.v, align 4
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !218
  %i.ax = icmp eq i32 %i.aw, %i.ak
  br i1 %i.ax, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ay = load i32, ptr %i.bi, align 4, !tbaa !218
  %i.az = icmp eq i32 %i.ay, %i.ak
  br i1 %i.az, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %bb.e, %.lr.ph.i.i.i
  %.lcssa10.i.i = phi i32 [ %i.at, %.lr.ph.i.i.i ], [ %i.bk, %bb.e ]
  %i.ba = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ %i.bh, %bb.e ]
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.ba
  %i.bc = trunc i32 %.lcssa10.i.i to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %spec.select.i.i = select i1 %i.bc, ptr %i.bd, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i13.i.i = phi i32 [ %i.bg, %bb.e ], [ %i.ap, %.lr.ph.i.i.i ]
  %.017.i12.i.i = phi i32 [ %i.be, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.be = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.bf = add i32 %i.be, %.01016.i13.i.i
  %i.bg = and i32 %i.bf, %i.av                    ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = and i32 %i.bk, 2
  %.not.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.e, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit:          ; preds = %.lr.ph.i.i, %bb.c, %bb.d, %._crit_edge.i.i
  %.0.i = phi ptr [ @minus_1, %bb.c ], [ %spec.select.i.i, %._crit_edge.i.i ], [ @minus_1, %bb.d ], [ @minus_1, %.lr.ph.i.i ]
  %i.bm = load i32, ptr %.0.i, align 4, !tbaa !218
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = tail call i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !190
  %.not.i.i.i23 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i23, label %bb.f, label %_ZN22hb_serialize_context_t4copyIN2OT7NumTypeILb1EtLj2EEEJEEEPT_RKS4_DpOT0_.exit, !prof !219

bb.f:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !192
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !191 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp slt i64 %i.bu, 2
  br i1 %i.bv, label %.critedge.i.i.i26, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i, !prof !112

.critedge.i.i.i26:                                ; preds = %bb.f
  store i32 4, ptr %i.c, align 4, !tbaa !190
  br label %_ZN22hb_serialize_context_t4copyIN2OT7NumTypeILb1EtLj2EEEJEEEPT_RKS4_DpOT0_.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i: ; preds = %bb.f
  store i16 0, ptr %i.br, align 1
  %.pre.i.i.i25 = load ptr, ptr %i.a, align 8, !tbaa !191 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i25, i64 2
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !191
  %.not.i.i = icmp eq ptr %.pre.i.i.i25, null
  br i1 %.not.i.i, label %_ZN22hb_serialize_context_t4copyIN2OT7NumTypeILb1EtLj2EEEJEEEPT_RKS4_DpOT0_.exit, label %bb.g, !prof !220

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i
  store i16 %i.bo, ptr %.pre.i.i.i25, align 1, !tbaa !282
  br label %_ZN22hb_serialize_context_t4copyIN2OT7NumTypeILb1EtLj2EEEJEEEPT_RKS4_DpOT0_.exit

_ZN22hb_serialize_context_t4copyIN2OT7NumTypeILb1EtLj2EEEJEEEPT_RKS4_DpOT0_.exit: ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, %.critedge.i.i.i26, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.01951, i64 2 ; 2 uses
  %.not20 = icmp eq ptr %i.bx, %i.s
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.c

bb.h:                                             ; preds = %._crit_edge
  %i.by = load i32, ptr %i.c, align 4, !tbaa !190
  %i.bz = or i32 %i.by, 8
  br label %select.unfold.sink.split

select.unfold.sink.split:                         ; preds = %bb.b, %bb.h
  %.sink = phi i32 [ %i.bz, %bb.h ], [ 4, %bb.b ]
  store i32 %.sink, ptr %i.c, align 4, !tbaa !190
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.sink.split, %._crit_edge, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.a
  %.0 = phi i1 [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %bb.a ], [ true, %._crit_edge ], [ false, %select.unfold.sink.split ]
  ret i1 %.0
}

end_hunk_0
