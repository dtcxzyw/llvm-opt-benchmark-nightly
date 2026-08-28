Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.09?download=true
inline.NumInlined: 892
inline.NumDeleted: 394
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams6countsNtB5_6Counts10transitionNCINvMs0_NtB7_7streamsNtB1k_5Inner17recv_push_promiseINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtB3s_6option6OptionNtNtB7_5store3KeyENtNtB9_5error5ErrorEECsbaWXNhtWAp9_11foundations:bb.a
  %i.an = icmp eq i32 %i.am, 2, !dbg !4590
  br i1 %i.an, label %bb.q, label %bb.s, !dbg !4590, !prof !308

bb.q:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z), !dbg !4591
  br label %bb.s, !dbg !4591

bb.r:                                             ; preds = %.thread17.i, %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !4592, !noalias !4555
  unreachable, !dbg !4592

.thread17.i:                                      ; preds = %bb.f, %bb.c
  %eh.lpad-body20.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.c ], [ %i.w, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #27
          to label %.thread8 unwind label %bb.r, !dbg !4525, !noalias !4524

bb.s:                                             ; preds = %bb.q, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4525, !noalias !4507
  %i.ap = icmp ne i32 %i.k, -1, !dbg !4493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !dbg !4593
  invoke void @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams6countsNtB4_6Counts16transition_after(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, i1 noundef zeroext %i.ap)
          to label %bb.u unwind label %bb.t, !dbg !4595

bb.t:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams5store3KeyENtNtB1p_5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #27
          to label %.thread8 unwind label %bb.v, !dbg !4596

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !dbg !4598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !4596
  ret void, !dbg !4599

bb.v:                                             ; preds = %bb.w, %bb.t
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !4600
  unreachable, !dbg !4600

.thread8:                                         ; preds = %bb.t, %.thread17.i, %bb.j, %bb.w
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body20.i, %.thread17.i ], [ %lpad.thr_comm.split-lp, %bb.w ], [ %i.aq, %bb.t ], [ %i.ae, %bb.j ]
  resume { ptr, i32 } %.pn7, !dbg !4600

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBK_5Inner17recv_push_promiseINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(304) %3) #27
          to label %.thread8 unwind label %bb.v, !dbg !4601
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams6countsNtB5_6Counts10transitionNCINvMsc_NtB7_7streamsNtB1k_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0INtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB9_5error6GoAwayEECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4602 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = tail call noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !4603
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !4604
  %i.i = load i32, ptr %i.h, align 8, !dbg !4604, !range !4314, !noundef !14
  %i.j = icmp ne i32 %i.i, -1, !dbg !4604
  %.sroa.02.0.copyload = load ptr, ptr %3, align 8, !dbg !4611, !nonnull !14, !noundef !14 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !4611
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4611 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !4611
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4611 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !4611
  %.sroa.63.0.copyload = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !dbg !4611 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !4611
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !4611 ; 2 uses
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !4611
  %.sroa.84.0.copyload = load ptr, ptr %.sroa.84.0..sroa_idx, align 8, !dbg !4611 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4613), !dbg !4611
  %i.k = load i8, ptr %.sroa.02.0.copyload, align 1, !dbg !4616, !range !1543, !noalias !4628, !noundef !14 ; 2 uses
  %i.l = icmp eq i8 %i.k, 1, !dbg !4632
  br i1 %i.l, label %bb.c, label %bb.b, !dbg !4633

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.m = phi i8 [ %.pre.i, %bb.e ], [ %i.k, %bb.a ], !dbg !4634
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.n = load i32, ptr %.sroa.7.0.copyload, align 4, !dbg !4635, !noalias !4636, !noundef !14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.84.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.copyload) ]
  tail call fastcc void @_RINvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams4sendNtB3_4Send10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(120) %.sroa.5.0.copyload, i32 noundef %i.n, i8 noundef %i.m, ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.84.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.63.0.copyload), !dbg !4637, !noalias !4638
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams4recvNtB2_4Recv24enqueue_reset_expiration(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1), !dbg !4639, !noalias !4638
  %i.o = tail call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2), !dbg !4640, !noalias !4638
  tail call void @_RNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams6streamNtB2_6Stream11notify_recv(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.o), !dbg !4641, !noalias !4638
  br label %_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit, !dbg !4642

bb.c:                                             ; preds = %bb.a
  %i.p = load i64, ptr %1, align 8, !dbg !4643, !range !34, !alias.scope !4613, !noalias !4636, !noundef !14
  %i.q = trunc nuw i64 %i.p to i1, !dbg !4647
  br i1 %i.q, label %bb.d, label %bb.e, !dbg !4647

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4643
  %i.s = load i64, ptr %i.r, align 8, !dbg !4648, !alias.scope !4613, !noalias !4636, !noundef !14 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !4649
  %i.u = load i64, ptr %i.t, align 8, !dbg !4649, !alias.scope !4613, !noalias !4636, !noundef !14
  %i.v = icmp ugt i64 %i.s, %i.u, !dbg !4650
  br i1 %i.v, label %bb.e, label %bb.f, !dbg !4651

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams6countsNtB4_6Counts26inc_num_local_error_resets(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1), !dbg !4652, !noalias !4636
  %.pre.i = load i8, ptr %.sroa.02.0.copyload, align 1, !dbg !4634, !range !1543, !noalias !4636
  br label %bb.b, !dbg !4653

bb.f:                                             ; preds = %bb.d
  %i.w = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !4654, !noalias !4628
  %i.x = icmp ult i64 %i.w, 4, !dbg !4661
  br i1 %i.x, label %bb.g, label %_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit, !dbg !4662

bb.g:                                             ; preds = %bb.f
  %i.y = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB9_7Actions10send_reset010___CALLSITE, i64 16) monotonic, align 8, !dbg !4663, !noalias !4628 ; 3 uses
  switch i8 %i.y, label %bb.h [
    i8 0, label %_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit
    i8 1, label %bb.i
    i8 2, label %bb.i
  ], !dbg !4670, !prof !154

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB9_7Actions10send_reset010___CALLSITE) #29, !dbg !4671, !noalias !4628 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0, !dbg !4672
  br i1 %i.aa, label %_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit, label %bb.i, !dbg !4680

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.g
  %.sroa.06.0.i = phi i8 [ %i.z, %bb.h ], [ %i.y, %bb.g ], [ %i.y, %bb.g ], !dbg !4681
  %i.ab = load ptr, ptr @_RNvNCNvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB9_7Actions10send_reset010___CALLSITE, align 8, !dbg !4682, !noalias !4628, !nonnull !14, !align !55, !noundef !14
  %i.ac = tail call noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ab, i8 noundef %.sroa.06.0.i), !dbg !4680, !noalias !4628
  br i1 %i.ac, label %bb.j, label %_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit, !dbg !4686

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr @_RNvNCNvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB9_7Actions10send_reset010___CALLSITE, align 8, !dbg !4689, !noalias !4628, !nonnull !14, !align !55, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4686, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4686, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4692, !noalias !4628
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48, !dbg !4693
  store i64 %i.s, ptr %i.c, align 8, !dbg !4697, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4700, !noalias !4628
  store ptr %i.c, ptr %i.b, align 8, !dbg !4700, !noalias !4628
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4700
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !dbg !4700, !noalias !4628
  store ptr @114, ptr %i.d, align 8, !dbg !4703, !noalias !4628
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4703
  store ptr %i.b, ptr %i.af, align 8, !dbg !4703, !noalias !4628
  store ptr %i.d, ptr %i.e, align 8, !dbg !4686, !noalias !4628
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4686
  store ptr @4, ptr %i.ag, align 8, !dbg !4686, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4686, !noalias !4628
  store i64 1, ptr %i.a, align 8, !dbg !4686, !noalias !4628
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4686
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !dbg !4686, !noalias !4628
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4686
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !dbg !4686, !noalias !4628
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4686
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !4686, !noalias !4628
  call void @_RNvMNtCshtG1HG2JiYb_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !dbg !4709, !noalias !4628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4686, !noalias !4628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4686, !noalias !4628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4686, !noalias !4628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4686, !noalias !4628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4686, !noalias !4628
  br label %_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit, !dbg !4686

_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.b
  %i.ah = phi i1 [ true, %bb.b ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], !dbg !4716
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ @9, %bb.j ], [ @9, %bb.i ], [ @9, %bb.h ], [ @9, %bb.g ], [ @9, %bb.f ], !dbg !4716 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !dbg !4717
  invoke void @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams6countsNtB4_6Counts16transition_after(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, i1 noundef zeroext %i.j)
          to label %bb.m unwind label %bb.k, !dbg !4719

bb.k:                                             ; preds = %_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error6GoAwayEECsbaWXNhtWAp9_11foundations.exit, label %bb.l, !dbg !4720

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32, !dbg !4723
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !4723, !noalias !4728, !nonnull !14, !noundef !14
  invoke void %i.ak(ptr noundef null, ptr noundef nonnull @76, i64 noundef 24)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error6GoAwayEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.n, !dbg !4723, !inline_history !4737

