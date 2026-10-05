Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.00?download=true
inline.NumInlined: 1623
inline.NumDeleted: 551
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtCsB8MOEg02Qk_5quinn11send_streamNtB4_10SendStream11write_chunk0Cskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_declare(ptr poison, !32767, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !32648)
    #dbg_declare(ptr poison, !32759, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !32822)
  %.sroa.636 = alloca [32 x i8], align 8          ; 2 uses
    #dbg_declare(ptr %.sroa.636, !16477, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !32650)
    #dbg_declare(ptr %.sroa.636, !16491, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !32651)
  %.sroa.1032 = alloca [32 x i8], align 8         ; 8 uses
    #dbg_value(ptr %1, !32761, !DIExpression(), !32823)
    #dbg_value(ptr %2, !32762, !DIExpression(), !32823)
    #dbg_declare(ptr poison, !32756, !DIExpression(), !32824)
    #dbg_value(ptr %2, !32752, !DIExpression(), !32823)
    #dbg_value(ptr %1, !32753, !DIExpression(DW_OP_deref), !32823)
    #dbg_value(ptr poison, !32754, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !32823)
    #dbg_value(ptr poison, !32757, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 72, DW_OP_LLVM_fragment, 0, 64), !32825)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !32908 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !32908, !range !12747, !noundef !4369
  switch i8 %i.c, label %default.unreachable65 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ], !dbg !32908

default.unreachable65:                            ; preds = %bb.h, %bb.d, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !dbg !32909, !nonnull !4369, !align !8096, !noundef !4369
    #dbg_value(ptr %i.d, !32755, !DIExpression(), !32826)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32910
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !32911 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !32910
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !32912
  store ptr %i.d, ptr %i.g, align 8, !dbg !32912
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !32912
  store ptr %i.f, ptr %.sroa.827.0..sroa_idx, align 8, !dbg !32912
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !32912
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !32912
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !32912
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !32912
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1032), !dbg !32913
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.726.i), !dbg !32914
    #dbg_value(ptr %1, !32788, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !32652)
    #dbg_value(ptr %2, !32789, !DIExpression(), !32652)
    #dbg_value(ptr %2, !32778, !DIExpression(), !32652)
    #dbg_value(ptr %1, !32779, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_deref, DW_OP_stack_value), !32652)
    #dbg_value(ptr poison, !32780, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !32652)
    #dbg_value(ptr poison, !32781, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !32653)
    #dbg_value(ptr poison, !32782, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_LLVM_fragment, 0, 64), !32654)
    #dbg_value(ptr poison, !32784, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 48, DW_OP_LLVM_fragment, 0, 64), !32655)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !32914
  br label %bb.e, !dbg !32914

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #26, !dbg !32908
  unreachable, !dbg !32908

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #26, !dbg !32908
  unreachable, !dbg !32908

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !dbg !32914, !range !12747, !noalias !32828
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1032), !dbg !32913
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.726.i), !dbg !32914
    #dbg_value(ptr %1, !32788, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !32652)
    #dbg_value(ptr %2, !32789, !DIExpression(), !32652)
    #dbg_value(ptr %2, !32778, !DIExpression(), !32652)
    #dbg_value(ptr %1, !32779, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_deref, DW_OP_stack_value), !32652)
    #dbg_value(ptr poison, !32780, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !32652)
    #dbg_value(ptr poison, !32781, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !32653)
    #dbg_value(ptr poison, !32782, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_LLVM_fragment, 0, 64), !32654)
    #dbg_value(ptr poison, !32784, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 48, DW_OP_LLVM_fragment, 0, 64), !32655)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !32914 ; 4 uses
  switch i8 %.pre, label %default.unreachable65 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ], !dbg !32914

bb.e:                                             ; preds = %.thread, %bb.d
  %i.j = phi ptr [ %i.h, %.thread ], [ %i.i, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !32913
    #dbg_value(ptr %i.k, !32788, !DIExpression(), !32652)
    #dbg_value(ptr %i.k, !32779, !DIExpression(DW_OP_deref), !32652)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !32915
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !32916
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !32916
  %i.o = load i64, ptr %i.n, align 8, !dbg !32916, !noalias !32828, !noundef !4369 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !dbg !32916, !noalias !32828, !nonnull !4369, !align !8096, !noundef !4369
  %i.q = load <2 x ptr>, ptr %i.k, align 8, !dbg !32915, !noalias !32828
  store <2 x ptr> %i.q, ptr %i.l, align 8, !dbg !32915, !noalias !32828
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !32916
  store i64 %i.o, ptr %i.r, align 8, !dbg !32916, !noalias !32828
  br label %bb.u, !dbg !32917

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #26
          to label %.noexc14 unwind label %bb.w, !dbg !32914

.noexc14:                                         ; preds = %bb.f
  unreachable, !dbg !32914

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #26
          to label %.noexc15 unwind label %bb.w, !dbg !32914

.noexc15:                                         ; preds = %bb.g
  unreachable, !dbg !32914

bb.h:                                             ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !32918, !range !12747, !noalias !32829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32919, !noalias !32828
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32856), !dbg !32919
    #dbg_value(ptr %1, !32853, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !32673)
    #dbg_value(ptr %2, !32854, !DIExpression(), !32673)
    #dbg_value(ptr %2, !32846, !DIExpression(), !32673)
    #dbg_value(ptr %1, !32847, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_deref, DW_OP_stack_value), !32673)
    #dbg_value(ptr poison, !32848, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !32673)
    #dbg_value(ptr poison, !32851, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !32674)
  switch i8 %.pre.i, label %default.unreachable65 [
    i8 0, label %._crit_edge
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ], !dbg !32918

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = load <2 x ptr>, ptr %.phi.trans.insert57, align 8, !dbg !32920, !noalias !32829
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre62 = load i64, ptr %.phi.trans.insert61, align 8, !dbg !32921, !noalias !32829
  br label %bb.i, !dbg !32918

