Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types_column?download=true
inline.NumInlined: 5544
inline.NumDeleted: 2532
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC2EOS1_:bb.a

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.p) #24
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #25
  br label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i.i, %bb.a
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !277  ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !277
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.q) #24
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #25
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !141
  %i.u = load i64, ptr %i.s, align 8, !tbaa !141
  store i64 %i.u, ptr %i.r, align 8, !tbaa !141
  store i64 %i.t, ptr %i.s, align 8, !tbaa !141
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN6duckdb19ColumnDataScanStateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::ColumnDataScanState", align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x ptr>, ptr %0, align 8, !tbaa !140
  store ptr null, ptr %i.b, align 8, !tbaa !107
  store <2 x ptr> %i.c, ptr %2, align 16, !tbaa !140
  store ptr null, ptr %0, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165  ; 3 uses
  store ptr %i.f, ptr %i.d, align 16, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !164  ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !225  ; 3 uses
  store ptr %i.l, ptr %i.j, align 16, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !162
  store i64 %i.o, ptr %i.m, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !343
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  store ptr null, ptr %i.r, align 16, !tbaa !344
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.t = icmp eq ptr %i.f, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.r, ptr %i.d, align 16, !tbaa !165
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !344
  store ptr %i.u, ptr %i.r, align 16, !tbaa !344
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = phi ptr [ %i.r, %bb.b ], [ %i.f, %bb.a ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb19ColumnDataScanStateC2EOS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !141
  %i.y = urem i64 %i.x, %i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  store ptr %i.j, ptr %i.z, align 8, !tbaa !166
  br label %_ZN6duckdb19ColumnDataScanStateC2EOS0_.exit

_ZN6duckdb19ColumnDataScanStateC2EOS0_.exit:      ; preds = %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.aa, align 8, !tbaa !345
  store i64 1, ptr %i.h, align 8, !tbaa !164
  store ptr null, ptr %i.s, align 8, !tbaa !344
  store ptr %i.s, ptr %i.e, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !346
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !346
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.ae, ptr noundef nonnull align 8 dereferenceable(33) %i.af, i64 33, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !328
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !328
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !315
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.am = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb19ColumnDataScanStateaSEOS0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #24 ; 0 uses
  %i.an = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb19ColumnDataScanStateaSEOS0_(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #24 ; 0 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19ColumnDataScanStateC2EOS0_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.e, %_ZN6duckdb19ColumnDataScanStateC2EOS0_.exit
  %i.ap = load ptr, ptr %i.j, align 16, !tbaa !225 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
  %i.aq = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #24
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #25
  %.not.i.i.i.i.i.i4 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i4, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.as = load ptr, ptr %i.d, align 16, !tbaa !165
  %i.at = load i64, ptr %i.g, align 8, !tbaa !164
  %i.au = shl i64 %i.at, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %i.au, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.av = load ptr, ptr %i.d, align 16, !tbaa !165 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.av) #25
  br label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i

_ZN6duckdb20ChunkManagementStateD2Ev.exit.i:      ; preds = %bb.f, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !107 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i1.i, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ay, align 8, !tbaa !109
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !110
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !105
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !24
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !24
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.j ], [ %i.bl, %bb.k ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.l, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, !prof !111

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit

_ZN6duckdb19ColumnDataScanStateD2Ev.exit:         ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca i64, align 8                        ; 5 uses
  %2 = alloca i64, align 8                        ; 5 uses
  %3 = alloca i64, align 8                        ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !341
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6duckdb12optional_ptrIKNS_20ColumnDataCollectionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !341    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 3 uses
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %4 = call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection13NextScanIndexERNS_19ColumnDataScanStateERmS3_S3_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  store i64 0, ptr %0, align 8, !tbaa !330
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.f, align 8, !tbaa !340
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %7 = load i64, ptr %2, align 8, !tbaa !141
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %7)
  %9 = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i8, ptr %10, align 8, !tbaa !326
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %11, ptr %13, align 8, !tbaa !327
  %14 = load i64, ptr %1, align 8, !tbaa !141
  tail call void @_ZN6duckdb27ColumnDataCollectionSegment9ReadChunkEmRNS_20ChunkManagementStateERNS_9DataChunkERKNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(136) %9, i64 noundef %14, ptr noundef nonnull align 8 dereferenceable(57) %12, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %5)
  tail call void @_ZN6duckdb9DataChunk6VerifyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !312
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !340
  %i.l = add i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !340
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(168) ptr @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorppEv(ptr noundef nonnull returned align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorneERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !341
  %i.b = load ptr, ptr %1, align 8, !tbaa !341
  %i.c = icmp ne ptr %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.e, %i.g
  %i.i = select i1 %i.c, i1 true, i1 %i.h
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK6duckdb20ColumnDataCollection4RowsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.duckdb::ColumnDataRowIterationHelper", align 8 ; 2 uses
  call void @_ZN6duckdb28ColumnDataRowIterationHelperC1ERKNS_20ColumnDataCollectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.a = load ptr, ptr %1, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb28ColumnDataRowIterationHelperC2ERKNS_20ColumnDataCollectionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #9 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIteratorC2EPKNS_20ColumnDataCollectionENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 24)) %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !351
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.b, align 8, !tbaa !165
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !286
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.j = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28
          to label %.noexc unwind label %bb.l     ; 11 uses

.noexc:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 8 uses
  store i32 1, ptr %i.k, align 8, !tbaa !109, !noalias !670
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  store i32 1, ptr %i.l, align 4, !tbaa !110, !noalias !670
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb9DataChunkESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.j, align 8, !tbaa !105, !noalias !670
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb9DataChunkESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !670

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb9DataChunkESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #25, !noalias !670
  br label %.body

bb.b:                                             ; preds = %.noexc
  store ptr %i.m, ptr %i.i, align 8, !tbaa !352, !alias.scope !669
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.j, ptr %i.o, align 8, !tbaa !107, !alias.scope !669
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97, !noalias !669
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.k, align 8, !tbaa !60, !noalias !669
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.k, align 8, !tbaa !60, !noalias !669
  br label %_ZN6duckdb10shared_ptrINS_9DataChunkELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !669 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataChunkELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_9DataChunkELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.d, %bb.c
  %i.t = load atomic i64, ptr %i.k acquire, align 8, !noalias !669 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_9DataChunkELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.k, align 8, !tbaa !109, !noalias !669
  store i32 0, ptr %i.l, align 4, !tbaa !110, !noalias !669
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !105, !noalias !669
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !669
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !noalias !669, !inline_history !668
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !105, !noalias !669
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !669
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !noalias !669, !inline_history !668
  br label %_ZN6duckdb15make_shared_ptrINS_9DataChunkEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_9DataChunkELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97, !noalias !669
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.v, -1
  store i32 %i.ad, ptr %i.k, align 8, !tbaa !60, !noalias !669
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4, !noalias !669
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZN6duckdb15make_shared_ptrINS_9DataChunkEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !111

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !noalias !669
  br label %_ZN6duckdb15make_shared_ptrINS_9DataChunkEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_9DataChunkEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e
  %i.ag = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_9DataChunkEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN6duckdb13ColumnDataRowC1ERNS_9DataChunkEmm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 noundef 0, i64 noundef 0)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !351   ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.s, label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZN6duckdb19ColumnDataAllocator12GetAllocatorEv.exit.i, %bb.q, %bb.p, %bb.r, %_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9DataChunkE.exit, %bb.o, %bb.n, %bb.j, %_ZN6duckdb15make_shared_ptrINS_9DataChunkEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb10shared_ptrINS_9DataChunkELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.i) #24
  br label %.body

