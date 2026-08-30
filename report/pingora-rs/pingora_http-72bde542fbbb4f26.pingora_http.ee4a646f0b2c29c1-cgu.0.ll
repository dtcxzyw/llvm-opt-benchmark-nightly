Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_http-72bde542fbbb4f26.pingora_http.ee4a646f0b2c29c1-cgu.0?download=true
inline.NumInlined: 237
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap8try_growCskspKcFIsYcD_12pingora_http:bb.a
  %.sroa.013.054 = phi ptr [ %i.bh, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit ], [ %i.ar, %bb.i ] ; 3 uses
  %i.av = load i16, ptr %.sroa.013.054, align 2, !noundef !19 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.054, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !noundef !19 ; 2 uses
  %.not.i = icmp eq i16 %i.av, -1
  br i1 %.not.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph55
  %i.ay = and i16 %i.ax, %i.ah
  %i.az = zext i16 %i.ay to i64
  br label %bb.l

bb.l:                                             ; preds = %.backedge66, %bb.k
  %.sroa.01.0.i = phi i64 [ %i.az, %bb.k ], [ %.sroa.01.0.i.be, %.backedge66 ] ; 4 uses
  %i.ba = icmp ult i64 %.sroa.01.0.i, %i.ae
  br i1 %i.ba, label %bb.m, label %.backedge66

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !327, !noundef !19
  %.not7.i = icmp eq i16 %i.bc, -1
  br i1 %.not7.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge66

.backedge66:                                      ; preds = %bb.n, %bb.l
  %.sroa.01.0.i.be = phi i64 [ %i.bd, %bb.n ], [ 0, %bb.l ]
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i ; 2 uses
  store i16 %i.av, ptr %i.be, align 2, !noalias !327
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %i.ax, ptr %i.bf, align 2, !noalias !327
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit

bb.p:                                             ; preds = %._crit_edge, %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.j, label %common.resume, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.p
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.idx, i64 noundef 2) #22
  br label %common.resume

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.o, %.lr.ph55
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.054, i64 4 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %.preheader, label %.lr.ph55

.lr.ph57:                                         ; preds = %.preheader, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit33
  %.sroa.016.056 = phi ptr [ %i.cb, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit33 ], [ %i.f, %.preheader ] ; 3 uses
  %i.bj = load i16, ptr %.sroa.016.056, align 2, !noundef !19 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.016.056, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !noundef !19 ; 2 uses
  %.not.i29 = icmp eq i16 %i.bj, -1
  br i1 %.not.i29, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit33, label %bb.q

bb.q:                                             ; preds = %.lr.ph57
  %i.bm = and i16 %i.ah, %i.bl
  %i.bn = zext i16 %i.bm to i64
  br label %bb.r

bb.r:                                             ; preds = %.backedge, %bb.q
  %.sroa.01.0.i30 = phi i64 [ %i.bn, %bb.q ], [ %.sroa.01.0.i30.be, %.backedge ] ; 4 uses
  %i.bo = icmp ult i64 %.sroa.01.0.i30, %i.ae
  br i1 %i.bo, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i30
  %i.bq = load i16, ptr %i.bp, align 2, !noalias !330, !noundef !19
  %.not7.i32 = icmp eq i16 %i.bq, -1
  br i1 %.not7.i32, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nuw i64 %.sroa.01.0.i30, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.t, %bb.r
  %.sroa.01.0.i30.be = phi i64 [ %i.br, %bb.t ], [ 0, %bb.r ]
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i30 ; 2 uses
  store i16 %i.bj, ptr %i.bs, align 2, !noalias !330
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i16 %i.bl, ptr %i.bt, align 2, !noalias !330
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit33

._crit_edge:                                      ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit33, %.preheader
  %i.bu = lshr i64 %i.ae, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !19 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 88686269585142076
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, %i.bu
  %i.ca = sub i64 %i.ae, %i.bz
  invoke void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bv, i64 noundef %i.bx, i64 noundef %i.ca, i64 noundef 8, i64 noundef 104)
          to label %bb.v unwind label %bb.p

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCskspKcFIsYcD_12pingora_http.exit33: ; preds = %bb.u, %.lr.ph57
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.016.056, i64 4 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ar
  br i1 %i.cc, label %._crit_edge, label %.lr.ph57

bb.v:                                             ; preds = %._crit_edge
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit35, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i34

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i34: ; preds = %bb.v
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.idx, i64 noundef 2) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit35

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit35: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i34, %bb.v, %bb.a
  ret i1 %i.d

