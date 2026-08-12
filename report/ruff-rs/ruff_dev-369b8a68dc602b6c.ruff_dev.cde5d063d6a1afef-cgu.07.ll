inline.NumInlined: 1019
inline.NumDeleted: 398
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs1_NtCsikBMbUdt2EH_10imara_diff6internINtB6_13InternedInputReE3newB10_ECshFZivb7RUAJ_8ruff_dev:bb.a
  br i1 %i.y, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit10, label %bb.e

bb.e:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !7
  %i.z = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 4) #27, !noalias !7 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit10

bb.g:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %i.f) #29
          to label %bb.z unwind label %bb.x

bb.h:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.x) #28
          to label %bb.y unwind label %bb.h

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit10: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit, %bb.f
  %.sroa.1019.0 = phi i64 [ %i.ab, %bb.f ], [ 4, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit ]
  %i.ad = inttoptr i64 %.sroa.1019.0 to ptr
  store i64 %i.o, ptr %i.e, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.af, align 8
  %i.ag = add nuw nsw i64 %i.o, %i.m              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10
  %i.ah = shl nuw nsw i64 %i.ag, 4                ; 2 uses
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit10
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !13
  %i.aj = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !13 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = ptrtoint ptr %i.aj to i64
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit.i

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ah) #28
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.l
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %bb.k, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit10
  %.sroa.10.0.i = phi i64 [ %i.al, %bb.k ], [ 8, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit10 ]
  %i.am = inttoptr i64 %.sroa.10.0.i to ptr
  store i64 %i.ag, ptr %i.d, align 8, !noalias !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.am, ptr %i.an, align 8, !noalias !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ao, align 8, !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10
  invoke fastcc void @_RINvMsa_NtCscpvtCwnncCK_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 0, 8589934591) %i.ag)
          to label %_RNvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB5_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit.i unwind label %bb.n

bb.m:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.ap, %bb.n ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body unwind label %bb.r, !noalias !10

bb.n:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RNvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB5_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !10 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i64 16, i1 false), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10
  %i.aq = invoke noundef i64 @_RNvNtCs1jZKJHM5Gxz_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.p unwind label %bb.o, !noalias !10

bb.o:                                             ; preds = %bb.q, %_RNvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB5_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscpvtCwnncCK_9hashbrown5table9HashTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenEECshFZivb7RUAJ_8ruff_dev(ptr %.sroa.0.0.copyload.i, i64 %.sroa.5.0.copyload.i) #29, !noalias !10
  br label %bb.m

bb.p:                                             ; preds = %_RNvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB5_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit.i
  %i.as = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1jZKJHM5Gxz_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !10
  %i.at = icmp eq i8 %i.as, 2
  br i1 %i.at, label %bb.u, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs_NtNtCs1jZKJHM5Gxz_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.u unwind label %bb.o, !noalias !10

bb.r:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !10
  unreachable

bb.s:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.s ], [ %.pn.i, %bb.m ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.g unwind label %bb.x

bb.t:                                             ; preds = %bb.v, %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsikBMbUdt2EH_10imara_diff6intern13InternedInputReEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(112) %i.g) #29
          to label %bb.z unwind label %bb.x

bb.u:                                             ; preds = %bb.p, %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 %i.aq, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.az, align 8, !alias.scope !17, !noalias !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22
  store ptr %1, ptr %i.b, align 8, !alias.scope !23, !noalias !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.ba, align 8, !alias.scope !23, !noalias !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ax, ptr %i.bb, align 8, !alias.scope !23, !noalias !26
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtBU_7sources5LinesNCINvMs1_BS_INtBS_13InternedInputReE13update_beforeB2H_E0EE11spec_extendCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 0, ptr %i.bc, align 8, !alias.scope !29, !noalias !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  store ptr %3, ptr %i.a, align 8, !alias.scope !35, !noalias !38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %i.bd, align 8, !alias.scope !35, !noalias !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ax, ptr %i.be, align 8, !alias.scope !35, !noalias !38
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtBU_7sources5LinesNCINvMs1_BS_INtBS_13InternedInputReE12update_afterB2H_E0EE11spec_extendCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.x:                                             ; preds = %bb.t, %.body, %bb.g
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.y:                                             ; preds = %bb.i
  unreachable