bb.m:                                             ; preds = %_RNCINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB8_7Actions10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE0CsbaWXNhtWAp9_11foundations.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4738
  store ptr %.sroa.0.0, ptr %0, align 8, !dbg !4739
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4739
  store ptr @76, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !4739
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4739
  store i64 24, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !4739
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4739
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !4739
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4739
  store i32 11, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !4739
  ret void, !dbg !4740

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !4741
  unreachable, !dbg !4741

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error6GoAwayEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ai, !dbg !4741
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB6_7Actions24reset_on_recv_stream_errINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4742 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load i8, ptr %5, align 8, !dbg !4744, !range !387, !noundef !14
  %i.g = icmp eq i8 %i.f, 0, !dbg !4746
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !4746

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !dbg !4747
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !4748

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !4749 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !4749, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 1, !dbg !4750
  %i.k = load i8, ptr %i.j, align 1, !dbg !4750, !range !1543, !noundef !14
  %i.l = load i64, ptr %4, align 8, !dbg !4751, !range !34, !noundef !14
  %i.m = trunc nuw i64 %i.l to i1, !dbg !4755
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !4755

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !4751
  %i.o = load i64, ptr %i.n, align 8, !dbg !4756, !noundef !14 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80, !dbg !4757
  %i.q = load i64, ptr %i.p, align 8, !dbg !4757, !noundef !14
  %i.r = icmp ugt i64 %i.o, %i.q, !dbg !4758
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !4759

bb.e:                                             ; preds = %bb.c, %bb.d
  invoke void @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams6countsNtB4_6Counts26inc_num_local_error_resets(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %4)
          to label %bb.w unwind label %bb.f, !dbg !4760

bb.f:                                             ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.n, %bb.j, %bb.i, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %5) #27
          to label %common.resume unwind label %bb.ab, !dbg !4761

bb.g:                                             ; preds = %bb.d
  %i.t = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !4762
  %i.u = icmp ult i64 %i.t, 4, !dbg !4769
  br i1 %i.u, label %bb.h, label %bb.m, !dbg !4770

bb.h:                                             ; preds = %bb.g
  %i.v = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB7_7Actions24reset_on_recv_stream_err10___CALLSITE, i64 16) monotonic, align 8, !dbg !4771 ; 3 uses
  switch i8 %i.v, label %bb.i [
    i8 0, label %bb.m
    i8 1, label %bb.j
    i8 2, label %bb.j
  ], !dbg !4778, !prof !154

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB7_7Actions24reset_on_recv_stream_err10___CALLSITE)
          to label %bb.k unwind label %bb.f, !dbg !4779 ; 2 uses

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.k
  %.sroa.08.0 = phi i8 [ %i.w, %bb.k ], [ %i.v, %bb.h ], [ %i.v, %bb.h ], !dbg !4780
  %i.x = load ptr, ptr @_RNvNvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB7_7Actions24reset_on_recv_stream_err10___CALLSITE, align 8, !dbg !4781, !nonnull !14, !align !55, !noundef !14
  %i.y = invoke noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, i8 noundef %.sroa.08.0)
          to label %bb.l unwind label %bb.f, !dbg !4787

bb.k:                                             ; preds = %bb.i
  %i.z = icmp eq i8 %i.w, 0, !dbg !4788
  br i1 %i.z, label %bb.m, label %bb.j, !dbg !4787

bb.l:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.n, label %bb.m, !dbg !4794

bb.m:                                             ; preds = %bb.k, %bb.h, %bb.g, %bb.o, %bb.l
  store i8 1, ptr %0, align 8, !dbg !4797
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !4797
  store i8 1, ptr %.sroa.415.0..sroa_idx, align 1, !dbg !4797
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !4797
  store i32 11, ptr %.sroa.516.0..sroa_idx, align 4, !dbg !4797
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4797
  store ptr @9, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !4797
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4797
  store ptr @76, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !dbg !4797
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4797
  store i64 24, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !dbg !4797
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4797
  store i64 0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !dbg !4797
  br label %bb.p, !dbg !4798

bb.n:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr @_RNvNvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB7_7Actions24reset_on_recv_stream_err10___CALLSITE, align 8, !dbg !4799, !nonnull !14, !align !55, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4802
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48, !dbg !4803
  store i64 %i.o, ptr %i.c, align 8, !dbg !4807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4810
  store ptr %i.c, ptr %i.b, align 8, !dbg !4810
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4810
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !4810
  store ptr @75, ptr %i.d, align 8, !dbg !4813
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4813
  store ptr %i.b, ptr %i.ac, align 8, !dbg !4813
  store ptr %i.d, ptr %i.e, align 8, !dbg !4794
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4794
  store ptr @4, ptr %i.ad, align 8, !dbg !4794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4794
  store i64 1, ptr %i.a, align 8, !dbg !4794
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4794
  store ptr %i.e, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8, !dbg !4794
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4794
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8, !dbg !4794
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4794
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4794
  invoke void @_RNvMNtCshtG1HG2JiYb_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.o unwind label %bb.f, !dbg !4819

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4794
  br label %bb.m, !dbg !4794

bb.p:                                             ; preds = %bb.aa, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !4826), !dbg !4761
  %i.ae = load i8, ptr %5, align 8, !dbg !4829, !range !387, !alias.scope !4826, !noundef !14 ; 2 uses
  %i.af = icmp eq i8 %i.ae, -1, !dbg !4829
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.q, !dbg !4829

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !4832), !dbg !4829
  switch i8 %i.ae, label %bb.r [
    i8 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations.exit
    i8 1, label %bb.v
  ], !dbg !4835

bb.r:                                             ; preds = %bb.q
  %i.ag = load i64, ptr %i.h, align 8, !dbg !4838, !range !4841, !alias.scope !4842, !noundef !14
  %i.ah = icmp eq i64 %i.ag, -1, !dbg !4838
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.s, !dbg !4838

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i.i unwind label %bb.t, !dbg !4845

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.u, !dbg !4850

bb.u:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !4845
  unreachable, !dbg !4845

common.resume:                                    ; preds = %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.t ], [ %i.s, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !4853

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.s
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !4854
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !4838

bb.v:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4856), !dbg !4835
  call void @llvm.experimental.noalias.scope.decl(metadata !4859), !dbg !4862
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32, !dbg !4864
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !4871, !alias.scope !4873, !noundef !14
  %i.am = load ptr, ptr %i.h, align 8, !dbg !4874, !alias.scope !4873, !nonnull !14, !align !55, !noundef !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !4874
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !4874, !noalias !4873, !nonnull !14, !noundef !14
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !4875
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !4875, !alias.scope !4873, !noundef !14
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24, !dbg !4876
  %i.as = load i64, ptr %i.ar, align 8, !dbg !4876, !alias.scope !4873, !noundef !14
  call void %i.ao(ptr noundef %i.al, ptr noundef %i.aq, i64 noundef %i.as), !dbg !4874, !noalias !4873, !inline_history !4877
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !4835

bb.w:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !4878
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 320, !dbg !4879
  invoke fastcc void @_RINvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams4sendNtB3_4Send10send_resetINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(120) %i.at, i32 noundef %i.i, i8 noundef %i.k, ptr noalias nofree noundef align 8 dereferenceable(40) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3, ptr noalias nofree noundef align 8 dereferenceable(120) %4, ptr noalias nofree noundef align 8 dereferenceable(16) %i.au)
          to label %bb.x unwind label %bb.f, !dbg !4880

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams4recvNtB2_4Recv24enqueue_reset_expiration(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %4)
          to label %bb.y unwind label %bb.f, !dbg !4881

bb.y:                                             ; preds = %bb.x
  %i.av = invoke noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.z unwind label %bb.f, !dbg !4882

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams6streamNtB2_6Stream11notify_recv(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.av)
          to label %bb.aa unwind label %bb.f, !dbg !4883

bb.aa:                                            ; preds = %bb.z
  store i8 -1, ptr %0, align 8, !dbg !4884
  br label %bb.p, !dbg !4798

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.r, %bb.q, %bb.p, %bb.b
  ret void, !dbg !4885

