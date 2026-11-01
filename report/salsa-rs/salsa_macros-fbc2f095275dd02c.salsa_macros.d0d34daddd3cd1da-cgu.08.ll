Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.08?download=true
inline.NumInlined: 112
inline.NumDeleted: 52
begin_hunk_0_@_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyBO_ECshVzvyy7iigg_12salsa_macros:bb.a
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [16 x i8], align 16               ; 4 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 5 uses
  %i.r = alloca [16 x i8], align 16               ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECshVzvyy7iigg_12salsa_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = tail call i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.v, ptr align 8 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.7.0.i.i = phi i64 [ 0, %bb.b ], [ %i.bh, %bb.g ]
  %.pn.i.i = phi i64 [ %i.w, %bb.b ], [ %i.bi, %bb.g ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.aa       ; 3 uses
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.ac, align 1, !noalias !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs9_NtNtCs4NRVxsYgnAr_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.p, i8 range(i8 -1, -127) %i.y), !noalias !29
  %i.ad = load <16 x i8>, ptr %i.p, align 16, !noalias !29
  store <16 x i8> %i.ad, ptr %i.o, align 16, !noalias !29
  call void @_RNvMs1P_NtNtCs4NRVxsYgnAr_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.r, ptr nonnull align 16 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ae = load <2 x i64>, ptr %i.r, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %i.m, align 16, !noalias !30
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr nonnull align 16 %i.m), !noalias !30
  %i.af = load <16 x i8>, ptr %i.n, align 16, !noalias !30
  store <2 x i64> %i.ae, ptr %i.k, align 16, !noalias !30
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.l, ptr nonnull align 16 %i.k), !noalias !30
  %i.ag = load <16 x i8>, ptr %i.l, align 16, !noalias !30
  %i.ah = icmp eq <16 x i8> %i.af, %i.ag
  %i.ai = sext <16 x i1> %i.ah to <16 x i8>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store <16 x i8> %i.ai, ptr %i.i, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.j, ptr nonnull align 16 %i.i)
  %i.aj = load <16 x i8>, ptr %i.j, align 16
  %i.ak = icmp slt <16 x i8> %i.aj, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.i.i = phi i16 [ %i.al, %bb.c ], [ %i.ap, %bb.e ] ; 4 uses
  %.not.i.i = icmp eq i16 %.sroa.06.0.i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i16 %.sroa.06.0.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.06.0.i.i
  %i.aq = add i64 %.sroa.01.0.i.i, %i.an
  %i.ar = and i64 %i.aq, %i.aa
  %i.as = load ptr, ptr %0, align 8
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [24 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24
  %i.aw = call zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCshVzvyy7iigg_12salsa_macros(ptr align 8 %1, ptr nonnull align 8 %i.av)
  br i1 %i.aw, label %bb.h, label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs9_NtNtCs4NRVxsYgnAr_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.h, i8 -1), !noalias !31
  %i.ax = load <16 x i8>, ptr %i.h, align 16, !noalias !31
  store <16 x i8> %i.ax, ptr %i.g, align 16, !noalias !31
  call void @_RNvMs1P_NtNtCs4NRVxsYgnAr_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.q, ptr nonnull align 16 %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ay = load <2 x i64>, ptr %i.q, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %i.e, align 16, !noalias !32
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.f, ptr nonnull align 16 %i.e), !noalias !32
  %i.az = load <16 x i8>, ptr %i.f, align 16, !noalias !32
  store <2 x i64> %i.ay, ptr %i.c, align 16, !noalias !32
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c), !noalias !32
  %i.ba = load <16 x i8>, ptr %i.d, align 16, !noalias !32
  %i.bb = icmp eq <16 x i8> %i.az, %i.ba
  %i.bc = sext <16 x i1> %i.bb to <16 x i8>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <16 x i8> %i.bc, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
  %i.bd = load <16 x i8>, ptr %i.b, align 16
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bg = icmp eq i16 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bh = add i64 %.sroa.7.0.i.i, 16              ; 2 uses
  %i.bi = add i64 %.sroa.01.0.i.i, %i.bh
  br label %bb.c

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECshVzvyy7iigg_12salsa_macros.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = icmp ne ptr %i.bj, null
  br label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECshVzvyy7iigg_12salsa_macros.exit

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.h, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.bk, %bb.h ], [ false, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [56 x i8], align 8                ; 11 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = add i64 %i.p, %1                         ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.p
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp ult i64 %i.t, 8
  %i.v = add i64 %i.t, 1
  %i.w = lshr i64 %i.v, 3
  %i.x = mul nuw i64 %i.w, 7
  %.sroa.02.0.i = select i1 %i.u, i64 %i.t, i64 %i.x ; 2 uses
  %i.y = lshr i64 %.sroa.02.0.i, 1
  %.not.i = icmp ugt i64 %i.q, %i.y
  br i1 %.not.i, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.z = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext true) ; 0 uses
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %.sroa.02.0.i, 1
  %i.ab = call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCsRujiHMkeh3_11proc_macro2(i64 %i.q, i64 %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros(ptr noalias align 8 %i.j, ptr nonnull %i.n, i64 %i.ab)
  %i.ac = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  br i1 %i.ad, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i, label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %.lr.ph.i, %bb.g, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit, %._crit_edge, %bb.e
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.k) #13
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.455.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.455.0.copyload.i.i = load i64, ptr %.sroa.455.0..sroa_idx.i.i, align 8
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 24, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.320.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 16, ptr %.sroa.320.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 9 uses
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %3 = load <2 x i64>, ptr %i.ag, align 8
  store <2 x i64> %3, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store i64 %.sroa.455.0.copyload.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %.val6 = load <2 x i64>, ptr %i.ah, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x i64> %.val6, ptr %i.g, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.h, ptr nonnull align 16 %i.g)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.ai = load <16 x i8>, ptr %i.h, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aj = load i64, ptr %i.o, align 8             ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.al = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit
  %.sroa.0.039 = phi ptr [ %i.ah, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.aj, %.preheader.lr.ph ], [ %i.ba, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit ]
  %.sroa.13.036 = phi i16 [ %i.am, %.preheader.lr.ph ], [ %i.ay, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc, label %._crit_edge

.noexc:                                           ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.an, %.noexc3 ], [ %.sroa.0.039, %.preheader ]
  %.sroa.5.132 = phi i64 [ %i.ar, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val5 = load <2 x i64>, ptr %i.an, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x i64> %.val5, ptr %i.e, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.f, ptr nonnull align 16 %i.e)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3:                                          ; preds = %.noexc
  %i.ao = load <16 x i8>, ptr %i.f, align 16
  %i.ap = icmp sgt <16 x i8> %i.ao, splat (i8 -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %i.ar = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.aq, 0
  br i1 %.not.i2, label %.noexc, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit
  %.pre52 = load i64, ptr %i.o, align 8
  %.pre53 = load i64, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.f
  %i.as = phi i64 [ %.pre53, %._crit_edge40.loopexit ], [ %i.af, %bb.f ]
  %i.at = phi i64 [ %.pre52, %._crit_edge40.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.au = sub i64 %i.as, %i.at
  store i64 %i.au, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  store i64 %i.at, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.k)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.aq, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.ar, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.an, %.noexc3 ]
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i16 %.sroa.13.1.lcssa, -1
  %i.ay = and i16 %i.ax, %.sroa.13.1.lcssa
  %i.az = add i64 %.sroa.5.1.lcssa, %i.aw         ; 2 uses
  %i.ba = add i64 %.sroa.9.037, -1                ; 2 uses
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = sub nsw i64 0, %i.az
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -24
  %.val.i = load ptr, ptr %i.m, align 8
  %i.bf = invoke i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtCsRujiHMkeh3_11proc_macro25IdentECshVzvyy7iigg_12salsa_macros(ptr align 8 %.val.i, ptr nonnull align 8 %i.be)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit: ; preds = %._crit_edge
  %i.bg = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.0.014.i = and i64 %i.bg, %i.bf           ; 3 uses
  %i.bh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.0.014.i
  %.sroa.0.0.copyload.i15.i = load <2 x i64>, ptr %i.bi, align 1, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x i64> %.sroa.0.0.copyload.i15.i, ptr %i.c, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit
  %i.bj = load <16 x i8>, ptr %i.d, align 16
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i16.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i16.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc15, %.noexc13
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.014.i, %.noexc13 ], [ %.sroa.0.0.i12, %.noexc15 ]
  %.lcssa.i = phi i16 [ %i.bl, %.noexc13 ], [ %i.cf, %.noexc15 ]
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add i64 %.sroa.0.0.lcssa.i, %i.bn
  %i.bp = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %i.bq = and i64 %i.bo, %i.bp                    ; 2 uses
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %bb.g, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.val7.i.i = load <2 x i64>, ptr %.val3.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x i64> %.val7.i.i, ptr %i.a, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.bu = load <16 x i8>, ptr %i.b, align 16
  %i.bv = icmp slt <16 x i8> %i.bu, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i5.i = icmp eq i16 %i.bw, 0
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.by
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.pre51 = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit

.lr.ph.i:                                         ; preds = %.noexc13, %.noexc15
  %.sroa.0.018.i = phi i64 [ %.sroa.0.0.i12, %.noexc15 ], [ %.sroa.0.014.i, %.noexc13 ]
  %.sroa.5.017.i = phi i64 [ %i.bz, %.noexc15 ], [ 0, %.noexc13 ]
  %i.bz = add i64 %.sroa.5.017.i, 16              ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.0.018.i
  %.sroa.0.0.i12 = and i64 %i.ca, %i.bg           ; 3 uses
  %i.cb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.cc, align 1, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %i.c, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %.lr.ph.i
  %i.cd = load <16 x i8>, ptr %i.d, align 16
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit: ; preds = %.noexc14, %._crit_edge.i
  %i.cg = phi i64 [ %.pre51, %.noexc14 ], [ %i.bp, %._crit_edge.i ]
  %i.ch = phi ptr [ %.pre, %.noexc14 ], [ %.val3.i, %._crit_edge.i ]
  %.sroa.0.0.i4.i = phi i64 [ %.sroa.3.0.i6.i, %.noexc14 ], [ %i.bq, %._crit_edge.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.0.0.i4.i
  %i.cj = lshr i64 %i.bf, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i4.i, -16
  %i.cm = and i64 %i.cg, %i.cl
  store i8 %i.ck, ptr %i.ci, align 1
  %i.cn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.ck, ptr %i.cp, align 1
  %i.cq = load ptr, ptr %0, align 8
  %.neg.i.i = mul i64 %i.az, -24
  %i.cr = getelementptr i8, ptr %i.cq, i64 %.neg.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.neg63.i.i = mul i64 %.sroa.0.0.i4.i, -24
  %i.cu = getelementptr i8, ptr %i.ct, i64 %.neg63.i.i
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cv, ptr noundef nonnull align 1 dereferenceable(24) %i.cs, i64 24, i1 false)
  %i.cw = icmp eq i64 %i.ba, 0
  br i1 %i.cw, label %._crit_edge40.loopexit, label %.preheader

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp14

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i: ; preds = %bb.d, %._crit_edge40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