bb.z:                                             ; preds = %bb.g, %bb.t
  %.pn2 = phi { ptr, i32 } [ %i.aw, %bb.t ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %.pn2
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB6_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE14reserve_rehashNCNvMs3_BR_INtBR_8InternerReE6interns_0ECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !41, !noalias !44, !noundef !46 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.w, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !41, !noalias !44, !noundef !46 ; 3 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 7 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i.not = icmp ult i64 %i.f, %i.n
  br i1 %.not.i.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = tail call i64 @llvm.umax.i64(i64 %.sroa.03.0.i, i64 %i.f)
  %.sroa.0.0.i13 = add nuw i64 %3, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51
  call fastcc void @_RINvMsa_NtCscpvtCwnncCK_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %.sroa.0.0.i13)
  %i.o = load ptr, ptr %i.b, align 8, !noalias !51, !noundef !46 ; 9 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !51 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !51 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51
  br label %_RINvMsa_NtCscpvtCwnncCK_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECshFZivb7RUAJ_8ruff_dev.exit

.loopexit.a:                                      ; preds = %_RNCNvMs3_NtCsikBMbUdt2EH_10imara_diff6internINtB7_8InternerReE6interns_0CshFZivb7RUAJ_8ruff_dev.exit.i
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.a:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.a, %.loopexit.a
  %lpad.phi.a = phi { ptr, i32 } [ %lpad.loopexit.a, %.loopexit.a ], [ %lpad.loopexit.split-lp.a, %.loopexit.split-lp.a ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscpvtCwnncCK_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(56) %i.c) #29
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51
  store ptr %i.d, ptr %i.c, align 8, !noalias !51
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 4, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.o, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.r, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !53, !noalias !54, !noundef !46 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge80, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !alias.scope !53, !noalias !54, !nonnull !46, !noundef !46 ; 2 uses
  %.val538 = load <16 x i8>, ptr %i.w, align 16
  %i.x = icmp sgt <16 x i8> %.val538, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !55, !noundef !46 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !46
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.j
  %.sroa.13.079 = phi i16 [ %i.y, %.preheader.lr.ph ], [ %i.bd, %bb.j ] ; 2 uses
  %.sroa.031.078 = phi ptr [ %i.w, %.preheader.lr.ph ], [ %.sroa.031.1.lcssa, %bb.j ] ; 2 uses
  %.sroa.5.077 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.j ] ; 2 uses
  %.sroa.9.076 = phi i64 [ %i.u, %.preheader.lr.ph ], [ %i.bf, %bb.j ]
  %.not.i369 = icmp eq i16 %.sroa.13.079, 0
  br i1 %.not.i369, label %.noexc4, label %._crit_edge72

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.031.171 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.031.078, %.preheader ] ; 2 uses
  %.sroa.5.170 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.077, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.171) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.031.171, i64 16 ; 3 uses
  %.val39 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val39, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.170, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge72