bb.ab:                                            ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !4886
  unreachable, !dbg !4886
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs3zuhHmEJ01l_5tokio4time5sleep5SleepEEECsbaWXNhtWAp9_11foundations(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4887 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 72, !dbg !4888 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4893), !dbg !4888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4896), !dbg !4899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4902), !dbg !4905
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4908, !alias.scope !4919, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !4920, !noalias !4919
  %i.d = icmp eq i64 %i.c, 1, !dbg !4925
  br i1 %i.d, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio7runtime9scheduler6HandleECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !4925

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !4926
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs3zuhHmEJ01l_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio7runtime9scheduler6HandleECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.c, !dbg !4928

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3zuhHmEJ01l_5tokio7runtime5TimerEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %.0.val) #27
          to label %bb.f unwind label %bb.d, !dbg !4888

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio7runtime9scheduler6HandleECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.b, %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3zuhHmEJ01l_5tokio7runtime5TimerEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %.0.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs3zuhHmEJ01l_5tokio4time5sleep5SleepEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.e, !dbg !4888

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !4888
  unreachable, !dbg !4888

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio7runtime9scheduler6HandleECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f, !dbg !4929

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 96, i64 noundef 8) #32, !dbg !4930
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !4929

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs3zuhHmEJ01l_5tokio4time5sleep5SleepEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio7runtime9scheduler6HandleECsbaWXNhtWAp9_11foundations.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 96, i64 noundef 8) #32, !dbg !4939
  ret void, !dbg !4945
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsbaWXNhtWAp9_11foundations(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4946 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null, !dbg !4947
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !4947

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void, !dbg !4947

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !dbg !4948, !invariant.load !14 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !4948
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !4948

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f, !dbg !4948

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !4951
  %i.d = load i64, ptr %i.c, align 8, !dbg !4951, !range !2512, !invariant.load !14 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !4959
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsbaWXNhtWAp9_11foundations.exit, label %bb.e, !dbg !4959
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsdBNFPP92xfl_5tower5limit11concurrency7serviceINtB2_16ConcurrencyLimitINtNtNtB8_4util6either6EitherINtNtNtB6_4rate7service9RateLimitINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtB2m_10connection22MakeSendRequestServiceINtNtB2m_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB2h_EE3newCsbaWXNhtWAp9_11foundations:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !9693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !9693
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, i64 400, i1 false), !dbg !9694
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !9694
  store ptr %i.d, ptr %i.f, align 8, !dbg !9694
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !9694
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !9694
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432, !dbg !9694
  store ptr null, ptr %i.g, align 8, !dbg !9694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9679
  ret void, !dbg !9697

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9698
  unreachable, !dbg !9698

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !9698
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsdBNFPP92xfl_5tower5limit4rate7serviceINtB2_9RateLimitINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtB16_10connection22MakeSendRequestServiceINtNtB16_9connector9ConnectorNtNtB18_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEE3newCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([416 x i8]) align 8 captures(none) dereferenceable(416) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(360) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9699 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [360 x i8], align 8               ; 4 uses
  %i.c = invoke { i64, i32 } @_RNvMNtNtCs3zuhHmEJ01l_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.b unwind label %bb.k, !dbg !9704 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i32 } %i.c, 0, !dbg !9704 ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.c, 1, !dbg !9704 ; 2 uses
  %i.f = load i64, ptr %2, align 8, !dbg !9705, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(360) %1, i64 360, i1 false), !dbg !9712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9714
  invoke void @_RNvNtNtCs3zuhHmEJ01l_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, i64 noundef %i.d, i32 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141)
          to label %bb.d unwind label %bb.c, !dbg !9714

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !9715

.body:                                            ; preds = %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.j, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtBG_10connection22MakeSendRequestServiceINtNtBG_9connector9ConnectorNtNtBI_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(360) %i.b) #27
          to label %bb.j unwind label %bb.i, !dbg !9715

bb.d:                                             ; preds = %bb.b
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !dbg !9716, !noalias !9726
  %i.h = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 97) 96, i64 noundef range(i64 2, 9) 8) #32, !dbg !9729, !noalias !9726 ; 3 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !9730
  br i1 %i.i, label %bb.e, label %bb.h, !dbg !9731, !prof !3502

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #30
          to label %.noexc unwind label %bb.f, !dbg !9732

.noexc:                                           ; preds = %bb.e
  unreachable, !dbg !9732

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio4time5sleep5SleepECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #27
          to label %.body unwind label %bb.g, !dbg !9733

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9734
  unreachable, !dbg !9734

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !9735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i64 360, i1 false), !dbg !9738
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !9738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !9738
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !9738
  store i64 %i.f, ptr %i.m, align 8, !dbg !9738
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !9738
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9738
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !9738
  store i32 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9738
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408, !dbg !9738
  store ptr %i.h, ptr %i.n, align 8, !dbg !9738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9715
  ret void, !dbg !9739

bb.i:                                             ; preds = %bb.k, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9740
  unreachable, !dbg !9740

bb.j:                                             ; preds = %.body, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.p, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7, !dbg !9740

bb.k:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtBG_10connection22MakeSendRequestServiceINtNtBG_9connector9ConnectorNtNtBI_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(360) %1) #27
          to label %bb.j unwind label %bb.i, !dbg !9741
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsdBNFPP92xfl_5tower5limit4rate7serviceINtB2_9RateLimitINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtB16_10connection22MakeSendRequestServiceINtNtB16_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEE3newCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([400 x i8]) align 8 captures(none) dereferenceable(400) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(344) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9742 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [344 x i8], align 8               ; 4 uses
  %i.c = invoke { i64, i32 } @_RNvMNtNtCs3zuhHmEJ01l_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.b unwind label %bb.k, !dbg !9743 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i32 } %i.c, 0, !dbg !9743 ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.c, 1, !dbg !9743 ; 2 uses
  %i.f = load i64, ptr %2, align 8, !dbg !9744, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.b, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false), !dbg !9748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9750
  invoke void @_RNvNtNtCs3zuhHmEJ01l_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, i64 noundef %i.d, i32 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141)
          to label %bb.d unwind label %bb.c, !dbg !9750

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !9751

.body:                                            ; preds = %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.j, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtBG_10connection22MakeSendRequestServiceINtNtBG_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(344) %i.b) #27
          to label %bb.j unwind label %bb.i, !dbg !9751

bb.d:                                             ; preds = %bb.b
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !dbg !9752, !noalias !9761
  %i.h = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 97) 96, i64 noundef range(i64 2, 9) 8) #32, !dbg !9764, !noalias !9761 ; 3 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !9765
  br i1 %i.i, label %bb.e, label %bb.h, !dbg !9766, !prof !3502

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #30
          to label %.noexc unwind label %bb.f, !dbg !9767

.noexc:                                           ; preds = %bb.e
  unreachable, !dbg !9767

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio4time5sleep5SleepECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #27
          to label %.body unwind label %bb.g, !dbg !9768

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9769
  unreachable, !dbg !9769

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !9770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false), !dbg !9772
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !9772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !9772
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !9772
  store i64 %i.f, ptr %i.m, align 8, !dbg !9772
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !9772
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9772
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !9772
  store i32 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9772
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !9772
  store ptr %i.h, ptr %i.n, align 8, !dbg !9772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9751
  ret void, !dbg !9773

bb.i:                                             ; preds = %bb.k, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9774
  unreachable, !dbg !9774

bb.j:                                             ; preds = %.body, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.p, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7, !dbg !9774

bb.k:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtBG_10connection22MakeSendRequestServiceINtNtBG_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(344) %1) #27
          to label %bb.j unwind label %bb.i, !dbg !9775
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB2_9UserAgentINtNtNtB8_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2c_5limit11concurrency7service16ConcurrencyLimitIB26_INtNtNtB2W_4rate7service9RateLimitINtNtB4_9reconnect9ReconnectINtNtB4_10connection22MakeSendRequestServiceINtNtB4_9connector9ConnectorNtNtB6_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4o_EEB3L_EEE3newCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([520 x i8]) align 8 captures(none) dereferenceable(520) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(480) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9776 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.821 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !9783
  %i.e = load i8, ptr %i.d, align 8, !dbg !9783, !range !1543, !noundef !14
  %.not = icmp eq i8 %i.e, 2, !dbg !9783
  br i1 %.not, label %bb.r, label %bb.b, !dbg !9786

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.821), !dbg !9787
  %.sroa.022.0.copyload = load ptr, ptr %2, align 8, !dbg !9787 ; 4 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9787
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8, !dbg !9787, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !9787
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8, !dbg !9787 ; 6 uses
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !9787
  %.sroa.726.0.copyload = load ptr, ptr %.sroa.726.0..sroa_idx, align 8, !dbg !9787 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9789, !noalias !9794
  store i64 0, ptr %i.c, align 8, !dbg !9798, !noalias !9794
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9798 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !dbg !9798, !noalias !9794
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9798 ; 8 uses
  store i64 0, ptr %i.g, align 8, !dbg !9798, !noalias !9794
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.625.0.copyload)
          to label %.noexc.i unwind label %bb.d, !dbg !9801, !noalias !9794

.noexc.i:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !dbg !9814, !alias.scope !9820, !noalias !9794, !noundef !14 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1, !dbg !9823
  call void @llvm.assume(i1 %i.i), !dbg !9825
  %.not.i.i = icmp eq i64 %.sroa.625.0.copyload, 0, !dbg !9826
  br i1 %.not.i.i, label %bb.e, label %bb.c, !dbg !9826