bb.j:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0, ptr nonnull %i.l, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros, ptr nonnull @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCshVzvyy7iigg_12salsa_macros)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.c, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i, %bb.j
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [56 x i8], align 8                ; 11 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = add nuw i64 %i.p, 1
  %i.r = icmp eq i64 %i.p, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp ult i64 %i.t, 8
  %i.v = add i64 %i.t, 1
  %i.w = lshr i64 %i.v, 3
  %i.x = mul nuw i64 %i.w, 7
  %.sroa.02.0.i = select i1 %i.u, i64 %i.t, i64 %i.x ; 2 uses
  %i.y = lshr i64 %.sroa.02.0.i, 1
  %.not.i.not = icmp ult i64 %i.p, %i.y
  br i1 %.not.i.not, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext true) ; 0 uses
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %.sroa.02.0.i, 1
  %i.ab = call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCsRujiHMkeh3_11proc_macro2(i64 %i.q, i64 %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros(ptr noalias align 8 %i.j, ptr nonnull %i.n, i64 %i.ab)
  %i.ac = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  br i1 %i.ad, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i, label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %.lr.ph.i, %bb.g, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit, %._crit_edge, %bb.e
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.k) #13
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.455.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.455.0.copyload.i.i = load i64, ptr %.sroa.455.0..sroa_idx.i.i, align 8
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 24, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.320.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 16, ptr %.sroa.320.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 9 uses
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %2 = load <2 x i64>, ptr %i.ag, align 8
  store <2 x i64> %2, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store i64 %.sroa.455.0.copyload.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %.val6 = load <2 x i64>, ptr %i.ah, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x i64> %.val6, ptr %i.g, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.h, ptr nonnull align 16 %i.g)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.ai = load <16 x i8>, ptr %i.h, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aj = load i64, ptr %i.o, align 8             ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.al = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit
  %.sroa.0.039 = phi ptr [ %i.ah, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.aj, %.preheader.lr.ph ], [ %i.ba, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit ]
  %.sroa.13.036 = phi i16 [ %i.am, %.preheader.lr.ph ], [ %i.ay, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc, label %._crit_edge

.noexc:                                           ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.an, %.noexc3 ], [ %.sroa.0.039, %.preheader ]
  %.sroa.5.132 = phi i64 [ %i.ar, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val5 = load <2 x i64>, ptr %i.an, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x i64> %.val5, ptr %i.e, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.f, ptr nonnull align 16 %i.e)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3:                                          ; preds = %.noexc
  %i.ao = load <16 x i8>, ptr %i.f, align 16
  %i.ap = icmp sgt <16 x i8> %i.ao, splat (i8 -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %i.ar = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.aq, 0
  br i1 %.not.i2, label %.noexc, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit
  %.pre52 = load i64, ptr %i.o, align 8
  %.pre53 = load i64, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.f
  %i.as = phi i64 [ %.pre53, %._crit_edge40.loopexit ], [ %i.af, %bb.f ]
  %i.at = phi i64 [ %.pre52, %._crit_edge40.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.au = sub i64 %i.as, %i.at
  store i64 %i.au, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  store i64 %i.at, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.k)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.aq, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.ar, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.an, %.noexc3 ]
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i16 %.sroa.13.1.lcssa, -1
  %i.ay = and i16 %i.ax, %.sroa.13.1.lcssa
  %i.az = add i64 %.sroa.5.1.lcssa, %i.aw         ; 2 uses
  %i.ba = add i64 %.sroa.9.037, -1                ; 2 uses
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = sub nsw i64 0, %i.az
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -24
  %.val.i = load ptr, ptr %i.m, align 8
  %i.bf = invoke i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECshVzvyy7iigg_12salsa_macros(ptr align 8 %.val.i, ptr nonnull align 8 %i.be)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit: ; preds = %._crit_edge
  %i.bg = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.0.014.i = and i64 %i.bg, %i.bf           ; 3 uses
  %i.bh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.0.014.i
  %.sroa.0.0.copyload.i15.i = load <2 x i64>, ptr %i.bi, align 1, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x i64> %.sroa.0.0.copyload.i15.i, ptr %i.c, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit
  %i.bj = load <16 x i8>, ptr %i.d, align 16
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i16.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i16.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc15, %.noexc13
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.014.i, %.noexc13 ], [ %.sroa.0.0.i12, %.noexc15 ]
  %.lcssa.i = phi i16 [ %i.bl, %.noexc13 ], [ %i.cf, %.noexc15 ]
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add i64 %.sroa.0.0.lcssa.i, %i.bn
  %i.bp = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %i.bq = and i64 %i.bo, %i.bp                    ; 2 uses
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %bb.g, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.val7.i.i = load <2 x i64>, ptr %.val3.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x i64> %.val7.i.i, ptr %i.a, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.bu = load <16 x i8>, ptr %i.b, align 16
  %i.bv = icmp slt <16 x i8> %i.bu, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i5.i = icmp eq i16 %i.bw, 0
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.by
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.pre51 = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit

.lr.ph.i:                                         ; preds = %.noexc13, %.noexc15
  %.sroa.0.018.i = phi i64 [ %.sroa.0.0.i12, %.noexc15 ], [ %.sroa.0.014.i, %.noexc13 ]
  %.sroa.5.017.i = phi i64 [ %i.bz, %.noexc15 ], [ 0, %.noexc13 ]
  %i.bz = add i64 %.sroa.5.017.i, 16              ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.0.018.i
  %.sroa.0.0.i12 = and i64 %i.ca, %i.bg           ; 3 uses
  %i.cb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.cc, align 1, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %i.c, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %.lr.ph.i
  %i.cd = load <16 x i8>, ptr %i.d, align 16
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit: ; preds = %.noexc14, %._crit_edge.i
  %i.cg = phi i64 [ %.pre51, %.noexc14 ], [ %i.bp, %._crit_edge.i ]
  %i.ch = phi ptr [ %.pre, %.noexc14 ], [ %.val3.i, %._crit_edge.i ]
  %.sroa.0.0.i4.i = phi i64 [ %.sroa.3.0.i6.i, %.noexc14 ], [ %i.bq, %._crit_edge.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.0.0.i4.i
  %i.cj = lshr i64 %i.bf, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i4.i, -16
  %i.cm = and i64 %i.cg, %i.cl
  store i8 %i.ck, ptr %i.ci, align 1
  %i.cn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.ck, ptr %i.cp, align 1
  %i.cq = load ptr, ptr %0, align 8
  %.neg.i.i = mul i64 %i.az, -24
  %i.cr = getelementptr i8, ptr %i.cq, i64 %.neg.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.neg63.i.i = mul i64 %.sroa.0.0.i4.i, -24
  %i.cu = getelementptr i8, ptr %i.ct, i64 %.neg63.i.i
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cv, ptr noundef nonnull align 1 dereferenceable(24) %i.cs, i64 24, i1 false)
  %i.cw = icmp eq i64 %i.ba, 0
  br i1 %i.cw, label %._crit_edge40.loopexit, label %.preheader

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

end_hunk_0