bb.n:                                             ; preds = %bb.k
  invoke void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %i.ai, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i8 noundef zeroext %2)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %0, align 8, !tbaa !351   ; 2 uses
  %i.am = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  %i.an = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(112) %i.al)
          to label %.noexc7 unwind label %bb.m    ; 2 uses

.noexc7:                                          ; preds = %bb.p
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !95
  %i.ap = icmp eq i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !97 ; 3 uses
  br i1 %i.ap, label %_ZN6duckdb19ColumnDataAllocator12GetAllocatorEv.exit.i, label %bb.q

bb.q:                                             ; preds = %.noexc7
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !105
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_ZN6duckdb19ColumnDataAllocator12GetAllocatorEv.exit.i unwind label %bb.m, !inline_history !287

_ZN6duckdb19ColumnDataAllocator12GetAllocatorEv.exit.i: ; preds = %bb.q, %.noexc7
  %.0.i.i = phi ptr [ %i.ar, %.noexc7 ], [ %i.av, %bb.q ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef 2048)
          to label %_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9DataChunkE.exit unwind label %bb.m

_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9DataChunkE.exit: ; preds = %_ZN6duckdb19ColumnDataAllocator12GetAllocatorEv.exit.i
  %i.ax = load ptr, ptr %0, align 8, !tbaa !351
  %i.ay = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9DataChunkE.exit
  %i.az = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ax, ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %bb.s unwind label %bb.m       ; 0 uses

