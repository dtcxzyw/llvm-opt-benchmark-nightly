Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.12?download=true
inline.NumInlined: 961
inline.NumDeleted: 418
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs_NtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunkingNtB4_7Chunker16next_block_bytes:bb.a
bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.af
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunkNtB2_5Chunk3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  %i.cz = load i64, ptr %i.i, align 8, !alias.scope !2649, !noundef !12 ; 3 uses
  %i.da = load i64, ptr %i.g, align 8, !range !19, !alias.scope !2649, !noundef !12
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ap unwind label %bb.an, !noalias !2650

bb.an:                                            ; preds = %bb.am
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.dd = load ptr, ptr %i.b, align 8, !alias.scope !2654, !nonnull !12, !align !16, !noundef !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !2654, !nonnull !12, !noundef !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !2654, !noundef !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !2654, !noundef !12
  invoke void %i.df(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef %i.di, i64 noundef %i.dk)
          to label %.body unwind label %bb.ao, !inline_history !6

bb.ao:                                            ; preds = %bb.an
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.dm = load ptr, ptr %i.h, align 8, !alias.scope !2649, !nonnull !12, !noundef !12
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.dm, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dn, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.do = add i64 %i.cz, 1
  store i64 %i.do, ptr %i.i, align 8, !alias.scope !2649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.aq:                                            ; preds = %.body
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ar:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunkingNtB4_7Chunker3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1) ; 2 uses
  %i.h = trunc nuw nsw i64 %i.g to i32
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.j = icmp ugt i64 %1, 64
  br i1 %i.j, label %bb.e, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedmmECsG258MDvU3F_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @29, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %1, 4294967295
  br i1 %i.k, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants21MINIMUM_CHUNK_DIVISOR, i64 8) acquire, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants21MINIMUM_CHUNK_DIVISOR, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants21MINIMUM_CHUNK_DIVISOR, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.g, %bb.h
  %i.n = load i64, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants21MINIMUM_CHUNK_DIVISOR, align 8, !noundef !12 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit
  %i.p = udiv i64 %1, %i.n                        ; 2 uses
  %i.q = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants24MAXIMUM_CHUNK_MULTIPLIER, i64 8) acquire, align 8
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit4, label %bb.j, !prof !13

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants24MAXIMUM_CHUNK_MULTIPLIER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants24MAXIMUM_CHUNK_MULTIPLIER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit4

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit4: ; preds = %bb.i, %bb.j
  %i.s = load i64, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants24MAXIMUM_CHUNK_MULTIPLIER, align 8, !noundef !12
  %i.t = mul i64 %i.s, %1                         ; 4 uses
  %i.u = icmp ugt i64 %i.t, %i.p
  br i1 %i.u, label %bb.m, label %bb.l, !prof !13

bb.k:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #25
  unreachable

bb.l:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit4
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #25
  unreachable

bb.m:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECsjHtSR7YjKD4_8xet_data.exit4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.t, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.v = load i64, ptr %i.e, align 8, !range !14, !noundef !12
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.n, label %bb.o, !prof !18

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !31, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #28
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ab = add nsw i64 %1, -1                      ; 2 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = shl i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !19, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !12, !noundef !12
  %i.ai = icmp ule i64 %i.t, %i.af
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_RNvNtCsbd4UThCK8vt_8gearhash5table13DEFAULT_TABLE, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.p, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ad, ptr %i.an, align 8
  store i64 %i.af, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunkingNtB4_7Chunker4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2669, !noundef !12 ; 7 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw i64 %i.h, 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2669, !noundef !12 ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %reass.sub = sub i64 %i.l, %i.h
  %i.n = add i64 %reass.sub, -65
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ %..i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !2669, !noundef !12
  %i.q = sub nsw i64 %.sroa.01.0.i, %i.h
  %i.r = add i64 %i.q, %i.p
  %..i25.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 range(i64 0, -9223372036854775808) %3) ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.01.1.i = phi i64 [ %.sroa.01.0.i, %bb.d ], [ %i.ac, %bb.h ] ; 5 uses
  %i.u = icmp ult i64 %..i25.i, %.sroa.01.1.i
  br i1 %i.u, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.1.i, i64 noundef %..i25.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = sub nuw nsw i64 %..i25.i, %.sroa.01.1.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.1.i
  %i.x = load i64, ptr %i.t, align 8, !alias.scope !2669, !noundef !12
  %i.y = tail call { i64, i64 } @_RNvMCsbd4UThCK8vt_8gearhashNtB2_6Hasher10next_match(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.v, i64 noundef %i.x) ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = extractvalue { i64, i64 } %i.y, 1
  %i.ac = add i64 %i.ab, %.sroa.01.1.i            ; 3 uses
  %i.ad = add i64 %i.ac, %i.h                     ; 2 uses
  %i.ae = load i64, ptr %i.k, align 8, !alias.scope !2669, !noundef !12
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ag = add nuw i64 %..i25.i, %i.h
  %i.ah = load i64, ptr %i.o, align 8, !alias.scope !2669, !noundef !12 ; 2 uses
  %.not23.i = icmp ult i64 %i.ag, %i.ah
  br i1 %.not23.i, label %bb.m, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.o, align 8, !alias.scope !2669, !noundef !12 ; 2 uses
  %.not24.i = icmp ult i64 %i.ad, %i.ai
  br i1 %.not24.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = phi i64 [ %i.ai, %bb.j ], [ %i.ah, %bb.i ]
  %i.ak = sub i64 %i.aj, %i.h
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.2.i = phi i64 [ %i.ak, %bb.k ], [ %i.ac, %bb.j ] ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.al, align 8, !alias.scope !2669
  %i.am = load i64, ptr %i.g, align 8, !noundef !12 ; 2 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.am, 0
  %.not27 = icmp ugt i64 %.sroa.01.2.i, %3        ; 2 uses
  br i1 %i.ao, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.i
  br i1 %4, label %bb.w, label %bb.v

