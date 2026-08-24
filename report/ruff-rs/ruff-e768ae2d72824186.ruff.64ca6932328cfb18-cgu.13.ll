Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.13?download=true
inline.NumInlined: 1757
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs8EvorvD8vmS_4ruff8commands13analyze_graph12GlobResolverE4lockB13_:bb.a
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtCs8EvorvD8vmS_4ruff8commands13analyze_graph12GlobResolverENCNvMs9_B10_BX_3new0EB1t_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexbE4lockCs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !144

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !144

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 4 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 32, -9223372036854775808) i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs8EvorvD8vmS_4ruff(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i64 %0, 9223372036854775776
  tail call void @llvm.assume(i1 %i.a)
  %i.b = add nuw nsw i64 %0, 32
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtNtCs2AWtUsOyxgP_3std4sync4mpmcINtB5_8ReceiverINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvCs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [48 x i8], align 8          ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = load i64, ptr %1, align 8, !range !192, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noundef !3 ; 16 uses
  switch i64 %i.o, label %default.unreachable35 [
    i64 0, label %bb.b
    i64 1, label %bb.bk
    i64 2, label %bb.bl
  ]

default.unreachable35:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i32 -1, ptr %i.r, align 8, !noalias !1734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1734
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 400 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 392 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 416
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false), !noalias !1734
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uECs8EvorvD8vmS_4ruff.exit.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.backedge, %bb.c
  %.sroa.0.028.i.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.028.i.i.be, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.backedge ] ; 14 uses
  %i.ab = load atomic i64, ptr %i.q monotonic, align 8, !noalias !1740 ; 7 uses
  %i.ac = load i64, ptr %i.t, align 16, !noalias !1740, !noundef !3
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %i.ab                    ; 3 uses
  %i.af = load i64, ptr %i.u, align 8, !noalias !1740, !noundef !3
  %i.ag = sub i64 0, %i.af
  %i.ah = and i64 %i.ab, %i.ag
  %i.ai = load ptr, ptr %i.v, align 8, !noalias !1740, !nonnull !3, !noundef !3
  %i.aj = load i64, ptr %i.w, align 16, !noalias !1740, !noundef !3
  %i.ak = icmp ult i64 %i.ae, %i.aj
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ai, i64 %i.ae ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8, !noalias !1740 ; 3 uses
  %i.an = add i64 %i.ab, 1
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i
  %i.ap = icmp eq i64 %i.am, %i.ab
  br i1 %i.ap, label %bb.i, label %bb.f

bb.e:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i
  %i.aq = add nuw i64 %i.ae, 1
  %i.ar = load i64, ptr %i.y, align 128, !noalias !1740, !noundef !3
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.m, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.at = icmp ult i32 %.sroa.0.028.i.i, 7
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !1740
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.028.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.au = mul nuw i32 %.sroa.0.028.i.i, %.sroa.0.028.i.i ; 2 uses
  %xtraiter = and i32 %i.au, 7                    ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.028.i.i, 3
  br i1 %i.av, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.au, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1740
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1741

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.h, %bb.g
  %i.aw = add i32 %.sroa.0.028.i.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.backedge

bb.i:                                             ; preds = %bb.d
  fence seq_cst
  %i.ax = load atomic i64, ptr %i.x monotonic, align 16, !noalias !1740 ; 2 uses
  %i.ay = load i64, ptr %i.t, align 16, !noalias !1740, !noundef !3 ; 2 uses
  %i.az = xor i64 %i.ay, -1
  %i.ba = and i64 %i.ax, %i.az
  %i.bb = icmp eq i64 %i.ba, %i.ab
  br i1 %i.bb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not.i11.i.i = icmp eq i32 %.sroa.0.028.i.i, 0
  br i1 %.not.i11.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.backedge, label %.lr.ph.i12.i.i.preheader

.lr.ph.i12.i.i.preheader:                         ; preds = %bb.j
  %xtraiter73 = and i32 %2, 5                     ; 3 uses
  %i.bc = icmp ult i32 %.sroa.0.028.i.i, 3
  br i1 %i.bc, label %.lr.ph.i12.i.i.epil.preheader, label %.lr.ph.i12.i.i.preheader.new

.lr.ph.i12.i.i.preheader.new:                     ; preds = %.lr.ph.i12.i.i.preheader
  %unroll_iter77 = and i32 %2, 56
  br label %.lr.ph.i12.i.i

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i12.i.i
  %lcmp.mod75.not = icmp eq i32 %xtraiter73, 0
  br i1 %lcmp.mod75.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil.preheader

.lr.ph.i12.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.preheader
  %lcmp.mod76 = icmp ne i32 %xtraiter73, 0
  call void @llvm.assume(i1 %lcmp.mod76)
  br label %.lr.ph.i12.i.i.epil