bb.s:                                             ; preds = %bb.k, %bb.r
  ret void

.body:                                            ; preds = %bb.l, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb9DataChunkESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.aj, %bb.l ], [ %i.n, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb9DataChunkESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i ]
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !352    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_9DataChunkELb1EE13AssertNotNullEb.exit, !prof !111

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_9DataChunkELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_9DataChunkELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb9DataChunkELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !110
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !671
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !671
  br label %_ZNSt12__shared_ptrIN6duckdb9DataChunkELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb9DataChunkELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN6duckdb9DataChunkELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb9DataChunkELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca i64, align 8                        ; 5 uses
  %2 = alloca i64, align 8                        ; 5 uses
  %3 = alloca i64, align 8                        ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !351
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !353
  %i.d = add i64 %i.c, 1                          ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.f = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !312
  %.not1 = icmp ult i64 %i.d, %i.h
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !312
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !354
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !tbaa !354
  store i64 0, ptr %i.b, align 8, !tbaa !353
  %i.o = load ptr, ptr %0, align 8, !tbaa !351    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) ; 3 uses
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %4 = call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection13NextScanIndexERNS_19ColumnDataScanStateERmS3_S3_(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %4, label %_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE.exit.thread, label %bb.d

_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE.exit.thread: ; preds = %bb.c
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %6 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %7 = load i64, ptr %2, align 8, !tbaa !141
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %7)
  %9 = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i8, ptr %10, align 8, !tbaa !326
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %11, ptr %13, align 8, !tbaa !327
  %14 = load i64, ptr %1, align 8, !tbaa !141
  tail call void @_ZN6duckdb27ColumnDataCollectionSegment9ReadChunkEmRNS_20ChunkManagementStateERNS_9DataChunkERKNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(136) %9, i64 noundef %14, ptr noundef nonnull align 8 dereferenceable(57) %12, ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %5)
  tail call void @_ZN6duckdb9DataChunk6VerifyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  store i64 0, ptr %i.l, align 8, !tbaa !354
  store ptr null, ptr %0, align 8, !tbaa !351
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE.exit.thread, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !352    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_9DataChunkELb1EE13AssertNotNullEb.exit, !prof !111

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_9DataChunkELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28ColumnDataRowIterationHelper5beginEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ColumnDataRowIterationHelper::ColumnDataRowIterator") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !673, !nonnull !114, !align !136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !141
  %i.d = icmp eq i64 %i.c, 0
  %spec.select = select i1 %i.d, ptr null, ptr %i.a
  tail call void @_ZN6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIteratorC1EPKNS_20ColumnDataCollectionENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %spec.select, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28ColumnDataRowIterationHelper3endEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ColumnDataRowIterationHelper::ColumnDataRowIterator") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIteratorC1EPKNS_20ColumnDataCollectionENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef null, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(192) ptr @_ZN6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIteratorppEv(ptr noundef nonnull returned align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
_ZN6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIterator4NextEv.exit:
  tail call void @_ZN6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIteratorneERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !351
  %i.b = load ptr, ptr %1, align 8, !tbaa !351
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.f = load i64, ptr %i.e, align 8, !tbaa !353
  %.not4 = icmp eq i64 %i.d, %i.f
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load i64, ptr %i.g, align 8, !tbaa !354
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.j = load i64, ptr %i.i, align 8, !tbaa !354
  %i.k = icmp ne i64 %i.h, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.k, %bb.c ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb28ColumnDataRowIterationHelper21ColumnDataRowIteratordeEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(192) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ColumnDataCollection16InitializeAppendERNS_21ColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #24
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !23