._crit_edge80.loopexit:                           ; preds = %bb.j
  %.pre103.a = load i64, ptr %i.e, align 8, !alias.scope !53, !noalias !54
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %bb.f
  %i.ah = phi i64 [ %.pre103.a, %._crit_edge80.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.ai = sub i64 %i.t, %i.ah
  store i64 %i.ai, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  store i64 %i.ah, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCscpvtCwnncCK_9hashbrown3raw13RawTableInnerECshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.g

bb.g:                                             ; preds = %._crit_edge80
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCscpvtCwnncCK_9hashbrown3raw13RawTableInnerECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %._crit_edge80
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !65, !noundef !46 ; 3 uses
  %i.ak = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscpvtCwnncCK_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECshFZivb7RUAJ_8ruff_dev.exit, label %_RNvMs1_NtCscpvtCwnncCK_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCscpvtCwnncCK_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCscpvtCwnncCK_9hashbrown3raw13RawTableInnerECshFZivb7RUAJ_8ruff_dev.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !65 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !65 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !65
  %i.al = add i64 %.val3.i.i, 1
  %i.am = mul nuw i64 %.val.i.i, %i.al            ; 2 uses
  %i.an = add i64 %.val1.i.i, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap)
  %i.aq = sub i64 0, %.val1.i.i
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au)
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.ay = sub nsw i64 0, %i.ar
  %i.az = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.ay
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !noalias !65
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscpvtCwnncCK_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECshFZivb7RUAJ_8ruff_dev.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscpvtCwnncCK_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCscpvtCwnncCK_9hashbrown3raw13RawTableInnerECshFZivb7RUAJ_8ruff_dev.exit, %_RNvMs1_NtCscpvtCwnncCK_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51
  br label %_RINvMsa_NtCscpvtCwnncCK_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECshFZivb7RUAJ_8ruff_dev.exit

._crit_edge72:                                    ; preds = %.noexc4, %.preheader
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.077, %.preheader ], [ %i.ag, %.noexc4 ] ; 2 uses
  %.sroa.031.1.lcssa = phi ptr [ %.sroa.031.078, %.preheader ], [ %i.ad, %.noexc4 ]
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.079, %.preheader ], [ %i.af, %.noexc4 ] ; 3 uses
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.076, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !66, !noalias !67, !nonnull !46, !noundef !46
  %i.bh = sub nsw i64 0, %i.be
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %.val3.i = load i32, ptr %i.bj, align 4, !noalias !55, !noundef !46
  %i.bk = zext i32 %.val3.i to i64                ; 3 uses
  %i.bl = icmp ugt i64 %i.aa, %i.bk
  br i1 %i.bl, label %_RNCNvMs3_NtCsikBMbUdt2EH_10imara_diff6internINtB7_8InternerReE6interns_0CshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge72
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bk, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc14 unwind label %.loopexit.split-lp.a

.noexc14:                                         ; preds = %bb.h
  unreachable

_RNCNvMs3_NtCsikBMbUdt2EH_10imara_diff6internINtB7_8InternerReE6interns_0CshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %._crit_edge72
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.bk
  %i.bn = invoke noundef i64 @_RINvYNtNtCs1jZKJHM5Gxz_8foldhash4fast11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bm)
          to label %_RNCINvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB8_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE14reserve_rehashNCNvMs3_BT_INtBT_8InternerReE6interns_0E0CshFZivb7RUAJ_8ruff_dev.exit unwind label %.loopexit.a ; 2 uses

_RNCINvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB8_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE14reserve_rehashNCNvMs3_BT_INtBT_8InternerReE6interns_0E0CshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RNCNvMs3_NtCsikBMbUdt2EH_10imara_diff6internINtB7_8InternerReE6interns_0CshFZivb7RUAJ_8ruff_dev.exit.i
  %.sroa.0.07.i.i = and i64 %i.r, %i.bn           ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !68
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !71

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNCINvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB8_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE14reserve_rehashNCNvMs3_BT_INtBT_8InternerReE6interns_0E0CshFZivb7RUAJ_8ruff_dev.exit
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB8_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE14reserve_rehashNCNvMs3_BT_INtBT_8InternerReE6interns_0E0CshFZivb7RUAJ_8ruff_dev.exit ], [ %.sroa.0.0.i.i16, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.bq, %_RNCINvMs6_NtCscpvtCwnncCK_9hashbrown3rawINtB8_8RawTableNtNtCsikBMbUdt2EH_10imara_diff6intern5TokenE14reserve_rehashNCNvMs3_BT_INtBT_8InternerReE6interns_0E0CshFZivb7RUAJ_8ruff_dev.exit ], [ %i.ch, %.lr.ph.i.i ]
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.0.0.lcssa.i.i, %i.bs
  %i.bu = and i64 %i.bt, %i.r                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !46
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.o, align 16
  %i.by = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.bz, 0
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
end_hunk_0
