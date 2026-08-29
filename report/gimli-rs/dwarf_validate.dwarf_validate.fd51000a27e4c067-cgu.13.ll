Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.13?download=true
inline.NumInlined: 140
inline.NumDeleted: 61
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_slow_pathCslKoDbeUmNq5_14dwarf_validate:bb.a

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.j unwind label %bb.n, !noalias !92

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !92, !nonnull !5, !noundef !5
  %i.ab = getelementptr [24 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = getelementptr i8, ptr %i.ab, i64 -8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !92, !noundef !5 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 384307168202282326
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowShEE5drainINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.ae)
          to label %bb.k unwind label %bb.n, !noalias !92

bb.j:                                             ; preds = %bb.h, %bb.b
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_10SpecExtendBT_INtNtB6_5drain5DrainBT_EE11spec_extendCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.l unwind label %bb.n, !noalias !92

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !92
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowShEE8push_mutCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.m unwind label %.thread55.i

.thread55.i:                                      ; preds = %bb.l
  %lpad.thr_comm.split-lp57.i = landingpad { ptr, i32 }
          cleanup
  %i.ag = load i64, ptr %0, align 8, !noalias !92, !noundef !5
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %0, align 8, !noalias !92
  br label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !92
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBT_EE11spec_extendCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.r unwind label %bb.q, !noalias !92

bb.n:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.f
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %.thread36.i unwind label %bb.o, !noalias !92

.thread36.i:                                      ; preds = %bb.n
  %i.ai = load i64, ptr %0, align 8, !noalias !92, !noundef !5
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %0, align 8, !noalias !92
  br label %bb.s

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !92
  unreachable

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBT_EE11spec_extendCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.thread39.i unwind label %.split.i, !noalias !92

.thread39.i:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !92
  %i.al = load i64, ptr %i.m, align 8, !noalias !92, !noundef !5 ; 2 uses
  %i.am = icmp ult i64 %i.al, 384307168202282326
  call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %0, align 8, !noalias !92, !noundef !5
  %i.ap = add i64 %i.ao, 1
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECslKoDbeUmNq5_14dwarf_validate.exit

bb.q:                                             ; preds = %bb.m
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

.thread.i:                                        ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92
  %i.ar = load i64, ptr %i.m, align 8, !noalias !92, !noundef !5 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 384307168202282326
  call void @llvm.assume(i1 %i.as)
  %i.at = load i64, ptr %0, align 8, !noalias !92, !noundef !5
  %i.au = add i64 %i.at, 1
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECslKoDbeUmNq5_14dwarf_validate.exit

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %i.av = load ptr, ptr %i.v, align 8, !alias.scope !105, !noalias !108, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !92
  %i.ax = add nuw nsw i64 %i.n, 1                 ; 2 uses
  store i64 %i.ax, ptr %i.m, align 8, !alias.scope !105, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92
  %.pre.i = load i64, ptr %0, align 8, !noalias !92
  %i.ay = add i64 %.pre.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.az = phi i64 [ %i.ay, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %i.ba = phi i64 [ %i.ax, %._crit_edge.loopexit.i ], [ %i.n, %.preheader.i ] ; 2 uses
  %i.bb = icmp samesign ult i64 %i.ba, 384307168202282326
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECslKoDbeUmNq5_14dwarf_validate.exit

common.resume.sink.split.i:                       ; preds = %bb.q, %.split.i
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.i, %.split.i ], [ %lpad.thr_comm.split-lp.i, %bb.q ]
  %i.bd = load i64, ptr %0, align 8, !noalias !92, !noundef !5
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %0, align 8, !noalias !92
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.s, %common.resume.sink.split.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn1635.i, %bb.s ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.s:                                             ; preds = %.thread.i, %.thread36.i, %.thread55.i, %.split.thread.i
  %.pn1635.i = phi { ptr, i32 } [ %i.aq, %.thread.i ], [ %lpad.thr_comm.split-lp57.i, %.thread55.i ], [ %lpad.thr_comm.i, %.thread36.i ], [ %i.r, %.split.thread.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #25
          to label %common.resume.i unwind label %bb.o, !noalias !92

_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.thread39.i, %bb.r, %._crit_edge.i
  %.sink.i = phi i64 [ %i.az, %._crit_edge.i ], [ %i.au, %bb.r ], [ %i.ap, %.thread39.i ]
  %.in.i = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.v, %bb.r ], [ %i.an, %.thread39.i ]
  %i.bf = phi i64 [ %i.ba, %._crit_edge.i ], [ %i.ar, %bb.r ], [ %i.al, %.thread39.i ]
  %.sroa.01.142.i = phi i64 [ %i.n, %._crit_edge.i ], [ 0, %bb.r ], [ 0, %.thread39.i ] ; 2 uses
  %i.bg = load ptr, ptr %.in.i, align 8, !noalias !92, !nonnull !5, !noundef !5
  store i64 %.sink.i, ptr %0, align 8, !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !92
  %.not = icmp eq i64 %i.bf, %.sroa.01.142.i
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECslKoDbeUmNq5_14dwarf_validate.exit
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.sroa.01.142.i
  ret ptr %i.bh