_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !164
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !261
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24                  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !357  ; 3 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !358  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 80                  ; 3 uses
  %i.y = icmp ugt i64 %i.q, %i.x
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5clearEv.exit
  %i.z = sub nuw nsw i64 %i.q, %i.x
  tail call void @_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.z)
  br label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5clearEv.exit
  %i.aa = icmp ult i64 %i.q, %i.x
  br i1 %i.aa, label %bb.d, label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %i.q ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb19UnifiedVectorFormatEEEvT_S5_(ptr noundef %i.ab, ptr noundef %i.s)
          to label %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i.i unwind label %bb.f

_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !357
  br label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #27
  unreachable

_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !275
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !275
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE6resizeEm.exit
  tail call void @_ZN6duckdb20ColumnDataCollection13CreateSegmentEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE6resizeEm.exit
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !360 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !360 ; 2 uses
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6duckdb27ColumnDataCollectionSegment16AllocateNewChunkEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ak)
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !362
  %.pre8 = load ptr, ptr %i.al, align 8, !tbaa !363
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = phi ptr [ %.pre8, %bb.i ], [ %i.am, %bb.h ]
  %i.ar = phi ptr [ %.pre, %bb.i ], [ %i.ao, %bb.h ]
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 88
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.aw)
  %i.ay = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ak)
  tail call void @_ZN6duckdb19ColumnDataAllocator20InitializeChunkStateERNS_20ChunkManagementStateERNS_13ChunkMetaDataE(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(82) %i.ax)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !275    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %common.resume
end_hunk_0
begin_hunk_1_@_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10StringHeapELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !456
  %i.e = load ptr, ptr %0, align 8, !tbaa !455    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !141
  store i64 %i.i, ptr %i.b, align 8, !tbaa !141
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10shared_ptrINS_10StringHeapELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !120    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10shared_ptrINS_10StringHeapELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !455    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !456  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !110
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !1181
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !1181
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i, !prof !111

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1182

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10StringHeapELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !455
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #25
  br label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10StringHeapELb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb20ColumnDataCollection16GetAllocatorTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !95
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb20ColumnDataCollection16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb19ColumnDataAllocator16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(176) %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb20ColumnDataCollection11GetSegmentsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(112) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20ColumnDataCollection9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.duckdb::vector.578", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::vector.578", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::vector.657", align 8 ; 12 uses
  %6 = alloca %"class.duckdb::ColumnDataChunkIterationHelper", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator", align 8 ; 21 uses
  %8 = alloca %"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator", align 8 ; 20 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !261  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !260  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.not230 = icmp eq ptr %i.f, %i.g
  br i1 %.not230, label %_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv exact i64 %i.j, 24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = icmp ugt i64 %i.l, 384307168202282325
  br i1 %i.n, label %bb.c, label %_ZNKSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #28
          to label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i: ; preds = %_ZNKSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.j, i1 false)
  store ptr %i.o, ptr %5, align 8, !tbaa !459
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 3 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !460
  store ptr %i.p, ptr %i.m, align 8, !tbaa !461
  %i.q = ptrtoint ptr %i.p to i64
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i
  %i.r = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i ], [ null, %bb.a ] ; 2 uses
  %i.s = phi i64 [ %i.q, %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE13_M_deallocateEPS4_m.exit36.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNK6duckdb20ColumnDataCollection6ChunksEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnDataChunkIterationHelper") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.t = load ptr, ptr %6, align 8, !tbaa !1191, !noalias !1192, !nonnull !114, !align !136
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !314, !noalias !1192 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !298, !noalias !1192 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !111

.noexc.i.i.i.i:                                   ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc35 unwind label %bb.aj

.noexc35:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #28
          to label %.noexc36 unwind label %bb.aj

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !328, !noalias !1192 ; 2 uses
  %.pre4.i = load ptr, ptr %i.v, align 8, !tbaa !328, !noalias !1192
  %.pre5.i = ptrtoint ptr %.pre4.i to i64
  %.pre6.i = ptrtoint ptr %.pre.i to i64
  br label %bb.f

bb.f:                                             ; preds = %.noexc36, %bb.d
  %.pre-phi7.i = phi i64 [ %.pre6.i, %.noexc36 ], [ %i.z, %bb.d ]
  %.pre-phi.i = phi i64 [ %.pre5.i, %.noexc36 ], [ %i.y, %bb.d ]
  %i.ad = phi ptr [ %.pre.i, %.noexc36 ], [ %i.x, %bb.d ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %.noexc36 ], [ null, %bb.d ] ; 5 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !298, !noalias !1192
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !315, !noalias !1192
  %i.ai = sub i64 %.pre-phi.i, %.pre-phi7.i       ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 8
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !142

bb.g:                                             ; preds = %bb.f
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ad, i64 %i.ai, i1 false), !noalias !1192
  br label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp eq i64 %i.ai, 8
  br i1 %i.ak, label %bb.i, label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !141, !noalias !1192
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !141, !noalias !1192
  br label %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i

