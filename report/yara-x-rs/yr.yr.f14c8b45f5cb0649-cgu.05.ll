Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.05?download=true
inline.NumInlined: 1363
inline.NumDeleted: 625
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNCNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB7_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4recvs_0CskIqAKC4t9Ft_2yr:bb.a
  br label %.split.i

_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit: ; preds = %bb.g
  %i.ai = extractvalue { i64, i1 } %i.ad, 0
  switch i64 %i.ai, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4 [
    i64 0, label %bb.i
    i64 1, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !1895

bb.i:                                             ; preds = %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #35
  unreachable

_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g, %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #37
  %i.aj = load ptr, ptr %i.a, align 8, !noundef !6
  %.not1 = icmp eq ptr %i.aj, null
  br i1 %.not1, label %bb.l, label %bb.j, !prof !8

_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4: ; preds = %.split.i, %.split.us.i, %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit
  ret void

bb.j:                                             ; preds = %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  %i.ak = load ptr, ptr %i.b, align 8, !alias.scope !1908, !nonnull !6, !noundef !6
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !1908
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgqCuqWkNCVj_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4

bb.l:                                             ; preds = %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB7_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4recvs_0B1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !32, !noundef !6
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !1893, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #37
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !align !32, !noundef !6 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i32, ptr %i.s, align 8, !range !1894, !noundef !6 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %.not.i = icmp eq i32 %i.t, -1
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.v = load atomic i64, ptr %i.u acquire, align 8
  switch i64 %i.v, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4 [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions4park()
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.w = load atomic i64, ptr %i.u acquire, align 8
  switch i64 %i.w, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ]

bb.f:                                             ; preds = %.split.i
  %i.x = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.y = extractvalue { i64, i32 } %i.x, 0        ; 3 uses
  %i.z = extractvalue { i64, i32 } %i.x, 1        ; 2 uses
  %i.aa = icmp eq i64 %i.y, %i.r
  %i.ab = icmp slt i64 %i.y, %i.r
  %i.ac = icmp samesign ult i32 %i.z, %i.t
  %spec.select.i4 = select i1 %i.aa, i1 %i.ac, i1 %i.ab
  br i1 %spec.select.i4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = cmpxchg ptr %i.u, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.af = tail call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.r, i32 noundef range(i32 -1, 1000000000) %i.t, i64 noundef %i.y, i32 noundef %i.z) ; 2 uses
  %i.ag = extractvalue { i64, i32 } %i.af, 0
  %i.ah = extractvalue { i64, i32 } %i.af, 1
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions12park_timeout(i64 noundef %i.ag, i32 noundef %i.ah)
  br label %.split.i

