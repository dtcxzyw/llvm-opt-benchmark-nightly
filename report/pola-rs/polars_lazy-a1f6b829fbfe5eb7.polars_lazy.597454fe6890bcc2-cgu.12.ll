Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_lazy-a1f6b829fbfe5eb7.polars_lazy.597454fe6890bcc2-cgu.12?download=true
inline.NumInlined: 241
inline.NumDeleted: 111
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_recvCs7Ga9Brpi21q_11polars_lazy:bb.a
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !2864

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.z, 56, !dbg !2864
  br label %.lr.ph.i, !dbg !2864

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  %niter.next.7 = add i32 %niter, 8, !dbg !2864   ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !2864
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !2864

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2864
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, label %.lr.ph.i.epil.preheader, !dbg !2864

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod52 = icmp ne i32 %xtraiter, 0, !dbg !2864
  tail call void @llvm.assume(i1 %lcmp.mod52), !dbg !2864
  br label %.lr.ph.i.epil, !dbg !2864

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2866
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !2864 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !2864
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, label %.lr.ph.i.epil, !dbg !2864, !llvm.loop !2802

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f, %bb.g
  %i.ab = add i32 %.sroa.0.029, 1, !dbg !2867
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, !dbg !2868

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !2869
  %i.ac = load atomic i64, ptr %i.f monotonic, align 128, !dbg !2870 ; 2 uses
  %i.ad = load i64, ptr %i.b, align 16, !dbg !2871, !noundef !143 ; 2 uses
  %i.ae = xor i64 %i.ad, -1, !dbg !2872
  %i.af = and i64 %i.ac, %i.ae, !dbg !2873
  %i.ag = icmp eq i64 %i.af, %.sroa.02.0, !dbg !2873
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !2873

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029, i32 6), !dbg !2874 ; 2 uses
  %i.ah = mul nuw nsw i32 %.sroa.0.0.i.i, %.sroa.0.0.i.i, !dbg !2875 ; 2 uses
  %.not.i11 = icmp eq i32 %.sroa.0.029, 0, !dbg !2876
  br i1 %.not.i11, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, label %.lr.ph.i12.preheader, !dbg !2877

.lr.ph.i12.preheader:                             ; preds = %bb.i
  %xtraiter53 = and i32 %i.ah, 5, !dbg !2877      ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.029, 3, !dbg !2877
  br i1 %i.ai, label %.lr.ph.i12.epil.preheader, label %.lr.ph.i12.preheader.new, !dbg !2877

.lr.ph.i12.preheader.new:                         ; preds = %.lr.ph.i12.preheader
  %unroll_iter57 = and i32 %i.ah, 56, !dbg !2877
  br label %.lr.ph.i12, !dbg !2877

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i12
  %lcmp.mod55.not = icmp eq i32 %xtraiter53, 0, !dbg !2877
  br i1 %lcmp.mod55.not, label %._crit_edge.loopexit.i, label %.lr.ph.i12.epil.preheader, !dbg !2877

.lr.ph.i12.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i12.preheader
  %lcmp.mod56 = icmp ne i32 %xtraiter53, 0, !dbg !2877
  tail call void @llvm.assume(i1 %lcmp.mod56), !dbg !2877
  br label %.lr.ph.i12.epil, !dbg !2877

.lr.ph.i12.epil:                                  ; preds = %.lr.ph.i12.epil, %.lr.ph.i12.epil.preheader
  %epil.iter54 = phi i32 [ 0, %.lr.ph.i12.epil.preheader ], [ %epil.iter54.next, %.lr.ph.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  %epil.iter54.next = add i32 %epil.iter54, 1, !dbg !2877 ; 2 uses
  %epil.iter54.cmp.not = icmp eq i32 %epil.iter54.next, %xtraiter53, !dbg !2877
  br i1 %epil.iter54.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i12.epil, !dbg !2877, !llvm.loop !2814

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i12.epil, %._crit_edge.loopexit.i.unr-lcssa
  %i.aj = add i32 %.sroa.0.029, 1, !dbg !2879
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, !dbg !2880

.lr.ph.i12:                                       ; preds = %.lr.ph.i12, %.lr.ph.i12.preheader.new
  %niter58 = phi i32 [ 0, %.lr.ph.i12.preheader.new ], [ %niter58.next.7, %.lr.ph.i12 ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  tail call void @llvm.x86.sse2.pause(), !dbg !2878
  %niter58.next.7 = add i32 %niter58, 8, !dbg !2877 ; 2 uses
  %niter58.ncmp.7 = icmp eq i32 %niter58.next.7, %unroll_iter57, !dbg !2877
  br i1 %niter58.ncmp.7, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i12, !dbg !2877

bb.j:                                             ; preds = %bb.h
  %i.ak = and i64 %i.ad, %i.ac, !dbg !2881
  %i.al = icmp eq i64 %i.ak, 0, !dbg !2881
  br i1 %i.al, label %bb.l, label %bb.k, !dbg !2881

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22: ; preds = %._crit_edge.loopexit.i, %bb.i, %._crit_edge.loopexit.i20, %bb.o, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit
  %.sroa.0.1 = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit ], [ 1, %bb.o ], [ %i.at, %._crit_edge.loopexit.i20 ], [ %i.aj, %._crit_edge.loopexit.i ], [ 1, %bb.i ], !dbg !2836
  %i.am = load atomic i64, ptr %0 monotonic, align 128, !dbg !2882
  br label %bb.b, !dbg !2843

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !2883
  br label %bb.l, !dbg !2884

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.p
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ true, %bb.k ], [ false, %bb.j ], !dbg !2836
  ret i1 %.sroa.0.0, !dbg !2885

bb.m:                                             ; preds = %bb.d
  %i.an = load i64, ptr %i.c, align 8, !dbg !2886, !noundef !143
  %i.ao = add i64 %i.an, %i.m, !dbg !2887
  br label %bb.n, !dbg !2888

bb.n:                                             ; preds = %bb.d, %bb.m
  %.sroa.01.0 = phi i64 [ %i.ao, %bb.m ], [ %i.r, %bb.d ], !dbg !2836
  %i.ap = cmpxchg weak ptr %0, i64 %.sroa.02.0, i64 %.sroa.01.0 seq_cst monotonic, align 8, !dbg !2889
  %i.aq = extractvalue { i64, i1 } %i.ap, 1, !dbg !2889
  br i1 %i.aq, label %bb.p, label %bb.o, !dbg !2890

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i15 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029, i32 6), !dbg !2891 ; 2 uses
  %i.ar = mul nuw nsw i32 %.sroa.0.0.i.i15, %.sroa.0.0.i.i15, !dbg !2892 ; 2 uses
  %.not.i16 = icmp eq i32 %.sroa.0.029, 0, !dbg !2893
  br i1 %.not.i16, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, label %.lr.ph.i17.preheader, !dbg !2894

.lr.ph.i17.preheader:                             ; preds = %bb.o
  %xtraiter59 = and i32 %i.ar, 5, !dbg !2894      ; 3 uses
  %i.as = icmp ult i32 %.sroa.0.029, 3, !dbg !2894
  br i1 %i.as, label %.lr.ph.i17.epil.preheader, label %.lr.ph.i17.preheader.new, !dbg !2894

