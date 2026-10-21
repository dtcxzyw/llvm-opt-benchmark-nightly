Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_6FieldsE8try_from:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !47005
  %i.aj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47005 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.10297.0.ph = phi i64 [ %i.af, %bb.c ], [ undef, %bb.a ]
  %.sroa.4295.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4295.0.ph, i64 %.sroa.10297.0.ph) #49
  unreachable

bb.e:                                             ; preds = %bb.c
  store i64 %i.ad, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.an = shl nuw nsw i64 %i.ad, 3                ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !47006
  %i.ao = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47006 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = udiv i64 %i.an, 7
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit275: ; preds = %bb.ef, %bb.h
  %.pn165.pn674 = phi { ptr, i32 } [ %.pn165, %bb.h ], [ %.pn165.pn675, %bb.ef ] ; 2 uses
  %.sroa.090.2672 = phi i1 [ %.sroa.090.4, %bb.h ], [ %.sroa.090.2673, %bb.ef ]
  br i1 %.sroa.090.2672, label %bb.eg, label %common.resume

.thread:                                          ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.an) #49
          to label %bb.ar unwind label %.thread

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread, %bb.f
  %i.au = phi i64 [ %i.as, %bb.f ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ]
  %i.av = phi ptr [ %i.am, %bb.f ], [ %i.ai, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 3 uses
  %i.aw = phi ptr [ %i.al, %bb.f ], [ %i.ah, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 3 uses
  %i.ax = phi ptr [ %i.aj, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 2 uses
  %.sroa.10301.0 = phi ptr [ %i.ao, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ]
  store i64 %i.ad, ptr %i.aa, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 6 uses
  store ptr %.sroa.10301.0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  store i64 0, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ba = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !range !77, !noalias !47007, !noundef !58
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !67

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192
  %.pre.i.i = load i64, ptr %i.ba, align 8, !noalias !47008
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !47008
  br label %bb.i

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192
  %i.be = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %.thread668 ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !47009
  store i8 1, ptr %i.bb, align 8, !noalias !47009
  br label %bb.i

.thread676:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au, %bb.ad, %.loopexit406
  %.pn165.ph = phi { ptr, i32 } [ %lpad.loopexit407, %.loopexit406 ], [ %lpad.loopexit.split-lp904, %bb.ad ], [ %i.iz, %bb.au ], [ %lpad.loopexit.split-lp904, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val175680 = load ptr, ptr %i.z, align 8
  %.val176681 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !58
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file(ptr %.val175680, i64 %.val176681) #50
  br label %bb.ef

bb.h:                                             ; preds = %.body233, %.loopexit.split-lp
  %.sroa.088.2 = phi i8 [ %.sroa.088.5, %.body233 ], [ %.sroa.088.3.ph, %.loopexit.split-lp ]
  %.sroa.090.4 = phi i1 [ false, %.body233 ], [ %.sroa.090.5.ph, %.loopexit.split-lp ] ; 2 uses
  %.pn165 = phi { ptr, i32 } [ %.pn161.pn.pn, %.body233 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val175 = load ptr, ptr %i.z, align 8
  %.val176 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !58
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file(ptr %.val175, i64 %.val176) #50
  %i.bi = trunc nuw i8 %.sroa.088.2 to i1
  br i1 %i.bi, label %bb.ef, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit275

.thread668:                                       ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.i:                                             ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i
  %.pre-phi618 = phi i64 [ %i.bg, %.noexc ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.bf, %.noexc ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i ] ; 2 uses
  %i.bk = add i64 %.pre-phi, 1
  store i64 %i.bk, ptr %i.ba, align 8, !noalias !47008
  br i1 %i.ag, label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = icmp samesign ult i64 %i.ad, 15
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = lshr i64 -1, %i.au
  %i.bn = add nuw nsw i64 %i.bm, 1
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp samesign ult i64 %i.ad, 4
  %i.bp = and i64 %i.ad, 8
  %..i.i.i.i = add nuw nsw i64 %i.bp, 8
  %.sroa.03.0.i.i.i.i = select i1 %i.bo, i64 4, i64 %..i.i.i.i
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.bn, %bb.k ], [ %.sroa.03.0.i.i.i.i, %bb.l ] ; 5 uses
  %i.bq = mul nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 24
  %i.br = add nuw nsw i64 %i.bq, 8
  %i.bs = and i64 %i.br, 9223372036854775792      ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 16 ; 2 uses
  %i.bu = add nuw nsw i64 %i.bs, %i.bt            ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !47010
  %i.bv = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !47010 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.bx = invoke { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.bu)
          to label %.noexc193 unwind label %.thread668 ; 2 uses

.noexc193:                                        ; preds = %bb.m
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %i.bx, 0
  %.sroa.12.0.ph.i.i.i = extractvalue { i64, i64 } %i.bx, 1
  br label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs ; 2 uses
  %i.bz = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -1   ; 2 uses
  %i.ca = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 9
  %i.cb = lshr i64 %.sroa.4.0.i.ph.i.i.i, 3
  %i.cc = mul nuw nsw i64 %i.cb, 7
  %.sroa.07.0.i.i.i.i = select i1 %i.ca, i64 %i.bz, i64 %i.cc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.by, i8 -1, i64 %i.bt, i1 false), !noalias !47011
  br label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit

_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.n, %.noexc193, %bb.i
  %.sroa.8.0.i.i = phi i64 [ %.sroa.07.0.i.i.i.i, %bb.n ], [ %.sroa.12.0.ph.i.i.i, %.noexc193 ], [ 0, %bb.i ]
  %.sroa.6.0.i.i = phi i64 [ %i.bz, %bb.n ], [ %.sroa.7.0.ph.i.i.i, %.noexc193 ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.by, %bb.n ], [ null, %.noexc193 ], [ @83, %bb.i ] ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.z, align 8
  %.sroa.4303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 7 uses
  store i64 %.sroa.6.0.i.i, ptr %.sroa.4303.0..sroa_idx, align 8
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  store i64 %.sroa.8.0.i.i, ptr %.sroa.5304.0..sroa_idx, align 8
  %.sroa.6305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6305.0..sroa_idx, align 8
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 4 uses
  store i64 %.pre-phi, ptr %.sroa.7306.0..sroa_idx, align 8
  %.sroa.8307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 3 uses
  store i64 %.pre-phi618, ptr %.sroa.8307.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ad, 176
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx
  br i1 %i.ag, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread, label %.lr.ph

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread: ; preds = %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i64 0, ptr %i.ch, align 8
  br label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit

.lr.ph:                                           ; preds = %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit
  %i.cl = phi ptr [ %i.ax, %.lr.ph ], [ %i.jb, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %i.cm = phi i64 [ 0, %.lr.ph ], [ %i.jd, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 10 uses
  %i.cn = phi ptr [ %.sroa.0.0.i.i, %.lr.ph ], [ %i.lr, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %i.co = phi i64 [ %.sroa.6.0.i.i, %.lr.ph ], [ %i.ls, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %.sroa.0.0515 = phi ptr [ %i.ce, %.lr.ph ], [ %i.cp, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 176 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 152 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 8, !noundef !58 ; 3 uses
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.q, label %bb.s

bb.p:                                             ; preds = %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ct = mul nuw nsw i64 %i.jd, 192              ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !47012
  %i.cu = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47012 ; 7 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.invoke, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cw = icmp ult i64 %i.cm, 42700796466920259
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.az, align 8, !alias.scope !47013, !noundef !58 ; 3 uses
  %i.cy = load i64, ptr %i.aa, align 8, !range !61, !alias.scope !47013, !noundef !58
  %i.cz = icmp eq i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.r, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit unwind label %.loopexit406

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.r, %bb.q
  %i.da = load ptr, ptr %i.ay, align 8, !alias.scope !47013, !nonnull !58, !noundef !58
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cx
  store i64 %i.cm, ptr %i.db, align 8
  %i.dc = add i64 %i.cx, 1
  store i64 %i.dc, ptr %i.az, align 8, !alias.scope !47013
  br label %bb.x

bb.s:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !47014)
  %i.dd = load i64, ptr %.sroa.6305.0..sroa_idx, align 8, !alias.scope !47014, !noundef !58
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %select.unfold, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i = load i64, ptr %.sroa.7306.0..sroa_idx, align 8, !alias.scope !47014, !noundef !58
  %.val5.i = load i64, ptr %.sroa.8307.0..sroa_idx, align 8, !alias.scope !47014, !noundef !58
  %i.df = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECsaSXGKSfiU2E_10lance_file(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cq), !noalias !47014 ; 2 uses
  %i.dg = lshr i64 %i.df, 57
  %i.dh = trunc nuw nsw i64 %i.dg to i8
  %i.di = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.t ], [ %i.ea, %bb.w ]
  %.pn.i.i.i = phi i64 [ %i.df, %bb.t ], [ %i.eb, %bb.w ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.co   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.dk, align 1, !noalias !47015 ; 2 uses
  %i.dl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.dj
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.v
  %.sroa.06.0.i33.i.i = phi i16 [ %i.dz, %bb.v ], [ %i.dm, %bb.u ] ; 3 uses
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = add i64 %.sroa.01.0.i.i.i, %i.do
  %i.dq = and i64 %i.dp, %i.co
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds [24 x i8], ptr %i.cn, i64 %i.dr ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -24
  %.val2.i.i.i = load i32, ptr %i.dt, align 4, !noalias !47016, !noundef !58
  %i.du = icmp eq i32 %i.cr, %.val2.i.i.i
  br i1 %i.du, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getlECsaSXGKSfiU2E_10lance_file.exit, label %bb.v, !prof !67

._crit_edge.i.i:                                  ; preds = %bb.v, %bb.u
  %i.dv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.dw = bitcast <16 x i1> %i.dv to i16
  %i.dx = icmp eq i16 %i.dw, 0
  br i1 %i.dx, label %bb.w, label %select.unfold, !prof !57

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dy = add i16 %.sroa.06.0.i33.i.i, -1
  %i.dz = and i16 %i.dy, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dz, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.ea = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.eb = add i64 %.sroa.01.0.i.i.i, %i.ea
  br label %bb.u

.loopexit406:                                     ; preds = %bb.x, %bb.r, %bb.ap, %bb.bb
  %lpad.loopexit407 = landingpad { ptr, i32 }
          cleanup
  br label %.thread676

.loopexit.split-lp:                               ; preds = %.invoke, %bb.aq, %bb.cu, %bb.cx, %select.unfold, %.loopexit405
  %.sroa.088.3.ph = phi i8 [ 1, %.invoke ], [ 1, %bb.aq ], [ 1, %.loopexit405 ], [ 1, %select.unfold ], [ 0, %bb.cu ], [ %.sroa.088.7, %bb.cx ]
  %.sroa.090.5.ph = phi i1 [ true, %.invoke ], [ true, %bb.aq ], [ true, %.loopexit405 ], [ true, %select.unfold ], [ false, %bb.cu ], [ false, %bb.cx ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.x:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit
  %i.ec = phi ptr [ %i.cl, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit ], [ %i.im, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206 ]
  %i.ed = phi i64 [ %i.cm, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ij, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvXNtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtNtB4_6format2pb5FieldE4from(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.0.0515)
          to label %bb.as unwind label %.loopexit406

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getlECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.lr.ph.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ds, i64 -16
  %i.ef = load i64, ptr %i.ee, align 8, !range !68, !noundef !58
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %bb.z

select.unfold:                                    ; preds = %bb.s, %._crit_edge.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.eh, ptr %i.x, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.498.0..sroa_idx, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ei, ptr %i.ej, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.cq, ptr %i.ek, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4118.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @1020, ptr noundef nonnull %i.x)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit unwind label %.loopexit.split-lp

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit: ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.el, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1021, ptr %.sroa.430.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.y:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getlECsaSXGKSfiU2E_10lance_file.exit
  %i.em = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.en = load i64, ptr %i.em, align 8, !noundef !58
  br label %bb.an

bb.z:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getlECsaSXGKSfiU2E_10lance_file.exit
  %i.eo = load ptr, ptr %i.ay, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.ep = load i64, ptr %i.az, align 8, !noundef !58 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47017)
  call void @llvm.experimental.noalias.scope.decl(metadata !47018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !47019
  %i.eq = icmp eq i64 %i.cm, 0
  br i1 %i.eq, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = shl nuw nsw i64 %i.cm, 3                ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !47020
  %i.es = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47020 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = ptrtoint ptr %i.es to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ab, %bb.z
  %.sroa.10.0.i = phi i64 [ %i.eu, %bb.ab ], [ 8, %bb.z ]
  %i.ev = inttoptr i64 %.sroa.10.0.i to ptr       ; 2 uses
  store i64 %i.cm, ptr %i.l, align 8, !noalias !47019
  store ptr %i.ev, ptr %i.ci, align 8, !noalias !47019
  store i64 0, ptr %i.cj, align 8, !noalias !47019
  %.idx.i = shl i64 %i.ep, 3                      ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47021)
  %i.ex = icmp samesign ugt i64 %i.ep, %i.cm
  br i1 %i.ex, label %bb.ac, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !57

bb.ac:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846976) %i.ep, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47019

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i: ; preds = %bb.ac
  %.pre.i.i202 = load i64, ptr %i.cj, align 8, !alias.scope !47021, !noalias !47019
  %.pre.i = load ptr, ptr %i.ci, align 8, !alias.scope !47021, !noalias !47019
  br label %.lr.ph.i.i.i.i.i.preheader.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i
  %i.ey = icmp eq i64 %i.ep, 0
  br i1 %i.ey, label %._crit_edge.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i
  %i.ez = phi i64 [ %.pre.i.i202, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 2 uses
  %i.fa = phi ptr [ %.pre.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i ], [ %i.ev, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 6 uses
  %i.fb = add i64 %.idx.i, -8                     ; 2 uses
  %i.fc = lshr exact i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1
  %xtraiter = and i64 %i.fd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %i.fe = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ez, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.2.012.i.i.i.i.i.i.prol = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ew, %.lr.ph.i.i.i.i.i.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.ff = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.prol = load i64, ptr %i.ff, align 8, !alias.scope !47018, !noalias !47022, !noundef !58
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fe
  store i64 %.val8.i.i.i.i.i.i.prol, ptr %i.fg, align 8, !noalias !47023
  %i.fh = add i64 %i.fe, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !46859

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.lcssa908.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.2.012.i.i.i.i.i.i.unr = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.fi = icmp ult i64 %i.fb, 24
  br i1 %i.fi, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %i.fj = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.2.012.i.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.2.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i, i64 -8
  %.val8.i.i.i.i.i.i = load i64, ptr %i.fk, align 8, !alias.scope !47018, !noalias !47022, !noundef !58
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fj
  store i64 %.val8.i.i.i.i.i.i, ptr %i.fl, align 8, !noalias !47023
  %i.fm = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i, i64 -16
  %.val8.i.i.i.i.i.i.1 = load i64, ptr %i.fm, align 8, !alias.scope !47018, !noalias !47022, !noundef !58
  %i.fn = getelementptr [8 x i8], ptr %i.fa, i64 %i.fj
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  store i64 %.val8.i.i.i.i.i.i.1, ptr %i.fo, align 8, !noalias !47023
  %i.fp = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i, i64 -24
  %.val8.i.i.i.i.i.i.2 = load i64, ptr %i.fp, align 8, !alias.scope !47018, !noalias !47022, !noundef !58
  %i.fq = getelementptr [8 x i8], ptr %i.fa, i64 %i.fj
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store i64 %.val8.i.i.i.i.i.i.2, ptr %i.fr, align 8, !noalias !47023
  %i.fs = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i, i64 -32 ; 3 uses
  %.val8.i.i.i.i.i.i.3 = load i64, ptr %i.fs, align 8, !alias.scope !47018, !noalias !47022, !noundef !58
  %i.ft = getelementptr [8 x i8], ptr %i.fa, i64 %i.fj
  %i.fu = getelementptr i8, ptr %i.ft, i64 24
  store i64 %.val8.i.i.i.i.i.i.3, ptr %i.fu, align 8, !noalias !47023
  %i.fv = add i64 %i.fj, 4                        ; 2 uses
  %i.fw = icmp eq ptr %i.eo, %i.fs
  br i1 %i.fw, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i.i.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa908 = phi i64 [ %.lcssa908.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.fv, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.fx = icmp eq i64 %.lcssa908, 0
  br i1 %i.fx, label %._crit_edge.i, label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %bb.ac, %bb.af
  %lpad.loopexit.split-lp904 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val8.i = load i64, ptr %i.l, align 8, !noalias !47019 ; 2 uses
  %i.fy = icmp eq i64 %.val8.i, 0
  br i1 %i.fy, label %.thread676, label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val9.i = load ptr, ptr %i.ci, align 8, !noalias !47019, !nonnull !58, !noundef !58
  %i.fz = shl nuw i64 %.val8.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47019
  br label %.thread676

._crit_edge.i:                                    ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i
  %.val6.i = load i64, ptr %i.l, align 8, !noalias !47019 ; 2 uses
  %i.ga = icmp eq i64 %.val6.i, 0
  br i1 %i.ga, label %.loopexit405, label %.loopexit405.loopexit

.lr.ph.i:                                         ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i
  %i.gb = phi ptr [ %3, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i ], [ %i.fa, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i ] ; 4 uses
  %storemerge38.i = phi i64 [ %.val5.i.i.i.i.i15.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i ], [ %.lcssa908, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i ] ; 2 uses
  %i.gc = add nsw i64 %storemerge38.i, -1         ; 7 uses
  store i64 %i.gc, ptr %i.cj, align 8, !noalias !47019
  %2 = load i64, ptr %i.l, align 8, !range !61, !noalias !47019, !noundef !58 ; 3 uses
  %i.gd = icmp samesign ult i64 %i.gc, %2
  call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp samesign ult i64 %storemerge38.i, 1152921504606846977
  call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gc
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !47019, !noundef !58 ; 4 uses
  %i.gh = icmp ult i64 %i.gg, %i.cm
  br i1 %i.gh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i
  %i.gi = getelementptr inbounds nuw [216 x i8], ptr %i.cl, i64 %i.gg ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 176
  %i.gk = load i32, ptr %i.gj, align 8, !alias.scope !47017, !noundef !58
  %i.gl = icmp eq i32 %i.gk, %i.cr
  br i1 %i.gl, label %bb.aj, label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.gg, i64 noundef range(i64 0, 42700796466920259) %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809) #49
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47019

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 200
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !47017, !nonnull !58, !noundef !58 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 208
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !47017, !noundef !58 ; 4 uses
  %.idx27.i = shl i64 %i.gp, 3                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx27.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47024)
  %i.gr = sub nuw nsw i64 %2, %i.gc
  %i.gs = icmp ugt i64 %i.gp, %i.gr
  br i1 %i.gs, label %bb.ai, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i, !prof !57

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.gc, i64 noundef %i.gp, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47019

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i: ; preds = %bb.ai
  %.pre.i16.i = load i64, ptr %i.cj, align 8, !alias.scope !47024, !noalias !47019
  %.pre53.i = load ptr, ptr %i.ci, align 8, !alias.scope !47024, !noalias !47019
  br label %.lr.ph.i.i.i.i.i12.preheader.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i: ; preds = %bb.ah
  %i.gt = icmp eq i64 %i.gp, 0
  br i1 %i.gt, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i, label %.lr.ph.i.i.i.i.i12.preheader.i

.lr.ph.i.i.i.i.i12.preheader.i:                   ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i
  %i.gu = phi i64 [ %.pre.i16.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i ], [ %i.gc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i ] ; 2 uses
  %i.gv = phi ptr [ %.pre53.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i ], [ %i.gb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i ] ; 7 uses
  %i.gw = add i64 %.idx27.i, -8                   ; 2 uses
  %i.gx = lshr exact i64 %i.gw, 3
  %i.gy = add nuw nsw i64 %i.gx, 1
  %xtraiter965 = and i64 %i.gy, 3                 ; 2 uses
  %lcmp.mod966.not = icmp eq i64 %xtraiter965, 0
  br i1 %lcmp.mod966.not, label %.lr.ph.i.i.i.i.i12.i.prol.loopexit, label %.lr.ph.i.i.i.i.i12.i.prol

.lr.ph.i.i.i.i.i12.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i12.preheader.i, %.lr.ph.i.i.i.i.i12.i.prol
  %i.gz = phi i64 [ %i.hc, %.lr.ph.i.i.i.i.i12.i.prol ], [ %i.gu, %.lr.ph.i.i.i.i.i12.preheader.i ] ; 2 uses
  %.sroa.2.012.i.i.i.i.i13.i.prol = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i12.i.prol ], [ %i.gq, %.lr.ph.i.i.i.i.i12.preheader.i ]
  %prol.iter967 = phi i64 [ %prol.iter967.next, %.lr.ph.i.i.i.i.i12.i.prol ], [ 0, %.lr.ph.i.i.i.i.i12.preheader.i ]
  %i.ha = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i.prol, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i14.i.prol = load i64, ptr %i.ha, align 8, !noalias !47025, !noundef !58
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gz
  store i64 %.val8.i.i.i.i.i14.i.prol, ptr %i.hb, align 8, !noalias !47026
  %i.hc = add i64 %i.gz, 1                        ; 3 uses
  %prol.iter967.next = add i64 %prol.iter967, 1   ; 2 uses
  %prol.iter967.cmp.not = icmp eq i64 %prol.iter967.next, %xtraiter965
  br i1 %prol.iter967.cmp.not, label %.lr.ph.i.i.i.i.i12.i.prol.loopexit, label %.lr.ph.i.i.i.i.i12.i.prol, !llvm.loop !46876

.lr.ph.i.i.i.i.i12.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i12.i.prol, %.lr.ph.i.i.i.i.i12.preheader.i
  %.lcssa909.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i12.preheader.i ], [ %i.hc, %.lr.ph.i.i.i.i.i12.i.prol ]
  %.unr968 = phi i64 [ %i.gu, %.lr.ph.i.i.i.i.i12.preheader.i ], [ %i.hc, %.lr.ph.i.i.i.i.i12.i.prol ]
  %.sroa.2.012.i.i.i.i.i13.i.unr = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i12.preheader.i ], [ %i.ha, %.lr.ph.i.i.i.i.i12.i.prol ]
  %i.hd = icmp ult i64 %i.gw, 24
  br i1 %i.hd, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i, label %.lr.ph.i.i.i.i.i12.i

.lr.ph.i.i.i.i.i12.i:                             ; preds = %.lr.ph.i.i.i.i.i12.i.prol.loopexit, %.lr.ph.i.i.i.i.i12.i
  %i.he = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i12.i ], [ %.unr968, %.lr.ph.i.i.i.i.i12.i.prol.loopexit ] ; 5 uses
  %.sroa.2.012.i.i.i.i.i13.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i12.i ], [ %.sroa.2.012.i.i.i.i.i13.i.unr, %.lr.ph.i.i.i.i.i12.i.prol.loopexit ] ; 4 uses
  %i.hf = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i, i64 -8
  %.val8.i.i.i.i.i14.i = load i64, ptr %i.hf, align 8, !noalias !47025, !noundef !58
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.he
  store i64 %.val8.i.i.i.i.i14.i, ptr %i.hg, align 8, !noalias !47026
  %i.hh = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i, i64 -16
  %.val8.i.i.i.i.i14.i.1 = load i64, ptr %i.hh, align 8, !noalias !47025, !noundef !58
  %i.hi = getelementptr [8 x i8], ptr %i.gv, i64 %i.he
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  store i64 %.val8.i.i.i.i.i14.i.1, ptr %i.hj, align 8, !noalias !47026
  %i.hk = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i, i64 -24
  %.val8.i.i.i.i.i14.i.2 = load i64, ptr %i.hk, align 8, !noalias !47025, !noundef !58
  %i.hl = getelementptr [8 x i8], ptr %i.gv, i64 %i.he
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  store i64 %.val8.i.i.i.i.i14.i.2, ptr %i.hm, align 8, !noalias !47026
  %i.hn = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i, i64 -32 ; 3 uses
  %.val8.i.i.i.i.i14.i.3 = load i64, ptr %i.hn, align 8, !noalias !47025, !noundef !58
  %i.ho = getelementptr [8 x i8], ptr %i.gv, i64 %i.he
  %i.hp = getelementptr i8, ptr %i.ho, i64 24
  store i64 %.val8.i.i.i.i.i14.i.3, ptr %i.hp, align 8, !noalias !47026
  %i.hq = add i64 %i.he, 4                        ; 2 uses
  %i.hr = icmp eq ptr %i.gn, %i.hn
  br i1 %i.hr, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i, label %.lr.ph.i.i.i.i.i12.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i: ; preds = %.lr.ph.i.i.i.i.i12.i.prol.loopexit, %.lr.ph.i.i.i.i.i12.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i
  %3 = phi ptr [ %i.gb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i ], [ %i.gv, %.lr.ph.i.i.i.i.i12.i ], [ %i.gv, %.lr.ph.i.i.i.i.i12.i.prol.loopexit ]
  %.val5.i.i.i.i.i15.i = phi i64 [ %i.gc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i ], [ %.lcssa909.unr, %.lr.ph.i.i.i.i.i12.i.prol.loopexit ], [ %i.hq, %.lr.ph.i.i.i.i.i12.i ] ; 3 uses
  store i64 %.val5.i.i.i.i.i15.i, ptr %i.cj, align 8, !noalias !47019
  %i.hs = icmp eq i64 %.val5.i.i.i.i.i15.i, 0
  br i1 %i.hs, label %._crit_edge.i, label %.lr.ph.i

bb.aj:                                            ; preds = %bb.ae
  %i.ht = shl nuw i64 %2, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gb, i64 noundef %i.ht, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !47019
  %.pre.a = load i64, ptr %i.av, align 8
  br label %bb.an

.loopexit405.loopexit:                            ; preds = %._crit_edge.i
  %.val7.i = load ptr, ptr %i.ci, align 8, !noalias !47019, !nonnull !58, !noundef !58
  %i.hu = shl nuw i64 %.val6.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.hu, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47019
  br label %.loopexit405

.loopexit405:                                     ; preds = %._crit_edge.i, %.loopexit405.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !47019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !47027
  store ptr %i.cq, ptr %i.k, align 8, !noalias !47027
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !47027
  %i.hv = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hv, ptr noundef nonnull @608, ptr noundef nonnull %i.k)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %.loopexit405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !47027
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4108.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.614.0..sroa_idx, i64 7, i1 false)
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.hv, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.hw, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @609 to i64), ptr %.sroa.5109.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit, %bb.ak, %bb.du
  %.not400488 = phi i1 [ true, %bb.du ], [ false, %bb.ak ], [ false, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit ]
  %.sroa.088.4 = phi i1 [ %i.rj, %bb.du ], [ true, %bb.ak ], [ true, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit ]
  %.val173 = load ptr, ptr %i.z, align 8          ; 2 uses
  %.val174 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !58 ; 4 uses
  %i.hx = icmp eq i64 %.val174, 0
  br i1 %i.hx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.al
  %i.hy = mul i64 %.val174, 24
  %i.hz = icmp slt i64 %.val174, 768614336404564650
  call void @llvm.assume(i1 %i.hz)
  %i.ia = and i64 %i.hy, -16                      ; 2 uses
  %i.ib = add i64 %i.ia, 32                       ; 2 uses
  %i.ic = add nsw i64 %.val174, 17
  %i.id = add i64 %i.ic, %i.ib                    ; 4 uses
  %i.ie = icmp uge i64 %i.id, %i.ib
  %i.if = icmp ult i64 %i.id, 9223372036854775793
  call void @llvm.assume(i1 %i.ie)
  call void @llvm.assume(i1 %i.if)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val173) ]
  %i.ig = icmp eq i64 %i.id, 0
  br i1 %i.ig, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.ih = sub i64 -32, %i.ia
  %i.ii = getelementptr inbounds i8, ptr %.val173, i64 %i.ih
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ii, i64 noundef %i.id, i64 noundef range(i64 1, -9223372036854775807) 16) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file.exit