_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i:     ; preds = %bb.i, %bb.h, %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai
  store ptr %i.am, ptr %i.af, align 8, !tbaa !314, !noalias !1192
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC1ENS_12optional_ptrIKNS_20ColumnDataCollectionELb1EEENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr nonnull %i.t, ptr noundef nonnull %4)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i
  %i.an = load ptr, ptr %4, align 8, !tbaa !298, !noalias !1192 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i34, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.an) #25
  br label %bb.n

bb.l:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEC2ERKS2_.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !298, !noalias !1192 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i2.i, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #25
  br label %.body

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1193
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC1ENS_12optional_ptrIKNS_20ColumnDataCollectionELb1EEENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr null, ptr noundef nonnull %3)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %3, align 8, !tbaa !298, !noalias !1193 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i37, label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #25
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit

bb.q:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !298, !noalias !1193 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i1.i, label %.body38, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.as) #25
  br label %.body38

_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 160
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 2 uses
  %11 = ptrtoint ptr %i.r to i64
  %12 = sub i64 %i.s, %11
  %13 = sdiv exact i64 %12, 24                    ; 2 uses
  br label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.al, %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit
  %14 = load ptr, ptr %7, align 8, !tbaa !341
  %15 = load ptr, ptr %8, align 8, !tbaa !341
  %16 = icmp ne ptr %14, %15
  %17 = load i64, ptr %i.at, align 8
  %18 = load i64, ptr %i.au, align 8
  %19 = icmp ne i64 %17, %18
  %20 = select i1 %16, i1 true, i1 %19
  br i1 %20, label %bb.ak, label %._crit_edge153

._crit_edge153:                                   ; preds = %.lr.ph152
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !277 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i40, label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i: ; preds = %._crit_edge153
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.aw) #24
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #25
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit

_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit: ; preds = %._crit_edge153, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i.i92.a = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i92.a, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.s, %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !225 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
  %i.bc = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bd) #24
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #25
  %.not.i.i.i.i.i.i93 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i93, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !165
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !164
  %i.bh = shl i64 %i.bg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !165 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bi) #25
  br label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i

_ZN6duckdb20ChunkManagementStateD2Ev.exit.i:      ; preds = %bb.t, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107 ; 8 uses
  %.not.i.i.i1.i94 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i1.i94, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bn, align 8, !tbaa !109
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !110
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !105
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #24, !inline_history !24
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !105
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #24, !inline_history !24
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i95 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i95, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.x ], [ %i.ca, %bb.y ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.z, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, !prof !111

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #24
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit

_ZN6duckdb19ColumnDataScanStateD2Ev.exit:         ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.cc = load ptr, ptr %10, align 8, !tbaa !277  ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i41, label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit43, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i42

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i42: ; preds = %_ZN6duckdb19ColumnDataScanStateD2Ev.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cc) #24
  call void @_ZdlPv(ptr noundef nonnull %i.cc) #25
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit43

_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit43: ; preds = %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i42
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i96, label %_ZNSt6vectorImSaImEED2Ev.exit.i97, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit43
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i97