bb.c:                                             ; preds = %.noexc.i
  %i.j = load ptr, ptr %i.f, align 8, !dbg !9828, !alias.scope !9820, !noalias !9794, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h, !dbg !9837
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.sroa.524.0.copyload, i64 %.sroa.625.0.copyload, i1 false), !dbg !9840, !noalias !9794
  %.pre.i.i = load i64, ptr %i.g, align 8, !dbg !9843, !alias.scope !9820, !noalias !9794
  br label %bb.e, !dbg !9844

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %.body.i unwind label %bb.p, !dbg !9845, !noalias !9794

bb.e:                                             ; preds = %bb.c, %.noexc.i
  %i.m = phi i64 [ %.pre.i.i, %bb.c ], [ %i.h, %.noexc.i ], !dbg !9843
  %i.n = add i64 %i.m, %.sroa.625.0.copyload, !dbg !9843 ; 4 uses
  store i64 %i.n, ptr %i.g, align 8, !dbg !9843, !alias.scope !9820, !noalias !9794
  %i.o = load i64, ptr %i.c, align 8, !dbg !9846, !range !2512, !alias.scope !9856, !noalias !9794, !noundef !14
  %i.p = icmp eq i64 %i.n, %i.o, !dbg !9859
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !9859

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.g unwind label %bb.d, !dbg !9860, !noalias !9794

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %i.f, align 8, !dbg !9861, !alias.scope !9856, !noalias !9794, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !9870
  store i8 32, ptr %i.r, align 1, !dbg !9873, !noalias !9794
  %i.s = add i64 %i.n, 1, !dbg !9877
  store i64 %i.s, ptr %i.g, align 8, !dbg !9877, !alias.scope !9856, !noalias !9794
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 12)
          to label %bb.h unwind label %bb.d, !dbg !9878, !noalias !9794

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.g, align 8, !dbg !9884, !alias.scope !9887, !noalias !9794, !noundef !14 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !9890
  call void @llvm.assume(i1 %i.u), !dbg !9891
  %i.v = load ptr, ptr %i.f, align 8, !dbg !9892, !alias.scope !9887, !noalias !9794, !nonnull !14, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t, !dbg !9897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @117, i64 12, i1 false), !dbg !9899, !noalias !9794
  %.pre.i3.i = load i64, ptr %i.g, align 8, !dbg !9901, !alias.scope !9887, !noalias !9794
  %i.x = add i64 %.pre.i3.i, 12, !dbg !9901       ; 2 uses
  store i64 %i.x, ptr %i.g, align 8, !dbg !9901, !alias.scope !9887, !noalias !9794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9902, !noalias !9794
  %i.y = load ptr, ptr %i.f, align 8, !dbg !9903, !noalias !9794, !nonnull !14, !noundef !14
  invoke void @_RINvMNtNtCs74LoFwSioHw_4http6header5valueNtB3_11HeaderValue16try_from_genericRShNvMNtCs8QTyv2gZm5j_5bytes5bytesNtB1j_5Bytes15copy_from_sliceECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x)
          to label %bb.i unwind label %bb.d, !dbg !9916, !noalias !9794

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !9922), !dbg !9925
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9926
  %i.aa = load i8, ptr %i.z, align 16, !dbg !9926, !range !1543, !alias.scope !9929, !noalias !9931, !noundef !14 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 2, !dbg !9926
  br i1 %i.ab, label %bb.j, label %bb.k, !dbg !9933, !prof !308

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #28
          to label %.noexc6.i unwind label %bb.d, !dbg !9934, !noalias !9794

.noexc6.i:                                        ; preds = %bb.j
  unreachable, !dbg !9934

bb.k:                                             ; preds = %bb.i
  %i.ac = load <2 x ptr>, ptr %i.b, align 16, !dbg !9936, !alias.scope !9937, !noalias !9938
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9936
  %3 = load <2 x i64>, ptr %.sroa.518.0..sroa_idx, align 16, !dbg !9936, !alias.scope !9937, !noalias !9938
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33, !dbg !9936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821.0..sroa_idx, i64 7, i1 false), !dbg !9936, !alias.scope !9937, !noalias !9938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9939, !noalias !9794
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.l, !dbg !9940, !noalias !9794

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.n, !dbg !9942, !noalias !9794

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.o, !dbg !9944, !noalias !9794

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9940, !noalias !9794
  unreachable, !dbg !9940

.body.i:                                          ; preds = %bb.o, %bb.l, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ah, %bb.o ], [ %i.ad, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32, !dbg !9946
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !9946, !noalias !9950, !nonnull !14, !noundef !14
  invoke void %i.ag(ptr noundef %.sroa.726.0.copyload, ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.625.0.copyload)
          to label %.body unwind label %bb.p, !dbg !9946, !noalias !9794, !inline_history !2437

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9845, !noalias !9794
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32, !dbg !9957
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !9957, !noalias !9961, !nonnull !14, !noundef !14
  invoke void %i.aj(ptr noundef %.sroa.726.0.copyload, ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.625.0.copyload)
          to label %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit unwind label %bb.q, !dbg !9957, !inline_history !9968

bb.p:                                             ; preds = %.body.i, %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9969, !noalias !9794
  unreachable, !dbg !9969

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !9970

.body:                                            ; preds = %.body.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.q ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB1U_5limit11concurrency7service16ConcurrencyLimitIB1O_INtNtNtB2E_4rate7service9RateLimitINtNtNtNtBI_7channel7service9reconnect9ReconnectINtNtB4b_10connection22MakeSendRequestServiceINtNtB4b_9connector9ConnectorNtNtB4d_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB46_EEB3t_EEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(480) %1) #27
          to label %bb.t unwind label %bb.s, !dbg !9970

bb.r:                                             ; preds = %bb.a, %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit
  %.sroa.6.0 = phi i8 [ %i.aa, %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit ], [ 0, %bb.a ], !dbg !9971
  %4 = phi <2 x i64> [ %3, %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit ], [ <i64 12, i64 0>, %bb.a ], !dbg !9971
  %i.am = phi <2 x ptr> [ %i.ac, %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit ], [ <ptr @9, ptr @117>, %bb.a ], !dbg !9971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(480) %1, i64 480, i1 false), !dbg !9974
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 480, !dbg !9976
  store <2 x ptr> %i.am, ptr %i.an, align 8, !dbg !9976
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496, !dbg !9976
  store <2 x i64> %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9976
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512, !dbg !9976
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9976
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 513, !dbg !9976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false), !dbg !9976
  ret void, !dbg !9977

_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821, i64 7, i1 false), !dbg !9978
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.821), !dbg !9979
  br label %bb.r, !dbg !9980

bb.s:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9981
  unreachable, !dbg !9981

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !9981
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB2_9UserAgentINtNtNtB8_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2c_5limit11concurrency7service16ConcurrencyLimitIB26_INtNtNtB2W_4rate7service9RateLimitINtNtB4_9reconnect9ReconnectINtNtB4_10connection22MakeSendRequestServiceINtNtB4_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4o_EEB3L_EEE3newCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([504 x i8]) align 8 captures(none) dereferenceable(504) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(464) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9982 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.821 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !9983
  %i.e = load i8, ptr %i.d, align 8, !dbg !9983, !range !1543, !noundef !14
  %.not = icmp eq i8 %i.e, 2, !dbg !9983
  br i1 %.not, label %bb.r, label %bb.b, !dbg !9986

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.821), !dbg !9987
  %.sroa.022.0.copyload = load ptr, ptr %2, align 8, !dbg !9987 ; 4 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9987
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8, !dbg !9987, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !9987
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8, !dbg !9987 ; 6 uses
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !9987
  %.sroa.726.0.copyload = load ptr, ptr %.sroa.726.0..sroa_idx, align 8, !dbg !9987 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9989, !noalias !9992
  store i64 0, ptr %i.c, align 8, !dbg !9996, !noalias !9992
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9996 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !dbg !9996, !noalias !9992
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9996 ; 8 uses
  store i64 0, ptr %i.g, align 8, !dbg !9996, !noalias !9992
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.625.0.copyload)
          to label %.noexc.i unwind label %bb.d, !dbg !9999, !noalias !9992

.noexc.i:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !dbg !10007, !alias.scope !10010, !noalias !9992, !noundef !14 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1, !dbg !10013
  call void @llvm.assume(i1 %i.i), !dbg !10014
  %.not.i.i = icmp eq i64 %.sroa.625.0.copyload, 0, !dbg !10015
  br i1 %.not.i.i, label %bb.e, label %bb.c, !dbg !10015

bb.c:                                             ; preds = %.noexc.i
  %i.j = load ptr, ptr %i.f, align 8, !dbg !10016, !alias.scope !10010, !noalias !9992, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h, !dbg !10021
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.sroa.524.0.copyload, i64 %.sroa.625.0.copyload, i1 false), !dbg !10023, !noalias !9992
  %.pre.i.i = load i64, ptr %i.g, align 8, !dbg !10025, !alias.scope !10010, !noalias !9992
  br label %bb.e, !dbg !10026

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %.body.i unwind label %bb.p, !dbg !10027, !noalias !9992