.lr.ph.i17.preheader.new:                         ; preds = %.lr.ph.i17.preheader
  %unroll_iter63 = and i32 %i.ar, 56, !dbg !2894
  br label %.lr.ph.i17, !dbg !2894

._crit_edge.loopexit.i20.unr-lcssa:               ; preds = %.lr.ph.i17
  %lcmp.mod61.not = icmp eq i32 %xtraiter59, 0, !dbg !2894
  br i1 %lcmp.mod61.not, label %._crit_edge.loopexit.i20, label %.lr.ph.i17.epil.preheader, !dbg !2894

.lr.ph.i17.epil.preheader:                        ; preds = %._crit_edge.loopexit.i20.unr-lcssa, %.lr.ph.i17.preheader
  %lcmp.mod62 = icmp ne i32 %xtraiter59, 0, !dbg !2894
  tail call void @llvm.assume(i1 %lcmp.mod62), !dbg !2894
  br label %.lr.ph.i17.epil, !dbg !2894

.lr.ph.i17.epil:                                  ; preds = %.lr.ph.i17.epil, %.lr.ph.i17.epil.preheader
  %epil.iter60 = phi i32 [ 0, %.lr.ph.i17.epil.preheader ], [ %epil.iter60.next, %.lr.ph.i17.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  %epil.iter60.next = add i32 %epil.iter60, 1, !dbg !2894 ; 2 uses
  %epil.iter60.cmp.not = icmp eq i32 %epil.iter60.next, %xtraiter59, !dbg !2894
  br i1 %epil.iter60.cmp.not, label %._crit_edge.loopexit.i20, label %.lr.ph.i17.epil, !dbg !2894, !llvm.loop !2828

._crit_edge.loopexit.i20:                         ; preds = %.lr.ph.i17.epil, %._crit_edge.loopexit.i20.unr-lcssa
  %i.at = add i32 %.sroa.0.029, 1, !dbg !2896
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, !dbg !2897

.lr.ph.i17:                                       ; preds = %.lr.ph.i17, %.lr.ph.i17.preheader.new
  %niter64 = phi i32 [ 0, %.lr.ph.i17.preheader.new ], [ %niter64.next.7, %.lr.ph.i17 ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  tail call void @llvm.x86.sse2.pause(), !dbg !2895
  %niter64.next.7 = add i32 %niter64, 8, !dbg !2894 ; 2 uses
  %niter64.ncmp.7 = icmp eq i32 %niter64.next.7, %unroll_iter63, !dbg !2894
  br i1 %niter64.ncmp.7, label %._crit_edge.loopexit.i20.unr-lcssa, label %.lr.ph.i17, !dbg !2894

bb.p:                                             ; preds = %bb.n
  store ptr %i.q, ptr %1, align 8, !dbg !2898
  %i.au = load i64, ptr %i.c, align 8, !dbg !2899, !noundef !143
  %i.av = add i64 %i.au, %.sroa.02.0, !dbg !2900
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2901
  store i64 %i.av, ptr %i.aw, align 8, !dbg !2901
  br label %bb.l, !dbg !2902
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13with_capacityCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 128 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #1 !dbg !2903 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 -1, label %bb.d
  ], !dbg !2918, !prof !2914

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25, !dbg !2919
  unreachable, !dbg !2919

bb.c:                                             ; preds = %bb.a
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true), !dbg !2920
  %i.b = lshr i64 -1, %i.a, !dbg !2921
  %i.c = add i64 %i.b, 1, !dbg !2922
  br label %bb.d, !dbg !2923

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.04.0 = phi i64 [ %i.c, %bb.c ], [ 1, %bb.a ], !dbg !2924 ; 2 uses
  %2 = shl i64 %.sroa.04.0, 1, !dbg !2925
  %i.d = tail call { ptr, i64 } @_RINvXsb_NtNtCsgZ49sUHp3tW_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEINtNtNtNtB1H_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtB1H_3ops5range5RangejENCNvMs_BT_INtBT_7ChannelB1C_E13with_capacity0EECs7Ga9Brpi21q_11polars_lazy(i64 noundef 0, i64 noundef %1), !dbg !2926 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0, !dbg !2926
  %i.f = extractvalue { ptr, i64 } %i.d, 1, !dbg !2926
  store i64 0, ptr %0, align 128, !dbg !2927
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2927
  store i64 0, ptr %i.g, align 128, !dbg !2927
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408, !dbg !2927
  store ptr %i.e, ptr %i.h, align 8, !dbg !2927
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !2927
  store i64 %i.f, ptr %i.i, align 32, !dbg !2927
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !2927
  store i64 %1, ptr %i.j, align 128, !dbg !2927
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !2927
  store i64 %2, ptr %i.k, align 8, !dbg !2927
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !2927
  store i64 %.sroa.04.0, ptr %i.l, align 16, !dbg !2927
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !2927
  store i32 0, ptr %i.m, align 128, !dbg !2927
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260, !dbg !2927
  store i8 0, ptr %.sroa.06.sroa.3.0..sroa_idx, align 4, !dbg !2927
  %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !2927
  store i64 0, ptr %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !2927
  %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !2927
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 16, !dbg !2927
  %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !2927
  %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !2927
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false), !dbg !2927
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !2927
  %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304, !dbg !2927
  store i64 0, ptr %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 16, !dbg !2927
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !2927
  store i8 1, ptr %.sroa.37.0..sroa_idx, align 8, !dbg !2927
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !2927
  store i32 0, ptr %i.n, align 64, !dbg !2927
  %.sroa.06.sroa.3.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 324, !dbg !2927
  store i8 0, ptr %.sroa.06.sroa.3.0..sroa_idx26, align 4, !dbg !2927
  %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !2927
  store i64 0, ptr %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 8, !dbg !2927
  %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !2927
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 16, !dbg !2927
  %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !2927
  %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !2927
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, i8 0, i64 16, i1 false), !dbg !2927
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 8, !dbg !2927
  %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !2927
  store i64 0, ptr %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 16, !dbg !2927
  %.sroa.37.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !2927
  store i8 1, ptr %.sroa.37.0..sroa_idx8, align 8, !dbg !2927
  ret void, !dbg !2928
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE18disconnect_sendersCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 128 %0) unnamed_addr #1 !dbg !2929 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !2939 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !2939, !noundef !143
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2940
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8, !dbg !2941
  %i.e = load i64, ptr %i.a, align 16, !dbg !2942, !noundef !143
  %i.f = and i64 %i.e, %i.d, !dbg !2943
  %i.g = icmp eq i64 %i.f, 0, !dbg !2943          ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !2943

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !2944
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #28, !dbg !2945
  br label %bb.c, !dbg !2946

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g, !dbg !2947
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20disconnect_receiversCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 128 %0) unnamed_addr #1 !dbg !2948 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !2993 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !2993, !noundef !143
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2994
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8, !dbg !2995 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !dbg !2996, !noundef !143 ; 2 uses
  %i.f = and i64 %i.e, %i.d, !dbg !2997
  %i.g = icmp eq i64 %i.f, 0, !dbg !2997          ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !2997

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !2998
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #28, !dbg !2999
  %.pre = load i64, ptr %i.a, align 16, !dbg !3000
  br label %bb.c, !dbg !3001

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ], !dbg !3000 ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128, !dbg !3002
  %i.k = xor i64 %i.i, -1, !dbg !3003
  %i.l = and i64 %i.d, %i.k, !dbg !3004
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d, !dbg !3005

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %bb.j ], !dbg !3006
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %bb.j ], !dbg !3007 ; 7 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %bb.j ], !dbg !3008 ; 5 uses
  %i.r = add i64 %i.q, -1, !dbg !3009
  %i.s = and i64 %.sroa.0.0.i, %i.r, !dbg !3010   ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !dbg !3011, !noundef !143
  %i.u = sub i64 0, %i.t, !dbg !3012
  %i.v = and i64 %.sroa.0.0.i, %i.u, !dbg !3013
  %i.w = load ptr, ptr %i.n, align 8, !dbg !3014, !nonnull !143, !noundef !143
  %i.x = load i64, ptr %i.o, align 32, !dbg !3014, !noundef !143
  %i.y = icmp ult i64 %i.s, %i.x, !dbg !3015
  tail call void @llvm.assume(i1 %i.y), !dbg !3016
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %i.s, !dbg !3017 ; 2 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !dbg !3018 ; 2 uses
  %i.ab = add i64 %.sroa.0.0.i, 1, !dbg !3019
  %i.ac = icmp eq i64 %i.ab, %i.aa, !dbg !3019
  br i1 %i.ac, label %bb.f, label %bb.e, !dbg !3019

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %i.l, %.sroa.0.0.i, !dbg !3020
  br i1 %i.ad, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20discard_all_messagesCs7Ga9Brpi21q_11polars_lazy.exit, label %bb.g, !dbg !3020