_ZNSt6vectorImSaImEED2Ev.exit.i97:                ; preds = %bb.aa, %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit43
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !225 ; 2 uses
  %.not5.i.i.i.i.i.i98 = icmp eq ptr %i.ch, null
  br i1 %.not5.i.i.i.i.i.i98, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i102, label %.lr.ph.i.i.i.i.i.i99

.lr.ph.i.i.i.i.i.i99:                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i97, %.lr.ph.i.i.i.i.i.i99
  %.06.i.i.i.i.i.i100 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i99 ], [ %i.ch, %_ZNSt6vectorImSaImEED2Ev.exit.i97 ] ; 3 uses
  %i.ci = load ptr, ptr %.06.i.i.i.i.i.i100, align 8, !tbaa !163 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i100, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cj) #24
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i100) #25
  %.not.i.i.i.i.i.i101 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i101, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i102, label %.lr.ph.i.i.i.i.i.i99, !llvm.loop !23

_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i102: ; preds = %.lr.ph.i.i.i.i.i.i99, %_ZNSt6vectorImSaImEED2Ev.exit.i97
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !165
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !164
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ck, i8 0, i64 %i.cn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !165 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i103, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i102
  call void @_ZdlPv(ptr noundef %i.co) #25
  br label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i103

_ZN6duckdb20ChunkManagementStateD2Ev.exit.i103:   ; preds = %bb.ab, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i102
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !107 ; 8 uses
  %.not.i.i.i1.i104 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i1.i104, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit108, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i103
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ct, align 8, !tbaa !109
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !110
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !105
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24, !inline_history !24
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !105
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24, !inline_history !24
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit108

bb.ae:                                            ; preds = %bb.ac
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i105 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i105, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i106

bb.ag:                                            ; preds = %bb.ae
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i106

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i106: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i107 = phi i32 [ %i.cw, %bb.af ], [ %i.dg, %bb.ag ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i107, 1
  br i1 %i.dh, label %bb.ah, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit108, !prof !111

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i106
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit108

_ZN6duckdb19ColumnDataScanStateD2Ev.exit108:      ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i103, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i106, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i44, label %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb19ColumnDataScanStateD2Ev.exit108
  call void @_ZdlPv(ptr noundef nonnull %i.di) #25
  br label %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit

_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit: ; preds = %_ZN6duckdb19ColumnDataScanStateD2Ev.exit108, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.dj = load ptr, ptr %1, align 8, !tbaa !105
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.12)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1187

.noexc46:                                         ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !261
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !260
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = sdiv exact i64 %i.dq, 24
  %i.ds = load ptr, ptr %1, align 8, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(680) %1, i64 noundef %i.dr)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1187

.noexc47:                                         ; preds = %.noexc46
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !258 ; 2 uses
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !258 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not9.i.i, label %_ZN6duckdb10Serializer10WriteValueINS_11LogicalTypeEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc47, %.noexc50
  %.sroa.06.010.i.i = phi ptr [ %i.ed, %.noexc50 ], [ %i.dv, %.noexc47 ] ; 2 uses
  %i.dx = load ptr, ptr %1, align 8, !tbaa !105
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(680) %1)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1187

.noexc48:                                         ; preds = %.lr.ph.i.i
  invoke void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(680) %1)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %.noexc48
  %i.ea = load ptr, ptr %1, align 8, !tbaa !105
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(680) %1)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1187

.noexc50:                                         ; preds = %.noexc49
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 24 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.ed, %i.dw
  br i1 %.not.i.i45, label %_ZN6duckdb10Serializer10WriteValueINS_11LogicalTypeEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit.i, label %.lr.ph.i.i

_ZN6duckdb10Serializer10WriteValueINS_11LogicalTypeEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit.i: ; preds = %.noexc50, %.noexc47
  %i.ee = load ptr, ptr %1, align 8, !tbaa !105
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(680) %1)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1187