bb.u:                                             ; preds = %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECslKoDbeUmNq5_14dwarf_validate.exit
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE3newCslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !113
  %i.a = tail call noundef align 8 dereferenceable_or_null(1008) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1008, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !113 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE13with_capacityCslKoDbeUmNq5_14dwarf_validate.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1008) #24, !noalias !110
  unreachable

_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE13with_capacityCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 42, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !110
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !110
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !110
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !110
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !110
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %bb.d, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !71, !noundef !5
  %i.h = shl nuw i64 %i.g, 1
  %i.i = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 range(i64 0, -1) %i.h) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = mul i64 %..i, 24                           ; 3 uses
  %or.cond.i = icmp ugt i64 %..i, 384307168202282325
  br i1 %or.cond.i, label %bb.e, label %3, !prof !116

3:                                                ; preds = %bb.b
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit, label %bb.c

bb.c:                                             ; preds = %3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !117
  %i.j = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !117 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %5

5:                                                ; preds = %bb.c
  %6 = ptrtoint ptr %i.j to i64
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #24
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %5, %3
  %.sroa.10.0 = phi i64 [ %6, %5 ], [ 8, %3 ]
  %.sroa.4.0 = phi i64 [ %..i, %5 ], [ 0, %3 ]    ; 2 uses
  %7 = inttoptr i64 %.sroa.10.0 to ptr
  %8 = icmp samesign ule i64 %..i, %.sroa.4.0
  tail call void @llvm.assume(i1 %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %.sroa.4.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %7, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !120, !noalias !123, !noundef !5 ; 3 uses
  %i.o = load i64, ptr %i.l, align 8, !range !71, !alias.scope !120, !noalias !123, !noundef !5
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit
  invoke fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_6borrow3CowShEEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.g, !noalias !123

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_6borrow3CowShEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %bb.i unwind label %bb.h, !noalias !120

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !120
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.q

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !120, !noalias !123, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !120
  %i.v = add i64 %i.n, 1
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !120, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #23
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #23 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_6borrow3CowShEEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !125
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !125
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !125, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !125, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !125, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !125
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !125
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowShEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !128
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !128
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !128, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !128, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !128, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !128
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !128
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionyEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !131
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !131
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !131, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !131, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !131, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !131
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !131
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianEjEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetE8grow_oneCslKoDbeUmNq5_14dwarf_validate:bb.a
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !149, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !149, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !149
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !149
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !152
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !152
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !152, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !152, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !152, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !152
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !152
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm18WasmSymbolInternalE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !155
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !155
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !155, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !155, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !155, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !155
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !155
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetBN_EE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !158
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !158
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !158, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !158, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !158, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !158
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !158
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !161
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !161
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !161, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !161, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !161, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !161
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !161
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !164
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !164
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !164, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !164, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !164, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !164
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !164
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !116
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %4, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #23
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #23
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %5 = extractvalue { i64, i1 } %i.a, 0           ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !116
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #23
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn9, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowShEE8push_mutCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !71, !noundef !5
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowShEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #25
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEERNtNtB6_5alloc6GlobalE13new_uninit_inB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !167
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !167 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !99

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_6borrow3CowShEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #23
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #23
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionyEENtNtNtBR_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #23
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 80
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #23
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskKLDkoKarTP_4core3mem12maybe_uninit11MaybeUninitNtNtCs6o3pVbAMket_10rayon_core3job6JobRefEENtNtNtBT_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
end_hunk_1
