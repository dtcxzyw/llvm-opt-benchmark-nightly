Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvMs2_NtCs8frGy5WneL6_4fish10fd_monitorNtB6_9FdMonitor7with_fdNCNvMs8_NtB8_2ioNtB18_12IoBufferfill18read_all_available0EB8_:bb.a

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEINtBM_11PoisonErrorBH_EE6expectB1G_.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !116, !noalias !120, !nonnull !4, !align !123, !noundef !4 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !124, !alias.scope !116, !noalias !120, !noundef !4 ; 2 uses
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !125, !noalias !128, !noundef !4
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEINtBM_11PoisonErrorBH_EE6expectB1G_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.z = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdEB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.aa = lshr i64 %i.z, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !136, !noalias !137, !noundef !4 ; 2 uses
  %i.ae = load ptr, ptr %i.u, align 8, !alias.scope !136, !noalias !137, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.ax, %bb.i ]
  %.pn.i.i = phi i64 [ %i.z, %.noexc ], [ %i.ay, %bb.i ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.ad     ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ah, align 1, !noalias !140 ; 2 uses
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ag
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.sroa.06.0.i31.i.i = phi i16 [ %i.aw, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.01.0.i.i.i, %i.al
  %i.an = and i64 %i.am, %i.ad
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %.val2.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !143, !noalias !146, !noundef !4
  %i.ar = icmp eq i64 %1, %.val2.i.i.i
  br i1 %i.ar, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBQ_13FdMonitorItemNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getBO_EBS_.exit, label %bb.h, !prof !87

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.i, label %select.unfold, !prof !83

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.av = add i16 %.sroa.06.0.i31.i.i, -1
  %i.aw = and i16 %i.av, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ax = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ay = add i64 %.sroa.01.0.i.i.i, %i.ax
  br label %bb.g

bb.j:                                             ; preds = %bb.r, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %i.az, %bb.k ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_(ptr nonnull %i.q, i8 %i.s) #34
          to label %common.resume unwind label %bb.v

bb.k:                                             ; preds = %bb.f, %select.unfold
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBQ_13FdMonitorItemNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getBO_EBS_.exit: ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.bb = load i32, ptr %i.ba, align 8, !noundef !4 ; 2 uses
  %.not5 = icmp eq i32 %i.bb, -1
  br i1 %.not5, label %bb.m, label %bb.q

select.unfold:                                    ; preds = %._crit_edge.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEINtBM_11PoisonErrorBH_EE6expectB1G_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #37
          to label %bb.l unwind label %bb.k

bb.l:                                             ; preds = %select.unfold
  unreachable

bb.m:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBQ_13FdMonitorItemNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getBO_EBS_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  br i1 %i.t, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.be = and i64 %i.bd, 9223372036854775807
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !87

bb.o:                                             ; preds = %bb.n
  %i.bg = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.bg, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.bc monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bh = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit, !prof !83

bb.q:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBQ_13FdMonitorItemNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getBO_EBS_.exit
  invoke void @_RNvMsa_NtCs8frGy5WneL6_4fish2ioNtB5_8IoBuffer18read_all_available(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i32 noundef range(i32 0, -1) %i.bb)
          to label %_RNCNvMs8_NtCs8frGy5WneL6_4fish2ioNtB7_12IoBufferfill18read_all_available0B9_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RNCNvMs8_NtCs8frGy5WneL6_4fish2ioNtB7_12IoBufferfill18read_all_available0B9_.exit: ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  br i1 %i.t, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, label %bb.s

bb.s:                                             ; preds = %_RNCNvMs8_NtCs8frGy5WneL6_4fish2ioNtB7_12IoBufferfill18read_all_available0B9_.exit
  %i.bl = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bm = and i64 %i.bl, 9223372036854775807
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, label %bb.t, !prof !87

bb.t:                                             ; preds = %bb.s
  %i.bo = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.bo, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.bk monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i13

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i13: ; preds = %bb.u, %bb.t, %bb.s, %_RNCNvMs8_NtCs8frGy5WneL6_4fish2ioNtB7_12IoBufferfill18read_all_available0B9_.exit
  %i.bp = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit, !prof !83

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit.sink.split: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit.sink.split, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.v:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtBT_8builtins4read16read_interactive00EBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 1
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBT_15parse_executionNtB1N_16ExecutionContext9run_1_job0EBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %2 = icmp eq i64 %.sroa.0.0.copyload, 9223372036854775807
  br i1 %2, label %bb.b, label %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext9run_1_job0B6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #33, !noalias !150
  unreachable

_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext9run_1_job0B6_.exit: ; preds = %bb.a
  %3 = add nsw i64 %.sroa.0.0.copyload, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 %3, ptr %i.c, align 8
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !83

bb.c:                                             ; preds = %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext9run_1_job0B6_.exit
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext9run_1_job0B6_.exit
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBT_15parse_executionNtB1N_16ExecutionContext9run_1_jobs1_0EBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 %2, ptr %.sroa.45.0..sroa_idx, align 8
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs5_BR_NtBR_6Parser14eval_file_wstr0EBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 2
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs8_NtBT_8completeNtB1Q_9Completer18complete_from_args0EBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 2
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs8_NtNtBT_6reader6readerNtB1Q_6Reader8readline0EBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i8 1, ptr %.sroa.45.0..sroa_idx, align 4
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMse_NtNtBT_6reader6readerNtB1Q_6Reader11exec_prompt0EBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i8 1, ptr %.sroa.45.0..sroa_idx, align 4
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMse_NtNtBT_6reader6readerNtB1Q_6Reader11exec_prompts_0EBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 2
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10init_frontCs8frGy5WneL6_4fish
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10init_frontCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1J_E10take_frontCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1J_E10init_frontCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtB7_3ffi5c_str7CStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtB7_3ffi5c_str7CStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1Q_(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBR_13FdMonitorItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs0_Cskr4qsHYS30i_15fish_widestringRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_9ToCString10to_cstring(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs1_Cskr4qsHYS30i_15fish_widestringRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB5_9ToCString10to_cstring(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexuE4lockCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @setenv(ptr noundef, ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i32 @unsetenv(ptr noundef readonly captures(none)) unnamed_addr #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNCINvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11colon_splitBR_E0EE11spec_extendB3T_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobE14swap_uncheckedB13_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String14swap_uncheckedCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish5input7binding7Binding14swap_uncheckedBA_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 82351536043346213), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtCslSwhfOFuxKz_17fish_localization8Language14swap_uncheckedCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32Str14swap_uncheckedCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtNtCs8frGy5WneL6_4fish5input7binding7Binding14swap_uncheckedBB_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSj14swap_uncheckedCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtB2_10EquivalentNtNtBu_9utfstring11Utf32StringE10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtB2_10EquivalentRBq_E10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs8frGy5WneL6_4fish5input5input30update_wait_on_sequence_key_ms(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs8frGy5WneL6_4fish5input5input24update_wait_on_escape_ms(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish7history7history19history_id_from_var(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3new(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9pop_block(ptr noalias nofree noundef align 8 dereferenceable(432), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser17set_last_statuses(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs8frGy5WneL6_4fish2ioNtB5_8IoBuffer18read_all_available(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef range(i32 0, -1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8truncateCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1K_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar9as_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi12fish_wcstoul(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11fish_wcstoi(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 134) i32 @_RNvNtCs8frGy5WneL6_4fish5wutil7waccess(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish5wutil6lwstat(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocols(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish6signal19signal_set_handlers(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common14valid_var_name(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish15parse_execution13varname_error(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment4getf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB7_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorTB15_B1Q_EE9from_iterINtNtNtB33_5array4iter8IntoIterB3U_Kj26_EEB1Y_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(928)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_Cskr4qsHYS30i_15fish_widestringlNtB5_9ToWString10to_wstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar13new_from_name(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE4withNCNvBW_9thread_id0BU_EB10_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar17new_from_name_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader21commandline_get_state(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History11get_history(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish4kill12kill_entries(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19reader_status_count() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsr_Cskr4qsHYS30i_15fish_widestringyNtB5_9ToWString10to_wstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCse7JGOylGlDZ_3nix3sys4stat5umask(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal3new(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 8 captures(none) dereferenceable(208)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #24

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB1p_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB1p_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB1p_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardjEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuarduEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs3pTQYeTDvAj_9fish_util6perror(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @eventfd(i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvNtCs8frGy5WneL6_4fish3fds14heightenize_fd(i32 noundef range(i32 0, -1), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvCs5UXtnEuoeIl_11fish_common24exit_without_destructors(i32 noundef) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtNtCse7JGOylGlDZ_3nix5errno6consts5ErrnoNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish5wutil10perror_nix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 134)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i64 noundef range(i64 0, 2), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB6_7Display3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB5_10ThreadPool3new(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB2_8DebounceNtNtNtB6_6reader6reader20AutosuggestionResultE3newB6_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB2_8DebounceNtNtNtB6_6reader6reader15HighlightResultE3newB6_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB2_8DebounceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTQL1_INtNtNtB6_6reader6reader6ReaderL0_EEEp6OutputuNtNtB1F_6marker4SendEL_EE3newB6_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #26

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataE4lockB11_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXst_Cskr4qsHYS30i_15fish_widestringjNtB5_9ToWString10to_wstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0
end_hunk_1