bb.an:                                            ; preds = %bb.aj, %bb.y
  %i.ij = phi i64 [ %i.cm, %bb.y ], [ %.pre.a, %bb.aj ] ; 5 uses
  %.sroa.027.0 = phi i64 [ %i.en, %bb.y ], [ %i.gg, %bb.aj ] ; 3 uses
  %i.ik = icmp ult i64 %i.ij, 42700796466920259
  call void @llvm.assume(i1 %i.ik)
  %i.il = icmp ult i64 %.sroa.027.0, %i.ij
  br i1 %i.il, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.im = load ptr, ptr %i.aw, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.in = getelementptr inbounds nuw [216 x i8], ptr %i.im, i64 %.sroa.027.0 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 192 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 208 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !47028, !noundef !58 ; 3 uses
  %i.ir = load i64, ptr %i.io, align 8, !range !61, !alias.scope !47028, !noundef !58
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %bb.ap, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206 unwind label %.loopexit406

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206: ; preds = %bb.ap, %bb.ao
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 200
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !47028, !nonnull !58, !noundef !58
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.iq
  store i64 %i.ij, ptr %i.iv, align 8
  %i.iw = add i64 %i.iq, 1
  store i64 %i.iw, ptr %i.ip, align 8, !alias.scope !47028
  br label %bb.x

