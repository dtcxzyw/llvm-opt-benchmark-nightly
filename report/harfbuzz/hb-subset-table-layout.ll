Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJR13hb_map_iter_tI13hb_zip_iter_tIS8_IN23hb_bit_set_invertible_t6iter_tERK8hb_map_tL24hb_function_sortedness_t1ELPv0EE16hb_repeat_iter_tI10hb_array_tIKS5_EEERK3$_6LSF_1ELSG_0EEEEEbP22hb_serialize_context_tDpOT_":bb.a

bb.cj:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.nc = load i32, ptr %i.j, align 4, !tbaa !190
  %i.nd = or i32 %i.nc, 1
  store i32 %i.nd, ptr %i.j, align 4, !tbaa !190
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ne = load i32, ptr %.0.i.i, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.lz, ptr %i.nf, align 4, !tbaa !304
  %i.ng = and i32 %i.ne, -64
  %i.nh = or disjoint i32 %i.ng, 2
  store i32 %i.nh, ptr %.0.i.i, align 4
  %i.ni = load ptr, ptr %i.md, align 8, !tbaa !214
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !315
  %i.nk = ptrtoint ptr %0 to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = trunc i64 %i.nm to i32
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !316
  store i32 2, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tIS4_IN23hb_bit_set_invertible_t6iter_tERK8hb_map_tL24hb_function_sortedness_t1ELPv0EE16hb_repeat_iter_tI10hb_array_tIKNS_7NumTypeILb1EtLj2EEEEEERK3$_6LSB_1ELSC_0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSR_18is_sorted_iteratorEvE4typeELSC_0EEEbP22hb_serialize_context_tSR_.exit.thread": ; preds = %bb.q, %bb.a, %_ZL9hb_memsetPvij.exit.i.i.i.i, %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tIS4_IN23hb_bit_set_invertible_t6iter_tERK8hb_map_tL24hb_function_sortedness_t1ELPv0EE16hb_repeat_iter_tI10hb_array_tIKNS_7NumTypeILb1EtLj2EEEEEERK3$_6LSB_1ELSC_0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSR_18is_sorted_iteratorEvE4typeELSC_0EEEbP22hb_serialize_context_tSR_.exit.thread.sink.split", %"_ZN2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tIS6_IN23hb_bit_set_invertible_t6iter_tERK8hb_map_tL24hb_function_sortedness_t1ELPv0EE16hb_repeat_iter_tI10hb_array_tIKNS_7NumTypeILb1EtLj2EEEEEERK3$_6LSD_1ELSE_0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrST_18is_sorted_iteratorEvE4typeELSE_0EEEbP22hb_serialize_context_tST_.exit.i.thread", %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tIS4_IN23hb_bit_set_invertible_t6iter_tERK8hb_map_tL24hb_function_sortedness_t1ELPv0EE16hb_repeat_iter_tI10hb_array_tIKNS_7NumTypeILb1EtLj2EEEEEERK3$_6LSB_1ELSC_0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSR_18is_sorted_iteratorEvE4typeELSC_0EEEbP22hb_serialize_context_tSR_.exit.thread15"
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.ck, %bb.cb, %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tIS4_IN23hb_bit_set_invertible_t6iter_tERK8hb_map_tL24hb_function_sortedness_t1ELPv0EE16hb_repeat_iter_tI10hb_array_tIKNS_7NumTypeILb1EtLj2EEEEEERK3$_6LSB_1ELSC_0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSR_18is_sorted_iteratorEvE4typeELSC_0EEEbP22hb_serialize_context_tSR_.exit.thread"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat11copy_deviceEP22hb_serialize_context_tPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEEPK12hb_hashmap_tIj9hb_pair_tIjiELb0EEjNS2_5FlagsE(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %6, %5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !190
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit, !prof !219

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.critedge.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i, !prof !112

.critedge.i.i.i:                                  ; preds = %bb.c
  store i32 4, ptr %i.b, align 4, !tbaa !190
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i: ; preds = %bb.c
  store i16 0, ptr %i.g, align 1
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !191 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 2
  store ptr %i.l, ptr %i.f, align 8, !tbaa !191
  %.not.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit, label %bb.d, !prof !220

bb.d:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i
  %i.m = load i16, ptr %3, align 1, !tbaa !282    ; 2 uses
  store i16 %i.m, ptr %.pre.i.i.i, align 1, !tbaa !282
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 0, ptr %.pre.i.i.i, align 1, !tbaa !282
  %i.o = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.p = load i16, ptr %3, align 1, !tbaa !211    ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %.0.i.i18 = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !112
  %i.u = tail call noundef ptr @_ZNK2OT6Device4copyEP22hb_serialize_context_tPK12hb_hashmap_tIj9hb_pair_tIjiELb0EE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i18, ptr noundef nonnull %1, ptr noundef %4)
  %.not17 = icmp eq ptr %i.u, null
  br i1 %.not17, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.w = load i32, ptr %i.b, align 4, !tbaa !190
  %i.x = icmp ne i32 %i.w, 0
  %i.y = icmp eq i32 %i.v, 0
  %or.cond.not.i = or i1 %i.y, %i.x
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit, label %bb.g, !prof !252

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !214 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !272 ; 2 uses
  %i.ad = add i32 %i.ac, 1                        ; 5 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.h, !prof !112

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i32 noundef %i.ad, i1 noundef zeroext false)
  br i1 %i.ag, label %bb.i, label %bb.l, !prof !306

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !272 ; 3 uses
  %i.ai = icmp ugt i32 %i.ad, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aj = sub nuw nsw i32 %i.ad, %i.ah
  %i.ak = mul i32 %i.aj, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.k, !prof !112

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !273
  %i.an = zext nneg i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.an
  %i.ap = zext i32 %i.ak to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.ap, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !272
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !273
  %i.as = zext i32 %i.ac to i64
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %i.as
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i19 = phi ptr [ @_hb_CrapPool, %bb.l ], [ %i.at, %bb.m ] ; 5 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !214
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !271
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !190
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %i.b, align 4, !tbaa !190
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ba = load i32, ptr %.0.i.i19, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i19, i64 8
  store i32 %i.v, ptr %i.bb, align 4, !tbaa !304
  %i.bc = and i32 %i.ba, -64
  %i.bd = or disjoint i32 %i.bc, 2
  store i32 %i.bd, ptr %.0.i.i19, align 4
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !214
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !315
  %i.bg = ptrtoint ptr %.pre.i.i.i to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i19, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !316
  store i32 2, ptr %.0.i.i19, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit

bb.p:                                             ; preds = %bb.e
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT7NumTypeILb1EtLj2EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.b, %.critedge.i.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i, %bb.o, %bb.f, %bb.p, %bb.d, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.o ], [ true, %bb.d ], [ false, %bb.p ], [ true, %bb.f ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i ], [ false, %.critedge.i.i.i ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_t(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::Layout::GPOS_impl::ValueFormat", align 2 ; 4 uses
  %3 = alloca %struct.hb_map_iter_t.1487, align 8 ; 17 uses
  %4 = alloca %struct.hb_filter_iter_t.1480, align 8 ; 12 uses
  %5 = alloca %struct.hb_map_iter_t.1489, align 8 ; 15 uses
  %6 = alloca %struct.hb_zip_iter_t.673, align 8  ; 6 uses
  %7 = alloca %struct.hb_map_iter_t.1478, align 8 ; 7 uses
  %8 = alloca %struct.hb_map_iter_t.1487, align 8 ; 18 uses
  %9 = alloca %"struct.OT::Layout::GPOS_impl::ValueFormat", align 2 ; 4 uses
  %10 = alloca %struct.hb_map_iter_t.1489, align 8 ; 15 uses
  %11 = alloca %struct.hb_zip_iter_t.673, align 8 ; 6 uses
  %12 = alloca %struct.hb_filter_iter_t.1480, align 8 ; 7 uses
  %13 = alloca %struct.hb_map_iter_t.1478, align 8 ; 18 uses
  %14 = alloca %struct.hb_map_iter_t.1478, align 8 ; 17 uses
  %.sroa.860 = alloca <{ i32, i32, [4 x i8] }>, align 4 ; 10 uses
  %.sroa.1073 = alloca [24 x i8], align 8         ; 10 uses
  %15 = alloca %struct.hb_map_iter_t.1487, align 8 ; 15 uses
  %16 = alloca %struct.hb_map_iter_t.1487, align 8 ; 15 uses
  %17 = alloca %struct.hb_zip_iter_t.673, align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  %18 = alloca %struct.hb_array_t.569, align 8    ; 13 uses
  %19 = alloca %struct.hb_filter_iter_t.1480, align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !548  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.h = load i16, ptr %i.g, align 1, !tbaa !211
  %i.i = lshr i16 %i.h, 8
  %i.j = zext nneg i16 %i.i to i32                ; 2 uses
  %i.k = and i32 %i.j, 15
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !282
  %i.o = zext i8 %i.n to i32
  %i.p = lshr i32 %i.j, 4
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !282
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %i.t, %i.o               ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i16, ptr %i.w, align 1, !tbaa !211
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x) ; 2 uses
  %i.z = zext i16 %i.y to i32
  %i.aa = mul nuw nsw i32 %i.u, %i.z
  %.sroa.2.8.insert.ext.i.i = zext nneg i32 %i.aa to i64
  store ptr %i.v, ptr %18, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %.sroa.2.8.insert.ext.i.i, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !211 ; 2 uses
  %i.ae = icmp eq i16 %i.ad, 0
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ad)
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %.0.i.i = select i1 %i.ae, ptr @_hb_NullPool, ptr %i.ah, !prof !112 ; 6 uses
  %.sroa.2.0.insert.ext.i = zext i16 %i.y to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %i.ai = load i16, ptr %.0.i.i, align 1, !tbaa !211, !noalias !4504
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai) ; 2 uses
  switch i16 %i.aj, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4504, !srcloc !212
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4504, !srcloc !212
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !211, !noalias !4504
  %.not.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !249

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4504, !srcloc !212
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.an = load i16, ptr %i.am, align 1, !tbaa !211, !noalias !4504
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32                   ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.ak, align 1, !tbaa !211, !noalias !4504
  %i.aq = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.aq, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !220

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.ap, %bb.d ], [ 0, %bb.c ]
  %i.ar = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !211, !noalias !4504
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4504, !srcloc !212
  %.pre11.i.i.i.i.i = load i16, ptr %i.ak, align 1, !tbaa !211, !noalias !4504
  %i.at = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.au = load i16, ptr %i.am, align 1, !tbaa !211, !noalias !4504
  %i.av = tail call noundef i16 @llvm.bswap.i16(i16 %i.au) ; 2 uses
  br i1 %i.at, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !220

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4504, !srcloc !212
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.ap, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.ap, %bb.e ]
  %i.aw = phi i16 [ %i.as, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.av, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.av, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.am, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !211, !noalias !4504
  %i.az = tail call noundef i16 @llvm.bswap.i16(i16 %i.ay)
  %i.ba = icmp ugt i16 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit", !prof !112

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.bb = load i16, ptr %i.ak, align 1, !tbaa !211, !noalias !4504
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.bd, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.be = zext i16 %i.aj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !4505
  store i32 %i.be, ptr %17, align 8, !noalias !4505
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 0, ptr %.sroa.433.0..sroa_idx, align 4, !noalias !4505
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.534.0..sroa_idx, align 8, !noalias !4505
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.635.0..sroa_idx, align 8, !noalias !4505
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %.sroa.736.0..sroa_idx, align 4, !noalias !4505
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.837.0..sroa_idx, align 8, !noalias !4505
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 28
  store i32 0, ptr %.sroa.938.0..sroa_idx, align 4, !noalias !4505
  %.sroa.1039.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i64 %.sroa.2.0.insert.shift.i, ptr %.sroa.1039.0..sroa_idx, align 8, !noalias !4505
  %.sroa.1140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i32 1, ptr %.sroa.1140.0..sroa_idx, align 8, !noalias !4505
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEC2ERKS8_SB_SE_"(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull readonly align 8 dereferenceable(44) %17, ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 1 dereferenceable(1) @_ZL8hb_first)
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !4505
  %.sroa.042.0.copyload44 = load i32, ptr %19, align 8 ; 17 uses
  %.sroa.645.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %.sroa.645.0.copyload49 = load i32, ptr %.sroa.645.0..sroa_idx48, align 4 ; 9 uses
  %.sroa.650.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.650.0.copyload54 = load ptr, ptr %.sroa.650.0..sroa_idx53, align 8 ; 11 uses
  %.sroa.755.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.sroa.755.0.copyload59 = load i32, ptr %.sroa.755.0..sroa_idx58, align 8 ; 15 uses
  %.sroa.860.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %19, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860.0..sroa_idx62, i64 12, i1 false)
  %.sroa.863.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %.sroa.863.0.copyload67 = load i32, ptr %.sroa.863.0..sroa_idx66, align 8 ; 16 uses
  %.sroa.968.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %.sroa.968.0.copyload72 = load i32, ptr %.sroa.968.0..sroa_idx71, align 4 ; 11 uses
  %.sroa.1073.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073.0..sroa_idx75, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !207 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 2356
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !283
  %.not = icmp eq i32 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !863
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 97
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !305, !range !213, !noundef !230
  %i.bo = trunc nuw i8 %i.bn to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.bp = call ptr @hb_face_reference_table(ptr noundef %i.bh, i32 noundef 1719034226) #21 ; 2 uses
  %i.bq = call ptr @hb_blob_get_empty() #21
  %.not.i = icmp eq ptr %i.bp, %i.bq
  call void @hb_blob_destroy(ptr noundef %i.bp) #21
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 2192
  store i32 %.sroa.042.0.copyload44, ptr %15, align 8
  %.sroa.5108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.5108.0..sroa_idx109, align 4
  %.sroa.6111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.6111.0..sroa_idx112, align 8
  %.sroa.7114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.7114.0..sroa_idx115, align 8
  %.sroa.8117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %15, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8117.0..sroa_idx118, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.9119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.9119.0..sroa_idx120, align 8
  %.sroa.10122.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.10122.0..sroa_idx123, align 4
  %.sroa.11125.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11125.0..sroa_idx126, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  %.sroa.12127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store ptr %i.f, ptr %.sroa.12127.0..sroa_idx128, align 8
  %.sroa.13.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %15, i64 72
  store ptr %18, ptr %.sroa.13.0..sroa_idx130, align 8
  %.sroa.14.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %15, i64 80
  store ptr %i.a, ptr %.sroa.14.0..sroa_idx132, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 88
  store ptr @_ZL9hb_second, ptr %i.bs, align 8, !tbaa !550, !alias.scope !4506
  %i.bt = call fastcc noundef i32 @"_ZNK2OT6Layout9GPOS_impl11ValueFormat20get_effective_formatI13hb_map_iter_tIS4_I16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EERK3$_7LST_0ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS10_6item_tEEE5valueEvE4typeELSJ_0EEEjS10_bbPKNS1_9ValueBaseEPK12hb_hashmap_tIjSO_IjiELb0EE"(ptr noundef nonnull align 1 dereferenceable(2) %i.g, ptr noundef nonnull byval(%struct.hb_map_iter_t.1487) align 8 %15, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull %i.br)
  br label %"_ZNK2OT6Layout9GPOS_impl16SinglePosFormat224compute_effective_formatI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS2_6subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSV_6item_tEEE5valueEvE4typeELSJ_0EEEjPK9hb_face_tSV_bbbPK12hb_hashmap_tIjSN_IjiELb0EE.exit"