bb.i:                                             ; preds = %._crit_edge, %.thread.i
  %i.t = phi ptr [ %i.ao, %.thread.i ], [ %i.i, %._crit_edge ]
  %i.u = phi i64 [ %i.aq, %.thread.i ], [ %.pre62, %._crit_edge ], !dbg !32921
  %i.v = phi ptr [ %.sroa.1123.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ]
  %i.w = phi <2 x ptr> [ %i.aw, %.thread.i ], [ %i.s, %._crit_edge ], !dbg !32920
    #dbg_value(ptr %1, !32853, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !32673)
    #dbg_value(ptr %1, !32847, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_deref, DW_OP_stack_value), !32673)
    #dbg_value(ptr poison, !32849, !DIExpression(), !32675)
    #dbg_value(ptr poison, !32850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32676)
    #dbg_value(i64 %i.u, !32850, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32676)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !32922
  store <2 x ptr> %i.w, ptr %i.x, align 8, !dbg !32922, !noalias !32829
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !32922
  store i64 %i.u, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !32922, !noalias !32829
  br label %bb.l, !dbg !32923

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #26
          to label %.noexc.i unwind label %bb.n, !dbg !32918, !noalias !32828

.noexc.i:                                         ; preds = %bb.j
  unreachable, !dbg !32918

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #26
          to label %.noexc10.i unwind label %bb.n, !dbg !32918, !noalias !32828

.noexc10.i:                                       ; preds = %bb.k
  unreachable, !dbg !32918

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.y = phi ptr [ %i.t, %bb.i ], [ %i.i, %bb.h ] ; 5 uses
  %i.z = phi ptr [ %i.v, %bb.i ], [ %.phi.trans.insert.i, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !32923
  invoke void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtCsB8MOEg02Qk_5quinn11send_streamNtB11_10SendStream12write_chunks00ENtNtB7_6future6Future4pollCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %bb.m, !dbg !32923, !noalias !32859

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.z, align 8, !dbg !32918, !noalias !32829
  br label %.body.i, !dbg !32918

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !32924

bb.o:                                             ; preds = %bb.l
  %i.ad = load i64, ptr %i.a, align 8, !dbg !32923, !range !16496, !alias.scope !32856, !noalias !32861, !noundef !4369 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, -2, !dbg !32923      ; 2 uses
  %spec.select.i.i = select i1 %i.ae, i8 3, i8 1, !dbg !32923
  store i8 %spec.select.i.i, ptr %i.z, align 8, !dbg !32925, !noalias !32829
  br i1 %i.ae, label %bb.x, label %bb.p, !dbg !32919

bb.p:                                             ; preds = %bb.o
    #dbg_value(i64 %i.ad, !32819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32677)
    #dbg_value(i64 %i.ad, !32805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32678)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !32926
    #dbg_value(i64 poison, !32819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32677)
    #dbg_value(i64 poison, !32805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32678)
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !32926
  %.sroa.525.0.copyload.i = load i64, ptr %.sroa.525.0..sroa_idx.i, align 8, !dbg !32926, !noalias !32828 ; 4 uses
  %i.af = load <2 x i64>, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !32926, !noalias !32828
    #dbg_value(i64 %.sroa.525.0.copyload.i, !32819, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32677)
    #dbg_value(i64 %.sroa.525.0.copyload.i, !32805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32678)
  %.sroa.726.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !32926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.726.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.726.0..sroa_idx.i, i64 32, i1 false), !dbg !32926, !noalias !32828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !32927, !noalias !32828
  %.not.i.i = icmp eq i64 %i.ad, -1, !dbg !32928
  br i1 %.not.i.i, label %bb.q, label %bb.z, !dbg !32929

bb.q:                                             ; preds = %bb.p
    #dbg_value(i64 poison, !32783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32679)
    #dbg_value(i64 poison, !32783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32679)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !32930 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !32930, !noalias !32828, !noundef !4369 ; 4 uses
    #dbg_value(ptr poison, !32862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32682)
    #dbg_value(i64 %i.ah, !32862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32682)
    #dbg_value(i64 poison, !32866, !DIExpression(), !32682)
    #dbg_value(i64 poison, !32869, !DIExpression(), !32686)
    #dbg_value(ptr poison, !32872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32686)
    #dbg_value(i64 %i.ah, !32872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32686)
    #dbg_value(i64 poison, !32875, !DIExpression(), !32690)
  %i.ai = icmp ugt i64 %.sroa.525.0.copyload.i, %i.ah, !dbg !32931
  br i1 %i.ai, label %bb.r, label %bb.t, !dbg !32931, !prof !11038

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.525.0.copyload.i, i64 noundef range(i64 0, 288230376151711744) %i.ah, i64 noundef range(i64 0, 288230376151711744) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #26
          to label %.noexc11.i unwind label %bb.s, !dbg !32932, !noalias !32859