.thread:                                          ; preds = %bb.a
  br i1 %4, label %bb.w, label %.thread36

.thread36:                                        ; preds = %.thread
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !2670, !noundef !12 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  tail call void @llvm.assume(i1 %i.ar)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit30

bb.n:                                             ; preds = %bb.l
  br i1 %.not27, label %bb.r, label %bb.p, !prof !30

bb.o:                                             ; preds = %bb.l
  br i1 %.not27, label %bb.t, label %bb.s, !prof !30

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.01.2.i)
  %i.as = load i64, ptr %i.g, align 8, !alias.scope !2671, !noundef !12 ; 3 uses
  %i.at = icmp sgt i64 %i.as, -1
  tail call void @llvm.assume(i1 %i.at)
  %.not.i = icmp eq i64 %.sroa.01.2.i, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !2671, !nonnull !12, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull readonly align 1 %2, i64 %.sroa.01.2.i, i1 false)
  %.pre.i = load i64, ptr %i.g, align 8, !alias.scope !2671
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.p, %bb.q
  %i.ax = phi i64 [ %.pre.i, %bb.q ], [ %i.as, %bb.p ]
  %i.ay = add i64 %i.ax, %.sroa.01.2.i
  store i64 %i.ay, ptr %i.g, align 8, !alias.scope !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  store i64 0, ptr %i.g, align 8
  call void @_RNvXsE_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.01.2.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #25
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @_RNvMNtCslc8SwK8fohf_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %.sroa.01.2.i)
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.01.2.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
  unreachable

bb.u:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit, %bb.s, %bb.ab
  %.sroa.011.0 = phi i64 [ %3, %bb.ab ], [ %.sroa.01.2.i, %bb.s ], [ %.sroa.01.2.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !12
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.ad, label %bb.ac

bb.v:                                             ; preds = %bb.m
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3)
  %i.bc = load i64, ptr %i.g, align 8, !alias.scope !2672, !noundef !12 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !2672, !nonnull !12, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %.pre.i29 = load i64, ptr %i.g, align 8, !alias.scope !2672
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit30

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit30: ; preds = %.thread36, %bb.v
  %i.bh = phi ptr [ %i.g, %bb.v ], [ %i.ap, %.thread36 ]
  %i.bi = phi i64 [ %.pre.i29, %bb.v ], [ %i.aq, %.thread36 ]
  %i.bj = add i64 %i.bi, %3
  store i64 %i.bj, ptr %i.bh, align 8, !alias.scope !2672
  store ptr null, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %i.bk, align 8
  br label %bb.x

bb.w:                                             ; preds = %.thread, %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !12 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %bb.aa, label %bb.y

bb.x:                                             ; preds = %bb.ad, %bb.ac, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit30
  ret void

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3)
  %i.bp = load i64, ptr %i.bl, align 8, !alias.scope !2673, !noundef !12 ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  tail call void @llvm.assume(i1 %i.bq)
  br i1 %i.f, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit33, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !2673, !nonnull !12, !noundef !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %.pre.i32 = load i64, ptr %i.bl, align 8, !alias.scope !2673
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit33

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit33: ; preds = %bb.y, %bb.z
  %i.bu = phi i64 [ %.pre.i32, %bb.z ], [ %i.bp, %bb.y ]
  %i.bv = add i64 %i.bu, %3
  store i64 %i.bv, ptr %i.bl, align 8, !alias.scope !2673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.423.0..sroa_idx, align 8
  store i64 0, ptr %i.bl, align 8
  call void @_RNvXsE_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  call void @_RNvMNtCslc8SwK8fohf_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjHtSR7YjKD4_8xet_data.exit33
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.bw, align 8
  br label %bb.u