.lr.ph.i12.i.i.epil:                              ; preds = %.lr.ph.i12.i.i.epil, %.lr.ph.i12.i.i.epil.preheader
  %epil.iter74 = phi i32 [ 0, %.lr.ph.i12.i.i.epil.preheader ], [ %epil.iter74.next, %.lr.ph.i12.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1740
  %epil.iter74.next = add i32 %epil.iter74, 1     ; 2 uses
  %epil.iter74.cmp.not = icmp eq i32 %epil.iter74.next, %xtraiter73
  br i1 %epil.iter74.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil, !llvm.loop !1743

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i12.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.bd = add i32 %.sroa.0.028.i.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.backedge

.lr.ph.i12.i.i:                                   ; preds = %.lr.ph.i12.i.i, %.lr.ph.i12.i.i.preheader.new
  %niter78 = phi i32 [ 0, %.lr.ph.i12.i.i.preheader.new ], [ %niter78.next.7, %.lr.ph.i12.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  %niter78.next.7 = add i32 %niter78, 8           ; 2 uses
  %niter78.ncmp.7 = icmp eq i32 %niter78.next.7, %unroll_iter77
  br i1 %niter78.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i

bb.k:                                             ; preds = %bb.i
  %i.be = and i64 %i.ay, %i.ax
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvCs8EvorvD8vmS_4ruff.exit.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit.thread.i

bb.l:                                             ; preds = %bb.e
  %i.bg = load i64, ptr %i.u, align 8, !noalias !1740, !noundef !3
  %i.bh = add i64 %i.bg, %i.ah
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.sroa.01.0.i.i = phi i64 [ %i.bh, %bb.l ], [ %i.am, %bb.e ]
  %i.bi = cmpxchg weak ptr %i.q, i64 %i.ab, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !1740
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bi, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i, %.sroa.0.0.i.i15.i.i ; 2 uses
  %.not.i16.i.i = icmp eq i32 %.sroa.0.028.i.i, 0
  br i1 %.not.i16.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.backedge, label %.lr.ph.i17.i.i.preheader

.lr.ph.i17.i.i.preheader:                         ; preds = %bb.n
  %xtraiter79 = and i32 %3, 5                     ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.028.i.i, 3
  br i1 %i.bj, label %.lr.ph.i17.i.i.epil.preheader, label %.lr.ph.i17.i.i.preheader.new

.lr.ph.i17.i.i.preheader.new:                     ; preds = %.lr.ph.i17.i.i.preheader
  %unroll_iter83 = and i32 %3, 56
  br label %.lr.ph.i17.i.i

._crit_edge.loopexit.i20.i.i.unr-lcssa:           ; preds = %.lr.ph.i17.i.i
  %lcmp.mod81.not = icmp eq i32 %xtraiter79, 0
  br i1 %lcmp.mod81.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil.preheader

.lr.ph.i17.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i20.i.i.unr-lcssa, %.lr.ph.i17.i.i.preheader
  %lcmp.mod82 = icmp ne i32 %xtraiter79, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i17.i.i.epil

.lr.ph.i17.i.i.epil:                              ; preds = %.lr.ph.i17.i.i.epil, %.lr.ph.i17.i.i.epil.preheader
  %epil.iter80 = phi i32 [ 0, %.lr.ph.i17.i.i.epil.preheader ], [ %epil.iter80.next, %.lr.ph.i17.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1740
  %epil.iter80.next = add i32 %epil.iter80, 1     ; 2 uses
  %epil.iter80.cmp.not = icmp eq i32 %epil.iter80.next, %xtraiter79
  br i1 %epil.iter80.cmp.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil, !llvm.loop !1744

._crit_edge.loopexit.i20.i.i:                     ; preds = %.lr.ph.i17.i.i.epil, %._crit_edge.loopexit.i20.i.i.unr-lcssa
  %i.bk = add i32 %.sroa.0.028.i.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.backedge

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.backedge: ; preds = %._crit_edge.loopexit.i20.i.i, %bb.n, %._crit_edge.loopexit.i.i.i, %bb.j, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.028.i.i.be = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 1, %bb.n ], [ %i.bk, %._crit_edge.loopexit.i20.i.i ], [ %i.bd, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.j ]
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.i17.i.i.preheader.new
  %niter84 = phi i32 [ 0, %.lr.ph.i17.i.i.preheader.new ], [ %niter84.next.7, %.lr.ph.i17.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  call void @llvm.x86.sse2.pause(), !noalias !1740
  %niter84.next.7 = add i32 %niter84, 8           ; 2 uses
  %niter84.ncmp.7 = icmp eq i32 %niter84.next.7, %unroll_iter83
  br i1 %niter84.ncmp.7, label %._crit_edge.loopexit.i20.i.i.unr-lcssa, label %.lr.ph.i17.i.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvCs8EvorvD8vmS_4ruff.exit.i: ; preds = %bb.k
  %i.bl = load i32, ptr %i.r, align 8, !range !1500, !noalias !1734, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.bl, -1
  br i1 %.not.i, label %bb.as, label %bb.ar

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit.thread.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bh

bb.o:                                             ; preds = %bb.m
  store ptr %i.al, ptr %i.l, align 8, !alias.scope !1737, !noalias !1734
  %i.bm = load i64, ptr %i.u, align 8, !noalias !1740, !noundef !3
  %i.bn = add i64 %i.bm, %i.ab                    ; 2 uses
  store i64 %i.bn, ptr %i.s, align 8, !alias.scope !1737, !noalias !1734
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 56, i1 false), !noalias !1745
  store atomic i64 %i.bn, ptr %i.al release, align 8, !noalias !1745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !1745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 256 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 312 ; 3 uses
  %i.br = load atomic i8, ptr %i.bq seq_cst, align 8, !noalias !1745
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.p, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1745
  %i.bt = cmpxchg ptr %i.bp, i32 0, i32 1 acquire monotonic, align 4, !noalias !1748
  %i.bu = extractvalue { i32, i1 } %i.bt, 1
  br i1 %i.bu, label %.noexc.i.i, label %bb.q, !prof !144

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bp)
          to label %.noexc.i.i unwind label %bb.ap, !noalias !1745

.noexc.i.i:                                       ; preds = %bb.q, %bb.p
  %i.bv = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1748
  %i.bw = and i64 %i.bv, 9223372036854775807
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs8EvorvD8vmS_4ruff.exit.i.i.i, label %bb.r, !prof !144

bb.r:                                             ; preds = %.noexc.i.i
  %i.by = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc2.i.i unwind label %bb.ap, !noalias !1745

.noexc2.i.i:                                      ; preds = %bb.r
  %i.bz = xor i1 %i.by, true
  %i.ca = zext i1 %i.bz to i8
  br label %_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs8EvorvD8vmS_4ruff.exit.i.i.i

_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs8EvorvD8vmS_4ruff.exit.i.i.i: ; preds = %.noexc2.i.i, %.noexc.i.i
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.ca, %.noexc2.i.i ], [ 0, %.noexc.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 260
  %i.cc = load atomic i8, ptr %i.cb monotonic, align 4, !noalias !1748
  %i.cd = icmp ne i8 %i.cc, 0
  invoke void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i1 noundef zeroext %i.cd, i8 noundef %.sroa.01.0.i.i.i.i.i, ptr noundef nonnull align 8 %i.bp)
          to label %.noexc3.i.i unwind label %bb.ap, !noalias !1745