.noexc11.i:                                       ; preds = %bb.r
  unreachable, !dbg !32932

bb.s:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v, !dbg !32933

bb.t:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !32930 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !32930, !noalias !32828, !nonnull !4369, !align !8096, !noundef !4369
    #dbg_value(ptr %i.al, !32862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32682)
    #dbg_value(ptr %i.al, !32872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32686)
  %i.am = sub nuw nsw i64 %i.ah, %.sroa.525.0.copyload.i, !dbg !32934 ; 2 uses
    #dbg_value(i64 %i.am, !32873, !DIExpression(), !32691)
    #dbg_value(i64 %i.am, !32882, !DIExpression(), !32690)
    #dbg_value(ptr %i.al, !32881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32690)
    #dbg_value(i64 %i.ah, !32881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32690)
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.sroa.525.0.copyload.i, !dbg !32935 ; 2 uses
  store ptr %i.an, ptr %i.ak, align 8, !dbg !32936, !noalias !32828
  store i64 %i.am, ptr %i.ag, align 8, !dbg !32936, !noalias !32828
  br label %bb.u, !dbg !32917

bb.u:                                             ; preds = %bb.t, %bb.e
  %i.ao = phi ptr [ %i.j, %bb.e ], [ %i.y, %bb.t ] ; 2 uses
  %i.ap = phi ptr [ %i.p, %bb.e ], [ %i.an, %bb.t ] ; 2 uses
  %i.aq = phi i64 [ %i.o, %bb.e ], [ %i.am, %bb.t ], !dbg !32937 ; 3 uses
    #dbg_value(ptr poison, !32885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32694)
    #dbg_value(i64 %i.aq, !32885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32694)
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !32938
  br i1 %i.ar, label %bb.y, label %.thread.i, !dbg !32937

.thread.i:                                        ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !32939
  %i.at = load ptr, ptr %i.as, align 8, !dbg !32939, !noalias !32828, !nonnull !4369, !align !8096, !noundef !4369 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !32939
  store ptr %i.at, ptr %i.au, align 8, !dbg !32939, !noalias !32828
  %.sroa.821.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !32939
  store ptr %i.ap, ptr %.sroa.821.0..sroa_idx.i, align 8, !dbg !32939, !noalias !32828
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !32939
  store i64 %i.aq, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !32939, !noalias !32828
  %.sroa.1123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !32939 ; 2 uses
  store i8 0, ptr %.sroa.1123.0..sroa_idx.i, align 8, !dbg !32939, !noalias !32828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32919, !noalias !32828
    #dbg_value(ptr %1, !32853, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !32673)
    #dbg_value(ptr %2, !32854, !DIExpression(), !32673)
    #dbg_value(ptr %2, !32846, !DIExpression(), !32673)
    #dbg_value(ptr %1, !32847, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_deref, DW_OP_stack_value), !32673)
    #dbg_value(ptr poison, !32848, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !32673)
    #dbg_value(ptr poison, !32851, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !32674)
  %i.av = insertelement <2 x ptr> poison, ptr %i.at, i64 0, !dbg !32920
  %i.aw = insertelement <2 x ptr> %i.av, ptr %i.ap, i64 1, !dbg !32920
  br label %bb.i, !dbg !32918

bb.v:                                             ; preds = %.body.i, %bb.s
  %i.ax = phi ptr [ %i.ay, %.body.i ], [ %i.y, %bb.s ]
  %.pn7.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.aj, %bb.s ]
  store i8 2, ptr %i.ax, align 8, !dbg !32914, !noalias !32828
  br label %.body, !dbg !32914

.body.i:                                          ; preds = %bb.n, %bb.m
  %i.ay = phi ptr [ %i.y, %bb.m ], [ %i.i, %bb.n ]
  %.pn.i = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.ac, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !32927, !noalias !32828
  br label %bb.v, !dbg !32940

bb.w:                                             ; preds = %bb.g, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !32941

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj1_ECskigd7sy4fqX_10quinn_perf.exit21, %bb.x
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj1_ECskigd7sy4fqX_10quinn_perf.exit21 ], [ 3, %bb.x ], !dbg !32823
  store i8 %storemerge, ptr %i.b, align 8, !dbg !32823
  ret void, !dbg !32823

bb.x:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !32927, !noalias !32828
  store i8 3, ptr %i.y, align 8, !dbg !32942, !noalias !32828
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.726.i), !dbg !32942
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1032), !dbg !32943
  store i64 -2, ptr %0, align 8, !dbg !32913
  br label %common.ret, !dbg !32913