bb.e:                                             ; preds = %bb.c, %.noexc.i
  %i.m = phi i64 [ %.pre.i.i, %bb.c ], [ %i.h, %.noexc.i ], !dbg !10025
  %i.n = add i64 %i.m, %.sroa.625.0.copyload, !dbg !10025 ; 4 uses
  store i64 %i.n, ptr %i.g, align 8, !dbg !10025, !alias.scope !10010, !noalias !9992
  %i.o = load i64, ptr %i.c, align 8, !dbg !10028, !range !2512, !alias.scope !10034, !noalias !9992, !noundef !14
  %i.p = icmp eq i64 %i.n, %i.o, !dbg !10037
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !10037

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.g unwind label %bb.d, !dbg !10038, !noalias !9992

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %i.f, align 8, !dbg !10039, !alias.scope !10034, !noalias !9992, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n, !dbg !10044
  store i8 32, ptr %i.r, align 1, !dbg !10046, !noalias !9992
  %i.s = add i64 %i.n, 1, !dbg !10048
  store i64 %i.s, ptr %i.g, align 8, !dbg !10048, !alias.scope !10034, !noalias !9992
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 12)
          to label %bb.h unwind label %bb.d, !dbg !10049, !noalias !9992

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.g, align 8, !dbg !10055, !alias.scope !10058, !noalias !9992, !noundef !14 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !10061
  call void @llvm.assume(i1 %i.u), !dbg !10062
  %i.v = load ptr, ptr %i.f, align 8, !dbg !10063, !alias.scope !10058, !noalias !9992, !nonnull !14, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t, !dbg !10068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @117, i64 12, i1 false), !dbg !10070, !noalias !9992
  %.pre.i3.i = load i64, ptr %i.g, align 8, !dbg !10072, !alias.scope !10058, !noalias !9992
  %i.x = add i64 %.pre.i3.i, 12, !dbg !10072      ; 2 uses
  store i64 %i.x, ptr %i.g, align 8, !dbg !10072, !alias.scope !10058, !noalias !9992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10073, !noalias !9992
  %i.y = load ptr, ptr %i.f, align 8, !dbg !10074, !noalias !9992, !nonnull !14, !noundef !14
  invoke void @_RINvMNtNtCs74LoFwSioHw_4http6header5valueNtB3_11HeaderValue16try_from_genericRShNvMNtCs8QTyv2gZm5j_5bytes5bytesNtB1j_5Bytes15copy_from_sliceECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x)
          to label %bb.i unwind label %bb.d, !dbg !10087, !noalias !9992

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !10090), !dbg !10093
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !10094
  %i.aa = load i8, ptr %i.z, align 16, !dbg !10094, !range !1543, !alias.scope !10096, !noalias !10098, !noundef !14 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 2, !dbg !10094
  br i1 %i.ab, label %bb.j, label %bb.k, !dbg !10100, !prof !308

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #28
          to label %.noexc6.i unwind label %bb.d, !dbg !10101, !noalias !9992

.noexc6.i:                                        ; preds = %bb.j
  unreachable, !dbg !10101

bb.k:                                             ; preds = %bb.i
  %i.ac = load <2 x ptr>, ptr %i.b, align 16, !dbg !10102, !alias.scope !10103, !noalias !10104
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10102
  %3 = load <2 x i64>, ptr %.sroa.518.0..sroa_idx, align 16, !dbg !10102, !alias.scope !10103, !noalias !10104
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33, !dbg !10102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821.0..sroa_idx, i64 7, i1 false), !dbg !10102, !alias.scope !10103, !noalias !10104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10105, !noalias !9992
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.l, !dbg !10106, !noalias !9992

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.n, !dbg !10108, !noalias !9992

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.o, !dbg !10110, !noalias !9992

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10106, !noalias !9992
  unreachable, !dbg !10106

.body.i:                                          ; preds = %bb.o, %bb.l, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ah, %bb.o ], [ %i.ad, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32, !dbg !10112
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !10112, !noalias !10116, !nonnull !14, !noundef !14
  invoke void %i.ag(ptr noundef %.sroa.726.0.copyload, ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.625.0.copyload)
          to label %.body unwind label %bb.p, !dbg !10112, !noalias !9992, !inline_history !2437

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10027, !noalias !9992
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32, !dbg !10123
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !10123, !noalias !10127, !nonnull !14, !noundef !14
  invoke void %i.aj(ptr noundef %.sroa.726.0.copyload, ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.625.0.copyload)
          to label %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit unwind label %bb.q, !dbg !10123, !inline_history !10134

bb.p:                                             ; preds = %.body.i, %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10135, !noalias !9992
  unreachable, !dbg !10135

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !10136

.body:                                            ; preds = %.body.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.q ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB1U_5limit11concurrency7service16ConcurrencyLimitIB1O_INtNtNtB2E_4rate7service9RateLimitINtNtNtNtBI_7channel7service9reconnect9ReconnectINtNtB4b_10connection22MakeSendRequestServiceINtNtB4b_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB46_EEB3t_EEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(464) %1) #27
          to label %bb.t unwind label %bb.s, !dbg !10136

bb.r:                                             ; preds = %bb.a, %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit
  %.sroa.6.0 = phi i8 [ %i.aa, %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit ], [ 0, %bb.a ], !dbg !10137
  %4 = phi <2 x i64> [ %3, %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit ], [ <i64 12, i64 0>, %bb.a ], !dbg !10137
  %i.am = phi <2 x ptr> [ %i.ac, %_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit ], [ <ptr @9, ptr @117>, %bb.a ], !dbg !10137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i64 464, i1 false), !dbg !10140
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464, !dbg !10142
  store <2 x ptr> %i.am, ptr %i.an, align 8, !dbg !10142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480, !dbg !10142
  store <2 x i64> %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !10142
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496, !dbg !10142
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10142
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 497, !dbg !10142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false), !dbg !10142
  ret void, !dbg !10143

_RNCNvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4q_EEB3N_EEE3new0CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821, i64 7, i1 false), !dbg !10144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.821), !dbg !10145
  br label %bb.r, !dbg !10146

bb.s:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10147
  unreachable, !dbg !10147

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !10147
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10148 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10149 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10149 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !10149, !noundef !14 ; 4 uses
  %i.h = icmp ult i64 %i.g, 88686269585142076, !dbg !10152
  tail call void @llvm.assume(i1 %i.h), !dbg !10154
  %i.i = load i64, ptr %0, align 8, !dbg !10155, !range !2797, !noundef !14
  %i.j = icmp eq i64 %i.i, 1, !dbg !10161
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !10162 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !10162, !noundef !14 ; 5 uses
  br i1 %i.j, label %bb.c, label %bb.b, !dbg !10163

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !10164 ; 2 uses
  %i.n = lshr i64 %i.l, 2, !dbg !10167
  %i.o = sub nuw i64 %i.l, %i.n, !dbg !10170
  %i.p = icmp eq i64 %i.g, %i.o, !dbg !10171
  br i1 %i.p, label %bb.d, label %_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap7rebuildCsbaWXNhtWAp9_11foundations.exit, !dbg !10171

bb.c:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i64 %i.g, 5, !dbg !10172
  %.not = icmp ult i64 %i.q, %i.l, !dbg !10172
  br i1 %.not, label %bb.q, label %bb.r, !dbg !10172

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.g, 0, !dbg !10173
  br i1 %i.r, label %bb.e, label %bb.j, !dbg !10173

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !10174
  store i16 7, ptr %i.s, align 8, !dbg !10174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10177, !noalias !10180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10183, !noalias !10180
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !dbg !10183, !noalias !10180
  %i.t = load i64, ptr %i.a, align 8, !dbg !10183, !range !34, !noalias !10180, !noundef !14
  %i.u = trunc nuw i64 %i.t to i1, !dbg !10187
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10188
  %i.w = load i64, ptr %i.v, align 8, !dbg !10188, !range !8145, !noalias !10180, !noundef !14 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10188 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i, !dbg !10187, !prof !308

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !dbg !10189, !noalias !10180
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #30, !dbg !10190, !noalias !10180
  unreachable, !dbg !10190

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !dbg !10191, !noalias !10180, !nonnull !14, !noundef !14
  %i.aa = icmp ugt i64 %i.w, 7, !dbg !10192
  tail call void @llvm.assume(i1 %i.aa), !dbg !10194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10196, !noalias !10180
  store i64 %i.w, ptr %i.b, align 8, !dbg !10197, !noalias !10180
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10197
  store ptr %i.z, ptr %i.ab, align 8, !dbg !10197, !noalias !10180
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10197
  store i64 0, ptr %i.ac, align 8, !dbg !10197, !noalias !10180
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs74LoFwSioHw_4http6header3map3PosE11extend_withCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 8, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCs74LoFwSioHw_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsbaWXNhtWAp9_11foundations.exit unwind label %bb.g, !dbg !10198, !noalias !10180

bb.g:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs74LoFwSioHw_4http6header3map3PosEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %common.resume unwind label %bb.h, !dbg !10199, !noalias !10180

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10200, !noalias !10180
  unreachable, !dbg !10200

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !10201