.noexc51:                                         ; preds = %_ZN6duckdb10Serializer10WriteValueINS_11LogicalTypeEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit.i
  %i.eh = load ptr, ptr %1, align 8, !tbaa !105
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(680) %1)
          to label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1187

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc49, %.noexc48, %.lr.ph.i.i, %_ZNKSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.c, %.noexc51, %_ZN6duckdb10Serializer10WriteValueINS_11LogicalTypeEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit.i, %.noexc46, %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit, %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, %_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EE6resizeEm.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %.lr.ph152
  %i.el = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.preheader unwind label %bb.am ; 5 uses

_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.preheader: ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !284 ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !285 ; 2 uses
  %.not = icmp eq ptr %i.en, %i.eo
  br i1 %.not, label %bb.al, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !312
  %.not154 = icmp eq i64 %i.eq, 0
  br i1 %.not154, label %bb.al, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit
  %i.er = phi ptr [ %i.ex, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit ], [ %i.eo, %.preheader.lr.ph ]
  %i.es = phi ptr [ %i.ey, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit ], [ %i.en, %.preheader.lr.ph ]
  %i.et = phi i64 [ %i.ez, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit ], [ 1, %.preheader.lr.ph ]
  %.016151 = phi i64 [ %i.fa, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %.not155 = icmp eq i64 %i.et, 0
  br i1 %.not155, label %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.not.i.i.i = icmp ult i64 %.016151, %13
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.016151 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  br label %.lr.ph

bb.al:                                            ; preds = %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit, %.preheader.lr.ph, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.preheader
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(168) %7)
          to label %.lr.ph152 unwind label %bb.am

_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.loopexit: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit
  %.pre = load ptr, ptr %i.em, align 8, !tbaa !284
  %.pre160 = load ptr, ptr %i.el, align 8, !tbaa !285
  br label %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit

_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit: ; preds = %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.loopexit, %.preheader
  %i.ex = phi ptr [ %.pre160, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.loopexit ], [ %i.er, %.preheader ] ; 2 uses
  %i.ey = phi ptr [ %.pre, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.loopexit ], [ %i.es, %.preheader ] ; 2 uses
  %i.ez = phi i64 [ %i.gn, %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.loopexit ], [ 0, %.preheader ]
  %i.fa = add nuw i64 %.016151, 1                 ; 2 uses
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = ptrtoint ptr %i.ex to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = sdiv exact i64 %i.fd, 104
  %i.ff = icmp ult i64 %i.fa, %i.fe
  br i1 %i.ff, label %.preheader, label %bb.al, !llvm.loop !1188

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body59

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit
  %.0150 = phi i64 [ %i.gm, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.016151, ptr %i.b, align 8, !tbaa !141
  store i64 %13, ptr %i.c, align 8, !tbaa !141
  br i1 %.not.i.i.i, label %bb.ar, label %.noexc.i, !prof !142

.noexc.i:                                         ; preds = %.lr.ph
  %i.fh = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.fi, ptr %2, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 55, ptr %i.a, align 8, !tbaa !141
  %i.fj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc109 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc109:                                        ; preds = %.noexc.i
  store ptr %i.fj, ptr %2, align 8, !tbaa !120
  %i.fk = load i64, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fj, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !300
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fk
  store i8 0, ptr %i.fm, align 1, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc109
  invoke void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.aq unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %.noexc109
  %.0.i.i.i = phi i1 [ false, %bb.an ], [ true, %.noexc109 ] ; 2 uses
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fp = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fi
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.fp) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i.i, label %bb.ap, label %.body59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i.i, label %bb.ap, label %.body59

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.fh) #24
  br label %.body59

bb.aq:                                            ; preds = %bb.an
  unreachable

bb.ar:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNK6duckdb9DataChunk8GetValueEmm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.el, i64 noundef %.016151, i64 noundef %.0150)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.fr = load ptr, ptr %i.ev, align 8, !tbaa !464 ; 5 uses
  %i.fs = load ptr, ptr %i.ew, align 8, !tbaa !465
  %.not.i.i61 = icmp eq ptr %i.fr, %i.fs
  br i1 %.not.i.i61, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fr, ptr noundef nonnull align 8 dereferenceable(64) %9) #24
  %i.ft = load ptr, ptr %i.ev, align 8, !tbaa !464
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  store ptr %i.fu, ptr %i.ev, align 8, !tbaa !464
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