bb.y:                                             ; preds = %bb.u
  store i8 1, ptr %i.ao, align 8, !dbg !32942, !noalias !32828
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.726.i), !dbg !32942
    #dbg_value(i64 -1, !16491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32891)
    #dbg_value(i64 -1, !16477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32892)
    #dbg_value(i64 poison, !16491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32891)
    #dbg_value(i64 poison, !16477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32892)
    #dbg_value(i64 poison, !16491, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32891)
    #dbg_value(i64 poison, !16477, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32892)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1032), !dbg !32943
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !32944
    #dbg_value(ptr %i.ba, !13124, !DIExpression(), !32696)
    #dbg_value(ptr %i.ba, !8071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32698)
    #dbg_value(i64 1, !8071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32698)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !32893), !dbg !32945
    #dbg_value(ptr %i.ba, !8086, !DIExpression(), !32702)
  call void @llvm.experimental.noalias.scope.decl(metadata !32894), !dbg !32946
    #dbg_value(ptr %i.ba, !8093, !DIExpression(), !32706)
  %i.be = load ptr, ptr %i.ba, align 8, !dbg !32947, !alias.scope !32895, !nonnull !4369, !align !8096, !noundef !4369
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32, !dbg !32947
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !32947, !noalias !32896, !nonnull !4369, !noundef !4369
  %i.bh = load ptr, ptr %i.bc, align 8, !dbg !32948, !alias.scope !32895, !noundef !4369
  %i.bi = load i64, ptr %i.bd, align 8, !dbg !32949, !alias.scope !32895, !noundef !4369
  invoke void %i.bg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bh, i64 noundef %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj1_ECskigd7sy4fqX_10quinn_perf.exit21 unwind label %.loopexit, !dbg !32947, !inline_history !32711

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj1_ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.body, %.loopexit, %.loopexit.split-lp
  %.pn11 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn7, %.body ]
  store i8 2, ptr %i.b, align 8, !dbg !32908
  resume { ptr, i32 } %.pn11, !dbg !32908

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj1_ECskigd7sy4fqX_10quinn_perf.exit

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj1_ECskigd7sy4fqX_10quinn_perf.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj1_ECskigd7sy4fqX_10quinn_perf.exit21: ; preds = %bb.z, %bb.y
  %.sroa.041.0 = phi i64 [ -1, %bb.y ], [ %i.ad, %bb.z ], !dbg !32950
  %i.bj = phi <2 x i64> [ undef, %bb.y ], [ %i.af, %bb.z ]
  store i64 %.sroa.041.0, ptr %0, align 8, !dbg !32951
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32951
  store <2 x i64> %i.bj, ptr %.sroa.342.0..sroa_idx, align 8, !dbg !32951
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !32951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.543.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.543, i64 32, i1 false), !dbg !32951
  br label %common.ret, !dbg !32951

bb.z:                                             ; preds = %bb.p
    #dbg_value(i64 %i.ad, !32767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32712)
    #dbg_value(i64 %i.ad, !32764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32713)
    #dbg_value(i64 poison, !32767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32712)
    #dbg_value(i64 poison, !32764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32713)
    #dbg_value(i64 poison, !32767, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32712)
    #dbg_value(i64 poison, !32764, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32713)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1032, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.726.i, i64 32, i1 false), !dbg !32952
  store i8 1, ptr %i.y, align 8, !dbg !32942, !noalias !32828
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.726.i), !dbg !32942
    #dbg_value(i64 %i.ad, !16491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32891)
    #dbg_value(i64 %i.ad, !16477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32892)
    #dbg_value(i64 poison, !16491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32891)
    #dbg_value(i64 poison, !16477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32892)
    #dbg_value(i64 poison, !16491, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32891)
    #dbg_value(i64 poison, !16477, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32892)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1032, i64 32, i1 false), !dbg !32953
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1032), !dbg !32943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.543, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636, i64 32, i1 false), !dbg !32954
    #dbg_value(i64 %i.ad, !32759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32897)
    #dbg_value(i64 %i.ad, !32767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32898)
    #dbg_value(i64 %i.ad, !32764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32899)
    #dbg_value(i64 poison, !32759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32897)
    #dbg_value(i64 poison, !32767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32898)
    #dbg_value(i64 poison, !32764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32899)
    #dbg_value(i64 poison, !32759, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32897)
    #dbg_value(i64 poison, !32767, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32898)
    #dbg_value(i64 poison, !32764, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32899)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !32944
    #dbg_value(ptr %i.bk, !13124, !DIExpression(), !32715)
    #dbg_value(ptr %i.bk, !8071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32717)
    #dbg_value(i64 1, !8071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32717)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !32900), !dbg !32955
    #dbg_value(ptr %i.bk, !8086, !DIExpression(), !32721)