_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCs74LoFwSioHw_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !10202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10199, !noalias !10180
  %i.af = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs74LoFwSioHw_4http6header3map3PosE16into_boxed_sliceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !10203 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0, !dbg !10203
  %i.ah = extractvalue { ptr, i64 } %i.af, 1, !dbg !10203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10204
  %.val14 = load i64, ptr %i.k, align 8, !dbg !10205, !noundef !14 ; 2 uses
  %i.ai = icmp eq i64 %.val14, 0, !dbg !10206
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtCs74LoFwSioHw_4http6header3map3PosEECsbaWXNhtWAp9_11foundations.exit, label %bb.i, !dbg !10206

bb.i:                                             ; preds = %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCs74LoFwSioHw_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsbaWXNhtWAp9_11foundations.exit
  %.val = load ptr, ptr %i.m, align 8, !dbg !10205, !nonnull !14, !noundef !14
  %i.aj = shl nuw nsw i64 %.val14, 2, !dbg !10209
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 2) #32, !dbg !10212
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtCs74LoFwSioHw_4http6header3map3PosEECsbaWXNhtWAp9_11foundations.exit, !dbg !10217

bb.j:                                             ; preds = %bb.d
  %i.ak = shl i64 %i.l, 1, !dbg !10218
  %i.al = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap8try_growCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.ak) #31, !dbg !10220
  br i1 %i.al, label %bb.z, label %_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap7rebuildCsbaWXNhtWAp9_11foundations.exit, !dbg !10221

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtCs74LoFwSioHw_4http6header3map3PosEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.i, %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCs74LoFwSioHw_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsbaWXNhtWAp9_11foundations.exit
  store ptr %i.ag, ptr %i.m, align 8, !dbg !10205
  store i64 %i.ah, ptr %i.k, align 8, !dbg !10205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10224
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 6, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104), !dbg !10224
  %i.am = load i64, ptr %i.c, align 8, !dbg !10224, !range !34, !noundef !14
  %i.an = trunc nuw i64 %i.am to i1, !dbg !10233
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10234
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !10234, !range !8145, !noundef !14 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10234 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l, !dbg !10233, !prof !308

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtCs74LoFwSioHw_4http6header3map3PosEECsbaWXNhtWAp9_11foundations.exit
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !10235
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #30, !dbg !10236
  unreachable, !dbg !10236

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtCs74LoFwSioHw_4http6header3map3PosEECsbaWXNhtWAp9_11foundations.exit
  %i.as = load ptr, ptr %i.aq, align 8, !dbg !10238, !nonnull !14, !noundef !14 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 5, !dbg !10239
  call void @llvm.assume(i1 %i.at), !dbg !10243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10246
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.m, !dbg !10247

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.o, !dbg !10249

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.p, !dbg !10251

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10247
  unreachable, !dbg !10247

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !10253

.body:                                            ; preds = %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.au, %bb.m ]
  store i64 %i.ap, ptr %i.e, align 8, !dbg !10253
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10253
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10253
  store i64 0, ptr %i.f, align 8, !dbg !10253
  br label %common.resume, !dbg !10254

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.n
  store i64 %i.ap, ptr %i.e, align 8, !dbg !10253
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10253
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx5, align 8, !dbg !10253
  store i64 0, ptr %i.f, align 8, !dbg !10253
  br label %_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap7rebuildCsbaWXNhtWAp9_11foundations.exit, !dbg !10255

_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap7rebuildCsbaWXNhtWAp9_11foundations.exit: ; preds = %.backedge.i, %._crit_edge, %bb.r, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsbaWXNhtWAp9_11foundations.exit, %bb.b
  br label %bb.z, !dbg !10256

bb.q:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !10257 ; 2 uses
  tail call void @_RNvMs12_NtNtCs74LoFwSioHw_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !10258
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !10259, !nonnull !14, !noundef !14 ; 5 uses
  %i.az = load i64, ptr %i.k, align 8, !dbg !10259, !noundef !14 ; 2 uses
  %.idx = shl i64 %i.az, 2, !dbg !10260           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx, !dbg !10260
  %i.bb = icmp eq i64 %i.az, 0, !dbg !10270
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.preheader, !dbg !10272

.lr.ph.preheader:                                 ; preds = %bb.q
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB4_10DynStreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE9recv_dataCsbaWXNhtWAp9_11foundations:bb.a
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16385, !noalias !16383
  unreachable, !dbg !16385

bb.ax:                                            ; preds = %bb.as
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16386
  %i.du = load ptr, ptr %i.dt, align 8, !dbg !16386, !alias.scope !16371, !noalias !16377, !nonnull !14, !align !55, !noundef !14 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !16386
  %i.dw = load i8, ptr %i.dv, align 8, !dbg !16386, !range !311, !alias.scope !16371, !noalias !16377, !noundef !14 ; 2 uses
  %i.dx = trunc nuw i8 %i.dw to i1, !dbg !16386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16387, !noalias !16137
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8, !dbg !16388
  %i.dz = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aa)
          to label %.noexc.i.i unwind label %bb.bw, !dbg !16394, !noalias !16398

.noexc.i.i:                                       ; preds = %bb.ax
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 120, !dbg !16403
  %i.eb = load i32, ptr %i.ea, align 8, !dbg !16403, !range !4314, !noalias !16398, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16410, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16414, !noalias !16420
  store ptr %.sroa.014.0.copyload, ptr %i.f, align 8, !dbg !16426, !noalias !16427
  %.sroa.9.16..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16426
  store ptr %.sroa.6.0.copyload, ptr %.sroa.9.16..sroa_idx103.i, align 8, !dbg !16426, !noalias !16427
  %.sroa.8.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !16414
  store ptr %.sroa.16.0.copyload, ptr %.sroa.8.16..sroa_idx.i.i, align 8, !dbg !16426, !noalias !16427
  %.sroa.14.40..sroa.8.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !16426
  store i32 %.sroa.19.0.copyload, ptr %.sroa.14.40..sroa.8.16..sroa_idx.i.sroa_idx.i, align 8, !dbg !16426, !noalias !16427
  %i.ec = bitcast <4 x i8> %i.ba to <32 x i1>, !dbg !16428
  %i.ed = extractelement <32 x i1> %i.ec, i64 8, !dbg !16428
  %i.ee = extractelement <4 x i8> %i.ba, i64 2, !dbg !16430
  %i.ef = zext i8 %i.ee to i64, !dbg !16430
  %i.eg = add nuw nsw i64 %i.ef, 1, !dbg !16430
  %i.eh = select i1 %i.ed, i64 %i.eg, i64 0, !dbg !16430
  %.sroa.0.0.i.i.i.i = add i64 %i.eh, %.sroa.9.0.copyload, !dbg !16430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16431, !noalias !16420
  %.sroa.6.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !16414
  store i64 %.sroa.9.0.copyload, ptr %.sroa.6.16..sroa_idx.i.i, align 8, !dbg !16414, !noalias !16432
  %.sroa.86.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36, !dbg !16414
  store <4 x i8> %i.ba, ptr %.sroa.86.16..sroa_idx.i.i, align 4, !dbg !16414, !noalias !16432
  invoke void @_RNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams4recvNtB2_4Recv9recv_data(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.noexc.i unwind label %bb.bx, !dbg !16433, !noalias !16143

.noexc.i:                                         ; preds = %.noexc.i.i
  %i.ei = trunc i8 %.sroa.20.0.copyload to i1, !dbg !16434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16440, !noalias !16420
  %i.ej = load i8, ptr %i.g, align 8, !dbg !16441, !range !387, !noalias !16420, !noundef !14 ; 2 uses
  %i.ek = icmp ne i8 %i.ej, -1, !dbg !16441
  %brmerge.i.i.i = or i1 %i.ek, %i.ei, !dbg !16447
  br i1 %brmerge.i.i.i, label %bb.ay, label %bb.az, !dbg !16447

bb.ay:                                            ; preds = %.noexc.i
  %i.el = icmp eq i8 %i.ej, 0, !dbg !16448
  br i1 %i.el, label %bb.bo, label %bb.bn, !dbg !16448

bb.az:                                            ; preds = %.noexc.i
  %i.em = invoke noundef zeroext i1 @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams6countsNtB4_6Counts17record_data_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %i.au, i64 noundef %.sroa.9.0.copyload)
          to label %bb.ba unwind label %.thread37.i.i.i, !dbg !16450, !noalias !16451

.thread37.i.i.i:                                  ; preds = %bb.bs, %bb.bf, %bb.be, %bb.bd, %bb.az
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i, !dbg !16452

bb.ba:                                            ; preds = %bb.az
  br i1 %i.em, label %bb.bb, label %_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !16453

bb.bb:                                            ; preds = %bb.ba
  %i.en = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !16456, !noalias !16467
  %i.eo = icmp ult i64 %i.en, 2, !dbg !16470
  br i1 %i.eo, label %bb.bc, label %_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !16471