bb.au:                                            ; preds = %bb.as
  %i.fv = load ptr, ptr %i.eu, align 8, !tbaa !466 ; 5 uses
  %i.fw = ptrtoint ptr %i.fr to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775744
  br i1 %i.fz, label %bb.av, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
          to label %.noexc117 unwind label %.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.au
  %i.ga = ashr exact i64 %i.fy, 6                 ; 3 uses
  %.sroa.speculated.i.i110 = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i110, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 144115188075855871)
  %i.ge = select i1 %i.gc, i64 144115188075855871, i64 %i.gd ; 3 uses
  %.not.i.i111 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i111)
  %i.gf = shl nuw nsw i64 %i.ge, 6
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #28
          to label %.noexc118 unwind label %.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gh, ptr noundef nonnull align 8 dereferenceable(64) %9) #24
  %.not10.i.i.i.i.i112 = icmp eq ptr %i.fv, %i.fr
  br i1 %.not10.i.i.i.i.i112, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i113

.lr.ph.i.i.i.i.i113:                              ; preds = %.noexc118, %.lr.ph.i.i.i.i.i113
  %.012.i.i.i.i.i114 = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i113 ], [ %i.gg, %.noexc118 ] ; 2 uses
  %.0911.i.i.i.i.i115 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i113 ], [ %i.fv, %.noexc118 ] ; 3 uses
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i.i114, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i.i115) #24
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i.i115) #24
  %i.gi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i115, i64 64 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i114, i64 64 ; 2 uses
  %.not.i.i.i.i.i116 = icmp eq ptr %i.gi, %i.fr
  br i1 %.not.i.i.i.i.i116, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i113, !llvm.loop !41

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i113, %.noexc118
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gg, %.noexc118 ], [ %i.gj, %.lr.ph.i.i.i.i.i113 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64
  %.not.i23.i = icmp eq ptr %i.fv, null
  br i1 %.not.i23.i, label %.noexc62, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  call void @_ZdlPv(ptr noundef nonnull %i.fv) #25
  br label %.noexc62

.noexc62:                                         ; preds = %bb.aw, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.gg, ptr %i.eu, align 8, !tbaa !466
  store ptr %i.gk, ptr %i.ev, align 8, !tbaa !464
  %i.gl = getelementptr inbounds nuw [64 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.gl, ptr %i.ew, align 8, !tbaa !465
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc62, %bb.at
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.gm = add nuw i64 %.0150, 1                   ; 2 uses
  %i.gn = load i64, ptr %i.ep, align 8, !tbaa !312 ; 2 uses
  %i.go = icmp ult i64 %i.gm, %i.gn
  br i1 %i.go, label %.lr.ph, label %_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv.exit.loopexit, !llvm.loop !1189

bb.ax:                                            ; preds = %bb.ar
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.av
  %lpad.loopexit.split-lp238 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #24
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ax
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp238, %.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gp, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body59

.body59:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.ap, %bb.am, %bb.ay
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ay ], [ %i.fg, %bb.am ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.ap ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !277 ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i63, label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit65, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i64

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i64: ; preds = %.body59
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.gr) #24
  call void @_ZdlPv(ptr noundef nonnull %i.gr) #25
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit65

_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit65: ; preds = %.body59, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i64
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i119, label %_ZNSt6vectorImSaImEED2Ev.exit.i120, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit65
  call void @_ZdlPv(ptr noundef nonnull %i.gt) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i120

_ZNSt6vectorImSaImEED2Ev.exit.i120:               ; preds = %bb.az, %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit65
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !225 ; 2 uses
  %.not5.i.i.i.i.i.i121 = icmp eq ptr %i.gw, null
  br i1 %.not5.i.i.i.i.i.i121, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i125, label %.lr.ph.i.i.i.i.i.i122

.lr.ph.i.i.i.i.i.i122:                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i120, %.lr.ph.i.i.i.i.i.i122
  %.06.i.i.i.i.i.i123 = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i.i122 ], [ %i.gw, %_ZNSt6vectorImSaImEED2Ev.exit.i120 ] ; 3 uses
  %i.gx = load ptr, ptr %.06.i.i.i.i.i.i123, align 8, !tbaa !163 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i123, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gy) #24
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i123) #25
end_hunk_1