end_hunk_0
begin_hunk_1_@_RNCNvNtCs7OITKvp9Irj_4perf6server8read_req0Cskigd7sy4fqX_10quinn_perf:bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4276.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5277.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 824, !dbg !40619
  store ptr @93, ptr %i.ef, align 8, !dbg !40619, !noalias !40468
  %.sroa.4279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4279.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5280.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 856, !dbg !40619
  store ptr @93, ptr %i.eg, align 8, !dbg !40619, !noalias !40468
  %.sroa.4282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4282.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 872, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5283.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 888, !dbg !40619
  store ptr @93, ptr %i.eh, align 8, !dbg !40619, !noalias !40468
  %.sroa.4285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 896, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4285.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 904, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5286.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 920, !dbg !40619
  store ptr @93, ptr %i.ei, align 8, !dbg !40619, !noalias !40468
  %.sroa.4288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 928, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4288.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 936, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5289.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 952, !dbg !40619
  store ptr @93, ptr %i.ej, align 8, !dbg !40619, !noalias !40468
  %.sroa.4291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 960, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4291.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 968, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5292.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 984, !dbg !40619
  store ptr @93, ptr %i.ek, align 8, !dbg !40619, !noalias !40468
  %.sroa.4294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 992, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4294.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1000, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5295.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1016, !dbg !40619
  store ptr @93, ptr %i.el, align 8, !dbg !40619, !noalias !40468
  %.sroa.4297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1024, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4297.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5298.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1048, !dbg !40619
  store ptr @93, ptr %i.em, align 8, !dbg !40619, !noalias !40468
  %.sroa.4300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4300.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1064, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5301.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1080, !dbg !40619
  store ptr @93, ptr %i.en, align 8, !dbg !40619, !noalias !40468
  %.sroa.4303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4303.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5304.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1112, !dbg !40619
  store ptr @93, ptr %i.eo, align 8, !dbg !40619, !noalias !40468
  %.sroa.4306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1120, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4306.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1128, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5307.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1144, !dbg !40619
  store ptr @93, ptr %i.ep, align 8, !dbg !40619, !noalias !40468
  %.sroa.4309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1152, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4309.0..sroa_idx.i, align 8, !dbg !40619, !noalias !40468
  %.sroa.5310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1160, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5310.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1176, !dbg !40619
  store ptr @93, ptr %i.eq, align 8, !dbg !40619, !noalias !40468
  %.sroa.5.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %0, i64 1184, !dbg !40619
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i89, align 8, !dbg !40619, !noalias !40468
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1192, !dbg !40619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40619, !noalias !40468
  br label %.thread.i, !dbg !40620

bb.ap:                                            ; preds = %bb.ci, %.body153.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !40615
  unreachable, !dbg !40615

.body153.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i.i165.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i.i.i, %bb.cm, %bb.by, %bb.ci
  %i.es = phi ptr [ %i.fc, %bb.by ], [ %i.iv, %bb.ci ], [ %i.fc, %bb.cm ], [ %i.fc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i.i.i ], [ %i.fc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i.i165.i ]
  %i.et = phi ptr [ %i.fd, %bb.by ], [ %i.iw, %bb.ci ], [ %i.fd, %bb.cm ], [ %i.fd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i.i.i ], [ %i.fd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i.i165.i ]
  %.pn67.i = phi { ptr, i32 } [ %i.hh, %bb.by ], [ %.pn64.pn.i, %bb.ci ], [ %i.ju, %bb.cm ], [ %i.hh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i.i.i ], [ %i.ju, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i.i165.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !40621
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn11recv_stream10RecvStreamECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.eu) #22
          to label %bb.cf unwind label %bb.ap, !dbg !40621

bb.aq:                                            ; preds = %bb.an
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #26
          to label %.noexc90 unwind label %bb.co, !dbg !40615

.noexc90:                                         ; preds = %bb.aq
  unreachable, !dbg !40615

bb.ar:                                            ; preds = %bb.an
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #26
          to label %.noexc91 unwind label %bb.co, !dbg !40615

.noexc91:                                         ; preds = %bb.ar
  unreachable, !dbg !40615

bb.as:                                            ; preds = %bb.an
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !40622, !range !12747, !noalias !40469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !40623, !noalias !40468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40470), !dbg !40623
    #dbg_value(ptr %i.dg, !16559, !DIExpression(DW_OP_plus_uconst, 1104, DW_OP_stack_value), !40089)
    #dbg_value(ptr %1, !16560, !DIExpression(), !40089)
    #dbg_value(ptr %1, !16552, !DIExpression(), !40089)
    #dbg_value(ptr %i.dg, !16553, !DIExpression(DW_OP_plus_uconst, 1104, DW_OP_deref, DW_OP_stack_value), !40089)
    #dbg_value(ptr poison, !16554, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !40089)
    #dbg_value(ptr poison, !16557, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !40090)
  switch i8 %.pre.i, label %default.unreachable146 [
    i8 0, label %._crit_edge135
    i8 1, label %bb.au
    i8 2, label %bb.av
    i8 3, label %bb.aw
  ], !dbg !40622

._crit_edge135:                                   ; preds = %bb.as
  %.phi.trans.insert136 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ev = load <2 x ptr>, ptr %.phi.trans.insert136, align 8, !dbg !40624, !noalias !40469
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %.pre141 = load i64, ptr %.phi.trans.insert140, align 8, !dbg !40625, !noalias !40469
  br label %bb.at, !dbg !40622