bb.bc:                                            ; preds = %bb.bb
  %i.ep = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBb_5Inner9recv_data0010___CALLSITE, i64 16) monotonic, align 8, !dbg !16472, !noalias !16467 ; 3 uses
  switch i8 %i.ep, label %bb.bd [
    i8 0, label %_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i
    i8 1, label %bb.be
    i8 2, label %bb.be
  ], !dbg !16479, !prof !154

bb.bd:                                            ; preds = %bb.bc
  %i.eq = invoke noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBb_5Inner9recv_data0010___CALLSITE) #29
          to label %.noexc.i.i.i unwind label %.thread37.i.i.i, !dbg !16480, !noalias !16451 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.bd
  %i.er = icmp eq i8 %i.eq, 0, !dbg !16481
  br i1 %i.er, label %_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i, label %bb.be, !dbg !16489

bb.be:                                            ; preds = %bb.bc, %.noexc.i.i.i, %bb.bc
  %.sroa.06.0.i.i.i.i = phi i8 [ %i.eq, %.noexc.i.i.i ], [ %i.ep, %bb.bc ], [ %i.ep, %bb.bc ], !dbg !16490
  %i.es = load ptr, ptr @_RNvNCNCNvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBb_5Inner9recv_data0010___CALLSITE, align 8, !dbg !16491, !noalias !16467, !nonnull !14, !align !55, !noundef !14
  %i.et = invoke noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.es, i8 noundef %.sroa.06.0.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.thread37.i.i.i, !dbg !16489, !noalias !16451

.noexc16.i.i.i:                                   ; preds = %bb.be
  br i1 %i.et, label %bb.bf, label %_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !16495

bb.bf:                                            ; preds = %.noexc16.i.i.i
  %i.eu = load ptr, ptr @_RNvNCNCNvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBb_5Inner9recv_data0010___CALLSITE, align 8, !dbg !16498, !noalias !16467, !nonnull !14, !align !55, !noundef !14 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48, !dbg !16501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16495, !noalias !16467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16495, !noalias !16467
  store ptr @115, ptr %i.b, align 8, !dbg !16505, !noalias !16467
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16505
  store ptr inttoptr (i64 53 to ptr), ptr %i.ew, align 8, !dbg !16505, !noalias !16467
  store ptr %i.b, ptr %i.c, align 8, !dbg !16495, !noalias !16467
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16495
  store ptr @4, ptr %i.ex, align 8, !dbg !16495, !noalias !16467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16495, !noalias !16467
  store i64 1, ptr %i.a, align 8, !dbg !16495, !noalias !16467
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16495
  store ptr %i.c, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !16495, !noalias !16467
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !16495
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !16495, !noalias !16467
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !16495
  store ptr %i.ev, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !16495, !noalias !16467
  invoke void @_RNvMNtCshtG1HG2JiYb_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %.noexc17.i.i.i unwind label %.thread37.i.i.i, !dbg !16509, !noalias !16451

.noexc17.i.i.i:                                   ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16495, !noalias !16467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16495, !noalias !16467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16495, !noalias !16467
  br label %_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !16495

_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %.noexc17.i.i.i, %.noexc16.i.i.i, %.noexc.i.i.i, %bb.bc, %bb.bb, %bb.ba
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.ba ], [ 1, %.noexc17.i.i.i ], [ 1, %.noexc16.i.i.i ], [ 1, %.noexc.i.i.i ], [ 1, %bb.bc ], [ 1, %bb.bb ], !dbg !16516 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16517), !dbg !16520
  %i.ey = load i8, ptr %i.g, align 8, !dbg !16521, !range !387, !alias.scope !16517, !noalias !16420, !noundef !14 ; 2 uses
  %i.ez = icmp eq i8 %i.ey, -1, !dbg !16521
  br i1 %i.ez, label %.thread41.i.i.i, label %bb.bg, !dbg !16521

bb.bg:                                            ; preds = %_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16523), !dbg !16521
  switch i8 %i.ey, label %bb.bh [
    i8 0, label %.thread41.i.i.i
    i8 1, label %bb.bl
  ], !dbg !16526

bb.bh:                                            ; preds = %bb.bg
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !16526 ; 4 uses
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !16528, !range !4841, !alias.scope !16530, !noalias !16420, !noundef !14
  %i.fc = icmp eq i64 %i.fb, -1, !dbg !16528
  br i1 %i.fc, label %.thread41.i.i.i, label %bb.bi, !dbg !16528

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i.i unwind label %bb.bj, !dbg !16533, !noalias !16451

bb.bj:                                            ; preds = %bb.bi
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %.body.i.i.i unwind label %bb.bk, !dbg !16536, !noalias !16451

bb.bk:                                            ; preds = %bb.bj
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16533, !noalias !16451
  unreachable, !dbg !16533

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i.i: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %.thread41.i.i.i unwind label %bb.bm, !dbg !16538, !noalias !16451

bb.bl:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !16526
  call void @llvm.experimental.noalias.scope.decl(metadata !16540), !dbg !16526
  call void @llvm.experimental.noalias.scope.decl(metadata !16543), !dbg !16546
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !16548
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !16555, !alias.scope !16557, !noalias !16420, !noundef !14
  %i.fi = load ptr, ptr %i.ff, align 8, !dbg !16558, !alias.scope !16557, !noalias !16420, !nonnull !14, !align !55, !noundef !14
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32, !dbg !16558
  %i.fk = load ptr, ptr %i.fj, align 8, !dbg !16558, !noalias !16559, !nonnull !14, !noundef !14
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !16560
  %i.fm = load ptr, ptr %i.fl, align 8, !dbg !16560, !alias.scope !16557, !noalias !16420, !noundef !14
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !16561
  %i.fo = load i64, ptr %i.fn, align 8, !dbg !16561, !alias.scope !16557, !noalias !16420, !noundef !14
  invoke void %i.fk(ptr noundef %i.fh, ptr noundef %i.fm, i64 noundef %i.fo)
          to label %.thread41.i.i.i unwind label %bb.bm, !dbg !16558, !noalias !16451, !inline_history !16562

bb.bm:                                            ; preds = %bb.bl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !16520

.body.i.i.i:                                      ; preds = %bb.bm, %bb.bj
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fp, %bb.bm ], [ %i.fd, %bb.bj ]
  store i8 %.sroa.0.0.i.i.i, ptr %i.g, align 8, !dbg !16520, !noalias !16420
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !16520
  store i8 1, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 1, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !16520
  store i32 11, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i, align 4, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !16520
  store ptr @9, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i, align 8, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !16520
  store ptr @116, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i, align 8, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !16520
  store i64 20, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i, align 8, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !16520
  store i64 0, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i, align 8, !dbg !16520, !noalias !16420
  br label %.thread.i.i.i, !dbg !16563

.thread41.i.i.i:                                  ; preds = %bb.bl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i.i, %bb.bh, %bb.bg, %_RNCNCINvMs0_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtBa_5Inner9recv_dataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE00CsbaWXNhtWAp9_11foundations.exit.i.i.i
  store i8 %.sroa.0.0.i.i.i, ptr %i.g, align 8, !dbg !16520, !noalias !16420
  %.sroa.6.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !16520
  store i8 1, ptr %.sroa.6.0..sroa_idx6.i.i.i, align 1, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !16520
  store i32 11, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i, align 4, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !16520
  store ptr @9, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i, align 8, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !16520
  store ptr @116, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i, align 8, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !16520
  store i64 20, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i, align 8, !dbg !16520, !noalias !16420
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !16520
  store i64 0, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx6.sroa_idx.i.i.i, align 8, !dbg !16520, !noalias !16420
  br label %bb.bn, !dbg !16448

bb.bn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit22.i.i.i, %.thread41.i.i.i, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16564, !noalias !16420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !dbg !16564, !noalias !16420
  invoke fastcc void @_RINvMsc_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB6_7Actions24reset_on_recv_stream_errINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(336) %i.bd, ptr noalias nofree noundef align 8 dereferenceable(40) %i.dy, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.d)
          to label %.noexc80.i unwind label %bb.bx, !dbg !16565, !noalias !16143

.noexc80.i:                                       ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16566, !noalias !16420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16452, !noalias !16420
  %i.fq = icmp ne i32 %i.eb, -1, !dbg !16403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16567, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !dbg !16567, !noalias !16569
  invoke void @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams6countsNtB4_6Counts16transition_after(ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %i.au, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.h, i1 noundef zeroext %i.fq)
          to label %bb.by unwind label %bb.bu, !dbg !16570, !noalias !16571