bb.aq:                                            ; preds = %bb.an
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0, i64 noundef %i.ij, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1022) #49
          to label %bb.ar unwind label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.de, %bb.aq, %bb.g
  unreachable

bb.as:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.w, ptr noundef nonnull align 8 dereferenceable(192) %i.v, i64 192, i1 false)
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.439.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !47029)
  %i.ix = load i64, ptr %i.ab, align 8, !range !61, !alias.scope !47029, !noundef !58
  %i.iy = icmp eq i64 %i.ed, %i.ix
  br i1 %i.iy, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %._crit_edge611 unwind label %bb.au, !noalias !47030

._crit_edge611:                                   ; preds = %bb.at
  %.pre612 = load ptr, ptr %i.aw, align 8, !alias.scope !47029
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.w) #50
          to label %.thread676 unwind label %bb.av, !noalias !47029

bb.av:                                            ; preds = %bb.au
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !47029
  unreachable

bb.aw:                                            ; preds = %._crit_edge611, %bb.as
  %i.jb = phi ptr [ %.pre612, %._crit_edge611 ], [ %i.ec, %bb.as ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [216 x i8], ptr %i.jb, i64 %i.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.jc, ptr noundef nonnull align 8 dereferenceable(216) %i.w, i64 216, i1 false), !noalias !47029
  %i.jd = add nuw nsw i64 %i.ed, 1                ; 8 uses
  store i64 %i.jd, ptr %i.av, align 8, !alias.scope !47029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 148
  %i.jf = load i32, ptr %i.je, align 4, !noundef !58 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.jf, ptr %i.j, align 4, !noalias !47032
  %.val.i211 = load i64, ptr %.sroa.7306.0..sroa_idx, align 8, !alias.scope !47031, !noundef !58
  %.val6.i212 = load i64, ptr %.sroa.8307.0..sroa_idx, align 8, !alias.scope !47031, !noundef !58
  %i.jg = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECsaSXGKSfiU2E_10lance_file(i64 %.val.i211, i64 %.val6.i212, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j), !noalias !47032 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47033)
  call void @llvm.experimental.noalias.scope.decl(metadata !47034)
  %i.jh = lshr i64 %i.jg, 57
  %i.ji = trunc nuw nsw i64 %i.jh to i8           ; 3 uses
  %i.jj = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !alias.scope !47035, !noundef !58 ; 4 uses
  %i.jk = load ptr, ptr %i.z, align 8, !alias.scope !47035, !nonnull !58, !noundef !58 ; 4 uses
  %i.jl = insertelement <16 x i8> poison, i8 %i.ji, i64 0
  %i.jm = shufflevector <16 x i8> %i.jl, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.sroa.9.0.i.i.i213 = phi i64 [ 0, %bb.aw ], [ %i.kd, %bb.az ]
  %.pn.i.i.i214 = phi i64 [ %i.jg, %bb.aw ], [ %i.ke, %bb.az ]
  %.sroa.01.0.i.i.i215 = and i64 %.pn.i.i.i214, %i.jj ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.01.0.i.i.i215
  %.sroa.0.0.copyload.i26.i.i216 = load <16 x i8>, ptr %i.jn, align 1, !noalias !47036 ; 2 uses
  %i.jo = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i216, %i.jm
  %i.jp = bitcast <16 x i1> %i.jo to i16          ; 2 uses
  %.not.i.not32.i.i217 = icmp eq i16 %i.jp, 0
  br i1 %.not.i.not32.i.i217, label %._crit_edge.i.i222, label %.lr.ph.i.i218