bb.at:                                            ; preds = %._crit_edge135, %.thread.i
  %i.ew = phi ptr [ %i.iy, %.thread.i ], [ %i.dh, %._crit_edge135 ]
  %i.ex = phi ptr [ %i.iz, %.thread.i ], [ %i.dg, %._crit_edge135 ]
  %i.ey = phi i64 [ 32, %.thread.i ], [ %.pre141, %._crit_edge135 ], !dbg !40625
  %i.ez = phi ptr [ %.sroa.12.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge135 ]
  %i.fa = phi <2 x ptr> [ %i.je, %.thread.i ], [ %i.ev, %._crit_edge135 ], !dbg !40624
    #dbg_value(ptr %0, !16559, !DIExpression(DW_OP_plus_uconst, 1208, DW_OP_stack_value), !40089)
    #dbg_value(ptr %0, !16553, !DIExpression(DW_OP_plus_uconst, 1208, DW_OP_deref, DW_OP_stack_value), !40089)
    #dbg_value(ptr poison, !16555, !DIExpression(), !40091)
    #dbg_value(ptr poison, !16556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40092)
    #dbg_value(i64 %i.ey, !16556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40092)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1232, !dbg !40626
  store <2 x ptr> %i.fa, ptr %i.fb, align 8, !dbg !40626, !noalias !40469
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1248, !dbg !40626
  store i64 %i.ey, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !40626, !noalias !40469
  br label %bb.aw, !dbg !40627

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26
          to label %.noexc144.i unwind label %bb.ay, !dbg !40622

.noexc144.i:                                      ; preds = %bb.au
  unreachable, !dbg !40622

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26
          to label %.noexc145.i unwind label %bb.ay, !dbg !40622

.noexc145.i:                                      ; preds = %bb.av
  unreachable, !dbg !40622

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.fc = phi ptr [ %i.ew, %bb.at ], [ %i.dh, %bb.as ] ; 14 uses
  %i.fd = phi ptr [ %i.ex, %bb.at ], [ %i.dg, %bb.as ] ; 13 uses
  %i.fe = phi ptr [ %i.ez, %bb.at ], [ %.phi.trans.insert.i, %bb.as ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1232, !dbg !40627
  invoke void @_RNvXsa_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_10ReadChunksNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.az unwind label %bb.ax, !dbg !40627

bb.ax:                                            ; preds = %bb.aw
  %i.fg = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.fe, align 8, !dbg !40622, !noalias !40469
  br label %.body.i, !dbg !40622

bb.ay:                                            ; preds = %bb.av, %bb.au
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !40628

bb.az:                                            ; preds = %bb.aw
  %i.fi = load i64, ptr %i.n, align 8, !dbg !40627, !range !16562, !alias.scope !40470, !noalias !40476, !noundef !4369 ; 3 uses
  %i.fj = icmp eq i64 %i.fi, -2, !dbg !40627      ; 2 uses
  %spec.select.i.i = select i1 %i.fj, i8 3, i8 1, !dbg !40627
  store i8 %spec.select.i.i, ptr %i.fe, align 8, !dbg !40629, !noalias !40469
  br i1 %i.fj, label %bb.ba, label %bb.bb, !dbg !40623

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !40630, !noalias !40468
  store i8 3, ptr %i.fc, align 8, !dbg !40623, !noalias !40468
  br label %bb.cp, !dbg !40623

bb.bb:                                            ; preds = %bb.az
    #dbg_value(i64 %i.fi, !16530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40093)
    #dbg_value(i64 %i.fi, !16515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40094)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !40631 ; 2 uses
    #dbg_value(i64 poison, !16530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40093)
    #dbg_value(i64 poison, !16515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40094)
  %i.fk = load <2 x i64>, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !40631, !noalias !40468
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !40631, !noalias !40468
    #dbg_value(i64 %.sroa.3.0.copyload.i, !16530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40093)
    #dbg_value(i64 %.sroa.3.0.copyload.i, !16515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40094)
    #dbg_value(i64 poison, !16530, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40093)
    #dbg_value(i64 poison, !16515, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40094)
  %.sroa.7188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !40631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7188.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7188.0..sroa_idx.i, i64 32, i1 false), !dbg !40631, !noalias !40468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !40630, !noalias !40468
    #dbg_value(ptr poison, !16563, !DIExpression(DW_OP_deref), !40096)
    #dbg_value(ptr poison, !16567, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !40096)
  %.not.i146.i = icmp eq i64 %i.fi, -1, !dbg !40632
  br i1 %.not.i146.i, label %bb.bd, label %bb.bc, !dbg !40633

bb.bc:                                            ; preds = %bb.bb
  %.sroa.7192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !40634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !40634, !noalias !40477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7192.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7188.i, i64 32, i1 false), !dbg !40635, !noalias !40468
    #dbg_value(i64 %i.fi, !40354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40099)
    #dbg_value(i64 %i.fi, !16509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40100)
    #dbg_value(i64 poison, !40354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40099)
    #dbg_value(i64 poison, !16509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40100)
    #dbg_value(i64 poison, !40354, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40099)
    #dbg_value(i64 poison, !16509, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40100)
    #dbg_declare(ptr %i.b, !16512, !DIExpression(), !40101)
  store i64 %i.fi, ptr %i.b, align 8, !dbg !40634, !noalias !40468
  %.sroa.5190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !40634
  store <2 x i64> %i.fk, ptr %.sroa.5190.0..sroa_idx.i, align 8, !dbg !40634, !noalias !40468
  %i.fl = invoke noundef nonnull ptr @_RNvXs_NtCsbHiBx3jRrxb_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorE4fromCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %bb.ck unwind label %bb.cj, !dbg !40636