bb.h:                                             ; preds = %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"
  %i.bu = trunc i32 %i.bl to i1
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = xor i1 %i.bo, true
  %narrow.i = or i1 %.not.i, %i.bv
  store i32 %.sroa.042.0.copyload44, ptr %16, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.5108.0..sroa_idx, align 4
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.6111.0..sroa_idx, align 8
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.7114.0..sroa_idx, align 8
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8117.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.9119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.9119.0..sroa_idx, align 8
  %.sroa.10122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.10122.0..sroa_idx, align 4
  %.sroa.11125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11125.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  %.sroa.12127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store ptr %i.f, ptr %.sroa.12127.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 72
  store ptr %18, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 80
  store ptr %i.a, ptr %.sroa.14.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 88
  store ptr @_ZL9hb_second, ptr %i.bw, align 8, !tbaa !550, !alias.scope !4507
  %i.bx = call fastcc noundef i32 @"_ZNK2OT6Layout9GPOS_impl11ValueFormat20get_effective_formatI13hb_map_iter_tIS4_I16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EERK3$_7LST_0ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS10_6item_tEEE5valueEvE4typeELSJ_0EEEjS10_bbPKNS1_9ValueBaseEPK12hb_hashmap_tIjSO_IjiELb0EE"(ptr noundef nonnull align 1 dereferenceable(2) %i.g, ptr noundef nonnull byval(%struct.hb_map_iter_t.1487) align 8 %16, i1 noundef zeroext %narrow.i, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef null)
  br label %"_ZNK2OT6Layout9GPOS_impl16SinglePosFormat224compute_effective_formatI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS2_6subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSV_6item_tEEE5valueEvE4typeELSJ_0EEEjPK9hb_face_tSV_bbbPK12hb_hashmap_tIjSN_IjiELb0EE.exit"

bb.j:                                             ; preds = %bb.h
  %i.by = load i16, ptr %i.g, align 1, !tbaa !211
  %i.bz = call noundef i16 @llvm.bswap.i16(i16 %i.by)
  %i.ca = zext i16 %i.bz to i32
  br label %"_ZNK2OT6Layout9GPOS_impl16SinglePosFormat224compute_effective_formatI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS2_6subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSV_6item_tEEE5valueEvE4typeELSJ_0EEEjPK9hb_face_tSV_bbbPK12hb_hashmap_tIjSN_IjiELb0EE.exit"

"_ZNK2OT6Layout9GPOS_impl16SinglePosFormat224compute_effective_formatI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS2_6subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSV_6item_tEEE5valueEvE4typeELSJ_0EEEjPK9hb_face_tSV_bbbPK12hb_hashmap_tIjSN_IjiELb0EE.exit": ; preds = %bb.g, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.bt, %bb.g ], [ %i.bx, %bb.i ], [ %i.ca, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  switch i32 %.sroa.042.0.copyload44, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEEcvbEv.exit" [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %"_ZNK2OT6Layout9GPOS_impl16SinglePosFormat224compute_effective_formatI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS2_6subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSV_6item_tEEE5valueEvE4typeELSJ_0EEEjPK9hb_face_tSV_bbbPK12hb_hashmap_tIjSN_IjiELb0EE.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %"_ZNK2OT6Layout9GPOS_impl16SinglePosFormat224compute_effective_formatI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS2_6subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSV_6item_tEEE5valueEvE4typeELSJ_0EEEjPK9hb_face_tSV_bbbPK12hb_hashmap_tIjSN_IjiELb0EE.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.650.0.copyload54, i64 2
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !211
  %i.cd = call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  %i.ce = zext i16 %i.cd to i32
  %i.cf = icmp ult i32 %.sroa.755.0.copyload59, %i.ce
  %i.cg = icmp ne i32 %.sroa.863.0.copyload67, %.sroa.968.0.copyload72
  %spec.select = select i1 %i.cf, i1 %i.cg, i1 false
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEEcvbEv.exit"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEEcvbEv.exit": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i, %"_ZNK2OT6Layout9GPOS_impl16SinglePosFormat224compute_effective_formatI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS2_6subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSV_6item_tEEE5valueEvE4typeELSJ_0EEEjPK9hb_face_tSV_bbbPK12hb_hashmap_tIjSN_IjiELb0EE.exit"
  %i.ch = phi i1 [ %spec.select, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i ], [ false, %"_ZNK2OT6Layout9GPOS_impl16SinglePosFormat224compute_effective_formatI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS2_6subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSJ_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSV_6item_tEEE5valueEvE4typeELSJ_0EEEjPK9hb_face_tSV_bbbPK12hb_hashmap_tIjSN_IjiELb0EE.exit" ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !208 ; 7 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2192 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 9 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !191 ; 10 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 44 ; 8 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !190
  %.not11.i.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not11.i.i.i.i.i, label %bb.m, label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit", !prof !219

bb.m:                                             ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEEcvbEv.exit"
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 2 ; 2 uses
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !192
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.cr
  %i.cw = icmp slt i64 %i.cv, 2
  br i1 %i.cw, label %.critedge.i.i.i.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i, !prof !112

.critedge.i.i.i.i.i.i:                            ; preds = %bb.m
  store i32 4, ptr %i.co, align 4, !tbaa !190
  br label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit"

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i:               ; preds = %bb.m
  store i16 0, ptr %i.cn, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !tbaa !191 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 2
  store ptr %i.cx, ptr %i.cm, align 8, !tbaa !191
  %i.cy = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %i.cy, label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit", label %_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit.i.i, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i
  %i.cz = trunc i32 %.0.i to i16
  %i.da = call i16 @llvm.bswap.i16(i16 %i.cz)     ; 2 uses
  switch i32 %.sroa.042.0.copyload44, label %.thread.i.i [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.650.0.copyload54, i64 2 ; 3 uses
  %i.dc = load i16, ptr %i.db, align 1, !tbaa !211
  %i.dd = call noundef i16 @llvm.bswap.i16(i16 %i.dc)
  %i.de = zext i16 %i.dd to i32
  %i.df = icmp uge i32 %.sroa.755.0.copyload59, %i.de
  %.not.i.i = icmp eq i32 %.sroa.863.0.copyload67, %.sroa.968.0.copyload72
  %or.cond.i = select i1 %i.df, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 %.sroa.042.0.copyload44, ptr %14, align 8
  %.sroa.11.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.11.0..sroa_idx13.i, align 4
  %.sroa.1125.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.1125.0..sroa_idx28.i, align 8
  %.sroa.12.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.12.0..sroa_idx42.i, align 8
  %.sroa.13.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %14, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx55.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.1361.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.1361.0..sroa_idx64.i, align 8
  %.sroa.14.0..sroa_idx78.i = getelementptr inbounds nuw i8, ptr %14, i64 36 ; 2 uses
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.14.0..sroa_idx78.i, align 4
  %.sroa.15.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx91.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  %.sroa.26.40..sroa.15.0..sroa_idx91.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr %i.f, ptr %.sroa.26.40..sroa.15.0..sroa_idx91.i.sroa_idx, align 8
  %.sroa.27.40..sroa.15.0..sroa_idx91.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  store ptr %18, ptr %.sroa.27.40..sroa.15.0..sroa_idx91.i.sroa_idx, align 8
  %.sroa.28.40..sroa.15.0..sroa_idx91.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  store ptr %i.a, ptr %.sroa.28.40..sroa.15.0..sroa_idx91.i.sroa_idx, align 8
  %i.dg = icmp eq i32 %.sroa.042.0.copyload44, 1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4508
  br i1 %i.dg, label %bb.q, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i"

bb.q:                                             ; preds = %bb.p
  %i.dh = load i16, ptr %i.db, align 1, !tbaa !211, !noalias !4508
  %i.di = call noundef i16 @llvm.bswap.i16(i16 %i.dh)
  %i.dj = zext i16 %i.di to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.755.0.copyload59, %i.dj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i", !prof !219

bb.r:                                             ; preds = %bb.q
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4508, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i": ; preds = %bb.r, %bb.q, %bb.p
  %i.dk = load ptr, ptr %.sroa.27.40..sroa.15.0..sroa_idx91.i.sroa_idx, align 8, !tbaa !866, !noalias !4509, !nonnull !230, !align !592 ; 2 uses
  %i.dl = load ptr, ptr %.sroa.28.40..sroa.15.0..sroa_idx91.i.sroa_idx, align 8, !tbaa !867, !noalias !4509, !nonnull !230, !align !661
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !218, !noalias !4509 ; 2 uses
  %i.dn = mul i32 %i.dm, %.sroa.863.0.copyload67  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !4510, !noalias !4509
  %storemerge.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.dp, i32 %i.dn)
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i.i.i.i.i.i.i, i32 %i.dm) ; 2 uses
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !870, !noalias !4509
  %i.dr = zext i32 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  %.sroa.3.8.insert.ext.i.i.i.i.i.i.i.i.i.i = zext i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store i32 %.sroa.042.0.copyload44, ptr %13, align 8
  %.sroa.11.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.11.0..sroa_idx15.i, align 4
  %.sroa.1125.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.1125.0..sroa_idx30.i, align 8
  %.sroa.12.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.12.0..sroa_idx44.i, align 8
  %.sroa.13.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %13, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx56.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.1361.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.1361.0..sroa_idx66.i, align 8
  %.sroa.14.0..sroa_idx80.i = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.14.0..sroa_idx80.i, align 4
  %.sroa.15.0..sroa_idx92.i = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx92.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  %.sroa.26.40..sroa.15.0..sroa_idx92.i.sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 64
  store ptr %i.f, ptr %.sroa.26.40..sroa.15.0..sroa_idx92.i.sroa_idx, align 8
  %.sroa.27.40..sroa.15.0..sroa_idx92.i.sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  store ptr %18, ptr %.sroa.27.40..sroa.15.0..sroa_idx92.i.sroa_idx, align 8
  %.sroa.28.40..sroa.15.0..sroa_idx92.i.sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  store ptr %i.a, ptr %.sroa.28.40..sroa.15.0..sroa_idx92.i.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21, !noalias !4511
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21, !noalias !4512
  call void @llvm.experimental.noalias.scope.decl(metadata !4513)
  call void @llvm.experimental.noalias.scope.decl(metadata !4514)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %11, ptr noundef nonnull align 8 dereferenceable(88) %14), !noalias !4512
  %i.dt = load i32, ptr %.sroa.14.0..sroa_idx78.i, align 4, !tbaa !693, !noalias !4515
  %i.du = load i32, ptr %.sroa.15.0..sroa_idx91.i, align 8, !tbaa !524, !noalias !4515
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.dt to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dv, align 8, !alias.scope !4516, !noalias !4512
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %i.du, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4516, !noalias !4512
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !553, !noalias !4512
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 56
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !tbaa !737, !noalias !4512
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEC2ERKS8_SB_SE_"(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(44) %11, ptr noundef nonnull align 8 dereferenceable(72) %i.dx, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i.i.i.i), !noalias !4511
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !4512
  %.sroa.020.0.copyload.i.i.i = load i32, ptr %12, align 8 ; 2 uses
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.422.0.copyload.i.i.i = load i32, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.625.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.625.0.copyload.i.i.i = load i32, ptr %.sroa.625.0..sroa_idx.i.i.i, align 8
  %.sroa.727.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.727.0.copyload.i.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21, !noalias !4511
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.sroa.3.8.insert.ext.i.i.i.i.i.i.i.i.i.i
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i"
  %i.eb = load i32, ptr %13, align 8, !tbaa !527
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.eb, %.sroa.020.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EEneERKSS_.exit.i.i.i", !prof !219