_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit: ; preds = %bb.g
  %i.ai = extractvalue { i64, i1 } %i.ad, 0
  switch i64 %i.ai, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4 [
    i64 0, label %bb.i
    i64 1, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !1895

bb.i:                                             ; preds = %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #35
  unreachable

_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g, %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #37
  %i.aj = load ptr, ptr %i.a, align 8, !noundef !6
  %.not1 = icmp eq ptr %i.aj, null
  br i1 %.not1, label %bb.l, label %bb.j, !prof !8

_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4: ; preds = %.split.i, %.split.us.i, %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit
  ret void

bb.j:                                             ; preds = %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.ak = load ptr, ptr %i.b, align 8, !alias.scope !1921, !nonnull !6, !noundef !6
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !1921
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgqCuqWkNCVj_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4

bb.l:                                             ; preds = %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsexYYUdYSQU6_5alloc5sliceSh6repeatCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3)
  %4 = mul nuw i64 %3, %2                         ; 5 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !7, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #32
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.e
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.o = icmp ule i64 %4, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.r)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit
  %.sroa.01.08 = lshr i64 %3, 1                   ; 2 uses
  %.not9 = icmp eq i64 %.sroa.01.08, 0
  %.pre11 = load i64, ptr %i.q, align 8           ; 2 uses
  br i1 %.not9, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #35
  unreachable

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
          to label %bb.l unwind label %bb.k

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.t = phi i64 [ %.pre11, %.preheader ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %.not7 = icmp eq i64 %4, %i.t
  br i1 %.not7, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.v = phi i64 [ %i.ab, %.lr.ph ], [ %.pre11, %.preheader ] ; 3 uses
  %.sroa.01.010 = phi i64 [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.08, %.preheader ]
  %i.w = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.x = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.w, i64 %i.v, i1 false)
  %i.z = load i64, ptr %i.q, align 8, !noundef !6 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw i64 %i.z, 1                     ; 3 uses
  store i64 %i.ab, ptr %i.q, align 8
  %.sroa.01.0 = lshr i64 %.sroa.01.010, 1         ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.j, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.j:                                             ; preds = %._crit_edge
  %i.ac = sub i64 %4, %i.t
  %i.ad = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.ad, i64 %i.ac, i1 false)
  store i64 %4, ptr %i.q, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.l:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit3, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.b:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !1934, !nonnull !6, !noundef !6
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !1934
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgqCuqWkNCVj_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit unwind label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit3
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit3 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = load i64, ptr %i.i, align 8, !noundef !6
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.r = cmpxchg ptr %i.q, i64 0, i64 %i.p acq_rel acquire, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = atomicrmw xchg ptr %i.w, i32 1 release, align 4
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !1947, !nonnull !6, !noundef !6
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !1947
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgqCuqWkNCVj_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit3 unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ac = invoke noundef zeroext i1 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.w)
          to label %bb.f unwind label %bb.b       ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryEECskIqAKC4t9Ft_2yr.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryECskIqAKC4t9Ft_2yr.exit3: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgEj7_NtB4_11PartialDrop12partial_dropCskIqAKC4t9Ft_2yr:bb.a
bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgENtB2_11PartialDrop12partial_dropCskIqAKC4t9Ft_2yr.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [600 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(600) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [600 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(600) %i.k) #33
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgENtB2_11PartialDrop12partial_dropCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @201, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_12BitSpanErrorjENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @202, ptr %i.h, align 8, !captures !250
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 5, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskIqAKC4t9Ft_2yr, ptr %.sroa.44.0..sroa_idx, align 8
  %i.j = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !32, !noundef !6
  %i.m = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @203, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.m, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %0, align 8, !range !3307, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.n, label %default.unreachable16 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

default.unreachable16:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.o, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @204, i64 noundef 4)
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @205)
  %i.q = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 10)
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @207)
  %i.s = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @208, i64 noundef 7)
  %i.t = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @209)
  %i.u = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef 7)
  %i.v = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @211)
  %i.w = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.w, %bb.f ], [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.u, %bb.e ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXsu_NtCskKLDkoKarTP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3311)
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !alias.scope !3308, !noalias !3311
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !3311, !noalias !3308, !noundef !6 ; 2 uses
  switch i8 %i.b, label %bb.e [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.c, align 1, !alias.scope !3308, !noalias !3311
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !3311, !noalias !3308
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.d = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.c ]
  %cond.i = icmp eq i8 %i.d, 43                   ; 2 uses
  %i.e = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.e            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.f = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.f, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %.loopexit.i, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.i, 0
  br i1 %.not52.i, label %.loopexit.i, label %.preheader56.i.preheader