.lr.ph.i.i218:                                    ; preds = %bb.ax, %bb.ay
  %.sroa.06.0.i33.i.i219 = phi i16 [ %i.kc, %bb.ay ], [ %i.jp, %bb.ax ] ; 3 uses
  %i.jq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i219, i1 true)
  %i.jr = zext nneg i16 %i.jq to i64
  %i.js = add i64 %.sroa.01.0.i.i.i215, %i.jr
  %i.jt = and i64 %i.js, %i.jj
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds [24 x i8], ptr %i.jk, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -24
  %.val2.i.i.i220 = load i32, ptr %i.jw, align 4, !noalias !47037, !noundef !58
  %i.jx = icmp eq i32 %.val2.i.i.i220, %i.jf
  br i1 %i.jx, label %bb.be, label %bb.ay, !prof !67

._crit_edge.i.i222:                               ; preds = %bb.ay, %bb.ax
  %i.jy = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i216, splat (i8 -1)
  %i.jz = bitcast <16 x i1> %i.jy to i16
  %i.ka = icmp eq i16 %i.jz, 0
  br i1 %i.ka, label %bb.az, label %bb.ba, !prof !57

bb.ay:                                            ; preds = %.lr.ph.i.i218
  %i.kb = add i16 %.sroa.06.0.i33.i.i219, -1
  %i.kc = and i16 %i.kb, %.sroa.06.0.i33.i.i219   ; 2 uses
end_hunk_0