bb.t:                                             ; preds = %bb.s
  switch i32 %.sroa.020.0.copyload.i.i.i, label %bb.aa [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i
    i32 2, label %.split.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i:                               ; preds = %bb.t
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ec = load i32, ptr %.sroa.12.0..sroa_idx44.i, align 8, !tbaa !535
  %.not.i.i.i.i.i.i.i.i = icmp ne i32 %i.ec, %.sroa.422.0.copyload.i.i.i
  %i.ed = load i32, ptr %i.dz, align 8
  %i.ee = icmp ne i32 %i.ed, %.sroa.625.0.copyload.i.i.i
  %i.ef = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.ee
  br i1 %i.ef, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EEneERKSS_.exit.i.i.i", label %bb.aa

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.t
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.eg = load i32, ptr %.sroa.12.0..sroa_idx44.i, align 8, !tbaa !530
  %.not.i.i.i.i.i.i = icmp eq i32 %i.eg, %.sroa.422.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EEneERKSS_.exit.i.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EEneERKSS_.exit.i.i.i": ; preds = %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.s
  %i.eh = load i32, ptr %.sroa.1361.0..sroa_idx66.i, align 8, !tbaa !525
  %.not.i.i.i = icmp eq i32 %i.eh, %.sroa.727.0.copyload.i.i.i
  br i1 %.not.i.i.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EEneERKSS_.exit.i.i.i"
  %i.ei = load i32, ptr %13, align 8, !tbaa !527, !noalias !4517
  switch i32 %i.ei, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i" [
    i32 1, label %bb.v
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4517, !srcloc !212
  %i.ej = load ptr, ptr %.sroa.1125.0..sroa_idx30.i, align 8, !tbaa !551, !noalias !4517
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.el = load i32, ptr %.sroa.12.0..sroa_idx44.i, align 8, !tbaa !530, !noalias !4517
  %i.em = load i16, ptr %i.ek, align 1, !tbaa !211, !noalias !4517
  %i.en = call noundef i16 @llvm.bswap.i16(i16 %i.em)
  %i.eo = zext i16 %i.en to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.el, %i.eo
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i", !prof !219

bb.w:                                             ; preds = %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4517, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i"

bb.x:                                             ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4517, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i": ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.1361.0..sroa_idx66.i, align 8, !tbaa !218, !noalias !4517
  %i.ep = load ptr, ptr %.sroa.27.40..sroa.15.0..sroa_idx92.i.sroa_idx, align 8, !tbaa !866, !noalias !4518, !nonnull !230, !align !592 ; 2 uses
  %i.eq = load ptr, ptr %.sroa.28.40..sroa.15.0..sroa_idx92.i.sroa_idx, align 8, !tbaa !867, !noalias !4518, !nonnull !230, !align !661
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !218, !noalias !4518 ; 2 uses
  %i.es = mul i32 %i.er, %.val.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !4510, !noalias !4518
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.eu, i32 %i.es)
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i.i.i.i.i.i.i.i, i32 %i.er) ; 3 uses
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !870, !noalias !4518
  %i.ew = zext i32 %i.es to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.ew ; 2 uses
  %.sroa.3.8.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.idx.i.i.i
  %.not.i.i32.not.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i32.not.i.i.i, label %.critedge.i.i.i, label %_ZNK13hb_zip_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEES5_EneERKS6_.exit.i.i.i