.loopexit.i:                                      ; preds = %.preheader56.i, %bb.k, %.preheader.i
  %.sroa.042.1.i = phi i64 [ %i.ad, %bb.k ], [ 0, %.preheader.i ], [ %i.q, %.preheader56.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.042.1.i, ptr %i.g, align 8, !alias.scope !3308, !noalias !3311
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i34 = phi ptr [ %i.h, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i33 = phi i64 [ %i.i, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i32 = phi i64 [ %i.q, %.preheader56.i ], [ 0, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i34, i64 1
  %i.i = add nsw i64 %.sroa.15.1.i33, -1          ; 2 uses
  %3 = mul nuw i64 %.sroa.042.0.i32, 10           ; 2 uses
  %4 = icmp ugt i64 %.sroa.042.0.i32, 1844674407370955161
  %i.j = load i8, ptr %.sroa.0.1.i34, align 1, !alias.scope !3311, !noalias !3308, !noundef !6 ; 2 uses
  br i1 %4, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %i.m = icmp ult i32 %i.l, 10
  br i1 %i.m, label %bb.h, label %.loopexit58.i

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.n = add i8 %i.j, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.j, label %.loopexit58.i

bb.h:                                             ; preds = %bb.f
  %i.p = zext nneg i32 %i.l to i64
  %i.q = add i64 %3, %i.p                         ; 3 uses
  %i.r = icmp ult i64 %i.q, %3
  br i1 %i.r, label %bb.i, label %.preheader56.i, !prof !8

.loopexit58.i:                                    ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.s, align 1, !alias.scope !3308, !noalias !3311
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.t, align 1, !alias.scope !3308, !noalias !3311
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

bb.j:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.u, align 1, !alias.scope !3308, !noalias !3311
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.sroa.0.269.i = phi ptr [ %i.ab, %bb.k ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.aa, %bb.k ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ad, %bb.k ], [ 0, %.preheader.i ]
  %i.v = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !3311, !noalias !3308, !noundef !6
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.z = mul i64 %.sroa.042.267.i, 10
  %i.aa = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = add i64 %i.z, %i.ac                     ; 2 uses
  %.not53.i = icmp eq i64 %i.aa, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ae, align 1, !alias.scope !3308, !noalias !3311
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %bb.b, %bb.d, %.loopexit.i, %.loopexit58.i, %bb.i, %bb.j, %bb.l
  %.sink.i = phi i8 [ 1, %.loopexit58.i ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.d ], [ 0, %.loopexit.i ], [ 1, %bb.b ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !3308, !noalias !3311
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtCs6fABDMljrgZ_8globwalk9GlobErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsj_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_3str3StrE15into_resettableCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsfg5wIEEXgBO_9indicatif11draw_target8LineTypeEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtNtB2f_3str4iter5LinesNCINvMs0_NtBY_5multiNtB3s_10MultiState7printlnNtNtB6_6string6StringE0EE9from_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs0_NtCsfg5wIEEXgBO_9indicatif5multiNtB5_10MultiState4draw(ptr noalias nofree noundef align 8 dereferenceable(200), i1 noundef zeroext, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1i_6option6OptionNtNtCsgqCuqWkNCVj_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2a_B28_4with7CONTEXT27___rust_std_internal_init_fnECskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #20

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtBe_6thread2id8ThreadIdzE16get_or_init_slowNvNvNvNtCsgqCuqWkNCVj_17crossbeam_channel5waker17current_thread_id9THREAD_ID27___rust_std_internal_init_fnECskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(8)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_EINvNvMs2_Cs6fABDMljrgZ_8globwalkNtB35_17GlobWalkerBuilder13from_patterns17normalize_patternRBU_EEE9from_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_Cs7wOm4VClMVn_7walkdirNtB5_7WalkDir3newRNtNtCsG258MDvU3F_3std4path4PathECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReEINvNvMs2_Cs6fABDMljrgZ_8globwalkNtB34_17GlobWalkerBuilder13from_patterns17normalize_patternRB2S_EEE9from_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13missing_fieldCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCslcwApyVHiOd_7bincode8features5serdeNtNtB7_5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error6customNtNtCskKLDkoKarTP_4core3fmt9ArgumentsECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([600 x i8]) align 8 captures(none) dereferenceable(600), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(600), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsi_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_6os_str5OsStrE15into_resettableCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder6os_str5OsStrEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2k_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3K_3Arg25default_missing_values_osBU_ABU_B3y_E0EE9from_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB5_14IntoResettableNtNtB7_5range10ValueRangeE15into_resettableCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deINtNtNtCscjxkGEBy879_6bitvec6serdes5utils13BitIdxVisitorjENtB4_8Expected3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13invalid_valueCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #20

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_typeCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1ZTs3ySsPIM_12clap_builder7mkeymap3KeyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler7IdentIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler7RegexIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder4util2id2IdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder4util9any_value10AnyValueIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder6os_str5OsStrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder7command7CommandENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder9arg_group8ArgGroupENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules11PatternInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules8RuleInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_1
