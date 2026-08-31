Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.13?download=true
inline.NumInlined: 140
inline.NumDeleted: 61
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_slow_pathCslKoDbeUmNq5_14dwarf_validate:bb.a
  invoke fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j, i64 noundef 1)
          to label %bb.p unwind label %.split.thread.i, !noalias !92

.split.thread.i:                                  ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load i64, ptr %0, align 8, !noalias !92, !noundef !5
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %0, align 8, !noalias !92
  br label %bb.s

bb.e:                                             ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !92
  store i64 %.val.i, ptr %i.d, align 8, !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.w = icmp eq i64 %i.n, %i.l
  br i1 %i.w, label %bb.f, label %._crit_edge.loopexit.i, !prof !99

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j, i64 noundef 1)
          to label %bb.g unwind label %bb.n, !noalias !92

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !noalias !92, !noundef !5 ; 2 uses
  %.not14.i = icmp eq i64 %i.y, 0
  br i1 %.not14.i, label %bb.h, label %bb.i, !prof !99

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
  %1 = ptrtoint ptr %i.a to i64
  store i64 0, ptr %0, align 8, !alias.scope !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 42, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !110
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !110
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !110
  store i64 8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !110
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
  br i1 %i.f, label %bb.f, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !71, !noundef !5
  %i.h = shl nuw i64 %i.g, 1
  %i.i = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 range(i64 0, -1) %i.h) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = mul i64 %..i, 24                         ; 3 uses
  %or.cond.i = icmp ugt i64 %..i, 384307168202282325
  br i1 %or.cond.i, label %bb.g, label %bb.c, !prof !116

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !117
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !117 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.l to i64
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0.ph = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.j) #24
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.e, %bb.c
  %.sroa.10.0 = phi i64 [ %i.n, %bb.e ], [ 8, %bb.c ]
  %.sroa.4.0 = phi i64 [ %..i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.o = icmp samesign ule i64 %..i, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %.sroa.4.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !120, !noalias !123, !noundef !5 ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !range !71, !alias.scope !120, !noalias !123, !noundef !5
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCslKoDbeUmNq5_14dwarf_validate.exit

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit
  invoke fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_6borrow3CowShEEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.i, !noalias !123

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_6borrow3CowShEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %bb.k unwind label %bb.j, !noalias !120

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !120
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.u

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslKoDbeUmNq5_14dwarf_validate.exit, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !120, !noalias !123, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !120
  %i.z = add i64 %i.r, 1
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !120, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val11 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #23
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val11, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #23 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
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
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !134
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 80), !noalias !134
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !134, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !134, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !134, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !134
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !134
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !137
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !137
  %i.f = load i64, ptr %i.a, align 8, !range !72, !noalias !137, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !73, !noalias !137, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !137, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !137
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !137
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEE8grow_oneCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !71, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
end_hunk_0
