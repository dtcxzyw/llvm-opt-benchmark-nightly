Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_authz-bed056875ae764eb.influxdb3_authz.7fb45a575f2b25fb-cgu.2?download=true
inline.NumInlined: 180
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB10_20PermissionAttributesEE14reserve_rehashNCINvNtBa_3map11make_hasherBY_B1Z_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0EB12_:bb.a
  %.val2.i.i33 = load <16 x i8>, ptr %.val7, align 16
  %i.hm = icmp slt <16 x i8> %.val2.i.i33, zeroinitializer
  %i.hn = bitcast <16 x i1> %i.hm to i16          ; 2 uses
  %.not.i6.i34 = icmp ne i16 %i.hn, 0
  %i.ho = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hn, i1 true)
  %i.hp = zext nneg i16 %i.ho to i64
  call void @llvm.assume(i1 %.not.i6.i34)
  br label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit40

.lr.ph.i35:                                       ; preds = %bb.w, %.lr.ph.i35
  %.sroa.0.010.i36 = phi i64 [ %.sroa.0.0.i37, %.lr.ph.i35 ], [ %.sroa.0.07.i26, %bb.w ]
  %i.hq = phi i64 [ %i.hr, %.lr.ph.i35 ], [ 0, %bb.w ]
  %i.hr = add i64 %i.hq, 16                       ; 2 uses
  %i.hs = add i64 %i.hr, %.sroa.0.010.i36
  %.sroa.0.0.i37 = and i64 %i.hs, %.val8          ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i37
  %.sroa.0.0.copyload.i6.i38 = load <16 x i8>, ptr %i.ht, align 1, !noalias !173
  %i.hu = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i38, zeroinitializer
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 2 uses
  %.not.i.i39 = icmp eq i16 %i.hv, 0
  br i1 %.not.i.i39, label %.lr.ph.i35, label %._crit_edge.i29

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit40: ; preds = %bb.x, %._crit_edge.i29
  %.sroa.0.0.i5.i32 = phi i64 [ %i.hp, %bb.x ], [ %i.hi, %._crit_edge.i29 ] ; 4 uses
  %i.hw = sub i64 %.sroa.04.0.i58, %.sroa.0.07.i26
  %i.hx = sub i64 %.sroa.0.0.i5.i32, %.sroa.0.07.i26
  %i.hy = xor i64 %i.hx, %i.hw
  %.unshifted.i = and i64 %i.hy, %.val8
  %i.hz = icmp ult i64 %.unshifted.i, 16
  br i1 %i.hz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit40
  %.neg12.i = xor i64 %.sroa.0.0.i5.i32, -1
  %.neg13.i = shl i64 %.neg12.i, 5
  %i.ia = getelementptr inbounds i8, ptr %.val7, i64 %.neg13.i ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i5.i32 ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !noalias !141, !noundef !9
  %i.id = lshr i64 %i.hb, 57
  %i.ie = trunc nuw nsw i64 %i.id to i8           ; 2 uses
  %i.if = add i64 %.sroa.0.0.i5.i32, -16
  %i.ig = and i64 %i.if, %.val8
  store i8 %i.ie, ptr %i.ib, align 1, !noalias !141
  %i.ih = load ptr, ptr %0, align 8, !noalias !141, !nonnull !9, !noundef !9
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.ig
  %i.ij = getelementptr i8, ptr %i.ii, i64 16
  store i8 %i.ie, ptr %i.ij, align 1, !noalias !141
  %i.ik = icmp eq i8 %i.ic, -1
  br i1 %i.ik, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit40
  %i.il = lshr i64 %i.hb, 57
  %i.im = trunc nuw nsw i64 %i.il to i8           ; 2 uses
  %i.in = add i64 %.sroa.04.0.i58, -16
  %i.io = and i64 %.val8, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.04.0.i58
  store i8 %i.im, ptr %i.ip, align 1, !noalias !141
  %i.iq = load ptr, ptr %0, align 8, !noalias !141, !nonnull !9, !noundef !9
  %i.ir = getelementptr i8, ptr %i.iq, i64 %i.io
  %i.is = getelementptr i8, ptr %i.ir, i64 16
  store i8 %i.im, ptr %i.is, align 1, !noalias !141
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.it = add i64 %.sroa.04.0.i58, -16
  %i.iu = load i64, ptr %i.k, align 8, !noalias !141, !noundef !9
  %i.iv = and i64 %i.iu, %i.it
  %i.iw = load ptr, ptr %0, align 8, !noalias !141, !nonnull !9, !noundef !9
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.sroa.04.0.i58
  store i8 -1, ptr %i.ix, align 1, !noalias !141
  %i.iy = load ptr, ptr %0, align 8, !noalias !141, !nonnull !9, !noundef !9
  %i.iz = getelementptr i8, ptr %i.iy, i64 %i.iv
  %i.ja = getelementptr i8, ptr %i.iz, i64 16
  store i8 -1, ptr %i.ja, align 1, !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ia, ptr noundef nonnull align 1 dereferenceable(32) %i.fj, i64 32, i1 false), !noalias !141
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsaXLCtUcOqO5_15influxdb3_authz(ptr noundef nonnull %i.fj, ptr noundef nonnull %i.ia, i64 noundef 4)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.v

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.q
  %exitcond.not = icmp eq i64 %.sroa.04.0.i58, %i.fb
  br i1 %exitcond.not, label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %bb.q