bb.bd:                                            ; preds = %bb.bb
    #dbg_value(ptr poison, !40479, !DIExpression(), !40104)
  %.not.i87 = icmp eq i64 %.sroa.3.0.copyload.i, 0, !dbg !40637
  br i1 %.not.i87, label %.noexc.i, label %.thread.i, !dbg !40638

.noexc.i:                                         ; preds = %bb.bd
    #dbg_value(i8 0, !16334, !DIExpression(), !40107)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !16335, !DIExpression(), !40107)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !11026, !DIExpression(), !40109)
    #dbg_value(i8 0, !11029, !DIExpression(), !40109)
  %i.fm = load atomic i64, ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !40639, !noalias !40468
  %.off.i = add i64 %i.fm, -2, !dbg !40640
  %switch.i = icmp ult i64 %.off.i, 4, !dbg !40640
  br i1 %switch.i, label %.thread213.i, label %bb.be, !dbg !40640

bb.be:                                            ; preds = %.noexc.i
    #dbg_value(ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, !16340, !DIExpression(), !40111)
    #dbg_value(i8 0, !16345, !DIExpression(), !40113)
    #dbg_value(ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, !16350, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !40114)
    #dbg_value(ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, i64 16), !15904, !DIExpression(), !40116)
    #dbg_value(i8 0, !15907, !DIExpression(), !40116)
  %i.fn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, i64 16) monotonic, align 8, !dbg !40641, !noalias !40468 ; 2 uses
  %i.fo = icmp ult i8 %i.fn, 3, !dbg !40642
  br i1 %i.fo, label %bb.bh, label %bb.bf, !dbg !40642, !prof !16352

bb.bf:                                            ; preds = %bb.be
  %i.fp = invoke noundef i8 @_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE) #21
          to label %bb.bh unwind label %bb.bg, !dbg !40643

bb.bg:                                            ; preds = %bb.bf
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %.sroa.0.0.i148.i = phi i8 [ %i.fn, %bb.be ], [ %i.fp, %bb.bf ], !dbg !40644 ; 2 uses
    #dbg_value(i8 %.sroa.0.0.i148.i, !40359, !DIExpression(), !40117)
    #dbg_value(ptr poison, !16355, !DIExpression(), !40119)
  %i.fr = icmp eq i8 %.sroa.0.0.i148.i, 0, !dbg !40645
  br i1 %i.fr, label %.thread213.i, label %bb.bj, !dbg !40646

bb.bi:                                            ; preds = %bb.bj
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci, !dbg !40647

bb.bj:                                            ; preds = %bb.bh
    #dbg_value(ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, !16361, !DIExpression(), !40121)
  %i.ft = load ptr, ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, align 8, !dbg !40648, !noalias !40468, !nonnull !4369, !align !8096, !noundef !4369
  %i.fu = invoke noundef zeroext i1 @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ft, i8 noundef %.sroa.0.0.i148.i)
          to label %bb.bk unwind label %bb.bi, !dbg !40646

bb.bk:                                            ; preds = %bb.bj
    #dbg_value(i8 poison, !40357, !DIExpression(), !40122)
  br i1 %i.fu, label %bb.ca, label %.thread213.i, !dbg !40649

.thread213.i:                                     ; preds = %bb.bk, %bb.bh, %.noexc.i
    #dbg_value(ptr poison, !16363, !DIExpression(), !40124)
    #dbg_value(ptr poison, !16365, !DIExpression(), !40124)
    #dbg_declare(ptr poison, !16367, !DIExpression(), !40126)
    #dbg_value(i8 poison, !16368, !DIExpression(), !40127)
    #dbg_value(i8 0, !16371, !DIExpression(), !40130)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !16372, !DIExpression(), !40130)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !15904, !DIExpression(), !40132)
    #dbg_value(i8 0, !15907, !DIExpression(), !40132)
  %i.fv = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !40650, !noalias !40468
  %.not215.i = icmp eq i8 %i.fv, 0, !dbg !40651
  br i1 %.not215.i, label %bb.bl, label %bb.bw, !dbg !40649

bb.bl:                                            ; preds = %.thread213.i
    #dbg_value(i64 4, !40365, !DIExpression(), !40133)
    #dbg_value(i8 0, !16374, !DIExpression(), !40136)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !16375, !DIExpression(), !40136)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !11026, !DIExpression(), !40138)
    #dbg_value(i8 0, !11029, !DIExpression(), !40138)
  %i.fw = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !40652, !noalias !40468 ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 6, !dbg !40653
  call void @llvm.assume(i1 %i.fx), !dbg !40653
    #dbg_value(ptr poison, !16363, !DIExpression(), !40140)
    #dbg_value(ptr poison, !16365, !DIExpression(), !40140)
    #dbg_declare(ptr poison, !16367, !DIExpression(), !40142)
    #dbg_value(i8 poison, !16368, !DIExpression(), !40143)
  %i.fy = icmp samesign ugt i64 %i.fw, 3, !dbg !40654
  br i1 %i.fy, label %bb.bm, label %bb.bw, !dbg !40655