bb.f:                                             ; preds = %bb.d
  %i.ae = add nuw i64 %i.s, 1, !dbg !3021
  %i.af = load i64, ptr %i.p, align 128, !dbg !3022, !noundef !143
  %i.ag = icmp ult i64 %i.ae, %i.af, !dbg !3021
  br i1 %i.ag, label %bb.l, label %bb.k, !dbg !3021

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp ult i32 %.sroa.0.07.i, 7, !dbg !3023
  br i1 %i.ah, label %bb.i, label %bb.h, !dbg !3023

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !3024
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !3024

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0, !dbg !3025
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !3026

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.ai = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i, !dbg !3027 ; 2 uses
  %xtraiter = and i32 %i.ai, 7, !dbg !3026        ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.07.i, 3, !dbg !3026
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !3026

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56, !dbg !3026
  br label %.lr.ph.i.i, !dbg !3026

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  %niter.next.7 = add i32 %niter, 8, !dbg !3026   ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !3026
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !3026

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !3026
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !3026

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0, !dbg !3026
  tail call void @llvm.assume(i1 %lcmp.mod2), !dbg !3026
  br label %.lr.ph.i.i.epil, !dbg !3026

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !3028
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !3026 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !3026
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !3026, !llvm.loop !2982

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.ak = add i32 %.sroa.0.07.i, 1, !dbg !3029
  br label %bb.j, !dbg !3030

bb.j:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.ak, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !3031
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !3008
  %.pre.i = load i64, ptr %i.a, align 16, !dbg !3006
  br label %bb.d, !dbg !3005