bb.w:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdIBx_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1E_6marker4SendNtB2X_4SyncEL_EINtNtB1E_4hash18BuildHasherDefaultNtB2f_8IdHasherEEE13new_uninit_inCskspKcFIsYcD_12pingora_http() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #22 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !205

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrE13new_uninit_inCskspKcFIsYcD_12pingora_http() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #22 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !205

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @17, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBO_6marker4SendNtB2C_4SyncEL_EINtNtBO_4hash18BuildHasherDefaultNtB1U_8IdHasherEENtNtBO_5clone5Clone5cloneCskspKcFIsYcD_12pingora_http(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !333, !noalias !336, !noundef !19 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.d, label %bb.c, !prof !205

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !269

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %2 = icmp eq i64 %i.j, 0
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !338
  %i.m = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !noalias !338 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !338
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.p = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !338
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.p, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCskspKcFIsYcD_12pingora_http.exit.i

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.m, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.h
  %i.q = icmp ult i64 %i.d, 8
  %i.r = lshr i64 %i.f, 3
  %i.s = mul nuw nsw i64 %i.r, 7
  %.sroa.07.0.i.i.i = select i1 %i.q, i64 %i.d, i64 %i.s
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCskspKcFIsYcD_12pingora_http.exit.i

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCskspKcFIsYcD_12pingora_http.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.f ], [ %i.i, %bb.g ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.f ], [ %.sroa.07.0.i.i.i, %bb.g ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.f ], [ %i.d, %bb.g ]
  %.sroa.0.0.i = phi ptr [ null, %bb.f ], [ %3, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !343
  store ptr %.sroa.0.0.i, ptr %i.a, align 8, !noalias !343
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !343
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !343
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !354, !noalias !355, !nonnull !19, !noundef !19 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.t, i64 %.pre-phi.i, i1 false), !noalias !356
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !354, !noalias !355, !noundef !19 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCskspKcFIsYcD_12pingora_http.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !357
  %i.x = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = ptrtoint ptr %i.t to i64
  br label %bb.i

bb.h:                                             ; preds = %.loopexit.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3t_4SyncEL_EEEENCNvMse_B1y_B1v_15clone_from_impl0EECskspKcFIsYcD_12pingora_http(i64 %.sroa.011.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.a) #20
          to label %.body.i unwind label %bb.k, !noalias !360

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.sroa.011.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.az, %bb.j ]
  %.sroa.012.027.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.sroa.012.1.i.i.i, %bb.j ] ; 2 uses
  %.sroa.6.026.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.j ] ; 2 uses
  %.sroa.813.025.i.i.i = phi i16 [ %i.y, %.lr.ph.i.i.i ], [ %i.aq, %bb.j ] ; 2 uses
  %.sroa.1014.024.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %i.ao, %bb.j ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.813.025.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.ac = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.6.026.i.i.i, %bb.i ] ; 2 uses
  %i.ad = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.012.027.i.i.i, %bb.i ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !361
  %i.ae = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -512 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ae to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.026.i.i.i, %bb.i ], [ %i.ag, %.lr.ph.i.i.i.i ]
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.027.i.i.i, %bb.i ], [ %i.af, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.813.025.i.i.i, %bb.i ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [32 x i8], ptr %.sroa.012.1.i.i.i, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !364, !noalias !356
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %i.an = invoke { ptr, ptr } @_RNvXs2_NtCs84JG9zk80ZV_4http10extensionsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB5_8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtB1u_5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.j unwind label %bb.h, !noalias !356 ; 2 uses

bb.j:                                             ; preds = %.loopexit.i.i.i
  %i.ao = add i64 %.sroa.1014.024.i.i.i, -1       ; 2 uses
  %i.ap = add i16 %.lcssa.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.lcssa.i.i.i.i
  %i.ar = extractvalue { ptr, ptr } %i.an, 0
  %i.as = extractvalue { ptr, ptr } %i.an, 1
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = sub i64 %i.aa, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !noalias !356
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.ax, i64 -16
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !356
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store ptr %i.as, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.az = add nsw i64 %i.av, 1
  %i.ba = icmp eq i64 %i.ao, 0
  br i1 %i.ba, label %.loopexit.i, label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !356
  unreachable

bb.l:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @21, i64 32, i1 false), !noalias !333
  br label %_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtBT_5clone5Clone5cloneCskspKcFIsYcD_12pingora_http.exit

.body.i:                                          ; preds = %bb.h
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2U_4SyncEL_EEEECskspKcFIsYcD_12pingora_http.exit.i unwind label %bb.m, !noalias !343

.loopexit.i:                                      ; preds = %bb.j, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCskspKcFIsYcD_12pingora_http.exit.i
  store i64 %i.v, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !371, !noalias !360
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !354, !noalias !355, !noundef !19
  store i64 %i.bd, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !371, !noalias !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !343
  br label %_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtBT_5clone5Clone5cloneCskspKcFIsYcD_12pingora_http.exit

bb.m:                                             ; preds = %.body.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !343
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2U_4SyncEL_EEEECskspKcFIsYcD_12pingora_http.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.ab

_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtBT_5clone5Clone5cloneCskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.l, %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_18IntoCaseHeaderName21into_case_header_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsH_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %.val = load i8, ptr %i.a, align 1, !range !372, !noundef !19 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskspKcFIsYcD_12pingora_http, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskspKcFIsYcD_12pingora_http.43, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !373, !noalias !376, !noundef !19
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !373, !noalias !376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !373, !noalias !376, !noundef !19 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !378, !noalias !373
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !378, !noalias !373
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
end_hunk_0