bb.bm:                                            ; preds = %bb.bl
    #dbg_value(ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, !16361, !DIExpression(), !40145)
  %i.fz = load ptr, ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, align 8, !dbg !40656, !noalias !40468, !nonnull !4369, !align !8096, !noundef !4369 ; 3 uses
    #dbg_value(ptr %i.fz, !40366, !DIExpression(), !40146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !40657, !noalias !40468
  %i.ga = getelementptr i8, ptr %i.fz, i64 32, !dbg !40657
  %.val78.i = load ptr, ptr %i.ga, align 8, !dbg !40657, !nonnull !4369, !noundef !4369
  %i.gb = getelementptr i8, ptr %i.fz, i64 40, !dbg !40657
  %.val79.i = load i64, ptr %i.gb, align 8, !dbg !40657, !noundef !4369
    #dbg_value(ptr undef, !15969, !DIExpression(), !39966)
    #dbg_value(ptr undef, !15967, !DIExpression(), !39965)
  store i64 4, ptr %i.h, align 8, !dbg !40658, !alias.scope !40487, !noalias !40488
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !40658
  store ptr %.val78.i, ptr %i.gc, align 8, !dbg !40658, !alias.scope !40487, !noalias !40488
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !40658
  store i64 %.val79.i, ptr %i.gd, align 8, !dbg !40658, !alias.scope !40487, !noalias !40488
  %i.ge = invoke { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger()
          to label %bb.bo unwind label %bb.bn, !dbg !40659 ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bm
  %i.gg = extractvalue { ptr, ptr } %i.ge, 0, !dbg !40659 ; 2 uses
  %i.gh = extractvalue { ptr, ptr } %i.ge, 1, !dbg !40659 ; 2 uses
    #dbg_value(ptr %i.gg, !40370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40150)
    #dbg_value(ptr %i.gh, !40370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40150)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24, !dbg !40660
  %i.gj = load ptr, ptr %i.gi, align 8, !dbg !40660, !invariant.load !4369, !nonnull !4369
  %i.gk = invoke noundef zeroext i1 %i.gj(ptr noundef %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.bq unwind label %bb.bp, !dbg !40660

bb.bp:                                            ; preds = %bb.bo
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv, !dbg !40661

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.gk, label %bb.bs, label %bb.br, !dbg !40660

bb.br:                                            ; preds = %bb.bu, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !40657, !noalias !40468
  br label %bb.bw, !dbg !40655

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !40660, !noalias !40468
    #dbg_value(ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, !16361, !DIExpression(), !40152)
  %i.gm = load ptr, ptr @_RNvNCNvNtCs7OITKvp9Irj_4perf6server12drain_stream010___CALLSITE, align 8, !dbg !40662, !noalias !40468, !nonnull !4369, !align !8096, !noundef !4369
    #dbg_value(ptr %i.gm, !16377, !DIExpression(), !40154)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48, !dbg !40663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !40660, !noalias !40468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !40660, !noalias !40468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !40664, !noalias !40468
  %i.go = getelementptr i8, ptr %0, i64 168, !dbg !40665
  %.val81.i = load i64, ptr %i.go, align 8, !dbg !40665, !noalias !40468, !noundef !4369
  store i64 %.val81.i, ptr %i.d, align 8, !dbg !40664, !noalias !40468
    #dbg_value(ptr %i.d, !40372, !DIExpression(), !40155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !40666, !noalias !40468
  store ptr %i.d, ptr %i.c, align 8, !dbg !40666, !noalias !40468
  %.sroa.5208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !40666
  store ptr @_RNvXs2_CshovLROGBtMy_11quinn_protoNtB5_8StreamIdNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.5208.0..sroa_idx.i, align 8, !dbg !40666, !noalias !40468
  store ptr @68, ptr %i.e, align 8, !dbg !40667, !noalias !40468
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !40667
  store ptr %i.c, ptr %i.gp, align 8, !dbg !40667, !noalias !40468
  store ptr %i.e, ptr %i.f, align 8, !dbg !40660, !noalias !40468
  %i.gq = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !40660
  store ptr @6, ptr %i.gq, align 8, !dbg !40660, !noalias !40468
    #dbg_value(ptr %i.gn, !16384, !DIExpression(), !40157)
    #dbg_value(ptr %i.f, !16388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40157)
    #dbg_value(i64 1, !16388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40157)
  store i64 1, ptr %i.g, align 8, !dbg !40668, !alias.scope !40490, !noalias !40491
  %.sroa.4.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !40668
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i151.i, align 8, !dbg !40668, !alias.scope !40490, !noalias !40491
  %.sroa.5.0..sroa_idx.i152.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !40668
  store i64 1, ptr %.sroa.5.0..sroa_idx.i152.i, align 8, !dbg !40668, !alias.scope !40490, !noalias !40491
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !40668
  store ptr %i.gn, ptr %i.gr, align 8, !dbg !40668, !alias.scope !40490, !noalias !40491
  invoke void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fz, ptr noundef nonnull %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.bu unwind label %bb.bt, !dbg !40660

bb.bt:                                            ; preds = %bb.bs
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !40660, !noalias !40468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !40660, !noalias !40468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !40660, !noalias !40468
end_hunk_1
