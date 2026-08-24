Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.15?download=true
inline.NumInlined: 2118
inline.NumDeleted: 940
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20disconnect_receiversCs8EvorvD8vmS_4ruff:bb.a
  %.not.i = icmp eq i64 %i.ba, %i.o
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesCs8EvorvD8vmS_4ruff.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bb, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesCs8EvorvD8vmS_4ruff.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvCs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [48 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uECs8EvorvD8vmS_4ruff.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !2130
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2130
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.037.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ] ; 15 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %.sroa.012.0.i.be, %.backedge.i.backedge ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %.sroa.07.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.u, label %bb.d, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.v = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter95 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter99 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter100 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter100.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %niter100.next.7 = add i32 %niter100, 8         ; 2 uses
  %niter100.ncmp.7 = icmp eq i32 %niter100.next.7, %unroll_iter99
  br i1 %niter100.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.j, %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !2130
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod97.not = icmp eq i32 %xtraiter95, 0
  br i1 %lcmp.mod97.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod98 = icmp ne i32 %xtraiter95, 0
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter96 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter96.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %epil.iter96.next = add i32 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i32 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !2133

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod91.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod91.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter90 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter90.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %epil.iter90.next = add i32 %epil.iter90, 1     ; 2 uses
  %epil.iter90.cmp.not = icmp eq i32 %epil.iter90.next, %xtraiter89
  br i1 %epil.iter90.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !2134

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.d
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !2130
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2130
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !2130 ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.r, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.unshifted.i = xor i64 %i.ac, %.sroa.07.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.af = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.x, %i.af
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = and i64 %i.ac, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvCs8EvorvD8vmS_4ruff.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.aj, label %bb.k, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.k:                                             ; preds = %bb.j
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.k
  %i.ak = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter89 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.al, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter93 = and i32 %i.ak, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter94 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter94.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %niter94.next.7 = add i32 %niter94, 8           ; 2 uses
  %niter94.ncmp.7 = icmp eq i32 %niter94.next.7, %unroll_iter93
  br i1 %niter94.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, label %.lr.ph.i19.i

bb.l:                                             ; preds = %bb.i
  %i.am = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !2130
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter = and i32 %4, 5                       ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %4, 56
  br label %.lr.ph.i24.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod88 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !2135

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.aq = phi i32 [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.m ]
  %i.ar = load atomic i64, ptr %1 acquire, align 128, !noalias !2130
  %i.as = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2130
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.aq, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.as, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.aa, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.n:                                             ; preds = %bb.l
  %i.at = icmp eq i64 %i.s, 30
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.av = load atomic ptr, ptr %i.au acquire, align 8, !noalias !2130 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.ba, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 6 uses
  %i.ax = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.ax, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !2130
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.q
  %i.ay = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter101 = and i32 %i.ay, 7                 ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.az, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter105 = and i32 %i.ay, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %niter106.next.7 = add i32 %niter106, 8         ; 2 uses
  %niter106.ncmp.7 = icmp eq i32 %niter106.next.7, %unroll_iter105
  br i1 %niter106.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2136

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.q, %bb.p
  %i.ba = add i32 %.sroa.0.02.i30.i, 1
  %i.bb = load atomic ptr, ptr %i.au acquire, align 8, !noalias !2130 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.o
  %.lcssa.i.i = phi ptr [ %i.av, %bb.o ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bd = and i64 %.sroa.01.0.i, -2
  %i.be = add i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.bg = load atomic ptr, ptr %i.bf monotonic, align 8, !noalias !2130
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = zext i1 %i.bh to i64
  %spec.select17.i = or disjoint i64 %i.be, %i.bi
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !2130
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !2130
  br label %bb.r

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvCs8EvorvD8vmS_4ruff.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.i, align 8, !range !1872, !noundef !14 ; 2 uses
  %.not = icmp eq i32 %i.bj, -1
  br i1 %.not, label %bb.ac, label %bb.ab

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i, %bb.n
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !2130
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !2130
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 3 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !noalias !2137
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.r, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bs, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.r ] ; 6 uses
  %i.bp = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !2137
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.t:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.t
  %i.bq = mul nuw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter107 = and i32 %i.bq, 7                 ; 3 uses
  %i.br = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.br, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter111 = and i32 %i.bq, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  %niter112.next.7 = add i32 %niter112, 8         ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111
  br i1 %niter112.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter108 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2137
end_hunk_0