_ZNK13hb_zip_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEES5_EneERKS6_.exit.i.i.i: ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i
  %.sroa.01.036.i.i.i = phi ptr [ %.sroa.01.1.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i ], [ %i.ex, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i" ] ; 2 uses
  %.sroa.8.035.i.i.i = phi i32 [ %.sroa.8.1.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i" ] ; 3 uses
  %.sroa.14.034.i.i.i = phi ptr [ %.sroa.14.1.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i ], [ %i.ds, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i" ] ; 3 uses
  %.sroa.18.033.i.i.i = phi i32 [ %.sroa.18.1.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i" ] ; 3 uses
  %.not.i3.i.i.i.i = icmp ne ptr %.sroa.14.034.i.i.i, %i.ea
  %i.ez = icmp ne i32 %.sroa.18.033.i.i.i, 0
  %i.fa = select i1 %.not.i3.i.i.i.i, i1 true, i1 %i.ez
  br i1 %i.fa, label %bb.y, label %.critedge.i.i.i

bb.y:                                             ; preds = %_ZNK13hb_zip_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEES5_EneERKS6_.exit.i.i.i
  %.not.i.i.i.i19.not.i.i.i = icmp eq i32 %.sroa.8.035.i.i.i, 0 ; 2 uses
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i19.not.i.i.i, ptr @_hb_NullPool, ptr %.sroa.01.036.i.i.i, !prof !112
  %.not.i.i1.i.i.not.i.i.i = icmp eq i32 %.sroa.18.033.i.i.i, 0 ; 2 uses
  %spec.select.i.i2.i.i.i.i.i = select i1 %.not.i.i1.i.i.not.i.i.i, ptr @_hb_NullPool, ptr %.sroa.14.034.i.i.i, !prof !112
  %i.fb = load i16, ptr %spec.select.i.i.i.i.i.i.i, align 1, !tbaa !211
  %i.fc = load i16, ptr %spec.select.i.i2.i.i.i.i.i, align 1, !tbaa !211
  %.not31.i.i.i = icmp eq i16 %i.fb, %i.fc
  br i1 %.not31.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i, label %bb.z

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i: ; preds = %bb.y
  %.sroa.8.1.i.i.i = call i32 @llvm.usub.sat.i32(i32 %.sroa.8.035.i.i.i, i32 1)
  %.sroa.01.1.idx.i.i.i = select i1 %.not.i.i.i.i19.not.i.i.i, i64 0, i64 2, !prof !112
  %.sroa.01.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.036.i.i.i, i64 %.sroa.01.1.idx.i.i.i ; 2 uses
  %.sroa.18.1.i.i.i = call i32 @llvm.usub.sat.i32(i32 %.sroa.18.033.i.i.i, i32 1)
  %.sroa.14.1.idx.i.i.i = select i1 %.not.i.i1.i.i.not.i.i.i, i64 0, i64 2, !prof !112
  %.sroa.14.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.034.i.i.i, i64 %.sroa.14.1.idx.i.i.i
  %.not.i.i.i.i.i21 = icmp ne ptr %.sroa.01.1.i.i.i, %i.ey
  %i.fd = icmp ugt i32 %.sroa.8.035.i.i.i, 1
  %i.fe = select i1 %.not.i.i.i.i.i21, i1 true, i1 %i.fd
  br i1 %i.fe, label %_ZNK13hb_zip_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEES5_EneERKS6_.exit.i.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i, %_ZNK13hb_zip_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEES5_EneERKS6_.exit.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i"
  %i.ff = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 8 dereferenceable(88) %13) ; 0 uses
  br label %bb.s

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.thread.i.i

bb.aa:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EEneERKSS_.exit.i.i.i", %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  store i16 256, ptr %i.cn, align 1, !tbaa !282
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.fg = load i32, ptr %i.co, align 4, !tbaa !190
  %.not11.i.i.i10.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not11.i.i.i10.i.i, label %bb.ab, label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit", !prof !219

bb.ab:                                            ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cn, i64 6 ; 2 uses
  %i.fi = load ptr, ptr %i.cm, align 8, !tbaa !191 ; 4 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 4 uses
  %i.fm = icmp ugt i64 %i.fl, 2147483647
  br i1 %i.fm, label %.critedge.i.i.i.i20.i.i, label %bb.ac, !prof !112

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load ptr, ptr %i.cs, align 8, !tbaa !192
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = sub i64 %i.fo, %i.fk
  %i.fq = icmp slt i64 %i.fp, %i.fl
  br i1 %i.fq, label %.critedge.i.i.i.i20.i.i, label %bb.ad, !prof !112

.critedge.i.i.i.i20.i.i:                          ; preds = %bb.ac, %bb.ab
  store i32 4, ptr %i.co, align 4, !tbaa !190
  br label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit"

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.not.i.i11.i.i = icmp eq ptr %i.fh, %i.fi
  br i1 %.not.i.i.i.not.i.i11.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i13.i.i, label %bb.ae, !prof !252

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr align 1 %i.fi, i8 0, i64 %i.fl, i1 false)
  %.pre.i.i.i.i12.i.i = load ptr, ptr %i.cm, align 8, !tbaa !191
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i13.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i13.i.i:             ; preds = %bb.ae, %bb.ad
  %i.fr = phi ptr [ %.pre.i.i.i.i12.i.i, %bb.ae ], [ %i.fi, %bb.ad ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fl
  store ptr %i.fs, ptr %i.cm, align 8, !tbaa !191
  %i.ft = icmp eq ptr %i.fr, null
  br i1 %i.ft, label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit", label %bb.af, !prof !112

bb.af:                                            ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i13.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i16 %i.da, ptr %i.fu, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i32 %.sroa.042.0.copyload44, ptr %8, align 8
  %.sroa.11.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.11.0..sroa_idx17.i, align 4
  %.sroa.1125.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.1125.0..sroa_idx32.i, align 8
  %.sroa.12.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.12.0..sroa_idx46.i, align 8
  %.sroa.13.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx57.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.1361.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.1361.0..sroa_idx68.i, align 8
  %.sroa.14.0..sroa_idx82.i = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.14.0..sroa_idx82.i, align 4
  %.sroa.15.0..sroa_idx93.i = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx93.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  %.sroa.26.40..sroa.15.0..sroa_idx93.i.sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr %i.f, ptr %.sroa.26.40..sroa.15.0..sroa_idx93.i.sroa_idx, align 8
  %.sroa.27.40..sroa.15.0..sroa_idx93.i.sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 72
  store ptr %18, ptr %.sroa.27.40..sroa.15.0..sroa_idx93.i.sroa_idx, align 8
  %.sroa.28.40..sroa.15.0..sroa_idx93.i.sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %i.a, ptr %.sroa.28.40..sroa.15.0..sroa_idx93.i.sroa_idx, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 88
  store ptr @_ZL9hb_second, ptr %i.fv, align 8, !tbaa !550, !alias.scope !4519
  %.sroa.928.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.928.0.copyload.i.i.i = load i32, ptr %.sroa.928.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !4520
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !4521
  call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  call void @llvm.experimental.noalias.scope.decl(metadata !4523)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %8), !noalias !4521
  %i.fw = load i32, ptr %.sroa.14.0..sroa_idx82.i, align 4, !tbaa !693, !noalias !4524
  %i.fx = load i32, ptr %.sroa.15.0..sroa_idx93.i, align 8, !tbaa !524, !noalias !4524
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.fw to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fy, align 8, !alias.scope !4525, !noalias !4521
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.fx, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4525, !noalias !4521
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !553, !noalias !4521
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.val.i.i.i.i.i.i.i.i16.i.i = load ptr, ptr %i.gb, align 8, !tbaa !737, !noalias !4521
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEC2ERKS8_SB_SE_"(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i.i.i.i16.i.i), !noalias !4520
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !4521
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %7, align 8
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.417.0.copyload.i.i.i = load i32, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.619.0.copyload.i.i.i = load i32, ptr %.sroa.619.0..sroa_idx.i.i.i, align 8
  %.sroa.720.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.720.0.copyload.i.i.i = load i32, ptr %.sroa.720.0..sroa_idx.i.i.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !4520
  %.not.i.i.i.i.i.i17.i.i = icmp eq i32 %.sroa.042.0.copyload44, %.sroa.015.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i17.i.i, label %bb.ag, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.i.i.i", !prof !219

bb.ag:                                            ; preds = %bb.af
  switch i32 %.sroa.042.0.copyload44, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.thread.i.i.i" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i.i
    i32 2, label %.split.i.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i.i:                             ; preds = %bb.ag
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.755.0.copyload59, %.sroa.417.0.copyload.i.i.i
  %i.gc = icmp ne i32 %.sroa.928.0.copyload.i.i.i, %.sroa.619.0.copyload.i.i.i
  %i.gd = select i1 %.not.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gc
  %i.ge = icmp ne i32 %.sroa.863.0.copyload67, %.sroa.720.0.copyload.i.i.i
  %or.cond.i.i.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i.i.i, label %.thread43.i.i.i, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.thread.i.i.i"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %.not.i.i.i.i.i19.i.i = icmp ne i32 %.sroa.755.0.copyload59, %.sroa.417.0.copyload.i.i.i
  %.old.i.i.i = icmp ne i32 %.sroa.863.0.copyload67, %.sroa.720.0.copyload.i.i.i
  %or.cond40.i.i.i = select i1 %.not.i.i.i.i.i19.i.i, i1 %.old.i.i.i, i1 false
  br i1 %or.cond40.i.i.i, label %.thread.i.i.i, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.thread.i.i.i"

"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.i.i.i": ; preds = %bb.af
  %.old.old.not.i.i.i = icmp eq i32 %.sroa.863.0.copyload67, %.sroa.720.0.copyload.i.i.i
  br i1 %.old.old.not.i.i.i, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.thread.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.i.i.i"
  switch i32 %.sroa.042.0.copyload44, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EE8__item__Ev.exit.i.i.i" [
    i32 1, label %.thread.i.i.i
    i32 2, label %.thread43.i.i.i
  ]

.thread.i.i.i:                                    ; preds = %bb.ah, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4526, !srcloc !212
  %i.gf = load i16, ptr %i.db, align 1, !tbaa !211, !noalias !4526
  %i.gg = call noundef i16 @llvm.bswap.i16(i16 %i.gf)
  %i.gh = zext i16 %i.gg to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i18.i.i = icmp ult i32 %.sroa.755.0.copyload59, %i.gh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i18.i.i, label %bb.ai, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EE8__item__Ev.exit.i.i.i", !prof !219

bb.ai:                                            ; preds = %.thread.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4526, !srcloc !212
  br label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EE8__item__Ev.exit.i.i.i"

.thread43.i.i.i:                                  ; preds = %bb.ah, %.split.i.i.i.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4526, !srcloc !212
  br label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EE8__item__Ev.exit.i.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EE8__item__Ev.exit.i.i.i": ; preds = %.thread43.i.i.i, %bb.ai, %.thread.i.i.i, %bb.ah
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !218, !noalias !4527
  %i.gj = mul i32 %i.gi, %.sroa.863.0.copyload67
  %i.gk = load ptr, ptr %18, align 8, !tbaa !870, !noalias !4527
  %i.gl = zext i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.g, align 1
  store i16 %.sroa.0.0.copyload.i.i.i.i, ptr %9, align 2
  %i.gn = and i32 %.0.i, 65535
  call void @_ZNK2OT6Layout9GPOS_impl11ValueFormat11copy_valuesEP22hb_serialize_context_tjPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEEPK12hb_hashmap_tIj9hb_pair_tIjiELb0EE(ptr noundef nonnull align 1 dereferenceable(2) %9, ptr noundef nonnull %i.cj, i32 noundef %i.gn, ptr noundef nonnull %0, ptr noundef %i.gm, ptr noundef nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.thread.i.i.i"

"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.thread.i.i.i": ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EE8__item__Ev.exit.i.i.i", %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.i.i.i", %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i32 %.sroa.042.0.copyload44, ptr %10, align 8
  %.sroa.11.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.11.0..sroa_idx19.i, align 4
  %.sroa.1125.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.1125.0..sroa_idx34.i, align 8
  %.sroa.12.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.12.0..sroa_idx48.i, align 8
  %.sroa.13.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx58.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.1361.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.1361.0..sroa_idx70.i, align 8
  %.sroa.14.0..sroa_idx84.i = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.14.0..sroa_idx84.i, align 4
  %.sroa.15.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx94.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  %.sroa.15.i.sroa.6.0..sroa.15.0..sroa_idx94.i.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %i.f, ptr %.sroa.15.i.sroa.6.0..sroa.15.0..sroa_idx94.i.sroa_idx, align 8
  %.sroa.15.i.sroa.7.0..sroa.15.0..sroa_idx94.i.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %18, ptr %.sroa.15.i.sroa.7.0..sroa.15.0..sroa_idx94.i.sroa_idx, align 8
  %.sroa.15.i.sroa.8.0..sroa.15.0..sroa_idx94.i.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %i.a, ptr %.sroa.15.i.sroa.8.0..sroa.15.0..sroa_idx94.i.sroa_idx, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZL8hb_first, ptr %i.go, align 8, !tbaa !737, !alias.scope !4528
  call fastcc void @"_ZN2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJR13hb_map_iter_tIS8_I16hb_filter_iter_tI13hb_zip_iter_tINS3_6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSL_0EESK_LSW_1ELSL_0EEEEEbP22hb_serialize_context_tDpOT_"(ptr noundef nonnull align 1 dereferenceable(2) %i.cq, ptr noundef nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(96) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit"

.thread.i.i:                                      ; preds = %bb.z, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i, %_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit.i.i
  store i16 512, ptr %i.cn, align 1, !tbaa !282
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.gp = load i32, ptr %i.co, align 4, !tbaa !190
  %.not11.i.i.i21.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not11.i.i.i21.i.i, label %bb.aj, label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit", !prof !219

bb.aj:                                            ; preds = %.thread.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.gr = load ptr, ptr %i.cm, align 8, !tbaa !191 ; 4 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 4 uses
  %i.gv = icmp ugt i64 %i.gu, 2147483647
  br i1 %i.gv, label %.critedge.i.i.i.i26.i.i, label %bb.ak, !prof !112

bb.ak:                                            ; preds = %bb.aj
  %i.gw = load ptr, ptr %i.cs, align 8, !tbaa !192
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.gt
  %i.gz = icmp slt i64 %i.gy, %i.gu
  br i1 %i.gz, label %.critedge.i.i.i.i26.i.i, label %bb.al, !prof !112

.critedge.i.i.i.i26.i.i:                          ; preds = %bb.ak, %bb.aj
  store i32 4, ptr %i.co, align 4, !tbaa !190
  br label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit"

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i.not.i.i22.i.i = icmp eq ptr %i.gq, %i.gr
  br i1 %.not.i.i.i.not.i.i22.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i24.i.i, label %bb.am, !prof !252

bb.am:                                            ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr align 1 %i.gr, i8 0, i64 %i.gu, i1 false)
  %.pre.i.i.i.i23.i.i = load ptr, ptr %i.cm, align 8, !tbaa !191
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i24.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i24.i.i:             ; preds = %bb.am, %bb.al
  %i.ha = phi ptr [ %.pre.i.i.i.i23.i.i, %bb.am ], [ %i.gr, %bb.al ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gu
  store ptr %i.hb, ptr %i.cm, align 8, !tbaa !191
  %i.hc = icmp eq ptr %i.ha, null
  br i1 %i.hc, label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit", label %bb.an, !prof !112

bb.an:                                            ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i24.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i16 %i.da, ptr %i.hd, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i32 %.sroa.042.0.copyload44, ptr %4, align 8
  %.sroa.11.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.11.0..sroa_idx23.i, align 4
  %.sroa.1125.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.1125.0..sroa_idx38.i, align 8
  %.sroa.12.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.12.0..sroa_idx52.i, align 8
  %.sroa.13.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx60.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.1361.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.1361.0..sroa_idx74.i, align 8
  %.sroa.14.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.14.0..sroa_idx88.i, align 4
  %.sroa.15.0..sroa_idx96.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx96.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %bb.an
  %i.hf = phi i32 [ %.sroa.042.0.copyload44, %bb.an ], [ %.pre.i, %bb.ar ]
  %.0.i.i.i.i.i.i.i = phi i32 [ 0, %bb.an ], [ %i.hq, %bb.ar ] ; 3 uses
  switch i32 %i.hf, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEE3lenEv.exit.i.i.i" [
    i32 1, label %bb.ap
    i32 2, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.hg = load i32, ptr %.sroa.12.0..sroa_idx52.i, align 8, !tbaa !218
  %i.hh = load ptr, ptr %.sroa.1125.0..sroa_idx38.i, align 8, !tbaa !276
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i16, ptr %i.hi, align 1, !tbaa !211
  %i.hk = call noundef i16 @llvm.bswap.i16(i16 %i.hj)
  %i.hl = zext i16 %i.hk to i32
  %i.hm = icmp ult i32 %i.hg, %i.hl
  br i1 %i.hm, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i", label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEE3lenEv.exit.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = load i32, ptr %.sroa.1361.0..sroa_idx74.i, align 8, !tbaa !525
  %i.ho = load i32, ptr %.sroa.14.0..sroa_idx88.i, align 4, !tbaa !693
  %.not.i.i.i.i.i25.i.i = icmp eq i32 %i.hn, %i.ho
  br i1 %.not.i.i.i.i.i25.i.i, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEE3lenEv.exit.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i"
  %i.hp = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !4529 ; 0 uses
  %i.hq = add i32 %.0.i.i.i.i.i.i.i, 1
  %.pre.i = load i32, ptr %4, align 8, !tbaa !527
  br label %bb.ao, !llvm.loop !87

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEE3lenEv.exit.i.i.i": ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i", %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.hr = trunc i32 %.0.i.i.i.i.i.i.i to i16
  %i.hs = call i16 @llvm.bswap.i16(i16 %i.hr)
  store i16 %i.hs, ptr %i.he, align 1, !tbaa !282
  %.not.i.i4.i.i.i = icmp ult i32 %.0.i.i.i.i.i.i.i, 65536
  br i1 %.not.i.i4.i.i.i, label %bb.as, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i, !prof !306

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i: ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEE3lenEv.exit.i.i.i"
  %i.ht = load i32, ptr %i.co, align 4, !tbaa !190
  %i.hu = or i32 %i.ht, 16
  store i32 %i.hu, ptr %i.co, align 4, !tbaa !190
  br label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit"

bb.as:                                            ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEE3lenEv.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %.sroa.042.0.copyload44, ptr %3, align 8
  %.sroa.11.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.11.0..sroa_idx.i20, align 4
  %.sroa.1125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.1125.0..sroa_idx.i, align 8
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.12.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.1361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.1361.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.14.0..sroa_idx.i, align 4
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  %.sroa.15.i.sroa.6.0..sroa.15.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.f, ptr %.sroa.15.i.sroa.6.0..sroa.15.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.15.i.sroa.7.0..sroa.15.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %18, ptr %.sroa.15.i.sroa.7.0..sroa.15.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.15.i.sroa.8.0..sroa.15.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store ptr %i.a, ptr %.sroa.15.i.sroa.8.0..sroa.15.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr @_ZL9hb_second, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8
  %i.hv = and i32 %.0.i, 65535
  br label %bb.at

bb.at:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i", %bb.as
  %i.hw = phi i32 [ %.pre98.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i" ], [ %.sroa.042.0.copyload44, %bb.as ]
  switch i32 %i.hw, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_apply_tIZNSK_9serializeIST_SK_TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSH_0EEEvP22hb_serialize_context_tPKT0_S11_NSJ_11ValueFormatEPK12hb_hashmap_tIjSN_IjiELb0EEEUl10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEE_ETnS15_LSH_0EEDTclclsr3stdE7forwardIS18_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS18_.exit.i.i.i" [
    i32 1, label %bb.au
    i32 2, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %i.hx = load i32, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !218
  %i.hy = load ptr, ptr %.sroa.1125.0..sroa_idx.i, align 8, !tbaa !276
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ia = load i16, ptr %i.hz, align 1, !tbaa !211
  %i.ib = call noundef i16 @llvm.bswap.i16(i16 %i.ia)
  %i.ic = zext i16 %i.ib to i32
  %i.id = icmp ult i32 %i.hx, %i.ic
  br i1 %i.id, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEcvbEv.exit.i.i.i.i.i", label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_apply_tIZNSK_9serializeIST_SK_TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSH_0EEEvP22hb_serialize_context_tPKT0_S11_NSJ_11ValueFormatEPK12hb_hashmap_tIjSN_IjiELb0EEEUl10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEE_ETnS15_LSH_0EEDTclclsr3stdE7forwardIS18_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS18_.exit.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEcvbEv.exit.i.i.i.i.i": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ie = load i32, ptr %.sroa.1361.0..sroa_idx.i, align 8, !tbaa !525
  %i.if = load i32, ptr %.sroa.14.0..sroa_idx.i, align 4, !tbaa !693
  %.not.i.i6.i.i.i = icmp eq i32 %i.ie, %i.if
  br i1 %.not.i.i6.i.i.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_apply_tIZNSK_9serializeIST_SK_TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSH_0EEEvP22hb_serialize_context_tPKT0_S11_NSJ_11ValueFormatEPK12hb_hashmap_tIjSN_IjiELb0EEEUl10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEE_ETnS15_LSH_0EEDTclclsr3stdE7forwardIS18_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS18_.exit.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEcvbEv.exit.i.i.i.i.i"
  %i.ig = load i32, ptr %3, align 8, !tbaa !527, !noalias !4530
  switch i32 %i.ig, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i" [
    i32 1, label %bb.ax
    i32 2, label %bb.az
  ]

bb.ax:                                            ; preds = %bb.aw
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4530, !srcloc !212
  %i.ih = load ptr, ptr %.sroa.1125.0..sroa_idx.i, align 8, !tbaa !551, !noalias !4530
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.ij = load i32, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !530, !noalias !4530
  %i.ik = load i16, ptr %i.ii, align 1, !tbaa !211, !noalias !4530
  %i.il = call noundef i16 @llvm.bswap.i16(i16 %i.ik)
  %i.im = zext i16 %i.il to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ij, %i.im
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i", !prof !219

bb.ay:                                            ; preds = %bb.ax
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4530, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i"

bb.az:                                            ; preds = %bb.aw
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !4530, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i": ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.1361.0..sroa_idx.i, align 8, !tbaa !218, !noalias !4530
  %i.in = load ptr, ptr %.sroa.15.i.sroa.7.0..sroa.15.0..sroa_idx.i.sroa_idx, align 8, !tbaa !866, !noalias !4531, !nonnull !230, !align !592
  %i.io = load ptr, ptr %.sroa.15.i.sroa.8.0..sroa.15.0..sroa_idx.i.sroa_idx, align 8, !tbaa !867, !noalias !4531, !nonnull !230, !align !661
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !218, !noalias !4531
  %i.iq = mul i32 %i.ip, %.val.i.i.i.i.i.i.i.i.i.i.i
  %i.ir = load ptr, ptr %i.in, align 8, !tbaa !870, !noalias !4531
  %i.is = zext i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.is
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i16, ptr %i.g, align 1
  store i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %2, align 2
  call void @_ZNK2OT6Layout9GPOS_impl11ValueFormat11copy_valuesEP22hb_serialize_context_tjPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEEPK12hb_hashmap_tIj9hb_pair_tIjiELb0EE(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull %i.cj, i32 noundef %i.hv, ptr noundef nonnull %0, ptr noundef %i.it, ptr noundef nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.iu = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 8 dereferenceable(96) %3) ; 0 uses
  %.pre98.i = load i32, ptr %3, align 8, !tbaa !527
  br label %bb.at, !llvm.loop !4499

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_apply_tIZNSK_9serializeIST_SK_TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSH_0EEEvP22hb_serialize_context_tPKT0_S11_NSJ_11ValueFormatEPK12hb_hashmap_tIjSN_IjiELb0EEEUl10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEE_ETnS15_LSH_0EEDTclclsr3stdE7forwardIS18_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS18_.exit.i.i.i": ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEcvbEv.exit.i.i.i.i.i", %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i32 %.sroa.042.0.copyload44, ptr %5, align 8
  %.sroa.11.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.645.0.copyload49, ptr %.sroa.11.0..sroa_idx11.i, align 4
  %.sroa.1125.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.650.0.copyload54, ptr %.sroa.1125.0..sroa_idx26.i, align 8
  %.sroa.12.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.755.0.copyload59, ptr %.sroa.12.0..sroa_idx40.i, align 8
  %.sroa.13.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx54.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.860, i64 12, i1 false)
  %.sroa.1361.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %.sroa.863.0.copyload67, ptr %.sroa.1361.0..sroa_idx62.i, align 8
  %.sroa.14.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %.sroa.968.0.copyload72, ptr %.sroa.14.0..sroa_idx76.i, align 4
  %.sroa.15.0..sroa_idx90.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx90.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1073, i64 24, i1 false)
  %.sroa.15.i.sroa.6.0..sroa.15.0..sroa_idx90.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.f, ptr %.sroa.15.i.sroa.6.0..sroa.15.0..sroa_idx90.i.sroa_idx, align 8
  %.sroa.15.i.sroa.7.0..sroa.15.0..sroa_idx90.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %18, ptr %.sroa.15.i.sroa.7.0..sroa.15.0..sroa_idx90.i.sroa_idx, align 8
  %.sroa.15.i.sroa.8.0..sroa.15.0..sroa_idx90.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.a, ptr %.sroa.15.i.sroa.8.0..sroa.15.0..sroa_idx90.i.sroa_idx, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr @_ZL8hb_first, ptr %i.iv, align 8, !tbaa !737, !alias.scope !4532
  call fastcc void @"_ZN2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJR13hb_map_iter_tIS8_I16hb_filter_iter_tI13hb_zip_iter_tINS3_6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSL_0EESK_LSW_1ELSL_0EEEEEbP22hb_serialize_context_tDpOT_"(ptr noundef nonnull align 1 dereferenceable(2) %i.cq, ptr noundef nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(96) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit"

"_ZN2OT6Layout9GPOS_implL19SinglePos_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS0_6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS1_16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSI_0EESK_EEvP22hb_serialize_context_tPKT0_T_PK12hb_hashmap_tIjSN_IjiELb0EEj.exit": ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EESN_IRKj10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEEEcvbEv.exit", %.critedge.i.i.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i, %bb.aa, %.critedge.i.i.i.i20.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i13.i.i, %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS3_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSG_0EERK3$_7LSR_0ELSG_0EEneERKSW_.exit.thread.i.i.i", %.thread.i.i, %.critedge.i.i.i.i26.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i24.i.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i, %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEZNKS4_9GPOS_impl16SinglePosFormat26subsetEP19hb_subset_context_tEUlRK9hb_pair_tIjjEE_L24hb_function_sortedness_t1ELSH_0EERK3$_7LSS_0ELSH_0EE10hb_apply_tIZNSK_9serializeIST_SK_TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSH_0EEEvP22hb_serialize_context_tPKT0_S11_NSJ_11ValueFormatEPK12hb_hashmap_tIjSN_IjiELb0EEEUl10hb_array_tIKNS3_7NumTypeILb1EtLj2EEEEE_ETnS15_LSH_0EEDTclclsr3stdE7forwardIS18_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS18_.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERK8hb_set_tRK3$_6LPv0EEC2ERKS8_SB_SE_"(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !553
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %i.b, align 8, !tbaa !737
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.h = load i32, ptr %0, align 8, !tbaa !527
  switch i32 %i.h, label %.critedge [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i: ; preds = %bb.d, %bb.c
  %i.i = load i32, ptr %i.e, align 8, !tbaa !218
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !276
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.l = load i16, ptr %i.k, align 1, !tbaa !211
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32
  %i.o = icmp ult i32 %i.i, %i.n
  br i1 %i.o, label %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEcvbEv.exit, label %.critedge

_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEcvbEv.exit: ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i
  %i.p = load i32, ptr %i.c, align 8, !tbaa !525
  %i.q = load i32, ptr %i.f, align 4, !tbaa !693
  %.not = icmp eq i32 %i.p, %i.q
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEcvbEv.exit
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !553  ; 5 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !527
  switch i32 %i.s, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !551  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i32, ptr %i.e, align 8, !tbaa !530  ; 2 uses
  %i.w = load i16, ptr %i.u, align 1, !tbaa !211
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.v, %i.y
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i, !prof !219

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = zext nneg i32 %i.v to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.ac = load i16, ptr %.0.i.i.i.i.i.i.i, align 1, !tbaa !211
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.af = load i32, ptr %i.g, align 8, !tbaa !533
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit: ; preds = %bb.e, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.af, %bb.h ], [ %i.ae, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.ag = lshr i32 %.0.i.i.i.i.i, 9               ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !409 ; 3 uses
  %i.al = icmp ult i32 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !410 ; 3 uses
  br i1 %i.al, label %bb.i, label %._crit_edge.i.i.i.i.i.i.i.i, !prof !219

bb.i:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit
  %i.ao = zext i32 %i.ai to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !412
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.aq, %i.ag
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.i, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ak, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ar = add nsw i32 %i.ak, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.as = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = lshr i32 %i.as, 1                       ; 4 uses
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !412 ; 2 uses
  %i.ay = icmp slt i32 %i.ag, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = add nsw i32 %i.at, -1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, %i.ax
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = add nuw nsw i32 %i.at, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.az, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !17

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  store atomic i32 %i.at, ptr %i.ah monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.bb = phi i64 [ %i.au, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i ], [ %i.ao, %bb.i ]
  %.sink.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sink.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %.not.i.i.i.i.i.i.i6 = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit", label %bb.n

bb.n:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !414
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = lshr i32 %.0.i.i.i.i.i, 6
  %i.bj = and i32 %i.bi, 7
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !266
  %i.bn = and i32 %.0.i.i.i.i.i, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 %i.bm, %i.bo
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i8 %i.bq, 1
  br label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit"

"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit": ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i, %bb.n
  %.0.i.i.i.i.i.i.i5 = phi i8 [ %i.br, %bb.n ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !259, !range !213, !noundef !230
  %.not7 = icmp eq i8 %i.bt, %.0.i.i.i.i.i.i.i5
end_hunk_0