bb.ad:                                            ; preds = %bb.v
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !141
  unreachable

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.ac
  %.pre = load i64, ptr %i.k, align 8, !noalias !141 ; 2 uses
  %.pre81 = add i64 %.pre, 1
  %i.jc = lshr i64 %.pre81, 3
  %i.jd = mul nuw i64 %i.jc, 7
  br label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.jd, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.je = phi i64 [ %.pre, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.jf = icmp ult i64 %i.je, 8
  %.sroa.01.0.i = select i1 %i.jf, i64 %i.je, i64 %.pre-phi
  %i.jg = load i64, ptr %i.g, align 8, !noalias !141, !noundef !9
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ji = sub i64 %.sroa.01.0.i, %i.jg
  store i64 %i.ji, ptr %i.jh, align 8, !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !139
  br label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsaXLCtUcOqO5_15influxdb3_authz.exit

bb.ae:                                            ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !176
  unreachable

_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsaXLCtUcOqO5_15influxdb3_authz.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsaXLCtUcOqO5_15influxdb3_authz.exit, %bb.c, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.x, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsaXLCtUcOqO5_15influxdb3_authz.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsaXLCtUcOqO5_15influxdb3_authz.exit ]
  %i.jj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.jk = insertvalue { i64, i64 } %i.jj, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.jk
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB1n_20PermissionAttributesENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #19
  br label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsaXLCtUcOqO5_15influxdb3_authz(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 32, 41) %1, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %2, 8
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.b, label %bb.l, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 4
  %..i = add nuw nsw i64 %i.c, 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = shl nuw i64 %2, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.4.0.i.ph = phi i64 [ %i.i, %bb.d ], [ %..i, %bb.c ] ; 5 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 32, 41) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.m = icmp ugt i64 %i.l, -16
  br i1 %i.m, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i64 %i.l, 15
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.q = add i64 %i.p, %i.o                       ; 5 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i = or i1 %i.r, %i.s
  br i1 %or.cond.i, label %bb.h, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i, !prof !177

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i: ; preds = %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !178
  %i.t = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !178 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %3, label %bb.i, label %bb.o, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !178
  unreachable

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i
  br i1 %3, label %bb.k, label %bb.o, !prof !10

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.q) #20, !noalias !178
  unreachable

bb.l:                                             ; preds = %bb.b
  br i1 %3, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.j, %bb.h
  %.sroa.11.0.ph = phi i64 [ 0, %bb.h ], [ 16, %bb.j ]
  %.sroa.7.0.ph = phi i64 [ undef, %bb.h ], [ %i.q, %bb.j ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0.ph, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.ph, ptr %i.w, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i
  %4 = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.x = add nsw i64 %.sroa.4.0.i.ph, -1          ; 2 uses
  %i.y = lshr i64 %.sroa.4.0.i.ph, 3
  %i.z = mul nuw nsw i64 %i.y, 7
  %.sroa.02.0.i = select i1 %4, i64 %i.x, i64 %i.z
  %5 = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %5, i8 -1, i64 %i.p, i1 false)
  store ptr %5, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: alwaysinline nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr13drop_in_placeTNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB20_20PermissionAttributesEEEB22_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !alias.scope !181, !noundef !9 ; 3 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB1V_20PermissionAttributesEEEB1X_.exit, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val1, 5                        ; 2 uses
  %i.e = add i64 %i.d, 32
  %i.f = add i64 %i.d, 47                         ; 2 uses
  %i.g = icmp uge i64 %i.f, %i.e
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.f, -32                        ; 3 uses
  %i.i = add i64 %.val1, 17
  %i.j = add i64 %i.i, %i.h                       ; 4 uses
  %i.k = icmp uge i64 %i.j, %i.h
  %i.l = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %i.k)
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB1V_20PermissionAttributesEEEB1X_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.n = sub nsw i64 0, %i.h
  %i.o = getelementptr inbounds i8, ptr %.val, i64 %i.n
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !184
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB1V_20PermissionAttributesEEEB1X_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB1V_20PermissionAttributesEEEB1X_.exit: ; preds = %bb.a, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !187 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !187, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz.exit, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !193, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !193, !noundef !9 ; 5 uses
  %i.h = add i64 %.val1.i, 1
  %i.i = mul nuw i64 %i.e, %i.h                   ; 2 uses
  %i.j = add i64 %i.g, -1
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub i64 0, %i.g
  %i.n = and i64 %i.k, %i.m                       ; 3 uses
  %i.o = add i64 %.val1.i, 17
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %i.q = icmp uge i64 %i.p, %i.n
  %i.r = sub nuw i64 -9223372036854775808, %i.g
  %i.s = icmp ule i64 %i.p, %i.r
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.v = sub nsw i64 0, %i.n
  %i.w = getelementptr inbounds i8, ptr %.val.i, i64 %i.v
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.g) #19, !noalias !193
  br label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz.exit

_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz.exit: ; preds = %bb.a, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardQNtNtNtBG_3raw5inner13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !194, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !194
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !194 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !194, !noundef !9 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.04.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !194, !nonnull !9, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !194, !noundef !9
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.k = add i64 %.sroa.04.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !194, !noundef !9
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !194
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !194, !nonnull !9, !noundef !9
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !194
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !194, !nonnull !9, !noundef !9
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg6.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !194, !inline_history !197
  %i.s = load i64, ptr %i.e, align 8, !noalias !194, !noundef !9
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !194
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz.exit, label %bb.c

_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !194, !noundef !9 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.01.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !194, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.01.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !194
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsaXLCtUcOqO5_15influxdb3_authz.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsaXLCtUcOqO5_15influxdb3_authz.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