bb.bo:                                            ; preds = %bb.ay
  %i.fr = trunc i64 %.sroa.0.0.i.i.i.i to i32, !dbg !16572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16573, !noalias !16420
  store ptr null, ptr %i.e, align 8, !dbg !16573, !noalias !16420
  invoke void @_RNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams4recvNtB2_4Recv27release_connection_capacity(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.bd, i32 noundef %i.fr, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.br unwind label %bb.bp, !dbg !16574, !noalias !16575

bb.bp:                                            ; preds = %bb.bo
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val13.i.i.i = load ptr, ptr %i.e, align 8, !dbg !16576, !noalias !16420, !align !55, !noundef !14 ; 2 uses
  %i.ft = icmp eq ptr %.val13.i.i.i, null, !dbg !16577
  br i1 %i.ft, label %.thread.i.i.i, label %bb.bq, !dbg !16577

bb.bq:                                            ; preds = %bb.bp
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16576
  %.val14.i.i.i = load ptr, ptr %i.fu, align 8, !dbg !16576, !noalias !16420
  %i.fv = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 24, !dbg !16579
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !16579, !noalias !16575, !nonnull !14, !noundef !14
  invoke void %i.fw(ptr noundef %.val14.i.i.i)
          to label %.thread.i.i.i unwind label %bb.bt, !dbg !16579, !noalias !16575, !inline_history !2151

bb.br:                                            ; preds = %bb.bo
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !dbg !16576, !noalias !16420, !align !55, !noundef !14 ; 2 uses
  %i.fx = icmp eq ptr %.val.i.i.i, null, !dbg !16582
  br i1 %i.fx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit22.i.i.i, label %bb.bs, !dbg !16582

bb.bs:                                            ; preds = %bb.br
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16576
  %.val12.i.i.i = load ptr, ptr %i.fy, align 8, !dbg !16576, !noalias !16420
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24, !dbg !16584
  %i.ga = load ptr, ptr %i.fz, align 8, !dbg !16584, !noalias !16575, !nonnull !14, !noundef !14
  invoke void %i.ga(ptr noundef %.val12.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit22.i.i.i unwind label %.thread37.i.i.i, !dbg !16584, !noalias !16575, !inline_history !2151

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbaWXNhtWAp9_11foundations.exit22.i.i.i: ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16576, !noalias !16420
  br label %bb.bn, !dbg !16587

bb.bt:                                            ; preds = %.thread.i.i.i, %bb.bq
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16588, !noalias !16451
  unreachable, !dbg !16588

.thread.i.i.i:                                    ; preds = %bb.bq, %bb.bp, %.body.i.i.i, %.thread37.i.i.i
  %.pn35.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.thread37.i.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fs, %bb.bq ], [ %i.fs, %bb.bp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #27
          to label %.body81.i unwind label %bb.bt, !dbg !16452, !noalias !16451

bb.bu:                                            ; preds = %.noexc80.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #27
          to label %.body81.i unwind label %bb.bv, !dbg !16589, !noalias !16571

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16590, !noalias !16571
  unreachable, !dbg !16590

bb.bw:                                            ; preds = %bb.ax
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.0.copyload) ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 32, !dbg !16591
  %i.gf = load ptr, ptr %i.ge, align 8, !dbg !16591, !noalias !16597, !nonnull !14, !noundef !14
  invoke void %i.gf(ptr noundef %.sroa.16.0.copyload, ptr noundef %.sroa.6.0.copyload, i64 noundef %.sroa.9.0.copyload)
          to label %.body81.i unwind label %bb.bv, !dbg !16591, !noalias !16398, !inline_history !16606

bb.bx:                                            ; preds = %bb.bn, %.noexc.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i, !dbg !16607

.body81.i:                                        ; preds = %bb.bx, %bb.bw, %bb.bu, %.thread.i.i.i
  %eh.lpad-body82.i = phi { ptr, i32 } [ %i.gg, %bb.bx ], [ %.pn35.i.i.i, %.thread.i.i.i ], [ %i.gc, %bb.bu ], [ %lpad.thr_comm.split-lp.i.i, %bb.bw ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtCsb6T6P0NKlCh_2h25proto7streams6buffer6BufferINtNtB1F_5frame5FrameINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.du, i8 %i.dw) #27
          to label %.body8 unwind label %bb.cc, !dbg !16607, !noalias !16143

bb.by:                                            ; preds = %.noexc80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16608, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !dbg !16609, !noalias !16610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16589, !noalias !16412
  %i.gh = getelementptr inbounds nuw i8, ptr %i.du, i64 4, !dbg !16611
  br i1 %i.dx, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bz, !dbg !16614

bb.bz:                                            ; preds = %bb.by
  %i.gi = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !16616, !noalias !16137
  %i.gj = and i64 %i.gi, 9223372036854775807, !dbg !16622
  %i.gk = icmp eq i64 %i.gj, 0, !dbg !16622
  br i1 %i.gk, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %.noexc83.i, !dbg !16622, !prof !115

.noexc83.i:                                       ; preds = %bb.bz
  %i.gl = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #29
          to label %.noexc6 unwind label %bb.cd, !dbg !16623

.noexc6:                                          ; preds = %.noexc83.i
  br i1 %i.gl, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ca, !dbg !16624

bb.ca:                                            ; preds = %.noexc6
  store atomic i8 1, ptr %i.gh monotonic, align 4, !dbg !16625, !noalias !16143
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !16628

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.ca, %.noexc6, %bb.bz, %bb.by
  %i.gm = atomicrmw xchg ptr %i.du, i32 0 release, align 4, !dbg !16629, !noalias !16143
  %i.gn = icmp eq i32 %i.gm, 2, !dbg !16633
  br i1 %i.gn, label %bb.cb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtCsb6T6P0NKlCh_2h25proto7streams6buffer6BufferINtNtB1F_5frame5FrameINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16633, !prof !308

bb.cb:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.du)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtCsb6T6P0NKlCh_2h25proto7streams6buffer6BufferINtNtB1F_5frame5FrameINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.cd, !dbg !16634

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtCsb6T6P0NKlCh_2h25proto7streams6buffer6BufferINtNtB1F_5frame5FrameINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.cb, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !16144, !noalias !16137
  br label %bb.ce, !dbg !16144

bb.cc:                                            ; preds = %.thread109.i, %.body81.i
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16635, !noalias !16143
  unreachable, !dbg !16635

.thread109.i:                                     ; preds = %bb.au, %.thread113.i
  %eh.lpad-body112.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread113.i ], [ %i.dr, %bb.au ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.0.copyload) ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 32, !dbg !16636
  %i.gq = load ptr, ptr %i.gp, align 8, !dbg !16636, !noalias !16640, !nonnull !14, !noundef !14
  invoke void %i.gq(ptr noundef %.sroa.16.0.copyload, ptr noundef %.sroa.6.0.copyload, i64 noundef %.sroa.9.0.copyload)
          to label %.body8 unwind label %bb.cc, !dbg !16636, !noalias !16143, !inline_history !16647

bb.cd:                                            ; preds = %bb.cb, %.noexc83.i, %bb.v
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body8, !dbg !16102

.body8:                                           ; preds = %.body81.i, %.thread109.i, %bb.cd
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.gr, %bb.cd ], [ %eh.lpad-body112.i, %.thread109.i ], [ %eh.lpad-body82.i, %.body81.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.aq, i8 %i.as) #27
          to label %.thread unwind label %bb.ci, !dbg !16102

bb.ce:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtCsb6T6P0NKlCh_2h25proto7streams6buffer6BufferINtNtB1F_5frame5FrameINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEEECsbaWXNhtWAp9_11foundations.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !16648
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aq, i64 4, !dbg !16649
  br i1 %i.at, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.cf, !dbg !16652

bb.cf:                                            ; preds = %bb.ce
  %i.gt = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !16654
  %i.gu = and i64 %i.gt, 9223372036854775807, !dbg !16660
  %i.gv = icmp eq i64 %i.gu, 0, !dbg !16660
  br i1 %i.gv, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc10, !dbg !16660, !prof !115

.noexc10:                                         ; preds = %bb.cf
  %i.gw = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #29, !dbg !16661
  br i1 %i.gw, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.cg, !dbg !16662

bb.cg:                                            ; preds = %.noexc10
  store atomic i8 1, ptr %i.gs monotonic, align 4, !dbg !16663
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !16666

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.cg, %.noexc10, %bb.cf, %bb.ce
  %i.gx = atomicrmw xchg ptr %i.aq, i32 0 release, align 4, !dbg !16667
  %i.gy = icmp eq i32 %i.gx, 2, !dbg !16671
  br i1 %i.gy, label %bb.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEECsbaWXNhtWAp9_11foundations.exit, !dbg !16671, !prof !308

bb.ch:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aq), !dbg !16672
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEECsbaWXNhtWAp9_11foundations.exit, !dbg !16672

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.ch, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void, !dbg !16673

bb.ci:                                            ; preds = %.thread27, %.body8
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16674
  unreachable, !dbg !16674

.thread:                                          ; preds = %.thread27, %.body8
  %.pn26 = phi { ptr, i32 } [ %eh.lpad-body30, %.thread27 ], [ %eh.lpad-body9, %.body8 ]
  resume { ptr, i32 } %.pn26, !dbg !16674

end_hunk_2