bb.ac:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunkNtB2_5Chunk3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.011.0, ptr %i.bx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.ad:                                            ; preds = %bb.u
  store ptr null, ptr %0, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.by, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2674)
  call void @llvm.experimental.noalias.scope.decl(metadata !2675)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !2676, !nonnull !12, !align !16, !noundef !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !2676, !nonnull !12, !noundef !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !2676, !noundef !12
  call void %i.cb(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.ce, i64 noundef 0), !inline_history !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunkingNtB4_7Chunker6finish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunkingNtB4_7Chunker4next(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i1 noundef zeroext true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6native33read_shard_to_bytes_remove_footer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [4 x i8], align 4                 ; 7 uses
  %i.k = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load i64, ptr %i.l, align 8, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtB8_4path7PathBufECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
  %i.o = load i32, ptr %i.i, align 8, !range !2684, !noundef !12
  %i.p = trunc nuw i32 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 13, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !range !24, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i32 %i.t, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2685
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.m, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.c
  %i.u = load i64, ptr %i.b, align 8, !range !14, !noalias !2685, !noundef !12
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !31, !noalias !2685, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %.noexc
  %i.z = load i64, ptr %i.y, align 8, !noalias !2685
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #28
          to label %.noexc37 unwind label %.body

.noexc37:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !2685, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2685
  store i64 %i.x, ptr %i.h, align 8, !alias.scope !2685
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !2685
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %i.m, ptr %i.ac, align 8, !alias.scope !2685
  %i.ad = icmp eq i64 %i.m, 0
  br i1 %i.ad, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsjHtSR7YjKD4_8xet_data.exit.thread, label %.lr.ph.i

_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsjHtSR7YjKD4_8xet_data.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 40, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 0, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %.invoke

.lr.ph.i:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.041.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.120.i, %bb.n ] ; 3 uses
  %.sroa.7.040.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.7.118.i, %bb.n ] ; 6 uses
  %i.ah = invoke { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.j, ptr noalias nofree noundef nonnull %.sroa.0.041.i, i64 noundef %.sroa.7.040.i)
          to label %.noexc38 unwind label %.body.thread47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc38:                                         ; preds = %bb.f
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 12 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 8 uses
  %i.al = trunc nuw i64 %i.ai to i1
  br i1 %i.al, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.noexc38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.am = and i64 %i.ak, 3
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %.split27.i
    i64 0, label %.split28.i
    i64 1, label %.split.i
  ], !prof !23

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.h
  %i.ao = lshr i64 %i.ak, 32
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !12, !noundef !12
  %i.as = invoke noundef zeroext i1 %i.ar(i32 noundef %i.ap)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i unwind label %bb.o, !inline_history !7

.split27.i:                                       ; preds = %bb.g
  %i.at = lshr i64 %i.ak, 32
  %i.au = icmp ult ptr %i.aj, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.at to i8
  %spec.select.i.i.i.i = select i1 %i.au, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.av = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.aw, label %bb.l, label %bb.q

.split28.i:                                       ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !range !32, !noundef !12
  %i.az = icmp eq i8 %i.ay, 35
  br i1 %i.az, label %.thread.thread.i, label %bb.q

.split.i:                                         ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %i.aj, i64 31
  %i.bb = load i8, ptr %i.ba, align 8, !range !32, !noundef !12
  %i.bc = icmp eq i8 %i.bb, 35
  br i1 %i.bc, label %bb.m, label %bb.q

bb.i:                                             ; preds = %.noexc38
  %i.bd = icmp eq ptr %i.aj, null
  br i1 %i.bd, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = icmp ult i64 %.sroa.7.040.i, %i.ak
  br i1 %i.be, label %.invoke, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.bf = sub nuw nsw i64 %.sroa.7.040.i, %i.ak
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i, i64 %i.ak
  br label %bb.n

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %.noexc.i
  br i1 %i.as, label %.thread.thread.i, label %bb.q

.thread.thread.i:                                 ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2686
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i

bb.l:                                             ; preds = %.split27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2686
  %i.bh = and i64 %i.ak, 1095216660480
  %i.bi = icmp ne i64 %i.bh, 1095216660480
  call void @llvm.assume(i1 %i.au)
  call void @llvm.assume(i1 %i.bi)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i

bb.m:                                             ; preds = %.split.i
  %i.bj = getelementptr i8, ptr %i.aj, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2686
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  store ptr %i.bj, ptr %i.ag, align 8, !alias.scope !2687, !noalias !2686
  store i8 3, ptr %i.a, align 8, !alias.scope !2687, !noalias !2686
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i unwind label %.body.thread47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.m, %bb.l, %.thread.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2686
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjHtSR7YjKD4_8xet_data.exit.i, %bb.k
end_hunk_0