.noexc3.i.i:                                      ; preds = %_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs8EvorvD8vmS_4ruff.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %i.ce = load i64, ptr %i.i, align 8, !range !374, !alias.scope !1751, !noalias !1754, !noundef !3
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.s, label %bb.x, !prof !55

bb.s:                                             ; preds = %.noexc3.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1756
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !1751, !noalias !1754, !nonnull !3, !align !164, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !range !163, !alias.scope !1751, !noalias !1754, !noundef !3
  store ptr %i.ch, ptr %i.g, align 8, !noalias !1756
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.cj, ptr %i.ck, align 8, !noalias !1756
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #42
          to label %bb.u unwind label %bb.t, !noalias !1757

bb.t:                                             ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #40
          to label %.body.i.i unwind label %bb.v, !noalias !1757

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41, !noalias !1757
  unreachable

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryEECs8EvorvD8vmS_4ruff.exit.i.i.i, %bb.af, %.noexc5.i.i.i, %bb.ad, %.lr.ph.i.preheader.i.i.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs8EvorvD8vmS_4ruff(ptr nonnull %i.cp, i8 %i.cr) #40
          to label %.body.i.i unwind label %bb.ao, !noalias !1745

bb.x:                                             ; preds = %.noexc3.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !1751, !noalias !1754, !nonnull !3, !align !164, !noundef !3 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cr = load i8, ptr %i.cq, align 8, !range !163, !alias.scope !1751, !noalias !1754, !noundef !3 ; 2 uses
  %i.cs = trunc nuw i8 %i.cr to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1745
  %i.ct = load atomic i8, ptr %i.bq seq_cst, align 8, !noalias !1745
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1745
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !1758, !noalias !1761, !noundef !3 ; 4 uses
  %i.cy = icmp ult i64 %i.cx, 384307168202282326
  call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryEECs8EvorvD8vmS_4ruff.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.y
  %i.da = invoke noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs8EvorvD8vmS_4ruff(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @153)
          to label %.noexc.i.i.i unwind label %bb.w, !noalias !1745

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !1758, !noalias !1761, !nonnull !3, !noundef !3 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.cx, 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i.i.i.i, %.noexc.i.i.i
  %.sroa.02.012.i.i.i.i.i = phi i64 [ %i.dx, %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i.i.i.i ], [ 0, %.noexc.i.i.i ] ; 3 uses
  %i.de = phi ptr [ %i.df, %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i.i.i.i ], [ %i.dc, %.noexc.i.i.i ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !1763, !noalias !1766, !nonnull !3, !noundef !3 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !noalias !1770, !noundef !3
  %.not.i.i.i.i.i.i = icmp eq i64 %i.di, %i.da
  br i1 %.not.i.i.i.i.i.i, label %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !1763, !noalias !1766, !noundef !3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dm = cmpxchg ptr %i.dl, i64 0, i64 %i.dk acq_rel acquire, align 8, !noalias !1770
  %.sroa.18.0.in.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.dm, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i, label %bb.aa, label %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
end_hunk_0