bb.k:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !dbg !3032, !noundef !143
  %i.am = add i64 %i.al, %i.v, !dbg !3033
  br label %bb.l, !dbg !3034

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.am, %bb.k ], [ %i.aa, %bb.f ], !dbg !3035
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !3036
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 dereferenceable(72) %i.an), !dbg !3037
  br label %bb.j, !dbg !3030

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20discard_all_messagesCs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.e
  ret i1 %i.g, !dbg !3038
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3039 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!2723 = !DILocation(line: 720, column: 9, scope: !2698, inlinedAt: !2710)
!2724 = !DILocation(line: 495, column: 6, scope: !2694)
!2725 = distinct !DILocation(line: 3065, column: 26, scope: !83, inlinedAt: !2736)
!2726 = distinct !DILocation(line: 720, column: 40, scope: !91, inlinedAt: !2737)
!2727 = distinct !DILocation(line: 121, column: 24, scope: !90, inlinedAt: !2726)
!2728 = distinct !DILocation(line: 221, column: 5, scope: !89, inlinedAt: !2727)
!2729 = distinct !DILocation(line: 616, column: 6, scope: !88, inlinedAt: !2728)
!2730 = distinct !DILocation(line: 464, column: 31, scope: !87, inlinedAt: !2729)
!2731 = distinct !DILocation(line: 2870, column: 26, scope: !86, inlinedAt: !2730)
!2732 = distinct !DILocation(line: 123, column: 17, scope: !92, inlinedAt: !2726)
!2733 = distinct !DILocation(line: 141, column: 21, scope: !95, inlinedAt: !2732)
!2734 = distinct !DILocation(line: 741, column: 18, scope: !94, inlinedAt: !2733)
!2735 = !DILocation(line: 492, column: 24, scope: !85)
!2736 = !DILocation(line: 32, column: 23, scope: !84, inlinedAt: !2735)
!2737 = !DILocation(line: 493, column: 13, scope: !85)
!2738 = !DILocation(line: 3989, column: 17, scope: !82, inlinedAt: !2725)
!2739 = !DILocation(line: 32, column: 12, scope: !84, inlinedAt: !2735)
!2740 = !DILocation(line: 33, column: 18, scope: !84, inlinedAt: !2735)
!2741 = !DILocation(line: 3904, column: 24, scope: !1, inlinedAt: !2731)
!2742 = !DILocation(line: 464, column: 12, scope: !87, inlinedAt: !2729)
!2743 = !DILocation(line: 476, column: 13, scope: !87, inlinedAt: !2729)
!2744 = !DILocation(line: 616, column: 5, scope: !88, inlinedAt: !2728)
!2745 = !DILocation(line: 123, column: 25, scope: !92, inlinedAt: !2726)
!2746 = !DILocation(line: 0, scope: !87, inlinedAt: !2729)
!2747 = !DILocation(line: 720, column: 28, scope: !91, inlinedAt: !2737)
!2748 = !DILocation(line: 3904, column: 24, scope: !93, inlinedAt: !2734)
!2749 = !DILocation(line: 123, column: 12, scope: !92, inlinedAt: !2726)
!2750 = !DILocation(line: 720, column: 9, scope: !91, inlinedAt: !2737)
!2751 = !DILocation(line: 495, column: 6, scope: !85)
!2752 = distinct !DISubprogram(name: "lock<bool>", linkageName: "_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexbE4lockCs7Ga9Brpi21q_11polars_lazy", scope: !319, file: !238, line: 490, type: !144, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2753 = distinct !DISubprogram(name: "compare_exchange", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE16compare_exchange", scope: !149, file: !145, line: 3059, type: !144, scopeLine: 3059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2754 = distinct !DISubprogram(name: "lock", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4lock", scope: !253, file: !250, line: 31, type: !144, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2755 = distinct !DILocation(line: 3065, column: 26, scope: !2753, inlinedAt: !2767)
!2756 = distinct !DISubprogram(name: "new<bool>", linkageName: "_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardbE3newCs7Ga9Brpi21q_11polars_lazy", scope: !320, file: !238, line: 719, type: !144, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2757 = distinct !DILocation(line: 720, column: 40, scope: !2756, inlinedAt: !2768)
!2758 = distinct !DILocation(line: 121, column: 24, scope: !90, inlinedAt: !2757)
!2759 = distinct !DILocation(line: 221, column: 5, scope: !89, inlinedAt: !2758)
!2760 = distinct !DILocation(line: 616, column: 6, scope: !88, inlinedAt: !2759)
!2761 = distinct !DILocation(line: 464, column: 31, scope: !87, inlinedAt: !2760)
!2762 = distinct !DILocation(line: 2870, column: 26, scope: !86, inlinedAt: !2761)
!2763 = distinct !DILocation(line: 123, column: 17, scope: !92, inlinedAt: !2757)
!2764 = distinct !DILocation(line: 141, column: 21, scope: !95, inlinedAt: !2763)
!2765 = distinct !DILocation(line: 741, column: 18, scope: !94, inlinedAt: !2764)
!2766 = !DILocation(line: 492, column: 24, scope: !2752)
!2767 = !DILocation(line: 32, column: 23, scope: !2754, inlinedAt: !2766)
!2768 = !DILocation(line: 493, column: 13, scope: !2752)
!2769 = !DILocation(line: 3989, column: 17, scope: !82, inlinedAt: !2755)
!2770 = !DILocation(line: 32, column: 12, scope: !2754, inlinedAt: !2766)
!2771 = !DILocation(line: 33, column: 18, scope: !2754, inlinedAt: !2766)
!2772 = !DILocation(line: 3904, column: 24, scope: !1, inlinedAt: !2762)
!2773 = !DILocation(line: 464, column: 12, scope: !87, inlinedAt: !2760)
!2774 = !DILocation(line: 476, column: 13, scope: !87, inlinedAt: !2760)
!2775 = !DILocation(line: 616, column: 5, scope: !88, inlinedAt: !2759)
!2776 = !DILocation(line: 123, column: 25, scope: !92, inlinedAt: !2757)
!2777 = !DILocation(line: 0, scope: !87, inlinedAt: !2760)
!2778 = !DILocation(line: 720, column: 28, scope: !2756, inlinedAt: !2768)
!2779 = !DILocation(line: 3904, column: 24, scope: !93, inlinedAt: !2765)
!2780 = !DILocation(line: 123, column: 12, scope: !92, inlinedAt: !2757)
!2781 = !DILocation(line: 720, column: 9, scope: !2756, inlinedAt: !2768)
!2782 = !DILocation(line: 495, column: 6, scope: !2752)
!2783 = distinct !DISubprogram(name: "start_recv<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_recvCs7Ga9Brpi21q_11polars_lazy", scope: !270, file: !263, line: 215, type: !144, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2784 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !149, file: !145, line: 2868, type: !144, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2785 = distinct !DILexicalBlock(scope: !2783, file: !263, line: 216, column: 9)
!2786 = distinct !DILocation(line: 2870, column: 26, scope: !2784, inlinedAt: !2830)
!2787 = distinct !DILexicalBlock(scope: !2785, file: !263, line: 217, column: 9)
!2788 = distinct !DILexicalBlock(scope: !2787, file: !263, line: 221, column: 13)
!2789 = distinct !DILexicalBlock(scope: !2788, file: !263, line: 222, column: 13)
!2790 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE13get_uncheckedCs7Ga9Brpi21q_11polars_lazy", scope: !341, file: !339, line: 239, type: !144, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2791 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB5_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13get_uncheckedjECs7Ga9Brpi21q_11polars_lazy", scope: !297, file: !295, line: 639, type: !144, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !263, line: 226, column: 13)
!2793 = distinct !DILocation(line: 2870, column: 26, scope: !2784, inlinedAt: !2834)
!2794 = distinct !DILexicalBlock(scope: !2792, file: !263, line: 227, column: 13)
!2795 = distinct !DILocation(line: 281, column: 25, scope: !2794)
!2796 = distinct !DILocation(line: 128, column: 22, scope: !350, inlinedAt: !2795)
!2797 = distinct !DILocation(line: 866, column: 14, scope: !102, inlinedAt: !2796)
!2798 = distinct !DILocation(line: 781, column: 12, scope: !101, inlinedAt: !2797)
!2799 = distinct !DILocation(line: 128, column: 41, scope: !99, inlinedAt: !2795)
!2800 = distinct !DILocation(line: 129, column: 17, scope: !103, inlinedAt: !2795)
!2801 = distinct !DILocation(line: 287, column: 13, scope: !108, inlinedAt: !2800)
!2802 = distinct !{!2802, !356}
!2803 = distinct !DILocation(line: 260, column: 17, scope: !2794)
!2804 = distinct !DILocation(line: 2870, column: 26, scope: !2784, inlinedAt: !2835)
!2805 = distinct !DILexicalBlock(scope: !2794, file: !263, line: 261, column: 17)
!2806 = distinct !DILocation(line: 277, column: 25, scope: !2805)
!2807 = distinct !DILocation(line: 114, column: 36, scope: !110, inlinedAt: !2806)
!2808 = distinct !DILocation(line: 115, column: 26, scope: !111, inlinedAt: !2806)
!2809 = distinct !DILocation(line: 115, column: 18, scope: !358, inlinedAt: !2806)
!2810 = distinct !DILocation(line: 866, column: 14, scope: !114, inlinedAt: !2809)
!2811 = distinct !DILocation(line: 781, column: 12, scope: !113, inlinedAt: !2810)
!2812 = distinct !DILocation(line: 116, column: 13, scope: !115, inlinedAt: !2806)
!2813 = distinct !DILocation(line: 287, column: 13, scope: !117, inlinedAt: !2812)
!2814 = distinct !{!2814, !356}
!2815 = distinct !DILocation(line: 119, column: 33, scope: !111, inlinedAt: !2806)
!2816 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !156, file: !154, line: 2510, type: !144, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2817 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !149, file: !145, line: 3123, type: !144, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2818 = distinct !DILexicalBlock(scope: !2794, file: !263, line: 231, column: 17)
!2819 = distinct !DILocation(line: 3130, column: 21, scope: !2817, inlinedAt: !2839)
!2820 = distinct !DILocation(line: 255, column: 33, scope: !2818)
!2821 = distinct !DILocation(line: 114, column: 36, scope: !110, inlinedAt: !2820)
!2822 = distinct !DILocation(line: 115, column: 26, scope: !111, inlinedAt: !2820)
!2823 = distinct !DILocation(line: 115, column: 18, scope: !358, inlinedAt: !2820)
!2824 = distinct !DILocation(line: 866, column: 14, scope: !114, inlinedAt: !2823)
!2825 = distinct !DILocation(line: 781, column: 12, scope: !113, inlinedAt: !2824)
!2826 = distinct !DILocation(line: 116, column: 13, scope: !115, inlinedAt: !2820)
!2827 = distinct !DILocation(line: 287, column: 13, scope: !117, inlinedAt: !2826)
!2828 = distinct !{!2828, !356}
!2829 = distinct !DILocation(line: 119, column: 33, scope: !111, inlinedAt: !2820)
!2830 = !DILocation(line: 217, column: 34, scope: !2785)
!2831 = !DILocation(line: 0, scope: !2785)
!2832 = !DILocation(line: 226, column: 45, scope: !2789)
!2833 = !DILocation(line: 646, column: 26, scope: !2791, inlinedAt: !2832)
!2834 = !DILocation(line: 227, column: 36, scope: !2792)
!2835 = !DILocation(line: 261, column: 38, scope: !2794)
!2836 = !DILocation(line: 0, scope: !2794)
!2837 = !DILocation(line: 2870, column: 26, scope: !2784, inlinedAt: !2836)
!2838 = !DILocation(line: 238, column: 25, scope: !2794)
!2839 = !DILocation(line: 242, column: 33, scope: !2818)
!2840 = !DILocation(line: 251, column: 50, scope: !2818)
!2841 = !DILexicalBlockFile(scope: !2794, file: !294, discriminator: 0)
!2842 = !DILocation(line: 3904, column: 24, scope: !1, inlinedAt: !2786)
!2843 = !DILocation(line: 219, column: 9, scope: !2787)
!2844 = !DILocation(line: 0, scope: !2783)
!2845 = !DILocation(line: 2870, column: 26, scope: !2784, inlinedAt: !2831)
!2846 = !DILocation(line: 221, column: 33, scope: !2787)
!2847 = !DILocation(line: 221, column: 32, scope: !2787)
!2848 = !DILocation(line: 221, column: 25, scope: !2787)
!2849 = !DILocation(line: 222, column: 32, scope: !2788)
!2850 = !DILocation(line: 222, column: 30, scope: !2788)
!2851 = !DILocation(line: 222, column: 23, scope: !2788)
!2852 = !DILocation(line: 226, column: 33, scope: !2789)
!2853 = !DILocation(line: 252, column: 39, scope: !2790, inlinedAt: !2833)
!2854 = !DILocation(line: 252, column: 13, scope: !2790, inlinedAt: !2833)
!2855 = !DILocation(line: 253, column: 13, scope: !2790, inlinedAt: !2833)
!2856 = !DILocation(line: 3905, column: 24, scope: !1, inlinedAt: !2793)
!2857 = !DILocation(line: 230, column: 16, scope: !2794)
!2858 = !DILocation(line: 259, column: 23, scope: !2794)
!2859 = !DILocation(line: 231, column: 30, scope: !2794)
!2860 = !DILocation(line: 231, column: 42, scope: !2794)
!2861 = !DILocation(line: 127, column: 12, scope: !99, inlinedAt: !2795)
!2862 = !DILocation(line: 132, column: 13, scope: !99, inlinedAt: !2795)
!2863 = !DILocation(line: 1917, column: 50, scope: !100, inlinedAt: !2798)
!2864 = !DILocation(line: 781, column: 12, scope: !101, inlinedAt: !2797)
!2865 = !DILocation(line: 3558, column: 28, scope: !106, inlinedAt: !2799)
!2866 = !DILocation(line: 25, column: 14, scope: !107, inlinedAt: !2801)
!2867 = !DILocation(line: 135, column: 23, scope: !99, inlinedAt: !2795)
!2868 = !DILocation(line: 259, column: 20, scope: !2794)
!2869 = !DILocation(line: 4390, column: 23, scope: !21, inlinedAt: !2803)
!2870 = !DILocation(line: 3904, column: 24, scope: !1, inlinedAt: !2804)
!2871 = !DILocation(line: 264, column: 29, scope: !2805)
!2872 = !DILocation(line: 264, column: 28, scope: !2805)
!2873 = !DILocation(line: 264, column: 20, scope: !2805)
!2874 = !DILocation(line: 1077, column: 12, scope: !109, inlinedAt: !2807)
!2875 = !DILocation(line: 3558, column: 28, scope: !106, inlinedAt: !2808)
!2876 = !DILocation(line: 1917, column: 50, scope: !112, inlinedAt: !2811)
!2877 = !DILocation(line: 781, column: 12, scope: !113, inlinedAt: !2810)
!2878 = !DILocation(line: 25, column: 14, scope: !116, inlinedAt: !2813)
!2879 = !DILocation(line: 119, column: 23, scope: !111, inlinedAt: !2806)
!2880 = !DILocation(line: 555, column: 18, scope: !118, inlinedAt: !2815)
!2881 = !DILocation(line: 266, column: 24, scope: !2805)
!2882 = !DILocation(line: 3904, column: 24, scope: !1, inlinedAt: !2837)
!2883 = !DILocation(line: 269, column: 25, scope: !2805)
!2884 = !DILocation(line: 270, column: 25, scope: !2805)
!2885 = !DILocation(line: 285, column: 6, scope: !2783)
!2886 = !DILocation(line: 238, column: 38, scope: !2794)
!2887 = !DILocation(line: 2511, column: 13, scope: !2816, inlinedAt: !2838)
!2888 = !DILocation(line: 231, column: 27, scope: !2794)
!2889 = !DILocation(line: 4081, column: 17, scope: !119, inlinedAt: !2819)
!2890 = !DILocation(line: 242, column: 17, scope: !2818)
!2891 = !DILocation(line: 1077, column: 12, scope: !109, inlinedAt: !2821)
!2892 = !DILocation(line: 3558, column: 28, scope: !106, inlinedAt: !2822)
!2893 = !DILocation(line: 1917, column: 50, scope: !112, inlinedAt: !2825)
!2894 = !DILocation(line: 781, column: 12, scope: !113, inlinedAt: !2824)
!2895 = !DILocation(line: 25, column: 14, scope: !116, inlinedAt: !2827)
!2896 = !DILocation(line: 119, column: 23, scope: !111, inlinedAt: !2820)
!2897 = !DILocation(line: 555, column: 18, scope: !118, inlinedAt: !2829)
!2898 = !DILocation(line: 250, column: 25, scope: !2818)
!2899 = !DILocation(line: 251, column: 63, scope: !2818)
!2900 = !DILocation(line: 2511, column: 13, scope: !2816, inlinedAt: !2840)
!2901 = !DILocation(line: 251, column: 25, scope: !2818)
!2902 = !DILocation(line: 0, scope: !2841)
!2903 = distinct !DISubprogram(name: "with_capacity<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13with_capacityCs7Ga9Brpi21q_11polars_lazy", scope: !270, file: !263, line: 90, type: !144, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2904 = distinct !DISubprogram(name: "one_less_than_next_power_of_two", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj31one_less_than_next_power_of_two", scope: !156, file: !154, line: 3829, type: !144, scopeLine: 3829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2905 = distinct !DILexicalBlock(scope: !2904, file: !154, line: 3832, column: 13)
!2906 = distinct !DISubprogram(name: "next_power_of_two", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj17next_power_of_two", scope: !156, file: !154, line: 3860, type: !144, scopeLine: 3860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2907 = distinct !DILexicalBlock(scope: !2905, file: !154, line: 3837, column: 13)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !263, line: 94, column: 9)
!2909 = distinct !DISubprogram(name: "collect<core::iter::adapters::map::Map<core::ops::range::Range<usize>, std::sync::mpmc::array::{impl#1}::with_capacity::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>, alloc::boxed::Box<[std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>], alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB1q_7ChannelINtNtBc_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtB1q_4SlotB2j_EEECs7Ga9Brpi21q_11polars_lazy", scope: !335, file: !331, line: 2091, type: !144, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2910 = distinct !DILexicalBlock(scope: !2908, file: !263, line: 95, column: 9)
!2911 = distinct !DILexicalBlock(scope: !2910, file: !263, line: 98, column: 9)
!2912 = distinct !DILexicalBlock(scope: !2911, file: !263, line: 100, column: 9)
!2913 = distinct !DILexicalBlock(scope: !2912, file: !263, line: 104, column: 9)
!2914 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!2915 = !DILocation(line: 94, column: 34, scope: !2903)
!2916 = !DILocation(line: 3861, column: 18, scope: !2906, inlinedAt: !2915)
!2917 = !DILocation(line: 109, column: 14, scope: !2912)
!2918 = !DILocation(line: 91, column: 17, scope: !2903)
!2919 = !DILocation(line: 91, column: 9, scope: !2903)
!2920 = !DILocation(line: 3837, column: 30, scope: !2905, inlinedAt: !2916)
!2921 = !DILocation(line: 3838, column: 13, scope: !2907, inlinedAt: !2916)
!2922 = !DILocation(line: 3861, column: 13, scope: !2906, inlinedAt: !2915)
!2923 = !DILocation(line: 3839, column: 10, scope: !2904, inlinedAt: !2916)
!2924 = !DILocation(line: 0, scope: !2904, inlinedAt: !2916)
!2925 = !DILocation(line: 95, column: 23, scope: !2908)
!2926 = !DILocation(line: 2104, column: 9, scope: !2909, inlinedAt: !2917)
!2927 = !DILocation(line: 111, column: 9, scope: !2913)
!2928 = !DILocation(line: 121, column: 6, scope: !2903)
!2929 = distinct !DISubprogram(name: "disconnect_senders<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE18disconnect_sendersCs7Ga9Brpi21q_11polars_lazy", scope: !270, file: !263, line: 451, type: !144, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2930 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !273, file: !271, line: 2443, type: !144, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2931 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !149, file: !145, line: 3293, type: !144, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2932 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !149, file: !145, line: 3614, type: !144, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2933 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECs7Ga9Brpi21q_11polars_lazy", scope: !148, file: !145, line: 4131, type: !144, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !263, line: 452, column: 9)
!2935 = !DILocation(line: 452, column: 30, scope: !2929)
!2936 = !DILocation(line: 3295, column: 41, scope: !2931, inlinedAt: !2935)
!2937 = !DILocation(line: 3615, column: 24, scope: !2932, inlinedAt: !2936)
!2938 = !DILocation(line: 3295, column: 26, scope: !2931, inlinedAt: !2935)
!2939 = !DILocation(line: 452, column: 39, scope: !2929)
!2940 = !DILocation(line: 2447, column: 9, scope: !2930, inlinedAt: !2937)
!2941 = !DILocation(line: 4135, column: 23, scope: !2933, inlinedAt: !2938)
!2942 = !DILocation(line: 454, column: 19, scope: !2934)
!2943 = !DILocation(line: 454, column: 12, scope: !2934)
!2944 = !DILocation(line: 455, column: 13, scope: !2934)
!2945 = !DILocation(line: 455, column: 28, scope: !2934)
!2946 = !DILocation(line: 454, column: 9, scope: !2934)
!2947 = !DILocation(line: 460, column: 6, scope: !2929)
!2948 = distinct !DISubprogram(name: "disconnect_receivers<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20disconnect_receiversCs7Ga9Brpi21q_11polars_lazy", scope: !270, file: !263, line: 470, type: !144, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2949 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !273, file: !271, line: 2443, type: !144, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2950 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !149, file: !145, line: 3293, type: !144, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2951 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !149, file: !145, line: 3614, type: !144, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2952 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECs7Ga9Brpi21q_11polars_lazy", scope: !148, file: !145, line: 4131, type: !144, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2953 = distinct !DILexicalBlock(scope: !2948, file: !263, line: 471, column: 9)
!2954 = distinct !DISubprogram(name: "discard_all_messages<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20discard_all_messagesCs7Ga9Brpi21q_11polars_lazy", scope: !270, file: !263, line: 495, type: !144, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2955 = distinct !DILexicalBlock(scope: !2954, file: !263, line: 501, column: 9)
!2956 = distinct !DILexicalBlock(scope: !2953, file: !263, line: 472, column: 9)
!2957 = distinct !DILocation(line: 479, column: 23, scope: !2956)
!2958 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !149, file: !145, line: 2868, type: !144, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2959 = distinct !DILocation(line: 501, column: 34, scope: !2954, inlinedAt: !2957)
!2960 = distinct !DILocation(line: 2870, column: 26, scope: !2958, inlinedAt: !2959)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !263, line: 502, column: 9)
!2962 = distinct !DILexicalBlock(scope: !2961, file: !263, line: 504, column: 9)
!2963 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff3new", scope: !344, file: !342, line: 104, type: !144, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2964 = distinct !DILocation(line: 504, column: 23, scope: !2961, inlinedAt: !2957)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !263, line: 507, column: 13)
!2966 = distinct !DILexicalBlock(scope: !2965, file: !263, line: 508, column: 13)
!2967 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE13get_uncheckedCs7Ga9Brpi21q_11polars_lazy", scope: !341, file: !339, line: 239, type: !144, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2968 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB5_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13get_uncheckedjECs7Ga9Brpi21q_11polars_lazy", scope: !297, file: !295, line: 639, type: !144, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2969 = distinct !DILocation(line: 512, column: 45, scope: !2966, inlinedAt: !2957)
!2970 = distinct !DILocation(line: 646, column: 26, scope: !2968, inlinedAt: !2969)
!2971 = distinct !DILexicalBlock(scope: !2966, file: !263, line: 512, column: 13)
!2972 = distinct !DILocation(line: 513, column: 36, scope: !2971, inlinedAt: !2957)
!2973 = distinct !DILocation(line: 2870, column: 26, scope: !2958, inlinedAt: !2972)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !263, line: 513, column: 13)
!2975 = distinct !DILocation(line: 536, column: 25, scope: !2974, inlinedAt: !2957)
!2976 = distinct !DILocation(line: 128, column: 22, scope: !350, inlinedAt: !2975)
!2977 = distinct !DILocation(line: 866, column: 14, scope: !102, inlinedAt: !2976)
!2978 = distinct !DILocation(line: 781, column: 12, scope: !101, inlinedAt: !2977)
!2979 = distinct !DILocation(line: 128, column: 41, scope: !99, inlinedAt: !2975)
!2980 = distinct !DILocation(line: 129, column: 17, scope: !103, inlinedAt: !2975)
!2981 = distinct !DILocation(line: 287, column: 13, scope: !108, inlinedAt: !2980)
!2982 = distinct !{!2982, !356}
!2983 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !156, file: !154, line: 2510, type: !144, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2984 = distinct !DILocation(line: 524, column: 25, scope: !2974, inlinedAt: !2957)
!2985 = distinct !DISubprogram(name: "get<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtB7_3mem12maybe_uninit11MaybeUninitINtNtB7_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !273, file: !271, line: 2443, type: !144, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2986 = distinct !DILocation(line: 528, column: 32, scope: !2974, inlinedAt: !2957)
!2987 = distinct !DISubprogram(name: "assume_init_drop<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE16assume_init_dropCs7Ga9Brpi21q_11polars_lazy", scope: !179, file: !176, line: 825, type: !144, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!2988 = distinct !DILocation(line: 528, column: 39, scope: !2974, inlinedAt: !2957)
!2989 = !DILocation(line: 471, column: 30, scope: !2948)
!2990 = !DILocation(line: 3295, column: 41, scope: !2950, inlinedAt: !2989)
!2991 = !DILocation(line: 3615, column: 24, scope: !2951, inlinedAt: !2990)
!2992 = !DILocation(line: 3295, column: 26, scope: !2950, inlinedAt: !2989)
!2993 = !DILocation(line: 471, column: 39, scope: !2948)
!2994 = !DILocation(line: 2447, column: 9, scope: !2949, inlinedAt: !2991)
!2995 = !DILocation(line: 4135, column: 23, scope: !2952, inlinedAt: !2992)
!2996 = !DILocation(line: 472, column: 38, scope: !2953)
!2997 = !DILocation(line: 472, column: 31, scope: !2953)
!2998 = !DILocation(line: 473, column: 13, scope: !2953)
!2999 = !DILocation(line: 473, column: 26, scope: !2953)
!3000 = !DILocation(line: 502, column: 28, scope: !2955, inlinedAt: !2957)
!3001 = !DILocation(line: 472, column: 28, scope: !2953)
!3002 = !DILocation(line: 3904, column: 24, scope: !1, inlinedAt: !2960)
!3003 = !DILocation(line: 502, column: 27, scope: !2955, inlinedAt: !2957)
!3004 = !DILocation(line: 502, column: 20, scope: !2955, inlinedAt: !2957)
!3005 = !DILocation(line: 505, column: 9, scope: !2962, inlinedAt: !2957)
!3006 = !DILocation(line: 507, column: 33, scope: !2962, inlinedAt: !2957)
!3007 = !DILocation(line: 105, column: 9, scope: !2963, inlinedAt: !2964)
!3008 = !DILocation(line: 0, scope: !2954, inlinedAt: !2957)
!3009 = !DILocation(line: 507, column: 32, scope: !2962, inlinedAt: !2957)
!3010 = !DILocation(line: 507, column: 25, scope: !2962, inlinedAt: !2957)
!3011 = !DILocation(line: 508, column: 32, scope: !2965, inlinedAt: !2957)
!3012 = !DILocation(line: 508, column: 30, scope: !2965, inlinedAt: !2957)
!3013 = !DILocation(line: 508, column: 23, scope: !2965, inlinedAt: !2957)
!3014 = !DILocation(line: 512, column: 33, scope: !2966, inlinedAt: !2957)
!3015 = !DILocation(line: 252, column: 39, scope: !2967, inlinedAt: !2970)
!3016 = !DILocation(line: 252, column: 13, scope: !2967, inlinedAt: !2970)
!3017 = !DILocation(line: 253, column: 13, scope: !2967, inlinedAt: !2970)
!3018 = !DILocation(line: 3905, column: 24, scope: !1, inlinedAt: !2973)
!3019 = !DILocation(line: 516, column: 16, scope: !2974, inlinedAt: !2957)
!3020 = !DILocation(line: 531, column: 23, scope: !2974, inlinedAt: !2957)
!3021 = !DILocation(line: 517, column: 27, scope: !2974, inlinedAt: !2957)
!3022 = !DILocation(line: 517, column: 39, scope: !2974, inlinedAt: !2957)
!3023 = !DILocation(line: 127, column: 12, scope: !99, inlinedAt: !2975)
!3024 = !DILocation(line: 132, column: 13, scope: !99, inlinedAt: !2975)
!3025 = !DILocation(line: 1917, column: 50, scope: !100, inlinedAt: !2978)
!3026 = !DILocation(line: 781, column: 12, scope: !101, inlinedAt: !2977)
!3027 = !DILocation(line: 3558, column: 28, scope: !106, inlinedAt: !2979)
!3028 = !DILocation(line: 25, column: 14, scope: !107, inlinedAt: !2981)
!3029 = !DILocation(line: 135, column: 23, scope: !99, inlinedAt: !2975)
!3030 = !DILocation(line: 516, column: 13, scope: !2974, inlinedAt: !2957)
!3031 = !DILocation(line: 0, scope: !2961, inlinedAt: !2957)
!3032 = !DILocation(line: 524, column: 38, scope: !2974, inlinedAt: !2957)
!3033 = !DILocation(line: 2511, column: 13, scope: !2983, inlinedAt: !2984)
!3034 = !DILocation(line: 517, column: 24, scope: !2974, inlinedAt: !2957)
!3035 = !DILocation(line: 0, scope: !2974, inlinedAt: !2957)
!3036 = !DILocation(line: 2447, column: 9, scope: !2985, inlinedAt: !2986)
!3037 = !DILocation(line: 832, column: 18, scope: !2987, inlinedAt: !2988)
!3038 = !DILocation(line: 481, column: 6, scope: !2948)
!3039 = distinct !DISubprogram(name: "recv<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvCs7Ga9Brpi21q_11polars_lazy", scope: !270, file: !263, line: 375, type: !144, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3040 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !360, file: !266, line: 5, type: !144, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3041 = distinct !DILexicalBlock(scope: !3039, file: !263, line: 376, column: 9)
!3042 = distinct !DILexicalBlock(scope: !3041, file: !263, line: 384, column: 39)
!3043 = distinct !DILocation(line: 380, column: 41, scope: !3041)
!3044 = distinct !{!3044, i1 true, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy"}
!3045 = distinct !{!3045, !3044, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3046 = distinct !DILocation(line: 298, column: 32, scope: !121, inlinedAt: !3043)
!3047 = distinct !DILocation(line: 298, column: 38, scope: !121, inlinedAt: !3043)
!3048 = distinct !DILocation(line: 1263, column: 18, scope: !124, inlinedAt: !3047)
!3049 = distinct !DILocation(line: 299, column: 24, scope: !127, inlinedAt: !3043)
!3050 = distinct !DILocation(line: 2898, column: 26, scope: !126, inlinedAt: !3049)
!3051 = distinct !DISubprogram(name: "map_err<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, (), std::sync::mpsc::RecvTimeoutError, std::sync::mpmc::array::{impl#1}::recv::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc16RecvTimeoutErrorNCNvMs_NtNtB2F_4mpmc5arrayINtB3y_7ChannelBI_E4recv0ECs7Ga9Brpi21q_11polars_lazy", scope: !233, file: !231, line: 962, type: !144, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3052 = distinct !DILexicalBlock(scope: !3041, file: !263, line: 380, column: 17)
!3053 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !281, file: !277, line: 25, type: !144, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3054 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCs7Ga9Brpi21q_11polars_lazy", scope: !291, file: !289, line: 1465, type: !144, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3055 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !288, file: !286, line: 154, type: !144, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3056 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !285, file: !282, line: 49, type: !144, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3057 = distinct !{!3057, i1 true, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uECs7Ga9Brpi21q_11polars_lazy"}
!3058 = distinct !{!3058, !3057, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3059 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uECs7Ga9Brpi21q_11polars_lazy", scope: !274, file: !258, line: 37, type: !144, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3060 = distinct !DILocation(line: 390, column: 13, scope: !3041)
!3061 = distinct !{!3061, i1 true, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy"}
!3062 = distinct !{!3062, !3061, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3063 = distinct !{!3063, i1 true, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00Cs7Ga9Brpi21q_11polars_lazy"}
!3064 = distinct !{!3064, !3063, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00Cs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3065 = distinct !{!3065, i1 true, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7Ga9Brpi21q_11polars_lazy"}
!3066 = distinct !{!3066, !3065, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3067 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs_0uECs7Ga9Brpi21q_11polars_lazy", scope: !223, file: !220, line: 457, type: !153, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3068 = distinct !DILexicalBlock(scope: !3059, file: !258, line: 46, column: 9)
!3069 = distinct !DILexicalBlock(scope: !3068, file: !258, line: 47, column: 9)
!3070 = distinct !DILocation(line: 53, column: 14, scope: !3069, inlinedAt: !3060)
!3071 = distinct !DILocation(line: 461, column: 37, scope: !3067, inlinedAt: !3070)
!3072 = distinct !DILocation(line: 250, column: 5, scope: !133, inlinedAt: !3071)
!3073 = distinct !DILocation(line: 97, column: 49, scope: !132, inlinedAt: !3072)
!3074 = distinct !DILocation(line: 59, column: 42, scope: !131, inlinedAt: !3073)
!3075 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !371, file: !369, line: 266, type: !144, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3076 = distinct !DILocation(line: 461, column: 56, scope: !3067, inlinedAt: !3070)
!3077 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy", scope: !177, file: !196, line: 915, type: !144, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3078 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCs7Ga9Brpi21q_11polars_lazy", scope: !359, file: !271, line: 510, type: !144, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3079 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCs7Ga9Brpi21q_11polars_lazy", scope: !359, file: !271, line: 671, type: !144, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3080 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs_0Cs7Ga9Brpi21q_11polars_lazy", scope: !262, file: !258, line: 53, type: !153, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3081 = distinct !DILexicalBlock(scope: !3067, file: !220, line: 461, column: 9)
!3082 = distinct !DILocation(line: 462, column: 12, scope: !3081, inlinedAt: !3070)
!3083 = distinct !DILocation(line: 53, column: 41, scope: !3080, inlinedAt: !3082)
!3084 = distinct !DILocation(line: 675, column: 14, scope: !3079, inlinedAt: !3083)
!3085 = distinct !DILocation(line: 513, column: 9, scope: !3078, inlinedAt: !3084)
!3086 = distinct !DILexicalBlock(scope: !3077, file: !196, line: 929, column: 9)
!3087 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChannelINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0E6unwrapCs7Ga9Brpi21q_11polars_lazy", scope: !194, file: !192, line: 1013, type: !144, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3088 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uE0Cs7Ga9Brpi21q_11polars_lazy", scope: !262, file: !258, line: 47, type: !144, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3089 = distinct !DILocation(line: 54, column: 25, scope: !3080, inlinedAt: !3082)
!3090 = distinct !DILocation(line: 48, column: 30, scope: !3088, inlinedAt: !3089)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !258, line: 48, column: 13)
!3092 = distinct !{!3092, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!3093 = distinct !{!3093, !3092, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3094 = distinct !{!3094, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!3095 = distinct !{!3095, !3094, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3096 = distinct !DILocation(line: 54, column: 42, scope: !3080, inlinedAt: !3082)
!3097 = distinct !{!3097, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!3098 = distinct !{!3098, !3097, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3099 = distinct !DILocation(line: 810, column: 1, scope: !55, inlinedAt: !3096)
!3100 = distinct !DILocation(line: 810, column: 1, scope: !56, inlinedAt: !3099)
!3101 = distinct !DILocation(line: 2814, column: 17, scope: !59, inlinedAt: !3100)
!3102 = distinct !DILocation(line: 2110, column: 27, scope: !58, inlinedAt: !3101)
!3103 = distinct !DILocation(line: 2814, column: 32, scope: !59, inlinedAt: !3100)
!3104 = distinct !DILocation(line: 3193, column: 26, scope: !61, inlinedAt: !3103)
!3105 = distinct !DILocation(line: 64, column: 9, scope: !59, inlinedAt: !3100)
!3106 = distinct !{!3106, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!3107 = distinct !{!3107, !3106, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3108 = distinct !{!3108, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!3109 = distinct !{!3109, !3108, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3110 = distinct !DILocation(line: 54, column: 42, scope: !3080, inlinedAt: !3082)
!3111 = distinct !{!3111, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!3112 = distinct !{!3112, !3111, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3113 = distinct !DILocation(line: 810, column: 1, scope: !55, inlinedAt: !3110)
!3114 = distinct !DILocation(line: 810, column: 1, scope: !56, inlinedAt: !3113)
!3115 = distinct !DILocation(line: 2814, column: 17, scope: !59, inlinedAt: !3114)
!3116 = distinct !DILocation(line: 2110, column: 27, scope: !58, inlinedAt: !3115)
!3117 = distinct !DILocation(line: 2814, column: 32, scope: !59, inlinedAt: !3114)
!3118 = distinct !DILocation(line: 3193, column: 26, scope: !61, inlinedAt: !3117)
!3119 = distinct !DILocation(line: 64, column: 9, scope: !59, inlinedAt: !3114)
!3120 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !273, file: !271, line: 2443, type: !144, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3121 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !149, file: !145, line: 3614, type: !144, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3122 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !149, file: !145, line: 2896, type: !144, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3123 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !274, file: !258, line: 80, type: !144, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !143)
!3124 = distinct !DILexicalBlock(scope: !3080, file: !258, line: 55, column: 17)
!3125 = distinct !DILocation(line: 56, column: 24, scope: !3124, inlinedAt: !3082)
end_hunk_1
